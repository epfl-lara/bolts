; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!109836 () Bool)

(assert start!109836)

(declare-fun b_free!29193 () Bool)

(declare-fun b_next!29193 () Bool)

(assert (=> start!109836 (= b_free!29193 (not b_next!29193))))

(declare-fun tp!102713 () Bool)

(declare-fun b_and!47317 () Bool)

(assert (=> start!109836 (= tp!102713 b_and!47317)))

(declare-fun b!1300555 () Bool)

(declare-fun e!741891 () Bool)

(assert (=> b!1300555 (= e!741891 (not true))))

(declare-fun k0!1205 () (_ BitVec 64))

(declare-datatypes ((V!51547 0))(
  ( (V!51548 (val!17491 Int)) )
))
(declare-datatypes ((tuple2!22712 0))(
  ( (tuple2!22713 (_1!11366 (_ BitVec 64)) (_2!11366 V!51547)) )
))
(declare-datatypes ((List!29870 0))(
  ( (Nil!29867) (Cons!29866 (h!31075 tuple2!22712) (t!43451 List!29870)) )
))
(declare-datatypes ((ListLongMap!20381 0))(
  ( (ListLongMap!20382 (toList!10206 List!29870)) )
))
(declare-fun contains!8268 (ListLongMap!20381 (_ BitVec 64)) Bool)

(assert (=> b!1300555 (not (contains!8268 (ListLongMap!20382 Nil!29867) k0!1205))))

(declare-datatypes ((Unit!42988 0))(
  ( (Unit!42989) )
))
(declare-fun lt!581397 () Unit!42988)

(declare-fun emptyContainsNothing!200 ((_ BitVec 64)) Unit!42988)

(assert (=> b!1300555 (= lt!581397 (emptyContainsNothing!200 k0!1205))))

(declare-fun lt!581400 () Unit!42988)

(declare-fun e!741895 () Unit!42988)

(assert (=> b!1300555 (= lt!581400 e!741895)))

(declare-fun c!124557 () Bool)

(declare-fun lt!581403 () Bool)

(declare-fun extraKeys!1366 () (_ BitVec 32))

