; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!74450 () Bool)

(assert start!74450)

(declare-fun b_free!15165 () Bool)

(declare-fun b_next!15165 () Bool)

(assert (=> start!74450 (= b_free!15165 (not b_next!15165))))

(declare-fun tp!53174 () Bool)

(declare-fun b_and!25001 () Bool)

(assert (=> start!74450 (= tp!53174 b_and!25001)))

(declare-fun b!876238 () Bool)

(declare-fun res!595533 () Bool)

(declare-fun e!487812 () Bool)

(assert (=> b!876238 (=> (not res!595533) (not e!487812))))

(declare-fun i!612 () (_ BitVec 32))

(declare-fun k0!854 () (_ BitVec 64))

(declare-datatypes ((array!50926 0))(
  ( (array!50927 (arr!24486 (Array (_ BitVec 32) (_ BitVec 64))) (size!24927 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!50926)

(declare-fun from!1053 () (_ BitVec 32))

(assert (=> b!876238 (= res!595533 (and (= (select (arr!24486 _keys!868) i!612) k0!854) (bvsle from!1053 i!612)))))

(declare-fun b!876239 () Bool)

(declare-fun e!487811 () Bool)

(declare-fun tp_is_empty!17409 () Bool)

(assert (=> b!876239 (= e!487811 tp_is_empty!17409)))

(declare-fun res!595541 () Bool)

(assert (=> start!74450 (=> (not res!595541) (not e!487812))))

(assert (=> start!74450 (= res!595541 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!24927 _keys!868))))))

(assert (=> start!74450 e!487812))

(assert (=> start!74450 tp_is_empty!17409))

(assert (=> start!74450 true))

(assert (=> start!74450 tp!53174))

(declare-fun array_inv!19286 (array!50926) Bool)

(assert (=> start!74450 (array_inv!19286 _keys!868)))

(declare-datatypes ((V!28259 0))(
  ( (V!28260 (val!8752 Int)) )
))
(declare-datatypes ((ValueCell!8265 0))(
  ( (ValueCellFull!8265 (v!11181 V!28259)) (EmptyCell!8265) )
))
(declare-datatypes ((array!50928 0))(
  ( (array!50929 (arr!24487 (Array (_ BitVec 32) ValueCell!8265)) (size!24928 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!50928)

(declare-fun e!487816 () Bool)

(declare-fun array_inv!19287 (array!50928) Bool)

(assert (=> start!74450 (and (array_inv!19287 _values!688) e!487816)))

(declare-fun b!876240 () Bool)

(declare-fun res!595540 () Bool)

(assert (=> b!876240 (=> (not res!595540) (not e!487812))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!876240 (= res!595540 (validKeyInArray!0 k0!854))))

(declare-fun b!876241 () Bool)

(declare-fun res!595542 () Bool)

(assert (=> b!876241 (=> (not res!595542) (not e!487812))))

(declare-datatypes ((List!17461 0))(
  ( (Nil!17458) (Cons!17457 (h!18588 (_ BitVec 64)) (t!24538 List!17461)) )
))
(declare-fun arrayNoDuplicates!0 (array!50926 (_ BitVec 32) List!17461) Bool)

(assert (=> b!876241 (= res!595542 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!17458))))

(declare-fun defaultEntry!696 () Int)

(declare-fun bm!38735 () Bool)

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-datatypes ((tuple2!11578 0))(
  ( (tuple2!11579 (_1!5799 (_ BitVec 64)) (_2!5799 V!28259)) )
))
(declare-datatypes ((List!17462 0))(
  ( (Nil!17459) (Cons!17458 (h!18589 tuple2!11578) (t!24539 List!17462)) )
))
(declare-datatypes ((ListLongMap!10361 0))(
  ( (ListLongMap!10362 (toList!5196 List!17462)) )
))
(declare-fun call!38738 () ListLongMap!10361)

(declare-fun minValue!654 () V!28259)

(declare-fun lt!396414 () array!50928)

(declare-fun zeroValue!654 () V!28259)

(declare-fun getCurrentListMapNoExtraKeys!3158 (array!50926 array!50928 (_ BitVec 32) (_ BitVec 32) V!28259 V!28259 (_ BitVec 32) Int) ListLongMap!10361)

(assert (=> bm!38735 (= call!38738 (getCurrentListMapNoExtraKeys!3158 _keys!868 lt!396414 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!876242 () Bool)

(declare-fun e!487817 () Bool)

(declare-fun call!38739 () ListLongMap!10361)

(assert (=> b!876242 (= e!487817 (= call!38738 call!38739))))

(declare-fun b!876243 () Bool)

(declare-fun res!595535 () Bool)

(assert (=> b!876243 (=> (not res!595535) (not e!487812))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!876243 (= res!595535 (validMask!0 mask!1196))))

(declare-fun b!876244 () Bool)

(declare-fun res!595539 () Bool)

(assert (=> b!876244 (=> (not res!595539) (not e!487812))))

(assert (=> b!876244 (= res!595539 (and (= (size!24928 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!24927 _keys!868) (size!24928 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!876245 () Bool)

(declare-fun mapRes!27725 () Bool)

(assert (=> b!876245 (= e!487816 (and e!487811 mapRes!27725))))

(declare-fun condMapEmpty!27725 () Bool)

(declare-fun mapDefault!27725 () ValueCell!8265)

(assert (=> b!876245 (= condMapEmpty!27725 (= (arr!24487 _values!688) ((as const (Array (_ BitVec 32) ValueCell!8265)) mapDefault!27725)))))

(declare-fun mapIsEmpty!27725 () Bool)

(assert (=> mapIsEmpty!27725 mapRes!27725))

(declare-fun b!876246 () Bool)

(declare-fun e!487813 () Bool)

(assert (=> b!876246 (= e!487813 (bvslt from!1053 (size!24928 _values!688)))))

(declare-fun lt!396413 () ListLongMap!10361)

(declare-fun +!2433 (ListLongMap!10361 tuple2!11578) ListLongMap!10361)

(declare-fun get!12892 (ValueCell!8265 V!28259) V!28259)

(declare-fun dynLambda!1216 (Int (_ BitVec 64)) V!28259)

(assert (=> b!876246 (= lt!396413 (+!2433 (getCurrentListMapNoExtraKeys!3158 _keys!868 lt!396414 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696) (tuple2!11579 (select (arr!24486 _keys!868) from!1053) (get!12892 (select (arr!24487 lt!396414) from!1053) (dynLambda!1216 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!876247 () Bool)

(declare-fun res!595536 () Bool)

(assert (=> b!876247 (=> (not res!595536) (not e!487812))))

(assert (=> b!876247 (= res!595536 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!24927 _keys!868))))))

(declare-fun b!876248 () Bool)

(declare-fun e!487815 () Bool)

(assert (=> b!876248 (= e!487815 tp_is_empty!17409)))

(declare-fun b!876249 () Bool)

(declare-fun e!487810 () Bool)

(assert (=> b!876249 (= e!487810 (not e!487813))))

(declare-fun res!595534 () Bool)

(assert (=> b!876249 (=> res!595534 e!487813)))

(assert (=> b!876249 (= res!595534 (not (validKeyInArray!0 (select (arr!24486 _keys!868) from!1053))))))

(assert (=> b!876249 e!487817))

(declare-fun c!92515 () Bool)

(assert (=> b!876249 (= c!92515 (bvsle (bvadd #b00000000000000000000000000000001 from!1053) i!612))))

(declare-fun v!557 () V!28259)

(declare-datatypes ((Unit!29926 0))(
  ( (Unit!29927) )
))
(declare-fun lt!396416 () Unit!29926)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!667 (array!50926 array!50928 (_ BitVec 32) (_ BitVec 32) V!28259 V!28259 (_ BitVec 32) (_ BitVec 64) V!28259 (_ BitVec 32) Int) Unit!29926)

(assert (=> b!876249 (= lt!396416 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!667 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 i!612 k0!854 v!557 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!876250 () Bool)

(assert (=> b!876250 (= e!487817 (= call!38738 (+!2433 call!38739 (tuple2!11579 k0!854 v!557))))))

(declare-fun b!876251 () Bool)

(declare-fun res!595537 () Bool)

(assert (=> b!876251 (=> (not res!595537) (not e!487812))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!50926 (_ BitVec 32)) Bool)

(assert (=> b!876251 (= res!595537 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun bm!38736 () Bool)

(assert (=> bm!38736 (= call!38739 (getCurrentListMapNoExtraKeys!3158 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!876252 () Bool)

(assert (=> b!876252 (= e!487812 e!487810)))

(declare-fun res!595538 () Bool)

(assert (=> b!876252 (=> (not res!595538) (not e!487810))))

(assert (=> b!876252 (= res!595538 (= from!1053 i!612))))

(assert (=> b!876252 (= lt!396413 (getCurrentListMapNoExtraKeys!3158 _keys!868 lt!396414 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(assert (=> b!876252 (= lt!396414 (array!50929 (store (arr!24487 _values!688) i!612 (ValueCellFull!8265 v!557)) (size!24928 _values!688)))))

(declare-fun lt!396415 () ListLongMap!10361)

(assert (=> b!876252 (= lt!396415 (getCurrentListMapNoExtraKeys!3158 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun mapNonEmpty!27725 () Bool)

(declare-fun tp!53173 () Bool)

(assert (=> mapNonEmpty!27725 (= mapRes!27725 (and tp!53173 e!487815))))

(declare-fun mapRest!27725 () (Array (_ BitVec 32) ValueCell!8265))

(declare-fun mapKey!27725 () (_ BitVec 32))

(declare-fun mapValue!27725 () ValueCell!8265)

(assert (=> mapNonEmpty!27725 (= (arr!24487 _values!688) (store mapRest!27725 mapKey!27725 mapValue!27725))))

(assert (= (and start!74450 res!595541) b!876243))

(assert (= (and b!876243 res!595535) b!876244))

(assert (= (and b!876244 res!595539) b!876251))

(assert (= (and b!876251 res!595537) b!876241))

(assert (= (and b!876241 res!595542) b!876247))

(assert (= (and b!876247 res!595536) b!876240))

(assert (= (and b!876240 res!595540) b!876238))

(assert (= (and b!876238 res!595533) b!876252))

(assert (= (and b!876252 res!595538) b!876249))

(assert (= (and b!876249 c!92515) b!876250))

(assert (= (and b!876249 (not c!92515)) b!876242))

(assert (= (or b!876250 b!876242) bm!38735))

(assert (= (or b!876250 b!876242) bm!38736))

(assert (= (and b!876249 (not res!595534)) b!876246))

(assert (= (and b!876245 condMapEmpty!27725) mapIsEmpty!27725))

(assert (= (and b!876245 (not condMapEmpty!27725)) mapNonEmpty!27725))

(get-info :version)

(assert (= (and mapNonEmpty!27725 ((_ is ValueCellFull!8265) mapValue!27725)) b!876248))

(assert (= (and b!876245 ((_ is ValueCellFull!8265) mapDefault!27725)) b!876239))

(assert (= start!74450 b!876245))

(declare-fun b_lambda!12263 () Bool)

(assert (=> (not b_lambda!12263) (not b!876246)))

(declare-fun t!24537 () Bool)

(declare-fun tb!4933 () Bool)

(assert (=> (and start!74450 (= defaultEntry!696 defaultEntry!696) t!24537) tb!4933))

(declare-fun result!9477 () Bool)

(assert (=> tb!4933 (= result!9477 tp_is_empty!17409)))

(assert (=> b!876246 t!24537))

(declare-fun b_and!25003 () Bool)

(assert (= b_and!25001 (and (=> t!24537 result!9477) b_and!25003)))

(declare-fun m!816109 () Bool)

(assert (=> b!876243 m!816109))

(declare-fun m!816111 () Bool)

(assert (=> b!876240 m!816111))

(declare-fun m!816113 () Bool)

(assert (=> b!876238 m!816113))

(declare-fun m!816115 () Bool)

(assert (=> b!876246 m!816115))

(declare-fun m!816117 () Bool)

(assert (=> b!876246 m!816117))

(declare-fun m!816119 () Bool)

(assert (=> b!876246 m!816119))

(assert (=> b!876246 m!816115))

(declare-fun m!816121 () Bool)

(assert (=> b!876246 m!816121))

(assert (=> b!876246 m!816117))

(declare-fun m!816123 () Bool)

(assert (=> b!876246 m!816123))

(assert (=> b!876246 m!816123))

(declare-fun m!816125 () Bool)

(assert (=> b!876246 m!816125))

(declare-fun m!816127 () Bool)

(assert (=> start!74450 m!816127))

(declare-fun m!816129 () Bool)

(assert (=> start!74450 m!816129))

(declare-fun m!816131 () Bool)

(assert (=> mapNonEmpty!27725 m!816131))

(declare-fun m!816133 () Bool)

(assert (=> bm!38736 m!816133))

(assert (=> bm!38735 m!816123))

(declare-fun m!816135 () Bool)

(assert (=> b!876252 m!816135))

(declare-fun m!816137 () Bool)

(assert (=> b!876252 m!816137))

(declare-fun m!816139 () Bool)

(assert (=> b!876252 m!816139))

(declare-fun m!816141 () Bool)

(assert (=> b!876251 m!816141))

(assert (=> b!876249 m!816121))

(assert (=> b!876249 m!816121))

(declare-fun m!816143 () Bool)

(assert (=> b!876249 m!816143))

(declare-fun m!816145 () Bool)

(assert (=> b!876249 m!816145))

(declare-fun m!816147 () Bool)

(assert (=> b!876241 m!816147))

(declare-fun m!816149 () Bool)

(assert (=> b!876250 m!816149))

(check-sat b_and!25003 (not b!876250) (not b!876243) (not mapNonEmpty!27725) (not start!74450) (not b!876246) (not bm!38736) (not b_next!15165) (not bm!38735) (not b!876240) (not b!876249) tp_is_empty!17409 (not b!876251) (not b!876252) (not b!876241) (not b_lambda!12263))
(check-sat b_and!25003 (not b_next!15165))
