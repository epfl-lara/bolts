; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!111956 () Bool)

(assert start!111956)

(declare-fun b_free!30519 () Bool)

(declare-fun b_next!30519 () Bool)

(assert (=> start!111956 (= b_free!30519 (not b_next!30519))))

(declare-fun tp!107038 () Bool)

(declare-fun b_and!49143 () Bool)

(assert (=> start!111956 (= tp!107038 b_and!49143)))

(declare-fun mapNonEmpty!56160 () Bool)

(declare-fun mapRes!56160 () Bool)

(declare-fun tp!107037 () Bool)

(declare-fun e!755962 () Bool)

(assert (=> mapNonEmpty!56160 (= mapRes!56160 (and tp!107037 e!755962))))

(declare-fun mapKey!56160 () (_ BitVec 32))

(declare-datatypes ((V!53555 0))(
  ( (V!53556 (val!18244 Int)) )
))
(declare-datatypes ((ValueCell!17271 0))(
  ( (ValueCellFull!17271 (v!20875 V!53555)) (EmptyCell!17271) )
))
(declare-fun mapRest!56160 () (Array (_ BitVec 32) ValueCell!17271))

(declare-fun mapValue!56160 () ValueCell!17271)

(declare-datatypes ((array!89545 0))(
  ( (array!89546 (arr!43241 (Array (_ BitVec 32) ValueCell!17271)) (size!43792 (_ BitVec 32))) )
))
(declare-fun _values!1337 () array!89545)

(assert (=> mapNonEmpty!56160 (= (arr!43241 _values!1337) (store mapRest!56160 mapKey!56160 mapValue!56160))))

(declare-fun mapIsEmpty!56160 () Bool)

(assert (=> mapIsEmpty!56160 mapRes!56160))

(declare-fun b!1326262 () Bool)

(declare-fun tp_is_empty!36339 () Bool)

(assert (=> b!1326262 (= e!755962 tp_is_empty!36339)))

(declare-fun b!1326263 () Bool)

(declare-fun res!880328 () Bool)

(declare-fun e!755965 () Bool)

(assert (=> b!1326263 (=> (not res!880328) (not e!755965))))

(declare-datatypes ((array!89547 0))(
  ( (array!89548 (arr!43242 (Array (_ BitVec 32) (_ BitVec 64))) (size!43793 (_ BitVec 32))) )
))
(declare-fun _keys!1609 () array!89547)

(declare-fun extraKeys!1258 () (_ BitVec 32))

(declare-fun mask!2019 () (_ BitVec 32))

