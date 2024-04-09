; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!108936 () Bool)

(assert start!108936)

(declare-fun b_free!28413 () Bool)

(declare-fun b_next!28413 () Bool)

(assert (=> start!108936 (= b_free!28413 (not b_next!28413))))

(declare-fun tp!100355 () Bool)

(declare-fun b_and!46497 () Bool)

(assert (=> start!108936 (= tp!100355 b_and!46497)))

(declare-fun b!1286317 () Bool)

(declare-fun res!854547 () Bool)

(declare-fun e!734718 () Bool)

(assert (=> b!1286317 (=> (not res!854547) (not e!734718))))

(declare-fun from!2144 () (_ BitVec 32))

(declare-fun k0!1205 () (_ BitVec 64))

(declare-datatypes ((array!85113 0))(
  ( (array!85114 (arr!41054 (Array (_ BitVec 32) (_ BitVec 64))) (size!41605 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!85113)

(assert (=> b!1286317 (= res!854547 (and (not (= k0!1205 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1205 #b1000000000000000000000000000000000000000000000000000000000000000)) (bvsge (bvadd #b00000000000000000000000000000001 from!2144) (size!41605 _keys!1741))))))

(declare-fun b!1286318 () Bool)

(declare-datatypes ((Unit!42457 0))(
  ( (Unit!42458) )
))
(declare-fun e!734714 () Unit!42457)

(declare-fun Unit!42459 () Unit!42457)

(assert (=> b!1286318 (= e!734714 Unit!42459)))

(declare-fun b!1286319 () Bool)

(declare-fun e!734721 () Bool)

(assert (=> b!1286319 (= e!734718 (not e!734721))))

(declare-fun res!854546 () Bool)

(assert (=> b!1286319 (=> res!854546 e!734721)))

(assert (=> b!1286319 (= res!854546 (= k0!1205 (select (arr!41054 _keys!1741) from!2144)))))

(declare-datatypes ((V!50507 0))(
  ( (V!50508 (val!17101 Int)) )
))
(declare-datatypes ((tuple2!22064 0))(
  ( (tuple2!22065 (_1!11042 (_ BitVec 64)) (_2!11042 V!50507)) )
))
(declare-datatypes ((List!29269 0))(
  ( (Nil!29266) (Cons!29265 (h!30474 tuple2!22064) (t!42830 List!29269)) )
))
(declare-datatypes ((ListLongMap!19733 0))(
  ( (ListLongMap!19734 (toList!9882 List!29269)) )
))
(declare-fun contains!7936 (ListLongMap!19733 (_ BitVec 64)) Bool)

(assert (=> b!1286319 (not (contains!7936 (ListLongMap!19734 Nil!29266) k0!1205))))

(declare-fun lt!577187 () Unit!42457)

(declare-fun emptyContainsNothing!5 ((_ BitVec 64)) Unit!42457)

(assert (=> b!1286319 (= lt!577187 (emptyContainsNothing!5 k0!1205))))

(declare-fun lt!577190 () Unit!42457)

(declare-fun e!734719 () Unit!42457)

(assert (=> b!1286319 (= lt!577190 e!734719)))

(declare-fun c!124115 () Bool)

(declare-fun lt!577192 () Bool)

(declare-fun extraKeys!1366 () (_ BitVec 32))

(assert (=> b!1286319 (= c!124115 (and (not lt!577192) (not (= (bvand extraKeys!1366 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> b!1286319 (= lt!577192 (= (bvand extraKeys!1366 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(declare-fun b!1286320 () Bool)

(declare-fun c!124116 () Bool)

(assert (=> b!1286320 (= c!124116 (and (not (= (bvand extraKeys!1366 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!577192))))

(declare-fun e!734716 () Unit!42457)

(assert (=> b!1286320 (= e!734716 e!734714)))

(declare-fun minValue!1387 () V!50507)

(declare-fun zeroValue!1387 () V!50507)

(declare-fun call!62916 () ListLongMap!19733)

(declare-datatypes ((ValueCell!16128 0))(
  ( (ValueCellFull!16128 (v!19701 V!50507)) (EmptyCell!16128) )
))
(declare-datatypes ((array!85115 0))(
  ( (array!85116 (arr!41055 (Array (_ BitVec 32) ValueCell!16128)) (size!41606 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!85115)

(declare-fun defaultEntry!1448 () Int)

(declare-fun mask!2175 () (_ BitVec 32))

(declare-fun bm!62909 () Bool)

(declare-fun getCurrentListMapNoExtraKeys!6000 (array!85113 array!85115 (_ BitVec 32) (_ BitVec 32) V!50507 V!50507 (_ BitVec 32) Int) ListLongMap!19733)

(assert (=> bm!62909 (= call!62916 (getCurrentListMapNoExtraKeys!6000 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448))))

(declare-fun mapNonEmpty!52637 () Bool)

(declare-fun mapRes!52637 () Bool)

(declare-fun tp!100356 () Bool)

(declare-fun e!734720 () Bool)

(assert (=> mapNonEmpty!52637 (= mapRes!52637 (and tp!100356 e!734720))))

(declare-fun mapValue!52637 () ValueCell!16128)

(declare-fun mapKey!52637 () (_ BitVec 32))

(declare-fun mapRest!52637 () (Array (_ BitVec 32) ValueCell!16128))

(assert (=> mapNonEmpty!52637 (= (arr!41055 _values!1445) (store mapRest!52637 mapKey!52637 mapValue!52637))))

(declare-fun res!854539 () Bool)

(assert (=> start!108936 (=> (not res!854539) (not e!734718))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!108936 (= res!854539 (validMask!0 mask!2175))))

(assert (=> start!108936 e!734718))

(declare-fun tp_is_empty!34053 () Bool)

(assert (=> start!108936 tp_is_empty!34053))

(assert (=> start!108936 true))

(declare-fun e!734717 () Bool)

(declare-fun array_inv!31107 (array!85115) Bool)

(assert (=> start!108936 (and (array_inv!31107 _values!1445) e!734717)))

(declare-fun array_inv!31108 (array!85113) Bool)

(assert (=> start!108936 (array_inv!31108 _keys!1741)))

(assert (=> start!108936 tp!100355))

(declare-fun b!1286321 () Bool)

(declare-fun res!854540 () Bool)

(assert (=> b!1286321 (=> (not res!854540) (not e!734718))))

(declare-fun getCurrentListMap!4894 (array!85113 array!85115 (_ BitVec 32) (_ BitVec 32) V!50507 V!50507 (_ BitVec 32) Int) ListLongMap!19733)

(assert (=> b!1286321 (= res!854540 (contains!7936 (getCurrentListMap!4894 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) k0!1205))))

(declare-fun b!1286322 () Bool)

(assert (=> b!1286322 (= e!734719 e!734716)))

(declare-fun c!124117 () Bool)

(assert (=> b!1286322 (= c!124117 (and (not lt!577192) (= (bvand extraKeys!1366 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1286323 () Bool)

(assert (=> b!1286323 (= e!734720 tp_is_empty!34053)))

(declare-fun bm!62910 () Bool)

(declare-fun call!62914 () Unit!42457)

(declare-fun call!62912 () Unit!42457)

(assert (=> bm!62910 (= call!62914 call!62912)))

(declare-fun b!1286324 () Bool)

(assert (=> b!1286324 (= e!734721 true)))

(declare-fun lt!577194 () V!50507)

(declare-fun +!4288 (ListLongMap!19733 tuple2!22064) ListLongMap!19733)

(assert (=> b!1286324 (not (contains!7936 (+!4288 (ListLongMap!19734 Nil!29266) (tuple2!22065 (select (arr!41054 _keys!1741) from!2144) lt!577194)) k0!1205))))

(declare-fun lt!577188 () Unit!42457)

(declare-fun addStillNotContains!339 (ListLongMap!19733 (_ BitVec 64) V!50507 (_ BitVec 64)) Unit!42457)

(assert (=> b!1286324 (= lt!577188 (addStillNotContains!339 (ListLongMap!19734 Nil!29266) (select (arr!41054 _keys!1741) from!2144) lt!577194 k0!1205))))

(declare-fun get!20896 (ValueCell!16128 V!50507) V!50507)

(declare-fun dynLambda!3493 (Int (_ BitVec 64)) V!50507)

(assert (=> b!1286324 (= lt!577194 (get!20896 (select (arr!41055 _values!1445) from!2144) (dynLambda!3493 defaultEntry!1448 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1286325 () Bool)

(declare-fun res!854542 () Bool)

(assert (=> b!1286325 (=> (not res!854542) (not e!734718))))

(declare-datatypes ((List!29270 0))(
  ( (Nil!29267) (Cons!29266 (h!30475 (_ BitVec 64)) (t!42831 List!29270)) )
))
(declare-fun arrayNoDuplicates!0 (array!85113 (_ BitVec 32) List!29270) Bool)

(assert (=> b!1286325 (= res!854542 (arrayNoDuplicates!0 _keys!1741 #b00000000000000000000000000000000 Nil!29267))))

(declare-fun b!1286326 () Bool)

(declare-fun lt!577189 () Unit!42457)

(assert (=> b!1286326 (= e!734719 lt!577189)))

(declare-fun lt!577184 () ListLongMap!19733)

(assert (=> b!1286326 (= lt!577184 call!62916)))

(declare-fun lt!577186 () ListLongMap!19733)

(assert (=> b!1286326 (= lt!577186 (+!4288 lt!577184 (tuple2!22065 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387)))))

(declare-fun lt!577183 () Unit!42457)

(declare-fun lemmaInListMapAfterAddingDiffThenInBefore!28 ((_ BitVec 64) (_ BitVec 64) V!50507 ListLongMap!19733) Unit!42457)

(assert (=> b!1286326 (= lt!577183 (lemmaInListMapAfterAddingDiffThenInBefore!28 k0!1205 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387 lt!577186))))

(assert (=> b!1286326 (contains!7936 lt!577186 k0!1205)))

(assert (=> b!1286326 (= lt!577189 call!62912)))

(declare-fun call!62913 () Bool)

(assert (=> b!1286326 call!62913))

(declare-fun bm!62911 () Bool)

(declare-fun call!62917 () Bool)

(assert (=> bm!62911 (= call!62917 call!62913)))

(declare-fun b!1286327 () Bool)

(declare-fun res!854545 () Bool)

(assert (=> b!1286327 (=> (not res!854545) (not e!734718))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1286327 (= res!854545 (validKeyInArray!0 (select (arr!41054 _keys!1741) from!2144)))))

(declare-fun b!1286328 () Bool)

(assert (=> b!1286328 call!62917))

(declare-fun lt!577191 () Unit!42457)

(assert (=> b!1286328 (= lt!577191 call!62914)))

(declare-fun lt!577185 () ListLongMap!19733)

(declare-fun call!62915 () ListLongMap!19733)

(assert (=> b!1286328 (= lt!577185 call!62915)))

(assert (=> b!1286328 (= e!734716 lt!577191)))

(declare-fun b!1286329 () Bool)

(declare-fun e!734722 () Bool)

(assert (=> b!1286329 (= e!734722 tp_is_empty!34053)))

(declare-fun mapIsEmpty!52637 () Bool)

(assert (=> mapIsEmpty!52637 mapRes!52637))

(declare-fun b!1286330 () Bool)

(declare-fun res!854543 () Bool)

(assert (=> b!1286330 (=> (not res!854543) (not e!734718))))

(assert (=> b!1286330 (= res!854543 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!41605 _keys!1741))))))

(declare-fun b!1286331 () Bool)

(assert (=> b!1286331 (= e!734717 (and e!734722 mapRes!52637))))

(declare-fun condMapEmpty!52637 () Bool)

(declare-fun mapDefault!52637 () ValueCell!16128)

(assert (=> b!1286331 (= condMapEmpty!52637 (= (arr!41055 _values!1445) ((as const (Array (_ BitVec 32) ValueCell!16128)) mapDefault!52637)))))

(declare-fun b!1286332 () Bool)

(declare-fun res!854544 () Bool)

(assert (=> b!1286332 (=> (not res!854544) (not e!734718))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!85113 (_ BitVec 32)) Bool)

(assert (=> b!1286332 (= res!854544 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1741 mask!2175))))

(declare-fun lt!577193 () ListLongMap!19733)

(declare-fun bm!62912 () Bool)

(assert (=> bm!62912 (= call!62912 (lemmaInListMapAfterAddingDiffThenInBefore!28 k0!1205 (ite (or c!124115 c!124117) #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000) (ite (or c!124115 c!124117) zeroValue!1387 minValue!1387) (ite c!124115 lt!577184 (ite c!124117 lt!577185 lt!577193))))))

(declare-fun bm!62913 () Bool)

(assert (=> bm!62913 (= call!62915 call!62916)))

(declare-fun bm!62914 () Bool)

(assert (=> bm!62914 (= call!62913 (contains!7936 (ite c!124115 lt!577184 (ite c!124117 lt!577185 lt!577193)) k0!1205))))

(declare-fun b!1286333 () Bool)

(declare-fun lt!577182 () Unit!42457)

(assert (=> b!1286333 (= e!734714 lt!577182)))

(assert (=> b!1286333 (= lt!577193 call!62915)))

(assert (=> b!1286333 (= lt!577182 call!62914)))

(assert (=> b!1286333 call!62917))

(declare-fun b!1286334 () Bool)

(declare-fun res!854541 () Bool)

(assert (=> b!1286334 (=> (not res!854541) (not e!734718))))

(assert (=> b!1286334 (= res!854541 (and (= (size!41606 _values!1445) (bvadd #b00000000000000000000000000000001 mask!2175)) (= (size!41605 _keys!1741) (size!41606 _values!1445)) (bvsge mask!2175 #b00000000000000000000000000000000) (bvsge extraKeys!1366 #b00000000000000000000000000000000) (bvsle extraKeys!1366 #b00000000000000000000000000000011)))))

(assert (= (and start!108936 res!854539) b!1286334))

(assert (= (and b!1286334 res!854541) b!1286332))

(assert (= (and b!1286332 res!854544) b!1286325))

(assert (= (and b!1286325 res!854542) b!1286330))

(assert (= (and b!1286330 res!854543) b!1286321))

(assert (= (and b!1286321 res!854540) b!1286317))

(assert (= (and b!1286317 res!854547) b!1286327))

(assert (= (and b!1286327 res!854545) b!1286319))

(assert (= (and b!1286319 c!124115) b!1286326))

(assert (= (and b!1286319 (not c!124115)) b!1286322))

(assert (= (and b!1286322 c!124117) b!1286328))

(assert (= (and b!1286322 (not c!124117)) b!1286320))

(assert (= (and b!1286320 c!124116) b!1286333))

(assert (= (and b!1286320 (not c!124116)) b!1286318))

(assert (= (or b!1286328 b!1286333) bm!62913))

(assert (= (or b!1286328 b!1286333) bm!62910))

(assert (= (or b!1286328 b!1286333) bm!62911))

(assert (= (or b!1286326 bm!62913) bm!62909))

(assert (= (or b!1286326 bm!62910) bm!62912))

(assert (= (or b!1286326 bm!62911) bm!62914))

(assert (= (and b!1286319 (not res!854546)) b!1286324))

(assert (= (and b!1286331 condMapEmpty!52637) mapIsEmpty!52637))

(assert (= (and b!1286331 (not condMapEmpty!52637)) mapNonEmpty!52637))

(get-info :version)

(assert (= (and mapNonEmpty!52637 ((_ is ValueCellFull!16128) mapValue!52637)) b!1286323))

(assert (= (and b!1286331 ((_ is ValueCellFull!16128) mapDefault!52637)) b!1286329))

(assert (= start!108936 b!1286331))

(declare-fun b_lambda!23125 () Bool)

(assert (=> (not b_lambda!23125) (not b!1286324)))

(declare-fun t!42829 () Bool)

(declare-fun tb!11365 () Bool)

(assert (=> (and start!108936 (= defaultEntry!1448 defaultEntry!1448) t!42829) tb!11365))

(declare-fun result!23721 () Bool)

(assert (=> tb!11365 (= result!23721 tp_is_empty!34053)))

(assert (=> b!1286324 t!42829))

(declare-fun b_and!46499 () Bool)

(assert (= b_and!46497 (and (=> t!42829 result!23721) b_and!46499)))

(declare-fun m!1179435 () Bool)

(assert (=> b!1286324 m!1179435))

(declare-fun m!1179437 () Bool)

(assert (=> b!1286324 m!1179437))

(declare-fun m!1179439 () Bool)

(assert (=> b!1286324 m!1179439))

(declare-fun m!1179441 () Bool)

(assert (=> b!1286324 m!1179441))

(declare-fun m!1179443 () Bool)

(assert (=> b!1286324 m!1179443))

(assert (=> b!1286324 m!1179437))

(assert (=> b!1286324 m!1179435))

(declare-fun m!1179445 () Bool)

(assert (=> b!1286324 m!1179445))

(assert (=> b!1286324 m!1179439))

(declare-fun m!1179447 () Bool)

(assert (=> b!1286324 m!1179447))

(assert (=> b!1286324 m!1179441))

(declare-fun m!1179449 () Bool)

(assert (=> bm!62914 m!1179449))

(assert (=> b!1286327 m!1179441))

(assert (=> b!1286327 m!1179441))

(declare-fun m!1179451 () Bool)

(assert (=> b!1286327 m!1179451))

(declare-fun m!1179453 () Bool)

(assert (=> mapNonEmpty!52637 m!1179453))

(declare-fun m!1179455 () Bool)

(assert (=> start!108936 m!1179455))

(declare-fun m!1179457 () Bool)

(assert (=> start!108936 m!1179457))

(declare-fun m!1179459 () Bool)

(assert (=> start!108936 m!1179459))

(declare-fun m!1179461 () Bool)

(assert (=> bm!62909 m!1179461))

(declare-fun m!1179463 () Bool)

(assert (=> b!1286332 m!1179463))

(declare-fun m!1179465 () Bool)

(assert (=> b!1286325 m!1179465))

(declare-fun m!1179467 () Bool)

(assert (=> b!1286326 m!1179467))

(declare-fun m!1179469 () Bool)

(assert (=> b!1286326 m!1179469))

(declare-fun m!1179471 () Bool)

(assert (=> b!1286326 m!1179471))

(declare-fun m!1179473 () Bool)

(assert (=> b!1286321 m!1179473))

(assert (=> b!1286321 m!1179473))

(declare-fun m!1179475 () Bool)

(assert (=> b!1286321 m!1179475))

(declare-fun m!1179477 () Bool)

(assert (=> bm!62912 m!1179477))

(assert (=> b!1286319 m!1179441))

(declare-fun m!1179479 () Bool)

(assert (=> b!1286319 m!1179479))

(declare-fun m!1179481 () Bool)

(assert (=> b!1286319 m!1179481))

(check-sat (not b!1286332) (not b_next!28413) (not b!1286321) (not b!1286327) (not b!1286326) (not b!1286324) (not start!108936) (not mapNonEmpty!52637) b_and!46499 tp_is_empty!34053 (not b!1286325) (not b!1286319) (not b_lambda!23125) (not bm!62909) (not bm!62914) (not bm!62912))
(check-sat b_and!46499 (not b_next!28413))
