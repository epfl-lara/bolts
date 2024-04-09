; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!73630 () Bool)

(assert start!73630)

(declare-fun b_free!14517 () Bool)

(declare-fun b_next!14517 () Bool)

(assert (=> start!73630 (= b_free!14517 (not b_next!14517))))

(declare-fun tp!51056 () Bool)

(declare-fun b_and!24031 () Bool)

(assert (=> start!73630 (= tp!51056 b_and!24031)))

(declare-fun b!861083 () Bool)

(declare-fun e!479815 () Bool)

(declare-fun tp_is_empty!16653 () Bool)

(assert (=> b!861083 (= e!479815 tp_is_empty!16653)))

(declare-fun b!861084 () Bool)

(declare-fun res!585304 () Bool)

(declare-fun e!479811 () Bool)

(assert (=> b!861084 (=> (not res!585304) (not e!479811))))

(declare-fun i!612 () (_ BitVec 32))

(declare-fun k0!854 () (_ BitVec 64))

(declare-datatypes ((array!49454 0))(
  ( (array!49455 (arr!23754 (Array (_ BitVec 32) (_ BitVec 64))) (size!24195 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!49454)

(declare-fun from!1053 () (_ BitVec 32))

(assert (=> b!861084 (= res!585304 (and (= (select (arr!23754 _keys!868) i!612) k0!854) (bvsle from!1053 i!612)))))

(declare-fun b!861085 () Bool)

(declare-fun res!585302 () Bool)

(assert (=> b!861085 (=> (not res!585302) (not e!479811))))

(assert (=> b!861085 (= res!585302 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!24195 _keys!868))))))

(declare-fun b!861087 () Bool)

(declare-datatypes ((Unit!29328 0))(
  ( (Unit!29329) )
))
(declare-fun e!479817 () Unit!29328)

(declare-fun Unit!29330 () Unit!29328)

(assert (=> b!861087 (= e!479817 Unit!29330)))

(declare-fun b!861088 () Bool)

(declare-fun res!585303 () Bool)

(assert (=> b!861088 (=> (not res!585303) (not e!479811))))

(declare-datatypes ((List!16929 0))(
  ( (Nil!16926) (Cons!16925 (h!18056 (_ BitVec 64)) (t!23720 List!16929)) )
))
(declare-fun arrayNoDuplicates!0 (array!49454 (_ BitVec 32) List!16929) Bool)

(assert (=> b!861088 (= res!585303 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!16926))))

(declare-fun mapIsEmpty!26579 () Bool)

(declare-fun mapRes!26579 () Bool)

(assert (=> mapIsEmpty!26579 mapRes!26579))

(declare-fun b!861089 () Bool)

(declare-fun e!479810 () Bool)

(assert (=> b!861089 (= e!479810 tp_is_empty!16653)))

(declare-fun b!861090 () Bool)

(declare-fun e!479814 () Bool)

(assert (=> b!861090 (= e!479811 e!479814)))

(declare-fun res!585300 () Bool)

(assert (=> b!861090 (=> (not res!585300) (not e!479814))))

(assert (=> b!861090 (= res!585300 (and (not (= from!1053 i!612)) (bvslt from!1053 i!612)))))

(declare-datatypes ((V!27251 0))(
  ( (V!27252 (val!8374 Int)) )
))
(declare-datatypes ((ValueCell!7887 0))(
  ( (ValueCellFull!7887 (v!10795 V!27251)) (EmptyCell!7887) )
))
(declare-datatypes ((array!49456 0))(
  ( (array!49457 (arr!23755 (Array (_ BitVec 32) ValueCell!7887)) (size!24196 (_ BitVec 32))) )
))
(declare-fun lt!388294 () array!49456)

(declare-datatypes ((tuple2!11058 0))(
  ( (tuple2!11059 (_1!5539 (_ BitVec 64)) (_2!5539 V!27251)) )
))
(declare-datatypes ((List!16930 0))(
  ( (Nil!16927) (Cons!16926 (h!18057 tuple2!11058) (t!23721 List!16930)) )
))
(declare-datatypes ((ListLongMap!9841 0))(
  ( (ListLongMap!9842 (toList!4936 List!16930)) )
))
(declare-fun lt!388298 () ListLongMap!9841)

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun minValue!654 () V!27251)

