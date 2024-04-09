; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!109494 () Bool)

(assert start!109494)

(declare-fun b_free!28947 () Bool)

(declare-fun b_next!28947 () Bool)

(assert (=> start!109494 (= b_free!28947 (not b_next!28947))))

(declare-fun tp!101961 () Bool)

(declare-fun b_and!47047 () Bool)

(assert (=> start!109494 (= tp!101961 b_and!47047)))

(declare-fun b!1296094 () Bool)

(declare-fun res!861546 () Bool)

(declare-fun e!739486 () Bool)

(assert (=> b!1296094 (=> (not res!861546) (not e!739486))))

(declare-fun from!2144 () (_ BitVec 32))

(declare-datatypes ((array!86153 0))(
  ( (array!86154 (arr!41573 (Array (_ BitVec 32) (_ BitVec 64))) (size!42124 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!86153)

(assert (=> b!1296094 (= res!861546 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!42124 _keys!1741))))))

(declare-fun b!1296095 () Bool)

(declare-fun e!739485 () Bool)

(declare-fun tp_is_empty!34587 () Bool)

(assert (=> b!1296095 (= e!739485 tp_is_empty!34587)))

(declare-fun b!1296096 () Bool)

(declare-fun res!861545 () Bool)

(assert (=> b!1296096 (=> (not res!861545) (not e!739486))))

(declare-fun mask!2175 () (_ BitVec 32))

(declare-datatypes ((V!51219 0))(
  ( (V!51220 (val!17368 Int)) )
))
(declare-datatypes ((ValueCell!16395 0))(
  ( (ValueCellFull!16395 (v!19969 V!51219)) (EmptyCell!16395) )
))
(declare-datatypes ((array!86155 0))(
  ( (array!86156 (arr!41574 (Array (_ BitVec 32) ValueCell!16395)) (size!42125 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!86155)

(declare-fun extraKeys!1366 () (_ BitVec 32))

(assert (=> b!1296096 (= res!861545 (and (= (size!42125 _values!1445) (bvadd #b00000000000000000000000000000001 mask!2175)) (= (size!42124 _keys!1741) (size!42125 _values!1445)) (bvsge mask!2175 #b00000000000000000000000000000000) (bvsge extraKeys!1366 #b00000000000000000000000000000000) (bvsle extraKeys!1366 #b00000000000000000000000000000011)))))

(declare-fun b!1296097 () Bool)

(declare-datatypes ((Unit!42881 0))(
  ( (Unit!42882) )
))
(declare-fun e!739487 () Unit!42881)

(declare-fun lt!580091 () Unit!42881)

(assert (=> b!1296097 (= e!739487 lt!580091)))

(declare-datatypes ((tuple2!22518 0))(
  ( (tuple2!22519 (_1!11269 (_ BitVec 64)) (_2!11269 V!51219)) )
))
(declare-datatypes ((List!29686 0))(
  ( (Nil!29683) (Cons!29682 (h!30891 tuple2!22518) (t!43257 List!29686)) )
))
(declare-datatypes ((ListLongMap!20187 0))(
  ( (ListLongMap!20188 (toList!10109 List!29686)) )
))
(declare-fun lt!580093 () ListLongMap!20187)

(declare-fun call!63243 () ListLongMap!20187)

(assert (=> b!1296097 (= lt!580093 call!63243)))

(declare-fun lt!580089 () Unit!42881)

(declare-fun call!63253 () Unit!42881)

(assert (=> b!1296097 (= lt!580089 call!63253)))

(declare-fun call!63242 () Bool)

(assert (=> b!1296097 (not call!63242)))

(declare-fun call!63249 () Unit!42881)

(assert (=> b!1296097 (= lt!580091 call!63249)))

(declare-fun call!63246 () Bool)

(assert (=> b!1296097 call!63246))

(declare-fun mapIsEmpty!53441 () Bool)

(declare-fun mapRes!53441 () Bool)

(assert (=> mapIsEmpty!53441 mapRes!53441))

(declare-fun bm!63239 () Bool)

(declare-fun call!63252 () ListLongMap!20187)

(declare-fun call!63250 () ListLongMap!20187)

(assert (=> bm!63239 (= call!63252 call!63250)))

(declare-fun b!1296098 () Bool)

(assert (=> b!1296098 call!63246))

(declare-fun lt!580082 () Unit!42881)

(assert (=> b!1296098 (= lt!580082 call!63249)))

(assert (=> b!1296098 (not call!63242)))

(declare-fun lt!580088 () Unit!42881)

(assert (=> b!1296098 (= lt!580088 call!63253)))

(declare-fun lt!580087 () ListLongMap!20187)

(assert (=> b!1296098 (= lt!580087 call!63243)))

(declare-fun e!739483 () Unit!42881)

(assert (=> b!1296098 (= e!739483 lt!580082)))

(declare-fun b!1296099 () Bool)

(declare-fun e!739482 () Bool)

(assert (=> b!1296099 (= e!739482 tp_is_empty!34587)))

(declare-fun b!1296100 () Bool)

(declare-fun res!861539 () Bool)

(assert (=> b!1296100 (=> (not res!861539) (not e!739486))))

(declare-fun minValue!1387 () V!51219)

(declare-fun zeroValue!1387 () V!51219)

(declare-fun k0!1205 () (_ BitVec 64))

(declare-fun defaultEntry!1448 () Int)

(declare-fun contains!8164 (ListLongMap!20187 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5086 (array!86153 array!86155 (_ BitVec 32) (_ BitVec 32) V!51219 V!51219 (_ BitVec 32) Int) ListLongMap!20187)

(assert (=> b!1296100 (= res!861539 (contains!8164 (getCurrentListMap!5086 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) k0!1205))))

(declare-fun b!1296101 () Bool)

(declare-fun e!739489 () Bool)

(assert (=> b!1296101 (= e!739489 (and e!739482 mapRes!53441))))

(declare-fun condMapEmpty!53441 () Bool)

(declare-fun mapDefault!53441 () ValueCell!16395)

(assert (=> b!1296101 (= condMapEmpty!53441 (= (arr!41574 _values!1445) ((as const (Array (_ BitVec 32) ValueCell!16395)) mapDefault!53441)))))

(declare-fun bm!63240 () Bool)

(declare-fun call!63248 () Unit!42881)

(assert (=> bm!63240 (= call!63253 call!63248)))

(declare-fun c!124293 () Bool)

(declare-fun lt!580092 () ListLongMap!20187)

(declare-fun call!63244 () Bool)

(declare-fun bm!63241 () Bool)

(declare-fun c!124292 () Bool)

(assert (=> bm!63241 (= call!63244 (contains!8164 (ite c!124293 lt!580092 (ite c!124292 lt!580087 lt!580093)) k0!1205))))

(declare-fun b!1296103 () Bool)

(declare-fun e!739484 () Unit!42881)

(declare-fun lt!580094 () Unit!42881)

(assert (=> b!1296103 (= e!739484 lt!580094)))

(declare-fun call!63247 () ListLongMap!20187)

(assert (=> b!1296103 (= lt!580092 call!63247)))

(declare-fun lt!580085 () Unit!42881)

(declare-fun addStillNotContains!454 (ListLongMap!20187 (_ BitVec 64) V!51219 (_ BitVec 64)) Unit!42881)

(assert (=> b!1296103 (= lt!580085 (addStillNotContains!454 lt!580092 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387 k0!1205))))

(declare-fun lt!580095 () ListLongMap!20187)

(declare-fun +!4409 (ListLongMap!20187 tuple2!22518) ListLongMap!20187)

(assert (=> b!1296103 (= lt!580095 (+!4409 lt!580092 (tuple2!22519 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387)))))

(declare-fun call!63251 () Bool)

(assert (=> b!1296103 (not call!63251)))

(declare-fun lt!580081 () Unit!42881)

(assert (=> b!1296103 (= lt!580081 call!63248)))

(assert (=> b!1296103 (not (contains!8164 call!63250 k0!1205))))

(declare-fun lt!580090 () Unit!42881)

(declare-fun call!63245 () Unit!42881)

(assert (=> b!1296103 (= lt!580090 call!63245)))

(assert (=> b!1296103 false))

(declare-fun lemmaInListMapAfterAddingDiffThenInBefore!59 ((_ BitVec 64) (_ BitVec 64) V!51219 ListLongMap!20187) Unit!42881)

(assert (=> b!1296103 (= lt!580094 (lemmaInListMapAfterAddingDiffThenInBefore!59 k0!1205 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387 lt!580092))))

(declare-fun lt!580096 () Bool)

(assert (=> b!1296103 (= lt!580096 call!63244)))

(declare-fun bm!63242 () Bool)

(assert (=> bm!63242 (= call!63243 call!63247)))

(declare-fun b!1296104 () Bool)

(declare-fun res!861542 () Bool)

(assert (=> b!1296104 (=> (not res!861542) (not e!739486))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1296104 (= res!861542 (not (validKeyInArray!0 (select (arr!41573 _keys!1741) from!2144))))))

(declare-fun bm!63243 () Bool)

(assert (=> bm!63243 (= call!63251 (contains!8164 (ite c!124293 lt!580095 call!63252) k0!1205))))

(declare-fun mapNonEmpty!53441 () Bool)

(declare-fun tp!101960 () Bool)

(assert (=> mapNonEmpty!53441 (= mapRes!53441 (and tp!101960 e!739485))))

(declare-fun mapValue!53441 () ValueCell!16395)

(declare-fun mapKey!53441 () (_ BitVec 32))

(declare-fun mapRest!53441 () (Array (_ BitVec 32) ValueCell!16395))

(assert (=> mapNonEmpty!53441 (= (arr!41574 _values!1445) (store mapRest!53441 mapKey!53441 mapValue!53441))))

(declare-fun b!1296105 () Bool)

(declare-fun Unit!42883 () Unit!42881)

(assert (=> b!1296105 (= e!739487 Unit!42883)))

(declare-fun bm!63244 () Bool)

(declare-fun getCurrentListMapNoExtraKeys!6124 (array!86153 array!86155 (_ BitVec 32) (_ BitVec 32) V!51219 V!51219 (_ BitVec 32) Int) ListLongMap!20187)

(assert (=> bm!63244 (= call!63247 (getCurrentListMapNoExtraKeys!6124 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448))))

(declare-fun bm!63245 () Bool)

(assert (=> bm!63245 (= call!63242 call!63251)))

(declare-fun b!1296106 () Bool)

(declare-fun res!861543 () Bool)

(assert (=> b!1296106 (=> (not res!861543) (not e!739486))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!86153 (_ BitVec 32)) Bool)

(assert (=> b!1296106 (= res!861543 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1741 mask!2175))))

(declare-fun bm!63246 () Bool)

(assert (=> bm!63246 (= call!63246 call!63244)))

(declare-fun bm!63247 () Bool)

(assert (=> bm!63247 (= call!63249 call!63245)))

(declare-fun b!1296107 () Bool)

(assert (=> b!1296107 (= e!739484 e!739483)))

(declare-fun lt!580083 () Bool)

(assert (=> b!1296107 (= c!124292 (and (not lt!580083) (= (bvand extraKeys!1366 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun bm!63248 () Bool)

(assert (=> bm!63248 (= call!63245 (lemmaInListMapAfterAddingDiffThenInBefore!59 k0!1205 (ite c!124293 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!124292 #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000)) (ite c!124293 minValue!1387 (ite c!124292 zeroValue!1387 minValue!1387)) (ite c!124293 lt!580095 (ite c!124292 lt!580087 lt!580093))))))

(declare-fun b!1296108 () Bool)

(declare-fun res!861541 () Bool)

(assert (=> b!1296108 (=> (not res!861541) (not e!739486))))

(assert (=> b!1296108 (= res!861541 (and (not (= k0!1205 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1205 #b1000000000000000000000000000000000000000000000000000000000000000)) (bvsge (bvadd #b00000000000000000000000000000001 from!2144) (size!42124 _keys!1741))))))

(declare-fun bm!63249 () Bool)

(assert (=> bm!63249 (= call!63250 (+!4409 (ite c!124293 lt!580092 (ite c!124292 lt!580087 lt!580093)) (ite c!124293 (tuple2!22519 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387) (ite c!124292 (tuple2!22519 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387) (tuple2!22519 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387)))))))

(declare-fun b!1296109 () Bool)

(declare-fun res!861540 () Bool)

(assert (=> b!1296109 (=> (not res!861540) (not e!739486))))

(declare-datatypes ((List!29687 0))(
  ( (Nil!29684) (Cons!29683 (h!30892 (_ BitVec 64)) (t!43258 List!29687)) )
))
(declare-fun arrayNoDuplicates!0 (array!86153 (_ BitVec 32) List!29687) Bool)

(assert (=> b!1296109 (= res!861540 (arrayNoDuplicates!0 _keys!1741 #b00000000000000000000000000000000 Nil!29684))))

(declare-fun bm!63250 () Bool)

(assert (=> bm!63250 (= call!63248 (addStillNotContains!454 (ite c!124293 lt!580092 (ite c!124292 lt!580087 lt!580093)) (ite c!124293 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!124292 #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000)) (ite c!124293 minValue!1387 (ite c!124292 zeroValue!1387 minValue!1387)) k0!1205))))

(declare-fun b!1296110 () Bool)

(declare-fun c!124294 () Bool)

(assert (=> b!1296110 (= c!124294 (and (not (= (bvand extraKeys!1366 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!580083))))

(assert (=> b!1296110 (= e!739483 e!739487)))

(declare-fun b!1296102 () Bool)

(assert (=> b!1296102 (= e!739486 (not true))))

(declare-fun lt!580084 () Unit!42881)

(assert (=> b!1296102 (= lt!580084 e!739484)))

(assert (=> b!1296102 (= c!124293 (and (not lt!580083) (not (= (bvand extraKeys!1366 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> b!1296102 (= lt!580083 (= (bvand extraKeys!1366 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(assert (=> b!1296102 (not (contains!8164 (ListLongMap!20188 Nil!29683) k0!1205))))

(declare-fun lt!580086 () Unit!42881)

(declare-fun emptyContainsNothing!194 ((_ BitVec 64)) Unit!42881)

(assert (=> b!1296102 (= lt!580086 (emptyContainsNothing!194 k0!1205))))

(declare-fun res!861544 () Bool)

(assert (=> start!109494 (=> (not res!861544) (not e!739486))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!109494 (= res!861544 (validMask!0 mask!2175))))

(assert (=> start!109494 e!739486))

(assert (=> start!109494 tp_is_empty!34587))

(assert (=> start!109494 true))

(declare-fun array_inv!31463 (array!86155) Bool)

(assert (=> start!109494 (and (array_inv!31463 _values!1445) e!739489)))

(declare-fun array_inv!31464 (array!86153) Bool)

(assert (=> start!109494 (array_inv!31464 _keys!1741)))

(assert (=> start!109494 tp!101961))

(assert (= (and start!109494 res!861544) b!1296096))

(assert (= (and b!1296096 res!861545) b!1296106))

(assert (= (and b!1296106 res!861543) b!1296109))

(assert (= (and b!1296109 res!861540) b!1296094))

(assert (= (and b!1296094 res!861546) b!1296100))

(assert (= (and b!1296100 res!861539) b!1296108))

(assert (= (and b!1296108 res!861541) b!1296104))

(assert (= (and b!1296104 res!861542) b!1296102))

(assert (= (and b!1296102 c!124293) b!1296103))

(assert (= (and b!1296102 (not c!124293)) b!1296107))

(assert (= (and b!1296107 c!124292) b!1296098))

(assert (= (and b!1296107 (not c!124292)) b!1296110))

(assert (= (and b!1296110 c!124294) b!1296097))

(assert (= (and b!1296110 (not c!124294)) b!1296105))

(assert (= (or b!1296098 b!1296097) bm!63240))

(assert (= (or b!1296098 b!1296097) bm!63247))

(assert (= (or b!1296098 b!1296097) bm!63246))

(assert (= (or b!1296098 b!1296097) bm!63242))

(assert (= (or b!1296098 b!1296097) bm!63239))

(assert (= (or b!1296098 b!1296097) bm!63245))

(assert (= (or b!1296103 bm!63247) bm!63248))

(assert (= (or b!1296103 bm!63240) bm!63250))

(assert (= (or b!1296103 bm!63246) bm!63241))

(assert (= (or b!1296103 bm!63239) bm!63249))

(assert (= (or b!1296103 bm!63245) bm!63243))

(assert (= (or b!1296103 bm!63242) bm!63244))

(assert (= (and b!1296101 condMapEmpty!53441) mapIsEmpty!53441))

(assert (= (and b!1296101 (not condMapEmpty!53441)) mapNonEmpty!53441))

(get-info :version)

(assert (= (and mapNonEmpty!53441 ((_ is ValueCellFull!16395) mapValue!53441)) b!1296095))

(assert (= (and b!1296101 ((_ is ValueCellFull!16395) mapDefault!53441)) b!1296099))

(assert (= start!109494 b!1296101))

(declare-fun m!1188061 () Bool)

(assert (=> b!1296106 m!1188061))

(declare-fun m!1188063 () Bool)

(assert (=> start!109494 m!1188063))

(declare-fun m!1188065 () Bool)

(assert (=> start!109494 m!1188065))

(declare-fun m!1188067 () Bool)

(assert (=> start!109494 m!1188067))

(declare-fun m!1188069 () Bool)

(assert (=> bm!63248 m!1188069))

(declare-fun m!1188071 () Bool)

(assert (=> bm!63244 m!1188071))

(declare-fun m!1188073 () Bool)

(assert (=> bm!63243 m!1188073))

(declare-fun m!1188075 () Bool)

(assert (=> b!1296100 m!1188075))

(assert (=> b!1296100 m!1188075))

(declare-fun m!1188077 () Bool)

(assert (=> b!1296100 m!1188077))

(declare-fun m!1188079 () Bool)

(assert (=> bm!63241 m!1188079))

(declare-fun m!1188081 () Bool)

(assert (=> b!1296103 m!1188081))

(declare-fun m!1188083 () Bool)

(assert (=> b!1296103 m!1188083))

(declare-fun m!1188085 () Bool)

(assert (=> b!1296103 m!1188085))

(declare-fun m!1188087 () Bool)

(assert (=> b!1296103 m!1188087))

(declare-fun m!1188089 () Bool)

(assert (=> b!1296109 m!1188089))

(declare-fun m!1188091 () Bool)

(assert (=> bm!63249 m!1188091))

(declare-fun m!1188093 () Bool)

(assert (=> b!1296104 m!1188093))

(assert (=> b!1296104 m!1188093))

(declare-fun m!1188095 () Bool)

(assert (=> b!1296104 m!1188095))

(declare-fun m!1188097 () Bool)

(assert (=> b!1296102 m!1188097))

(declare-fun m!1188099 () Bool)

(assert (=> b!1296102 m!1188099))

(declare-fun m!1188101 () Bool)

(assert (=> bm!63250 m!1188101))

(declare-fun m!1188103 () Bool)

(assert (=> mapNonEmpty!53441 m!1188103))

(check-sat (not bm!63248) (not bm!63250) (not b!1296100) (not b!1296106) b_and!47047 tp_is_empty!34587 (not b!1296102) (not bm!63249) (not mapNonEmpty!53441) (not b!1296103) (not start!109494) (not b!1296109) (not bm!63241) (not bm!63244) (not b!1296104) (not bm!63243) (not b_next!28947))
(check-sat b_and!47047 (not b_next!28947))