(assert (=> b!1326263 (= res!880328 (and (= (size!43792 _values!1337) (bvadd #b00000000000000000000000000000001 mask!2019)) (= (size!43793 _keys!1609) (size!43792 _values!1337)) (bvsge mask!2019 #b00000000000000000000000000000000) (bvsge extraKeys!1258 #b00000000000000000000000000000000) (bvsle extraKeys!1258 #b00000000000000000000000000000011)))))

(declare-fun b!1326264 () Bool)

(declare-fun res!880329 () Bool)

(assert (=> b!1326264 (=> (not res!880329) (not e!755965))))

(declare-fun from!2000 () (_ BitVec 32))

(declare-fun zeroValue!1279 () V!53555)

(declare-fun minValue!1279 () V!53555)

(declare-fun k0!1164 () (_ BitVec 64))

(declare-fun defaultEntry!1340 () Int)

(declare-datatypes ((tuple2!23688 0))(
  ( (tuple2!23689 (_1!11854 (_ BitVec 64)) (_2!11854 V!53555)) )
))
(declare-datatypes ((List!30854 0))(
  ( (Nil!30851) (Cons!30850 (h!32059 tuple2!23688) (t!44851 List!30854)) )
))
(declare-datatypes ((ListLongMap!21357 0))(
  ( (ListLongMap!21358 (toList!10694 List!30854)) )
))
(declare-fun contains!8787 (ListLongMap!21357 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5627 (array!89547 array!89545 (_ BitVec 32) (_ BitVec 32) V!53555 V!53555 (_ BitVec 32) Int) ListLongMap!21357)

(assert (=> b!1326264 (= res!880329 (contains!8787 (getCurrentListMap!5627 _keys!1609 _values!1337 mask!2019 extraKeys!1258 zeroValue!1279 minValue!1279 from!2000 defaultEntry!1340) k0!1164))))

(declare-fun b!1326265 () Bool)

(assert (=> b!1326265 (= e!755965 (not true))))

(declare-fun lt!589971 () ListLongMap!21357)

(assert (=> b!1326265 (contains!8787 lt!589971 k0!1164)))

(declare-fun lt!589972 () V!53555)

(declare-datatypes ((Unit!43624 0))(
  ( (Unit!43625) )
))
(declare-fun lt!589974 () Unit!43624)

(declare-fun lemmaInListMapAfterAddingDiffThenInBefore!219 ((_ BitVec 64) (_ BitVec 64) V!53555 ListLongMap!21357) Unit!43624)

(assert (=> b!1326265 (= lt!589974 (lemmaInListMapAfterAddingDiffThenInBefore!219 k0!1164 (select (arr!43242 _keys!1609) from!2000) lt!589972 lt!589971))))

(declare-fun lt!589970 () ListLongMap!21357)

(assert (=> b!1326265 (contains!8787 lt!589970 k0!1164)))

(declare-fun lt!589973 () Unit!43624)

(assert (=> b!1326265 (= lt!589973 (lemmaInListMapAfterAddingDiffThenInBefore!219 k0!1164 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1279 lt!589970))))

(declare-fun lt!589975 () ListLongMap!21357)

(assert (=> b!1326265 (contains!8787 lt!589975 k0!1164)))

(declare-fun lt!589969 () Unit!43624)

(assert (=> b!1326265 (= lt!589969 (lemmaInListMapAfterAddingDiffThenInBefore!219 k0!1164 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1279 lt!589975))))

(declare-fun +!4609 (ListLongMap!21357 tuple2!23688) ListLongMap!21357)

(assert (=> b!1326265 (= lt!589975 (+!4609 lt!589970 (tuple2!23689 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1279)))))

(assert (=> b!1326265 (= lt!589970 (+!4609 lt!589971 (tuple2!23689 (select (arr!43242 _keys!1609) from!2000) lt!589972)))))

(declare-fun get!21832 (ValueCell!17271 V!53555) V!53555)

(declare-fun dynLambda!3646 (Int (_ BitVec 64)) V!53555)

(assert (=> b!1326265 (= lt!589972 (get!21832 (select (arr!43241 _values!1337) from!2000) (dynLambda!3646 defaultEntry!1340 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun getCurrentListMapNoExtraKeys!6327 (array!89547 array!89545 (_ BitVec 32) (_ BitVec 32) V!53555 V!53555 (_ BitVec 32) Int) ListLongMap!21357)

(assert (=> b!1326265 (= lt!589971 (getCurrentListMapNoExtraKeys!6327 _keys!1609 _values!1337 mask!2019 extraKeys!1258 zeroValue!1279 minValue!1279 (bvadd #b00000000000000000000000000000001 from!2000) defaultEntry!1340))))

(declare-fun b!1326266 () Bool)

(declare-fun res!880326 () Bool)

(assert (=> b!1326266 (=> (not res!880326) (not e!755965))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1326266 (= res!880326 (validKeyInArray!0 (select (arr!43242 _keys!1609) from!2000)))))

(declare-fun b!1326267 () Bool)

(declare-fun e!755963 () Bool)

(declare-fun e!755961 () Bool)

(assert (=> b!1326267 (= e!755963 (and e!755961 mapRes!56160))))

(declare-fun condMapEmpty!56160 () Bool)

(declare-fun mapDefault!56160 () ValueCell!17271)

(assert (=> b!1326267 (= condMapEmpty!56160 (= (arr!43241 _values!1337) ((as const (Array (_ BitVec 32) ValueCell!17271)) mapDefault!56160)))))

(declare-fun b!1326268 () Bool)

(declare-fun res!880327 () Bool)

(assert (=> b!1326268 (=> (not res!880327) (not e!755965))))

(assert (=> b!1326268 (= res!880327 (and (not (= (bvand extraKeys!1258 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1258 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (bvsge from!2000 #b00000000000000000000000000000000) (bvslt from!2000 (size!43793 _keys!1609)) (not (= k0!1164 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1164 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun res!880332 () Bool)

(assert (=> start!111956 (=> (not res!880332) (not e!755965))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!111956 (= res!880332 (validMask!0 mask!2019))))

(assert (=> start!111956 e!755965))

(declare-fun array_inv!32581 (array!89547) Bool)

(assert (=> start!111956 (array_inv!32581 _keys!1609)))

(assert (=> start!111956 true))

(assert (=> start!111956 tp_is_empty!36339))

(declare-fun array_inv!32582 (array!89545) Bool)

(assert (=> start!111956 (and (array_inv!32582 _values!1337) e!755963)))

(assert (=> start!111956 tp!107038))

(declare-fun b!1326269 () Bool)

(assert (=> b!1326269 (= e!755961 tp_is_empty!36339)))

(declare-fun b!1326270 () Bool)

(declare-fun res!880331 () Bool)

(assert (=> b!1326270 (=> (not res!880331) (not e!755965))))

(declare-datatypes ((List!30855 0))(
  ( (Nil!30852) (Cons!30851 (h!32060 (_ BitVec 64)) (t!44852 List!30855)) )
))
(declare-fun arrayNoDuplicates!0 (array!89547 (_ BitVec 32) List!30855) Bool)

(assert (=> b!1326270 (= res!880331 (arrayNoDuplicates!0 _keys!1609 #b00000000000000000000000000000000 Nil!30852))))

(declare-fun b!1326271 () Bool)

(declare-fun res!880325 () Bool)

(assert (=> b!1326271 (=> (not res!880325) (not e!755965))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!89547 (_ BitVec 32)) Bool)

(assert (=> b!1326271 (= res!880325 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1609 mask!2019))))

(declare-fun b!1326272 () Bool)

(declare-fun res!880330 () Bool)

(assert (=> b!1326272 (=> (not res!880330) (not e!755965))))

(assert (=> b!1326272 (= res!880330 (not (= (select (arr!43242 _keys!1609) from!2000) k0!1164)))))

(assert (= (and start!111956 res!880332) b!1326263))

(assert (= (and b!1326263 res!880328) b!1326271))

(assert (= (and b!1326271 res!880325) b!1326270))

(assert (= (and b!1326270 res!880331) b!1326268))

(assert (= (and b!1326268 res!880327) b!1326264))

(assert (= (and b!1326264 res!880329) b!1326272))

(assert (= (and b!1326272 res!880330) b!1326266))

(assert (= (and b!1326266 res!880326) b!1326265))

(assert (= (and b!1326267 condMapEmpty!56160) mapIsEmpty!56160))

(assert (= (and b!1326267 (not condMapEmpty!56160)) mapNonEmpty!56160))

(get-info :version)

(assert (= (and mapNonEmpty!56160 ((_ is ValueCellFull!17271) mapValue!56160)) b!1326262))

(assert (= (and b!1326267 ((_ is ValueCellFull!17271) mapDefault!56160)) b!1326269))

(assert (= start!111956 b!1326267))

(declare-fun b_lambda!23807 () Bool)

(assert (=> (not b_lambda!23807) (not b!1326265)))

(declare-fun t!44850 () Bool)

(declare-fun tb!11801 () Bool)

(assert (=> (and start!111956 (= defaultEntry!1340 defaultEntry!1340) t!44850) tb!11801))

(declare-fun result!24651 () Bool)

(assert (=> tb!11801 (= result!24651 tp_is_empty!36339)))

(assert (=> b!1326265 t!44850))

(declare-fun b_and!49145 () Bool)

(assert (= b_and!49143 (and (=> t!44850 result!24651) b_and!49145)))

(declare-fun m!1215273 () Bool)

(assert (=> b!1326271 m!1215273))

(declare-fun m!1215275 () Bool)

(assert (=> b!1326265 m!1215275))

(declare-fun m!1215277 () Bool)

(assert (=> b!1326265 m!1215277))

(declare-fun m!1215279 () Bool)

(assert (=> b!1326265 m!1215279))

(declare-fun m!1215281 () Bool)

(assert (=> b!1326265 m!1215281))

(declare-fun m!1215283 () Bool)

(assert (=> b!1326265 m!1215283))

(declare-fun m!1215285 () Bool)

(assert (=> b!1326265 m!1215285))

(declare-fun m!1215287 () Bool)

(assert (=> b!1326265 m!1215287))

(declare-fun m!1215289 () Bool)

(assert (=> b!1326265 m!1215289))

(declare-fun m!1215291 () Bool)

(assert (=> b!1326265 m!1215291))

(declare-fun m!1215293 () Bool)

(assert (=> b!1326265 m!1215293))

(assert (=> b!1326265 m!1215279))

(assert (=> b!1326265 m!1215285))

(declare-fun m!1215295 () Bool)

(assert (=> b!1326265 m!1215295))

(declare-fun m!1215297 () Bool)

(assert (=> b!1326265 m!1215297))

(declare-fun m!1215299 () Bool)

(assert (=> b!1326265 m!1215299))

(assert (=> b!1326265 m!1215291))

(declare-fun m!1215301 () Bool)

(assert (=> b!1326264 m!1215301))

(assert (=> b!1326264 m!1215301))

(declare-fun m!1215303 () Bool)

(assert (=> b!1326264 m!1215303))

(assert (=> b!1326272 m!1215291))

(declare-fun m!1215305 () Bool)

(assert (=> start!111956 m!1215305))

(declare-fun m!1215307 () Bool)

(assert (=> start!111956 m!1215307))

(declare-fun m!1215309 () Bool)

(assert (=> start!111956 m!1215309))

(declare-fun m!1215311 () Bool)

(assert (=> b!1326270 m!1215311))

(declare-fun m!1215313 () Bool)

(assert (=> mapNonEmpty!56160 m!1215313))

(assert (=> b!1326266 m!1215291))

(assert (=> b!1326266 m!1215291))

(declare-fun m!1215315 () Bool)

(assert (=> b!1326266 m!1215315))

(check-sat (not b!1326266) (not b_lambda!23807) b_and!49145 tp_is_empty!36339 (not mapNonEmpty!56160) (not b!1326271) (not b_next!30519) (not b!1326265) (not b!1326270) (not b!1326264) (not start!111956))
(check-sat b_and!49145 (not b_next!30519))
