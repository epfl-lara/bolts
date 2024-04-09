; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!862 () Bool)

(assert start!862)

(declare-fun b_free!255 () Bool)

(declare-fun b_next!255 () Bool)

(assert (=> start!862 (= b_free!255 (not b_next!255))))

(declare-fun tp!995 () Bool)

(declare-fun b_and!401 () Bool)

(assert (=> start!862 (= tp!995 b_and!401)))

(declare-fun b!7150 () Bool)

(declare-fun e!3956 () Bool)

(declare-fun e!3955 () Bool)

(declare-fun mapRes!470 () Bool)

(assert (=> b!7150 (= e!3956 (and e!3955 mapRes!470))))

(declare-fun condMapEmpty!470 () Bool)

(declare-datatypes ((V!621 0))(
  ( (V!622 (val!172 Int)) )
))
(declare-datatypes ((ValueCell!150 0))(
  ( (ValueCellFull!150 (v!1263 V!621)) (EmptyCell!150) )
))
(declare-datatypes ((array!599 0))(
  ( (array!600 (arr!288 (Array (_ BitVec 32) ValueCell!150)) (size!350 (_ BitVec 32))) )
))
(declare-fun _values!1492 () array!599)

(declare-fun mapDefault!470 () ValueCell!150)

(assert (=> b!7150 (= condMapEmpty!470 (= (arr!288 _values!1492) ((as const (Array (_ BitVec 32) ValueCell!150)) mapDefault!470)))))

(declare-fun b!7151 () Bool)

(declare-fun e!3958 () Bool)

(declare-datatypes ((array!601 0))(
  ( (array!602 (arr!289 (Array (_ BitVec 32) (_ BitVec 64))) (size!351 (_ BitVec 32))) )
))
(declare-fun _keys!1806 () array!601)