(assert (=> b!1300555 (= c!124557 (and (not lt!581403) (not (= (bvand extraKeys!1366 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> b!1300555 (= lt!581403 (= (bvand extraKeys!1366 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(declare-fun c!124559 () Bool)

(declare-fun bm!63684 () Bool)

(declare-fun lt!581402 () ListLongMap!20381)

(declare-fun call!63692 () Bool)

(declare-fun lt!581401 () ListLongMap!20381)

(declare-fun lt!581404 () ListLongMap!20381)

(assert (=> bm!63684 (= call!63692 (contains!8268 (ite c!124557 lt!581402 (ite c!124559 lt!581404 lt!581401)) k0!1205))))

(declare-fun b!1300556 () Bool)

(declare-fun res!864316 () Bool)

(assert (=> b!1300556 (=> (not res!864316) (not e!741891))))

(declare-datatypes ((array!86639 0))(
  ( (array!86640 (arr!41811 (Array (_ BitVec 32) (_ BitVec 64))) (size!42362 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!86639)

(declare-fun from!2144 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1300556 (= res!864316 (validKeyInArray!0 (select (arr!41811 _keys!1741) from!2144)))))

(declare-fun mapIsEmpty!53825 () Bool)

(declare-fun mapRes!53825 () Bool)

(assert (=> mapIsEmpty!53825 mapRes!53825))

(declare-fun b!1300557 () Bool)

(declare-fun call!63689 () Bool)

(assert (=> b!1300557 call!63689))

(declare-fun lt!581399 () Unit!42988)

(declare-fun call!63687 () Unit!42988)

(assert (=> b!1300557 (= lt!581399 call!63687)))

(declare-fun call!63688 () ListLongMap!20381)

(assert (=> b!1300557 (= lt!581404 call!63688)))

(declare-fun e!741888 () Unit!42988)

(assert (=> b!1300557 (= e!741888 lt!581399)))

(declare-fun b!1300558 () Bool)

(declare-fun e!741890 () Bool)

(declare-fun tp_is_empty!34833 () Bool)

(assert (=> b!1300558 (= e!741890 tp_is_empty!34833)))

(declare-fun b!1300559 () Bool)

(declare-fun e!741893 () Unit!42988)

(declare-fun lt!581395 () Unit!42988)

(assert (=> b!1300559 (= e!741893 lt!581395)))

(assert (=> b!1300559 (= lt!581401 call!63688)))

(assert (=> b!1300559 (= lt!581395 call!63687)))

(assert (=> b!1300559 call!63689))

(declare-fun b!1300560 () Bool)

(declare-fun res!864314 () Bool)

(assert (=> b!1300560 (=> (not res!864314) (not e!741891))))

(declare-fun minValue!1387 () V!51547)

(declare-fun zeroValue!1387 () V!51547)

(declare-datatypes ((ValueCell!16518 0))(
  ( (ValueCellFull!16518 (v!20097 V!51547)) (EmptyCell!16518) )
))
(declare-datatypes ((array!86641 0))(
  ( (array!86642 (arr!41812 (Array (_ BitVec 32) ValueCell!16518)) (size!42363 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!86641)

(declare-fun defaultEntry!1448 () Int)

(declare-fun mask!2175 () (_ BitVec 32))

(declare-fun getCurrentListMap!5178 (array!86639 array!86641 (_ BitVec 32) (_ BitVec 32) V!51547 V!51547 (_ BitVec 32) Int) ListLongMap!20381)

(assert (=> b!1300560 (= res!864314 (contains!8268 (getCurrentListMap!5178 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) k0!1205))))

(declare-fun bm!63686 () Bool)

(declare-fun call!63690 () Unit!42988)

(assert (=> bm!63686 (= call!63687 call!63690)))

(declare-fun b!1300561 () Bool)

(declare-fun e!741892 () Bool)

(assert (=> b!1300561 (= e!741892 (and e!741890 mapRes!53825))))

(declare-fun condMapEmpty!53825 () Bool)

(declare-fun mapDefault!53825 () ValueCell!16518)

(assert (=> b!1300561 (= condMapEmpty!53825 (= (arr!41812 _values!1445) ((as const (Array (_ BitVec 32) ValueCell!16518)) mapDefault!53825)))))

(declare-fun res!864318 () Bool)

(assert (=> start!109836 (=> (not res!864318) (not e!741891))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!109836 (= res!864318 (validMask!0 mask!2175))))

(assert (=> start!109836 e!741891))

(assert (=> start!109836 tp_is_empty!34833))

(assert (=> start!109836 true))

(declare-fun array_inv!31635 (array!86641) Bool)

(assert (=> start!109836 (and (array_inv!31635 _values!1445) e!741892)))

(declare-fun array_inv!31636 (array!86639) Bool)

(assert (=> start!109836 (array_inv!31636 _keys!1741)))

(assert (=> start!109836 tp!102713))

(declare-fun bm!63685 () Bool)

(declare-fun call!63691 () ListLongMap!20381)

(assert (=> bm!63685 (= call!63688 call!63691)))

(declare-fun b!1300562 () Bool)

(declare-fun e!741894 () Bool)

(assert (=> b!1300562 (= e!741894 tp_is_empty!34833)))

(declare-fun b!1300563 () Bool)

(declare-fun res!864313 () Bool)

(assert (=> b!1300563 (=> (not res!864313) (not e!741891))))

(assert (=> b!1300563 (= res!864313 (and (not (= k0!1205 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1205 #b1000000000000000000000000000000000000000000000000000000000000000)) (bvsge (bvadd #b00000000000000000000000000000001 from!2144) (size!42362 _keys!1741))))))

(declare-fun b!1300564 () Bool)

(declare-fun c!124558 () Bool)

(assert (=> b!1300564 (= c!124558 (and (not (= (bvand extraKeys!1366 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!581403))))

(assert (=> b!1300564 (= e!741888 e!741893)))

(declare-fun b!1300565 () Bool)

(assert (=> b!1300565 (= e!741895 e!741888)))

(assert (=> b!1300565 (= c!124559 (and (not lt!581403) (= (bvand extraKeys!1366 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun bm!63687 () Bool)

(assert (=> bm!63687 (= call!63689 call!63692)))

(declare-fun b!1300566 () Bool)

(declare-fun lt!581396 () Unit!42988)

(assert (=> b!1300566 (= e!741895 lt!581396)))

(declare-fun lt!581398 () ListLongMap!20381)

(assert (=> b!1300566 (= lt!581398 call!63691)))

(declare-fun +!4433 (ListLongMap!20381 tuple2!22712) ListLongMap!20381)

(assert (=> b!1300566 (= lt!581402 (+!4433 lt!581398 (tuple2!22713 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387)))))

(declare-fun lt!581394 () Unit!42988)

(assert (=> b!1300566 (= lt!581394 call!63690)))

(assert (=> b!1300566 call!63692))

(declare-fun lemmaInListMapAfterAddingDiffThenInBefore!70 ((_ BitVec 64) (_ BitVec 64) V!51547 ListLongMap!20381) Unit!42988)

(assert (=> b!1300566 (= lt!581396 (lemmaInListMapAfterAddingDiffThenInBefore!70 k0!1205 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387 lt!581398))))

(assert (=> b!1300566 (contains!8268 lt!581398 k0!1205)))

(declare-fun bm!63688 () Bool)

(declare-fun getCurrentListMapNoExtraKeys!6146 (array!86639 array!86641 (_ BitVec 32) (_ BitVec 32) V!51547 V!51547 (_ BitVec 32) Int) ListLongMap!20381)

(assert (=> bm!63688 (= call!63691 (getCurrentListMapNoExtraKeys!6146 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448))))

(declare-fun bm!63689 () Bool)

(assert (=> bm!63689 (= call!63690 (lemmaInListMapAfterAddingDiffThenInBefore!70 k0!1205 (ite c!124557 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!124559 #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000)) (ite c!124557 minValue!1387 (ite c!124559 zeroValue!1387 minValue!1387)) (ite c!124557 lt!581402 (ite c!124559 lt!581404 lt!581401))))))

(declare-fun mapNonEmpty!53825 () Bool)

(declare-fun tp!102714 () Bool)

(assert (=> mapNonEmpty!53825 (= mapRes!53825 (and tp!102714 e!741894))))

(declare-fun mapValue!53825 () ValueCell!16518)

(declare-fun mapRest!53825 () (Array (_ BitVec 32) ValueCell!16518))

(declare-fun mapKey!53825 () (_ BitVec 32))

(assert (=> mapNonEmpty!53825 (= (arr!41812 _values!1445) (store mapRest!53825 mapKey!53825 mapValue!53825))))

(declare-fun b!1300567 () Bool)

(declare-fun Unit!42990 () Unit!42988)

(assert (=> b!1300567 (= e!741893 Unit!42990)))

(declare-fun b!1300568 () Bool)

(declare-fun res!864315 () Bool)

(assert (=> b!1300568 (=> (not res!864315) (not e!741891))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!86639 (_ BitVec 32)) Bool)

(assert (=> b!1300568 (= res!864315 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1741 mask!2175))))

(declare-fun b!1300569 () Bool)

(declare-fun res!864319 () Bool)

(assert (=> b!1300569 (=> (not res!864319) (not e!741891))))

(assert (=> b!1300569 (= res!864319 (and (= (size!42363 _values!1445) (bvadd #b00000000000000000000000000000001 mask!2175)) (= (size!42362 _keys!1741) (size!42363 _values!1445)) (bvsge mask!2175 #b00000000000000000000000000000000) (bvsge extraKeys!1366 #b00000000000000000000000000000000) (bvsle extraKeys!1366 #b00000000000000000000000000000011)))))

(declare-fun b!1300570 () Bool)

(declare-fun res!864320 () Bool)

(assert (=> b!1300570 (=> (not res!864320) (not e!741891))))

(assert (=> b!1300570 (= res!864320 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!42362 _keys!1741))))))

(declare-fun b!1300571 () Bool)

(declare-fun res!864317 () Bool)

(assert (=> b!1300571 (=> (not res!864317) (not e!741891))))

(declare-datatypes ((List!29871 0))(
  ( (Nil!29868) (Cons!29867 (h!31076 (_ BitVec 64)) (t!43452 List!29871)) )
))
(declare-fun arrayNoDuplicates!0 (array!86639 (_ BitVec 32) List!29871) Bool)

(assert (=> b!1300571 (= res!864317 (arrayNoDuplicates!0 _keys!1741 #b00000000000000000000000000000000 Nil!29868))))

(assert (= (and start!109836 res!864318) b!1300569))

(assert (= (and b!1300569 res!864319) b!1300568))

(assert (= (and b!1300568 res!864315) b!1300571))

(assert (= (and b!1300571 res!864317) b!1300570))

(assert (= (and b!1300570 res!864320) b!1300560))

(assert (= (and b!1300560 res!864314) b!1300563))

(assert (= (and b!1300563 res!864313) b!1300556))

(assert (= (and b!1300556 res!864316) b!1300555))

(assert (= (and b!1300555 c!124557) b!1300566))

(assert (= (and b!1300555 (not c!124557)) b!1300565))

(assert (= (and b!1300565 c!124559) b!1300557))

(assert (= (and b!1300565 (not c!124559)) b!1300564))

(assert (= (and b!1300564 c!124558) b!1300559))

(assert (= (and b!1300564 (not c!124558)) b!1300567))

(assert (= (or b!1300557 b!1300559) bm!63685))

(assert (= (or b!1300557 b!1300559) bm!63686))

(assert (= (or b!1300557 b!1300559) bm!63687))

(assert (= (or b!1300566 bm!63685) bm!63688))

(assert (= (or b!1300566 bm!63686) bm!63689))

(assert (= (or b!1300566 bm!63687) bm!63684))

(assert (= (and b!1300561 condMapEmpty!53825) mapIsEmpty!53825))

(assert (= (and b!1300561 (not condMapEmpty!53825)) mapNonEmpty!53825))

(get-info :version)

(assert (= (and mapNonEmpty!53825 ((_ is ValueCellFull!16518) mapValue!53825)) b!1300562))

(assert (= (and b!1300561 ((_ is ValueCellFull!16518) mapDefault!53825)) b!1300558))

(assert (= start!109836 b!1300561))

(declare-fun m!1191463 () Bool)

(assert (=> bm!63684 m!1191463))

(declare-fun m!1191465 () Bool)

(assert (=> b!1300571 m!1191465))

(declare-fun m!1191467 () Bool)

(assert (=> bm!63689 m!1191467))

(declare-fun m!1191469 () Bool)

(assert (=> mapNonEmpty!53825 m!1191469))

(declare-fun m!1191471 () Bool)

(assert (=> start!109836 m!1191471))

(declare-fun m!1191473 () Bool)

(assert (=> start!109836 m!1191473))

(declare-fun m!1191475 () Bool)

(assert (=> start!109836 m!1191475))

(declare-fun m!1191477 () Bool)

(assert (=> b!1300566 m!1191477))

(declare-fun m!1191479 () Bool)

(assert (=> b!1300566 m!1191479))

(declare-fun m!1191481 () Bool)

(assert (=> b!1300566 m!1191481))

(declare-fun m!1191483 () Bool)

(assert (=> b!1300560 m!1191483))

(assert (=> b!1300560 m!1191483))

(declare-fun m!1191485 () Bool)

(assert (=> b!1300560 m!1191485))

(declare-fun m!1191487 () Bool)

(assert (=> bm!63688 m!1191487))

(declare-fun m!1191489 () Bool)

(assert (=> b!1300568 m!1191489))

(declare-fun m!1191491 () Bool)

(assert (=> b!1300556 m!1191491))

(assert (=> b!1300556 m!1191491))

(declare-fun m!1191493 () Bool)

(assert (=> b!1300556 m!1191493))

(declare-fun m!1191495 () Bool)

(assert (=> b!1300555 m!1191495))

(declare-fun m!1191497 () Bool)

(assert (=> b!1300555 m!1191497))

(check-sat (not b!1300566) (not b!1300560) (not bm!63684) (not bm!63688) (not b!1300555) (not bm!63689) (not b_next!29193) (not mapNonEmpty!53825) b_and!47317 (not start!109836) (not b!1300568) (not b!1300571) (not b!1300556) tp_is_empty!34833)
(check-sat b_and!47317 (not b_next!29193))
