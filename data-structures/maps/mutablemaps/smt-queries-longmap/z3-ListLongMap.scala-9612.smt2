; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!113714 () Bool)

(assert start!113714)

(declare-fun b_free!31587 () Bool)

(declare-fun b_next!31587 () Bool)

(assert (=> start!113714 (= b_free!31587 (not b_next!31587))))

(declare-fun tp!110577 () Bool)

(declare-fun b_and!50983 () Bool)

(assert (=> start!113714 (= tp!110577 b_and!50983)))

(declare-fun b!1349204 () Bool)

(declare-fun res!895208 () Bool)

(declare-fun e!767533 () Bool)

(assert (=> b!1349204 (=> (not res!895208) (not e!767533))))

(declare-fun mask!1977 () (_ BitVec 32))

(declare-datatypes ((array!91963 0))(
  ( (array!91964 (arr!44430 (Array (_ BitVec 32) (_ BitVec 64))) (size!44981 (_ BitVec 32))) )
))
(declare-fun _keys!1571 () array!91963)

(declare-fun extraKeys!1224 () (_ BitVec 32))

(declare-datatypes ((V!55219 0))(
  ( (V!55220 (val!18868 Int)) )
))
(declare-datatypes ((ValueCell!17895 0))(
  ( (ValueCellFull!17895 (v!21521 V!55219)) (EmptyCell!17895) )
))
(declare-datatypes ((array!91965 0))(
  ( (array!91966 (arr!44431 (Array (_ BitVec 32) ValueCell!17895)) (size!44982 (_ BitVec 32))) )
))
(declare-fun _values!1303 () array!91965)

