; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!74718 () Bool)

(assert start!74718)

(declare-fun b_free!15339 () Bool)

(declare-fun b_next!15339 () Bool)

(assert (=> start!74718 (= b_free!15339 (not b_next!15339))))

(declare-fun tp!53705 () Bool)

(declare-fun b_and!25315 () Bool)

(assert (=> start!74718 (= tp!53705 b_and!25315)))

(declare-fun b!880320 () Bool)

(declare-fun e!489919 () Bool)

(assert (=> b!880320 (= e!489919 true)))

(declare-datatypes ((array!51272 0))(
  ( (array!51273 (arr!24656 (Array (_ BitVec 32) (_ BitVec 64))) (size!25097 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!51272)

(declare-fun from!1053 () (_ BitVec 32))

(declare-datatypes ((List!17593 0))(
  ( (Nil!17590) (Cons!17589 (h!18720 (_ BitVec 64)) (t!24742 List!17593)) )
))
(declare-fun arrayNoDuplicates!0 (array!51272 (_ BitVec 32) List!17593) Bool)

(assert (=> b!880320 (arrayNoDuplicates!0 _keys!868 from!1053 Nil!17590)))

(declare-datatypes ((Unit!30022 0))(
  ( (Unit!30023) )
))
(declare-fun lt!398087 () Unit!30022)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!51272 (_ BitVec 32) (_ BitVec 32)) Unit!30022)

(assert (=> b!880320 (= lt!398087 (lemmaNoDuplicateFromThenFromBigger!0 _keys!868 #b00000000000000000000000000000000 from!1053))))

(declare-fun b!880321 () Bool)

(declare-fun e!489920 () Bool)

(declare-fun tp_is_empty!17583 () Bool)

(assert (=> b!880321 (= e!489920 tp_is_empty!17583)))

(declare-fun b!880322 () Bool)

(declare-fun res!598216 () Bool)

(declare-fun e!489921 () Bool)

(assert (=> b!880322 (=> (not res!598216) (not e!489921))))

(declare-fun k0!854 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!880322 (= res!598216 (validKeyInArray!0 k0!854))))

(declare-fun b!880323 () Bool)

(declare-fun res!598219 () Bool)

(assert (=> b!880323 (=> (not res!598219) (not e!489921))))

(declare-fun i!612 () (_ BitVec 32))

(assert (=> b!880323 (= res!598219 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!25097 _keys!868))))))

(declare-fun res!598218 () Bool)

(assert (=> start!74718 (=> (not res!598218) (not e!489921))))

(assert (=> start!74718 (= res!598218 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!25097 _keys!868))))))

(assert (=> start!74718 e!489921))

(assert (=> start!74718 tp_is_empty!17583))

(assert (=> start!74718 true))

(assert (=> start!74718 tp!53705))

(declare-fun array_inv!19410 (array!51272) Bool)

(assert (=> start!74718 (array_inv!19410 _keys!868)))

(declare-datatypes ((V!28491 0))(
  ( (V!28492 (val!8839 Int)) )
))
(declare-datatypes ((ValueCell!8352 0))(
  ( (ValueCellFull!8352 (v!11283 V!28491)) (EmptyCell!8352) )
))
(declare-datatypes ((array!51274 0))(
  ( (array!51275 (arr!24657 (Array (_ BitVec 32) ValueCell!8352)) (size!25098 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!51274)

(declare-fun e!489925 () Bool)

(declare-fun array_inv!19411 (array!51274) Bool)

(assert (=> start!74718 (and (array_inv!19411 _values!688) e!489925)))

(declare-fun b!880324 () Bool)

(declare-fun res!598210 () Bool)

(assert (=> b!880324 (=> (not res!598210) (not e!489921))))

(assert (=> b!880324 (= res!598210 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!17590))))

(declare-fun b!880325 () Bool)

(declare-fun res!598212 () Bool)

(assert (=> b!880325 (=> (not res!598212) (not e!489921))))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!880325 (= res!598212 (validMask!0 mask!1196))))

(declare-fun b!880326 () Bool)

(declare-fun e!489924 () Bool)

(declare-fun e!489922 () Bool)

(assert (=> b!880326 (= e!489924 (not e!489922))))

(declare-fun res!598214 () Bool)

(assert (=> b!880326 (=> res!598214 e!489922)))

(assert (=> b!880326 (= res!598214 (not (validKeyInArray!0 (select (arr!24656 _keys!868) from!1053))))))

(declare-datatypes ((tuple2!11720 0))(
  ( (tuple2!11721 (_1!5870 (_ BitVec 64)) (_2!5870 V!28491)) )
))
(declare-datatypes ((List!17594 0))(
  ( (Nil!17591) (Cons!17590 (h!18721 tuple2!11720) (t!24743 List!17594)) )
))
(declare-datatypes ((ListLongMap!10503 0))(
  ( (ListLongMap!10504 (toList!5267 List!17594)) )
))
(declare-fun lt!398082 () ListLongMap!10503)

(declare-fun lt!398083 () ListLongMap!10503)

(assert (=> b!880326 (= lt!398082 lt!398083)))

(declare-fun v!557 () V!28491)

(declare-fun lt!398086 () ListLongMap!10503)

(declare-fun +!2473 (ListLongMap!10503 tuple2!11720) ListLongMap!10503)

(assert (=> b!880326 (= lt!398083 (+!2473 lt!398086 (tuple2!11721 k0!854 v!557)))))

(declare-fun lt!398084 () array!51274)

(declare-fun defaultEntry!696 () Int)

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun minValue!654 () V!28491)

