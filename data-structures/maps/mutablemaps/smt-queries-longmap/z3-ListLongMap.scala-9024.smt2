; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!108942 () Bool)

(assert start!108942)

(declare-fun b_free!28419 () Bool)

(declare-fun b_next!28419 () Bool)

(assert (=> start!108942 (= b_free!28419 (not b_next!28419))))

(declare-fun tp!100373 () Bool)

(declare-fun b_and!46509 () Bool)

(assert (=> start!108942 (= tp!100373 b_and!46509)))

(declare-fun b!1286485 () Bool)

(declare-fun e!734796 () Bool)

(declare-fun e!734801 () Bool)

(assert (=> b!1286485 (= e!734796 (not e!734801))))

(declare-fun res!854621 () Bool)

(assert (=> b!1286485 (=> res!854621 e!734801)))

(declare-fun from!2144 () (_ BitVec 32))

(declare-fun k0!1205 () (_ BitVec 64))

(declare-datatypes ((array!85125 0))(
  ( (array!85126 (arr!41060 (Array (_ BitVec 32) (_ BitVec 64))) (size!41611 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!85125)

(assert (=> b!1286485 (= res!854621 (= k0!1205 (select (arr!41060 _keys!1741) from!2144)))))

(declare-datatypes ((V!50515 0))(
  ( (V!50516 (val!17104 Int)) )
))
(declare-datatypes ((tuple2!22070 0))(
  ( (tuple2!22071 (_1!11045 (_ BitVec 64)) (_2!11045 V!50515)) )
))
(declare-datatypes ((List!29273 0))(
  ( (Nil!29270) (Cons!29269 (h!30478 tuple2!22070) (t!42840 List!29273)) )
))
(declare-datatypes ((ListLongMap!19739 0))(
  ( (ListLongMap!19740 (toList!9885 List!29273)) )
))
(declare-fun contains!7939 (ListLongMap!19739 (_ BitVec 64)) Bool)

(assert (=> b!1286485 (not (contains!7939 (ListLongMap!19740 Nil!29270) k0!1205))))

(declare-datatypes ((Unit!42463 0))(
  ( (Unit!42464) )
))
(declare-fun lt!577299 () Unit!42463)

(declare-fun emptyContainsNothing!7 ((_ BitVec 64)) Unit!42463)

(assert (=> b!1286485 (= lt!577299 (emptyContainsNothing!7 k0!1205))))

(declare-fun lt!577302 () Unit!42463)

(declare-fun e!734803 () Unit!42463)

(assert (=> b!1286485 (= lt!577302 e!734803)))

(declare-fun c!124142 () Bool)

(declare-fun lt!577306 () Bool)

(declare-fun extraKeys!1366 () (_ BitVec 32))

(assert (=> b!1286485 (= c!124142 (and (not lt!577306) (not (= (bvand extraKeys!1366 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> b!1286485 (= lt!577306 (= (bvand extraKeys!1366 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(declare-fun b!1286486 () Bool)

(declare-fun res!854627 () Bool)

(assert (=> b!1286486 (=> (not res!854627) (not e!734796))))

(declare-fun mask!2175 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!85125 (_ BitVec 32)) Bool)

(assert (=> b!1286486 (= res!854627 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1741 mask!2175))))

(declare-fun b!1286487 () Bool)

(declare-fun e!734798 () Bool)

(declare-fun tp_is_empty!34059 () Bool)

(assert (=> b!1286487 (= e!734798 tp_is_empty!34059)))

(declare-fun b!1286488 () Bool)

(declare-fun call!62967 () Bool)

(assert (=> b!1286488 call!62967))

(declare-fun lt!577308 () Unit!42463)

(declare-fun call!62968 () Unit!42463)

(assert (=> b!1286488 (= lt!577308 call!62968)))

(declare-fun lt!577307 () ListLongMap!19739)

(declare-fun call!62969 () ListLongMap!19739)

(assert (=> b!1286488 (= lt!577307 call!62969)))

(declare-fun e!734799 () Unit!42463)

(assert (=> b!1286488 (= e!734799 lt!577308)))

(declare-fun bm!62963 () Bool)

(declare-fun call!62970 () Unit!42463)

(assert (=> bm!62963 (= call!62968 call!62970)))

(declare-fun b!1286489 () Bool)

(declare-fun res!854624 () Bool)

(assert (=> b!1286489 (=> (not res!854624) (not e!734796))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1286489 (= res!854624 (validKeyInArray!0 (select (arr!41060 _keys!1741) from!2144)))))

(declare-fun b!1286490 () Bool)

(assert (=> b!1286490 (= e!734803 e!734799)))

(declare-fun c!124143 () Bool)

(assert (=> b!1286490 (= c!124143 (and (not lt!577306) (= (bvand extraKeys!1366 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1286491 () Bool)

(declare-fun e!734802 () Unit!42463)

(declare-fun Unit!42465 () Unit!42463)

(assert (=> b!1286491 (= e!734802 Unit!42465)))

(declare-fun mapIsEmpty!52646 () Bool)

(declare-fun mapRes!52646 () Bool)

(assert (=> mapIsEmpty!52646 mapRes!52646))

(declare-fun b!1286492 () Bool)

(declare-fun lt!577303 () Unit!42463)

(assert (=> b!1286492 (= e!734802 lt!577303)))

(declare-fun lt!577305 () ListLongMap!19739)

(assert (=> b!1286492 (= lt!577305 call!62969)))

(assert (=> b!1286492 (= lt!577303 call!62968)))

(assert (=> b!1286492 call!62967))

(declare-fun minValue!1387 () V!50515)

(declare-fun zeroValue!1387 () V!50515)

(declare-fun bm!62964 () Bool)

(declare-fun lt!577309 () ListLongMap!19739)

(declare-fun lemmaInListMapAfterAddingDiffThenInBefore!30 ((_ BitVec 64) (_ BitVec 64) V!50515 ListLongMap!19739) Unit!42463)

(assert (=> bm!62964 (= call!62970 (lemmaInListMapAfterAddingDiffThenInBefore!30 k0!1205 (ite c!124142 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!124143 #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000)) (ite c!124142 minValue!1387 (ite c!124143 zeroValue!1387 minValue!1387)) (ite c!124142 lt!577309 (ite c!124143 lt!577307 lt!577305))))))

(declare-fun b!1286493 () Bool)

(declare-fun res!854620 () Bool)

(assert (=> b!1286493 (=> (not res!854620) (not e!734796))))

(declare-datatypes ((ValueCell!16131 0))(
  ( (ValueCellFull!16131 (v!19704 V!50515)) (EmptyCell!16131) )
))
(declare-datatypes ((array!85127 0))(
  ( (array!85128 (arr!41061 (Array (_ BitVec 32) ValueCell!16131)) (size!41612 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!85127)

(declare-fun defaultEntry!1448 () Int)

(declare-fun getCurrentListMap!4895 (array!85125 array!85127 (_ BitVec 32) (_ BitVec 32) V!50515 V!50515 (_ BitVec 32) Int) ListLongMap!19739)

(assert (=> b!1286493 (= res!854620 (contains!7939 (getCurrentListMap!4895 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) k0!1205))))

(declare-fun b!1286494 () Bool)

(declare-fun c!124144 () Bool)

(assert (=> b!1286494 (= c!124144 (and (not (= (bvand extraKeys!1366 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!577306))))

(assert (=> b!1286494 (= e!734799 e!734802)))

(declare-fun res!854622 () Bool)

(assert (=> start!108942 (=> (not res!854622) (not e!734796))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!108942 (= res!854622 (validMask!0 mask!2175))))

(assert (=> start!108942 e!734796))

(assert (=> start!108942 tp_is_empty!34059))

(assert (=> start!108942 true))

(declare-fun e!734795 () Bool)

(declare-fun array_inv!31113 (array!85127) Bool)

(assert (=> start!108942 (and (array_inv!31113 _values!1445) e!734795)))

(declare-fun array_inv!31114 (array!85125) Bool)

(assert (=> start!108942 (array_inv!31114 _keys!1741)))

(assert (=> start!108942 tp!100373))

(declare-fun bm!62965 () Bool)

(declare-fun call!62971 () ListLongMap!19739)

(assert (=> bm!62965 (= call!62969 call!62971)))

(declare-fun b!1286495 () Bool)

(assert (=> b!1286495 (= e!734801 true)))

(declare-fun lt!577310 () V!50515)

(declare-fun +!4290 (ListLongMap!19739 tuple2!22070) ListLongMap!19739)

(assert (=> b!1286495 (not (contains!7939 (+!4290 (ListLongMap!19740 Nil!29270) (tuple2!22071 (select (arr!41060 _keys!1741) from!2144) lt!577310)) k0!1205))))

(declare-fun lt!577311 () Unit!42463)

(declare-fun addStillNotContains!340 (ListLongMap!19739 (_ BitVec 64) V!50515 (_ BitVec 64)) Unit!42463)

(assert (=> b!1286495 (= lt!577311 (addStillNotContains!340 (ListLongMap!19740 Nil!29270) (select (arr!41060 _keys!1741) from!2144) lt!577310 k0!1205))))

(declare-fun get!20899 (ValueCell!16131 V!50515) V!50515)

(declare-fun dynLambda!3494 (Int (_ BitVec 64)) V!50515)

(assert (=> b!1286495 (= lt!577310 (get!20899 (select (arr!41061 _values!1445) from!2144) (dynLambda!3494 defaultEntry!1448 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun mapNonEmpty!52646 () Bool)

(declare-fun tp!100374 () Bool)

(assert (=> mapNonEmpty!52646 (= mapRes!52646 (and tp!100374 e!734798))))

(declare-fun mapKey!52646 () (_ BitVec 32))

(declare-fun mapRest!52646 () (Array (_ BitVec 32) ValueCell!16131))

(declare-fun mapValue!52646 () ValueCell!16131)

(assert (=> mapNonEmpty!52646 (= (arr!41061 _values!1445) (store mapRest!52646 mapKey!52646 mapValue!52646))))

(declare-fun b!1286496 () Bool)

(declare-fun res!854623 () Bool)

(assert (=> b!1286496 (=> (not res!854623) (not e!734796))))

(assert (=> b!1286496 (= res!854623 (and (= (size!41612 _values!1445) (bvadd #b00000000000000000000000000000001 mask!2175)) (= (size!41611 _keys!1741) (size!41612 _values!1445)) (bvsge mask!2175 #b00000000000000000000000000000000) (bvsge extraKeys!1366 #b00000000000000000000000000000000) (bvsle extraKeys!1366 #b00000000000000000000000000000011)))))

(declare-fun b!1286497 () Bool)

(declare-fun res!854628 () Bool)

(assert (=> b!1286497 (=> (not res!854628) (not e!734796))))

(assert (=> b!1286497 (= res!854628 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!41611 _keys!1741))))))

(declare-fun b!1286498 () Bool)

(declare-fun res!854625 () Bool)

(assert (=> b!1286498 (=> (not res!854625) (not e!734796))))

(assert (=> b!1286498 (= res!854625 (and (not (= k0!1205 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1205 #b1000000000000000000000000000000000000000000000000000000000000000)) (bvsge (bvadd #b00000000000000000000000000000001 from!2144) (size!41611 _keys!1741))))))

(declare-fun b!1286499 () Bool)

(declare-fun e!734800 () Bool)

(assert (=> b!1286499 (= e!734795 (and e!734800 mapRes!52646))))

(declare-fun condMapEmpty!52646 () Bool)

(declare-fun mapDefault!52646 () ValueCell!16131)

(assert (=> b!1286499 (= condMapEmpty!52646 (= (arr!41061 _values!1445) ((as const (Array (_ BitVec 32) ValueCell!16131)) mapDefault!52646)))))

(declare-fun lt!577300 () ListLongMap!19739)

(declare-fun bm!62966 () Bool)

(declare-fun call!62966 () Bool)

(assert (=> bm!62966 (= call!62966 (contains!7939 (ite c!124142 lt!577300 (ite c!124143 lt!577307 lt!577305)) k0!1205))))

(declare-fun bm!62967 () Bool)

(declare-fun getCurrentListMapNoExtraKeys!6002 (array!85125 array!85127 (_ BitVec 32) (_ BitVec 32) V!50515 V!50515 (_ BitVec 32) Int) ListLongMap!19739)

(assert (=> bm!62967 (= call!62971 (getCurrentListMapNoExtraKeys!6002 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448))))

(declare-fun bm!62968 () Bool)

(assert (=> bm!62968 (= call!62967 call!62966)))

(declare-fun b!1286500 () Bool)

(declare-fun res!854626 () Bool)

(assert (=> b!1286500 (=> (not res!854626) (not e!734796))))

(declare-datatypes ((List!29274 0))(
  ( (Nil!29271) (Cons!29270 (h!30479 (_ BitVec 64)) (t!42841 List!29274)) )
))
(declare-fun arrayNoDuplicates!0 (array!85125 (_ BitVec 32) List!29274) Bool)

(assert (=> b!1286500 (= res!854626 (arrayNoDuplicates!0 _keys!1741 #b00000000000000000000000000000000 Nil!29271))))

(declare-fun b!1286501 () Bool)

(declare-fun lt!577304 () Unit!42463)

(assert (=> b!1286501 (= e!734803 lt!577304)))

(assert (=> b!1286501 (= lt!577300 call!62971)))

(assert (=> b!1286501 (= lt!577309 (+!4290 lt!577300 (tuple2!22071 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387)))))

(declare-fun lt!577301 () Unit!42463)

(assert (=> b!1286501 (= lt!577301 call!62970)))

(assert (=> b!1286501 (contains!7939 lt!577309 k0!1205)))

(assert (=> b!1286501 (= lt!577304 (lemmaInListMapAfterAddingDiffThenInBefore!30 k0!1205 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387 lt!577300))))

(assert (=> b!1286501 call!62966))

(declare-fun b!1286502 () Bool)

(assert (=> b!1286502 (= e!734800 tp_is_empty!34059)))

(assert (= (and start!108942 res!854622) b!1286496))

(assert (= (and b!1286496 res!854623) b!1286486))

(assert (= (and b!1286486 res!854627) b!1286500))

(assert (= (and b!1286500 res!854626) b!1286497))

(assert (= (and b!1286497 res!854628) b!1286493))

(assert (= (and b!1286493 res!854620) b!1286498))

(assert (= (and b!1286498 res!854625) b!1286489))

(assert (= (and b!1286489 res!854624) b!1286485))

(assert (= (and b!1286485 c!124142) b!1286501))

(assert (= (and b!1286485 (not c!124142)) b!1286490))

(assert (= (and b!1286490 c!124143) b!1286488))

(assert (= (and b!1286490 (not c!124143)) b!1286494))

(assert (= (and b!1286494 c!124144) b!1286492))

(assert (= (and b!1286494 (not c!124144)) b!1286491))

(assert (= (or b!1286488 b!1286492) bm!62965))

(assert (= (or b!1286488 b!1286492) bm!62963))

(assert (= (or b!1286488 b!1286492) bm!62968))

(assert (= (or b!1286501 bm!62965) bm!62967))

(assert (= (or b!1286501 bm!62963) bm!62964))

(assert (= (or b!1286501 bm!62968) bm!62966))

(assert (= (and b!1286485 (not res!854621)) b!1286495))

(assert (= (and b!1286499 condMapEmpty!52646) mapIsEmpty!52646))

(assert (= (and b!1286499 (not condMapEmpty!52646)) mapNonEmpty!52646))

(get-info :version)

(assert (= (and mapNonEmpty!52646 ((_ is ValueCellFull!16131) mapValue!52646)) b!1286487))

(assert (= (and b!1286499 ((_ is ValueCellFull!16131) mapDefault!52646)) b!1286502))

(assert (= start!108942 b!1286499))

(declare-fun b_lambda!23131 () Bool)

(assert (=> (not b_lambda!23131) (not b!1286495)))

(declare-fun t!42839 () Bool)

(declare-fun tb!11371 () Bool)

(assert (=> (and start!108942 (= defaultEntry!1448 defaultEntry!1448) t!42839) tb!11371))

(declare-fun result!23733 () Bool)

(assert (=> tb!11371 (= result!23733 tp_is_empty!34059)))

(assert (=> b!1286495 t!42839))

(declare-fun b_and!46511 () Bool)

(assert (= b_and!46509 (and (=> t!42839 result!23733) b_and!46511)))

(declare-fun m!1179579 () Bool)

(assert (=> b!1286486 m!1179579))

(declare-fun m!1179581 () Bool)

(assert (=> b!1286493 m!1179581))

(assert (=> b!1286493 m!1179581))

(declare-fun m!1179583 () Bool)

(assert (=> b!1286493 m!1179583))

(declare-fun m!1179585 () Bool)

(assert (=> b!1286495 m!1179585))

(declare-fun m!1179587 () Bool)

(assert (=> b!1286495 m!1179587))

(declare-fun m!1179589 () Bool)

(assert (=> b!1286495 m!1179589))

(declare-fun m!1179591 () Bool)

(assert (=> b!1286495 m!1179591))

(assert (=> b!1286495 m!1179589))

(assert (=> b!1286495 m!1179587))

(assert (=> b!1286495 m!1179585))

(declare-fun m!1179593 () Bool)

(assert (=> b!1286495 m!1179593))

(declare-fun m!1179595 () Bool)

(assert (=> b!1286495 m!1179595))

(declare-fun m!1179597 () Bool)

(assert (=> b!1286495 m!1179597))

(assert (=> b!1286495 m!1179595))

(declare-fun m!1179599 () Bool)

(assert (=> b!1286500 m!1179599))

(declare-fun m!1179601 () Bool)

(assert (=> mapNonEmpty!52646 m!1179601))

(assert (=> b!1286489 m!1179595))

(assert (=> b!1286489 m!1179595))

(declare-fun m!1179603 () Bool)

(assert (=> b!1286489 m!1179603))

(declare-fun m!1179605 () Bool)

(assert (=> bm!62966 m!1179605))

(declare-fun m!1179607 () Bool)

(assert (=> b!1286501 m!1179607))

(declare-fun m!1179609 () Bool)

(assert (=> b!1286501 m!1179609))

(declare-fun m!1179611 () Bool)

(assert (=> b!1286501 m!1179611))

(assert (=> b!1286485 m!1179595))

(declare-fun m!1179613 () Bool)

(assert (=> b!1286485 m!1179613))

(declare-fun m!1179615 () Bool)

(assert (=> b!1286485 m!1179615))

(declare-fun m!1179617 () Bool)

(assert (=> bm!62967 m!1179617))

(declare-fun m!1179619 () Bool)

(assert (=> start!108942 m!1179619))

(declare-fun m!1179621 () Bool)

(assert (=> start!108942 m!1179621))

(declare-fun m!1179623 () Bool)

(assert (=> start!108942 m!1179623))

(declare-fun m!1179625 () Bool)

(assert (=> bm!62964 m!1179625))

(check-sat (not bm!62964) (not b!1286489) (not bm!62966) (not b!1286501) (not b!1286486) (not b!1286495) (not b!1286500) (not bm!62967) b_and!46511 (not b_lambda!23131) (not b!1286493) tp_is_empty!34059 (not b_next!28419) (not mapNonEmpty!52646) (not b!1286485) (not start!108942))
(check-sat b_and!46511 (not b_next!28419))