(assert (=> b!1349204 (= res!895208 (and (= (size!44982 _values!1303) (bvadd #b00000000000000000000000000000001 mask!1977)) (= (size!44981 _keys!1571) (size!44982 _values!1303)) (bvsge mask!1977 #b00000000000000000000000000000000) (bvsge extraKeys!1224 #b00000000000000000000000000000000) (bvsle extraKeys!1224 #b00000000000000000000000000000011)))))

(declare-fun b!1349206 () Bool)

(declare-fun res!895212 () Bool)

(assert (=> b!1349206 (=> (not res!895212) (not e!767533))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!91963 (_ BitVec 32)) Bool)

(assert (=> b!1349206 (= res!895212 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1571 mask!1977))))

(declare-fun b!1349207 () Bool)

(declare-fun res!895206 () Bool)

(declare-fun e!767535 () Bool)

(assert (=> b!1349207 (=> (not res!895206) (not e!767535))))

(declare-fun k0!1142 () (_ BitVec 64))

(declare-fun from!1960 () (_ BitVec 32))

(assert (=> b!1349207 (= res!895206 (not (= k0!1142 (select (arr!44430 _keys!1571) from!1960))))))

(declare-fun b!1349208 () Bool)

(declare-fun e!767531 () Bool)

(declare-fun tp_is_empty!37587 () Bool)

(assert (=> b!1349208 (= e!767531 tp_is_empty!37587)))

(declare-fun b!1349209 () Bool)

(declare-fun res!895203 () Bool)

(assert (=> b!1349209 (=> (not res!895203) (not e!767533))))

(assert (=> b!1349209 (= res!895203 (and (= (bvand extraKeys!1224 #b00000000000000000000000000000010) #b00000000000000000000000000000000) (bvsge from!1960 #b00000000000000000000000000000000) (bvslt from!1960 (size!44981 _keys!1571)) (not (= k0!1142 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1142 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1349210 () Bool)

(declare-fun res!895210 () Bool)

(assert (=> b!1349210 (=> (not res!895210) (not e!767533))))

(declare-datatypes ((List!31639 0))(
  ( (Nil!31636) (Cons!31635 (h!32844 (_ BitVec 64)) (t!46300 List!31639)) )
))
(declare-fun arrayNoDuplicates!0 (array!91963 (_ BitVec 32) List!31639) Bool)

(assert (=> b!1349210 (= res!895210 (arrayNoDuplicates!0 _keys!1571 #b00000000000000000000000000000000 Nil!31636))))

(declare-fun b!1349211 () Bool)

(declare-fun res!895211 () Bool)

(assert (=> b!1349211 (=> (not res!895211) (not e!767533))))

(assert (=> b!1349211 (= res!895211 (= (bvand extraKeys!1224 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(declare-fun mapNonEmpty!58098 () Bool)

(declare-fun mapRes!58098 () Bool)

(declare-fun tp!110578 () Bool)

(declare-fun e!767530 () Bool)

(assert (=> mapNonEmpty!58098 (= mapRes!58098 (and tp!110578 e!767530))))

(declare-fun mapRest!58098 () (Array (_ BitVec 32) ValueCell!17895))

(declare-fun mapValue!58098 () ValueCell!17895)

(declare-fun mapKey!58098 () (_ BitVec 32))

(assert (=> mapNonEmpty!58098 (= (arr!44431 _values!1303) (store mapRest!58098 mapKey!58098 mapValue!58098))))

(declare-fun mapIsEmpty!58098 () Bool)

(assert (=> mapIsEmpty!58098 mapRes!58098))

(declare-fun b!1349212 () Bool)

(assert (=> b!1349212 (= e!767530 tp_is_empty!37587)))

(declare-fun minValue!1245 () V!55219)

(declare-fun zeroValue!1245 () V!55219)

(declare-fun b!1349213 () Bool)

(declare-fun defaultEntry!1306 () Int)

(declare-datatypes ((tuple2!24472 0))(
  ( (tuple2!24473 (_1!12246 (_ BitVec 64)) (_2!12246 V!55219)) )
))
(declare-datatypes ((List!31640 0))(
  ( (Nil!31637) (Cons!31636 (h!32845 tuple2!24472) (t!46301 List!31640)) )
))
(declare-datatypes ((ListLongMap!22141 0))(
  ( (ListLongMap!22142 (toList!11086 List!31640)) )
))
(declare-fun contains!9203 (ListLongMap!22141 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5976 (array!91963 array!91965 (_ BitVec 32) (_ BitVec 32) V!55219 V!55219 (_ BitVec 32) Int) ListLongMap!22141)

(assert (=> b!1349213 (= e!767535 (not (contains!9203 (getCurrentListMap!5976 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 (bvadd #b00000000000000000000000000000001 from!1960) defaultEntry!1306) k0!1142)))))

(declare-fun lt!596374 () ListLongMap!22141)

(assert (=> b!1349213 (contains!9203 lt!596374 k0!1142)))

(declare-datatypes ((Unit!44143 0))(
  ( (Unit!44144) )
))
(declare-fun lt!596373 () Unit!44143)

(declare-fun lt!596375 () V!55219)

(declare-fun lemmaInListMapAfterAddingDiffThenInBefore!413 ((_ BitVec 64) (_ BitVec 64) V!55219 ListLongMap!22141) Unit!44143)

(assert (=> b!1349213 (= lt!596373 (lemmaInListMapAfterAddingDiffThenInBefore!413 k0!1142 (select (arr!44430 _keys!1571) from!1960) lt!596375 lt!596374))))

(declare-fun res!895204 () Bool)

(assert (=> start!113714 (=> (not res!895204) (not e!767533))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!113714 (= res!895204 (validMask!0 mask!1977))))

(assert (=> start!113714 e!767533))

(assert (=> start!113714 tp_is_empty!37587))

(assert (=> start!113714 true))

(declare-fun array_inv!33377 (array!91963) Bool)

(assert (=> start!113714 (array_inv!33377 _keys!1571)))

(declare-fun e!767534 () Bool)

(declare-fun array_inv!33378 (array!91965) Bool)

(assert (=> start!113714 (and (array_inv!33378 _values!1303) e!767534)))

(assert (=> start!113714 tp!110577))

(declare-fun b!1349205 () Bool)

(declare-fun res!895207 () Bool)

(assert (=> b!1349205 (=> (not res!895207) (not e!767533))))

(assert (=> b!1349205 (= res!895207 (contains!9203 (getCurrentListMap!5976 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 from!1960 defaultEntry!1306) k0!1142))))

(declare-fun b!1349214 () Bool)

(assert (=> b!1349214 (= e!767534 (and e!767531 mapRes!58098))))

(declare-fun condMapEmpty!58098 () Bool)

(declare-fun mapDefault!58098 () ValueCell!17895)

(assert (=> b!1349214 (= condMapEmpty!58098 (= (arr!44431 _values!1303) ((as const (Array (_ BitVec 32) ValueCell!17895)) mapDefault!58098)))))

(declare-fun b!1349215 () Bool)

(assert (=> b!1349215 (= e!767533 e!767535)))

(declare-fun res!895205 () Bool)

(assert (=> b!1349215 (=> (not res!895205) (not e!767535))))

(declare-fun +!4828 (ListLongMap!22141 tuple2!24472) ListLongMap!22141)

(assert (=> b!1349215 (= res!895205 (contains!9203 (+!4828 lt!596374 (tuple2!24473 (select (arr!44430 _keys!1571) from!1960) lt!596375)) k0!1142))))

(declare-fun getCurrentListMapNoExtraKeys!6555 (array!91963 array!91965 (_ BitVec 32) (_ BitVec 32) V!55219 V!55219 (_ BitVec 32) Int) ListLongMap!22141)

(assert (=> b!1349215 (= lt!596374 (getCurrentListMapNoExtraKeys!6555 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 (bvadd #b00000000000000000000000000000001 from!1960) defaultEntry!1306))))

(declare-fun get!22493 (ValueCell!17895 V!55219) V!55219)

(declare-fun dynLambda!3865 (Int (_ BitVec 64)) V!55219)

(assert (=> b!1349215 (= lt!596375 (get!22493 (select (arr!44431 _values!1303) from!1960) (dynLambda!3865 defaultEntry!1306 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1349216 () Bool)

(declare-fun res!895202 () Bool)

(assert (=> b!1349216 (=> (not res!895202) (not e!767533))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1349216 (= res!895202 (validKeyInArray!0 (select (arr!44430 _keys!1571) from!1960)))))

(declare-fun b!1349217 () Bool)

(declare-fun res!895209 () Bool)

(assert (=> b!1349217 (=> (not res!895209) (not e!767533))))

(assert (=> b!1349217 (= res!895209 (not (= (select (arr!44430 _keys!1571) from!1960) k0!1142)))))

(assert (= (and start!113714 res!895204) b!1349204))

(assert (= (and b!1349204 res!895208) b!1349206))

(assert (= (and b!1349206 res!895212) b!1349210))

(assert (= (and b!1349210 res!895210) b!1349209))

(assert (= (and b!1349209 res!895203) b!1349205))

(assert (= (and b!1349205 res!895207) b!1349217))

(assert (= (and b!1349217 res!895209) b!1349216))

(assert (= (and b!1349216 res!895202) b!1349211))

(assert (= (and b!1349211 res!895211) b!1349215))

(assert (= (and b!1349215 res!895205) b!1349207))

(assert (= (and b!1349207 res!895206) b!1349213))

(assert (= (and b!1349214 condMapEmpty!58098) mapIsEmpty!58098))

(assert (= (and b!1349214 (not condMapEmpty!58098)) mapNonEmpty!58098))

(get-info :version)

(assert (= (and mapNonEmpty!58098 ((_ is ValueCellFull!17895) mapValue!58098)) b!1349212))

(assert (= (and b!1349214 ((_ is ValueCellFull!17895) mapDefault!58098)) b!1349208))

(assert (= start!113714 b!1349214))

(declare-fun b_lambda!24707 () Bool)

(assert (=> (not b_lambda!24707) (not b!1349215)))

(declare-fun t!46299 () Bool)

(declare-fun tb!12465 () Bool)

(assert (=> (and start!113714 (= defaultEntry!1306 defaultEntry!1306) t!46299) tb!12465))

(declare-fun result!26019 () Bool)

(assert (=> tb!12465 (= result!26019 tp_is_empty!37587)))

(assert (=> b!1349215 t!46299))

(declare-fun b_and!50985 () Bool)

(assert (= b_and!50983 (and (=> t!46299 result!26019) b_and!50985)))

(declare-fun m!1236341 () Bool)

(assert (=> mapNonEmpty!58098 m!1236341))

(declare-fun m!1236343 () Bool)

(assert (=> b!1349206 m!1236343))

(declare-fun m!1236345 () Bool)

(assert (=> start!113714 m!1236345))

(declare-fun m!1236347 () Bool)

(assert (=> start!113714 m!1236347))

(declare-fun m!1236349 () Bool)

(assert (=> start!113714 m!1236349))

(declare-fun m!1236351 () Bool)

(assert (=> b!1349217 m!1236351))

(declare-fun m!1236353 () Bool)

(assert (=> b!1349210 m!1236353))

(declare-fun m!1236355 () Bool)

(assert (=> b!1349205 m!1236355))

(assert (=> b!1349205 m!1236355))

(declare-fun m!1236357 () Bool)

(assert (=> b!1349205 m!1236357))

(assert (=> b!1349216 m!1236351))

(assert (=> b!1349216 m!1236351))

(declare-fun m!1236359 () Bool)

(assert (=> b!1349216 m!1236359))

(assert (=> b!1349207 m!1236351))

(declare-fun m!1236361 () Bool)

(assert (=> b!1349215 m!1236361))

(declare-fun m!1236363 () Bool)

(assert (=> b!1349215 m!1236363))

(declare-fun m!1236365 () Bool)

(assert (=> b!1349215 m!1236365))

(declare-fun m!1236367 () Bool)

(assert (=> b!1349215 m!1236367))

(declare-fun m!1236369 () Bool)

(assert (=> b!1349215 m!1236369))

(declare-fun m!1236371 () Bool)

(assert (=> b!1349215 m!1236371))

(assert (=> b!1349215 m!1236363))

(assert (=> b!1349215 m!1236365))

(assert (=> b!1349215 m!1236369))

(assert (=> b!1349215 m!1236351))

(declare-fun m!1236373 () Bool)

(assert (=> b!1349213 m!1236373))

(assert (=> b!1349213 m!1236373))

(declare-fun m!1236375 () Bool)

(assert (=> b!1349213 m!1236375))

(assert (=> b!1349213 m!1236351))

(declare-fun m!1236377 () Bool)

(assert (=> b!1349213 m!1236377))

(declare-fun m!1236379 () Bool)

(assert (=> b!1349213 m!1236379))

(assert (=> b!1349213 m!1236351))

(check-sat (not b!1349215) (not b!1349213) b_and!50985 (not b!1349206) (not mapNonEmpty!58098) tp_is_empty!37587 (not b_lambda!24707) (not b!1349216) (not b!1349205) (not start!113714) (not b_next!31587) (not b!1349210))
(check-sat b_and!50985 (not b_next!31587))
(get-model)

(declare-fun b_lambda!24711 () Bool)

(assert (= b_lambda!24707 (or (and start!113714 b_free!31587) b_lambda!24711)))

(check-sat (not b!1349215) (not b!1349213) b_and!50985 (not b!1349206) (not mapNonEmpty!58098) tp_is_empty!37587 (not b!1349216) (not b!1349205) (not start!113714) (not b_next!31587) (not b!1349210) (not b_lambda!24711))
(check-sat b_and!50985 (not b_next!31587))
(get-model)

(declare-fun d!144573 () Bool)

(assert (=> d!144573 (= (validMask!0 mask!1977) (and (or (= mask!1977 #b00000000000000000000000000000111) (= mask!1977 #b00000000000000000000000000001111) (= mask!1977 #b00000000000000000000000000011111) (= mask!1977 #b00000000000000000000000000111111) (= mask!1977 #b00000000000000000000000001111111) (= mask!1977 #b00000000000000000000000011111111) (= mask!1977 #b00000000000000000000000111111111) (= mask!1977 #b00000000000000000000001111111111) (= mask!1977 #b00000000000000000000011111111111) (= mask!1977 #b00000000000000000000111111111111) (= mask!1977 #b00000000000000000001111111111111) (= mask!1977 #b00000000000000000011111111111111) (= mask!1977 #b00000000000000000111111111111111) (= mask!1977 #b00000000000000001111111111111111) (= mask!1977 #b00000000000000011111111111111111) (= mask!1977 #b00000000000000111111111111111111) (= mask!1977 #b00000000000001111111111111111111) (= mask!1977 #b00000000000011111111111111111111) (= mask!1977 #b00000000000111111111111111111111) (= mask!1977 #b00000000001111111111111111111111) (= mask!1977 #b00000000011111111111111111111111) (= mask!1977 #b00000000111111111111111111111111) (= mask!1977 #b00000001111111111111111111111111) (= mask!1977 #b00000011111111111111111111111111) (= mask!1977 #b00000111111111111111111111111111) (= mask!1977 #b00001111111111111111111111111111) (= mask!1977 #b00011111111111111111111111111111) (= mask!1977 #b00111111111111111111111111111111)) (bvsle mask!1977 #b00111111111111111111111111111111)))))

(assert (=> start!113714 d!144573))

(declare-fun d!144575 () Bool)

(assert (=> d!144575 (= (array_inv!33377 _keys!1571) (bvsge (size!44981 _keys!1571) #b00000000000000000000000000000000))))

(assert (=> start!113714 d!144575))

(declare-fun d!144577 () Bool)

(assert (=> d!144577 (= (array_inv!33378 _values!1303) (bvsge (size!44982 _values!1303) #b00000000000000000000000000000000))))

(assert (=> start!113714 d!144577))

(declare-fun d!144579 () Bool)

(assert (=> d!144579 (= (validKeyInArray!0 (select (arr!44430 _keys!1571) from!1960)) (and (not (= (select (arr!44430 _keys!1571) from!1960) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!44430 _keys!1571) from!1960) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1349216 d!144579))

(declare-fun d!144581 () Bool)

(declare-fun e!767558 () Bool)

(assert (=> d!144581 e!767558))

(declare-fun res!895248 () Bool)

(assert (=> d!144581 (=> res!895248 e!767558)))

(declare-fun lt!596395 () Bool)

(assert (=> d!144581 (= res!895248 (not lt!596395))))

(declare-fun lt!596393 () Bool)

(assert (=> d!144581 (= lt!596395 lt!596393)))

(declare-fun lt!596394 () Unit!44143)

(declare-fun e!767559 () Unit!44143)

(assert (=> d!144581 (= lt!596394 e!767559)))

(declare-fun c!126496 () Bool)

(assert (=> d!144581 (= c!126496 lt!596393)))

(declare-fun containsKey!743 (List!31640 (_ BitVec 64)) Bool)

(assert (=> d!144581 (= lt!596393 (containsKey!743 (toList!11086 (+!4828 lt!596374 (tuple2!24473 (select (arr!44430 _keys!1571) from!1960) lt!596375))) k0!1142))))

(assert (=> d!144581 (= (contains!9203 (+!4828 lt!596374 (tuple2!24473 (select (arr!44430 _keys!1571) from!1960) lt!596375)) k0!1142) lt!596395)))

(declare-fun b!1349270 () Bool)

(declare-fun lt!596396 () Unit!44143)

(assert (=> b!1349270 (= e!767559 lt!596396)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!488 (List!31640 (_ BitVec 64)) Unit!44143)

(assert (=> b!1349270 (= lt!596396 (lemmaContainsKeyImpliesGetValueByKeyDefined!488 (toList!11086 (+!4828 lt!596374 (tuple2!24473 (select (arr!44430 _keys!1571) from!1960) lt!596375))) k0!1142))))

(declare-datatypes ((Option!776 0))(
  ( (Some!775 (v!21523 V!55219)) (None!774) )
))
(declare-fun isDefined!528 (Option!776) Bool)

(declare-fun getValueByKey!725 (List!31640 (_ BitVec 64)) Option!776)

(assert (=> b!1349270 (isDefined!528 (getValueByKey!725 (toList!11086 (+!4828 lt!596374 (tuple2!24473 (select (arr!44430 _keys!1571) from!1960) lt!596375))) k0!1142))))

(declare-fun b!1349271 () Bool)

(declare-fun Unit!44145 () Unit!44143)

(assert (=> b!1349271 (= e!767559 Unit!44145)))

(declare-fun b!1349272 () Bool)

(assert (=> b!1349272 (= e!767558 (isDefined!528 (getValueByKey!725 (toList!11086 (+!4828 lt!596374 (tuple2!24473 (select (arr!44430 _keys!1571) from!1960) lt!596375))) k0!1142)))))

(assert (= (and d!144581 c!126496) b!1349270))

(assert (= (and d!144581 (not c!126496)) b!1349271))

(assert (= (and d!144581 (not res!895248)) b!1349272))

(declare-fun m!1236421 () Bool)

(assert (=> d!144581 m!1236421))

(declare-fun m!1236423 () Bool)

(assert (=> b!1349270 m!1236423))

(declare-fun m!1236425 () Bool)

(assert (=> b!1349270 m!1236425))

(assert (=> b!1349270 m!1236425))

(declare-fun m!1236427 () Bool)

(assert (=> b!1349270 m!1236427))

(assert (=> b!1349272 m!1236425))

(assert (=> b!1349272 m!1236425))

(assert (=> b!1349272 m!1236427))

(assert (=> b!1349215 d!144581))

(declare-fun d!144583 () Bool)

(declare-fun e!767562 () Bool)

(assert (=> d!144583 e!767562))

(declare-fun res!895254 () Bool)

(assert (=> d!144583 (=> (not res!895254) (not e!767562))))

(declare-fun lt!596407 () ListLongMap!22141)

(assert (=> d!144583 (= res!895254 (contains!9203 lt!596407 (_1!12246 (tuple2!24473 (select (arr!44430 _keys!1571) from!1960) lt!596375))))))

(declare-fun lt!596406 () List!31640)

(assert (=> d!144583 (= lt!596407 (ListLongMap!22142 lt!596406))))

(declare-fun lt!596405 () Unit!44143)

(declare-fun lt!596408 () Unit!44143)

(assert (=> d!144583 (= lt!596405 lt!596408)))

(assert (=> d!144583 (= (getValueByKey!725 lt!596406 (_1!12246 (tuple2!24473 (select (arr!44430 _keys!1571) from!1960) lt!596375))) (Some!775 (_2!12246 (tuple2!24473 (select (arr!44430 _keys!1571) from!1960) lt!596375))))))

(declare-fun lemmaContainsTupThenGetReturnValue!368 (List!31640 (_ BitVec 64) V!55219) Unit!44143)

(assert (=> d!144583 (= lt!596408 (lemmaContainsTupThenGetReturnValue!368 lt!596406 (_1!12246 (tuple2!24473 (select (arr!44430 _keys!1571) from!1960) lt!596375)) (_2!12246 (tuple2!24473 (select (arr!44430 _keys!1571) from!1960) lt!596375))))))

(declare-fun insertStrictlySorted!497 (List!31640 (_ BitVec 64) V!55219) List!31640)

(assert (=> d!144583 (= lt!596406 (insertStrictlySorted!497 (toList!11086 lt!596374) (_1!12246 (tuple2!24473 (select (arr!44430 _keys!1571) from!1960) lt!596375)) (_2!12246 (tuple2!24473 (select (arr!44430 _keys!1571) from!1960) lt!596375))))))

(assert (=> d!144583 (= (+!4828 lt!596374 (tuple2!24473 (select (arr!44430 _keys!1571) from!1960) lt!596375)) lt!596407)))

(declare-fun b!1349277 () Bool)

(declare-fun res!895253 () Bool)

(assert (=> b!1349277 (=> (not res!895253) (not e!767562))))

(assert (=> b!1349277 (= res!895253 (= (getValueByKey!725 (toList!11086 lt!596407) (_1!12246 (tuple2!24473 (select (arr!44430 _keys!1571) from!1960) lt!596375))) (Some!775 (_2!12246 (tuple2!24473 (select (arr!44430 _keys!1571) from!1960) lt!596375)))))))

(declare-fun b!1349278 () Bool)

(declare-fun contains!9205 (List!31640 tuple2!24472) Bool)

(assert (=> b!1349278 (= e!767562 (contains!9205 (toList!11086 lt!596407) (tuple2!24473 (select (arr!44430 _keys!1571) from!1960) lt!596375)))))

(assert (= (and d!144583 res!895254) b!1349277))

(assert (= (and b!1349277 res!895253) b!1349278))

(declare-fun m!1236429 () Bool)

(assert (=> d!144583 m!1236429))

(declare-fun m!1236431 () Bool)

(assert (=> d!144583 m!1236431))

(declare-fun m!1236433 () Bool)

(assert (=> d!144583 m!1236433))

(declare-fun m!1236435 () Bool)

(assert (=> d!144583 m!1236435))

(declare-fun m!1236437 () Bool)

(assert (=> b!1349277 m!1236437))

(declare-fun m!1236439 () Bool)

(assert (=> b!1349278 m!1236439))

(assert (=> b!1349215 d!144583))

(declare-fun b!1349303 () Bool)

(declare-fun lt!596428 () Unit!44143)

(declare-fun lt!596427 () Unit!44143)

(assert (=> b!1349303 (= lt!596428 lt!596427)))

(declare-fun lt!596425 () (_ BitVec 64))

(declare-fun lt!596426 () ListLongMap!22141)

(declare-fun lt!596429 () (_ BitVec 64))

(declare-fun lt!596424 () V!55219)

(assert (=> b!1349303 (not (contains!9203 (+!4828 lt!596426 (tuple2!24473 lt!596425 lt!596424)) lt!596429))))

(declare-fun addStillNotContains!513 (ListLongMap!22141 (_ BitVec 64) V!55219 (_ BitVec 64)) Unit!44143)

(assert (=> b!1349303 (= lt!596427 (addStillNotContains!513 lt!596426 lt!596425 lt!596424 lt!596429))))

(assert (=> b!1349303 (= lt!596429 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!1349303 (= lt!596424 (get!22493 (select (arr!44431 _values!1303) (bvadd #b00000000000000000000000000000001 from!1960)) (dynLambda!3865 defaultEntry!1306 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!1349303 (= lt!596425 (select (arr!44430 _keys!1571) (bvadd #b00000000000000000000000000000001 from!1960)))))

(declare-fun call!65162 () ListLongMap!22141)

(assert (=> b!1349303 (= lt!596426 call!65162)))

(declare-fun e!767583 () ListLongMap!22141)

(assert (=> b!1349303 (= e!767583 (+!4828 call!65162 (tuple2!24473 (select (arr!44430 _keys!1571) (bvadd #b00000000000000000000000000000001 from!1960)) (get!22493 (select (arr!44431 _values!1303) (bvadd #b00000000000000000000000000000001 from!1960)) (dynLambda!3865 defaultEntry!1306 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!1349304 () Bool)

(declare-fun e!767577 () Bool)

(declare-fun e!767582 () Bool)

(assert (=> b!1349304 (= e!767577 e!767582)))

(declare-fun c!126507 () Bool)

(declare-fun e!767578 () Bool)

(assert (=> b!1349304 (= c!126507 e!767578)))

(declare-fun res!895263 () Bool)

(assert (=> b!1349304 (=> (not res!895263) (not e!767578))))

(assert (=> b!1349304 (= res!895263 (bvslt (bvadd #b00000000000000000000000000000001 from!1960) (size!44981 _keys!1571)))))

(declare-fun lt!596423 () ListLongMap!22141)

(declare-fun e!767579 () Bool)

(declare-fun b!1349305 () Bool)

(assert (=> b!1349305 (= e!767579 (= lt!596423 (getCurrentListMapNoExtraKeys!6555 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 (bvadd #b00000000000000000000000000000001 from!1960 #b00000000000000000000000000000001) defaultEntry!1306)))))

(declare-fun b!1349306 () Bool)

(declare-fun e!767580 () Bool)

(assert (=> b!1349306 (= e!767582 e!767580)))

(assert (=> b!1349306 (and (bvsge (bvadd #b00000000000000000000000000000001 from!1960) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!1960) (size!44981 _keys!1571)))))

(declare-fun res!895266 () Bool)

(assert (=> b!1349306 (= res!895266 (contains!9203 lt!596423 (select (arr!44430 _keys!1571) (bvadd #b00000000000000000000000000000001 from!1960))))))

(assert (=> b!1349306 (=> (not res!895266) (not e!767580))))

(declare-fun b!1349307 () Bool)

(assert (=> b!1349307 (= e!767583 call!65162)))

(declare-fun d!144585 () Bool)

(assert (=> d!144585 e!767577))

(declare-fun res!895265 () Bool)

(assert (=> d!144585 (=> (not res!895265) (not e!767577))))

(assert (=> d!144585 (= res!895265 (not (contains!9203 lt!596423 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun e!767581 () ListLongMap!22141)

(assert (=> d!144585 (= lt!596423 e!767581)))

(declare-fun c!126505 () Bool)

(assert (=> d!144585 (= c!126505 (bvsge (bvadd #b00000000000000000000000000000001 from!1960) (size!44981 _keys!1571)))))

(assert (=> d!144585 (validMask!0 mask!1977)))

(assert (=> d!144585 (= (getCurrentListMapNoExtraKeys!6555 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 (bvadd #b00000000000000000000000000000001 from!1960) defaultEntry!1306) lt!596423)))

(declare-fun b!1349308 () Bool)

(assert (=> b!1349308 (and (bvsge (bvadd #b00000000000000000000000000000001 from!1960) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!1960) (size!44981 _keys!1571)))))

(assert (=> b!1349308 (and (bvsge (bvadd #b00000000000000000000000000000001 from!1960) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!1960) (size!44982 _values!1303)))))

(declare-fun apply!1075 (ListLongMap!22141 (_ BitVec 64)) V!55219)

(assert (=> b!1349308 (= e!767580 (= (apply!1075 lt!596423 (select (arr!44430 _keys!1571) (bvadd #b00000000000000000000000000000001 from!1960))) (get!22493 (select (arr!44431 _values!1303) (bvadd #b00000000000000000000000000000001 from!1960)) (dynLambda!3865 defaultEntry!1306 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1349309 () Bool)

(declare-fun res!895264 () Bool)

(assert (=> b!1349309 (=> (not res!895264) (not e!767577))))

(assert (=> b!1349309 (= res!895264 (not (contains!9203 lt!596423 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1349310 () Bool)

(assert (=> b!1349310 (= e!767582 e!767579)))

(declare-fun c!126506 () Bool)

(assert (=> b!1349310 (= c!126506 (bvslt (bvadd #b00000000000000000000000000000001 from!1960) (size!44981 _keys!1571)))))

(declare-fun b!1349311 () Bool)

(assert (=> b!1349311 (= e!767581 (ListLongMap!22142 Nil!31637))))

(declare-fun b!1349312 () Bool)

(assert (=> b!1349312 (= e!767578 (validKeyInArray!0 (select (arr!44430 _keys!1571) (bvadd #b00000000000000000000000000000001 from!1960))))))

(assert (=> b!1349312 (bvsge (bvadd #b00000000000000000000000000000001 from!1960) #b00000000000000000000000000000000)))

(declare-fun b!1349313 () Bool)

(declare-fun isEmpty!1101 (ListLongMap!22141) Bool)

(assert (=> b!1349313 (= e!767579 (isEmpty!1101 lt!596423))))

(declare-fun bm!65159 () Bool)

(assert (=> bm!65159 (= call!65162 (getCurrentListMapNoExtraKeys!6555 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 (bvadd #b00000000000000000000000000000001 from!1960 #b00000000000000000000000000000001) defaultEntry!1306))))

(declare-fun b!1349314 () Bool)

(assert (=> b!1349314 (= e!767581 e!767583)))

(declare-fun c!126508 () Bool)

(assert (=> b!1349314 (= c!126508 (validKeyInArray!0 (select (arr!44430 _keys!1571) (bvadd #b00000000000000000000000000000001 from!1960))))))

(assert (= (and d!144585 c!126505) b!1349311))

(assert (= (and d!144585 (not c!126505)) b!1349314))

(assert (= (and b!1349314 c!126508) b!1349303))

(assert (= (and b!1349314 (not c!126508)) b!1349307))

(assert (= (or b!1349303 b!1349307) bm!65159))

(assert (= (and d!144585 res!895265) b!1349309))

(assert (= (and b!1349309 res!895264) b!1349304))

(assert (= (and b!1349304 res!895263) b!1349312))

(assert (= (and b!1349304 c!126507) b!1349306))

(assert (= (and b!1349304 (not c!126507)) b!1349310))

(assert (= (and b!1349306 res!895266) b!1349308))

(assert (= (and b!1349310 c!126506) b!1349305))

(assert (= (and b!1349310 (not c!126506)) b!1349313))

(declare-fun b_lambda!24713 () Bool)

(assert (=> (not b_lambda!24713) (not b!1349303)))

(assert (=> b!1349303 t!46299))

(declare-fun b_and!50991 () Bool)

(assert (= b_and!50985 (and (=> t!46299 result!26019) b_and!50991)))

(declare-fun b_lambda!24715 () Bool)

(assert (=> (not b_lambda!24715) (not b!1349308)))

(assert (=> b!1349308 t!46299))

(declare-fun b_and!50993 () Bool)

(assert (= b_and!50991 (and (=> t!46299 result!26019) b_and!50993)))

(declare-fun m!1236441 () Bool)

(assert (=> b!1349305 m!1236441))

(assert (=> b!1349303 m!1236365))

(declare-fun m!1236443 () Bool)

(assert (=> b!1349303 m!1236443))

(assert (=> b!1349303 m!1236365))

(declare-fun m!1236445 () Bool)

(assert (=> b!1349303 m!1236445))

(declare-fun m!1236447 () Bool)

(assert (=> b!1349303 m!1236447))

(declare-fun m!1236449 () Bool)

(assert (=> b!1349303 m!1236449))

(declare-fun m!1236451 () Bool)

(assert (=> b!1349303 m!1236451))

(assert (=> b!1349303 m!1236443))

(declare-fun m!1236453 () Bool)

(assert (=> b!1349303 m!1236453))

(assert (=> b!1349303 m!1236447))

(declare-fun m!1236455 () Bool)

(assert (=> b!1349303 m!1236455))

(assert (=> bm!65159 m!1236441))

(declare-fun m!1236457 () Bool)

(assert (=> b!1349309 m!1236457))

(assert (=> b!1349314 m!1236451))

(assert (=> b!1349314 m!1236451))

(declare-fun m!1236459 () Bool)

(assert (=> b!1349314 m!1236459))

(assert (=> b!1349306 m!1236451))

(assert (=> b!1349306 m!1236451))

(declare-fun m!1236461 () Bool)

(assert (=> b!1349306 m!1236461))

(declare-fun m!1236463 () Bool)

(assert (=> b!1349313 m!1236463))

(declare-fun m!1236465 () Bool)

(assert (=> d!144585 m!1236465))

(assert (=> d!144585 m!1236345))

(assert (=> b!1349312 m!1236451))

(assert (=> b!1349312 m!1236451))

(assert (=> b!1349312 m!1236459))

(assert (=> b!1349308 m!1236365))

(assert (=> b!1349308 m!1236443))

(assert (=> b!1349308 m!1236365))

(assert (=> b!1349308 m!1236445))

(assert (=> b!1349308 m!1236451))

(assert (=> b!1349308 m!1236443))

(assert (=> b!1349308 m!1236451))

(declare-fun m!1236467 () Bool)

(assert (=> b!1349308 m!1236467))

(assert (=> b!1349215 d!144585))

(declare-fun d!144587 () Bool)

(declare-fun c!126511 () Bool)

(assert (=> d!144587 (= c!126511 ((_ is ValueCellFull!17895) (select (arr!44431 _values!1303) from!1960)))))

(declare-fun e!767586 () V!55219)

(assert (=> d!144587 (= (get!22493 (select (arr!44431 _values!1303) from!1960) (dynLambda!3865 defaultEntry!1306 #b0000000000000000000000000000000000000000000000000000000000000000)) e!767586)))

(declare-fun b!1349319 () Bool)

(declare-fun get!22495 (ValueCell!17895 V!55219) V!55219)

(assert (=> b!1349319 (= e!767586 (get!22495 (select (arr!44431 _values!1303) from!1960) (dynLambda!3865 defaultEntry!1306 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1349320 () Bool)

(declare-fun get!22496 (ValueCell!17895 V!55219) V!55219)

(assert (=> b!1349320 (= e!767586 (get!22496 (select (arr!44431 _values!1303) from!1960) (dynLambda!3865 defaultEntry!1306 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!144587 c!126511) b!1349319))

(assert (= (and d!144587 (not c!126511)) b!1349320))

(assert (=> b!1349319 m!1236363))

(assert (=> b!1349319 m!1236365))

(declare-fun m!1236469 () Bool)

(assert (=> b!1349319 m!1236469))

(assert (=> b!1349320 m!1236363))

(assert (=> b!1349320 m!1236365))

(declare-fun m!1236471 () Bool)

(assert (=> b!1349320 m!1236471))

(assert (=> b!1349215 d!144587))

(declare-fun bm!65162 () Bool)

(declare-fun call!65165 () Bool)

(assert (=> bm!65162 (= call!65165 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) _keys!1571 mask!1977))))

(declare-fun b!1349329 () Bool)

(declare-fun e!767594 () Bool)

(declare-fun e!767593 () Bool)

(assert (=> b!1349329 (= e!767594 e!767593)))

(declare-fun lt!596438 () (_ BitVec 64))

(assert (=> b!1349329 (= lt!596438 (select (arr!44430 _keys!1571) #b00000000000000000000000000000000))))

(declare-fun lt!596437 () Unit!44143)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!91963 (_ BitVec 64) (_ BitVec 32)) Unit!44143)

(assert (=> b!1349329 (= lt!596437 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1571 lt!596438 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!91963 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1349329 (arrayContainsKey!0 _keys!1571 lt!596438 #b00000000000000000000000000000000)))

(declare-fun lt!596436 () Unit!44143)

(assert (=> b!1349329 (= lt!596436 lt!596437)))

(declare-fun res!895272 () Bool)

(declare-datatypes ((SeekEntryResult!10056 0))(
  ( (MissingZero!10056 (index!42594 (_ BitVec 32))) (Found!10056 (index!42595 (_ BitVec 32))) (Intermediate!10056 (undefined!10868 Bool) (index!42596 (_ BitVec 32)) (x!120752 (_ BitVec 32))) (Undefined!10056) (MissingVacant!10056 (index!42597 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!91963 (_ BitVec 32)) SeekEntryResult!10056)

(assert (=> b!1349329 (= res!895272 (= (seekEntryOrOpen!0 (select (arr!44430 _keys!1571) #b00000000000000000000000000000000) _keys!1571 mask!1977) (Found!10056 #b00000000000000000000000000000000)))))

(assert (=> b!1349329 (=> (not res!895272) (not e!767593))))

(declare-fun d!144589 () Bool)

(declare-fun res!895271 () Bool)

(declare-fun e!767595 () Bool)

(assert (=> d!144589 (=> res!895271 e!767595)))

(assert (=> d!144589 (= res!895271 (bvsge #b00000000000000000000000000000000 (size!44981 _keys!1571)))))

(assert (=> d!144589 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1571 mask!1977) e!767595)))

(declare-fun b!1349330 () Bool)

(assert (=> b!1349330 (= e!767595 e!767594)))

(declare-fun c!126514 () Bool)

(assert (=> b!1349330 (= c!126514 (validKeyInArray!0 (select (arr!44430 _keys!1571) #b00000000000000000000000000000000)))))

(declare-fun b!1349331 () Bool)

(assert (=> b!1349331 (= e!767594 call!65165)))

(declare-fun b!1349332 () Bool)

(assert (=> b!1349332 (= e!767593 call!65165)))

(assert (= (and d!144589 (not res!895271)) b!1349330))

(assert (= (and b!1349330 c!126514) b!1349329))

(assert (= (and b!1349330 (not c!126514)) b!1349331))

(assert (= (and b!1349329 res!895272) b!1349332))

(assert (= (or b!1349332 b!1349331) bm!65162))

(declare-fun m!1236473 () Bool)

(assert (=> bm!65162 m!1236473))

(declare-fun m!1236475 () Bool)

(assert (=> b!1349329 m!1236475))

(declare-fun m!1236477 () Bool)

(assert (=> b!1349329 m!1236477))

(declare-fun m!1236479 () Bool)

(assert (=> b!1349329 m!1236479))

(assert (=> b!1349329 m!1236475))

(declare-fun m!1236481 () Bool)

(assert (=> b!1349329 m!1236481))

(assert (=> b!1349330 m!1236475))

(assert (=> b!1349330 m!1236475))

(declare-fun m!1236483 () Bool)

(assert (=> b!1349330 m!1236483))

(assert (=> b!1349206 d!144589))

(declare-fun d!144591 () Bool)

(declare-fun e!767596 () Bool)

(assert (=> d!144591 e!767596))

(declare-fun res!895273 () Bool)

(assert (=> d!144591 (=> res!895273 e!767596)))

(declare-fun lt!596441 () Bool)

(assert (=> d!144591 (= res!895273 (not lt!596441))))

(declare-fun lt!596439 () Bool)

(assert (=> d!144591 (= lt!596441 lt!596439)))

(declare-fun lt!596440 () Unit!44143)

(declare-fun e!767597 () Unit!44143)

(assert (=> d!144591 (= lt!596440 e!767597)))

(declare-fun c!126515 () Bool)

(assert (=> d!144591 (= c!126515 lt!596439)))

(assert (=> d!144591 (= lt!596439 (containsKey!743 (toList!11086 (getCurrentListMap!5976 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 from!1960 defaultEntry!1306)) k0!1142))))

(assert (=> d!144591 (= (contains!9203 (getCurrentListMap!5976 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 from!1960 defaultEntry!1306) k0!1142) lt!596441)))

(declare-fun b!1349333 () Bool)

(declare-fun lt!596442 () Unit!44143)

(assert (=> b!1349333 (= e!767597 lt!596442)))

(assert (=> b!1349333 (= lt!596442 (lemmaContainsKeyImpliesGetValueByKeyDefined!488 (toList!11086 (getCurrentListMap!5976 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 from!1960 defaultEntry!1306)) k0!1142))))

(assert (=> b!1349333 (isDefined!528 (getValueByKey!725 (toList!11086 (getCurrentListMap!5976 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 from!1960 defaultEntry!1306)) k0!1142))))

(declare-fun b!1349334 () Bool)

(declare-fun Unit!44146 () Unit!44143)

(assert (=> b!1349334 (= e!767597 Unit!44146)))

(declare-fun b!1349335 () Bool)

(assert (=> b!1349335 (= e!767596 (isDefined!528 (getValueByKey!725 (toList!11086 (getCurrentListMap!5976 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 from!1960 defaultEntry!1306)) k0!1142)))))

(assert (= (and d!144591 c!126515) b!1349333))

(assert (= (and d!144591 (not c!126515)) b!1349334))

(assert (= (and d!144591 (not res!895273)) b!1349335))

(declare-fun m!1236485 () Bool)

(assert (=> d!144591 m!1236485))

(declare-fun m!1236487 () Bool)

(assert (=> b!1349333 m!1236487))

(declare-fun m!1236489 () Bool)

(assert (=> b!1349333 m!1236489))

(assert (=> b!1349333 m!1236489))

(declare-fun m!1236491 () Bool)

(assert (=> b!1349333 m!1236491))

(assert (=> b!1349335 m!1236489))

(assert (=> b!1349335 m!1236489))

(assert (=> b!1349335 m!1236491))

(assert (=> b!1349205 d!144591))

(declare-fun b!1349378 () Bool)

(declare-fun e!767633 () Bool)

(declare-fun call!65185 () Bool)

(assert (=> b!1349378 (= e!767633 (not call!65185))))

(declare-fun bm!65177 () Bool)

(declare-fun call!65183 () ListLongMap!22141)

(declare-fun call!65186 () ListLongMap!22141)

(assert (=> bm!65177 (= call!65183 call!65186)))

(declare-fun bm!65178 () Bool)

(declare-fun call!65182 () Bool)

(declare-fun lt!596489 () ListLongMap!22141)

(assert (=> bm!65178 (= call!65182 (contains!9203 lt!596489 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1349379 () Bool)

(declare-fun e!767630 () Unit!44143)

(declare-fun lt!596502 () Unit!44143)

(assert (=> b!1349379 (= e!767630 lt!596502)))

(declare-fun lt!596508 () ListLongMap!22141)

(assert (=> b!1349379 (= lt!596508 (getCurrentListMapNoExtraKeys!6555 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 from!1960 defaultEntry!1306))))

(declare-fun lt!596499 () (_ BitVec 64))

(assert (=> b!1349379 (= lt!596499 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!596501 () (_ BitVec 64))

(assert (=> b!1349379 (= lt!596501 (select (arr!44430 _keys!1571) from!1960))))

(declare-fun lt!596500 () Unit!44143)

(declare-fun addStillContains!1220 (ListLongMap!22141 (_ BitVec 64) V!55219 (_ BitVec 64)) Unit!44143)

(assert (=> b!1349379 (= lt!596500 (addStillContains!1220 lt!596508 lt!596499 zeroValue!1245 lt!596501))))

(assert (=> b!1349379 (contains!9203 (+!4828 lt!596508 (tuple2!24473 lt!596499 zeroValue!1245)) lt!596501)))

(declare-fun lt!596505 () Unit!44143)

(assert (=> b!1349379 (= lt!596505 lt!596500)))

(declare-fun lt!596490 () ListLongMap!22141)

(assert (=> b!1349379 (= lt!596490 (getCurrentListMapNoExtraKeys!6555 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 from!1960 defaultEntry!1306))))

(declare-fun lt!596487 () (_ BitVec 64))

(assert (=> b!1349379 (= lt!596487 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!596498 () (_ BitVec 64))

(assert (=> b!1349379 (= lt!596498 (select (arr!44430 _keys!1571) from!1960))))

(declare-fun lt!596488 () Unit!44143)

(declare-fun addApplyDifferent!578 (ListLongMap!22141 (_ BitVec 64) V!55219 (_ BitVec 64)) Unit!44143)

(assert (=> b!1349379 (= lt!596488 (addApplyDifferent!578 lt!596490 lt!596487 minValue!1245 lt!596498))))

(assert (=> b!1349379 (= (apply!1075 (+!4828 lt!596490 (tuple2!24473 lt!596487 minValue!1245)) lt!596498) (apply!1075 lt!596490 lt!596498))))

(declare-fun lt!596495 () Unit!44143)

(assert (=> b!1349379 (= lt!596495 lt!596488)))

(declare-fun lt!596507 () ListLongMap!22141)

(assert (=> b!1349379 (= lt!596507 (getCurrentListMapNoExtraKeys!6555 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 from!1960 defaultEntry!1306))))

(declare-fun lt!596496 () (_ BitVec 64))

(assert (=> b!1349379 (= lt!596496 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!596493 () (_ BitVec 64))

(assert (=> b!1349379 (= lt!596493 (select (arr!44430 _keys!1571) from!1960))))

(declare-fun lt!596494 () Unit!44143)

(assert (=> b!1349379 (= lt!596494 (addApplyDifferent!578 lt!596507 lt!596496 zeroValue!1245 lt!596493))))

(assert (=> b!1349379 (= (apply!1075 (+!4828 lt!596507 (tuple2!24473 lt!596496 zeroValue!1245)) lt!596493) (apply!1075 lt!596507 lt!596493))))

(declare-fun lt!596504 () Unit!44143)

(assert (=> b!1349379 (= lt!596504 lt!596494)))

(declare-fun lt!596503 () ListLongMap!22141)

(assert (=> b!1349379 (= lt!596503 (getCurrentListMapNoExtraKeys!6555 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 from!1960 defaultEntry!1306))))

(declare-fun lt!596491 () (_ BitVec 64))

(assert (=> b!1349379 (= lt!596491 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!596506 () (_ BitVec 64))

(assert (=> b!1349379 (= lt!596506 (select (arr!44430 _keys!1571) from!1960))))

(assert (=> b!1349379 (= lt!596502 (addApplyDifferent!578 lt!596503 lt!596491 minValue!1245 lt!596506))))

(assert (=> b!1349379 (= (apply!1075 (+!4828 lt!596503 (tuple2!24473 lt!596491 minValue!1245)) lt!596506) (apply!1075 lt!596503 lt!596506))))

(declare-fun d!144593 () Bool)

(declare-fun e!767634 () Bool)

(assert (=> d!144593 e!767634))

(declare-fun res!895296 () Bool)

(assert (=> d!144593 (=> (not res!895296) (not e!767634))))

(assert (=> d!144593 (= res!895296 (or (bvsge from!1960 (size!44981 _keys!1571)) (and (bvsge from!1960 #b00000000000000000000000000000000) (bvslt from!1960 (size!44981 _keys!1571)))))))

(declare-fun lt!596497 () ListLongMap!22141)

(assert (=> d!144593 (= lt!596489 lt!596497)))

(declare-fun lt!596492 () Unit!44143)

(assert (=> d!144593 (= lt!596492 e!767630)))

(declare-fun c!126531 () Bool)

(declare-fun e!767636 () Bool)

(assert (=> d!144593 (= c!126531 e!767636)))

(declare-fun res!895295 () Bool)

(assert (=> d!144593 (=> (not res!895295) (not e!767636))))

(assert (=> d!144593 (= res!895295 (bvslt from!1960 (size!44981 _keys!1571)))))

(declare-fun e!767635 () ListLongMap!22141)

(assert (=> d!144593 (= lt!596497 e!767635)))

(declare-fun c!126528 () Bool)

(assert (=> d!144593 (= c!126528 (and (not (= (bvand extraKeys!1224 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1224 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!144593 (validMask!0 mask!1977)))

(assert (=> d!144593 (= (getCurrentListMap!5976 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 from!1960 defaultEntry!1306) lt!596489)))

(declare-fun bm!65179 () Bool)

(declare-fun call!65184 () ListLongMap!22141)

(declare-fun call!65180 () ListLongMap!22141)

(assert (=> bm!65179 (= call!65184 call!65180)))

(declare-fun b!1349380 () Bool)

(declare-fun e!767627 () Bool)

(declare-fun e!767626 () Bool)

(assert (=> b!1349380 (= e!767627 e!767626)))

(declare-fun res!895293 () Bool)

(assert (=> b!1349380 (=> (not res!895293) (not e!767626))))

(assert (=> b!1349380 (= res!895293 (contains!9203 lt!596489 (select (arr!44430 _keys!1571) from!1960)))))

(assert (=> b!1349380 (and (bvsge from!1960 #b00000000000000000000000000000000) (bvslt from!1960 (size!44981 _keys!1571)))))

(declare-fun call!65181 () ListLongMap!22141)

(declare-fun bm!65180 () Bool)

(assert (=> bm!65180 (= call!65181 (getCurrentListMapNoExtraKeys!6555 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 from!1960 defaultEntry!1306))))

(declare-fun b!1349381 () Bool)

(declare-fun e!767629 () ListLongMap!22141)

(assert (=> b!1349381 (= e!767629 call!65184)))

(declare-fun b!1349382 () Bool)

(declare-fun e!767632 () Bool)

(assert (=> b!1349382 (= e!767634 e!767632)))

(declare-fun c!126530 () Bool)

(assert (=> b!1349382 (= c!126530 (not (= (bvand extraKeys!1224 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1349383 () Bool)

(declare-fun e!767628 () Bool)

(assert (=> b!1349383 (= e!767632 e!767628)))

(declare-fun res!895300 () Bool)

(assert (=> b!1349383 (= res!895300 call!65182)))

(assert (=> b!1349383 (=> (not res!895300) (not e!767628))))

(declare-fun b!1349384 () Bool)

(assert (=> b!1349384 (= e!767636 (validKeyInArray!0 (select (arr!44430 _keys!1571) from!1960)))))

(declare-fun b!1349385 () Bool)

(assert (=> b!1349385 (= e!767635 (+!4828 call!65180 (tuple2!24473 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1245)))))

(declare-fun b!1349386 () Bool)

(assert (=> b!1349386 (= e!767628 (= (apply!1075 lt!596489 #b1000000000000000000000000000000000000000000000000000000000000000) minValue!1245))))

(declare-fun b!1349387 () Bool)

(assert (=> b!1349387 (= e!767629 call!65183)))

(declare-fun b!1349388 () Bool)

(declare-fun e!767624 () ListLongMap!22141)

(assert (=> b!1349388 (= e!767635 e!767624)))

(declare-fun c!126532 () Bool)

(assert (=> b!1349388 (= c!126532 (and (not (= (bvand extraKeys!1224 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeys!1224 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1349389 () Bool)

(declare-fun res!895299 () Bool)

(assert (=> b!1349389 (=> (not res!895299) (not e!767634))))

(assert (=> b!1349389 (= res!895299 e!767627)))

(declare-fun res!895298 () Bool)

(assert (=> b!1349389 (=> res!895298 e!767627)))

(declare-fun e!767625 () Bool)

(assert (=> b!1349389 (= res!895298 (not e!767625))))

(declare-fun res!895297 () Bool)

(assert (=> b!1349389 (=> (not res!895297) (not e!767625))))

(assert (=> b!1349389 (= res!895297 (bvslt from!1960 (size!44981 _keys!1571)))))

(declare-fun b!1349390 () Bool)

(declare-fun c!126529 () Bool)

(assert (=> b!1349390 (= c!126529 (and (not (= (bvand extraKeys!1224 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeys!1224 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!1349390 (= e!767624 e!767629)))

(declare-fun b!1349391 () Bool)

(assert (=> b!1349391 (= e!767624 call!65184)))

(declare-fun b!1349392 () Bool)

(assert (=> b!1349392 (= e!767625 (validKeyInArray!0 (select (arr!44430 _keys!1571) from!1960)))))

(declare-fun b!1349393 () Bool)

(assert (=> b!1349393 (= e!767626 (= (apply!1075 lt!596489 (select (arr!44430 _keys!1571) from!1960)) (get!22493 (select (arr!44431 _values!1303) from!1960) (dynLambda!3865 defaultEntry!1306 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1349393 (and (bvsge from!1960 #b00000000000000000000000000000000) (bvslt from!1960 (size!44982 _values!1303)))))

(assert (=> b!1349393 (and (bvsge from!1960 #b00000000000000000000000000000000) (bvslt from!1960 (size!44981 _keys!1571)))))

(declare-fun b!1349394 () Bool)

(declare-fun Unit!44147 () Unit!44143)

(assert (=> b!1349394 (= e!767630 Unit!44147)))

(declare-fun bm!65181 () Bool)

(assert (=> bm!65181 (= call!65185 (contains!9203 lt!596489 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun bm!65182 () Bool)

(assert (=> bm!65182 (= call!65186 call!65181)))

(declare-fun b!1349395 () Bool)

(declare-fun e!767631 () Bool)

(assert (=> b!1349395 (= e!767633 e!767631)))

(declare-fun res!895294 () Bool)

(assert (=> b!1349395 (= res!895294 call!65185)))

(assert (=> b!1349395 (=> (not res!895294) (not e!767631))))

(declare-fun b!1349396 () Bool)

(assert (=> b!1349396 (= e!767631 (= (apply!1075 lt!596489 #b0000000000000000000000000000000000000000000000000000000000000000) zeroValue!1245))))

(declare-fun b!1349397 () Bool)

(declare-fun res!895292 () Bool)

(assert (=> b!1349397 (=> (not res!895292) (not e!767634))))

(assert (=> b!1349397 (= res!895292 e!767633)))

(declare-fun c!126533 () Bool)

(assert (=> b!1349397 (= c!126533 (not (= (bvand extraKeys!1224 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun bm!65183 () Bool)

(assert (=> bm!65183 (= call!65180 (+!4828 (ite c!126528 call!65181 (ite c!126532 call!65186 call!65183)) (ite (or c!126528 c!126532) (tuple2!24473 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1245) (tuple2!24473 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1245))))))

(declare-fun b!1349398 () Bool)

(assert (=> b!1349398 (= e!767632 (not call!65182))))

(assert (= (and d!144593 c!126528) b!1349385))

(assert (= (and d!144593 (not c!126528)) b!1349388))

(assert (= (and b!1349388 c!126532) b!1349391))

(assert (= (and b!1349388 (not c!126532)) b!1349390))

(assert (= (and b!1349390 c!126529) b!1349381))

(assert (= (and b!1349390 (not c!126529)) b!1349387))

(assert (= (or b!1349381 b!1349387) bm!65177))

(assert (= (or b!1349391 bm!65177) bm!65182))

(assert (= (or b!1349391 b!1349381) bm!65179))

(assert (= (or b!1349385 bm!65182) bm!65180))

(assert (= (or b!1349385 bm!65179) bm!65183))

(assert (= (and d!144593 res!895295) b!1349384))

(assert (= (and d!144593 c!126531) b!1349379))

(assert (= (and d!144593 (not c!126531)) b!1349394))

(assert (= (and d!144593 res!895296) b!1349389))

(assert (= (and b!1349389 res!895297) b!1349392))

(assert (= (and b!1349389 (not res!895298)) b!1349380))

(assert (= (and b!1349380 res!895293) b!1349393))

(assert (= (and b!1349389 res!895299) b!1349397))

(assert (= (and b!1349397 c!126533) b!1349395))

(assert (= (and b!1349397 (not c!126533)) b!1349378))

(assert (= (and b!1349395 res!895294) b!1349396))

(assert (= (or b!1349395 b!1349378) bm!65181))

(assert (= (and b!1349397 res!895292) b!1349382))

(assert (= (and b!1349382 c!126530) b!1349383))

(assert (= (and b!1349382 (not c!126530)) b!1349398))

(assert (= (and b!1349383 res!895300) b!1349386))

(assert (= (or b!1349383 b!1349398) bm!65178))

(declare-fun b_lambda!24717 () Bool)

(assert (=> (not b_lambda!24717) (not b!1349393)))

(assert (=> b!1349393 t!46299))

(declare-fun b_and!50995 () Bool)

(assert (= b_and!50993 (and (=> t!46299 result!26019) b_and!50995)))

(assert (=> b!1349393 m!1236351))

(assert (=> b!1349393 m!1236351))

(declare-fun m!1236493 () Bool)

(assert (=> b!1349393 m!1236493))

(assert (=> b!1349393 m!1236363))

(assert (=> b!1349393 m!1236365))

(assert (=> b!1349393 m!1236367))

(assert (=> b!1349393 m!1236363))

(assert (=> b!1349393 m!1236365))

(declare-fun m!1236495 () Bool)

(assert (=> b!1349396 m!1236495))

(declare-fun m!1236497 () Bool)

(assert (=> b!1349379 m!1236497))

(declare-fun m!1236499 () Bool)

(assert (=> b!1349379 m!1236499))

(assert (=> b!1349379 m!1236499))

(declare-fun m!1236501 () Bool)

(assert (=> b!1349379 m!1236501))

(declare-fun m!1236503 () Bool)

(assert (=> b!1349379 m!1236503))

(declare-fun m!1236505 () Bool)

(assert (=> b!1349379 m!1236505))

(declare-fun m!1236507 () Bool)

(assert (=> b!1349379 m!1236507))

(declare-fun m!1236509 () Bool)

(assert (=> b!1349379 m!1236509))

(declare-fun m!1236511 () Bool)

(assert (=> b!1349379 m!1236511))

(declare-fun m!1236513 () Bool)

(assert (=> b!1349379 m!1236513))

(declare-fun m!1236515 () Bool)

(assert (=> b!1349379 m!1236515))

(assert (=> b!1349379 m!1236351))

(assert (=> b!1349379 m!1236513))

(declare-fun m!1236517 () Bool)

(assert (=> b!1349379 m!1236517))

(declare-fun m!1236519 () Bool)

(assert (=> b!1349379 m!1236519))

(declare-fun m!1236521 () Bool)

(assert (=> b!1349379 m!1236521))

(declare-fun m!1236523 () Bool)

(assert (=> b!1349379 m!1236523))

(assert (=> b!1349379 m!1236505))

(assert (=> b!1349379 m!1236515))

(declare-fun m!1236525 () Bool)

(assert (=> b!1349379 m!1236525))

(declare-fun m!1236527 () Bool)

(assert (=> b!1349379 m!1236527))

(declare-fun m!1236529 () Bool)

(assert (=> bm!65178 m!1236529))

(declare-fun m!1236531 () Bool)

(assert (=> bm!65183 m!1236531))

(assert (=> b!1349392 m!1236351))

(assert (=> b!1349392 m!1236351))

(assert (=> b!1349392 m!1236359))

(assert (=> bm!65180 m!1236519))

(declare-fun m!1236533 () Bool)

(assert (=> bm!65181 m!1236533))

(declare-fun m!1236535 () Bool)

(assert (=> b!1349386 m!1236535))

(assert (=> b!1349380 m!1236351))

(assert (=> b!1349380 m!1236351))

(declare-fun m!1236537 () Bool)

(assert (=> b!1349380 m!1236537))

(assert (=> d!144593 m!1236345))

(declare-fun m!1236539 () Bool)

(assert (=> b!1349385 m!1236539))

(assert (=> b!1349384 m!1236351))

(assert (=> b!1349384 m!1236351))

(assert (=> b!1349384 m!1236359))

(assert (=> b!1349205 d!144593))

(declare-fun d!144595 () Bool)

(declare-fun e!767637 () Bool)

(assert (=> d!144595 e!767637))

(declare-fun res!895301 () Bool)

(assert (=> d!144595 (=> res!895301 e!767637)))

(declare-fun lt!596511 () Bool)

(assert (=> d!144595 (= res!895301 (not lt!596511))))

(declare-fun lt!596509 () Bool)

(assert (=> d!144595 (= lt!596511 lt!596509)))

(declare-fun lt!596510 () Unit!44143)

(declare-fun e!767638 () Unit!44143)

(assert (=> d!144595 (= lt!596510 e!767638)))

(declare-fun c!126534 () Bool)

(assert (=> d!144595 (= c!126534 lt!596509)))

(assert (=> d!144595 (= lt!596509 (containsKey!743 (toList!11086 (getCurrentListMap!5976 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 (bvadd #b00000000000000000000000000000001 from!1960) defaultEntry!1306)) k0!1142))))

(assert (=> d!144595 (= (contains!9203 (getCurrentListMap!5976 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 (bvadd #b00000000000000000000000000000001 from!1960) defaultEntry!1306) k0!1142) lt!596511)))

(declare-fun b!1349399 () Bool)

(declare-fun lt!596512 () Unit!44143)

(assert (=> b!1349399 (= e!767638 lt!596512)))

(assert (=> b!1349399 (= lt!596512 (lemmaContainsKeyImpliesGetValueByKeyDefined!488 (toList!11086 (getCurrentListMap!5976 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 (bvadd #b00000000000000000000000000000001 from!1960) defaultEntry!1306)) k0!1142))))

(assert (=> b!1349399 (isDefined!528 (getValueByKey!725 (toList!11086 (getCurrentListMap!5976 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 (bvadd #b00000000000000000000000000000001 from!1960) defaultEntry!1306)) k0!1142))))

(declare-fun b!1349400 () Bool)

(declare-fun Unit!44148 () Unit!44143)

(assert (=> b!1349400 (= e!767638 Unit!44148)))

(declare-fun b!1349401 () Bool)

(assert (=> b!1349401 (= e!767637 (isDefined!528 (getValueByKey!725 (toList!11086 (getCurrentListMap!5976 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 (bvadd #b00000000000000000000000000000001 from!1960) defaultEntry!1306)) k0!1142)))))

(assert (= (and d!144595 c!126534) b!1349399))

(assert (= (and d!144595 (not c!126534)) b!1349400))

(assert (= (and d!144595 (not res!895301)) b!1349401))

(declare-fun m!1236541 () Bool)

(assert (=> d!144595 m!1236541))

(declare-fun m!1236543 () Bool)

(assert (=> b!1349399 m!1236543))

(declare-fun m!1236545 () Bool)

(assert (=> b!1349399 m!1236545))

(assert (=> b!1349399 m!1236545))

(declare-fun m!1236547 () Bool)

(assert (=> b!1349399 m!1236547))

(assert (=> b!1349401 m!1236545))

(assert (=> b!1349401 m!1236545))

(assert (=> b!1349401 m!1236547))

(assert (=> b!1349213 d!144595))

(declare-fun b!1349402 () Bool)

(declare-fun e!767648 () Bool)

(declare-fun call!65192 () Bool)

(assert (=> b!1349402 (= e!767648 (not call!65192))))

(declare-fun bm!65184 () Bool)

(declare-fun call!65190 () ListLongMap!22141)

(declare-fun call!65193 () ListLongMap!22141)

(assert (=> bm!65184 (= call!65190 call!65193)))

(declare-fun bm!65185 () Bool)

(declare-fun call!65189 () Bool)

(declare-fun lt!596515 () ListLongMap!22141)

(assert (=> bm!65185 (= call!65189 (contains!9203 lt!596515 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1349403 () Bool)

(declare-fun e!767645 () Unit!44143)

(declare-fun lt!596528 () Unit!44143)

(assert (=> b!1349403 (= e!767645 lt!596528)))

(declare-fun lt!596534 () ListLongMap!22141)

(assert (=> b!1349403 (= lt!596534 (getCurrentListMapNoExtraKeys!6555 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 (bvadd #b00000000000000000000000000000001 from!1960) defaultEntry!1306))))

(declare-fun lt!596525 () (_ BitVec 64))

(assert (=> b!1349403 (= lt!596525 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!596527 () (_ BitVec 64))

(assert (=> b!1349403 (= lt!596527 (select (arr!44430 _keys!1571) (bvadd #b00000000000000000000000000000001 from!1960)))))

(declare-fun lt!596526 () Unit!44143)

(assert (=> b!1349403 (= lt!596526 (addStillContains!1220 lt!596534 lt!596525 zeroValue!1245 lt!596527))))

(assert (=> b!1349403 (contains!9203 (+!4828 lt!596534 (tuple2!24473 lt!596525 zeroValue!1245)) lt!596527)))

(declare-fun lt!596531 () Unit!44143)

(assert (=> b!1349403 (= lt!596531 lt!596526)))

(declare-fun lt!596516 () ListLongMap!22141)

(assert (=> b!1349403 (= lt!596516 (getCurrentListMapNoExtraKeys!6555 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 (bvadd #b00000000000000000000000000000001 from!1960) defaultEntry!1306))))

(declare-fun lt!596513 () (_ BitVec 64))

(assert (=> b!1349403 (= lt!596513 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!596524 () (_ BitVec 64))

(assert (=> b!1349403 (= lt!596524 (select (arr!44430 _keys!1571) (bvadd #b00000000000000000000000000000001 from!1960)))))

(declare-fun lt!596514 () Unit!44143)

(assert (=> b!1349403 (= lt!596514 (addApplyDifferent!578 lt!596516 lt!596513 minValue!1245 lt!596524))))

(assert (=> b!1349403 (= (apply!1075 (+!4828 lt!596516 (tuple2!24473 lt!596513 minValue!1245)) lt!596524) (apply!1075 lt!596516 lt!596524))))

(declare-fun lt!596521 () Unit!44143)

(assert (=> b!1349403 (= lt!596521 lt!596514)))

(declare-fun lt!596533 () ListLongMap!22141)

(assert (=> b!1349403 (= lt!596533 (getCurrentListMapNoExtraKeys!6555 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 (bvadd #b00000000000000000000000000000001 from!1960) defaultEntry!1306))))

(declare-fun lt!596522 () (_ BitVec 64))

(assert (=> b!1349403 (= lt!596522 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!596519 () (_ BitVec 64))

(assert (=> b!1349403 (= lt!596519 (select (arr!44430 _keys!1571) (bvadd #b00000000000000000000000000000001 from!1960)))))

(declare-fun lt!596520 () Unit!44143)

(assert (=> b!1349403 (= lt!596520 (addApplyDifferent!578 lt!596533 lt!596522 zeroValue!1245 lt!596519))))

(assert (=> b!1349403 (= (apply!1075 (+!4828 lt!596533 (tuple2!24473 lt!596522 zeroValue!1245)) lt!596519) (apply!1075 lt!596533 lt!596519))))

(declare-fun lt!596530 () Unit!44143)

(assert (=> b!1349403 (= lt!596530 lt!596520)))

(declare-fun lt!596529 () ListLongMap!22141)

(assert (=> b!1349403 (= lt!596529 (getCurrentListMapNoExtraKeys!6555 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 (bvadd #b00000000000000000000000000000001 from!1960) defaultEntry!1306))))

(declare-fun lt!596517 () (_ BitVec 64))

(assert (=> b!1349403 (= lt!596517 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!596532 () (_ BitVec 64))

(assert (=> b!1349403 (= lt!596532 (select (arr!44430 _keys!1571) (bvadd #b00000000000000000000000000000001 from!1960)))))

(assert (=> b!1349403 (= lt!596528 (addApplyDifferent!578 lt!596529 lt!596517 minValue!1245 lt!596532))))

(assert (=> b!1349403 (= (apply!1075 (+!4828 lt!596529 (tuple2!24473 lt!596517 minValue!1245)) lt!596532) (apply!1075 lt!596529 lt!596532))))

(declare-fun d!144597 () Bool)

(declare-fun e!767649 () Bool)

(assert (=> d!144597 e!767649))

(declare-fun res!895306 () Bool)

(assert (=> d!144597 (=> (not res!895306) (not e!767649))))

(assert (=> d!144597 (= res!895306 (or (bvsge (bvadd #b00000000000000000000000000000001 from!1960) (size!44981 _keys!1571)) (and (bvsge (bvadd #b00000000000000000000000000000001 from!1960) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!1960) (size!44981 _keys!1571)))))))

(declare-fun lt!596523 () ListLongMap!22141)

(assert (=> d!144597 (= lt!596515 lt!596523)))

(declare-fun lt!596518 () Unit!44143)

(assert (=> d!144597 (= lt!596518 e!767645)))

(declare-fun c!126538 () Bool)

(declare-fun e!767651 () Bool)

(assert (=> d!144597 (= c!126538 e!767651)))

(declare-fun res!895305 () Bool)

(assert (=> d!144597 (=> (not res!895305) (not e!767651))))

(assert (=> d!144597 (= res!895305 (bvslt (bvadd #b00000000000000000000000000000001 from!1960) (size!44981 _keys!1571)))))

(declare-fun e!767650 () ListLongMap!22141)

(assert (=> d!144597 (= lt!596523 e!767650)))

(declare-fun c!126535 () Bool)

(assert (=> d!144597 (= c!126535 (and (not (= (bvand extraKeys!1224 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1224 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!144597 (validMask!0 mask!1977)))

(assert (=> d!144597 (= (getCurrentListMap!5976 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 (bvadd #b00000000000000000000000000000001 from!1960) defaultEntry!1306) lt!596515)))

(declare-fun bm!65186 () Bool)

(declare-fun call!65191 () ListLongMap!22141)

(declare-fun call!65187 () ListLongMap!22141)

(assert (=> bm!65186 (= call!65191 call!65187)))

(declare-fun b!1349404 () Bool)

(declare-fun e!767642 () Bool)

(declare-fun e!767641 () Bool)

(assert (=> b!1349404 (= e!767642 e!767641)))

(declare-fun res!895303 () Bool)

(assert (=> b!1349404 (=> (not res!895303) (not e!767641))))

(assert (=> b!1349404 (= res!895303 (contains!9203 lt!596515 (select (arr!44430 _keys!1571) (bvadd #b00000000000000000000000000000001 from!1960))))))

(assert (=> b!1349404 (and (bvsge (bvadd #b00000000000000000000000000000001 from!1960) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!1960) (size!44981 _keys!1571)))))

(declare-fun bm!65187 () Bool)

(declare-fun call!65188 () ListLongMap!22141)

(assert (=> bm!65187 (= call!65188 (getCurrentListMapNoExtraKeys!6555 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 (bvadd #b00000000000000000000000000000001 from!1960) defaultEntry!1306))))

(declare-fun b!1349405 () Bool)

(declare-fun e!767644 () ListLongMap!22141)

(assert (=> b!1349405 (= e!767644 call!65191)))

(declare-fun b!1349406 () Bool)

(declare-fun e!767647 () Bool)

(assert (=> b!1349406 (= e!767649 e!767647)))

(declare-fun c!126537 () Bool)

(assert (=> b!1349406 (= c!126537 (not (= (bvand extraKeys!1224 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1349407 () Bool)

(declare-fun e!767643 () Bool)

(assert (=> b!1349407 (= e!767647 e!767643)))

(declare-fun res!895310 () Bool)

(assert (=> b!1349407 (= res!895310 call!65189)))

(assert (=> b!1349407 (=> (not res!895310) (not e!767643))))

(declare-fun b!1349408 () Bool)

(assert (=> b!1349408 (= e!767651 (validKeyInArray!0 (select (arr!44430 _keys!1571) (bvadd #b00000000000000000000000000000001 from!1960))))))

(declare-fun b!1349409 () Bool)

(assert (=> b!1349409 (= e!767650 (+!4828 call!65187 (tuple2!24473 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1245)))))

(declare-fun b!1349410 () Bool)

(assert (=> b!1349410 (= e!767643 (= (apply!1075 lt!596515 #b1000000000000000000000000000000000000000000000000000000000000000) minValue!1245))))

(declare-fun b!1349411 () Bool)

(assert (=> b!1349411 (= e!767644 call!65190)))

(declare-fun b!1349412 () Bool)

(declare-fun e!767639 () ListLongMap!22141)

(assert (=> b!1349412 (= e!767650 e!767639)))

(declare-fun c!126539 () Bool)

(assert (=> b!1349412 (= c!126539 (and (not (= (bvand extraKeys!1224 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeys!1224 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1349413 () Bool)

(declare-fun res!895309 () Bool)

(assert (=> b!1349413 (=> (not res!895309) (not e!767649))))

(assert (=> b!1349413 (= res!895309 e!767642)))

(declare-fun res!895308 () Bool)

(assert (=> b!1349413 (=> res!895308 e!767642)))

(declare-fun e!767640 () Bool)

(assert (=> b!1349413 (= res!895308 (not e!767640))))

(declare-fun res!895307 () Bool)

(assert (=> b!1349413 (=> (not res!895307) (not e!767640))))

(assert (=> b!1349413 (= res!895307 (bvslt (bvadd #b00000000000000000000000000000001 from!1960) (size!44981 _keys!1571)))))

(declare-fun b!1349414 () Bool)

(declare-fun c!126536 () Bool)

(assert (=> b!1349414 (= c!126536 (and (not (= (bvand extraKeys!1224 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeys!1224 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!1349414 (= e!767639 e!767644)))

(declare-fun b!1349415 () Bool)

(assert (=> b!1349415 (= e!767639 call!65191)))

(declare-fun b!1349416 () Bool)

(assert (=> b!1349416 (= e!767640 (validKeyInArray!0 (select (arr!44430 _keys!1571) (bvadd #b00000000000000000000000000000001 from!1960))))))

(declare-fun b!1349417 () Bool)

(assert (=> b!1349417 (= e!767641 (= (apply!1075 lt!596515 (select (arr!44430 _keys!1571) (bvadd #b00000000000000000000000000000001 from!1960))) (get!22493 (select (arr!44431 _values!1303) (bvadd #b00000000000000000000000000000001 from!1960)) (dynLambda!3865 defaultEntry!1306 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1349417 (and (bvsge (bvadd #b00000000000000000000000000000001 from!1960) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!1960) (size!44982 _values!1303)))))

(assert (=> b!1349417 (and (bvsge (bvadd #b00000000000000000000000000000001 from!1960) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!1960) (size!44981 _keys!1571)))))

(declare-fun b!1349418 () Bool)

(declare-fun Unit!44149 () Unit!44143)

(assert (=> b!1349418 (= e!767645 Unit!44149)))

(declare-fun bm!65188 () Bool)

(assert (=> bm!65188 (= call!65192 (contains!9203 lt!596515 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun bm!65189 () Bool)

(assert (=> bm!65189 (= call!65193 call!65188)))

(declare-fun b!1349419 () Bool)

(declare-fun e!767646 () Bool)

(assert (=> b!1349419 (= e!767648 e!767646)))

(declare-fun res!895304 () Bool)

(assert (=> b!1349419 (= res!895304 call!65192)))

(assert (=> b!1349419 (=> (not res!895304) (not e!767646))))

(declare-fun b!1349420 () Bool)

(assert (=> b!1349420 (= e!767646 (= (apply!1075 lt!596515 #b0000000000000000000000000000000000000000000000000000000000000000) zeroValue!1245))))

(declare-fun b!1349421 () Bool)

(declare-fun res!895302 () Bool)

(assert (=> b!1349421 (=> (not res!895302) (not e!767649))))

(assert (=> b!1349421 (= res!895302 e!767648)))

(declare-fun c!126540 () Bool)

(assert (=> b!1349421 (= c!126540 (not (= (bvand extraKeys!1224 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun bm!65190 () Bool)

(assert (=> bm!65190 (= call!65187 (+!4828 (ite c!126535 call!65188 (ite c!126539 call!65193 call!65190)) (ite (or c!126535 c!126539) (tuple2!24473 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1245) (tuple2!24473 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1245))))))

(declare-fun b!1349422 () Bool)

(assert (=> b!1349422 (= e!767647 (not call!65189))))

(assert (= (and d!144597 c!126535) b!1349409))

(assert (= (and d!144597 (not c!126535)) b!1349412))

(assert (= (and b!1349412 c!126539) b!1349415))

(assert (= (and b!1349412 (not c!126539)) b!1349414))

(assert (= (and b!1349414 c!126536) b!1349405))

(assert (= (and b!1349414 (not c!126536)) b!1349411))

(assert (= (or b!1349405 b!1349411) bm!65184))

(assert (= (or b!1349415 bm!65184) bm!65189))

(assert (= (or b!1349415 b!1349405) bm!65186))

(assert (= (or b!1349409 bm!65189) bm!65187))

(assert (= (or b!1349409 bm!65186) bm!65190))

(assert (= (and d!144597 res!895305) b!1349408))

(assert (= (and d!144597 c!126538) b!1349403))

(assert (= (and d!144597 (not c!126538)) b!1349418))

(assert (= (and d!144597 res!895306) b!1349413))

(assert (= (and b!1349413 res!895307) b!1349416))

(assert (= (and b!1349413 (not res!895308)) b!1349404))

(assert (= (and b!1349404 res!895303) b!1349417))

(assert (= (and b!1349413 res!895309) b!1349421))

(assert (= (and b!1349421 c!126540) b!1349419))

(assert (= (and b!1349421 (not c!126540)) b!1349402))

(assert (= (and b!1349419 res!895304) b!1349420))

(assert (= (or b!1349419 b!1349402) bm!65188))

(assert (= (and b!1349421 res!895302) b!1349406))

(assert (= (and b!1349406 c!126537) b!1349407))

(assert (= (and b!1349406 (not c!126537)) b!1349422))

(assert (= (and b!1349407 res!895310) b!1349410))

(assert (= (or b!1349407 b!1349422) bm!65185))

(declare-fun b_lambda!24719 () Bool)

(assert (=> (not b_lambda!24719) (not b!1349417)))

(assert (=> b!1349417 t!46299))

(declare-fun b_and!50997 () Bool)

(assert (= b_and!50995 (and (=> t!46299 result!26019) b_and!50997)))

(assert (=> b!1349417 m!1236451))

(assert (=> b!1349417 m!1236451))

(declare-fun m!1236549 () Bool)

(assert (=> b!1349417 m!1236549))

(assert (=> b!1349417 m!1236443))

(assert (=> b!1349417 m!1236365))

(assert (=> b!1349417 m!1236445))

(assert (=> b!1349417 m!1236443))

(assert (=> b!1349417 m!1236365))

(declare-fun m!1236551 () Bool)

(assert (=> b!1349420 m!1236551))

(declare-fun m!1236553 () Bool)

(assert (=> b!1349403 m!1236553))

(declare-fun m!1236555 () Bool)

(assert (=> b!1349403 m!1236555))

(assert (=> b!1349403 m!1236555))

(declare-fun m!1236557 () Bool)

(assert (=> b!1349403 m!1236557))

(declare-fun m!1236559 () Bool)

(assert (=> b!1349403 m!1236559))

(declare-fun m!1236561 () Bool)

(assert (=> b!1349403 m!1236561))

(declare-fun m!1236563 () Bool)

(assert (=> b!1349403 m!1236563))

(declare-fun m!1236565 () Bool)

(assert (=> b!1349403 m!1236565))

(declare-fun m!1236567 () Bool)

(assert (=> b!1349403 m!1236567))

(declare-fun m!1236569 () Bool)

(assert (=> b!1349403 m!1236569))

(declare-fun m!1236571 () Bool)

(assert (=> b!1349403 m!1236571))

(assert (=> b!1349403 m!1236451))

(assert (=> b!1349403 m!1236569))

(declare-fun m!1236573 () Bool)

(assert (=> b!1349403 m!1236573))

(assert (=> b!1349403 m!1236361))

(declare-fun m!1236575 () Bool)

(assert (=> b!1349403 m!1236575))

(declare-fun m!1236577 () Bool)

(assert (=> b!1349403 m!1236577))

(assert (=> b!1349403 m!1236561))

(assert (=> b!1349403 m!1236571))

(declare-fun m!1236579 () Bool)

(assert (=> b!1349403 m!1236579))

(declare-fun m!1236581 () Bool)

(assert (=> b!1349403 m!1236581))

(declare-fun m!1236583 () Bool)

(assert (=> bm!65185 m!1236583))

(declare-fun m!1236585 () Bool)

(assert (=> bm!65190 m!1236585))

(assert (=> b!1349416 m!1236451))

(assert (=> b!1349416 m!1236451))

(assert (=> b!1349416 m!1236459))

(assert (=> bm!65187 m!1236361))

(declare-fun m!1236587 () Bool)

(assert (=> bm!65188 m!1236587))

(declare-fun m!1236589 () Bool)

(assert (=> b!1349410 m!1236589))

(assert (=> b!1349404 m!1236451))

(assert (=> b!1349404 m!1236451))

(declare-fun m!1236591 () Bool)

(assert (=> b!1349404 m!1236591))

(assert (=> d!144597 m!1236345))

(declare-fun m!1236593 () Bool)

(assert (=> b!1349409 m!1236593))

(assert (=> b!1349408 m!1236451))

(assert (=> b!1349408 m!1236451))

(assert (=> b!1349408 m!1236459))

(assert (=> b!1349213 d!144597))

(declare-fun d!144599 () Bool)

(declare-fun e!767652 () Bool)

(assert (=> d!144599 e!767652))

(declare-fun res!895311 () Bool)

(assert (=> d!144599 (=> res!895311 e!767652)))

(declare-fun lt!596537 () Bool)

(assert (=> d!144599 (= res!895311 (not lt!596537))))

(declare-fun lt!596535 () Bool)

(assert (=> d!144599 (= lt!596537 lt!596535)))

(declare-fun lt!596536 () Unit!44143)

(declare-fun e!767653 () Unit!44143)

(assert (=> d!144599 (= lt!596536 e!767653)))

(declare-fun c!126541 () Bool)

(assert (=> d!144599 (= c!126541 lt!596535)))

(assert (=> d!144599 (= lt!596535 (containsKey!743 (toList!11086 lt!596374) k0!1142))))

(assert (=> d!144599 (= (contains!9203 lt!596374 k0!1142) lt!596537)))

(declare-fun b!1349423 () Bool)

(declare-fun lt!596538 () Unit!44143)

(assert (=> b!1349423 (= e!767653 lt!596538)))

(assert (=> b!1349423 (= lt!596538 (lemmaContainsKeyImpliesGetValueByKeyDefined!488 (toList!11086 lt!596374) k0!1142))))

(assert (=> b!1349423 (isDefined!528 (getValueByKey!725 (toList!11086 lt!596374) k0!1142))))

(declare-fun b!1349424 () Bool)

(declare-fun Unit!44150 () Unit!44143)

(assert (=> b!1349424 (= e!767653 Unit!44150)))

(declare-fun b!1349425 () Bool)

(assert (=> b!1349425 (= e!767652 (isDefined!528 (getValueByKey!725 (toList!11086 lt!596374) k0!1142)))))

(assert (= (and d!144599 c!126541) b!1349423))

(assert (= (and d!144599 (not c!126541)) b!1349424))

(assert (= (and d!144599 (not res!895311)) b!1349425))

(declare-fun m!1236595 () Bool)

(assert (=> d!144599 m!1236595))

(declare-fun m!1236597 () Bool)

(assert (=> b!1349423 m!1236597))

(declare-fun m!1236599 () Bool)

(assert (=> b!1349423 m!1236599))

(assert (=> b!1349423 m!1236599))

(declare-fun m!1236601 () Bool)

(assert (=> b!1349423 m!1236601))

(assert (=> b!1349425 m!1236599))

(assert (=> b!1349425 m!1236599))

(assert (=> b!1349425 m!1236601))

(assert (=> b!1349213 d!144599))

(declare-fun d!144601 () Bool)

(assert (=> d!144601 (contains!9203 lt!596374 k0!1142)))

(declare-fun lt!596541 () Unit!44143)

(declare-fun choose!1992 ((_ BitVec 64) (_ BitVec 64) V!55219 ListLongMap!22141) Unit!44143)

(assert (=> d!144601 (= lt!596541 (choose!1992 k0!1142 (select (arr!44430 _keys!1571) from!1960) lt!596375 lt!596374))))

(assert (=> d!144601 (contains!9203 (+!4828 lt!596374 (tuple2!24473 (select (arr!44430 _keys!1571) from!1960) lt!596375)) k0!1142)))

(assert (=> d!144601 (= (lemmaInListMapAfterAddingDiffThenInBefore!413 k0!1142 (select (arr!44430 _keys!1571) from!1960) lt!596375 lt!596374) lt!596541)))

(declare-fun bs!38675 () Bool)

(assert (= bs!38675 d!144601))

(assert (=> bs!38675 m!1236379))

(assert (=> bs!38675 m!1236351))

(declare-fun m!1236603 () Bool)

(assert (=> bs!38675 m!1236603))

(assert (=> bs!38675 m!1236369))

(assert (=> bs!38675 m!1236369))

(assert (=> bs!38675 m!1236371))

(assert (=> b!1349213 d!144601))

(declare-fun b!1349436 () Bool)

(declare-fun e!767662 () Bool)

(declare-fun e!767664 () Bool)

(assert (=> b!1349436 (= e!767662 e!767664)))

(declare-fun c!126544 () Bool)

(assert (=> b!1349436 (= c!126544 (validKeyInArray!0 (select (arr!44430 _keys!1571) #b00000000000000000000000000000000)))))

(declare-fun d!144603 () Bool)

(declare-fun res!895319 () Bool)

(declare-fun e!767663 () Bool)

(assert (=> d!144603 (=> res!895319 e!767663)))

(assert (=> d!144603 (= res!895319 (bvsge #b00000000000000000000000000000000 (size!44981 _keys!1571)))))

(assert (=> d!144603 (= (arrayNoDuplicates!0 _keys!1571 #b00000000000000000000000000000000 Nil!31636) e!767663)))

(declare-fun b!1349437 () Bool)

(assert (=> b!1349437 (= e!767663 e!767662)))

(declare-fun res!895320 () Bool)

(assert (=> b!1349437 (=> (not res!895320) (not e!767662))))

(declare-fun e!767665 () Bool)

(assert (=> b!1349437 (= res!895320 (not e!767665))))

(declare-fun res!895318 () Bool)

(assert (=> b!1349437 (=> (not res!895318) (not e!767665))))

(assert (=> b!1349437 (= res!895318 (validKeyInArray!0 (select (arr!44430 _keys!1571) #b00000000000000000000000000000000)))))

(declare-fun b!1349438 () Bool)

(declare-fun call!65196 () Bool)

(assert (=> b!1349438 (= e!767664 call!65196)))

(declare-fun b!1349439 () Bool)

(assert (=> b!1349439 (= e!767664 call!65196)))

(declare-fun bm!65193 () Bool)

(assert (=> bm!65193 (= call!65196 (arrayNoDuplicates!0 _keys!1571 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!126544 (Cons!31635 (select (arr!44430 _keys!1571) #b00000000000000000000000000000000) Nil!31636) Nil!31636)))))

(declare-fun b!1349440 () Bool)

(declare-fun contains!9206 (List!31639 (_ BitVec 64)) Bool)

(assert (=> b!1349440 (= e!767665 (contains!9206 Nil!31636 (select (arr!44430 _keys!1571) #b00000000000000000000000000000000)))))

(assert (= (and d!144603 (not res!895319)) b!1349437))

(assert (= (and b!1349437 res!895318) b!1349440))

(assert (= (and b!1349437 res!895320) b!1349436))

(assert (= (and b!1349436 c!126544) b!1349439))

(assert (= (and b!1349436 (not c!126544)) b!1349438))

(assert (= (or b!1349439 b!1349438) bm!65193))

(assert (=> b!1349436 m!1236475))

(assert (=> b!1349436 m!1236475))

(assert (=> b!1349436 m!1236483))

(assert (=> b!1349437 m!1236475))

(assert (=> b!1349437 m!1236475))

(assert (=> b!1349437 m!1236483))

(assert (=> bm!65193 m!1236475))

(declare-fun m!1236605 () Bool)

(assert (=> bm!65193 m!1236605))

(assert (=> b!1349440 m!1236475))

(assert (=> b!1349440 m!1236475))

(declare-fun m!1236607 () Bool)

(assert (=> b!1349440 m!1236607))

(assert (=> b!1349210 d!144603))

(declare-fun condMapEmpty!58104 () Bool)

(declare-fun mapDefault!58104 () ValueCell!17895)

(assert (=> mapNonEmpty!58098 (= condMapEmpty!58104 (= mapRest!58098 ((as const (Array (_ BitVec 32) ValueCell!17895)) mapDefault!58104)))))

(declare-fun e!767671 () Bool)

(declare-fun mapRes!58104 () Bool)

(assert (=> mapNonEmpty!58098 (= tp!110578 (and e!767671 mapRes!58104))))

(declare-fun b!1349447 () Bool)

(declare-fun e!767670 () Bool)

(assert (=> b!1349447 (= e!767670 tp_is_empty!37587)))

(declare-fun mapIsEmpty!58104 () Bool)

(assert (=> mapIsEmpty!58104 mapRes!58104))

(declare-fun b!1349448 () Bool)

(assert (=> b!1349448 (= e!767671 tp_is_empty!37587)))

(declare-fun mapNonEmpty!58104 () Bool)

(declare-fun tp!110587 () Bool)

(assert (=> mapNonEmpty!58104 (= mapRes!58104 (and tp!110587 e!767670))))

(declare-fun mapRest!58104 () (Array (_ BitVec 32) ValueCell!17895))

(declare-fun mapKey!58104 () (_ BitVec 32))

(declare-fun mapValue!58104 () ValueCell!17895)

(assert (=> mapNonEmpty!58104 (= mapRest!58098 (store mapRest!58104 mapKey!58104 mapValue!58104))))

(assert (= (and mapNonEmpty!58098 condMapEmpty!58104) mapIsEmpty!58104))

(assert (= (and mapNonEmpty!58098 (not condMapEmpty!58104)) mapNonEmpty!58104))

(assert (= (and mapNonEmpty!58104 ((_ is ValueCellFull!17895) mapValue!58104)) b!1349447))

(assert (= (and mapNonEmpty!58098 ((_ is ValueCellFull!17895) mapDefault!58104)) b!1349448))

(declare-fun m!1236609 () Bool)

(assert (=> mapNonEmpty!58104 m!1236609))

(declare-fun b_lambda!24721 () Bool)

(assert (= b_lambda!24719 (or (and start!113714 b_free!31587) b_lambda!24721)))

(declare-fun b_lambda!24723 () Bool)

(assert (= b_lambda!24713 (or (and start!113714 b_free!31587) b_lambda!24723)))

(declare-fun b_lambda!24725 () Bool)

(assert (= b_lambda!24717 (or (and start!113714 b_free!31587) b_lambda!24725)))

(declare-fun b_lambda!24727 () Bool)

(assert (= b_lambda!24715 (or (and start!113714 b_free!31587) b_lambda!24727)))

(check-sat (not b!1349392) (not d!144597) (not b!1349270) b_and!50997 (not d!144581) (not b!1349401) (not b!1349305) (not bm!65183) (not b_lambda!24727) (not bm!65185) (not b!1349320) (not b!1349335) (not b_lambda!24721) (not b!1349277) (not b!1349410) (not b!1349393) (not d!144599) (not b!1349396) (not b!1349306) (not bm!65162) (not b!1349379) (not d!144585) (not d!144593) (not b!1349303) (not b!1349329) (not b_lambda!24723) (not d!144583) (not bm!65188) (not b!1349408) (not b!1349384) (not d!144595) (not b!1349409) (not b!1349330) (not d!144591) (not b!1349399) (not b!1349278) (not bm!65193) (not bm!65181) (not b!1349333) (not d!144601) (not b!1349319) (not b!1349416) (not b!1349423) (not b!1349437) (not bm!65178) (not b_next!31587) (not b!1349308) (not b_lambda!24711) (not b!1349425) (not b_lambda!24725) (not b!1349272) (not bm!65159) (not b!1349312) (not mapNonEmpty!58104) tp_is_empty!37587 (not b!1349385) (not bm!65180) (not b!1349404) (not b!1349436) (not b!1349440) (not b!1349314) (not b!1349386) (not b!1349403) (not bm!65187) (not b!1349380) (not bm!65190) (not b!1349420) (not b!1349309) (not b!1349417) (not b!1349313))
(check-sat b_and!50997 (not b_next!31587))