(declare-fun zeroValue!654 () V!28491)

(declare-fun getCurrentListMapNoExtraKeys!3227 (array!51272 array!51274 (_ BitVec 32) (_ BitVec 32) V!28491 V!28491 (_ BitVec 32) Int) ListLongMap!10503)

(assert (=> b!880326 (= lt!398082 (getCurrentListMapNoExtraKeys!3227 _keys!868 lt!398084 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(assert (=> b!880326 (= lt!398086 (getCurrentListMapNoExtraKeys!3227 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun lt!398089 () Unit!30022)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!703 (array!51272 array!51274 (_ BitVec 32) (_ BitVec 32) V!28491 V!28491 (_ BitVec 32) (_ BitVec 64) V!28491 (_ BitVec 32) Int) Unit!30022)

(assert (=> b!880326 (= lt!398089 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!703 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 i!612 k0!854 v!557 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!880327 () Bool)

(declare-fun res!598217 () Bool)

(assert (=> b!880327 (=> (not res!598217) (not e!489921))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!51272 (_ BitVec 32)) Bool)

(assert (=> b!880327 (= res!598217 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun b!880328 () Bool)

(declare-fun e!489923 () Bool)

(assert (=> b!880328 (= e!489923 tp_is_empty!17583)))

(declare-fun b!880329 () Bool)

(assert (=> b!880329 (= e!489921 e!489924)))

(declare-fun res!598213 () Bool)

(assert (=> b!880329 (=> (not res!598213) (not e!489924))))

(assert (=> b!880329 (= res!598213 (and (not (= from!1053 i!612)) (bvslt from!1053 i!612)))))

(declare-fun lt!398085 () ListLongMap!10503)

(assert (=> b!880329 (= lt!398085 (getCurrentListMapNoExtraKeys!3227 _keys!868 lt!398084 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(assert (=> b!880329 (= lt!398084 (array!51275 (store (arr!24657 _values!688) i!612 (ValueCellFull!8352 v!557)) (size!25098 _values!688)))))

(declare-fun lt!398088 () ListLongMap!10503)

(assert (=> b!880329 (= lt!398088 (getCurrentListMapNoExtraKeys!3227 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun mapNonEmpty!27996 () Bool)

(declare-fun mapRes!27996 () Bool)

(declare-fun tp!53706 () Bool)

(assert (=> mapNonEmpty!27996 (= mapRes!27996 (and tp!53706 e!489923))))

(declare-fun mapValue!27996 () ValueCell!8352)

(declare-fun mapKey!27996 () (_ BitVec 32))

(declare-fun mapRest!27996 () (Array (_ BitVec 32) ValueCell!8352))

(assert (=> mapNonEmpty!27996 (= (arr!24657 _values!688) (store mapRest!27996 mapKey!27996 mapValue!27996))))

(declare-fun b!880330 () Bool)

(declare-fun res!598209 () Bool)

(assert (=> b!880330 (=> (not res!598209) (not e!489921))))

(assert (=> b!880330 (= res!598209 (and (= (size!25098 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!25097 _keys!868) (size!25098 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!27996 () Bool)

(assert (=> mapIsEmpty!27996 mapRes!27996))

(declare-fun b!880331 () Bool)

(assert (=> b!880331 (= e!489925 (and e!489920 mapRes!27996))))

(declare-fun condMapEmpty!27996 () Bool)

(declare-fun mapDefault!27996 () ValueCell!8352)

(assert (=> b!880331 (= condMapEmpty!27996 (= (arr!24657 _values!688) ((as const (Array (_ BitVec 32) ValueCell!8352)) mapDefault!27996)))))

(declare-fun b!880332 () Bool)

(assert (=> b!880332 (= e!489922 e!489919)))

(declare-fun res!598211 () Bool)

(assert (=> b!880332 (=> res!598211 e!489919)))

(assert (=> b!880332 (= res!598211 (not (= (select (arr!24656 _keys!868) from!1053) k0!854)))))

(declare-fun get!12980 (ValueCell!8352 V!28491) V!28491)

(declare-fun dynLambda!1239 (Int (_ BitVec 64)) V!28491)

(assert (=> b!880332 (= lt!398085 (+!2473 lt!398083 (tuple2!11721 (select (arr!24656 _keys!868) from!1053) (get!12980 (select (arr!24657 _values!688) from!1053) (dynLambda!1239 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!880333 () Bool)

(declare-fun res!598215 () Bool)

(assert (=> b!880333 (=> (not res!598215) (not e!489921))))

(assert (=> b!880333 (= res!598215 (and (= (select (arr!24656 _keys!868) i!612) k0!854) (bvsle from!1053 i!612)))))

(assert (= (and start!74718 res!598218) b!880325))

(assert (= (and b!880325 res!598212) b!880330))

(assert (= (and b!880330 res!598209) b!880327))

(assert (= (and b!880327 res!598217) b!880324))

(assert (= (and b!880324 res!598210) b!880323))

(assert (= (and b!880323 res!598219) b!880322))

(assert (= (and b!880322 res!598216) b!880333))

(assert (= (and b!880333 res!598215) b!880329))

(assert (= (and b!880329 res!598213) b!880326))

(assert (= (and b!880326 (not res!598214)) b!880332))

(assert (= (and b!880332 (not res!598211)) b!880320))

(assert (= (and b!880331 condMapEmpty!27996) mapIsEmpty!27996))

(assert (= (and b!880331 (not condMapEmpty!27996)) mapNonEmpty!27996))

(get-info :version)

(assert (= (and mapNonEmpty!27996 ((_ is ValueCellFull!8352) mapValue!27996)) b!880328))

(assert (= (and b!880331 ((_ is ValueCellFull!8352) mapDefault!27996)) b!880321))

(assert (= start!74718 b!880331))

(declare-fun b_lambda!12477 () Bool)

(assert (=> (not b_lambda!12477) (not b!880332)))

(declare-fun t!24741 () Bool)

(declare-fun tb!5005 () Bool)

(assert (=> (and start!74718 (= defaultEntry!696 defaultEntry!696) t!24741) tb!5005))

(declare-fun result!9627 () Bool)

(assert (=> tb!5005 (= result!9627 tp_is_empty!17583)))

(assert (=> b!880332 t!24741))

(declare-fun b_and!25317 () Bool)

(assert (= b_and!25315 (and (=> t!24741 result!9627) b_and!25317)))

(declare-fun m!820203 () Bool)

(assert (=> b!880325 m!820203))

(declare-fun m!820205 () Bool)

(assert (=> b!880322 m!820205))

(declare-fun m!820207 () Bool)

(assert (=> start!74718 m!820207))

(declare-fun m!820209 () Bool)

(assert (=> start!74718 m!820209))

(declare-fun m!820211 () Bool)

(assert (=> b!880327 m!820211))

(declare-fun m!820213 () Bool)

(assert (=> b!880332 m!820213))

(declare-fun m!820215 () Bool)

(assert (=> b!880332 m!820215))

(declare-fun m!820217 () Bool)

(assert (=> b!880332 m!820217))

(declare-fun m!820219 () Bool)

(assert (=> b!880332 m!820219))

(assert (=> b!880332 m!820215))

(declare-fun m!820221 () Bool)

(assert (=> b!880332 m!820221))

(assert (=> b!880332 m!820217))

(declare-fun m!820223 () Bool)

(assert (=> b!880326 m!820223))

(assert (=> b!880326 m!820221))

(declare-fun m!820225 () Bool)

(assert (=> b!880326 m!820225))

(assert (=> b!880326 m!820221))

(declare-fun m!820227 () Bool)

(assert (=> b!880326 m!820227))

(declare-fun m!820229 () Bool)

(assert (=> b!880326 m!820229))

(declare-fun m!820231 () Bool)

(assert (=> b!880326 m!820231))

(declare-fun m!820233 () Bool)

(assert (=> mapNonEmpty!27996 m!820233))

(declare-fun m!820235 () Bool)

(assert (=> b!880333 m!820235))

(declare-fun m!820237 () Bool)

(assert (=> b!880329 m!820237))

(declare-fun m!820239 () Bool)

(assert (=> b!880329 m!820239))

(declare-fun m!820241 () Bool)

(assert (=> b!880329 m!820241))

(declare-fun m!820243 () Bool)

(assert (=> b!880324 m!820243))

(declare-fun m!820245 () Bool)

(assert (=> b!880320 m!820245))

(declare-fun m!820247 () Bool)

(assert (=> b!880320 m!820247))

(check-sat (not b!880327) (not b!880326) (not mapNonEmpty!27996) (not b!880325) (not start!74718) (not b_lambda!12477) (not b!880322) (not b!880324) tp_is_empty!17583 b_and!25317 (not b!880320) (not b!880332) (not b!880329) (not b_next!15339))
(check-sat b_and!25317 (not b_next!15339))