(declare-fun k0!1278 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!601 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!7151 (= e!3958 (not (arrayContainsKey!0 _keys!1806 k0!1278 #b00000000000000000000000000000000)))))

(declare-fun e!3957 () Bool)

(assert (=> b!7151 e!3957))

(declare-fun c!515 () Bool)

(assert (=> b!7151 (= c!515 (and (not (= k0!1278 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1278 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun mask!2250 () (_ BitVec 32))

(declare-fun minValue!1434 () V!621)

(declare-fun extraKeys!1413 () (_ BitVec 32))

(declare-fun zeroValue!1434 () V!621)

(declare-datatypes ((Unit!133 0))(
  ( (Unit!134) )
))
(declare-fun lt!1431 () Unit!133)

(declare-fun defaultEntry!1495 () Int)

(declare-fun lemmaKeyInListMapIsInArray!48 (array!601 array!599 (_ BitVec 32) (_ BitVec 32) V!621 V!621 (_ BitVec 64) Int) Unit!133)

(assert (=> b!7151 (= lt!1431 (lemmaKeyInListMapIsInArray!48 _keys!1806 _values!1492 mask!2250 extraKeys!1413 zeroValue!1434 minValue!1434 k0!1278 defaultEntry!1495))))

(declare-fun res!7266 () Bool)

(assert (=> start!862 (=> (not res!7266) (not e!3958))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!862 (= res!7266 (validMask!0 mask!2250))))

(assert (=> start!862 e!3958))

(assert (=> start!862 tp!995))

(assert (=> start!862 true))

(declare-fun array_inv!211 (array!599) Bool)

(assert (=> start!862 (and (array_inv!211 _values!1492) e!3956)))

(declare-fun tp_is_empty!333 () Bool)

(assert (=> start!862 tp_is_empty!333))

(declare-fun array_inv!212 (array!601) Bool)

(assert (=> start!862 (array_inv!212 _keys!1806)))

(declare-fun b!7152 () Bool)

(declare-fun res!7264 () Bool)

(assert (=> b!7152 (=> (not res!7264) (not e!3958))))

(declare-datatypes ((List!193 0))(
  ( (Nil!190) (Cons!189 (h!755 (_ BitVec 64)) (t!2328 List!193)) )
))
(declare-fun arrayNoDuplicates!0 (array!601 (_ BitVec 32) List!193) Bool)

(assert (=> b!7152 (= res!7264 (arrayNoDuplicates!0 _keys!1806 #b00000000000000000000000000000000 Nil!190))))

(declare-fun b!7153 () Bool)

(assert (=> b!7153 (= e!3957 (arrayContainsKey!0 _keys!1806 k0!1278 #b00000000000000000000000000000000))))

(declare-fun b!7154 () Bool)

(declare-fun e!3954 () Bool)

(assert (=> b!7154 (= e!3954 tp_is_empty!333)))

(declare-fun b!7155 () Bool)

(declare-fun res!7263 () Bool)

(assert (=> b!7155 (=> (not res!7263) (not e!3958))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!601 (_ BitVec 32)) Bool)

(assert (=> b!7155 (= res!7263 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1806 mask!2250))))

(declare-fun b!7156 () Bool)

(assert (=> b!7156 (= e!3955 tp_is_empty!333)))

(declare-fun mapIsEmpty!470 () Bool)

(assert (=> mapIsEmpty!470 mapRes!470))

(declare-fun b!7157 () Bool)

(declare-fun res!7267 () Bool)

(assert (=> b!7157 (=> (not res!7267) (not e!3958))))

(assert (=> b!7157 (= res!7267 (and (= (size!350 _values!1492) (bvadd #b00000000000000000000000000000001 mask!2250)) (= (size!351 _keys!1806) (size!350 _values!1492)) (bvsge mask!2250 #b00000000000000000000000000000000) (bvsge extraKeys!1413 #b00000000000000000000000000000000) (bvsle extraKeys!1413 #b00000000000000000000000000000011)))))

(declare-fun b!7158 () Bool)

(declare-fun res!7262 () Bool)

(assert (=> b!7158 (=> (not res!7262) (not e!3958))))

(declare-datatypes ((tuple2!176 0))(
  ( (tuple2!177 (_1!88 (_ BitVec 64)) (_2!88 V!621)) )
))
(declare-datatypes ((List!194 0))(
  ( (Nil!191) (Cons!190 (h!756 tuple2!176) (t!2329 List!194)) )
))
(declare-datatypes ((ListLongMap!181 0))(
  ( (ListLongMap!182 (toList!106 List!194)) )
))
(declare-fun contains!80 (ListLongMap!181 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!65 (array!601 array!599 (_ BitVec 32) (_ BitVec 32) V!621 V!621 (_ BitVec 32) Int) ListLongMap!181)

(assert (=> b!7158 (= res!7262 (contains!80 (getCurrentListMap!65 _keys!1806 _values!1492 mask!2250 extraKeys!1413 zeroValue!1434 minValue!1434 #b00000000000000000000000000000000 defaultEntry!1495) k0!1278))))

(declare-fun mapNonEmpty!470 () Bool)

(declare-fun tp!994 () Bool)

(assert (=> mapNonEmpty!470 (= mapRes!470 (and tp!994 e!3954))))

(declare-fun mapValue!470 () ValueCell!150)

(declare-fun mapKey!470 () (_ BitVec 32))

(declare-fun mapRest!470 () (Array (_ BitVec 32) ValueCell!150))

(assert (=> mapNonEmpty!470 (= (arr!288 _values!1492) (store mapRest!470 mapKey!470 mapValue!470))))

(declare-fun b!7159 () Bool)

(declare-fun res!7265 () Bool)

(assert (=> b!7159 (=> (not res!7265) (not e!3958))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!7159 (= res!7265 (validKeyInArray!0 k0!1278))))

(declare-fun b!7160 () Bool)

(assert (=> b!7160 (= e!3957 (ite (= k0!1278 #b0000000000000000000000000000000000000000000000000000000000000000) (not (= (bvand extraKeys!1413 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1413 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (= (and start!862 res!7266) b!7157))

(assert (= (and b!7157 res!7267) b!7155))

(assert (= (and b!7155 res!7263) b!7152))

(assert (= (and b!7152 res!7264) b!7158))

(assert (= (and b!7158 res!7262) b!7159))

(assert (= (and b!7159 res!7265) b!7151))

(assert (= (and b!7151 c!515) b!7153))

(assert (= (and b!7151 (not c!515)) b!7160))

(assert (= (and b!7150 condMapEmpty!470) mapIsEmpty!470))

(assert (= (and b!7150 (not condMapEmpty!470)) mapNonEmpty!470))

(get-info :version)

(assert (= (and mapNonEmpty!470 ((_ is ValueCellFull!150) mapValue!470)) b!7154))

(assert (= (and b!7150 ((_ is ValueCellFull!150) mapDefault!470)) b!7156))

(assert (= start!862 b!7150))

(declare-fun m!4275 () Bool)

(assert (=> b!7151 m!4275))

(declare-fun m!4277 () Bool)

(assert (=> b!7151 m!4277))

(declare-fun m!4279 () Bool)

(assert (=> start!862 m!4279))

(declare-fun m!4281 () Bool)

(assert (=> start!862 m!4281))

(declare-fun m!4283 () Bool)

(assert (=> start!862 m!4283))

(declare-fun m!4285 () Bool)

(assert (=> b!7159 m!4285))

(declare-fun m!4287 () Bool)

(assert (=> b!7158 m!4287))

(assert (=> b!7158 m!4287))

(declare-fun m!4289 () Bool)

(assert (=> b!7158 m!4289))

(assert (=> b!7153 m!4275))

(declare-fun m!4291 () Bool)

(assert (=> mapNonEmpty!470 m!4291))

(declare-fun m!4293 () Bool)

(assert (=> b!7152 m!4293))

(declare-fun m!4295 () Bool)

(assert (=> b!7155 m!4295))

(check-sat tp_is_empty!333 (not mapNonEmpty!470) (not b_next!255) (not start!862) (not b!7155) (not b!7158) b_and!401 (not b!7152) (not b!7151) (not b!7159) (not b!7153))
(check-sat b_and!401 (not b_next!255))
(get-model)

(declare-fun b!7204 () Bool)

(declare-fun e!3989 () Bool)

(declare-fun call!158 () Bool)

(assert (=> b!7204 (= e!3989 call!158)))

(declare-fun bm!155 () Bool)

(declare-fun c!521 () Bool)

(assert (=> bm!155 (= call!158 (arrayNoDuplicates!0 _keys!1806 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!521 (Cons!189 (select (arr!289 _keys!1806) #b00000000000000000000000000000000) Nil!190) Nil!190)))))

(declare-fun d!791 () Bool)

(declare-fun res!7293 () Bool)

(declare-fun e!3988 () Bool)

(assert (=> d!791 (=> res!7293 e!3988)))

(assert (=> d!791 (= res!7293 (bvsge #b00000000000000000000000000000000 (size!351 _keys!1806)))))

(assert (=> d!791 (= (arrayNoDuplicates!0 _keys!1806 #b00000000000000000000000000000000 Nil!190) e!3988)))

(declare-fun b!7205 () Bool)

(declare-fun e!3986 () Bool)

(declare-fun contains!82 (List!193 (_ BitVec 64)) Bool)

(assert (=> b!7205 (= e!3986 (contains!82 Nil!190 (select (arr!289 _keys!1806) #b00000000000000000000000000000000)))))

(declare-fun b!7206 () Bool)

(assert (=> b!7206 (= e!3989 call!158)))

(declare-fun b!7207 () Bool)

(declare-fun e!3987 () Bool)

(assert (=> b!7207 (= e!3988 e!3987)))

(declare-fun res!7292 () Bool)

(assert (=> b!7207 (=> (not res!7292) (not e!3987))))

(assert (=> b!7207 (= res!7292 (not e!3986))))

(declare-fun res!7294 () Bool)

(assert (=> b!7207 (=> (not res!7294) (not e!3986))))

(assert (=> b!7207 (= res!7294 (validKeyInArray!0 (select (arr!289 _keys!1806) #b00000000000000000000000000000000)))))

(declare-fun b!7208 () Bool)

(assert (=> b!7208 (= e!3987 e!3989)))

(assert (=> b!7208 (= c!521 (validKeyInArray!0 (select (arr!289 _keys!1806) #b00000000000000000000000000000000)))))

(assert (= (and d!791 (not res!7293)) b!7207))

(assert (= (and b!7207 res!7294) b!7205))

(assert (= (and b!7207 res!7292) b!7208))

(assert (= (and b!7208 c!521) b!7204))

(assert (= (and b!7208 (not c!521)) b!7206))

(assert (= (or b!7204 b!7206) bm!155))

(declare-fun m!4319 () Bool)

(assert (=> bm!155 m!4319))

(declare-fun m!4321 () Bool)

(assert (=> bm!155 m!4321))

(assert (=> b!7205 m!4319))

(assert (=> b!7205 m!4319))

(declare-fun m!4323 () Bool)

(assert (=> b!7205 m!4323))

(assert (=> b!7207 m!4319))

(assert (=> b!7207 m!4319))

(declare-fun m!4325 () Bool)

(assert (=> b!7207 m!4325))

(assert (=> b!7208 m!4319))

(assert (=> b!7208 m!4319))

(assert (=> b!7208 m!4325))

(assert (=> b!7152 d!791))

(declare-fun d!793 () Bool)

(declare-fun e!3995 () Bool)

(assert (=> d!793 e!3995))

(declare-fun res!7297 () Bool)

(assert (=> d!793 (=> res!7297 e!3995)))

(declare-fun lt!1444 () Bool)

(assert (=> d!793 (= res!7297 (not lt!1444))))

(declare-fun lt!1446 () Bool)

(assert (=> d!793 (= lt!1444 lt!1446)))

(declare-fun lt!1445 () Unit!133)

(declare-fun e!3994 () Unit!133)

(assert (=> d!793 (= lt!1445 e!3994)))

(declare-fun c!524 () Bool)

(assert (=> d!793 (= c!524 lt!1446)))

(declare-fun containsKey!5 (List!194 (_ BitVec 64)) Bool)

(assert (=> d!793 (= lt!1446 (containsKey!5 (toList!106 (getCurrentListMap!65 _keys!1806 _values!1492 mask!2250 extraKeys!1413 zeroValue!1434 minValue!1434 #b00000000000000000000000000000000 defaultEntry!1495)) k0!1278))))

(assert (=> d!793 (= (contains!80 (getCurrentListMap!65 _keys!1806 _values!1492 mask!2250 extraKeys!1413 zeroValue!1434 minValue!1434 #b00000000000000000000000000000000 defaultEntry!1495) k0!1278) lt!1444)))

(declare-fun b!7215 () Bool)

(declare-fun lt!1443 () Unit!133)

(assert (=> b!7215 (= e!3994 lt!1443)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!5 (List!194 (_ BitVec 64)) Unit!133)

(assert (=> b!7215 (= lt!1443 (lemmaContainsKeyImpliesGetValueByKeyDefined!5 (toList!106 (getCurrentListMap!65 _keys!1806 _values!1492 mask!2250 extraKeys!1413 zeroValue!1434 minValue!1434 #b00000000000000000000000000000000 defaultEntry!1495)) k0!1278))))

(declare-datatypes ((Option!17 0))(
  ( (Some!16 (v!1265 V!621)) (None!15) )
))
(declare-fun isDefined!6 (Option!17) Bool)

(declare-fun getValueByKey!11 (List!194 (_ BitVec 64)) Option!17)

(assert (=> b!7215 (isDefined!6 (getValueByKey!11 (toList!106 (getCurrentListMap!65 _keys!1806 _values!1492 mask!2250 extraKeys!1413 zeroValue!1434 minValue!1434 #b00000000000000000000000000000000 defaultEntry!1495)) k0!1278))))

(declare-fun b!7216 () Bool)

(declare-fun Unit!135 () Unit!133)

(assert (=> b!7216 (= e!3994 Unit!135)))

(declare-fun b!7217 () Bool)

(assert (=> b!7217 (= e!3995 (isDefined!6 (getValueByKey!11 (toList!106 (getCurrentListMap!65 _keys!1806 _values!1492 mask!2250 extraKeys!1413 zeroValue!1434 minValue!1434 #b00000000000000000000000000000000 defaultEntry!1495)) k0!1278)))))

(assert (= (and d!793 c!524) b!7215))

(assert (= (and d!793 (not c!524)) b!7216))

(assert (= (and d!793 (not res!7297)) b!7217))

(declare-fun m!4327 () Bool)

(assert (=> d!793 m!4327))

(declare-fun m!4329 () Bool)

(assert (=> b!7215 m!4329))

(declare-fun m!4331 () Bool)

(assert (=> b!7215 m!4331))

(assert (=> b!7215 m!4331))

(declare-fun m!4333 () Bool)

(assert (=> b!7215 m!4333))

(assert (=> b!7217 m!4331))

(assert (=> b!7217 m!4331))

(assert (=> b!7217 m!4333))

(assert (=> b!7158 d!793))

(declare-fun b!7260 () Bool)

(declare-fun e!4032 () Bool)

(declare-fun lt!1510 () ListLongMap!181)

(declare-fun apply!21 (ListLongMap!181 (_ BitVec 64)) V!621)

(assert (=> b!7260 (= e!4032 (= (apply!21 lt!1510 #b0000000000000000000000000000000000000000000000000000000000000000) zeroValue!1434))))

(declare-fun b!7261 () Bool)

(declare-fun e!4026 () Bool)

(assert (=> b!7261 (= e!4026 (validKeyInArray!0 (select (arr!289 _keys!1806) #b00000000000000000000000000000000)))))

(declare-fun b!7262 () Bool)

(declare-fun e!4031 () Bool)

(assert (=> b!7262 (= e!4031 e!4032)))

(declare-fun res!7320 () Bool)

(declare-fun call!177 () Bool)

(assert (=> b!7262 (= res!7320 call!177)))

(assert (=> b!7262 (=> (not res!7320) (not e!4032))))

(declare-fun b!7263 () Bool)

(declare-fun e!4023 () Bool)

(assert (=> b!7263 (= e!4023 (validKeyInArray!0 (select (arr!289 _keys!1806) #b00000000000000000000000000000000)))))

(declare-fun b!7264 () Bool)

(assert (=> b!7264 (= e!4031 (not call!177))))

(declare-fun b!7265 () Bool)

(declare-fun e!4022 () Bool)

(declare-fun e!4024 () Bool)

(assert (=> b!7265 (= e!4022 e!4024)))

(declare-fun res!7318 () Bool)

(declare-fun call!175 () Bool)

(assert (=> b!7265 (= res!7318 call!175)))

(assert (=> b!7265 (=> (not res!7318) (not e!4024))))

(declare-fun b!7266 () Bool)

(declare-fun e!4034 () ListLongMap!181)

(declare-fun e!4028 () ListLongMap!181)

(assert (=> b!7266 (= e!4034 e!4028)))

(declare-fun c!540 () Bool)

(assert (=> b!7266 (= c!540 (and (not (= (bvand extraKeys!1413 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeys!1413 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!7267 () Bool)

(declare-fun res!7322 () Bool)

(declare-fun e!4030 () Bool)

(assert (=> b!7267 (=> (not res!7322) (not e!4030))))

(assert (=> b!7267 (= res!7322 e!4031)))

(declare-fun c!539 () Bool)

(assert (=> b!7267 (= c!539 (not (= (bvand extraKeys!1413 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun e!4025 () Bool)

(declare-fun b!7268 () Bool)

(declare-fun get!133 (ValueCell!150 V!621) V!621)

(declare-fun dynLambda!43 (Int (_ BitVec 64)) V!621)

(assert (=> b!7268 (= e!4025 (= (apply!21 lt!1510 (select (arr!289 _keys!1806) #b00000000000000000000000000000000)) (get!133 (select (arr!288 _values!1492) #b00000000000000000000000000000000) (dynLambda!43 defaultEntry!1495 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!7268 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!350 _values!1492)))))

(assert (=> b!7268 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!351 _keys!1806)))))

(declare-fun bm!171 () Bool)

(assert (=> bm!171 (= call!177 (contains!80 lt!1510 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!7269 () Bool)

(declare-fun e!4027 () ListLongMap!181)

(declare-fun call!173 () ListLongMap!181)

(assert (=> b!7269 (= e!4027 call!173)))

(declare-fun bm!172 () Bool)

(declare-fun call!176 () ListLongMap!181)

(assert (=> bm!172 (= call!173 call!176)))

(declare-fun b!7270 () Bool)

(assert (=> b!7270 (= e!4028 call!173)))

(declare-fun b!7271 () Bool)

(assert (=> b!7271 (= e!4030 e!4022)))

(declare-fun c!538 () Bool)

(assert (=> b!7271 (= c!538 (not (= (bvand extraKeys!1413 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!7272 () Bool)

(declare-fun res!7324 () Bool)

(assert (=> b!7272 (=> (not res!7324) (not e!4030))))

(declare-fun e!4029 () Bool)

(assert (=> b!7272 (= res!7324 e!4029)))

(declare-fun res!7319 () Bool)

(assert (=> b!7272 (=> res!7319 e!4029)))

(assert (=> b!7272 (= res!7319 (not e!4026))))

(declare-fun res!7321 () Bool)

(assert (=> b!7272 (=> (not res!7321) (not e!4026))))

(assert (=> b!7272 (= res!7321 (bvslt #b00000000000000000000000000000000 (size!351 _keys!1806)))))

(declare-fun bm!173 () Bool)

(assert (=> bm!173 (= call!175 (contains!80 lt!1510 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun call!178 () ListLongMap!181)

(declare-fun bm!174 () Bool)

(declare-fun getCurrentListMapNoExtraKeys!5 (array!601 array!599 (_ BitVec 32) (_ BitVec 32) V!621 V!621 (_ BitVec 32) Int) ListLongMap!181)

(assert (=> bm!174 (= call!178 (getCurrentListMapNoExtraKeys!5 _keys!1806 _values!1492 mask!2250 extraKeys!1413 zeroValue!1434 minValue!1434 #b00000000000000000000000000000000 defaultEntry!1495))))

(declare-fun b!7273 () Bool)

(declare-fun call!174 () ListLongMap!181)

(assert (=> b!7273 (= e!4027 call!174)))

(declare-fun b!7274 () Bool)

(declare-fun e!4033 () Unit!133)

(declare-fun lt!1491 () Unit!133)

(assert (=> b!7274 (= e!4033 lt!1491)))

(declare-fun lt!1503 () ListLongMap!181)

(assert (=> b!7274 (= lt!1503 (getCurrentListMapNoExtraKeys!5 _keys!1806 _values!1492 mask!2250 extraKeys!1413 zeroValue!1434 minValue!1434 #b00000000000000000000000000000000 defaultEntry!1495))))

(declare-fun lt!1498 () (_ BitVec 64))

(assert (=> b!7274 (= lt!1498 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!1504 () (_ BitVec 64))

(assert (=> b!7274 (= lt!1504 (select (arr!289 _keys!1806) #b00000000000000000000000000000000))))

(declare-fun lt!1502 () Unit!133)

(declare-fun addStillContains!6 (ListLongMap!181 (_ BitVec 64) V!621 (_ BitVec 64)) Unit!133)

(assert (=> b!7274 (= lt!1502 (addStillContains!6 lt!1503 lt!1498 zeroValue!1434 lt!1504))))

(declare-fun +!8 (ListLongMap!181 tuple2!176) ListLongMap!181)

(assert (=> b!7274 (contains!80 (+!8 lt!1503 (tuple2!177 lt!1498 zeroValue!1434)) lt!1504)))

(declare-fun lt!1508 () Unit!133)

(assert (=> b!7274 (= lt!1508 lt!1502)))

(declare-fun lt!1512 () ListLongMap!181)

(assert (=> b!7274 (= lt!1512 (getCurrentListMapNoExtraKeys!5 _keys!1806 _values!1492 mask!2250 extraKeys!1413 zeroValue!1434 minValue!1434 #b00000000000000000000000000000000 defaultEntry!1495))))

(declare-fun lt!1497 () (_ BitVec 64))

(assert (=> b!7274 (= lt!1497 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!1505 () (_ BitVec 64))

(assert (=> b!7274 (= lt!1505 (select (arr!289 _keys!1806) #b00000000000000000000000000000000))))

(declare-fun lt!1506 () Unit!133)

(declare-fun addApplyDifferent!6 (ListLongMap!181 (_ BitVec 64) V!621 (_ BitVec 64)) Unit!133)

(assert (=> b!7274 (= lt!1506 (addApplyDifferent!6 lt!1512 lt!1497 minValue!1434 lt!1505))))

(assert (=> b!7274 (= (apply!21 (+!8 lt!1512 (tuple2!177 lt!1497 minValue!1434)) lt!1505) (apply!21 lt!1512 lt!1505))))

(declare-fun lt!1500 () Unit!133)

(assert (=> b!7274 (= lt!1500 lt!1506)))

(declare-fun lt!1494 () ListLongMap!181)

(assert (=> b!7274 (= lt!1494 (getCurrentListMapNoExtraKeys!5 _keys!1806 _values!1492 mask!2250 extraKeys!1413 zeroValue!1434 minValue!1434 #b00000000000000000000000000000000 defaultEntry!1495))))

(declare-fun lt!1492 () (_ BitVec 64))

(assert (=> b!7274 (= lt!1492 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!1499 () (_ BitVec 64))

(assert (=> b!7274 (= lt!1499 (select (arr!289 _keys!1806) #b00000000000000000000000000000000))))

(declare-fun lt!1496 () Unit!133)

(assert (=> b!7274 (= lt!1496 (addApplyDifferent!6 lt!1494 lt!1492 zeroValue!1434 lt!1499))))

(assert (=> b!7274 (= (apply!21 (+!8 lt!1494 (tuple2!177 lt!1492 zeroValue!1434)) lt!1499) (apply!21 lt!1494 lt!1499))))

(declare-fun lt!1507 () Unit!133)

(assert (=> b!7274 (= lt!1507 lt!1496)))

(declare-fun lt!1495 () ListLongMap!181)

(assert (=> b!7274 (= lt!1495 (getCurrentListMapNoExtraKeys!5 _keys!1806 _values!1492 mask!2250 extraKeys!1413 zeroValue!1434 minValue!1434 #b00000000000000000000000000000000 defaultEntry!1495))))

(declare-fun lt!1511 () (_ BitVec 64))

(assert (=> b!7274 (= lt!1511 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!1501 () (_ BitVec 64))

(assert (=> b!7274 (= lt!1501 (select (arr!289 _keys!1806) #b00000000000000000000000000000000))))

(assert (=> b!7274 (= lt!1491 (addApplyDifferent!6 lt!1495 lt!1511 minValue!1434 lt!1501))))

(assert (=> b!7274 (= (apply!21 (+!8 lt!1495 (tuple2!177 lt!1511 minValue!1434)) lt!1501) (apply!21 lt!1495 lt!1501))))

(declare-fun b!7275 () Bool)

(declare-fun c!541 () Bool)

(assert (=> b!7275 (= c!541 (and (not (= (bvand extraKeys!1413 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeys!1413 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!7275 (= e!4028 e!4027)))

(declare-fun bm!175 () Bool)

(declare-fun call!179 () ListLongMap!181)

(assert (=> bm!175 (= call!174 call!179)))

(declare-fun d!795 () Bool)

(assert (=> d!795 e!4030))

(declare-fun res!7317 () Bool)

(assert (=> d!795 (=> (not res!7317) (not e!4030))))

(assert (=> d!795 (= res!7317 (or (bvsge #b00000000000000000000000000000000 (size!351 _keys!1806)) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!351 _keys!1806)))))))

(declare-fun lt!1493 () ListLongMap!181)

(assert (=> d!795 (= lt!1510 lt!1493)))

(declare-fun lt!1509 () Unit!133)

(assert (=> d!795 (= lt!1509 e!4033)))

(declare-fun c!542 () Bool)

(assert (=> d!795 (= c!542 e!4023)))

(declare-fun res!7323 () Bool)

(assert (=> d!795 (=> (not res!7323) (not e!4023))))

(assert (=> d!795 (= res!7323 (bvslt #b00000000000000000000000000000000 (size!351 _keys!1806)))))

(assert (=> d!795 (= lt!1493 e!4034)))

(declare-fun c!537 () Bool)

(assert (=> d!795 (= c!537 (and (not (= (bvand extraKeys!1413 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1413 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!795 (validMask!0 mask!2250)))

(assert (=> d!795 (= (getCurrentListMap!65 _keys!1806 _values!1492 mask!2250 extraKeys!1413 zeroValue!1434 minValue!1434 #b00000000000000000000000000000000 defaultEntry!1495) lt!1510)))

(declare-fun bm!170 () Bool)

(assert (=> bm!170 (= call!176 (+!8 (ite c!537 call!178 (ite c!540 call!179 call!174)) (ite (or c!537 c!540) (tuple2!177 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1434) (tuple2!177 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1434))))))

(declare-fun b!7276 () Bool)

(assert (=> b!7276 (= e!4029 e!4025)))

(declare-fun res!7316 () Bool)

(assert (=> b!7276 (=> (not res!7316) (not e!4025))))

(assert (=> b!7276 (= res!7316 (contains!80 lt!1510 (select (arr!289 _keys!1806) #b00000000000000000000000000000000)))))

(assert (=> b!7276 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!351 _keys!1806)))))

(declare-fun b!7277 () Bool)

(assert (=> b!7277 (= e!4024 (= (apply!21 lt!1510 #b1000000000000000000000000000000000000000000000000000000000000000) minValue!1434))))

(declare-fun b!7278 () Bool)

(declare-fun Unit!136 () Unit!133)

(assert (=> b!7278 (= e!4033 Unit!136)))

(declare-fun b!7279 () Bool)

(assert (=> b!7279 (= e!4034 (+!8 call!176 (tuple2!177 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1434)))))

(declare-fun b!7280 () Bool)

(assert (=> b!7280 (= e!4022 (not call!175))))

(declare-fun bm!176 () Bool)

(assert (=> bm!176 (= call!179 call!178)))

(assert (= (and d!795 c!537) b!7279))

(assert (= (and d!795 (not c!537)) b!7266))

(assert (= (and b!7266 c!540) b!7270))

(assert (= (and b!7266 (not c!540)) b!7275))

(assert (= (and b!7275 c!541) b!7269))

(assert (= (and b!7275 (not c!541)) b!7273))

(assert (= (or b!7269 b!7273) bm!175))

(assert (= (or b!7270 bm!175) bm!176))

(assert (= (or b!7270 b!7269) bm!172))

(assert (= (or b!7279 bm!176) bm!174))

(assert (= (or b!7279 bm!172) bm!170))

(assert (= (and d!795 res!7323) b!7263))

(assert (= (and d!795 c!542) b!7274))

(assert (= (and d!795 (not c!542)) b!7278))

(assert (= (and d!795 res!7317) b!7272))

(assert (= (and b!7272 res!7321) b!7261))

(assert (= (and b!7272 (not res!7319)) b!7276))

(assert (= (and b!7276 res!7316) b!7268))

(assert (= (and b!7272 res!7324) b!7267))

(assert (= (and b!7267 c!539) b!7262))

(assert (= (and b!7267 (not c!539)) b!7264))

(assert (= (and b!7262 res!7320) b!7260))

(assert (= (or b!7262 b!7264) bm!171))

(assert (= (and b!7267 res!7322) b!7271))

(assert (= (and b!7271 c!538) b!7265))

(assert (= (and b!7271 (not c!538)) b!7280))

(assert (= (and b!7265 res!7318) b!7277))

(assert (= (or b!7265 b!7280) bm!173))

(declare-fun b_lambda!335 () Bool)

(assert (=> (not b_lambda!335) (not b!7268)))

(declare-fun t!2333 () Bool)

(declare-fun tb!135 () Bool)

(assert (=> (and start!862 (= defaultEntry!1495 defaultEntry!1495) t!2333) tb!135))

(declare-fun result!207 () Bool)

(assert (=> tb!135 (= result!207 tp_is_empty!333)))

(assert (=> b!7268 t!2333))

(declare-fun b_and!405 () Bool)

(assert (= b_and!401 (and (=> t!2333 result!207) b_and!405)))

(declare-fun m!4335 () Bool)

(assert (=> bm!171 m!4335))

(declare-fun m!4337 () Bool)

(assert (=> b!7268 m!4337))

(assert (=> b!7268 m!4319))

(declare-fun m!4339 () Bool)

(assert (=> b!7268 m!4339))

(declare-fun m!4341 () Bool)

(assert (=> b!7268 m!4341))

(assert (=> b!7268 m!4319))

(assert (=> b!7268 m!4337))

(assert (=> b!7268 m!4341))

(declare-fun m!4343 () Bool)

(assert (=> b!7268 m!4343))

(assert (=> b!7263 m!4319))

(assert (=> b!7263 m!4319))

(assert (=> b!7263 m!4325))

(declare-fun m!4345 () Bool)

(assert (=> b!7274 m!4345))

(declare-fun m!4347 () Bool)

(assert (=> b!7274 m!4347))

(declare-fun m!4349 () Bool)

(assert (=> b!7274 m!4349))

(declare-fun m!4351 () Bool)

(assert (=> b!7274 m!4351))

(declare-fun m!4353 () Bool)

(assert (=> b!7274 m!4353))

(declare-fun m!4355 () Bool)

(assert (=> b!7274 m!4355))

(declare-fun m!4357 () Bool)

(assert (=> b!7274 m!4357))

(declare-fun m!4359 () Bool)

(assert (=> b!7274 m!4359))

(assert (=> b!7274 m!4359))

(declare-fun m!4361 () Bool)

(assert (=> b!7274 m!4361))

(declare-fun m!4363 () Bool)

(assert (=> b!7274 m!4363))

(assert (=> b!7274 m!4319))

(declare-fun m!4365 () Bool)

(assert (=> b!7274 m!4365))

(assert (=> b!7274 m!4347))

(declare-fun m!4367 () Bool)

(assert (=> b!7274 m!4367))

(declare-fun m!4369 () Bool)

(assert (=> b!7274 m!4369))

(declare-fun m!4371 () Bool)

(assert (=> b!7274 m!4371))

(declare-fun m!4373 () Bool)

(assert (=> b!7274 m!4373))

(assert (=> b!7274 m!4371))

(declare-fun m!4375 () Bool)

(assert (=> b!7274 m!4375))

(assert (=> b!7274 m!4353))

(declare-fun m!4377 () Bool)

(assert (=> b!7279 m!4377))

(assert (=> b!7261 m!4319))

(assert (=> b!7261 m!4319))

(assert (=> b!7261 m!4325))

(declare-fun m!4379 () Bool)

(assert (=> bm!173 m!4379))

(declare-fun m!4381 () Bool)

(assert (=> b!7277 m!4381))

(assert (=> bm!174 m!4357))

(declare-fun m!4383 () Bool)

(assert (=> b!7260 m!4383))

(assert (=> d!795 m!4279))

(declare-fun m!4385 () Bool)

(assert (=> bm!170 m!4385))

(assert (=> b!7276 m!4319))

(assert (=> b!7276 m!4319))

(declare-fun m!4387 () Bool)

(assert (=> b!7276 m!4387))

(assert (=> b!7158 d!795))

(declare-fun d!797 () Bool)

(declare-fun res!7329 () Bool)

(declare-fun e!4039 () Bool)

(assert (=> d!797 (=> res!7329 e!4039)))

(assert (=> d!797 (= res!7329 (= (select (arr!289 _keys!1806) #b00000000000000000000000000000000) k0!1278))))

(assert (=> d!797 (= (arrayContainsKey!0 _keys!1806 k0!1278 #b00000000000000000000000000000000) e!4039)))

(declare-fun b!7287 () Bool)

(declare-fun e!4040 () Bool)

(assert (=> b!7287 (= e!4039 e!4040)))

(declare-fun res!7330 () Bool)

(assert (=> b!7287 (=> (not res!7330) (not e!4040))))

(assert (=> b!7287 (= res!7330 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!351 _keys!1806)))))

(declare-fun b!7288 () Bool)

(assert (=> b!7288 (= e!4040 (arrayContainsKey!0 _keys!1806 k0!1278 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!797 (not res!7329)) b!7287))

(assert (= (and b!7287 res!7330) b!7288))

(assert (=> d!797 m!4319))

(declare-fun m!4389 () Bool)

(assert (=> b!7288 m!4389))

(assert (=> b!7153 d!797))

(declare-fun b!7297 () Bool)

(declare-fun e!4049 () Bool)

(declare-fun e!4048 () Bool)

(assert (=> b!7297 (= e!4049 e!4048)))

(declare-fun c!545 () Bool)

(assert (=> b!7297 (= c!545 (validKeyInArray!0 (select (arr!289 _keys!1806) #b00000000000000000000000000000000)))))

(declare-fun b!7298 () Bool)

(declare-fun e!4047 () Bool)

(declare-fun call!182 () Bool)

(assert (=> b!7298 (= e!4047 call!182)))

(declare-fun b!7299 () Bool)

(assert (=> b!7299 (= e!4048 call!182)))

(declare-fun d!799 () Bool)

(declare-fun res!7335 () Bool)

(assert (=> d!799 (=> res!7335 e!4049)))

(assert (=> d!799 (= res!7335 (bvsge #b00000000000000000000000000000000 (size!351 _keys!1806)))))

(assert (=> d!799 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1806 mask!2250) e!4049)))

(declare-fun bm!179 () Bool)

(assert (=> bm!179 (= call!182 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) _keys!1806 mask!2250))))

(declare-fun b!7300 () Bool)

(assert (=> b!7300 (= e!4048 e!4047)))

(declare-fun lt!1519 () (_ BitVec 64))

(assert (=> b!7300 (= lt!1519 (select (arr!289 _keys!1806) #b00000000000000000000000000000000))))

(declare-fun lt!1521 () Unit!133)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!601 (_ BitVec 64) (_ BitVec 32)) Unit!133)

(assert (=> b!7300 (= lt!1521 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1806 lt!1519 #b00000000000000000000000000000000))))

(assert (=> b!7300 (arrayContainsKey!0 _keys!1806 lt!1519 #b00000000000000000000000000000000)))

(declare-fun lt!1520 () Unit!133)

(assert (=> b!7300 (= lt!1520 lt!1521)))

(declare-fun res!7336 () Bool)

(declare-datatypes ((SeekEntryResult!34 0))(
  ( (MissingZero!34 (index!2255 (_ BitVec 32))) (Found!34 (index!2256 (_ BitVec 32))) (Intermediate!34 (undefined!846 Bool) (index!2257 (_ BitVec 32)) (x!2598 (_ BitVec 32))) (Undefined!34) (MissingVacant!34 (index!2258 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!601 (_ BitVec 32)) SeekEntryResult!34)

(assert (=> b!7300 (= res!7336 (= (seekEntryOrOpen!0 (select (arr!289 _keys!1806) #b00000000000000000000000000000000) _keys!1806 mask!2250) (Found!34 #b00000000000000000000000000000000)))))

(assert (=> b!7300 (=> (not res!7336) (not e!4047))))

(assert (= (and d!799 (not res!7335)) b!7297))

(assert (= (and b!7297 c!545) b!7300))

(assert (= (and b!7297 (not c!545)) b!7299))

(assert (= (and b!7300 res!7336) b!7298))

(assert (= (or b!7298 b!7299) bm!179))

(assert (=> b!7297 m!4319))

(assert (=> b!7297 m!4319))

(assert (=> b!7297 m!4325))

(declare-fun m!4391 () Bool)

(assert (=> bm!179 m!4391))

(assert (=> b!7300 m!4319))

(declare-fun m!4393 () Bool)

(assert (=> b!7300 m!4393))

(declare-fun m!4395 () Bool)

(assert (=> b!7300 m!4395))

(assert (=> b!7300 m!4319))

(declare-fun m!4397 () Bool)

(assert (=> b!7300 m!4397))

(assert (=> b!7155 d!799))

(declare-fun d!801 () Bool)

(assert (=> d!801 (= (validMask!0 mask!2250) (and (or (= mask!2250 #b00000000000000000000000000000111) (= mask!2250 #b00000000000000000000000000001111) (= mask!2250 #b00000000000000000000000000011111) (= mask!2250 #b00000000000000000000000000111111) (= mask!2250 #b00000000000000000000000001111111) (= mask!2250 #b00000000000000000000000011111111) (= mask!2250 #b00000000000000000000000111111111) (= mask!2250 #b00000000000000000000001111111111) (= mask!2250 #b00000000000000000000011111111111) (= mask!2250 #b00000000000000000000111111111111) (= mask!2250 #b00000000000000000001111111111111) (= mask!2250 #b00000000000000000011111111111111) (= mask!2250 #b00000000000000000111111111111111) (= mask!2250 #b00000000000000001111111111111111) (= mask!2250 #b00000000000000011111111111111111) (= mask!2250 #b00000000000000111111111111111111) (= mask!2250 #b00000000000001111111111111111111) (= mask!2250 #b00000000000011111111111111111111) (= mask!2250 #b00000000000111111111111111111111) (= mask!2250 #b00000000001111111111111111111111) (= mask!2250 #b00000000011111111111111111111111) (= mask!2250 #b00000000111111111111111111111111) (= mask!2250 #b00000001111111111111111111111111) (= mask!2250 #b00000011111111111111111111111111) (= mask!2250 #b00000111111111111111111111111111) (= mask!2250 #b00001111111111111111111111111111) (= mask!2250 #b00011111111111111111111111111111) (= mask!2250 #b00111111111111111111111111111111)) (bvsle mask!2250 #b00111111111111111111111111111111)))))

(assert (=> start!862 d!801))

(declare-fun d!803 () Bool)

(assert (=> d!803 (= (array_inv!211 _values!1492) (bvsge (size!350 _values!1492) #b00000000000000000000000000000000))))

(assert (=> start!862 d!803))

(declare-fun d!805 () Bool)

(assert (=> d!805 (= (array_inv!212 _keys!1806) (bvsge (size!351 _keys!1806) #b00000000000000000000000000000000))))

(assert (=> start!862 d!805))

(assert (=> b!7151 d!797))

(declare-fun d!807 () Bool)

(declare-fun e!4052 () Bool)

(assert (=> d!807 e!4052))

(declare-fun c!548 () Bool)

(assert (=> d!807 (= c!548 (and (not (= k0!1278 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1278 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun lt!1524 () Unit!133)

(declare-fun choose!139 (array!601 array!599 (_ BitVec 32) (_ BitVec 32) V!621 V!621 (_ BitVec 64) Int) Unit!133)

(assert (=> d!807 (= lt!1524 (choose!139 _keys!1806 _values!1492 mask!2250 extraKeys!1413 zeroValue!1434 minValue!1434 k0!1278 defaultEntry!1495))))

(assert (=> d!807 (validMask!0 mask!2250)))

(assert (=> d!807 (= (lemmaKeyInListMapIsInArray!48 _keys!1806 _values!1492 mask!2250 extraKeys!1413 zeroValue!1434 minValue!1434 k0!1278 defaultEntry!1495) lt!1524)))

(declare-fun b!7305 () Bool)

(assert (=> b!7305 (= e!4052 (arrayContainsKey!0 _keys!1806 k0!1278 #b00000000000000000000000000000000))))

(declare-fun b!7306 () Bool)

(assert (=> b!7306 (= e!4052 (ite (= k0!1278 #b0000000000000000000000000000000000000000000000000000000000000000) (not (= (bvand extraKeys!1413 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1413 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (= (and d!807 c!548) b!7305))

(assert (= (and d!807 (not c!548)) b!7306))

(declare-fun m!4399 () Bool)

(assert (=> d!807 m!4399))

(assert (=> d!807 m!4279))

(assert (=> b!7305 m!4275))

(assert (=> b!7151 d!807))

(declare-fun d!809 () Bool)

(assert (=> d!809 (= (validKeyInArray!0 k0!1278) (and (not (= k0!1278 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1278 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!7159 d!809))

(declare-fun mapNonEmpty!476 () Bool)

(declare-fun mapRes!476 () Bool)

(declare-fun tp!1004 () Bool)

(declare-fun e!4058 () Bool)

(assert (=> mapNonEmpty!476 (= mapRes!476 (and tp!1004 e!4058))))

(declare-fun mapKey!476 () (_ BitVec 32))

(declare-fun mapRest!476 () (Array (_ BitVec 32) ValueCell!150))

(declare-fun mapValue!476 () ValueCell!150)

(assert (=> mapNonEmpty!476 (= mapRest!470 (store mapRest!476 mapKey!476 mapValue!476))))

(declare-fun b!7314 () Bool)

(declare-fun e!4057 () Bool)

(assert (=> b!7314 (= e!4057 tp_is_empty!333)))

(declare-fun condMapEmpty!476 () Bool)

(declare-fun mapDefault!476 () ValueCell!150)

(assert (=> mapNonEmpty!470 (= condMapEmpty!476 (= mapRest!470 ((as const (Array (_ BitVec 32) ValueCell!150)) mapDefault!476)))))

(assert (=> mapNonEmpty!470 (= tp!994 (and e!4057 mapRes!476))))

(declare-fun b!7313 () Bool)

(assert (=> b!7313 (= e!4058 tp_is_empty!333)))

(declare-fun mapIsEmpty!476 () Bool)

(assert (=> mapIsEmpty!476 mapRes!476))

(assert (= (and mapNonEmpty!470 condMapEmpty!476) mapIsEmpty!476))

(assert (= (and mapNonEmpty!470 (not condMapEmpty!476)) mapNonEmpty!476))

(assert (= (and mapNonEmpty!476 ((_ is ValueCellFull!150) mapValue!476)) b!7313))

(assert (= (and mapNonEmpty!470 ((_ is ValueCellFull!150) mapDefault!476)) b!7314))

(declare-fun m!4401 () Bool)

(assert (=> mapNonEmpty!476 m!4401))

(declare-fun b_lambda!337 () Bool)

(assert (= b_lambda!335 (or (and start!862 b_free!255) b_lambda!337)))

(check-sat (not b!7217) (not b!7263) (not d!793) (not b!7208) (not b_lambda!337) (not d!807) (not b!7261) (not b!7305) (not b!7260) (not b!7205) (not bm!171) b_and!405 (not bm!174) (not b!7268) (not b!7215) (not b!7279) (not b!7274) (not b!7277) (not bm!173) (not b!7207) (not bm!179) (not b!7276) (not b!7300) tp_is_empty!333 (not bm!170) (not b!7288) (not d!795) (not bm!155) (not b_next!255) (not mapNonEmpty!476) (not b!7297))
(check-sat b_and!405 (not b_next!255))
