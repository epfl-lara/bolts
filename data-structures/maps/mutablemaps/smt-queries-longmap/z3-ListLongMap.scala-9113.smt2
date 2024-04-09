; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!109500 () Bool)

(assert start!109500)

(declare-fun b_free!28953 () Bool)

(declare-fun b_next!28953 () Bool)

(assert (=> start!109500 (= b_free!28953 (not b_next!28953))))

(declare-fun tp!101978 () Bool)

(declare-fun b_and!47053 () Bool)

(assert (=> start!109500 (= tp!101978 b_and!47053)))

(declare-fun b!1296247 () Bool)

(declare-fun res!861617 () Bool)

(declare-fun e!739554 () Bool)

(assert (=> b!1296247 (=> (not res!861617) (not e!739554))))

(declare-datatypes ((array!86165 0))(
  ( (array!86166 (arr!41579 (Array (_ BitVec 32) (_ BitVec 64))) (size!42130 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!86165)

(declare-fun from!2144 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1296247 (= res!861617 (not (validKeyInArray!0 (select (arr!41579 _keys!1741) from!2144))))))

(declare-fun bm!63347 () Bool)

(declare-datatypes ((V!51227 0))(
  ( (V!51228 (val!17371 Int)) )
))
(declare-datatypes ((tuple2!22524 0))(
  ( (tuple2!22525 (_1!11272 (_ BitVec 64)) (_2!11272 V!51227)) )
))
(declare-datatypes ((List!29691 0))(
  ( (Nil!29688) (Cons!29687 (h!30896 tuple2!22524) (t!43262 List!29691)) )
))
(declare-datatypes ((ListLongMap!20193 0))(
  ( (ListLongMap!20194 (toList!10112 List!29691)) )
))
(declare-fun call!63358 () ListLongMap!20193)

(declare-fun call!63356 () ListLongMap!20193)

(assert (=> bm!63347 (= call!63358 call!63356)))

(declare-fun res!861618 () Bool)

(assert (=> start!109500 (=> (not res!861618) (not e!739554))))

(declare-fun mask!2175 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!109500 (= res!861618 (validMask!0 mask!2175))))

(assert (=> start!109500 e!739554))

(declare-fun tp_is_empty!34593 () Bool)

(assert (=> start!109500 tp_is_empty!34593))

(assert (=> start!109500 true))

(declare-datatypes ((ValueCell!16398 0))(
  ( (ValueCellFull!16398 (v!19972 V!51227)) (EmptyCell!16398) )
))
(declare-datatypes ((array!86167 0))(
  ( (array!86168 (arr!41580 (Array (_ BitVec 32) ValueCell!16398)) (size!42131 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!86167)

(declare-fun e!739557 () Bool)

(declare-fun array_inv!31467 (array!86167) Bool)

(assert (=> start!109500 (and (array_inv!31467 _values!1445) e!739557)))

(declare-fun array_inv!31468 (array!86165) Bool)

(assert (=> start!109500 (array_inv!31468 _keys!1741)))

(assert (=> start!109500 tp!101978))

(declare-fun call!63361 () Bool)

(declare-fun lt!580227 () ListLongMap!20193)

(declare-fun lt!580239 () ListLongMap!20193)

(declare-fun c!124320 () Bool)

(declare-fun bm!63348 () Bool)

(declare-fun k0!1205 () (_ BitVec 64))

(declare-fun c!124321 () Bool)

(declare-fun lt!580231 () ListLongMap!20193)

(declare-fun contains!8167 (ListLongMap!20193 (_ BitVec 64)) Bool)

(assert (=> bm!63348 (= call!63361 (contains!8167 (ite c!124321 lt!580231 (ite c!124320 lt!580227 lt!580239)) k0!1205))))

(declare-fun bm!63349 () Bool)

(declare-fun call!63354 () ListLongMap!20193)

(declare-fun call!63357 () ListLongMap!20193)

(assert (=> bm!63349 (= call!63354 call!63357)))

(declare-fun minValue!1387 () V!51227)

(declare-fun zeroValue!1387 () V!51227)

(declare-fun bm!63350 () Bool)

(declare-fun lt!580225 () ListLongMap!20193)

(declare-fun +!4411 (ListLongMap!20193 tuple2!22524) ListLongMap!20193)

(assert (=> bm!63350 (= call!63357 (+!4411 (ite c!124321 lt!580225 (ite c!124320 lt!580227 lt!580239)) (ite (or c!124321 c!124320) (tuple2!22525 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387) (tuple2!22525 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387))))))

(declare-fun bm!63351 () Bool)

(declare-datatypes ((Unit!42889 0))(
  ( (Unit!42890) )
))
(declare-fun call!63351 () Unit!42889)

(declare-fun addStillNotContains!457 (ListLongMap!20193 (_ BitVec 64) V!51227 (_ BitVec 64)) Unit!42889)

(assert (=> bm!63351 (= call!63351 (addStillNotContains!457 (ite c!124321 lt!580225 (ite c!124320 lt!580227 lt!580239)) (ite c!124321 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!124320 #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000)) (ite c!124321 minValue!1387 (ite c!124320 zeroValue!1387 minValue!1387)) k0!1205))))

(declare-fun b!1296248 () Bool)

(declare-fun res!861613 () Bool)

(assert (=> b!1296248 (=> (not res!861613) (not e!739554))))

(declare-fun extraKeys!1366 () (_ BitVec 32))

(declare-fun defaultEntry!1448 () Int)

(declare-fun getCurrentListMap!5089 (array!86165 array!86167 (_ BitVec 32) (_ BitVec 32) V!51227 V!51227 (_ BitVec 32) Int) ListLongMap!20193)

(assert (=> b!1296248 (= res!861613 (contains!8167 (getCurrentListMap!5089 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) k0!1205))))

(declare-fun b!1296249 () Bool)

(assert (=> b!1296249 (= e!739554 (not true))))

(declare-fun lt!580240 () Unit!42889)

(declare-fun e!739555 () Unit!42889)

(assert (=> b!1296249 (= lt!580240 e!739555)))

(declare-fun lt!580226 () Bool)

(assert (=> b!1296249 (= c!124321 (and (not lt!580226) (not (= (bvand extraKeys!1366 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> b!1296249 (= lt!580226 (= (bvand extraKeys!1366 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(assert (=> b!1296249 (not (contains!8167 (ListLongMap!20194 Nil!29688) k0!1205))))

(declare-fun lt!580236 () Unit!42889)

(declare-fun emptyContainsNothing!196 ((_ BitVec 64)) Unit!42889)

(assert (=> b!1296249 (= lt!580236 (emptyContainsNothing!196 k0!1205))))

(declare-fun mapIsEmpty!53450 () Bool)

(declare-fun mapRes!53450 () Bool)

(assert (=> mapIsEmpty!53450 mapRes!53450))

(declare-fun b!1296250 () Bool)

(declare-fun e!739559 () Bool)

(assert (=> b!1296250 (= e!739557 (and e!739559 mapRes!53450))))

(declare-fun condMapEmpty!53450 () Bool)

(declare-fun mapDefault!53450 () ValueCell!16398)

(assert (=> b!1296250 (= condMapEmpty!53450 (= (arr!41580 _values!1445) ((as const (Array (_ BitVec 32) ValueCell!16398)) mapDefault!53450)))))

(declare-fun bm!63352 () Bool)

(declare-fun getCurrentListMapNoExtraKeys!6125 (array!86165 array!86167 (_ BitVec 32) (_ BitVec 32) V!51227 V!51227 (_ BitVec 32) Int) ListLongMap!20193)

(assert (=> bm!63352 (= call!63356 (getCurrentListMapNoExtraKeys!6125 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448))))

(declare-fun bm!63353 () Bool)

(declare-fun call!63352 () Unit!42889)

(declare-fun call!63353 () Unit!42889)

(assert (=> bm!63353 (= call!63352 call!63353)))

(declare-fun b!1296251 () Bool)

(declare-fun e!739558 () Bool)

(assert (=> b!1296251 (= e!739558 tp_is_empty!34593)))

(declare-fun b!1296252 () Bool)

(declare-fun res!861612 () Bool)

(assert (=> b!1296252 (=> (not res!861612) (not e!739554))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!86165 (_ BitVec 32)) Bool)

(assert (=> b!1296252 (= res!861612 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1741 mask!2175))))

(declare-fun b!1296253 () Bool)

(declare-fun c!124319 () Bool)

(assert (=> b!1296253 (= c!124319 (and (not (= (bvand extraKeys!1366 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!580226))))

(declare-fun e!739561 () Unit!42889)

(declare-fun e!739560 () Unit!42889)

(assert (=> b!1296253 (= e!739561 e!739560)))

(declare-fun b!1296254 () Bool)

(declare-fun res!861615 () Bool)

(assert (=> b!1296254 (=> (not res!861615) (not e!739554))))

(assert (=> b!1296254 (= res!861615 (and (= (size!42131 _values!1445) (bvadd #b00000000000000000000000000000001 mask!2175)) (= (size!42130 _keys!1741) (size!42131 _values!1445)) (bvsge mask!2175 #b00000000000000000000000000000000) (bvsge extraKeys!1366 #b00000000000000000000000000000000) (bvsle extraKeys!1366 #b00000000000000000000000000000011)))))

(declare-fun b!1296255 () Bool)

(declare-fun res!861616 () Bool)

(assert (=> b!1296255 (=> (not res!861616) (not e!739554))))

(assert (=> b!1296255 (= res!861616 (and (not (= k0!1205 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1205 #b1000000000000000000000000000000000000000000000000000000000000000)) (bvsge (bvadd #b00000000000000000000000000000001 from!2144) (size!42130 _keys!1741))))))

(declare-fun bm!63354 () Bool)

(declare-fun call!63359 () Bool)

(assert (=> bm!63354 (= call!63359 call!63361)))

(declare-fun b!1296256 () Bool)

(assert (=> b!1296256 call!63359))

(declare-fun lt!580237 () Unit!42889)

(assert (=> b!1296256 (= lt!580237 call!63352)))

(declare-fun call!63355 () Bool)

(assert (=> b!1296256 (not call!63355)))

(declare-fun lt!580238 () Unit!42889)

(declare-fun call!63350 () Unit!42889)

(assert (=> b!1296256 (= lt!580238 call!63350)))

(assert (=> b!1296256 (= lt!580227 call!63358)))

(assert (=> b!1296256 (= e!739561 lt!580237)))

(declare-fun call!63360 () Bool)

(declare-fun bm!63355 () Bool)

(assert (=> bm!63355 (= call!63360 (contains!8167 (ite c!124321 lt!580225 call!63354) k0!1205))))

(declare-fun b!1296257 () Bool)

(declare-fun lt!580229 () Unit!42889)

(assert (=> b!1296257 (= e!739560 lt!580229)))

(assert (=> b!1296257 (= lt!580239 call!63358)))

(declare-fun lt!580233 () Unit!42889)

(assert (=> b!1296257 (= lt!580233 call!63350)))

(assert (=> b!1296257 (not call!63355)))

(assert (=> b!1296257 (= lt!580229 call!63352)))

(assert (=> b!1296257 call!63359))

(declare-fun bm!63356 () Bool)

(assert (=> bm!63356 (= call!63350 call!63351)))

(declare-fun b!1296258 () Bool)

(assert (=> b!1296258 (= e!739559 tp_is_empty!34593)))

(declare-fun bm!63357 () Bool)

(assert (=> bm!63357 (= call!63355 call!63360)))

(declare-fun b!1296259 () Bool)

(declare-fun lt!580228 () Unit!42889)

(assert (=> b!1296259 (= e!739555 lt!580228)))

(assert (=> b!1296259 (= lt!580225 call!63356)))

(declare-fun lt!580235 () Unit!42889)

(assert (=> b!1296259 (= lt!580235 (addStillNotContains!457 lt!580225 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387 k0!1205))))

(assert (=> b!1296259 (= lt!580231 call!63357)))

(assert (=> b!1296259 (not call!63361)))

(declare-fun lt!580234 () Unit!42889)

(assert (=> b!1296259 (= lt!580234 call!63351)))

(assert (=> b!1296259 (not (contains!8167 (+!4411 lt!580225 (tuple2!22525 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387)) k0!1205))))

(declare-fun lt!580230 () Unit!42889)

(assert (=> b!1296259 (= lt!580230 call!63353)))

(assert (=> b!1296259 false))

(declare-fun lemmaInListMapAfterAddingDiffThenInBefore!61 ((_ BitVec 64) (_ BitVec 64) V!51227 ListLongMap!20193) Unit!42889)

(assert (=> b!1296259 (= lt!580228 (lemmaInListMapAfterAddingDiffThenInBefore!61 k0!1205 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387 lt!580225))))

(declare-fun lt!580232 () Bool)

(assert (=> b!1296259 (= lt!580232 call!63360)))

(declare-fun b!1296260 () Bool)

(declare-fun res!861614 () Bool)

(assert (=> b!1296260 (=> (not res!861614) (not e!739554))))

(assert (=> b!1296260 (= res!861614 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!42130 _keys!1741))))))

(declare-fun mapNonEmpty!53450 () Bool)

(declare-fun tp!101979 () Bool)

(assert (=> mapNonEmpty!53450 (= mapRes!53450 (and tp!101979 e!739558))))

(declare-fun mapValue!53450 () ValueCell!16398)

(declare-fun mapKey!53450 () (_ BitVec 32))

(declare-fun mapRest!53450 () (Array (_ BitVec 32) ValueCell!16398))

(assert (=> mapNonEmpty!53450 (= (arr!41580 _values!1445) (store mapRest!53450 mapKey!53450 mapValue!53450))))

(declare-fun bm!63358 () Bool)

(assert (=> bm!63358 (= call!63353 (lemmaInListMapAfterAddingDiffThenInBefore!61 k0!1205 (ite c!124321 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!124320 #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000)) (ite c!124321 minValue!1387 (ite c!124320 zeroValue!1387 minValue!1387)) (ite c!124321 lt!580231 (ite c!124320 lt!580227 lt!580239))))))

(declare-fun b!1296261 () Bool)

(declare-fun Unit!42891 () Unit!42889)

(assert (=> b!1296261 (= e!739560 Unit!42891)))

(declare-fun b!1296262 () Bool)

(declare-fun res!861611 () Bool)

(assert (=> b!1296262 (=> (not res!861611) (not e!739554))))

(declare-datatypes ((List!29692 0))(
  ( (Nil!29689) (Cons!29688 (h!30897 (_ BitVec 64)) (t!43263 List!29692)) )
))
(declare-fun arrayNoDuplicates!0 (array!86165 (_ BitVec 32) List!29692) Bool)

(assert (=> b!1296262 (= res!861611 (arrayNoDuplicates!0 _keys!1741 #b00000000000000000000000000000000 Nil!29689))))

(declare-fun b!1296263 () Bool)

(assert (=> b!1296263 (= e!739555 e!739561)))

(assert (=> b!1296263 (= c!124320 (and (not lt!580226) (= (bvand extraKeys!1366 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(assert (= (and start!109500 res!861618) b!1296254))

(assert (= (and b!1296254 res!861615) b!1296252))

(assert (= (and b!1296252 res!861612) b!1296262))

(assert (= (and b!1296262 res!861611) b!1296260))

(assert (= (and b!1296260 res!861614) b!1296248))

(assert (= (and b!1296248 res!861613) b!1296255))

(assert (= (and b!1296255 res!861616) b!1296247))

(assert (= (and b!1296247 res!861617) b!1296249))

(assert (= (and b!1296249 c!124321) b!1296259))

(assert (= (and b!1296249 (not c!124321)) b!1296263))

(assert (= (and b!1296263 c!124320) b!1296256))

(assert (= (and b!1296263 (not c!124320)) b!1296253))

(assert (= (and b!1296253 c!124319) b!1296257))

(assert (= (and b!1296253 (not c!124319)) b!1296261))

(assert (= (or b!1296256 b!1296257) bm!63347))

(assert (= (or b!1296256 b!1296257) bm!63354))

(assert (= (or b!1296256 b!1296257) bm!63356))

(assert (= (or b!1296256 b!1296257) bm!63349))

(assert (= (or b!1296256 b!1296257) bm!63353))

(assert (= (or b!1296256 b!1296257) bm!63357))

(assert (= (or b!1296259 bm!63349) bm!63350))

(assert (= (or b!1296259 bm!63354) bm!63348))

(assert (= (or b!1296259 bm!63356) bm!63351))

(assert (= (or b!1296259 bm!63353) bm!63358))

(assert (= (or b!1296259 bm!63347) bm!63352))

(assert (= (or b!1296259 bm!63357) bm!63355))

(assert (= (and b!1296250 condMapEmpty!53450) mapIsEmpty!53450))

(assert (= (and b!1296250 (not condMapEmpty!53450)) mapNonEmpty!53450))

(get-info :version)

(assert (= (and mapNonEmpty!53450 ((_ is ValueCellFull!16398) mapValue!53450)) b!1296251))

(assert (= (and b!1296250 ((_ is ValueCellFull!16398) mapDefault!53450)) b!1296258))

(assert (= start!109500 b!1296250))

(declare-fun m!1188193 () Bool)

(assert (=> bm!63350 m!1188193))

(declare-fun m!1188195 () Bool)

(assert (=> b!1296259 m!1188195))

(declare-fun m!1188197 () Bool)

(assert (=> b!1296259 m!1188197))

(assert (=> b!1296259 m!1188197))

(declare-fun m!1188199 () Bool)

(assert (=> b!1296259 m!1188199))

(declare-fun m!1188201 () Bool)

(assert (=> b!1296259 m!1188201))

(declare-fun m!1188203 () Bool)

(assert (=> b!1296247 m!1188203))

(assert (=> b!1296247 m!1188203))

(declare-fun m!1188205 () Bool)

(assert (=> b!1296247 m!1188205))

(declare-fun m!1188207 () Bool)

(assert (=> b!1296252 m!1188207))

(declare-fun m!1188209 () Bool)

(assert (=> bm!63348 m!1188209))

(declare-fun m!1188211 () Bool)

(assert (=> mapNonEmpty!53450 m!1188211))

(declare-fun m!1188213 () Bool)

(assert (=> b!1296248 m!1188213))

(assert (=> b!1296248 m!1188213))

(declare-fun m!1188215 () Bool)

(assert (=> b!1296248 m!1188215))

(declare-fun m!1188217 () Bool)

(assert (=> start!109500 m!1188217))

(declare-fun m!1188219 () Bool)

(assert (=> start!109500 m!1188219))

(declare-fun m!1188221 () Bool)

(assert (=> start!109500 m!1188221))

(declare-fun m!1188223 () Bool)

(assert (=> bm!63358 m!1188223))

(declare-fun m!1188225 () Bool)

(assert (=> bm!63352 m!1188225))

(declare-fun m!1188227 () Bool)

(assert (=> bm!63351 m!1188227))

(declare-fun m!1188229 () Bool)

(assert (=> b!1296249 m!1188229))

(declare-fun m!1188231 () Bool)

(assert (=> b!1296249 m!1188231))

(declare-fun m!1188233 () Bool)

(assert (=> b!1296262 m!1188233))

(declare-fun m!1188235 () Bool)

(assert (=> bm!63355 m!1188235))

(check-sat (not bm!63348) (not b!1296259) (not b!1296247) b_and!47053 (not b!1296248) (not bm!63352) (not b!1296262) (not bm!63355) (not bm!63350) (not b!1296249) (not mapNonEmpty!53450) (not bm!63358) (not start!109500) (not b_next!28953) tp_is_empty!34593 (not b!1296252) (not bm!63351))
(check-sat b_and!47053 (not b_next!28953))