(declare-fun zeroValue!654 () V!27251)

(declare-fun defaultEntry!696 () Int)

(declare-fun getCurrentListMapNoExtraKeys!2916 (array!49454 array!49456 (_ BitVec 32) (_ BitVec 32) V!27251 V!27251 (_ BitVec 32) Int) ListLongMap!9841)

(assert (=> b!861090 (= lt!388298 (getCurrentListMapNoExtraKeys!2916 _keys!868 lt!388294 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun v!557 () V!27251)

(declare-fun _values!688 () array!49456)

(assert (=> b!861090 (= lt!388294 (array!49457 (store (arr!23755 _values!688) i!612 (ValueCellFull!7887 v!557)) (size!24196 _values!688)))))

(declare-fun lt!388296 () ListLongMap!9841)

(assert (=> b!861090 (= lt!388296 (getCurrentListMapNoExtraKeys!2916 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun b!861091 () Bool)

(declare-fun res!585306 () Bool)

(assert (=> b!861091 (=> (not res!585306) (not e!479811))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!861091 (= res!585306 (validMask!0 mask!1196))))

(declare-fun mapNonEmpty!26579 () Bool)

(declare-fun tp!51055 () Bool)

(assert (=> mapNonEmpty!26579 (= mapRes!26579 (and tp!51055 e!479815))))

(declare-fun mapKey!26579 () (_ BitVec 32))

(declare-fun mapRest!26579 () (Array (_ BitVec 32) ValueCell!7887))

(declare-fun mapValue!26579 () ValueCell!7887)

(assert (=> mapNonEmpty!26579 (= (arr!23755 _values!688) (store mapRest!26579 mapKey!26579 mapValue!26579))))

(declare-fun b!861092 () Bool)

(declare-fun res!585305 () Bool)

(assert (=> b!861092 (=> (not res!585305) (not e!479811))))

(assert (=> b!861092 (= res!585305 (and (= (size!24196 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!24195 _keys!868) (size!24196 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!861093 () Bool)

(declare-fun res!585307 () Bool)

(assert (=> b!861093 (=> (not res!585307) (not e!479811))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!861093 (= res!585307 (validKeyInArray!0 k0!854))))

(declare-fun b!861086 () Bool)

(declare-fun e!479816 () Bool)

(assert (=> b!861086 (= e!479814 (not e!479816))))

(declare-fun res!585301 () Bool)

(assert (=> b!861086 (=> res!585301 e!479816)))

(assert (=> b!861086 (= res!585301 (not (validKeyInArray!0 (select (arr!23754 _keys!868) from!1053))))))

(declare-fun lt!388299 () ListLongMap!9841)

(declare-fun lt!388295 () ListLongMap!9841)

(assert (=> b!861086 (= lt!388299 lt!388295)))

(declare-fun lt!388300 () ListLongMap!9841)

(declare-fun +!2237 (ListLongMap!9841 tuple2!11058) ListLongMap!9841)

(assert (=> b!861086 (= lt!388295 (+!2237 lt!388300 (tuple2!11059 k0!854 v!557)))))

(assert (=> b!861086 (= lt!388299 (getCurrentListMapNoExtraKeys!2916 _keys!868 lt!388294 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(assert (=> b!861086 (= lt!388300 (getCurrentListMapNoExtraKeys!2916 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun lt!388302 () Unit!29328)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!490 (array!49454 array!49456 (_ BitVec 32) (_ BitVec 32) V!27251 V!27251 (_ BitVec 32) (_ BitVec 64) V!27251 (_ BitVec 32) Int) Unit!29328)

(assert (=> b!861086 (= lt!388302 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!490 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 i!612 k0!854 v!557 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun res!585309 () Bool)

(assert (=> start!73630 (=> (not res!585309) (not e!479811))))

(assert (=> start!73630 (= res!585309 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!24195 _keys!868))))))

(assert (=> start!73630 e!479811))

(assert (=> start!73630 tp_is_empty!16653))

(assert (=> start!73630 true))

(assert (=> start!73630 tp!51056))

(declare-fun array_inv!18774 (array!49454) Bool)

(assert (=> start!73630 (array_inv!18774 _keys!868)))

(declare-fun e!479812 () Bool)

(declare-fun array_inv!18775 (array!49456) Bool)

(assert (=> start!73630 (and (array_inv!18775 _values!688) e!479812)))

(declare-fun b!861094 () Bool)

(assert (=> b!861094 (= e!479816 true)))

(assert (=> b!861094 (not (= (select (arr!23754 _keys!868) from!1053) k0!854))))

(declare-fun lt!388297 () Unit!29328)

(assert (=> b!861094 (= lt!388297 e!479817)))

(declare-fun c!91914 () Bool)

(assert (=> b!861094 (= c!91914 (= (select (arr!23754 _keys!868) from!1053) k0!854))))

(declare-fun get!12541 (ValueCell!7887 V!27251) V!27251)

(declare-fun dynLambda!1119 (Int (_ BitVec 64)) V!27251)

(assert (=> b!861094 (= lt!388298 (+!2237 lt!388295 (tuple2!11059 (select (arr!23754 _keys!868) from!1053) (get!12541 (select (arr!23755 _values!688) from!1053) (dynLambda!1119 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!861095 () Bool)

(assert (=> b!861095 (= e!479812 (and e!479810 mapRes!26579))))

(declare-fun condMapEmpty!26579 () Bool)

(declare-fun mapDefault!26579 () ValueCell!7887)

(assert (=> b!861095 (= condMapEmpty!26579 (= (arr!23755 _values!688) ((as const (Array (_ BitVec 32) ValueCell!7887)) mapDefault!26579)))))

(declare-fun b!861096 () Bool)

(declare-fun Unit!29331 () Unit!29328)

(assert (=> b!861096 (= e!479817 Unit!29331)))

(declare-fun lt!388292 () Unit!29328)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!49454 (_ BitVec 32) (_ BitVec 32)) Unit!29328)

(assert (=> b!861096 (= lt!388292 (lemmaNoDuplicateFromThenFromBigger!0 _keys!868 #b00000000000000000000000000000000 from!1053))))

(assert (=> b!861096 (arrayNoDuplicates!0 _keys!868 from!1053 Nil!16926)))

(declare-fun lt!388301 () Unit!29328)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!49454 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!29328)

(assert (=> b!861096 (= lt!388301 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 _keys!868 k0!854 i!612 (bvadd #b00000000000000000000000000000001 from!1053)))))

(declare-fun arrayContainsKey!0 (array!49454 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!861096 (arrayContainsKey!0 _keys!868 k0!854 (bvadd #b00000000000000000000000000000001 from!1053))))

(declare-fun lt!388293 () Unit!29328)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!49454 (_ BitVec 64) (_ BitVec 32) List!16929) Unit!29328)

(assert (=> b!861096 (= lt!388293 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!868 k0!854 from!1053 Nil!16926))))

(assert (=> b!861096 false))

(declare-fun b!861097 () Bool)

(declare-fun res!585308 () Bool)

(assert (=> b!861097 (=> (not res!585308) (not e!479811))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!49454 (_ BitVec 32)) Bool)

(assert (=> b!861097 (= res!585308 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(assert (= (and start!73630 res!585309) b!861091))

(assert (= (and b!861091 res!585306) b!861092))

(assert (= (and b!861092 res!585305) b!861097))

(assert (= (and b!861097 res!585308) b!861088))

(assert (= (and b!861088 res!585303) b!861085))

(assert (= (and b!861085 res!585302) b!861093))

(assert (= (and b!861093 res!585307) b!861084))

(assert (= (and b!861084 res!585304) b!861090))

(assert (= (and b!861090 res!585300) b!861086))

(assert (= (and b!861086 (not res!585301)) b!861094))

(assert (= (and b!861094 c!91914) b!861096))

(assert (= (and b!861094 (not c!91914)) b!861087))

(assert (= (and b!861095 condMapEmpty!26579) mapIsEmpty!26579))

(assert (= (and b!861095 (not condMapEmpty!26579)) mapNonEmpty!26579))

(get-info :version)

(assert (= (and mapNonEmpty!26579 ((_ is ValueCellFull!7887) mapValue!26579)) b!861083))

(assert (= (and b!861095 ((_ is ValueCellFull!7887) mapDefault!26579)) b!861089))

(assert (= start!73630 b!861095))

(declare-fun b_lambda!11899 () Bool)

(assert (=> (not b_lambda!11899) (not b!861094)))

(declare-fun t!23719 () Bool)

(declare-fun tb!4647 () Bool)

(assert (=> (and start!73630 (= defaultEntry!696 defaultEntry!696) t!23719) tb!4647))

(declare-fun result!8897 () Bool)

(assert (=> tb!4647 (= result!8897 tp_is_empty!16653)))

(assert (=> b!861094 t!23719))

(declare-fun b_and!24033 () Bool)

(assert (= b_and!24031 (and (=> t!23719 result!8897) b_and!24033)))

(declare-fun m!802067 () Bool)

(assert (=> b!861086 m!802067))

(declare-fun m!802069 () Bool)

(assert (=> b!861086 m!802069))

(declare-fun m!802071 () Bool)

(assert (=> b!861086 m!802071))

(declare-fun m!802073 () Bool)

(assert (=> b!861086 m!802073))

(assert (=> b!861086 m!802071))

(declare-fun m!802075 () Bool)

(assert (=> b!861086 m!802075))

(declare-fun m!802077 () Bool)

(assert (=> b!861086 m!802077))

(declare-fun m!802079 () Bool)

(assert (=> mapNonEmpty!26579 m!802079))

(declare-fun m!802081 () Bool)

(assert (=> b!861084 m!802081))

(declare-fun m!802083 () Bool)

(assert (=> b!861093 m!802083))

(declare-fun m!802085 () Bool)

(assert (=> b!861094 m!802085))

(declare-fun m!802087 () Bool)

(assert (=> b!861094 m!802087))

(declare-fun m!802089 () Bool)

(assert (=> b!861094 m!802089))

(declare-fun m!802091 () Bool)

(assert (=> b!861094 m!802091))

(assert (=> b!861094 m!802087))

(assert (=> b!861094 m!802071))

(assert (=> b!861094 m!802089))

(declare-fun m!802093 () Bool)

(assert (=> start!73630 m!802093))

(declare-fun m!802095 () Bool)

(assert (=> start!73630 m!802095))

(declare-fun m!802097 () Bool)

(assert (=> b!861090 m!802097))

(declare-fun m!802099 () Bool)

(assert (=> b!861090 m!802099))

(declare-fun m!802101 () Bool)

(assert (=> b!861090 m!802101))

(declare-fun m!802103 () Bool)

(assert (=> b!861088 m!802103))

(declare-fun m!802105 () Bool)

(assert (=> b!861097 m!802105))

(declare-fun m!802107 () Bool)

(assert (=> b!861091 m!802107))

(declare-fun m!802109 () Bool)

(assert (=> b!861096 m!802109))

(declare-fun m!802111 () Bool)

(assert (=> b!861096 m!802111))

(declare-fun m!802113 () Bool)

(assert (=> b!861096 m!802113))

(declare-fun m!802115 () Bool)

(assert (=> b!861096 m!802115))

(declare-fun m!802117 () Bool)

(assert (=> b!861096 m!802117))

(check-sat (not b!861086) (not b_lambda!11899) b_and!24033 tp_is_empty!16653 (not b!861097) (not b!861088) (not mapNonEmpty!26579) (not start!73630) (not b_next!14517) (not b!861091) (not b!861090) (not b!861096) (not b!861094) (not b!861093))
(check-sat b_and!24033 (not b_next!14517))
