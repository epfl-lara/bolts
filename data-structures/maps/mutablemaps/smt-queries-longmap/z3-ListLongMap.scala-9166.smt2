; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!110108 () Bool)

(assert start!110108)

(declare-fun b_free!29271 () Bool)

(declare-fun b_next!29271 () Bool)

(assert (=> start!110108 (= b_free!29271 (not b_next!29271))))

(declare-fun tp!102964 () Bool)

(declare-fun b_and!47445 () Bool)

(assert (=> start!110108 (= tp!102964 b_and!47445)))

(declare-fun b!1303523 () Bool)

(declare-fun e!743542 () Bool)

(declare-fun e!743539 () Bool)

(assert (=> b!1303523 (= e!743542 e!743539)))

(declare-fun res!865880 () Bool)

(assert (=> b!1303523 (=> (not res!865880) (not e!743539))))

(declare-datatypes ((V!51651 0))(
  ( (V!51652 (val!17530 Int)) )
))
(declare-fun minValue!1387 () V!51651)

(declare-fun zeroValue!1387 () V!51651)

(declare-fun from!2144 () (_ BitVec 32))

(declare-datatypes ((ValueCell!16557 0))(
  ( (ValueCellFull!16557 (v!20144 V!51651)) (EmptyCell!16557) )
))
(declare-datatypes ((array!86799 0))(
  ( (array!86800 (arr!41886 (Array (_ BitVec 32) ValueCell!16557)) (size!42437 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!86799)

(declare-fun k0!1205 () (_ BitVec 64))

(declare-fun extraKeys!1366 () (_ BitVec 32))

(declare-datatypes ((array!86801 0))(
  ( (array!86802 (arr!41887 (Array (_ BitVec 32) (_ BitVec 64))) (size!42438 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!86801)

(declare-fun defaultEntry!1448 () Int)

(declare-fun mask!2175 () (_ BitVec 32))

(declare-datatypes ((tuple2!22778 0))(
  ( (tuple2!22779 (_1!11399 (_ BitVec 64)) (_2!11399 V!51651)) )
))
(declare-datatypes ((List!29929 0))(
  ( (Nil!29926) (Cons!29925 (h!31134 tuple2!22778) (t!43530 List!29929)) )
))
(declare-datatypes ((ListLongMap!20447 0))(
  ( (ListLongMap!20448 (toList!10239 List!29929)) )
))
(declare-fun contains!8310 (ListLongMap!20447 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMapNoExtraKeys!6173 (array!86801 array!86799 (_ BitVec 32) (_ BitVec 32) V!51651 V!51651 (_ BitVec 32) Int) ListLongMap!20447)

(assert (=> b!1303523 (= res!865880 (not (contains!8310 (getCurrentListMapNoExtraKeys!6173 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) k0!1205)))))

(declare-fun b!1303524 () Bool)

(declare-fun res!865885 () Bool)

(declare-fun e!743537 () Bool)

(assert (=> b!1303524 (=> (not res!865885) (not e!743537))))

(assert (=> b!1303524 (= res!865885 (and (= (size!42437 _values!1445) (bvadd #b00000000000000000000000000000001 mask!2175)) (= (size!42438 _keys!1741) (size!42437 _values!1445)) (bvsge mask!2175 #b00000000000000000000000000000000) (bvsge extraKeys!1366 #b00000000000000000000000000000000) (bvsle extraKeys!1366 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!53959 () Bool)

(declare-fun mapRes!53959 () Bool)

(assert (=> mapIsEmpty!53959 mapRes!53959))

(declare-fun b!1303525 () Bool)

(declare-fun res!865887 () Bool)

(assert (=> b!1303525 (=> (not res!865887) (not e!743537))))

(declare-datatypes ((List!29930 0))(
  ( (Nil!29927) (Cons!29926 (h!31135 (_ BitVec 64)) (t!43531 List!29930)) )
))
(declare-fun arrayNoDuplicates!0 (array!86801 (_ BitVec 32) List!29930) Bool)

(assert (=> b!1303525 (= res!865887 (arrayNoDuplicates!0 _keys!1741 #b00000000000000000000000000000000 Nil!29927))))

(declare-fun b!1303526 () Bool)

(declare-fun res!865879 () Bool)

(assert (=> b!1303526 (=> (not res!865879) (not e!743537))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!86801 (_ BitVec 32)) Bool)

(assert (=> b!1303526 (= res!865879 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1741 mask!2175))))

(declare-fun b!1303527 () Bool)

(declare-fun e!743541 () Bool)

(declare-fun e!743543 () Bool)

(assert (=> b!1303527 (= e!743541 (and e!743543 mapRes!53959))))

(declare-fun condMapEmpty!53959 () Bool)

(declare-fun mapDefault!53959 () ValueCell!16557)

(assert (=> b!1303527 (= condMapEmpty!53959 (= (arr!41886 _values!1445) ((as const (Array (_ BitVec 32) ValueCell!16557)) mapDefault!53959)))))

(declare-fun mapNonEmpty!53959 () Bool)

(declare-fun tp!102965 () Bool)

(declare-fun e!743538 () Bool)

(assert (=> mapNonEmpty!53959 (= mapRes!53959 (and tp!102965 e!743538))))

(declare-fun mapRest!53959 () (Array (_ BitVec 32) ValueCell!16557))

(declare-fun mapValue!53959 () ValueCell!16557)

(declare-fun mapKey!53959 () (_ BitVec 32))

(assert (=> mapNonEmpty!53959 (= (arr!41886 _values!1445) (store mapRest!53959 mapKey!53959 mapValue!53959))))

(declare-fun b!1303528 () Bool)

(declare-fun res!865883 () Bool)

(assert (=> b!1303528 (=> (not res!865883) (not e!743537))))

(assert (=> b!1303528 (= res!865883 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!42438 _keys!1741))))))

(declare-fun b!1303529 () Bool)

(declare-fun res!865886 () Bool)

(assert (=> b!1303529 (=> (not res!865886) (not e!743537))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1303529 (= res!865886 (not (validKeyInArray!0 (select (arr!41887 _keys!1741) from!2144))))))

(declare-fun b!1303530 () Bool)

(assert (=> b!1303530 (= e!743537 (not e!743542))))

(declare-fun res!865881 () Bool)

(assert (=> b!1303530 (=> res!865881 e!743542)))

(assert (=> b!1303530 (= res!865881 (or (not (= (bvand extraKeys!1366 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeys!1366 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!1303530 (not (contains!8310 (ListLongMap!20448 Nil!29926) k0!1205))))

(declare-datatypes ((Unit!43110 0))(
  ( (Unit!43111) )
))
(declare-fun lt!583281 () Unit!43110)

(declare-fun emptyContainsNothing!224 ((_ BitVec 64)) Unit!43110)

(assert (=> b!1303530 (= lt!583281 (emptyContainsNothing!224 k0!1205))))

(declare-fun b!1303531 () Bool)

(declare-fun res!865884 () Bool)

(assert (=> b!1303531 (=> (not res!865884) (not e!743537))))

(declare-fun getCurrentListMap!5199 (array!86801 array!86799 (_ BitVec 32) (_ BitVec 32) V!51651 V!51651 (_ BitVec 32) Int) ListLongMap!20447)

(assert (=> b!1303531 (= res!865884 (contains!8310 (getCurrentListMap!5199 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) k0!1205))))

(declare-fun b!1303532 () Bool)

(declare-fun res!865888 () Bool)

(assert (=> b!1303532 (=> (not res!865888) (not e!743537))))

(assert (=> b!1303532 (= res!865888 (and (not (= k0!1205 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1205 #b1000000000000000000000000000000000000000000000000000000000000000)) (bvsge (bvadd #b00000000000000000000000000000001 from!2144) (size!42438 _keys!1741))))))

(declare-fun b!1303533 () Bool)

(declare-fun tp_is_empty!34911 () Bool)

(assert (=> b!1303533 (= e!743543 tp_is_empty!34911)))

(declare-fun res!865882 () Bool)

(assert (=> start!110108 (=> (not res!865882) (not e!743537))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!110108 (= res!865882 (validMask!0 mask!2175))))

(assert (=> start!110108 e!743537))

(assert (=> start!110108 tp_is_empty!34911))

(assert (=> start!110108 true))

(declare-fun array_inv!31675 (array!86799) Bool)

(assert (=> start!110108 (and (array_inv!31675 _values!1445) e!743541)))

(declare-fun array_inv!31676 (array!86801) Bool)

(assert (=> start!110108 (array_inv!31676 _keys!1741)))

(assert (=> start!110108 tp!102964))

(declare-fun b!1303534 () Bool)

(assert (=> b!1303534 (= e!743539 (not (= #b0000000000000000000000000000000000000000000000000000000000000000 k0!1205)))))

(declare-fun b!1303535 () Bool)

(assert (=> b!1303535 (= e!743538 tp_is_empty!34911)))

(assert (= (and start!110108 res!865882) b!1303524))

(assert (= (and b!1303524 res!865885) b!1303526))

(assert (= (and b!1303526 res!865879) b!1303525))

(assert (= (and b!1303525 res!865887) b!1303528))

(assert (= (and b!1303528 res!865883) b!1303531))

(assert (= (and b!1303531 res!865884) b!1303532))

(assert (= (and b!1303532 res!865888) b!1303529))

(assert (= (and b!1303529 res!865886) b!1303530))

(assert (= (and b!1303530 (not res!865881)) b!1303523))

(assert (= (and b!1303523 res!865880) b!1303534))

(assert (= (and b!1303527 condMapEmpty!53959) mapIsEmpty!53959))

(assert (= (and b!1303527 (not condMapEmpty!53959)) mapNonEmpty!53959))

(get-info :version)

(assert (= (and mapNonEmpty!53959 ((_ is ValueCellFull!16557) mapValue!53959)) b!1303535))

(assert (= (and b!1303527 ((_ is ValueCellFull!16557) mapDefault!53959)) b!1303533))

(assert (= start!110108 b!1303527))

(declare-fun m!1194469 () Bool)

(assert (=> b!1303523 m!1194469))

(assert (=> b!1303523 m!1194469))

(declare-fun m!1194471 () Bool)

(assert (=> b!1303523 m!1194471))

(declare-fun m!1194473 () Bool)

(assert (=> mapNonEmpty!53959 m!1194473))

(declare-fun m!1194475 () Bool)

(assert (=> b!1303529 m!1194475))

(assert (=> b!1303529 m!1194475))

(declare-fun m!1194477 () Bool)

(assert (=> b!1303529 m!1194477))

(declare-fun m!1194479 () Bool)

(assert (=> b!1303526 m!1194479))

(declare-fun m!1194481 () Bool)

(assert (=> b!1303531 m!1194481))

(assert (=> b!1303531 m!1194481))

(declare-fun m!1194483 () Bool)

(assert (=> b!1303531 m!1194483))

(declare-fun m!1194485 () Bool)

(assert (=> start!110108 m!1194485))

(declare-fun m!1194487 () Bool)

(assert (=> start!110108 m!1194487))

(declare-fun m!1194489 () Bool)

(assert (=> start!110108 m!1194489))

(declare-fun m!1194491 () Bool)

(assert (=> b!1303530 m!1194491))

(declare-fun m!1194493 () Bool)

(assert (=> b!1303530 m!1194493))

(declare-fun m!1194495 () Bool)

(assert (=> b!1303525 m!1194495))

(check-sat (not b!1303531) (not b!1303526) tp_is_empty!34911 b_and!47445 (not b!1303530) (not b!1303523) (not b_next!29271) (not b!1303525) (not b!1303529) (not start!110108) (not mapNonEmpty!53959))
(check-sat b_and!47445 (not b_next!29271))
(get-model)

(declare-fun d!141563 () Bool)

(assert (=> d!141563 (= (validMask!0 mask!2175) (and (or (= mask!2175 #b00000000000000000000000000000111) (= mask!2175 #b00000000000000000000000000001111) (= mask!2175 #b00000000000000000000000000011111) (= mask!2175 #b00000000000000000000000000111111) (= mask!2175 #b00000000000000000000000001111111) (= mask!2175 #b00000000000000000000000011111111) (= mask!2175 #b00000000000000000000000111111111) (= mask!2175 #b00000000000000000000001111111111) (= mask!2175 #b00000000000000000000011111111111) (= mask!2175 #b00000000000000000000111111111111) (= mask!2175 #b00000000000000000001111111111111) (= mask!2175 #b00000000000000000011111111111111) (= mask!2175 #b00000000000000000111111111111111) (= mask!2175 #b00000000000000001111111111111111) (= mask!2175 #b00000000000000011111111111111111) (= mask!2175 #b00000000000000111111111111111111) (= mask!2175 #b00000000000001111111111111111111) (= mask!2175 #b00000000000011111111111111111111) (= mask!2175 #b00000000000111111111111111111111) (= mask!2175 #b00000000001111111111111111111111) (= mask!2175 #b00000000011111111111111111111111) (= mask!2175 #b00000000111111111111111111111111) (= mask!2175 #b00000001111111111111111111111111) (= mask!2175 #b00000011111111111111111111111111) (= mask!2175 #b00000111111111111111111111111111) (= mask!2175 #b00001111111111111111111111111111) (= mask!2175 #b00011111111111111111111111111111) (= mask!2175 #b00111111111111111111111111111111)) (bvsle mask!2175 #b00111111111111111111111111111111)))))

(assert (=> start!110108 d!141563))

(declare-fun d!141565 () Bool)

(assert (=> d!141565 (= (array_inv!31675 _values!1445) (bvsge (size!42437 _values!1445) #b00000000000000000000000000000000))))

(assert (=> start!110108 d!141565))

(declare-fun d!141567 () Bool)

(assert (=> d!141567 (= (array_inv!31676 _keys!1741) (bvsge (size!42438 _keys!1741) #b00000000000000000000000000000000))))

(assert (=> start!110108 d!141567))

(declare-fun d!141569 () Bool)

(declare-fun e!743569 () Bool)

(assert (=> d!141569 e!743569))

(declare-fun res!865921 () Bool)

(assert (=> d!141569 (=> res!865921 e!743569)))

(declare-fun lt!583295 () Bool)

(assert (=> d!141569 (= res!865921 (not lt!583295))))

(declare-fun lt!583293 () Bool)

(assert (=> d!141569 (= lt!583295 lt!583293)))

(declare-fun lt!583296 () Unit!43110)

(declare-fun e!743570 () Unit!43110)

(assert (=> d!141569 (= lt!583296 e!743570)))

(declare-fun c!125048 () Bool)

(assert (=> d!141569 (= c!125048 lt!583293)))

(declare-fun containsKey!725 (List!29929 (_ BitVec 64)) Bool)

(assert (=> d!141569 (= lt!583293 (containsKey!725 (toList!10239 (getCurrentListMapNoExtraKeys!6173 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448)) k0!1205))))

(assert (=> d!141569 (= (contains!8310 (getCurrentListMapNoExtraKeys!6173 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) k0!1205) lt!583295)))

(declare-fun b!1303581 () Bool)

(declare-fun lt!583294 () Unit!43110)

(assert (=> b!1303581 (= e!743570 lt!583294)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!470 (List!29929 (_ BitVec 64)) Unit!43110)

(assert (=> b!1303581 (= lt!583294 (lemmaContainsKeyImpliesGetValueByKeyDefined!470 (toList!10239 (getCurrentListMapNoExtraKeys!6173 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448)) k0!1205))))

(declare-datatypes ((Option!758 0))(
  ( (Some!757 (v!20146 V!51651)) (None!756) )
))
(declare-fun isDefined!510 (Option!758) Bool)

(declare-fun getValueByKey!707 (List!29929 (_ BitVec 64)) Option!758)

(assert (=> b!1303581 (isDefined!510 (getValueByKey!707 (toList!10239 (getCurrentListMapNoExtraKeys!6173 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448)) k0!1205))))

(declare-fun b!1303582 () Bool)

(declare-fun Unit!43114 () Unit!43110)

(assert (=> b!1303582 (= e!743570 Unit!43114)))

(declare-fun b!1303583 () Bool)

(assert (=> b!1303583 (= e!743569 (isDefined!510 (getValueByKey!707 (toList!10239 (getCurrentListMapNoExtraKeys!6173 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448)) k0!1205)))))

(assert (= (and d!141569 c!125048) b!1303581))

(assert (= (and d!141569 (not c!125048)) b!1303582))

(assert (= (and d!141569 (not res!865921)) b!1303583))

(declare-fun m!1194525 () Bool)

(assert (=> d!141569 m!1194525))

(declare-fun m!1194527 () Bool)

(assert (=> b!1303581 m!1194527))

(declare-fun m!1194529 () Bool)

(assert (=> b!1303581 m!1194529))

(assert (=> b!1303581 m!1194529))

(declare-fun m!1194531 () Bool)

(assert (=> b!1303581 m!1194531))

(assert (=> b!1303583 m!1194529))

(assert (=> b!1303583 m!1194529))

(assert (=> b!1303583 m!1194531))

(assert (=> b!1303523 d!141569))

(declare-fun b!1303608 () Bool)

(declare-fun e!743589 () ListLongMap!20447)

(declare-fun e!743585 () ListLongMap!20447)

(assert (=> b!1303608 (= e!743589 e!743585)))

(declare-fun c!125059 () Bool)

(assert (=> b!1303608 (= c!125059 (validKeyInArray!0 (select (arr!41887 _keys!1741) from!2144)))))

(declare-fun b!1303609 () Bool)

(declare-fun lt!583313 () Unit!43110)

(declare-fun lt!583316 () Unit!43110)

(assert (=> b!1303609 (= lt!583313 lt!583316)))

(declare-fun lt!583314 () ListLongMap!20447)

(declare-fun lt!583315 () (_ BitVec 64))

(declare-fun lt!583311 () (_ BitVec 64))

(declare-fun lt!583317 () V!51651)

(declare-fun +!4458 (ListLongMap!20447 tuple2!22778) ListLongMap!20447)

(assert (=> b!1303609 (not (contains!8310 (+!4458 lt!583314 (tuple2!22779 lt!583311 lt!583317)) lt!583315))))

(declare-fun addStillNotContains!482 (ListLongMap!20447 (_ BitVec 64) V!51651 (_ BitVec 64)) Unit!43110)

(assert (=> b!1303609 (= lt!583316 (addStillNotContains!482 lt!583314 lt!583311 lt!583317 lt!583315))))

(assert (=> b!1303609 (= lt!583315 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun get!21204 (ValueCell!16557 V!51651) V!51651)

(declare-fun dynLambda!3509 (Int (_ BitVec 64)) V!51651)

(assert (=> b!1303609 (= lt!583317 (get!21204 (select (arr!41886 _values!1445) from!2144) (dynLambda!3509 defaultEntry!1448 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!1303609 (= lt!583311 (select (arr!41887 _keys!1741) from!2144))))

(declare-fun call!64205 () ListLongMap!20447)

(assert (=> b!1303609 (= lt!583314 call!64205)))

(assert (=> b!1303609 (= e!743585 (+!4458 call!64205 (tuple2!22779 (select (arr!41887 _keys!1741) from!2144) (get!21204 (select (arr!41886 _values!1445) from!2144) (dynLambda!3509 defaultEntry!1448 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!1303610 () Bool)

(declare-fun res!865932 () Bool)

(declare-fun e!743587 () Bool)

(assert (=> b!1303610 (=> (not res!865932) (not e!743587))))

(declare-fun lt!583312 () ListLongMap!20447)

(assert (=> b!1303610 (= res!865932 (not (contains!8310 lt!583312 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1303611 () Bool)

(declare-fun e!743590 () Bool)

(assert (=> b!1303611 (= e!743590 (validKeyInArray!0 (select (arr!41887 _keys!1741) from!2144)))))

(assert (=> b!1303611 (bvsge from!2144 #b00000000000000000000000000000000)))

(declare-fun b!1303612 () Bool)

(declare-fun e!743591 () Bool)

(assert (=> b!1303612 (= e!743591 (= lt!583312 (getCurrentListMapNoExtraKeys!6173 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 (bvadd from!2144 #b00000000000000000000000000000001) defaultEntry!1448)))))

(declare-fun b!1303613 () Bool)

(declare-fun e!743588 () Bool)

(declare-fun e!743586 () Bool)

(assert (=> b!1303613 (= e!743588 e!743586)))

(assert (=> b!1303613 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!42438 _keys!1741)))))

(declare-fun res!865931 () Bool)

(assert (=> b!1303613 (= res!865931 (contains!8310 lt!583312 (select (arr!41887 _keys!1741) from!2144)))))

(assert (=> b!1303613 (=> (not res!865931) (not e!743586))))

(declare-fun b!1303615 () Bool)

(assert (=> b!1303615 (= e!743588 e!743591)))

(declare-fun c!125060 () Bool)

(assert (=> b!1303615 (= c!125060 (bvslt from!2144 (size!42438 _keys!1741)))))

(declare-fun bm!64202 () Bool)

(assert (=> bm!64202 (= call!64205 (getCurrentListMapNoExtraKeys!6173 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 (bvadd from!2144 #b00000000000000000000000000000001) defaultEntry!1448))))

(declare-fun b!1303616 () Bool)

(assert (=> b!1303616 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!42438 _keys!1741)))))

(assert (=> b!1303616 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!42437 _values!1445)))))

(declare-fun apply!1057 (ListLongMap!20447 (_ BitVec 64)) V!51651)

(assert (=> b!1303616 (= e!743586 (= (apply!1057 lt!583312 (select (arr!41887 _keys!1741) from!2144)) (get!21204 (select (arr!41886 _values!1445) from!2144) (dynLambda!3509 defaultEntry!1448 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1303617 () Bool)

(assert (=> b!1303617 (= e!743589 (ListLongMap!20448 Nil!29926))))

(declare-fun b!1303614 () Bool)

(assert (=> b!1303614 (= e!743587 e!743588)))

(declare-fun c!125058 () Bool)

(assert (=> b!1303614 (= c!125058 e!743590)))

(declare-fun res!865930 () Bool)

(assert (=> b!1303614 (=> (not res!865930) (not e!743590))))

(assert (=> b!1303614 (= res!865930 (bvslt from!2144 (size!42438 _keys!1741)))))

(declare-fun d!141571 () Bool)

(assert (=> d!141571 e!743587))

(declare-fun res!865933 () Bool)

(assert (=> d!141571 (=> (not res!865933) (not e!743587))))

(assert (=> d!141571 (= res!865933 (not (contains!8310 lt!583312 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!141571 (= lt!583312 e!743589)))

(declare-fun c!125057 () Bool)

(assert (=> d!141571 (= c!125057 (bvsge from!2144 (size!42438 _keys!1741)))))

(assert (=> d!141571 (validMask!0 mask!2175)))

(assert (=> d!141571 (= (getCurrentListMapNoExtraKeys!6173 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) lt!583312)))

(declare-fun b!1303618 () Bool)

(assert (=> b!1303618 (= e!743585 call!64205)))

(declare-fun b!1303619 () Bool)

(declare-fun isEmpty!1065 (ListLongMap!20447) Bool)

(assert (=> b!1303619 (= e!743591 (isEmpty!1065 lt!583312))))

(assert (= (and d!141571 c!125057) b!1303617))

(assert (= (and d!141571 (not c!125057)) b!1303608))

(assert (= (and b!1303608 c!125059) b!1303609))

(assert (= (and b!1303608 (not c!125059)) b!1303618))

(assert (= (or b!1303609 b!1303618) bm!64202))

(assert (= (and d!141571 res!865933) b!1303610))

(assert (= (and b!1303610 res!865932) b!1303614))

(assert (= (and b!1303614 res!865930) b!1303611))

(assert (= (and b!1303614 c!125058) b!1303613))

(assert (= (and b!1303614 (not c!125058)) b!1303615))

(assert (= (and b!1303613 res!865931) b!1303616))

(assert (= (and b!1303615 c!125060) b!1303612))

(assert (= (and b!1303615 (not c!125060)) b!1303619))

(declare-fun b_lambda!23285 () Bool)

(assert (=> (not b_lambda!23285) (not b!1303609)))

(declare-fun t!43535 () Bool)

(declare-fun tb!11407 () Bool)

(assert (=> (and start!110108 (= defaultEntry!1448 defaultEntry!1448) t!43535) tb!11407))

(declare-fun result!23827 () Bool)

(assert (=> tb!11407 (= result!23827 tp_is_empty!34911)))

(assert (=> b!1303609 t!43535))

(declare-fun b_and!47449 () Bool)

(assert (= b_and!47445 (and (=> t!43535 result!23827) b_and!47449)))

(declare-fun b_lambda!23287 () Bool)

(assert (=> (not b_lambda!23287) (not b!1303616)))

(assert (=> b!1303616 t!43535))

(declare-fun b_and!47451 () Bool)

(assert (= b_and!47449 (and (=> t!43535 result!23827) b_and!47451)))

(assert (=> b!1303611 m!1194475))

(assert (=> b!1303611 m!1194475))

(assert (=> b!1303611 m!1194477))

(declare-fun m!1194533 () Bool)

(assert (=> bm!64202 m!1194533))

(assert (=> b!1303608 m!1194475))

(assert (=> b!1303608 m!1194475))

(assert (=> b!1303608 m!1194477))

(declare-fun m!1194535 () Bool)

(assert (=> d!141571 m!1194535))

(assert (=> d!141571 m!1194485))

(assert (=> b!1303613 m!1194475))

(assert (=> b!1303613 m!1194475))

(declare-fun m!1194537 () Bool)

(assert (=> b!1303613 m!1194537))

(declare-fun m!1194539 () Bool)

(assert (=> b!1303609 m!1194539))

(declare-fun m!1194541 () Bool)

(assert (=> b!1303609 m!1194541))

(declare-fun m!1194543 () Bool)

(assert (=> b!1303609 m!1194543))

(declare-fun m!1194545 () Bool)

(assert (=> b!1303609 m!1194545))

(declare-fun m!1194547 () Bool)

(assert (=> b!1303609 m!1194547))

(assert (=> b!1303609 m!1194475))

(assert (=> b!1303609 m!1194539))

(assert (=> b!1303609 m!1194541))

(declare-fun m!1194549 () Bool)

(assert (=> b!1303609 m!1194549))

(assert (=> b!1303609 m!1194545))

(declare-fun m!1194551 () Bool)

(assert (=> b!1303609 m!1194551))

(declare-fun m!1194553 () Bool)

(assert (=> b!1303610 m!1194553))

(assert (=> b!1303612 m!1194533))

(assert (=> b!1303616 m!1194475))

(declare-fun m!1194555 () Bool)

(assert (=> b!1303616 m!1194555))

(assert (=> b!1303616 m!1194539))

(assert (=> b!1303616 m!1194541))

(assert (=> b!1303616 m!1194543))

(assert (=> b!1303616 m!1194475))

(assert (=> b!1303616 m!1194539))

(assert (=> b!1303616 m!1194541))

(declare-fun m!1194557 () Bool)

(assert (=> b!1303619 m!1194557))

(assert (=> b!1303523 d!141571))

(declare-fun d!141573 () Bool)

(declare-fun e!743592 () Bool)

(assert (=> d!141573 e!743592))

(declare-fun res!865934 () Bool)

(assert (=> d!141573 (=> res!865934 e!743592)))

(declare-fun lt!583320 () Bool)

(assert (=> d!141573 (= res!865934 (not lt!583320))))

(declare-fun lt!583318 () Bool)

(assert (=> d!141573 (= lt!583320 lt!583318)))

(declare-fun lt!583321 () Unit!43110)

(declare-fun e!743593 () Unit!43110)

(assert (=> d!141573 (= lt!583321 e!743593)))

(declare-fun c!125061 () Bool)

(assert (=> d!141573 (= c!125061 lt!583318)))

(assert (=> d!141573 (= lt!583318 (containsKey!725 (toList!10239 (getCurrentListMap!5199 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448)) k0!1205))))

(assert (=> d!141573 (= (contains!8310 (getCurrentListMap!5199 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) k0!1205) lt!583320)))

(declare-fun b!1303622 () Bool)

(declare-fun lt!583319 () Unit!43110)

(assert (=> b!1303622 (= e!743593 lt!583319)))

(assert (=> b!1303622 (= lt!583319 (lemmaContainsKeyImpliesGetValueByKeyDefined!470 (toList!10239 (getCurrentListMap!5199 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448)) k0!1205))))

(assert (=> b!1303622 (isDefined!510 (getValueByKey!707 (toList!10239 (getCurrentListMap!5199 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448)) k0!1205))))

(declare-fun b!1303623 () Bool)

(declare-fun Unit!43115 () Unit!43110)

(assert (=> b!1303623 (= e!743593 Unit!43115)))

(declare-fun b!1303624 () Bool)

(assert (=> b!1303624 (= e!743592 (isDefined!510 (getValueByKey!707 (toList!10239 (getCurrentListMap!5199 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448)) k0!1205)))))

(assert (= (and d!141573 c!125061) b!1303622))

(assert (= (and d!141573 (not c!125061)) b!1303623))

(assert (= (and d!141573 (not res!865934)) b!1303624))

(declare-fun m!1194559 () Bool)

(assert (=> d!141573 m!1194559))

(declare-fun m!1194561 () Bool)

(assert (=> b!1303622 m!1194561))

(declare-fun m!1194563 () Bool)

(assert (=> b!1303622 m!1194563))

(assert (=> b!1303622 m!1194563))

(declare-fun m!1194565 () Bool)

(assert (=> b!1303622 m!1194565))

(assert (=> b!1303624 m!1194563))

(assert (=> b!1303624 m!1194563))

(assert (=> b!1303624 m!1194565))

(assert (=> b!1303531 d!141573))

(declare-fun b!1303667 () Bool)

(declare-fun e!743632 () Bool)

(declare-fun lt!583370 () ListLongMap!20447)

(assert (=> b!1303667 (= e!743632 (= (apply!1057 lt!583370 #b0000000000000000000000000000000000000000000000000000000000000000) zeroValue!1387))))

(declare-fun b!1303668 () Bool)

(declare-fun e!743621 () ListLongMap!20447)

(declare-fun call!64226 () ListLongMap!20447)

(assert (=> b!1303668 (= e!743621 call!64226)))

(declare-fun b!1303669 () Bool)

(declare-fun e!743626 () Bool)

(declare-fun e!743622 () Bool)

(assert (=> b!1303669 (= e!743626 e!743622)))

(declare-fun c!125074 () Bool)

(assert (=> b!1303669 (= c!125074 (not (= (bvand extraKeys!1366 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1303670 () Bool)

(declare-fun e!743620 () ListLongMap!20447)

(declare-fun call!64221 () ListLongMap!20447)

(assert (=> b!1303670 (= e!743620 (+!4458 call!64221 (tuple2!22779 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387)))))

(declare-fun b!1303671 () Bool)

(declare-fun e!743631 () Bool)

(assert (=> b!1303671 (= e!743631 (= (apply!1057 lt!583370 #b1000000000000000000000000000000000000000000000000000000000000000) minValue!1387))))

(declare-fun b!1303672 () Bool)

(declare-fun e!743629 () ListLongMap!20447)

(assert (=> b!1303672 (= e!743629 call!64226)))

(declare-fun b!1303673 () Bool)

(declare-fun e!743624 () Bool)

(declare-fun e!743625 () Bool)

(assert (=> b!1303673 (= e!743624 e!743625)))

(declare-fun res!865953 () Bool)

(assert (=> b!1303673 (=> (not res!865953) (not e!743625))))

(assert (=> b!1303673 (= res!865953 (contains!8310 lt!583370 (select (arr!41887 _keys!1741) from!2144)))))

(assert (=> b!1303673 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!42438 _keys!1741)))))

(declare-fun b!1303674 () Bool)

(declare-fun e!743627 () Unit!43110)

(declare-fun lt!583380 () Unit!43110)

(assert (=> b!1303674 (= e!743627 lt!583380)))

(declare-fun lt!583368 () ListLongMap!20447)

(assert (=> b!1303674 (= lt!583368 (getCurrentListMapNoExtraKeys!6173 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448))))

(declare-fun lt!583387 () (_ BitVec 64))

(assert (=> b!1303674 (= lt!583387 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!583367 () (_ BitVec 64))

(assert (=> b!1303674 (= lt!583367 (select (arr!41887 _keys!1741) from!2144))))

(declare-fun lt!583366 () Unit!43110)

(declare-fun addStillContains!1126 (ListLongMap!20447 (_ BitVec 64) V!51651 (_ BitVec 64)) Unit!43110)

(assert (=> b!1303674 (= lt!583366 (addStillContains!1126 lt!583368 lt!583387 zeroValue!1387 lt!583367))))

(assert (=> b!1303674 (contains!8310 (+!4458 lt!583368 (tuple2!22779 lt!583387 zeroValue!1387)) lt!583367)))

(declare-fun lt!583385 () Unit!43110)

(assert (=> b!1303674 (= lt!583385 lt!583366)))

(declare-fun lt!583386 () ListLongMap!20447)

(assert (=> b!1303674 (= lt!583386 (getCurrentListMapNoExtraKeys!6173 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448))))

(declare-fun lt!583376 () (_ BitVec 64))

(assert (=> b!1303674 (= lt!583376 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!583383 () (_ BitVec 64))

(assert (=> b!1303674 (= lt!583383 (select (arr!41887 _keys!1741) from!2144))))

(declare-fun lt!583374 () Unit!43110)

(declare-fun addApplyDifferent!560 (ListLongMap!20447 (_ BitVec 64) V!51651 (_ BitVec 64)) Unit!43110)

(assert (=> b!1303674 (= lt!583374 (addApplyDifferent!560 lt!583386 lt!583376 minValue!1387 lt!583383))))

(assert (=> b!1303674 (= (apply!1057 (+!4458 lt!583386 (tuple2!22779 lt!583376 minValue!1387)) lt!583383) (apply!1057 lt!583386 lt!583383))))

(declare-fun lt!583378 () Unit!43110)

(assert (=> b!1303674 (= lt!583378 lt!583374)))

(declare-fun lt!583371 () ListLongMap!20447)

(assert (=> b!1303674 (= lt!583371 (getCurrentListMapNoExtraKeys!6173 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448))))

(declare-fun lt!583369 () (_ BitVec 64))

(assert (=> b!1303674 (= lt!583369 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!583384 () (_ BitVec 64))

(assert (=> b!1303674 (= lt!583384 (select (arr!41887 _keys!1741) from!2144))))

(declare-fun lt!583382 () Unit!43110)

(assert (=> b!1303674 (= lt!583382 (addApplyDifferent!560 lt!583371 lt!583369 zeroValue!1387 lt!583384))))

(assert (=> b!1303674 (= (apply!1057 (+!4458 lt!583371 (tuple2!22779 lt!583369 zeroValue!1387)) lt!583384) (apply!1057 lt!583371 lt!583384))))

(declare-fun lt!583381 () Unit!43110)

(assert (=> b!1303674 (= lt!583381 lt!583382)))

(declare-fun lt!583377 () ListLongMap!20447)

(assert (=> b!1303674 (= lt!583377 (getCurrentListMapNoExtraKeys!6173 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448))))

(declare-fun lt!583372 () (_ BitVec 64))

(assert (=> b!1303674 (= lt!583372 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!583373 () (_ BitVec 64))

(assert (=> b!1303674 (= lt!583373 (select (arr!41887 _keys!1741) from!2144))))

(assert (=> b!1303674 (= lt!583380 (addApplyDifferent!560 lt!583377 lt!583372 minValue!1387 lt!583373))))

(assert (=> b!1303674 (= (apply!1057 (+!4458 lt!583377 (tuple2!22779 lt!583372 minValue!1387)) lt!583373) (apply!1057 lt!583377 lt!583373))))

(declare-fun b!1303675 () Bool)

(declare-fun call!64224 () ListLongMap!20447)

(assert (=> b!1303675 (= e!743621 call!64224)))

(declare-fun d!141575 () Bool)

(assert (=> d!141575 e!743626))

(declare-fun res!865960 () Bool)

(assert (=> d!141575 (=> (not res!865960) (not e!743626))))

(assert (=> d!141575 (= res!865960 (or (bvsge from!2144 (size!42438 _keys!1741)) (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!42438 _keys!1741)))))))

(declare-fun lt!583375 () ListLongMap!20447)

(assert (=> d!141575 (= lt!583370 lt!583375)))

(declare-fun lt!583379 () Unit!43110)

(assert (=> d!141575 (= lt!583379 e!743627)))

(declare-fun c!125078 () Bool)

(declare-fun e!743628 () Bool)

(assert (=> d!141575 (= c!125078 e!743628)))

(declare-fun res!865954 () Bool)

(assert (=> d!141575 (=> (not res!865954) (not e!743628))))

(assert (=> d!141575 (= res!865954 (bvslt from!2144 (size!42438 _keys!1741)))))

(assert (=> d!141575 (= lt!583375 e!743620)))

(declare-fun c!125077 () Bool)

(assert (=> d!141575 (= c!125077 (and (not (= (bvand extraKeys!1366 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1366 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!141575 (validMask!0 mask!2175)))

(assert (=> d!141575 (= (getCurrentListMap!5199 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) lt!583370)))

(declare-fun b!1303676 () Bool)

(declare-fun e!743623 () Bool)

(declare-fun call!64223 () Bool)

(assert (=> b!1303676 (= e!743623 (not call!64223))))

(declare-fun bm!64217 () Bool)

(declare-fun call!64222 () Bool)

(assert (=> bm!64217 (= call!64222 (contains!8310 lt!583370 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1303677 () Bool)

(assert (=> b!1303677 (= e!743625 (= (apply!1057 lt!583370 (select (arr!41887 _keys!1741) from!2144)) (get!21204 (select (arr!41886 _values!1445) from!2144) (dynLambda!3509 defaultEntry!1448 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1303677 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!42437 _values!1445)))))

(assert (=> b!1303677 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!42438 _keys!1741)))))

(declare-fun b!1303678 () Bool)

(declare-fun c!125076 () Bool)

(assert (=> b!1303678 (= c!125076 (and (not (= (bvand extraKeys!1366 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeys!1366 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!1303678 (= e!743629 e!743621)))

(declare-fun b!1303679 () Bool)

(declare-fun e!743630 () Bool)

(assert (=> b!1303679 (= e!743630 (validKeyInArray!0 (select (arr!41887 _keys!1741) from!2144)))))

(declare-fun bm!64218 () Bool)

(assert (=> bm!64218 (= call!64223 (contains!8310 lt!583370 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun bm!64219 () Bool)

(assert (=> bm!64219 (= call!64226 call!64221)))

(declare-fun b!1303680 () Bool)

(assert (=> b!1303680 (= e!743622 e!743631)))

(declare-fun res!865955 () Bool)

(assert (=> b!1303680 (= res!865955 call!64222)))

(assert (=> b!1303680 (=> (not res!865955) (not e!743631))))

(declare-fun bm!64220 () Bool)

(declare-fun call!64225 () ListLongMap!20447)

(assert (=> bm!64220 (= call!64224 call!64225)))

(declare-fun b!1303681 () Bool)

(assert (=> b!1303681 (= e!743623 e!743632)))

(declare-fun res!865959 () Bool)

(assert (=> b!1303681 (= res!865959 call!64223)))

(assert (=> b!1303681 (=> (not res!865959) (not e!743632))))

(declare-fun b!1303682 () Bool)

(assert (=> b!1303682 (= e!743628 (validKeyInArray!0 (select (arr!41887 _keys!1741) from!2144)))))

(declare-fun b!1303683 () Bool)

(assert (=> b!1303683 (= e!743620 e!743629)))

(declare-fun c!125075 () Bool)

(assert (=> b!1303683 (= c!125075 (and (not (= (bvand extraKeys!1366 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeys!1366 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1303684 () Bool)

(assert (=> b!1303684 (= e!743622 (not call!64222))))

(declare-fun b!1303685 () Bool)

(declare-fun res!865961 () Bool)

(assert (=> b!1303685 (=> (not res!865961) (not e!743626))))

(assert (=> b!1303685 (= res!865961 e!743623)))

(declare-fun c!125079 () Bool)

(assert (=> b!1303685 (= c!125079 (not (= (bvand extraKeys!1366 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun bm!64221 () Bool)

(declare-fun call!64220 () ListLongMap!20447)

(assert (=> bm!64221 (= call!64221 (+!4458 (ite c!125077 call!64220 (ite c!125075 call!64225 call!64224)) (ite (or c!125077 c!125075) (tuple2!22779 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387) (tuple2!22779 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387))))))

(declare-fun bm!64222 () Bool)

(assert (=> bm!64222 (= call!64225 call!64220)))

(declare-fun b!1303686 () Bool)

(declare-fun Unit!43116 () Unit!43110)

(assert (=> b!1303686 (= e!743627 Unit!43116)))

(declare-fun b!1303687 () Bool)

(declare-fun res!865958 () Bool)

(assert (=> b!1303687 (=> (not res!865958) (not e!743626))))

(assert (=> b!1303687 (= res!865958 e!743624)))

(declare-fun res!865956 () Bool)

(assert (=> b!1303687 (=> res!865956 e!743624)))

(assert (=> b!1303687 (= res!865956 (not e!743630))))

(declare-fun res!865957 () Bool)

(assert (=> b!1303687 (=> (not res!865957) (not e!743630))))

(assert (=> b!1303687 (= res!865957 (bvslt from!2144 (size!42438 _keys!1741)))))

(declare-fun bm!64223 () Bool)

(assert (=> bm!64223 (= call!64220 (getCurrentListMapNoExtraKeys!6173 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448))))

(assert (= (and d!141575 c!125077) b!1303670))

(assert (= (and d!141575 (not c!125077)) b!1303683))

(assert (= (and b!1303683 c!125075) b!1303672))

(assert (= (and b!1303683 (not c!125075)) b!1303678))

(assert (= (and b!1303678 c!125076) b!1303668))

(assert (= (and b!1303678 (not c!125076)) b!1303675))

(assert (= (or b!1303668 b!1303675) bm!64220))

(assert (= (or b!1303672 bm!64220) bm!64222))

(assert (= (or b!1303672 b!1303668) bm!64219))

(assert (= (or b!1303670 bm!64222) bm!64223))

(assert (= (or b!1303670 bm!64219) bm!64221))

(assert (= (and d!141575 res!865954) b!1303682))

(assert (= (and d!141575 c!125078) b!1303674))

(assert (= (and d!141575 (not c!125078)) b!1303686))

(assert (= (and d!141575 res!865960) b!1303687))

(assert (= (and b!1303687 res!865957) b!1303679))

(assert (= (and b!1303687 (not res!865956)) b!1303673))

(assert (= (and b!1303673 res!865953) b!1303677))

(assert (= (and b!1303687 res!865958) b!1303685))

(assert (= (and b!1303685 c!125079) b!1303681))

(assert (= (and b!1303685 (not c!125079)) b!1303676))

(assert (= (and b!1303681 res!865959) b!1303667))

(assert (= (or b!1303681 b!1303676) bm!64218))

(assert (= (and b!1303685 res!865961) b!1303669))

(assert (= (and b!1303669 c!125074) b!1303680))

(assert (= (and b!1303669 (not c!125074)) b!1303684))

(assert (= (and b!1303680 res!865955) b!1303671))

(assert (= (or b!1303680 b!1303684) bm!64217))

(declare-fun b_lambda!23289 () Bool)

(assert (=> (not b_lambda!23289) (not b!1303677)))

(assert (=> b!1303677 t!43535))

(declare-fun b_and!47453 () Bool)

(assert (= b_and!47451 (and (=> t!43535 result!23827) b_and!47453)))

(declare-fun m!1194567 () Bool)

(assert (=> bm!64221 m!1194567))

(declare-fun m!1194569 () Bool)

(assert (=> b!1303670 m!1194569))

(assert (=> d!141575 m!1194485))

(assert (=> b!1303673 m!1194475))

(assert (=> b!1303673 m!1194475))

(declare-fun m!1194571 () Bool)

(assert (=> b!1303673 m!1194571))

(declare-fun m!1194573 () Bool)

(assert (=> bm!64218 m!1194573))

(declare-fun m!1194575 () Bool)

(assert (=> bm!64217 m!1194575))

(declare-fun m!1194577 () Bool)

(assert (=> b!1303671 m!1194577))

(declare-fun m!1194579 () Bool)

(assert (=> b!1303674 m!1194579))

(declare-fun m!1194581 () Bool)

(assert (=> b!1303674 m!1194581))

(declare-fun m!1194583 () Bool)

(assert (=> b!1303674 m!1194583))

(assert (=> b!1303674 m!1194581))

(declare-fun m!1194585 () Bool)

(assert (=> b!1303674 m!1194585))

(assert (=> b!1303674 m!1194469))

(declare-fun m!1194587 () Bool)

(assert (=> b!1303674 m!1194587))

(declare-fun m!1194589 () Bool)

(assert (=> b!1303674 m!1194589))

(assert (=> b!1303674 m!1194587))

(declare-fun m!1194591 () Bool)

(assert (=> b!1303674 m!1194591))

(declare-fun m!1194593 () Bool)

(assert (=> b!1303674 m!1194593))

(declare-fun m!1194595 () Bool)

(assert (=> b!1303674 m!1194595))

(declare-fun m!1194597 () Bool)

(assert (=> b!1303674 m!1194597))

(declare-fun m!1194599 () Bool)

(assert (=> b!1303674 m!1194599))

(declare-fun m!1194601 () Bool)

(assert (=> b!1303674 m!1194601))

(declare-fun m!1194603 () Bool)

(assert (=> b!1303674 m!1194603))

(declare-fun m!1194605 () Bool)

(assert (=> b!1303674 m!1194605))

(assert (=> b!1303674 m!1194599))

(assert (=> b!1303674 m!1194591))

(assert (=> b!1303674 m!1194475))

(declare-fun m!1194607 () Bool)

(assert (=> b!1303674 m!1194607))

(assert (=> b!1303677 m!1194541))

(assert (=> b!1303677 m!1194539))

(assert (=> b!1303677 m!1194541))

(assert (=> b!1303677 m!1194543))

(assert (=> b!1303677 m!1194475))

(declare-fun m!1194609 () Bool)

(assert (=> b!1303677 m!1194609))

(assert (=> b!1303677 m!1194539))

(assert (=> b!1303677 m!1194475))

(assert (=> b!1303679 m!1194475))

(assert (=> b!1303679 m!1194475))

(assert (=> b!1303679 m!1194477))

(assert (=> bm!64223 m!1194469))

(declare-fun m!1194611 () Bool)

(assert (=> b!1303667 m!1194611))

(assert (=> b!1303682 m!1194475))

(assert (=> b!1303682 m!1194475))

(assert (=> b!1303682 m!1194477))

(assert (=> b!1303531 d!141575))

(declare-fun b!1303696 () Bool)

(declare-fun e!743641 () Bool)

(declare-fun call!64229 () Bool)

(assert (=> b!1303696 (= e!743641 call!64229)))

(declare-fun d!141577 () Bool)

(declare-fun res!865967 () Bool)

(declare-fun e!743639 () Bool)

(assert (=> d!141577 (=> res!865967 e!743639)))

(assert (=> d!141577 (= res!865967 (bvsge #b00000000000000000000000000000000 (size!42438 _keys!1741)))))

(assert (=> d!141577 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1741 mask!2175) e!743639)))

(declare-fun b!1303697 () Bool)

(declare-fun e!743640 () Bool)

(assert (=> b!1303697 (= e!743640 call!64229)))

(declare-fun b!1303698 () Bool)

(assert (=> b!1303698 (= e!743640 e!743641)))

(declare-fun lt!583395 () (_ BitVec 64))

(assert (=> b!1303698 (= lt!583395 (select (arr!41887 _keys!1741) #b00000000000000000000000000000000))))

(declare-fun lt!583394 () Unit!43110)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!86801 (_ BitVec 64) (_ BitVec 32)) Unit!43110)

(assert (=> b!1303698 (= lt!583394 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1741 lt!583395 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!86801 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1303698 (arrayContainsKey!0 _keys!1741 lt!583395 #b00000000000000000000000000000000)))

(declare-fun lt!583396 () Unit!43110)

(assert (=> b!1303698 (= lt!583396 lt!583394)))

(declare-fun res!865966 () Bool)

(declare-datatypes ((SeekEntryResult!10022 0))(
  ( (MissingZero!10022 (index!42458 (_ BitVec 32))) (Found!10022 (index!42459 (_ BitVec 32))) (Intermediate!10022 (undefined!10834 Bool) (index!42460 (_ BitVec 32)) (x!115784 (_ BitVec 32))) (Undefined!10022) (MissingVacant!10022 (index!42461 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!86801 (_ BitVec 32)) SeekEntryResult!10022)

(assert (=> b!1303698 (= res!865966 (= (seekEntryOrOpen!0 (select (arr!41887 _keys!1741) #b00000000000000000000000000000000) _keys!1741 mask!2175) (Found!10022 #b00000000000000000000000000000000)))))

(assert (=> b!1303698 (=> (not res!865966) (not e!743641))))

(declare-fun bm!64226 () Bool)

(assert (=> bm!64226 (= call!64229 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) _keys!1741 mask!2175))))

(declare-fun b!1303699 () Bool)

(assert (=> b!1303699 (= e!743639 e!743640)))

(declare-fun c!125082 () Bool)

(assert (=> b!1303699 (= c!125082 (validKeyInArray!0 (select (arr!41887 _keys!1741) #b00000000000000000000000000000000)))))

(assert (= (and d!141577 (not res!865967)) b!1303699))

(assert (= (and b!1303699 c!125082) b!1303698))

(assert (= (and b!1303699 (not c!125082)) b!1303697))

(assert (= (and b!1303698 res!865966) b!1303696))

(assert (= (or b!1303696 b!1303697) bm!64226))

(declare-fun m!1194613 () Bool)

(assert (=> b!1303698 m!1194613))

(declare-fun m!1194615 () Bool)

(assert (=> b!1303698 m!1194615))

(declare-fun m!1194617 () Bool)

(assert (=> b!1303698 m!1194617))

(assert (=> b!1303698 m!1194613))

(declare-fun m!1194619 () Bool)

(assert (=> b!1303698 m!1194619))

(declare-fun m!1194621 () Bool)

(assert (=> bm!64226 m!1194621))

(assert (=> b!1303699 m!1194613))

(assert (=> b!1303699 m!1194613))

(declare-fun m!1194623 () Bool)

(assert (=> b!1303699 m!1194623))

(assert (=> b!1303526 d!141577))

(declare-fun d!141579 () Bool)

(declare-fun e!743642 () Bool)

(assert (=> d!141579 e!743642))

(declare-fun res!865968 () Bool)

(assert (=> d!141579 (=> res!865968 e!743642)))

(declare-fun lt!583399 () Bool)

(assert (=> d!141579 (= res!865968 (not lt!583399))))

(declare-fun lt!583397 () Bool)

(assert (=> d!141579 (= lt!583399 lt!583397)))

(declare-fun lt!583400 () Unit!43110)

(declare-fun e!743643 () Unit!43110)

(assert (=> d!141579 (= lt!583400 e!743643)))

(declare-fun c!125083 () Bool)

(assert (=> d!141579 (= c!125083 lt!583397)))

(assert (=> d!141579 (= lt!583397 (containsKey!725 (toList!10239 (ListLongMap!20448 Nil!29926)) k0!1205))))

(assert (=> d!141579 (= (contains!8310 (ListLongMap!20448 Nil!29926) k0!1205) lt!583399)))

(declare-fun b!1303700 () Bool)

(declare-fun lt!583398 () Unit!43110)

(assert (=> b!1303700 (= e!743643 lt!583398)))

(assert (=> b!1303700 (= lt!583398 (lemmaContainsKeyImpliesGetValueByKeyDefined!470 (toList!10239 (ListLongMap!20448 Nil!29926)) k0!1205))))

(assert (=> b!1303700 (isDefined!510 (getValueByKey!707 (toList!10239 (ListLongMap!20448 Nil!29926)) k0!1205))))

(declare-fun b!1303701 () Bool)

(declare-fun Unit!43117 () Unit!43110)

(assert (=> b!1303701 (= e!743643 Unit!43117)))

(declare-fun b!1303702 () Bool)

(assert (=> b!1303702 (= e!743642 (isDefined!510 (getValueByKey!707 (toList!10239 (ListLongMap!20448 Nil!29926)) k0!1205)))))

(assert (= (and d!141579 c!125083) b!1303700))

(assert (= (and d!141579 (not c!125083)) b!1303701))

(assert (= (and d!141579 (not res!865968)) b!1303702))

(declare-fun m!1194625 () Bool)

(assert (=> d!141579 m!1194625))

(declare-fun m!1194627 () Bool)

(assert (=> b!1303700 m!1194627))

(declare-fun m!1194629 () Bool)

(assert (=> b!1303700 m!1194629))

(assert (=> b!1303700 m!1194629))

(declare-fun m!1194631 () Bool)

(assert (=> b!1303700 m!1194631))

(assert (=> b!1303702 m!1194629))

(assert (=> b!1303702 m!1194629))

(assert (=> b!1303702 m!1194631))

(assert (=> b!1303530 d!141579))

(declare-fun d!141581 () Bool)

(assert (=> d!141581 (not (contains!8310 (ListLongMap!20448 Nil!29926) k0!1205))))

(declare-fun lt!583403 () Unit!43110)

(declare-fun choose!1930 ((_ BitVec 64)) Unit!43110)

(assert (=> d!141581 (= lt!583403 (choose!1930 k0!1205))))

(assert (=> d!141581 (= (emptyContainsNothing!224 k0!1205) lt!583403)))

(declare-fun bs!37117 () Bool)

(assert (= bs!37117 d!141581))

(assert (=> bs!37117 m!1194491))

(declare-fun m!1194633 () Bool)

(assert (=> bs!37117 m!1194633))

(assert (=> b!1303530 d!141581))

(declare-fun d!141583 () Bool)

(assert (=> d!141583 (= (validKeyInArray!0 (select (arr!41887 _keys!1741) from!2144)) (and (not (= (select (arr!41887 _keys!1741) from!2144) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!41887 _keys!1741) from!2144) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1303529 d!141583))

(declare-fun b!1303713 () Bool)

(declare-fun e!743655 () Bool)

(declare-fun contains!8312 (List!29930 (_ BitVec 64)) Bool)

(assert (=> b!1303713 (= e!743655 (contains!8312 Nil!29927 (select (arr!41887 _keys!1741) #b00000000000000000000000000000000)))))

(declare-fun b!1303714 () Bool)

(declare-fun e!743652 () Bool)

(declare-fun e!743654 () Bool)

(assert (=> b!1303714 (= e!743652 e!743654)))

(declare-fun res!865977 () Bool)

(assert (=> b!1303714 (=> (not res!865977) (not e!743654))))

(assert (=> b!1303714 (= res!865977 (not e!743655))))

(declare-fun res!865975 () Bool)

(assert (=> b!1303714 (=> (not res!865975) (not e!743655))))

(assert (=> b!1303714 (= res!865975 (validKeyInArray!0 (select (arr!41887 _keys!1741) #b00000000000000000000000000000000)))))

(declare-fun bm!64229 () Bool)

(declare-fun call!64232 () Bool)

(declare-fun c!125086 () Bool)

(assert (=> bm!64229 (= call!64232 (arrayNoDuplicates!0 _keys!1741 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!125086 (Cons!29926 (select (arr!41887 _keys!1741) #b00000000000000000000000000000000) Nil!29927) Nil!29927)))))

(declare-fun d!141585 () Bool)

(declare-fun res!865976 () Bool)

(assert (=> d!141585 (=> res!865976 e!743652)))

(assert (=> d!141585 (= res!865976 (bvsge #b00000000000000000000000000000000 (size!42438 _keys!1741)))))

(assert (=> d!141585 (= (arrayNoDuplicates!0 _keys!1741 #b00000000000000000000000000000000 Nil!29927) e!743652)))

(declare-fun b!1303715 () Bool)

(declare-fun e!743653 () Bool)

(assert (=> b!1303715 (= e!743654 e!743653)))

(assert (=> b!1303715 (= c!125086 (validKeyInArray!0 (select (arr!41887 _keys!1741) #b00000000000000000000000000000000)))))

(declare-fun b!1303716 () Bool)

(assert (=> b!1303716 (= e!743653 call!64232)))

(declare-fun b!1303717 () Bool)

(assert (=> b!1303717 (= e!743653 call!64232)))

(assert (= (and d!141585 (not res!865976)) b!1303714))

(assert (= (and b!1303714 res!865975) b!1303713))

(assert (= (and b!1303714 res!865977) b!1303715))

(assert (= (and b!1303715 c!125086) b!1303717))

(assert (= (and b!1303715 (not c!125086)) b!1303716))

(assert (= (or b!1303717 b!1303716) bm!64229))

(assert (=> b!1303713 m!1194613))

(assert (=> b!1303713 m!1194613))

(declare-fun m!1194635 () Bool)

(assert (=> b!1303713 m!1194635))

(assert (=> b!1303714 m!1194613))

(assert (=> b!1303714 m!1194613))

(assert (=> b!1303714 m!1194623))

(assert (=> bm!64229 m!1194613))

(declare-fun m!1194637 () Bool)

(assert (=> bm!64229 m!1194637))

(assert (=> b!1303715 m!1194613))

(assert (=> b!1303715 m!1194613))

(assert (=> b!1303715 m!1194623))

(assert (=> b!1303525 d!141585))

(declare-fun mapIsEmpty!53965 () Bool)

(declare-fun mapRes!53965 () Bool)

(assert (=> mapIsEmpty!53965 mapRes!53965))

(declare-fun b!1303725 () Bool)

(declare-fun e!743661 () Bool)

(assert (=> b!1303725 (= e!743661 tp_is_empty!34911)))

(declare-fun mapNonEmpty!53965 () Bool)

(declare-fun tp!102974 () Bool)

(declare-fun e!743660 () Bool)

(assert (=> mapNonEmpty!53965 (= mapRes!53965 (and tp!102974 e!743660))))

(declare-fun mapKey!53965 () (_ BitVec 32))

(declare-fun mapValue!53965 () ValueCell!16557)

(declare-fun mapRest!53965 () (Array (_ BitVec 32) ValueCell!16557))

(assert (=> mapNonEmpty!53965 (= mapRest!53959 (store mapRest!53965 mapKey!53965 mapValue!53965))))

(declare-fun condMapEmpty!53965 () Bool)

(declare-fun mapDefault!53965 () ValueCell!16557)

(assert (=> mapNonEmpty!53959 (= condMapEmpty!53965 (= mapRest!53959 ((as const (Array (_ BitVec 32) ValueCell!16557)) mapDefault!53965)))))

(assert (=> mapNonEmpty!53959 (= tp!102965 (and e!743661 mapRes!53965))))

(declare-fun b!1303724 () Bool)

(assert (=> b!1303724 (= e!743660 tp_is_empty!34911)))

(assert (= (and mapNonEmpty!53959 condMapEmpty!53965) mapIsEmpty!53965))

(assert (= (and mapNonEmpty!53959 (not condMapEmpty!53965)) mapNonEmpty!53965))

(assert (= (and mapNonEmpty!53965 ((_ is ValueCellFull!16557) mapValue!53965)) b!1303724))

(assert (= (and mapNonEmpty!53959 ((_ is ValueCellFull!16557) mapDefault!53965)) b!1303725))

(declare-fun m!1194639 () Bool)

(assert (=> mapNonEmpty!53965 m!1194639))

(declare-fun b_lambda!23291 () Bool)

(assert (= b_lambda!23289 (or (and start!110108 b_free!29271) b_lambda!23291)))

(declare-fun b_lambda!23293 () Bool)

(assert (= b_lambda!23287 (or (and start!110108 b_free!29271) b_lambda!23293)))

(declare-fun b_lambda!23295 () Bool)

(assert (= b_lambda!23285 (or (and start!110108 b_free!29271) b_lambda!23295)))

(check-sat (not b!1303699) (not b!1303583) (not b!1303613) (not b!1303713) (not d!141581) (not b!1303700) (not b!1303608) (not b!1303673) (not b!1303698) b_and!47453 (not bm!64226) (not b!1303619) (not d!141569) (not b_lambda!23291) (not b!1303714) (not b!1303702) (not bm!64221) (not b!1303616) (not b!1303679) (not bm!64218) (not d!141573) (not bm!64223) (not b_lambda!23295) (not mapNonEmpty!53965) (not b!1303581) (not b!1303682) tp_is_empty!34911 (not b_lambda!23293) (not b!1303610) (not b!1303715) (not b!1303611) (not d!141579) (not b!1303622) (not bm!64217) (not d!141571) (not b!1303612) (not b!1303609) (not b!1303671) (not b!1303667) (not b_next!29271) (not bm!64202) (not bm!64229) (not b!1303624) (not b!1303670) (not b!1303674) (not d!141575) (not b!1303677))
(check-sat b_and!47453 (not b_next!29271))
(get-model)

(assert (=> b!1303679 d!141583))

(declare-fun d!141587 () Bool)

(declare-fun lt!583406 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!653 (List!29930) (InoxSet (_ BitVec 64)))

(assert (=> d!141587 (= lt!583406 (select (content!653 Nil!29927) (select (arr!41887 _keys!1741) #b00000000000000000000000000000000)))))

(declare-fun e!743666 () Bool)

(assert (=> d!141587 (= lt!583406 e!743666)))

(declare-fun res!865982 () Bool)

(assert (=> d!141587 (=> (not res!865982) (not e!743666))))

(assert (=> d!141587 (= res!865982 ((_ is Cons!29926) Nil!29927))))

(assert (=> d!141587 (= (contains!8312 Nil!29927 (select (arr!41887 _keys!1741) #b00000000000000000000000000000000)) lt!583406)))

(declare-fun b!1303730 () Bool)

(declare-fun e!743667 () Bool)

(assert (=> b!1303730 (= e!743666 e!743667)))

(declare-fun res!865983 () Bool)

(assert (=> b!1303730 (=> res!865983 e!743667)))

(assert (=> b!1303730 (= res!865983 (= (h!31135 Nil!29927) (select (arr!41887 _keys!1741) #b00000000000000000000000000000000)))))

(declare-fun b!1303731 () Bool)

(assert (=> b!1303731 (= e!743667 (contains!8312 (t!43531 Nil!29927) (select (arr!41887 _keys!1741) #b00000000000000000000000000000000)))))

(assert (= (and d!141587 res!865982) b!1303730))

(assert (= (and b!1303730 (not res!865983)) b!1303731))

(declare-fun m!1194641 () Bool)

(assert (=> d!141587 m!1194641))

(assert (=> d!141587 m!1194613))

(declare-fun m!1194643 () Bool)

(assert (=> d!141587 m!1194643))

(assert (=> b!1303731 m!1194613))

(declare-fun m!1194645 () Bool)

(assert (=> b!1303731 m!1194645))

(assert (=> b!1303713 d!141587))

(declare-fun d!141589 () Bool)

(declare-fun isEmpty!1066 (List!29929) Bool)

(assert (=> d!141589 (= (isEmpty!1065 lt!583312) (isEmpty!1066 (toList!10239 lt!583312)))))

(declare-fun bs!37118 () Bool)

(assert (= bs!37118 d!141589))

(declare-fun m!1194647 () Bool)

(assert (=> bs!37118 m!1194647))

(assert (=> b!1303619 d!141589))

(declare-fun d!141591 () Bool)

(declare-fun isEmpty!1067 (Option!758) Bool)

(assert (=> d!141591 (= (isDefined!510 (getValueByKey!707 (toList!10239 (getCurrentListMapNoExtraKeys!6173 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448)) k0!1205)) (not (isEmpty!1067 (getValueByKey!707 (toList!10239 (getCurrentListMapNoExtraKeys!6173 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448)) k0!1205))))))

(declare-fun bs!37119 () Bool)

(assert (= bs!37119 d!141591))

(assert (=> bs!37119 m!1194529))

(declare-fun m!1194649 () Bool)

(assert (=> bs!37119 m!1194649))

(assert (=> b!1303583 d!141591))

(declare-fun d!141593 () Bool)

(declare-fun c!125091 () Bool)

(assert (=> d!141593 (= c!125091 (and ((_ is Cons!29925) (toList!10239 (getCurrentListMapNoExtraKeys!6173 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448))) (= (_1!11399 (h!31134 (toList!10239 (getCurrentListMapNoExtraKeys!6173 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448)))) k0!1205)))))

(declare-fun e!743672 () Option!758)

(assert (=> d!141593 (= (getValueByKey!707 (toList!10239 (getCurrentListMapNoExtraKeys!6173 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448)) k0!1205) e!743672)))

(declare-fun b!1303741 () Bool)

(declare-fun e!743673 () Option!758)

(assert (=> b!1303741 (= e!743672 e!743673)))

(declare-fun c!125092 () Bool)

(assert (=> b!1303741 (= c!125092 (and ((_ is Cons!29925) (toList!10239 (getCurrentListMapNoExtraKeys!6173 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448))) (not (= (_1!11399 (h!31134 (toList!10239 (getCurrentListMapNoExtraKeys!6173 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448)))) k0!1205))))))

(declare-fun b!1303742 () Bool)

(assert (=> b!1303742 (= e!743673 (getValueByKey!707 (t!43530 (toList!10239 (getCurrentListMapNoExtraKeys!6173 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448))) k0!1205))))

(declare-fun b!1303743 () Bool)

(assert (=> b!1303743 (= e!743673 None!756)))

(declare-fun b!1303740 () Bool)

(assert (=> b!1303740 (= e!743672 (Some!757 (_2!11399 (h!31134 (toList!10239 (getCurrentListMapNoExtraKeys!6173 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448))))))))

(assert (= (and d!141593 c!125091) b!1303740))

(assert (= (and d!141593 (not c!125091)) b!1303741))

(assert (= (and b!1303741 c!125092) b!1303742))

(assert (= (and b!1303741 (not c!125092)) b!1303743))

(declare-fun m!1194651 () Bool)

(assert (=> b!1303742 m!1194651))

(assert (=> b!1303583 d!141593))

(declare-fun d!141595 () Bool)

(declare-fun e!743674 () Bool)

(assert (=> d!141595 e!743674))

(declare-fun res!865984 () Bool)

(assert (=> d!141595 (=> res!865984 e!743674)))

(declare-fun lt!583409 () Bool)

(assert (=> d!141595 (= res!865984 (not lt!583409))))

(declare-fun lt!583407 () Bool)

(assert (=> d!141595 (= lt!583409 lt!583407)))

(declare-fun lt!583410 () Unit!43110)

(declare-fun e!743675 () Unit!43110)

(assert (=> d!141595 (= lt!583410 e!743675)))

(declare-fun c!125093 () Bool)

(assert (=> d!141595 (= c!125093 lt!583407)))

(assert (=> d!141595 (= lt!583407 (containsKey!725 (toList!10239 lt!583370) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!141595 (= (contains!8310 lt!583370 #b1000000000000000000000000000000000000000000000000000000000000000) lt!583409)))

(declare-fun b!1303744 () Bool)

(declare-fun lt!583408 () Unit!43110)

(assert (=> b!1303744 (= e!743675 lt!583408)))

(assert (=> b!1303744 (= lt!583408 (lemmaContainsKeyImpliesGetValueByKeyDefined!470 (toList!10239 lt!583370) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1303744 (isDefined!510 (getValueByKey!707 (toList!10239 lt!583370) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1303745 () Bool)

(declare-fun Unit!43118 () Unit!43110)

(assert (=> b!1303745 (= e!743675 Unit!43118)))

(declare-fun b!1303746 () Bool)

(assert (=> b!1303746 (= e!743674 (isDefined!510 (getValueByKey!707 (toList!10239 lt!583370) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!141595 c!125093) b!1303744))

(assert (= (and d!141595 (not c!125093)) b!1303745))

(assert (= (and d!141595 (not res!865984)) b!1303746))

(declare-fun m!1194653 () Bool)

(assert (=> d!141595 m!1194653))

(declare-fun m!1194655 () Bool)

(assert (=> b!1303744 m!1194655))

(declare-fun m!1194657 () Bool)

(assert (=> b!1303744 m!1194657))

(assert (=> b!1303744 m!1194657))

(declare-fun m!1194659 () Bool)

(assert (=> b!1303744 m!1194659))

(assert (=> b!1303746 m!1194657))

(assert (=> b!1303746 m!1194657))

(assert (=> b!1303746 m!1194659))

(assert (=> bm!64217 d!141595))

(declare-fun d!141597 () Bool)

(assert (=> d!141597 (isDefined!510 (getValueByKey!707 (toList!10239 (getCurrentListMapNoExtraKeys!6173 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448)) k0!1205))))

(declare-fun lt!583413 () Unit!43110)

(declare-fun choose!1931 (List!29929 (_ BitVec 64)) Unit!43110)

(assert (=> d!141597 (= lt!583413 (choose!1931 (toList!10239 (getCurrentListMapNoExtraKeys!6173 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448)) k0!1205))))

(declare-fun e!743678 () Bool)

(assert (=> d!141597 e!743678))

(declare-fun res!865987 () Bool)

(assert (=> d!141597 (=> (not res!865987) (not e!743678))))

(declare-fun isStrictlySorted!869 (List!29929) Bool)

(assert (=> d!141597 (= res!865987 (isStrictlySorted!869 (toList!10239 (getCurrentListMapNoExtraKeys!6173 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448))))))

(assert (=> d!141597 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!470 (toList!10239 (getCurrentListMapNoExtraKeys!6173 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448)) k0!1205) lt!583413)))

(declare-fun b!1303749 () Bool)

(assert (=> b!1303749 (= e!743678 (containsKey!725 (toList!10239 (getCurrentListMapNoExtraKeys!6173 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448)) k0!1205))))

(assert (= (and d!141597 res!865987) b!1303749))

(assert (=> d!141597 m!1194529))

(assert (=> d!141597 m!1194529))

(assert (=> d!141597 m!1194531))

(declare-fun m!1194661 () Bool)

(assert (=> d!141597 m!1194661))

(declare-fun m!1194663 () Bool)

(assert (=> d!141597 m!1194663))

(assert (=> b!1303749 m!1194525))

(assert (=> b!1303581 d!141597))

(assert (=> b!1303581 d!141591))

(assert (=> b!1303581 d!141593))

(declare-fun d!141599 () Bool)

(declare-fun get!21205 (Option!758) V!51651)

(assert (=> d!141599 (= (apply!1057 lt!583312 (select (arr!41887 _keys!1741) from!2144)) (get!21205 (getValueByKey!707 (toList!10239 lt!583312) (select (arr!41887 _keys!1741) from!2144))))))

(declare-fun bs!37120 () Bool)

(assert (= bs!37120 d!141599))

(assert (=> bs!37120 m!1194475))

(declare-fun m!1194665 () Bool)

(assert (=> bs!37120 m!1194665))

(assert (=> bs!37120 m!1194665))

(declare-fun m!1194667 () Bool)

(assert (=> bs!37120 m!1194667))

(assert (=> b!1303616 d!141599))

(declare-fun d!141601 () Bool)

(declare-fun c!125096 () Bool)

(assert (=> d!141601 (= c!125096 ((_ is ValueCellFull!16557) (select (arr!41886 _values!1445) from!2144)))))

(declare-fun e!743681 () V!51651)

(assert (=> d!141601 (= (get!21204 (select (arr!41886 _values!1445) from!2144) (dynLambda!3509 defaultEntry!1448 #b0000000000000000000000000000000000000000000000000000000000000000)) e!743681)))

(declare-fun b!1303754 () Bool)

(declare-fun get!21206 (ValueCell!16557 V!51651) V!51651)

(assert (=> b!1303754 (= e!743681 (get!21206 (select (arr!41886 _values!1445) from!2144) (dynLambda!3509 defaultEntry!1448 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1303755 () Bool)

(declare-fun get!21207 (ValueCell!16557 V!51651) V!51651)

(assert (=> b!1303755 (= e!743681 (get!21207 (select (arr!41886 _values!1445) from!2144) (dynLambda!3509 defaultEntry!1448 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!141601 c!125096) b!1303754))

(assert (= (and d!141601 (not c!125096)) b!1303755))

(assert (=> b!1303754 m!1194539))

(assert (=> b!1303754 m!1194541))

(declare-fun m!1194669 () Bool)

(assert (=> b!1303754 m!1194669))

(assert (=> b!1303755 m!1194539))

(assert (=> b!1303755 m!1194541))

(declare-fun m!1194671 () Bool)

(assert (=> b!1303755 m!1194671))

(assert (=> b!1303616 d!141601))

(declare-fun d!141603 () Bool)

(assert (=> d!141603 (= (apply!1057 lt!583370 (select (arr!41887 _keys!1741) from!2144)) (get!21205 (getValueByKey!707 (toList!10239 lt!583370) (select (arr!41887 _keys!1741) from!2144))))))

(declare-fun bs!37121 () Bool)

(assert (= bs!37121 d!141603))

(assert (=> bs!37121 m!1194475))

(declare-fun m!1194673 () Bool)

(assert (=> bs!37121 m!1194673))

(assert (=> bs!37121 m!1194673))

(declare-fun m!1194675 () Bool)

(assert (=> bs!37121 m!1194675))

(assert (=> b!1303677 d!141603))

(assert (=> b!1303677 d!141601))

(declare-fun b!1303756 () Bool)

(declare-fun e!743686 () ListLongMap!20447)

(declare-fun e!743682 () ListLongMap!20447)

(assert (=> b!1303756 (= e!743686 e!743682)))

(declare-fun c!125099 () Bool)

(assert (=> b!1303756 (= c!125099 (validKeyInArray!0 (select (arr!41887 _keys!1741) (bvadd from!2144 #b00000000000000000000000000000001))))))

(declare-fun b!1303757 () Bool)

(declare-fun lt!583416 () Unit!43110)

(declare-fun lt!583419 () Unit!43110)

(assert (=> b!1303757 (= lt!583416 lt!583419)))

(declare-fun lt!583414 () (_ BitVec 64))

(declare-fun lt!583420 () V!51651)

(declare-fun lt!583417 () ListLongMap!20447)

(declare-fun lt!583418 () (_ BitVec 64))

(assert (=> b!1303757 (not (contains!8310 (+!4458 lt!583417 (tuple2!22779 lt!583414 lt!583420)) lt!583418))))

(assert (=> b!1303757 (= lt!583419 (addStillNotContains!482 lt!583417 lt!583414 lt!583420 lt!583418))))

(assert (=> b!1303757 (= lt!583418 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!1303757 (= lt!583420 (get!21204 (select (arr!41886 _values!1445) (bvadd from!2144 #b00000000000000000000000000000001)) (dynLambda!3509 defaultEntry!1448 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!1303757 (= lt!583414 (select (arr!41887 _keys!1741) (bvadd from!2144 #b00000000000000000000000000000001)))))

(declare-fun call!64233 () ListLongMap!20447)

(assert (=> b!1303757 (= lt!583417 call!64233)))

(assert (=> b!1303757 (= e!743682 (+!4458 call!64233 (tuple2!22779 (select (arr!41887 _keys!1741) (bvadd from!2144 #b00000000000000000000000000000001)) (get!21204 (select (arr!41886 _values!1445) (bvadd from!2144 #b00000000000000000000000000000001)) (dynLambda!3509 defaultEntry!1448 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!1303758 () Bool)

(declare-fun res!865990 () Bool)

(declare-fun e!743684 () Bool)

(assert (=> b!1303758 (=> (not res!865990) (not e!743684))))

(declare-fun lt!583415 () ListLongMap!20447)

(assert (=> b!1303758 (= res!865990 (not (contains!8310 lt!583415 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1303759 () Bool)

(declare-fun e!743687 () Bool)

(assert (=> b!1303759 (= e!743687 (validKeyInArray!0 (select (arr!41887 _keys!1741) (bvadd from!2144 #b00000000000000000000000000000001))))))

(assert (=> b!1303759 (bvsge (bvadd from!2144 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))

(declare-fun b!1303760 () Bool)

(declare-fun e!743688 () Bool)

(assert (=> b!1303760 (= e!743688 (= lt!583415 (getCurrentListMapNoExtraKeys!6173 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 (bvadd from!2144 #b00000000000000000000000000000001 #b00000000000000000000000000000001) defaultEntry!1448)))))

(declare-fun b!1303761 () Bool)

(declare-fun e!743685 () Bool)

(declare-fun e!743683 () Bool)

(assert (=> b!1303761 (= e!743685 e!743683)))

(assert (=> b!1303761 (and (bvsge (bvadd from!2144 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvslt (bvadd from!2144 #b00000000000000000000000000000001) (size!42438 _keys!1741)))))

(declare-fun res!865989 () Bool)

(assert (=> b!1303761 (= res!865989 (contains!8310 lt!583415 (select (arr!41887 _keys!1741) (bvadd from!2144 #b00000000000000000000000000000001))))))

(assert (=> b!1303761 (=> (not res!865989) (not e!743683))))

(declare-fun b!1303763 () Bool)

(assert (=> b!1303763 (= e!743685 e!743688)))

(declare-fun c!125100 () Bool)

(assert (=> b!1303763 (= c!125100 (bvslt (bvadd from!2144 #b00000000000000000000000000000001) (size!42438 _keys!1741)))))

(declare-fun bm!64230 () Bool)

(assert (=> bm!64230 (= call!64233 (getCurrentListMapNoExtraKeys!6173 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 (bvadd from!2144 #b00000000000000000000000000000001 #b00000000000000000000000000000001) defaultEntry!1448))))

(declare-fun b!1303764 () Bool)

(assert (=> b!1303764 (and (bvsge (bvadd from!2144 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvslt (bvadd from!2144 #b00000000000000000000000000000001) (size!42438 _keys!1741)))))

(assert (=> b!1303764 (and (bvsge (bvadd from!2144 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvslt (bvadd from!2144 #b00000000000000000000000000000001) (size!42437 _values!1445)))))

(assert (=> b!1303764 (= e!743683 (= (apply!1057 lt!583415 (select (arr!41887 _keys!1741) (bvadd from!2144 #b00000000000000000000000000000001))) (get!21204 (select (arr!41886 _values!1445) (bvadd from!2144 #b00000000000000000000000000000001)) (dynLambda!3509 defaultEntry!1448 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1303765 () Bool)

(assert (=> b!1303765 (= e!743686 (ListLongMap!20448 Nil!29926))))

(declare-fun b!1303762 () Bool)

(assert (=> b!1303762 (= e!743684 e!743685)))

(declare-fun c!125098 () Bool)

(assert (=> b!1303762 (= c!125098 e!743687)))

(declare-fun res!865988 () Bool)

(assert (=> b!1303762 (=> (not res!865988) (not e!743687))))

(assert (=> b!1303762 (= res!865988 (bvslt (bvadd from!2144 #b00000000000000000000000000000001) (size!42438 _keys!1741)))))

(declare-fun d!141605 () Bool)

(assert (=> d!141605 e!743684))

(declare-fun res!865991 () Bool)

(assert (=> d!141605 (=> (not res!865991) (not e!743684))))

(assert (=> d!141605 (= res!865991 (not (contains!8310 lt!583415 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!141605 (= lt!583415 e!743686)))

(declare-fun c!125097 () Bool)

(assert (=> d!141605 (= c!125097 (bvsge (bvadd from!2144 #b00000000000000000000000000000001) (size!42438 _keys!1741)))))

(assert (=> d!141605 (validMask!0 mask!2175)))

(assert (=> d!141605 (= (getCurrentListMapNoExtraKeys!6173 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 (bvadd from!2144 #b00000000000000000000000000000001) defaultEntry!1448) lt!583415)))

(declare-fun b!1303766 () Bool)

(assert (=> b!1303766 (= e!743682 call!64233)))

(declare-fun b!1303767 () Bool)

(assert (=> b!1303767 (= e!743688 (isEmpty!1065 lt!583415))))

(assert (= (and d!141605 c!125097) b!1303765))

(assert (= (and d!141605 (not c!125097)) b!1303756))

(assert (= (and b!1303756 c!125099) b!1303757))

(assert (= (and b!1303756 (not c!125099)) b!1303766))

(assert (= (or b!1303757 b!1303766) bm!64230))

(assert (= (and d!141605 res!865991) b!1303758))

(assert (= (and b!1303758 res!865990) b!1303762))

(assert (= (and b!1303762 res!865988) b!1303759))

(assert (= (and b!1303762 c!125098) b!1303761))

(assert (= (and b!1303762 (not c!125098)) b!1303763))

(assert (= (and b!1303761 res!865989) b!1303764))

(assert (= (and b!1303763 c!125100) b!1303760))

(assert (= (and b!1303763 (not c!125100)) b!1303767))

(declare-fun b_lambda!23297 () Bool)

(assert (=> (not b_lambda!23297) (not b!1303757)))

(assert (=> b!1303757 t!43535))

(declare-fun b_and!47455 () Bool)

(assert (= b_and!47453 (and (=> t!43535 result!23827) b_and!47455)))

(declare-fun b_lambda!23299 () Bool)

(assert (=> (not b_lambda!23299) (not b!1303764)))

(assert (=> b!1303764 t!43535))

(declare-fun b_and!47457 () Bool)

(assert (= b_and!47455 (and (=> t!43535 result!23827) b_and!47457)))

(declare-fun m!1194677 () Bool)

(assert (=> b!1303759 m!1194677))

(assert (=> b!1303759 m!1194677))

(declare-fun m!1194679 () Bool)

(assert (=> b!1303759 m!1194679))

(declare-fun m!1194681 () Bool)

(assert (=> bm!64230 m!1194681))

(assert (=> b!1303756 m!1194677))

(assert (=> b!1303756 m!1194677))

(assert (=> b!1303756 m!1194679))

(declare-fun m!1194683 () Bool)

(assert (=> d!141605 m!1194683))

(assert (=> d!141605 m!1194485))

(assert (=> b!1303761 m!1194677))

(assert (=> b!1303761 m!1194677))

(declare-fun m!1194685 () Bool)

(assert (=> b!1303761 m!1194685))

(declare-fun m!1194687 () Bool)

(assert (=> b!1303757 m!1194687))

(assert (=> b!1303757 m!1194541))

(declare-fun m!1194689 () Bool)

(assert (=> b!1303757 m!1194689))

(declare-fun m!1194691 () Bool)

(assert (=> b!1303757 m!1194691))

(declare-fun m!1194693 () Bool)

(assert (=> b!1303757 m!1194693))

(assert (=> b!1303757 m!1194677))

(assert (=> b!1303757 m!1194687))

(assert (=> b!1303757 m!1194541))

(declare-fun m!1194695 () Bool)

(assert (=> b!1303757 m!1194695))

(assert (=> b!1303757 m!1194691))

(declare-fun m!1194697 () Bool)

(assert (=> b!1303757 m!1194697))

(declare-fun m!1194699 () Bool)

(assert (=> b!1303758 m!1194699))

(assert (=> b!1303760 m!1194681))

(assert (=> b!1303764 m!1194677))

(declare-fun m!1194701 () Bool)

(assert (=> b!1303764 m!1194701))

(assert (=> b!1303764 m!1194687))

(assert (=> b!1303764 m!1194541))

(assert (=> b!1303764 m!1194689))

(assert (=> b!1303764 m!1194677))

(assert (=> b!1303764 m!1194687))

(assert (=> b!1303764 m!1194541))

(declare-fun m!1194703 () Bool)

(assert (=> b!1303767 m!1194703))

(assert (=> bm!64202 d!141605))

(declare-fun d!141607 () Bool)

(assert (=> d!141607 (= (isDefined!510 (getValueByKey!707 (toList!10239 (getCurrentListMap!5199 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448)) k0!1205)) (not (isEmpty!1067 (getValueByKey!707 (toList!10239 (getCurrentListMap!5199 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448)) k0!1205))))))

(declare-fun bs!37122 () Bool)

(assert (= bs!37122 d!141607))

(assert (=> bs!37122 m!1194563))

(declare-fun m!1194705 () Bool)

(assert (=> bs!37122 m!1194705))

(assert (=> b!1303624 d!141607))

(declare-fun c!125101 () Bool)

(declare-fun d!141609 () Bool)

(assert (=> d!141609 (= c!125101 (and ((_ is Cons!29925) (toList!10239 (getCurrentListMap!5199 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448))) (= (_1!11399 (h!31134 (toList!10239 (getCurrentListMap!5199 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448)))) k0!1205)))))

(declare-fun e!743689 () Option!758)

(assert (=> d!141609 (= (getValueByKey!707 (toList!10239 (getCurrentListMap!5199 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448)) k0!1205) e!743689)))

(declare-fun b!1303769 () Bool)

(declare-fun e!743690 () Option!758)

(assert (=> b!1303769 (= e!743689 e!743690)))

(declare-fun c!125102 () Bool)

(assert (=> b!1303769 (= c!125102 (and ((_ is Cons!29925) (toList!10239 (getCurrentListMap!5199 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448))) (not (= (_1!11399 (h!31134 (toList!10239 (getCurrentListMap!5199 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448)))) k0!1205))))))

(declare-fun b!1303770 () Bool)

(assert (=> b!1303770 (= e!743690 (getValueByKey!707 (t!43530 (toList!10239 (getCurrentListMap!5199 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448))) k0!1205))))

(declare-fun b!1303771 () Bool)

(assert (=> b!1303771 (= e!743690 None!756)))

(declare-fun b!1303768 () Bool)

(assert (=> b!1303768 (= e!743689 (Some!757 (_2!11399 (h!31134 (toList!10239 (getCurrentListMap!5199 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448))))))))

(assert (= (and d!141609 c!125101) b!1303768))

(assert (= (and d!141609 (not c!125101)) b!1303769))

(assert (= (and b!1303769 c!125102) b!1303770))

(assert (= (and b!1303769 (not c!125102)) b!1303771))

(declare-fun m!1194707 () Bool)

(assert (=> b!1303770 m!1194707))

(assert (=> b!1303624 d!141609))

(declare-fun d!141611 () Bool)

(declare-fun e!743691 () Bool)

(assert (=> d!141611 e!743691))

(declare-fun res!865992 () Bool)

(assert (=> d!141611 (=> res!865992 e!743691)))

(declare-fun lt!583423 () Bool)

(assert (=> d!141611 (= res!865992 (not lt!583423))))

(declare-fun lt!583421 () Bool)

(assert (=> d!141611 (= lt!583423 lt!583421)))

(declare-fun lt!583424 () Unit!43110)

(declare-fun e!743692 () Unit!43110)

(assert (=> d!141611 (= lt!583424 e!743692)))

(declare-fun c!125103 () Bool)

(assert (=> d!141611 (= c!125103 lt!583421)))

(assert (=> d!141611 (= lt!583421 (containsKey!725 (toList!10239 lt!583370) (select (arr!41887 _keys!1741) from!2144)))))

(assert (=> d!141611 (= (contains!8310 lt!583370 (select (arr!41887 _keys!1741) from!2144)) lt!583423)))

(declare-fun b!1303772 () Bool)

(declare-fun lt!583422 () Unit!43110)

(assert (=> b!1303772 (= e!743692 lt!583422)))

(assert (=> b!1303772 (= lt!583422 (lemmaContainsKeyImpliesGetValueByKeyDefined!470 (toList!10239 lt!583370) (select (arr!41887 _keys!1741) from!2144)))))

(assert (=> b!1303772 (isDefined!510 (getValueByKey!707 (toList!10239 lt!583370) (select (arr!41887 _keys!1741) from!2144)))))

(declare-fun b!1303773 () Bool)

(declare-fun Unit!43119 () Unit!43110)

(assert (=> b!1303773 (= e!743692 Unit!43119)))

(declare-fun b!1303774 () Bool)

(assert (=> b!1303774 (= e!743691 (isDefined!510 (getValueByKey!707 (toList!10239 lt!583370) (select (arr!41887 _keys!1741) from!2144))))))

(assert (= (and d!141611 c!125103) b!1303772))

(assert (= (and d!141611 (not c!125103)) b!1303773))

(assert (= (and d!141611 (not res!865992)) b!1303774))

(assert (=> d!141611 m!1194475))

(declare-fun m!1194709 () Bool)

(assert (=> d!141611 m!1194709))

(assert (=> b!1303772 m!1194475))

(declare-fun m!1194711 () Bool)

(assert (=> b!1303772 m!1194711))

(assert (=> b!1303772 m!1194475))

(assert (=> b!1303772 m!1194673))

(assert (=> b!1303772 m!1194673))

(declare-fun m!1194713 () Bool)

(assert (=> b!1303772 m!1194713))

(assert (=> b!1303774 m!1194475))

(assert (=> b!1303774 m!1194673))

(assert (=> b!1303774 m!1194673))

(assert (=> b!1303774 m!1194713))

(assert (=> b!1303673 d!141611))

(declare-fun d!141613 () Bool)

(declare-fun e!743693 () Bool)

(assert (=> d!141613 e!743693))

(declare-fun res!865993 () Bool)

(assert (=> d!141613 (=> res!865993 e!743693)))

(declare-fun lt!583427 () Bool)

(assert (=> d!141613 (= res!865993 (not lt!583427))))

(declare-fun lt!583425 () Bool)

(assert (=> d!141613 (= lt!583427 lt!583425)))

(declare-fun lt!583428 () Unit!43110)

(declare-fun e!743694 () Unit!43110)

(assert (=> d!141613 (= lt!583428 e!743694)))

(declare-fun c!125104 () Bool)

(assert (=> d!141613 (= c!125104 lt!583425)))

(assert (=> d!141613 (= lt!583425 (containsKey!725 (toList!10239 lt!583312) (select (arr!41887 _keys!1741) from!2144)))))

(assert (=> d!141613 (= (contains!8310 lt!583312 (select (arr!41887 _keys!1741) from!2144)) lt!583427)))

(declare-fun b!1303775 () Bool)

(declare-fun lt!583426 () Unit!43110)

(assert (=> b!1303775 (= e!743694 lt!583426)))

(assert (=> b!1303775 (= lt!583426 (lemmaContainsKeyImpliesGetValueByKeyDefined!470 (toList!10239 lt!583312) (select (arr!41887 _keys!1741) from!2144)))))

(assert (=> b!1303775 (isDefined!510 (getValueByKey!707 (toList!10239 lt!583312) (select (arr!41887 _keys!1741) from!2144)))))

(declare-fun b!1303776 () Bool)

(declare-fun Unit!43120 () Unit!43110)

(assert (=> b!1303776 (= e!743694 Unit!43120)))

(declare-fun b!1303777 () Bool)

(assert (=> b!1303777 (= e!743693 (isDefined!510 (getValueByKey!707 (toList!10239 lt!583312) (select (arr!41887 _keys!1741) from!2144))))))

(assert (= (and d!141613 c!125104) b!1303775))

(assert (= (and d!141613 (not c!125104)) b!1303776))

(assert (= (and d!141613 (not res!865993)) b!1303777))

(assert (=> d!141613 m!1194475))

(declare-fun m!1194715 () Bool)

(assert (=> d!141613 m!1194715))

(assert (=> b!1303775 m!1194475))

(declare-fun m!1194717 () Bool)

(assert (=> b!1303775 m!1194717))

(assert (=> b!1303775 m!1194475))

(assert (=> b!1303775 m!1194665))

(assert (=> b!1303775 m!1194665))

(declare-fun m!1194719 () Bool)

(assert (=> b!1303775 m!1194719))

(assert (=> b!1303777 m!1194475))

(assert (=> b!1303777 m!1194665))

(assert (=> b!1303777 m!1194665))

(assert (=> b!1303777 m!1194719))

(assert (=> b!1303613 d!141613))

(declare-fun d!141615 () Bool)

(assert (=> d!141615 (isDefined!510 (getValueByKey!707 (toList!10239 (getCurrentListMap!5199 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448)) k0!1205))))

(declare-fun lt!583429 () Unit!43110)

(assert (=> d!141615 (= lt!583429 (choose!1931 (toList!10239 (getCurrentListMap!5199 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448)) k0!1205))))

(declare-fun e!743695 () Bool)

(assert (=> d!141615 e!743695))

(declare-fun res!865994 () Bool)

(assert (=> d!141615 (=> (not res!865994) (not e!743695))))

(assert (=> d!141615 (= res!865994 (isStrictlySorted!869 (toList!10239 (getCurrentListMap!5199 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448))))))

(assert (=> d!141615 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!470 (toList!10239 (getCurrentListMap!5199 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448)) k0!1205) lt!583429)))

(declare-fun b!1303778 () Bool)

(assert (=> b!1303778 (= e!743695 (containsKey!725 (toList!10239 (getCurrentListMap!5199 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448)) k0!1205))))

(assert (= (and d!141615 res!865994) b!1303778))

(assert (=> d!141615 m!1194563))

(assert (=> d!141615 m!1194563))

(assert (=> d!141615 m!1194565))

(declare-fun m!1194721 () Bool)

(assert (=> d!141615 m!1194721))

(declare-fun m!1194723 () Bool)

(assert (=> d!141615 m!1194723))

(assert (=> b!1303778 m!1194559))

(assert (=> b!1303622 d!141615))

(assert (=> b!1303622 d!141607))

(assert (=> b!1303622 d!141609))

(declare-fun d!141617 () Bool)

(assert (=> d!141617 (= (apply!1057 lt!583371 lt!583384) (get!21205 (getValueByKey!707 (toList!10239 lt!583371) lt!583384)))))

(declare-fun bs!37123 () Bool)

(assert (= bs!37123 d!141617))

(declare-fun m!1194725 () Bool)

(assert (=> bs!37123 m!1194725))

(assert (=> bs!37123 m!1194725))

(declare-fun m!1194727 () Bool)

(assert (=> bs!37123 m!1194727))

(assert (=> b!1303674 d!141617))

(declare-fun d!141619 () Bool)

(assert (=> d!141619 (= (apply!1057 (+!4458 lt!583377 (tuple2!22779 lt!583372 minValue!1387)) lt!583373) (apply!1057 lt!583377 lt!583373))))

(declare-fun lt!583432 () Unit!43110)

(declare-fun choose!1932 (ListLongMap!20447 (_ BitVec 64) V!51651 (_ BitVec 64)) Unit!43110)

(assert (=> d!141619 (= lt!583432 (choose!1932 lt!583377 lt!583372 minValue!1387 lt!583373))))

(declare-fun e!743698 () Bool)

(assert (=> d!141619 e!743698))

(declare-fun res!865997 () Bool)

(assert (=> d!141619 (=> (not res!865997) (not e!743698))))

(assert (=> d!141619 (= res!865997 (contains!8310 lt!583377 lt!583373))))

(assert (=> d!141619 (= (addApplyDifferent!560 lt!583377 lt!583372 minValue!1387 lt!583373) lt!583432)))

(declare-fun b!1303782 () Bool)

(assert (=> b!1303782 (= e!743698 (not (= lt!583373 lt!583372)))))

(assert (= (and d!141619 res!865997) b!1303782))

(assert (=> d!141619 m!1194599))

(declare-fun m!1194729 () Bool)

(assert (=> d!141619 m!1194729))

(declare-fun m!1194731 () Bool)

(assert (=> d!141619 m!1194731))

(assert (=> d!141619 m!1194597))

(assert (=> d!141619 m!1194599))

(assert (=> d!141619 m!1194601))

(assert (=> b!1303674 d!141619))

(declare-fun d!141621 () Bool)

(assert (=> d!141621 (= (apply!1057 (+!4458 lt!583386 (tuple2!22779 lt!583376 minValue!1387)) lt!583383) (apply!1057 lt!583386 lt!583383))))

(declare-fun lt!583433 () Unit!43110)

(assert (=> d!141621 (= lt!583433 (choose!1932 lt!583386 lt!583376 minValue!1387 lt!583383))))

(declare-fun e!743699 () Bool)

(assert (=> d!141621 e!743699))

(declare-fun res!865998 () Bool)

(assert (=> d!141621 (=> (not res!865998) (not e!743699))))

(assert (=> d!141621 (= res!865998 (contains!8310 lt!583386 lt!583383))))

(assert (=> d!141621 (= (addApplyDifferent!560 lt!583386 lt!583376 minValue!1387 lt!583383) lt!583433)))

(declare-fun b!1303783 () Bool)

(assert (=> b!1303783 (= e!743699 (not (= lt!583383 lt!583376)))))

(assert (= (and d!141621 res!865998) b!1303783))

(assert (=> d!141621 m!1194581))

(declare-fun m!1194733 () Bool)

(assert (=> d!141621 m!1194733))

(declare-fun m!1194735 () Bool)

(assert (=> d!141621 m!1194735))

(assert (=> d!141621 m!1194583))

(assert (=> d!141621 m!1194581))

(assert (=> d!141621 m!1194585))

(assert (=> b!1303674 d!141621))

(declare-fun d!141623 () Bool)

(assert (=> d!141623 (= (apply!1057 (+!4458 lt!583371 (tuple2!22779 lt!583369 zeroValue!1387)) lt!583384) (get!21205 (getValueByKey!707 (toList!10239 (+!4458 lt!583371 (tuple2!22779 lt!583369 zeroValue!1387))) lt!583384)))))

(declare-fun bs!37124 () Bool)

(assert (= bs!37124 d!141623))

(declare-fun m!1194737 () Bool)

(assert (=> bs!37124 m!1194737))

(assert (=> bs!37124 m!1194737))

(declare-fun m!1194739 () Bool)

(assert (=> bs!37124 m!1194739))

(assert (=> b!1303674 d!141623))

(declare-fun d!141625 () Bool)

(declare-fun e!743702 () Bool)

(assert (=> d!141625 e!743702))

(declare-fun res!866004 () Bool)

(assert (=> d!141625 (=> (not res!866004) (not e!743702))))

(declare-fun lt!583442 () ListLongMap!20447)

(assert (=> d!141625 (= res!866004 (contains!8310 lt!583442 (_1!11399 (tuple2!22779 lt!583376 minValue!1387))))))

(declare-fun lt!583443 () List!29929)

(assert (=> d!141625 (= lt!583442 (ListLongMap!20448 lt!583443))))

(declare-fun lt!583445 () Unit!43110)

(declare-fun lt!583444 () Unit!43110)

(assert (=> d!141625 (= lt!583445 lt!583444)))

(assert (=> d!141625 (= (getValueByKey!707 lt!583443 (_1!11399 (tuple2!22779 lt!583376 minValue!1387))) (Some!757 (_2!11399 (tuple2!22779 lt!583376 minValue!1387))))))

(declare-fun lemmaContainsTupThenGetReturnValue!351 (List!29929 (_ BitVec 64) V!51651) Unit!43110)

(assert (=> d!141625 (= lt!583444 (lemmaContainsTupThenGetReturnValue!351 lt!583443 (_1!11399 (tuple2!22779 lt!583376 minValue!1387)) (_2!11399 (tuple2!22779 lt!583376 minValue!1387))))))

(declare-fun insertStrictlySorted!480 (List!29929 (_ BitVec 64) V!51651) List!29929)

(assert (=> d!141625 (= lt!583443 (insertStrictlySorted!480 (toList!10239 lt!583386) (_1!11399 (tuple2!22779 lt!583376 minValue!1387)) (_2!11399 (tuple2!22779 lt!583376 minValue!1387))))))

(assert (=> d!141625 (= (+!4458 lt!583386 (tuple2!22779 lt!583376 minValue!1387)) lt!583442)))

(declare-fun b!1303788 () Bool)

(declare-fun res!866003 () Bool)

(assert (=> b!1303788 (=> (not res!866003) (not e!743702))))

(assert (=> b!1303788 (= res!866003 (= (getValueByKey!707 (toList!10239 lt!583442) (_1!11399 (tuple2!22779 lt!583376 minValue!1387))) (Some!757 (_2!11399 (tuple2!22779 lt!583376 minValue!1387)))))))

(declare-fun b!1303789 () Bool)

(declare-fun contains!8313 (List!29929 tuple2!22778) Bool)

(assert (=> b!1303789 (= e!743702 (contains!8313 (toList!10239 lt!583442) (tuple2!22779 lt!583376 minValue!1387)))))

(assert (= (and d!141625 res!866004) b!1303788))

(assert (= (and b!1303788 res!866003) b!1303789))

(declare-fun m!1194741 () Bool)

(assert (=> d!141625 m!1194741))

(declare-fun m!1194743 () Bool)

(assert (=> d!141625 m!1194743))

(declare-fun m!1194745 () Bool)

(assert (=> d!141625 m!1194745))

(declare-fun m!1194747 () Bool)

(assert (=> d!141625 m!1194747))

(declare-fun m!1194749 () Bool)

(assert (=> b!1303788 m!1194749))

(declare-fun m!1194751 () Bool)

(assert (=> b!1303789 m!1194751))

(assert (=> b!1303674 d!141625))

(declare-fun d!141627 () Bool)

(assert (=> d!141627 (= (apply!1057 lt!583386 lt!583383) (get!21205 (getValueByKey!707 (toList!10239 lt!583386) lt!583383)))))

(declare-fun bs!37125 () Bool)

(assert (= bs!37125 d!141627))

(declare-fun m!1194753 () Bool)

(assert (=> bs!37125 m!1194753))

(assert (=> bs!37125 m!1194753))

(declare-fun m!1194755 () Bool)

(assert (=> bs!37125 m!1194755))

(assert (=> b!1303674 d!141627))

(assert (=> b!1303674 d!141571))

(declare-fun d!141629 () Bool)

(assert (=> d!141629 (contains!8310 (+!4458 lt!583368 (tuple2!22779 lt!583387 zeroValue!1387)) lt!583367)))

(declare-fun lt!583448 () Unit!43110)

(declare-fun choose!1933 (ListLongMap!20447 (_ BitVec 64) V!51651 (_ BitVec 64)) Unit!43110)

(assert (=> d!141629 (= lt!583448 (choose!1933 lt!583368 lt!583387 zeroValue!1387 lt!583367))))

(assert (=> d!141629 (contains!8310 lt!583368 lt!583367)))

(assert (=> d!141629 (= (addStillContains!1126 lt!583368 lt!583387 zeroValue!1387 lt!583367) lt!583448)))

(declare-fun bs!37126 () Bool)

(assert (= bs!37126 d!141629))

(assert (=> bs!37126 m!1194587))

(assert (=> bs!37126 m!1194587))

(assert (=> bs!37126 m!1194589))

(declare-fun m!1194757 () Bool)

(assert (=> bs!37126 m!1194757))

(declare-fun m!1194759 () Bool)

(assert (=> bs!37126 m!1194759))

(assert (=> b!1303674 d!141629))

(declare-fun d!141631 () Bool)

(assert (=> d!141631 (= (apply!1057 (+!4458 lt!583377 (tuple2!22779 lt!583372 minValue!1387)) lt!583373) (get!21205 (getValueByKey!707 (toList!10239 (+!4458 lt!583377 (tuple2!22779 lt!583372 minValue!1387))) lt!583373)))))

(declare-fun bs!37127 () Bool)

(assert (= bs!37127 d!141631))

(declare-fun m!1194761 () Bool)

(assert (=> bs!37127 m!1194761))

(assert (=> bs!37127 m!1194761))

(declare-fun m!1194763 () Bool)

(assert (=> bs!37127 m!1194763))

(assert (=> b!1303674 d!141631))

(declare-fun d!141633 () Bool)

(assert (=> d!141633 (= (apply!1057 (+!4458 lt!583386 (tuple2!22779 lt!583376 minValue!1387)) lt!583383) (get!21205 (getValueByKey!707 (toList!10239 (+!4458 lt!583386 (tuple2!22779 lt!583376 minValue!1387))) lt!583383)))))

(declare-fun bs!37128 () Bool)

(assert (= bs!37128 d!141633))

(declare-fun m!1194765 () Bool)

(assert (=> bs!37128 m!1194765))

(assert (=> bs!37128 m!1194765))

(declare-fun m!1194767 () Bool)

(assert (=> bs!37128 m!1194767))

(assert (=> b!1303674 d!141633))

(declare-fun d!141635 () Bool)

(declare-fun e!743703 () Bool)

(assert (=> d!141635 e!743703))

(declare-fun res!866005 () Bool)

(assert (=> d!141635 (=> res!866005 e!743703)))

(declare-fun lt!583451 () Bool)

(assert (=> d!141635 (= res!866005 (not lt!583451))))

(declare-fun lt!583449 () Bool)

(assert (=> d!141635 (= lt!583451 lt!583449)))

(declare-fun lt!583452 () Unit!43110)

(declare-fun e!743704 () Unit!43110)

(assert (=> d!141635 (= lt!583452 e!743704)))

(declare-fun c!125105 () Bool)

(assert (=> d!141635 (= c!125105 lt!583449)))

(assert (=> d!141635 (= lt!583449 (containsKey!725 (toList!10239 (+!4458 lt!583368 (tuple2!22779 lt!583387 zeroValue!1387))) lt!583367))))

(assert (=> d!141635 (= (contains!8310 (+!4458 lt!583368 (tuple2!22779 lt!583387 zeroValue!1387)) lt!583367) lt!583451)))

(declare-fun b!1303791 () Bool)

(declare-fun lt!583450 () Unit!43110)

(assert (=> b!1303791 (= e!743704 lt!583450)))

(assert (=> b!1303791 (= lt!583450 (lemmaContainsKeyImpliesGetValueByKeyDefined!470 (toList!10239 (+!4458 lt!583368 (tuple2!22779 lt!583387 zeroValue!1387))) lt!583367))))

(assert (=> b!1303791 (isDefined!510 (getValueByKey!707 (toList!10239 (+!4458 lt!583368 (tuple2!22779 lt!583387 zeroValue!1387))) lt!583367))))

(declare-fun b!1303792 () Bool)

(declare-fun Unit!43121 () Unit!43110)

(assert (=> b!1303792 (= e!743704 Unit!43121)))

(declare-fun b!1303793 () Bool)

(assert (=> b!1303793 (= e!743703 (isDefined!510 (getValueByKey!707 (toList!10239 (+!4458 lt!583368 (tuple2!22779 lt!583387 zeroValue!1387))) lt!583367)))))

(assert (= (and d!141635 c!125105) b!1303791))

(assert (= (and d!141635 (not c!125105)) b!1303792))

(assert (= (and d!141635 (not res!866005)) b!1303793))

(declare-fun m!1194769 () Bool)

(assert (=> d!141635 m!1194769))

(declare-fun m!1194771 () Bool)

(assert (=> b!1303791 m!1194771))

(declare-fun m!1194773 () Bool)

(assert (=> b!1303791 m!1194773))

(assert (=> b!1303791 m!1194773))

(declare-fun m!1194775 () Bool)

(assert (=> b!1303791 m!1194775))

(assert (=> b!1303793 m!1194773))

(assert (=> b!1303793 m!1194773))

(assert (=> b!1303793 m!1194775))

(assert (=> b!1303674 d!141635))

(declare-fun d!141637 () Bool)

(assert (=> d!141637 (= (apply!1057 lt!583377 lt!583373) (get!21205 (getValueByKey!707 (toList!10239 lt!583377) lt!583373)))))

(declare-fun bs!37129 () Bool)

(assert (= bs!37129 d!141637))

(declare-fun m!1194777 () Bool)

(assert (=> bs!37129 m!1194777))

(assert (=> bs!37129 m!1194777))

(declare-fun m!1194779 () Bool)

(assert (=> bs!37129 m!1194779))

(assert (=> b!1303674 d!141637))

(declare-fun d!141639 () Bool)

(declare-fun e!743705 () Bool)

(assert (=> d!141639 e!743705))

(declare-fun res!866007 () Bool)

(assert (=> d!141639 (=> (not res!866007) (not e!743705))))

(declare-fun lt!583453 () ListLongMap!20447)

(assert (=> d!141639 (= res!866007 (contains!8310 lt!583453 (_1!11399 (tuple2!22779 lt!583369 zeroValue!1387))))))

(declare-fun lt!583454 () List!29929)

(assert (=> d!141639 (= lt!583453 (ListLongMap!20448 lt!583454))))

(declare-fun lt!583456 () Unit!43110)

(declare-fun lt!583455 () Unit!43110)

(assert (=> d!141639 (= lt!583456 lt!583455)))

(assert (=> d!141639 (= (getValueByKey!707 lt!583454 (_1!11399 (tuple2!22779 lt!583369 zeroValue!1387))) (Some!757 (_2!11399 (tuple2!22779 lt!583369 zeroValue!1387))))))

(assert (=> d!141639 (= lt!583455 (lemmaContainsTupThenGetReturnValue!351 lt!583454 (_1!11399 (tuple2!22779 lt!583369 zeroValue!1387)) (_2!11399 (tuple2!22779 lt!583369 zeroValue!1387))))))

(assert (=> d!141639 (= lt!583454 (insertStrictlySorted!480 (toList!10239 lt!583371) (_1!11399 (tuple2!22779 lt!583369 zeroValue!1387)) (_2!11399 (tuple2!22779 lt!583369 zeroValue!1387))))))

(assert (=> d!141639 (= (+!4458 lt!583371 (tuple2!22779 lt!583369 zeroValue!1387)) lt!583453)))

(declare-fun b!1303794 () Bool)

(declare-fun res!866006 () Bool)

(assert (=> b!1303794 (=> (not res!866006) (not e!743705))))

(assert (=> b!1303794 (= res!866006 (= (getValueByKey!707 (toList!10239 lt!583453) (_1!11399 (tuple2!22779 lt!583369 zeroValue!1387))) (Some!757 (_2!11399 (tuple2!22779 lt!583369 zeroValue!1387)))))))

(declare-fun b!1303795 () Bool)

(assert (=> b!1303795 (= e!743705 (contains!8313 (toList!10239 lt!583453) (tuple2!22779 lt!583369 zeroValue!1387)))))

(assert (= (and d!141639 res!866007) b!1303794))

(assert (= (and b!1303794 res!866006) b!1303795))

(declare-fun m!1194781 () Bool)

(assert (=> d!141639 m!1194781))

(declare-fun m!1194783 () Bool)

(assert (=> d!141639 m!1194783))

(declare-fun m!1194785 () Bool)

(assert (=> d!141639 m!1194785))

(declare-fun m!1194787 () Bool)

(assert (=> d!141639 m!1194787))

(declare-fun m!1194789 () Bool)

(assert (=> b!1303794 m!1194789))

(declare-fun m!1194791 () Bool)

(assert (=> b!1303795 m!1194791))

(assert (=> b!1303674 d!141639))

(declare-fun d!141641 () Bool)

(declare-fun e!743706 () Bool)

(assert (=> d!141641 e!743706))

(declare-fun res!866009 () Bool)

(assert (=> d!141641 (=> (not res!866009) (not e!743706))))

(declare-fun lt!583457 () ListLongMap!20447)

(assert (=> d!141641 (= res!866009 (contains!8310 lt!583457 (_1!11399 (tuple2!22779 lt!583372 minValue!1387))))))

(declare-fun lt!583458 () List!29929)

(assert (=> d!141641 (= lt!583457 (ListLongMap!20448 lt!583458))))

(declare-fun lt!583460 () Unit!43110)

(declare-fun lt!583459 () Unit!43110)

(assert (=> d!141641 (= lt!583460 lt!583459)))

(assert (=> d!141641 (= (getValueByKey!707 lt!583458 (_1!11399 (tuple2!22779 lt!583372 minValue!1387))) (Some!757 (_2!11399 (tuple2!22779 lt!583372 minValue!1387))))))

(assert (=> d!141641 (= lt!583459 (lemmaContainsTupThenGetReturnValue!351 lt!583458 (_1!11399 (tuple2!22779 lt!583372 minValue!1387)) (_2!11399 (tuple2!22779 lt!583372 minValue!1387))))))

(assert (=> d!141641 (= lt!583458 (insertStrictlySorted!480 (toList!10239 lt!583377) (_1!11399 (tuple2!22779 lt!583372 minValue!1387)) (_2!11399 (tuple2!22779 lt!583372 minValue!1387))))))

(assert (=> d!141641 (= (+!4458 lt!583377 (tuple2!22779 lt!583372 minValue!1387)) lt!583457)))

(declare-fun b!1303796 () Bool)

(declare-fun res!866008 () Bool)

(assert (=> b!1303796 (=> (not res!866008) (not e!743706))))

(assert (=> b!1303796 (= res!866008 (= (getValueByKey!707 (toList!10239 lt!583457) (_1!11399 (tuple2!22779 lt!583372 minValue!1387))) (Some!757 (_2!11399 (tuple2!22779 lt!583372 minValue!1387)))))))

(declare-fun b!1303797 () Bool)

(assert (=> b!1303797 (= e!743706 (contains!8313 (toList!10239 lt!583457) (tuple2!22779 lt!583372 minValue!1387)))))

(assert (= (and d!141641 res!866009) b!1303796))

(assert (= (and b!1303796 res!866008) b!1303797))

(declare-fun m!1194793 () Bool)

(assert (=> d!141641 m!1194793))

(declare-fun m!1194795 () Bool)

(assert (=> d!141641 m!1194795))

(declare-fun m!1194797 () Bool)

(assert (=> d!141641 m!1194797))

(declare-fun m!1194799 () Bool)

(assert (=> d!141641 m!1194799))

(declare-fun m!1194801 () Bool)

(assert (=> b!1303796 m!1194801))

(declare-fun m!1194803 () Bool)

(assert (=> b!1303797 m!1194803))

(assert (=> b!1303674 d!141641))

(declare-fun d!141643 () Bool)

(declare-fun e!743707 () Bool)

(assert (=> d!141643 e!743707))

(declare-fun res!866011 () Bool)

(assert (=> d!141643 (=> (not res!866011) (not e!743707))))

(declare-fun lt!583461 () ListLongMap!20447)

(assert (=> d!141643 (= res!866011 (contains!8310 lt!583461 (_1!11399 (tuple2!22779 lt!583387 zeroValue!1387))))))

(declare-fun lt!583462 () List!29929)

(assert (=> d!141643 (= lt!583461 (ListLongMap!20448 lt!583462))))

(declare-fun lt!583464 () Unit!43110)

(declare-fun lt!583463 () Unit!43110)

(assert (=> d!141643 (= lt!583464 lt!583463)))

(assert (=> d!141643 (= (getValueByKey!707 lt!583462 (_1!11399 (tuple2!22779 lt!583387 zeroValue!1387))) (Some!757 (_2!11399 (tuple2!22779 lt!583387 zeroValue!1387))))))

(assert (=> d!141643 (= lt!583463 (lemmaContainsTupThenGetReturnValue!351 lt!583462 (_1!11399 (tuple2!22779 lt!583387 zeroValue!1387)) (_2!11399 (tuple2!22779 lt!583387 zeroValue!1387))))))

(assert (=> d!141643 (= lt!583462 (insertStrictlySorted!480 (toList!10239 lt!583368) (_1!11399 (tuple2!22779 lt!583387 zeroValue!1387)) (_2!11399 (tuple2!22779 lt!583387 zeroValue!1387))))))

(assert (=> d!141643 (= (+!4458 lt!583368 (tuple2!22779 lt!583387 zeroValue!1387)) lt!583461)))

(declare-fun b!1303798 () Bool)

(declare-fun res!866010 () Bool)

(assert (=> b!1303798 (=> (not res!866010) (not e!743707))))

(assert (=> b!1303798 (= res!866010 (= (getValueByKey!707 (toList!10239 lt!583461) (_1!11399 (tuple2!22779 lt!583387 zeroValue!1387))) (Some!757 (_2!11399 (tuple2!22779 lt!583387 zeroValue!1387)))))))

(declare-fun b!1303799 () Bool)

(assert (=> b!1303799 (= e!743707 (contains!8313 (toList!10239 lt!583461) (tuple2!22779 lt!583387 zeroValue!1387)))))

(assert (= (and d!141643 res!866011) b!1303798))

(assert (= (and b!1303798 res!866010) b!1303799))

(declare-fun m!1194805 () Bool)

(assert (=> d!141643 m!1194805))

(declare-fun m!1194807 () Bool)

(assert (=> d!141643 m!1194807))

(declare-fun m!1194809 () Bool)

(assert (=> d!141643 m!1194809))

(declare-fun m!1194811 () Bool)

(assert (=> d!141643 m!1194811))

(declare-fun m!1194813 () Bool)

(assert (=> b!1303798 m!1194813))

(declare-fun m!1194815 () Bool)

(assert (=> b!1303799 m!1194815))

(assert (=> b!1303674 d!141643))

(declare-fun d!141645 () Bool)

(assert (=> d!141645 (= (apply!1057 (+!4458 lt!583371 (tuple2!22779 lt!583369 zeroValue!1387)) lt!583384) (apply!1057 lt!583371 lt!583384))))

(declare-fun lt!583465 () Unit!43110)

(assert (=> d!141645 (= lt!583465 (choose!1932 lt!583371 lt!583369 zeroValue!1387 lt!583384))))

(declare-fun e!743708 () Bool)

(assert (=> d!141645 e!743708))

(declare-fun res!866012 () Bool)

(assert (=> d!141645 (=> (not res!866012) (not e!743708))))

(assert (=> d!141645 (= res!866012 (contains!8310 lt!583371 lt!583384))))

(assert (=> d!141645 (= (addApplyDifferent!560 lt!583371 lt!583369 zeroValue!1387 lt!583384) lt!583465)))

(declare-fun b!1303800 () Bool)

(assert (=> b!1303800 (= e!743708 (not (= lt!583384 lt!583369)))))

(assert (= (and d!141645 res!866012) b!1303800))

(assert (=> d!141645 m!1194591))

(declare-fun m!1194817 () Bool)

(assert (=> d!141645 m!1194817))

(declare-fun m!1194819 () Bool)

(assert (=> d!141645 m!1194819))

(assert (=> d!141645 m!1194595))

(assert (=> d!141645 m!1194591))

(assert (=> d!141645 m!1194593))

(assert (=> b!1303674 d!141645))

(assert (=> bm!64223 d!141571))

(declare-fun d!141647 () Bool)

(assert (=> d!141647 (= (isDefined!510 (getValueByKey!707 (toList!10239 (ListLongMap!20448 Nil!29926)) k0!1205)) (not (isEmpty!1067 (getValueByKey!707 (toList!10239 (ListLongMap!20448 Nil!29926)) k0!1205))))))

(declare-fun bs!37130 () Bool)

(assert (= bs!37130 d!141647))

(assert (=> bs!37130 m!1194629))

(declare-fun m!1194821 () Bool)

(assert (=> bs!37130 m!1194821))

(assert (=> b!1303702 d!141647))

(declare-fun d!141649 () Bool)

(declare-fun c!125106 () Bool)

(assert (=> d!141649 (= c!125106 (and ((_ is Cons!29925) (toList!10239 (ListLongMap!20448 Nil!29926))) (= (_1!11399 (h!31134 (toList!10239 (ListLongMap!20448 Nil!29926)))) k0!1205)))))

(declare-fun e!743709 () Option!758)

(assert (=> d!141649 (= (getValueByKey!707 (toList!10239 (ListLongMap!20448 Nil!29926)) k0!1205) e!743709)))

(declare-fun b!1303802 () Bool)

(declare-fun e!743710 () Option!758)

(assert (=> b!1303802 (= e!743709 e!743710)))

(declare-fun c!125107 () Bool)

(assert (=> b!1303802 (= c!125107 (and ((_ is Cons!29925) (toList!10239 (ListLongMap!20448 Nil!29926))) (not (= (_1!11399 (h!31134 (toList!10239 (ListLongMap!20448 Nil!29926)))) k0!1205))))))

(declare-fun b!1303803 () Bool)

(assert (=> b!1303803 (= e!743710 (getValueByKey!707 (t!43530 (toList!10239 (ListLongMap!20448 Nil!29926))) k0!1205))))

(declare-fun b!1303804 () Bool)

(assert (=> b!1303804 (= e!743710 None!756)))

(declare-fun b!1303801 () Bool)

(assert (=> b!1303801 (= e!743709 (Some!757 (_2!11399 (h!31134 (toList!10239 (ListLongMap!20448 Nil!29926))))))))

(assert (= (and d!141649 c!125106) b!1303801))

(assert (= (and d!141649 (not c!125106)) b!1303802))

(assert (= (and b!1303802 c!125107) b!1303803))

(assert (= (and b!1303802 (not c!125107)) b!1303804))

(declare-fun m!1194823 () Bool)

(assert (=> b!1303803 m!1194823))

(assert (=> b!1303702 d!141649))

(assert (=> b!1303612 d!141605))

(assert (=> b!1303611 d!141583))

(declare-fun d!141651 () Bool)

(assert (=> d!141651 (isDefined!510 (getValueByKey!707 (toList!10239 (ListLongMap!20448 Nil!29926)) k0!1205))))

(declare-fun lt!583466 () Unit!43110)

(assert (=> d!141651 (= lt!583466 (choose!1931 (toList!10239 (ListLongMap!20448 Nil!29926)) k0!1205))))

(declare-fun e!743711 () Bool)

(assert (=> d!141651 e!743711))

(declare-fun res!866013 () Bool)

(assert (=> d!141651 (=> (not res!866013) (not e!743711))))

(assert (=> d!141651 (= res!866013 (isStrictlySorted!869 (toList!10239 (ListLongMap!20448 Nil!29926))))))

(assert (=> d!141651 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!470 (toList!10239 (ListLongMap!20448 Nil!29926)) k0!1205) lt!583466)))

(declare-fun b!1303805 () Bool)

(assert (=> b!1303805 (= e!743711 (containsKey!725 (toList!10239 (ListLongMap!20448 Nil!29926)) k0!1205))))

(assert (= (and d!141651 res!866013) b!1303805))

(assert (=> d!141651 m!1194629))

(assert (=> d!141651 m!1194629))

(assert (=> d!141651 m!1194631))

(declare-fun m!1194825 () Bool)

(assert (=> d!141651 m!1194825))

(declare-fun m!1194827 () Bool)

(assert (=> d!141651 m!1194827))

(assert (=> b!1303805 m!1194625))

(assert (=> b!1303700 d!141651))

(assert (=> b!1303700 d!141647))

(assert (=> b!1303700 d!141649))

(declare-fun d!141653 () Bool)

(assert (=> d!141653 (= (apply!1057 lt!583370 #b1000000000000000000000000000000000000000000000000000000000000000) (get!21205 (getValueByKey!707 (toList!10239 lt!583370) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun bs!37131 () Bool)

(assert (= bs!37131 d!141653))

(assert (=> bs!37131 m!1194657))

(assert (=> bs!37131 m!1194657))

(declare-fun m!1194829 () Bool)

(assert (=> bs!37131 m!1194829))

(assert (=> b!1303671 d!141653))

(declare-fun d!141655 () Bool)

(declare-fun e!743712 () Bool)

(assert (=> d!141655 e!743712))

(declare-fun res!866014 () Bool)

(assert (=> d!141655 (=> res!866014 e!743712)))

(declare-fun lt!583469 () Bool)

(assert (=> d!141655 (= res!866014 (not lt!583469))))

(declare-fun lt!583467 () Bool)

(assert (=> d!141655 (= lt!583469 lt!583467)))

(declare-fun lt!583470 () Unit!43110)

(declare-fun e!743713 () Unit!43110)

(assert (=> d!141655 (= lt!583470 e!743713)))

(declare-fun c!125108 () Bool)

(assert (=> d!141655 (= c!125108 lt!583467)))

(assert (=> d!141655 (= lt!583467 (containsKey!725 (toList!10239 lt!583312) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!141655 (= (contains!8310 lt!583312 #b1000000000000000000000000000000000000000000000000000000000000000) lt!583469)))

(declare-fun b!1303806 () Bool)

(declare-fun lt!583468 () Unit!43110)

(assert (=> b!1303806 (= e!743713 lt!583468)))

(assert (=> b!1303806 (= lt!583468 (lemmaContainsKeyImpliesGetValueByKeyDefined!470 (toList!10239 lt!583312) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1303806 (isDefined!510 (getValueByKey!707 (toList!10239 lt!583312) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1303807 () Bool)

(declare-fun Unit!43122 () Unit!43110)

(assert (=> b!1303807 (= e!743713 Unit!43122)))

(declare-fun b!1303808 () Bool)

(assert (=> b!1303808 (= e!743712 (isDefined!510 (getValueByKey!707 (toList!10239 lt!583312) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!141655 c!125108) b!1303806))

(assert (= (and d!141655 (not c!125108)) b!1303807))

(assert (= (and d!141655 (not res!866014)) b!1303808))

(declare-fun m!1194831 () Bool)

(assert (=> d!141655 m!1194831))

(declare-fun m!1194833 () Bool)

(assert (=> b!1303806 m!1194833))

(declare-fun m!1194835 () Bool)

(assert (=> b!1303806 m!1194835))

(assert (=> b!1303806 m!1194835))

(declare-fun m!1194837 () Bool)

(assert (=> b!1303806 m!1194837))

(assert (=> b!1303808 m!1194835))

(assert (=> b!1303808 m!1194835))

(assert (=> b!1303808 m!1194837))

(assert (=> b!1303610 d!141655))

(declare-fun d!141657 () Bool)

(declare-fun e!743714 () Bool)

(assert (=> d!141657 e!743714))

(declare-fun res!866016 () Bool)

(assert (=> d!141657 (=> (not res!866016) (not e!743714))))

(declare-fun lt!583471 () ListLongMap!20447)

(assert (=> d!141657 (= res!866016 (contains!8310 lt!583471 (_1!11399 (tuple2!22779 lt!583311 lt!583317))))))

(declare-fun lt!583472 () List!29929)

(assert (=> d!141657 (= lt!583471 (ListLongMap!20448 lt!583472))))

(declare-fun lt!583474 () Unit!43110)

(declare-fun lt!583473 () Unit!43110)

(assert (=> d!141657 (= lt!583474 lt!583473)))

(assert (=> d!141657 (= (getValueByKey!707 lt!583472 (_1!11399 (tuple2!22779 lt!583311 lt!583317))) (Some!757 (_2!11399 (tuple2!22779 lt!583311 lt!583317))))))

(assert (=> d!141657 (= lt!583473 (lemmaContainsTupThenGetReturnValue!351 lt!583472 (_1!11399 (tuple2!22779 lt!583311 lt!583317)) (_2!11399 (tuple2!22779 lt!583311 lt!583317))))))

(assert (=> d!141657 (= lt!583472 (insertStrictlySorted!480 (toList!10239 lt!583314) (_1!11399 (tuple2!22779 lt!583311 lt!583317)) (_2!11399 (tuple2!22779 lt!583311 lt!583317))))))

(assert (=> d!141657 (= (+!4458 lt!583314 (tuple2!22779 lt!583311 lt!583317)) lt!583471)))

(declare-fun b!1303809 () Bool)

(declare-fun res!866015 () Bool)

(assert (=> b!1303809 (=> (not res!866015) (not e!743714))))

(assert (=> b!1303809 (= res!866015 (= (getValueByKey!707 (toList!10239 lt!583471) (_1!11399 (tuple2!22779 lt!583311 lt!583317))) (Some!757 (_2!11399 (tuple2!22779 lt!583311 lt!583317)))))))

(declare-fun b!1303810 () Bool)

(assert (=> b!1303810 (= e!743714 (contains!8313 (toList!10239 lt!583471) (tuple2!22779 lt!583311 lt!583317)))))

(assert (= (and d!141657 res!866016) b!1303809))

(assert (= (and b!1303809 res!866015) b!1303810))

(declare-fun m!1194839 () Bool)

(assert (=> d!141657 m!1194839))

(declare-fun m!1194841 () Bool)

(assert (=> d!141657 m!1194841))

(declare-fun m!1194843 () Bool)

(assert (=> d!141657 m!1194843))

(declare-fun m!1194845 () Bool)

(assert (=> d!141657 m!1194845))

(declare-fun m!1194847 () Bool)

(assert (=> b!1303809 m!1194847))

(declare-fun m!1194849 () Bool)

(assert (=> b!1303810 m!1194849))

(assert (=> b!1303609 d!141657))

(declare-fun d!141659 () Bool)

(assert (=> d!141659 (not (contains!8310 (+!4458 lt!583314 (tuple2!22779 lt!583311 lt!583317)) lt!583315))))

(declare-fun lt!583477 () Unit!43110)

(declare-fun choose!1934 (ListLongMap!20447 (_ BitVec 64) V!51651 (_ BitVec 64)) Unit!43110)

(assert (=> d!141659 (= lt!583477 (choose!1934 lt!583314 lt!583311 lt!583317 lt!583315))))

(declare-fun e!743717 () Bool)

(assert (=> d!141659 e!743717))

(declare-fun res!866019 () Bool)

(assert (=> d!141659 (=> (not res!866019) (not e!743717))))

(assert (=> d!141659 (= res!866019 (not (contains!8310 lt!583314 lt!583315)))))

(assert (=> d!141659 (= (addStillNotContains!482 lt!583314 lt!583311 lt!583317 lt!583315) lt!583477)))

(declare-fun b!1303814 () Bool)

(assert (=> b!1303814 (= e!743717 (not (= lt!583311 lt!583315)))))

(assert (= (and d!141659 res!866019) b!1303814))

(assert (=> d!141659 m!1194545))

(assert (=> d!141659 m!1194545))

(assert (=> d!141659 m!1194551))

(declare-fun m!1194851 () Bool)

(assert (=> d!141659 m!1194851))

(declare-fun m!1194853 () Bool)

(assert (=> d!141659 m!1194853))

(assert (=> b!1303609 d!141659))

(declare-fun d!141661 () Bool)

(declare-fun e!743718 () Bool)

(assert (=> d!141661 e!743718))

(declare-fun res!866020 () Bool)

(assert (=> d!141661 (=> res!866020 e!743718)))

(declare-fun lt!583480 () Bool)

(assert (=> d!141661 (= res!866020 (not lt!583480))))

(declare-fun lt!583478 () Bool)

(assert (=> d!141661 (= lt!583480 lt!583478)))

(declare-fun lt!583481 () Unit!43110)

(declare-fun e!743719 () Unit!43110)

(assert (=> d!141661 (= lt!583481 e!743719)))

(declare-fun c!125109 () Bool)

(assert (=> d!141661 (= c!125109 lt!583478)))

(assert (=> d!141661 (= lt!583478 (containsKey!725 (toList!10239 (+!4458 lt!583314 (tuple2!22779 lt!583311 lt!583317))) lt!583315))))

(assert (=> d!141661 (= (contains!8310 (+!4458 lt!583314 (tuple2!22779 lt!583311 lt!583317)) lt!583315) lt!583480)))

(declare-fun b!1303815 () Bool)

(declare-fun lt!583479 () Unit!43110)

(assert (=> b!1303815 (= e!743719 lt!583479)))

(assert (=> b!1303815 (= lt!583479 (lemmaContainsKeyImpliesGetValueByKeyDefined!470 (toList!10239 (+!4458 lt!583314 (tuple2!22779 lt!583311 lt!583317))) lt!583315))))

(assert (=> b!1303815 (isDefined!510 (getValueByKey!707 (toList!10239 (+!4458 lt!583314 (tuple2!22779 lt!583311 lt!583317))) lt!583315))))

(declare-fun b!1303816 () Bool)

(declare-fun Unit!43123 () Unit!43110)

(assert (=> b!1303816 (= e!743719 Unit!43123)))

(declare-fun b!1303817 () Bool)

(assert (=> b!1303817 (= e!743718 (isDefined!510 (getValueByKey!707 (toList!10239 (+!4458 lt!583314 (tuple2!22779 lt!583311 lt!583317))) lt!583315)))))

(assert (= (and d!141661 c!125109) b!1303815))

(assert (= (and d!141661 (not c!125109)) b!1303816))

(assert (= (and d!141661 (not res!866020)) b!1303817))

(declare-fun m!1194855 () Bool)

(assert (=> d!141661 m!1194855))

(declare-fun m!1194857 () Bool)

(assert (=> b!1303815 m!1194857))

(declare-fun m!1194859 () Bool)

(assert (=> b!1303815 m!1194859))

(assert (=> b!1303815 m!1194859))

(declare-fun m!1194861 () Bool)

(assert (=> b!1303815 m!1194861))

(assert (=> b!1303817 m!1194859))

(assert (=> b!1303817 m!1194859))

(assert (=> b!1303817 m!1194861))

(assert (=> b!1303609 d!141661))

(declare-fun d!141663 () Bool)

(declare-fun e!743720 () Bool)

(assert (=> d!141663 e!743720))

(declare-fun res!866022 () Bool)

(assert (=> d!141663 (=> (not res!866022) (not e!743720))))

(declare-fun lt!583482 () ListLongMap!20447)

(assert (=> d!141663 (= res!866022 (contains!8310 lt!583482 (_1!11399 (tuple2!22779 (select (arr!41887 _keys!1741) from!2144) (get!21204 (select (arr!41886 _values!1445) from!2144) (dynLambda!3509 defaultEntry!1448 #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun lt!583483 () List!29929)

(assert (=> d!141663 (= lt!583482 (ListLongMap!20448 lt!583483))))

(declare-fun lt!583485 () Unit!43110)

(declare-fun lt!583484 () Unit!43110)

(assert (=> d!141663 (= lt!583485 lt!583484)))

(assert (=> d!141663 (= (getValueByKey!707 lt!583483 (_1!11399 (tuple2!22779 (select (arr!41887 _keys!1741) from!2144) (get!21204 (select (arr!41886 _values!1445) from!2144) (dynLambda!3509 defaultEntry!1448 #b0000000000000000000000000000000000000000000000000000000000000000))))) (Some!757 (_2!11399 (tuple2!22779 (select (arr!41887 _keys!1741) from!2144) (get!21204 (select (arr!41886 _values!1445) from!2144) (dynLambda!3509 defaultEntry!1448 #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!141663 (= lt!583484 (lemmaContainsTupThenGetReturnValue!351 lt!583483 (_1!11399 (tuple2!22779 (select (arr!41887 _keys!1741) from!2144) (get!21204 (select (arr!41886 _values!1445) from!2144) (dynLambda!3509 defaultEntry!1448 #b0000000000000000000000000000000000000000000000000000000000000000)))) (_2!11399 (tuple2!22779 (select (arr!41887 _keys!1741) from!2144) (get!21204 (select (arr!41886 _values!1445) from!2144) (dynLambda!3509 defaultEntry!1448 #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!141663 (= lt!583483 (insertStrictlySorted!480 (toList!10239 call!64205) (_1!11399 (tuple2!22779 (select (arr!41887 _keys!1741) from!2144) (get!21204 (select (arr!41886 _values!1445) from!2144) (dynLambda!3509 defaultEntry!1448 #b0000000000000000000000000000000000000000000000000000000000000000)))) (_2!11399 (tuple2!22779 (select (arr!41887 _keys!1741) from!2144) (get!21204 (select (arr!41886 _values!1445) from!2144) (dynLambda!3509 defaultEntry!1448 #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!141663 (= (+!4458 call!64205 (tuple2!22779 (select (arr!41887 _keys!1741) from!2144) (get!21204 (select (arr!41886 _values!1445) from!2144) (dynLambda!3509 defaultEntry!1448 #b0000000000000000000000000000000000000000000000000000000000000000)))) lt!583482)))

(declare-fun b!1303818 () Bool)

(declare-fun res!866021 () Bool)

(assert (=> b!1303818 (=> (not res!866021) (not e!743720))))

(assert (=> b!1303818 (= res!866021 (= (getValueByKey!707 (toList!10239 lt!583482) (_1!11399 (tuple2!22779 (select (arr!41887 _keys!1741) from!2144) (get!21204 (select (arr!41886 _values!1445) from!2144) (dynLambda!3509 defaultEntry!1448 #b0000000000000000000000000000000000000000000000000000000000000000))))) (Some!757 (_2!11399 (tuple2!22779 (select (arr!41887 _keys!1741) from!2144) (get!21204 (select (arr!41886 _values!1445) from!2144) (dynLambda!3509 defaultEntry!1448 #b0000000000000000000000000000000000000000000000000000000000000000)))))))))

(declare-fun b!1303819 () Bool)

(assert (=> b!1303819 (= e!743720 (contains!8313 (toList!10239 lt!583482) (tuple2!22779 (select (arr!41887 _keys!1741) from!2144) (get!21204 (select (arr!41886 _values!1445) from!2144) (dynLambda!3509 defaultEntry!1448 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (= (and d!141663 res!866022) b!1303818))

(assert (= (and b!1303818 res!866021) b!1303819))

(declare-fun m!1194863 () Bool)

(assert (=> d!141663 m!1194863))

(declare-fun m!1194865 () Bool)

(assert (=> d!141663 m!1194865))

(declare-fun m!1194867 () Bool)

(assert (=> d!141663 m!1194867))

(declare-fun m!1194869 () Bool)

(assert (=> d!141663 m!1194869))

(declare-fun m!1194871 () Bool)

(assert (=> b!1303818 m!1194871))

(declare-fun m!1194873 () Bool)

(assert (=> b!1303819 m!1194873))

(assert (=> b!1303609 d!141663))

(assert (=> b!1303609 d!141601))

(declare-fun d!141665 () Bool)

(declare-fun e!743721 () Bool)

(assert (=> d!141665 e!743721))

(declare-fun res!866024 () Bool)

(assert (=> d!141665 (=> (not res!866024) (not e!743721))))

(declare-fun lt!583486 () ListLongMap!20447)

(assert (=> d!141665 (= res!866024 (contains!8310 lt!583486 (_1!11399 (tuple2!22779 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387))))))

(declare-fun lt!583487 () List!29929)

(assert (=> d!141665 (= lt!583486 (ListLongMap!20448 lt!583487))))

(declare-fun lt!583489 () Unit!43110)

(declare-fun lt!583488 () Unit!43110)

(assert (=> d!141665 (= lt!583489 lt!583488)))

(assert (=> d!141665 (= (getValueByKey!707 lt!583487 (_1!11399 (tuple2!22779 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387))) (Some!757 (_2!11399 (tuple2!22779 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387))))))

(assert (=> d!141665 (= lt!583488 (lemmaContainsTupThenGetReturnValue!351 lt!583487 (_1!11399 (tuple2!22779 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387)) (_2!11399 (tuple2!22779 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387))))))

(assert (=> d!141665 (= lt!583487 (insertStrictlySorted!480 (toList!10239 call!64221) (_1!11399 (tuple2!22779 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387)) (_2!11399 (tuple2!22779 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387))))))

(assert (=> d!141665 (= (+!4458 call!64221 (tuple2!22779 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387)) lt!583486)))

(declare-fun b!1303820 () Bool)

(declare-fun res!866023 () Bool)

(assert (=> b!1303820 (=> (not res!866023) (not e!743721))))

(assert (=> b!1303820 (= res!866023 (= (getValueByKey!707 (toList!10239 lt!583486) (_1!11399 (tuple2!22779 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387))) (Some!757 (_2!11399 (tuple2!22779 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387)))))))

(declare-fun b!1303821 () Bool)

(assert (=> b!1303821 (= e!743721 (contains!8313 (toList!10239 lt!583486) (tuple2!22779 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387)))))

(assert (= (and d!141665 res!866024) b!1303820))

(assert (= (and b!1303820 res!866023) b!1303821))

(declare-fun m!1194875 () Bool)

(assert (=> d!141665 m!1194875))

(declare-fun m!1194877 () Bool)

(assert (=> d!141665 m!1194877))

(declare-fun m!1194879 () Bool)

(assert (=> d!141665 m!1194879))

(declare-fun m!1194881 () Bool)

(assert (=> d!141665 m!1194881))

(declare-fun m!1194883 () Bool)

(assert (=> b!1303820 m!1194883))

(declare-fun m!1194885 () Bool)

(assert (=> b!1303821 m!1194885))

(assert (=> b!1303670 d!141665))

(declare-fun d!141667 () Bool)

(assert (=> d!141667 (= (validKeyInArray!0 (select (arr!41887 _keys!1741) #b00000000000000000000000000000000)) (and (not (= (select (arr!41887 _keys!1741) #b00000000000000000000000000000000) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!41887 _keys!1741) #b00000000000000000000000000000000) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1303699 d!141667))

(declare-fun d!141669 () Bool)

(declare-fun e!743722 () Bool)

(assert (=> d!141669 e!743722))

(declare-fun res!866025 () Bool)

(assert (=> d!141669 (=> res!866025 e!743722)))

(declare-fun lt!583492 () Bool)

(assert (=> d!141669 (= res!866025 (not lt!583492))))

(declare-fun lt!583490 () Bool)

(assert (=> d!141669 (= lt!583492 lt!583490)))

(declare-fun lt!583493 () Unit!43110)

(declare-fun e!743723 () Unit!43110)

(assert (=> d!141669 (= lt!583493 e!743723)))

(declare-fun c!125110 () Bool)

(assert (=> d!141669 (= c!125110 lt!583490)))

(assert (=> d!141669 (= lt!583490 (containsKey!725 (toList!10239 lt!583312) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!141669 (= (contains!8310 lt!583312 #b0000000000000000000000000000000000000000000000000000000000000000) lt!583492)))

(declare-fun b!1303822 () Bool)

(declare-fun lt!583491 () Unit!43110)

(assert (=> b!1303822 (= e!743723 lt!583491)))

(assert (=> b!1303822 (= lt!583491 (lemmaContainsKeyImpliesGetValueByKeyDefined!470 (toList!10239 lt!583312) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1303822 (isDefined!510 (getValueByKey!707 (toList!10239 lt!583312) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1303823 () Bool)

(declare-fun Unit!43124 () Unit!43110)

(assert (=> b!1303823 (= e!743723 Unit!43124)))

(declare-fun b!1303824 () Bool)

(assert (=> b!1303824 (= e!743722 (isDefined!510 (getValueByKey!707 (toList!10239 lt!583312) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!141669 c!125110) b!1303822))

(assert (= (and d!141669 (not c!125110)) b!1303823))

(assert (= (and d!141669 (not res!866025)) b!1303824))

(declare-fun m!1194887 () Bool)

(assert (=> d!141669 m!1194887))

(declare-fun m!1194889 () Bool)

(assert (=> b!1303822 m!1194889))

(declare-fun m!1194891 () Bool)

(assert (=> b!1303822 m!1194891))

(assert (=> b!1303822 m!1194891))

(declare-fun m!1194893 () Bool)

(assert (=> b!1303822 m!1194893))

(assert (=> b!1303824 m!1194891))

(assert (=> b!1303824 m!1194891))

(assert (=> b!1303824 m!1194893))

(assert (=> d!141571 d!141669))

(assert (=> d!141571 d!141563))

(declare-fun d!141671 () Bool)

(declare-fun e!743724 () Bool)

(assert (=> d!141671 e!743724))

(declare-fun res!866027 () Bool)

(assert (=> d!141671 (=> (not res!866027) (not e!743724))))

(declare-fun lt!583494 () ListLongMap!20447)

(assert (=> d!141671 (= res!866027 (contains!8310 lt!583494 (_1!11399 (ite (or c!125077 c!125075) (tuple2!22779 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387) (tuple2!22779 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387)))))))

(declare-fun lt!583495 () List!29929)

(assert (=> d!141671 (= lt!583494 (ListLongMap!20448 lt!583495))))

(declare-fun lt!583497 () Unit!43110)

(declare-fun lt!583496 () Unit!43110)

(assert (=> d!141671 (= lt!583497 lt!583496)))

(assert (=> d!141671 (= (getValueByKey!707 lt!583495 (_1!11399 (ite (or c!125077 c!125075) (tuple2!22779 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387) (tuple2!22779 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387)))) (Some!757 (_2!11399 (ite (or c!125077 c!125075) (tuple2!22779 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387) (tuple2!22779 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387)))))))

(assert (=> d!141671 (= lt!583496 (lemmaContainsTupThenGetReturnValue!351 lt!583495 (_1!11399 (ite (or c!125077 c!125075) (tuple2!22779 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387) (tuple2!22779 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387))) (_2!11399 (ite (or c!125077 c!125075) (tuple2!22779 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387) (tuple2!22779 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387)))))))

(assert (=> d!141671 (= lt!583495 (insertStrictlySorted!480 (toList!10239 (ite c!125077 call!64220 (ite c!125075 call!64225 call!64224))) (_1!11399 (ite (or c!125077 c!125075) (tuple2!22779 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387) (tuple2!22779 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387))) (_2!11399 (ite (or c!125077 c!125075) (tuple2!22779 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387) (tuple2!22779 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387)))))))

(assert (=> d!141671 (= (+!4458 (ite c!125077 call!64220 (ite c!125075 call!64225 call!64224)) (ite (or c!125077 c!125075) (tuple2!22779 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387) (tuple2!22779 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387))) lt!583494)))

(declare-fun b!1303825 () Bool)

(declare-fun res!866026 () Bool)

(assert (=> b!1303825 (=> (not res!866026) (not e!743724))))

(assert (=> b!1303825 (= res!866026 (= (getValueByKey!707 (toList!10239 lt!583494) (_1!11399 (ite (or c!125077 c!125075) (tuple2!22779 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387) (tuple2!22779 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387)))) (Some!757 (_2!11399 (ite (or c!125077 c!125075) (tuple2!22779 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387) (tuple2!22779 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387))))))))

(declare-fun b!1303826 () Bool)

(assert (=> b!1303826 (= e!743724 (contains!8313 (toList!10239 lt!583494) (ite (or c!125077 c!125075) (tuple2!22779 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387) (tuple2!22779 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387))))))

(assert (= (and d!141671 res!866027) b!1303825))

(assert (= (and b!1303825 res!866026) b!1303826))

(declare-fun m!1194895 () Bool)

(assert (=> d!141671 m!1194895))

(declare-fun m!1194897 () Bool)

(assert (=> d!141671 m!1194897))

(declare-fun m!1194899 () Bool)

(assert (=> d!141671 m!1194899))

(declare-fun m!1194901 () Bool)

(assert (=> d!141671 m!1194901))

(declare-fun m!1194903 () Bool)

(assert (=> b!1303825 m!1194903))

(declare-fun m!1194905 () Bool)

(assert (=> b!1303826 m!1194905))

(assert (=> bm!64221 d!141671))

(assert (=> b!1303608 d!141583))

(declare-fun d!141673 () Bool)

(assert (=> d!141673 (= (apply!1057 lt!583370 #b0000000000000000000000000000000000000000000000000000000000000000) (get!21205 (getValueByKey!707 (toList!10239 lt!583370) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun bs!37132 () Bool)

(assert (= bs!37132 d!141673))

(declare-fun m!1194907 () Bool)

(assert (=> bs!37132 m!1194907))

(assert (=> bs!37132 m!1194907))

(declare-fun m!1194909 () Bool)

(assert (=> bs!37132 m!1194909))

(assert (=> b!1303667 d!141673))

(declare-fun b!1303827 () Bool)

(declare-fun e!743727 () Bool)

(declare-fun call!64234 () Bool)

(assert (=> b!1303827 (= e!743727 call!64234)))

(declare-fun d!141675 () Bool)

(declare-fun res!866029 () Bool)

(declare-fun e!743725 () Bool)

(assert (=> d!141675 (=> res!866029 e!743725)))

(assert (=> d!141675 (= res!866029 (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!42438 _keys!1741)))))

(assert (=> d!141675 (= (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) _keys!1741 mask!2175) e!743725)))

(declare-fun b!1303828 () Bool)

(declare-fun e!743726 () Bool)

(assert (=> b!1303828 (= e!743726 call!64234)))

(declare-fun b!1303829 () Bool)

(assert (=> b!1303829 (= e!743726 e!743727)))

(declare-fun lt!583499 () (_ BitVec 64))

(assert (=> b!1303829 (= lt!583499 (select (arr!41887 _keys!1741) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(declare-fun lt!583498 () Unit!43110)

(assert (=> b!1303829 (= lt!583498 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1741 lt!583499 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (=> b!1303829 (arrayContainsKey!0 _keys!1741 lt!583499 #b00000000000000000000000000000000)))

(declare-fun lt!583500 () Unit!43110)

(assert (=> b!1303829 (= lt!583500 lt!583498)))

(declare-fun res!866028 () Bool)

(assert (=> b!1303829 (= res!866028 (= (seekEntryOrOpen!0 (select (arr!41887 _keys!1741) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) _keys!1741 mask!2175) (Found!10022 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(assert (=> b!1303829 (=> (not res!866028) (not e!743727))))

(declare-fun bm!64231 () Bool)

(assert (=> bm!64231 (= call!64234 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) _keys!1741 mask!2175))))

(declare-fun b!1303830 () Bool)

(assert (=> b!1303830 (= e!743725 e!743726)))

(declare-fun c!125111 () Bool)

(assert (=> b!1303830 (= c!125111 (validKeyInArray!0 (select (arr!41887 _keys!1741) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(assert (= (and d!141675 (not res!866029)) b!1303830))

(assert (= (and b!1303830 c!125111) b!1303829))

(assert (= (and b!1303830 (not c!125111)) b!1303828))

(assert (= (and b!1303829 res!866028) b!1303827))

(assert (= (or b!1303827 b!1303828) bm!64231))

(declare-fun m!1194911 () Bool)

(assert (=> b!1303829 m!1194911))

(declare-fun m!1194913 () Bool)

(assert (=> b!1303829 m!1194913))

(declare-fun m!1194915 () Bool)

(assert (=> b!1303829 m!1194915))

(assert (=> b!1303829 m!1194911))

(declare-fun m!1194917 () Bool)

(assert (=> b!1303829 m!1194917))

(declare-fun m!1194919 () Bool)

(assert (=> bm!64231 m!1194919))

(assert (=> b!1303830 m!1194911))

(assert (=> b!1303830 m!1194911))

(declare-fun m!1194921 () Bool)

(assert (=> b!1303830 m!1194921))

(assert (=> bm!64226 d!141675))

(declare-fun d!141677 () Bool)

(assert (=> d!141677 (arrayContainsKey!0 _keys!1741 lt!583395 #b00000000000000000000000000000000)))

(declare-fun lt!583503 () Unit!43110)

(declare-fun choose!13 (array!86801 (_ BitVec 64) (_ BitVec 32)) Unit!43110)

(assert (=> d!141677 (= lt!583503 (choose!13 _keys!1741 lt!583395 #b00000000000000000000000000000000))))

(assert (=> d!141677 (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000)))

(assert (=> d!141677 (= (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1741 lt!583395 #b00000000000000000000000000000000) lt!583503)))

(declare-fun bs!37133 () Bool)

(assert (= bs!37133 d!141677))

(assert (=> bs!37133 m!1194617))

(declare-fun m!1194923 () Bool)

(assert (=> bs!37133 m!1194923))

(assert (=> b!1303698 d!141677))

(declare-fun d!141679 () Bool)

(declare-fun res!866034 () Bool)

(declare-fun e!743732 () Bool)

(assert (=> d!141679 (=> res!866034 e!743732)))

(assert (=> d!141679 (= res!866034 (= (select (arr!41887 _keys!1741) #b00000000000000000000000000000000) lt!583395))))

(assert (=> d!141679 (= (arrayContainsKey!0 _keys!1741 lt!583395 #b00000000000000000000000000000000) e!743732)))

(declare-fun b!1303835 () Bool)

(declare-fun e!743733 () Bool)

(assert (=> b!1303835 (= e!743732 e!743733)))

(declare-fun res!866035 () Bool)

(assert (=> b!1303835 (=> (not res!866035) (not e!743733))))

(assert (=> b!1303835 (= res!866035 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!42438 _keys!1741)))))

(declare-fun b!1303836 () Bool)

(assert (=> b!1303836 (= e!743733 (arrayContainsKey!0 _keys!1741 lt!583395 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!141679 (not res!866034)) b!1303835))

(assert (= (and b!1303835 res!866035) b!1303836))

(assert (=> d!141679 m!1194613))

(declare-fun m!1194925 () Bool)

(assert (=> b!1303836 m!1194925))

(assert (=> b!1303698 d!141679))

(declare-fun b!1303849 () Bool)

(declare-fun c!125118 () Bool)

(declare-fun lt!583512 () (_ BitVec 64))

(assert (=> b!1303849 (= c!125118 (= lt!583512 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!743740 () SeekEntryResult!10022)

(declare-fun e!743742 () SeekEntryResult!10022)

(assert (=> b!1303849 (= e!743740 e!743742)))

(declare-fun b!1303850 () Bool)

(declare-fun e!743741 () SeekEntryResult!10022)

(assert (=> b!1303850 (= e!743741 Undefined!10022)))

(declare-fun d!141681 () Bool)

(declare-fun lt!583510 () SeekEntryResult!10022)

(assert (=> d!141681 (and (or ((_ is Undefined!10022) lt!583510) (not ((_ is Found!10022) lt!583510)) (and (bvsge (index!42459 lt!583510) #b00000000000000000000000000000000) (bvslt (index!42459 lt!583510) (size!42438 _keys!1741)))) (or ((_ is Undefined!10022) lt!583510) ((_ is Found!10022) lt!583510) (not ((_ is MissingZero!10022) lt!583510)) (and (bvsge (index!42458 lt!583510) #b00000000000000000000000000000000) (bvslt (index!42458 lt!583510) (size!42438 _keys!1741)))) (or ((_ is Undefined!10022) lt!583510) ((_ is Found!10022) lt!583510) ((_ is MissingZero!10022) lt!583510) (not ((_ is MissingVacant!10022) lt!583510)) (and (bvsge (index!42461 lt!583510) #b00000000000000000000000000000000) (bvslt (index!42461 lt!583510) (size!42438 _keys!1741)))) (or ((_ is Undefined!10022) lt!583510) (ite ((_ is Found!10022) lt!583510) (= (select (arr!41887 _keys!1741) (index!42459 lt!583510)) (select (arr!41887 _keys!1741) #b00000000000000000000000000000000)) (ite ((_ is MissingZero!10022) lt!583510) (= (select (arr!41887 _keys!1741) (index!42458 lt!583510)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!10022) lt!583510) (= (select (arr!41887 _keys!1741) (index!42461 lt!583510)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!141681 (= lt!583510 e!743741)))

(declare-fun c!125120 () Bool)

(declare-fun lt!583511 () SeekEntryResult!10022)

(assert (=> d!141681 (= c!125120 (and ((_ is Intermediate!10022) lt!583511) (undefined!10834 lt!583511)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!86801 (_ BitVec 32)) SeekEntryResult!10022)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!141681 (= lt!583511 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!41887 _keys!1741) #b00000000000000000000000000000000) mask!2175) (select (arr!41887 _keys!1741) #b00000000000000000000000000000000) _keys!1741 mask!2175))))

(assert (=> d!141681 (validMask!0 mask!2175)))

(assert (=> d!141681 (= (seekEntryOrOpen!0 (select (arr!41887 _keys!1741) #b00000000000000000000000000000000) _keys!1741 mask!2175) lt!583510)))

(declare-fun b!1303851 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!86801 (_ BitVec 32)) SeekEntryResult!10022)

(assert (=> b!1303851 (= e!743742 (seekKeyOrZeroReturnVacant!0 (x!115784 lt!583511) (index!42460 lt!583511) (index!42460 lt!583511) (select (arr!41887 _keys!1741) #b00000000000000000000000000000000) _keys!1741 mask!2175))))

(declare-fun b!1303852 () Bool)

(assert (=> b!1303852 (= e!743740 (Found!10022 (index!42460 lt!583511)))))

(declare-fun b!1303853 () Bool)

(assert (=> b!1303853 (= e!743741 e!743740)))

(assert (=> b!1303853 (= lt!583512 (select (arr!41887 _keys!1741) (index!42460 lt!583511)))))

(declare-fun c!125119 () Bool)

(assert (=> b!1303853 (= c!125119 (= lt!583512 (select (arr!41887 _keys!1741) #b00000000000000000000000000000000)))))

(declare-fun b!1303854 () Bool)

(assert (=> b!1303854 (= e!743742 (MissingZero!10022 (index!42460 lt!583511)))))

(assert (= (and d!141681 c!125120) b!1303850))

(assert (= (and d!141681 (not c!125120)) b!1303853))

(assert (= (and b!1303853 c!125119) b!1303852))

(assert (= (and b!1303853 (not c!125119)) b!1303849))

(assert (= (and b!1303849 c!125118) b!1303854))

(assert (= (and b!1303849 (not c!125118)) b!1303851))

(declare-fun m!1194927 () Bool)

(assert (=> d!141681 m!1194927))

(assert (=> d!141681 m!1194613))

(declare-fun m!1194929 () Bool)

(assert (=> d!141681 m!1194929))

(assert (=> d!141681 m!1194613))

(assert (=> d!141681 m!1194927))

(assert (=> d!141681 m!1194485))

(declare-fun m!1194931 () Bool)

(assert (=> d!141681 m!1194931))

(declare-fun m!1194933 () Bool)

(assert (=> d!141681 m!1194933))

(declare-fun m!1194935 () Bool)

(assert (=> d!141681 m!1194935))

(assert (=> b!1303851 m!1194613))

(declare-fun m!1194937 () Bool)

(assert (=> b!1303851 m!1194937))

(declare-fun m!1194939 () Bool)

(assert (=> b!1303853 m!1194939))

(assert (=> b!1303698 d!141681))

(assert (=> d!141575 d!141563))

(assert (=> b!1303682 d!141583))

(declare-fun d!141683 () Bool)

(declare-fun res!866040 () Bool)

(declare-fun e!743747 () Bool)

(assert (=> d!141683 (=> res!866040 e!743747)))

(assert (=> d!141683 (= res!866040 (and ((_ is Cons!29925) (toList!10239 (getCurrentListMap!5199 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448))) (= (_1!11399 (h!31134 (toList!10239 (getCurrentListMap!5199 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448)))) k0!1205)))))

(assert (=> d!141683 (= (containsKey!725 (toList!10239 (getCurrentListMap!5199 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448)) k0!1205) e!743747)))

(declare-fun b!1303859 () Bool)

(declare-fun e!743748 () Bool)

(assert (=> b!1303859 (= e!743747 e!743748)))

(declare-fun res!866041 () Bool)

(assert (=> b!1303859 (=> (not res!866041) (not e!743748))))

(assert (=> b!1303859 (= res!866041 (and (or (not ((_ is Cons!29925) (toList!10239 (getCurrentListMap!5199 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448)))) (bvsle (_1!11399 (h!31134 (toList!10239 (getCurrentListMap!5199 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448)))) k0!1205)) ((_ is Cons!29925) (toList!10239 (getCurrentListMap!5199 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448))) (bvslt (_1!11399 (h!31134 (toList!10239 (getCurrentListMap!5199 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448)))) k0!1205)))))

(declare-fun b!1303860 () Bool)

(assert (=> b!1303860 (= e!743748 (containsKey!725 (t!43530 (toList!10239 (getCurrentListMap!5199 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448))) k0!1205))))

(assert (= (and d!141683 (not res!866040)) b!1303859))

(assert (= (and b!1303859 res!866041) b!1303860))

(declare-fun m!1194941 () Bool)

(assert (=> b!1303860 m!1194941))

(assert (=> d!141573 d!141683))

(declare-fun d!141685 () Bool)

(declare-fun res!866042 () Bool)

(declare-fun e!743749 () Bool)

(assert (=> d!141685 (=> res!866042 e!743749)))

(assert (=> d!141685 (= res!866042 (and ((_ is Cons!29925) (toList!10239 (getCurrentListMapNoExtraKeys!6173 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448))) (= (_1!11399 (h!31134 (toList!10239 (getCurrentListMapNoExtraKeys!6173 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448)))) k0!1205)))))

(assert (=> d!141685 (= (containsKey!725 (toList!10239 (getCurrentListMapNoExtraKeys!6173 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448)) k0!1205) e!743749)))

(declare-fun b!1303861 () Bool)

(declare-fun e!743750 () Bool)

(assert (=> b!1303861 (= e!743749 e!743750)))

(declare-fun res!866043 () Bool)

(assert (=> b!1303861 (=> (not res!866043) (not e!743750))))

(assert (=> b!1303861 (= res!866043 (and (or (not ((_ is Cons!29925) (toList!10239 (getCurrentListMapNoExtraKeys!6173 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448)))) (bvsle (_1!11399 (h!31134 (toList!10239 (getCurrentListMapNoExtraKeys!6173 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448)))) k0!1205)) ((_ is Cons!29925) (toList!10239 (getCurrentListMapNoExtraKeys!6173 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448))) (bvslt (_1!11399 (h!31134 (toList!10239 (getCurrentListMapNoExtraKeys!6173 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448)))) k0!1205)))))

(declare-fun b!1303862 () Bool)

(assert (=> b!1303862 (= e!743750 (containsKey!725 (t!43530 (toList!10239 (getCurrentListMapNoExtraKeys!6173 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448))) k0!1205))))

(assert (= (and d!141685 (not res!866042)) b!1303861))

(assert (= (and b!1303861 res!866043) b!1303862))

(declare-fun m!1194943 () Bool)

(assert (=> b!1303862 m!1194943))

(assert (=> d!141569 d!141685))

(assert (=> b!1303715 d!141667))

(assert (=> d!141581 d!141579))

(declare-fun d!141687 () Bool)

(assert (=> d!141687 (not (contains!8310 (ListLongMap!20448 Nil!29926) k0!1205))))

(assert (=> d!141687 true))

(declare-fun _$29!198 () Unit!43110)

(assert (=> d!141687 (= (choose!1930 k0!1205) _$29!198)))

(declare-fun bs!37134 () Bool)

(assert (= bs!37134 d!141687))

(assert (=> bs!37134 m!1194491))

(assert (=> d!141581 d!141687))

(declare-fun b!1303863 () Bool)

(declare-fun e!743754 () Bool)

(assert (=> b!1303863 (= e!743754 (contains!8312 (ite c!125086 (Cons!29926 (select (arr!41887 _keys!1741) #b00000000000000000000000000000000) Nil!29927) Nil!29927) (select (arr!41887 _keys!1741) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun b!1303864 () Bool)

(declare-fun e!743751 () Bool)

(declare-fun e!743753 () Bool)

(assert (=> b!1303864 (= e!743751 e!743753)))

(declare-fun res!866046 () Bool)

(assert (=> b!1303864 (=> (not res!866046) (not e!743753))))

(assert (=> b!1303864 (= res!866046 (not e!743754))))

(declare-fun res!866044 () Bool)

(assert (=> b!1303864 (=> (not res!866044) (not e!743754))))

(assert (=> b!1303864 (= res!866044 (validKeyInArray!0 (select (arr!41887 _keys!1741) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun bm!64232 () Bool)

(declare-fun c!125121 () Bool)

(declare-fun call!64235 () Bool)

(assert (=> bm!64232 (= call!64235 (arrayNoDuplicates!0 _keys!1741 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (ite c!125121 (Cons!29926 (select (arr!41887 _keys!1741) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) (ite c!125086 (Cons!29926 (select (arr!41887 _keys!1741) #b00000000000000000000000000000000) Nil!29927) Nil!29927)) (ite c!125086 (Cons!29926 (select (arr!41887 _keys!1741) #b00000000000000000000000000000000) Nil!29927) Nil!29927))))))

(declare-fun d!141689 () Bool)

(declare-fun res!866045 () Bool)

(assert (=> d!141689 (=> res!866045 e!743751)))

(assert (=> d!141689 (= res!866045 (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!42438 _keys!1741)))))

(assert (=> d!141689 (= (arrayNoDuplicates!0 _keys!1741 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!125086 (Cons!29926 (select (arr!41887 _keys!1741) #b00000000000000000000000000000000) Nil!29927) Nil!29927)) e!743751)))

(declare-fun b!1303865 () Bool)

(declare-fun e!743752 () Bool)

(assert (=> b!1303865 (= e!743753 e!743752)))

(assert (=> b!1303865 (= c!125121 (validKeyInArray!0 (select (arr!41887 _keys!1741) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun b!1303866 () Bool)

(assert (=> b!1303866 (= e!743752 call!64235)))

(declare-fun b!1303867 () Bool)

(assert (=> b!1303867 (= e!743752 call!64235)))

(assert (= (and d!141689 (not res!866045)) b!1303864))

(assert (= (and b!1303864 res!866044) b!1303863))

(assert (= (and b!1303864 res!866046) b!1303865))

(assert (= (and b!1303865 c!125121) b!1303867))

(assert (= (and b!1303865 (not c!125121)) b!1303866))

(assert (= (or b!1303867 b!1303866) bm!64232))

(assert (=> b!1303863 m!1194911))

(assert (=> b!1303863 m!1194911))

(declare-fun m!1194945 () Bool)

(assert (=> b!1303863 m!1194945))

(assert (=> b!1303864 m!1194911))

(assert (=> b!1303864 m!1194911))

(assert (=> b!1303864 m!1194921))

(assert (=> bm!64232 m!1194911))

(declare-fun m!1194947 () Bool)

(assert (=> bm!64232 m!1194947))

(assert (=> b!1303865 m!1194911))

(assert (=> b!1303865 m!1194911))

(assert (=> b!1303865 m!1194921))

(assert (=> bm!64229 d!141689))

(declare-fun d!141691 () Bool)

(declare-fun e!743755 () Bool)

(assert (=> d!141691 e!743755))

(declare-fun res!866047 () Bool)

(assert (=> d!141691 (=> res!866047 e!743755)))

(declare-fun lt!583515 () Bool)

(assert (=> d!141691 (= res!866047 (not lt!583515))))

(declare-fun lt!583513 () Bool)

(assert (=> d!141691 (= lt!583515 lt!583513)))

(declare-fun lt!583516 () Unit!43110)

(declare-fun e!743756 () Unit!43110)

(assert (=> d!141691 (= lt!583516 e!743756)))

(declare-fun c!125122 () Bool)

(assert (=> d!141691 (= c!125122 lt!583513)))

(assert (=> d!141691 (= lt!583513 (containsKey!725 (toList!10239 lt!583370) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!141691 (= (contains!8310 lt!583370 #b0000000000000000000000000000000000000000000000000000000000000000) lt!583515)))

(declare-fun b!1303868 () Bool)

(declare-fun lt!583514 () Unit!43110)

(assert (=> b!1303868 (= e!743756 lt!583514)))

(assert (=> b!1303868 (= lt!583514 (lemmaContainsKeyImpliesGetValueByKeyDefined!470 (toList!10239 lt!583370) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1303868 (isDefined!510 (getValueByKey!707 (toList!10239 lt!583370) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1303869 () Bool)

(declare-fun Unit!43125 () Unit!43110)

(assert (=> b!1303869 (= e!743756 Unit!43125)))

(declare-fun b!1303870 () Bool)

(assert (=> b!1303870 (= e!743755 (isDefined!510 (getValueByKey!707 (toList!10239 lt!583370) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!141691 c!125122) b!1303868))

(assert (= (and d!141691 (not c!125122)) b!1303869))

(assert (= (and d!141691 (not res!866047)) b!1303870))

(declare-fun m!1194949 () Bool)

(assert (=> d!141691 m!1194949))

(declare-fun m!1194951 () Bool)

(assert (=> b!1303868 m!1194951))

(assert (=> b!1303868 m!1194907))

(assert (=> b!1303868 m!1194907))

(declare-fun m!1194953 () Bool)

(assert (=> b!1303868 m!1194953))

(assert (=> b!1303870 m!1194907))

(assert (=> b!1303870 m!1194907))

(assert (=> b!1303870 m!1194953))

(assert (=> bm!64218 d!141691))

(declare-fun d!141693 () Bool)

(declare-fun res!866048 () Bool)

(declare-fun e!743757 () Bool)

(assert (=> d!141693 (=> res!866048 e!743757)))

(assert (=> d!141693 (= res!866048 (and ((_ is Cons!29925) (toList!10239 (ListLongMap!20448 Nil!29926))) (= (_1!11399 (h!31134 (toList!10239 (ListLongMap!20448 Nil!29926)))) k0!1205)))))

(assert (=> d!141693 (= (containsKey!725 (toList!10239 (ListLongMap!20448 Nil!29926)) k0!1205) e!743757)))

(declare-fun b!1303871 () Bool)

(declare-fun e!743758 () Bool)

(assert (=> b!1303871 (= e!743757 e!743758)))

(declare-fun res!866049 () Bool)

(assert (=> b!1303871 (=> (not res!866049) (not e!743758))))

(assert (=> b!1303871 (= res!866049 (and (or (not ((_ is Cons!29925) (toList!10239 (ListLongMap!20448 Nil!29926)))) (bvsle (_1!11399 (h!31134 (toList!10239 (ListLongMap!20448 Nil!29926)))) k0!1205)) ((_ is Cons!29925) (toList!10239 (ListLongMap!20448 Nil!29926))) (bvslt (_1!11399 (h!31134 (toList!10239 (ListLongMap!20448 Nil!29926)))) k0!1205)))))

(declare-fun b!1303872 () Bool)

(assert (=> b!1303872 (= e!743758 (containsKey!725 (t!43530 (toList!10239 (ListLongMap!20448 Nil!29926))) k0!1205))))

(assert (= (and d!141693 (not res!866048)) b!1303871))

(assert (= (and b!1303871 res!866049) b!1303872))

(declare-fun m!1194955 () Bool)

(assert (=> b!1303872 m!1194955))

(assert (=> d!141579 d!141693))

(assert (=> b!1303714 d!141667))

(declare-fun mapIsEmpty!53966 () Bool)

(declare-fun mapRes!53966 () Bool)

(assert (=> mapIsEmpty!53966 mapRes!53966))

(declare-fun b!1303874 () Bool)

(declare-fun e!743760 () Bool)

(assert (=> b!1303874 (= e!743760 tp_is_empty!34911)))

(declare-fun mapNonEmpty!53966 () Bool)

(declare-fun tp!102975 () Bool)

(declare-fun e!743759 () Bool)

(assert (=> mapNonEmpty!53966 (= mapRes!53966 (and tp!102975 e!743759))))

(declare-fun mapKey!53966 () (_ BitVec 32))

(declare-fun mapValue!53966 () ValueCell!16557)

(declare-fun mapRest!53966 () (Array (_ BitVec 32) ValueCell!16557))

(assert (=> mapNonEmpty!53966 (= mapRest!53965 (store mapRest!53966 mapKey!53966 mapValue!53966))))

(declare-fun condMapEmpty!53966 () Bool)

(declare-fun mapDefault!53966 () ValueCell!16557)

(assert (=> mapNonEmpty!53965 (= condMapEmpty!53966 (= mapRest!53965 ((as const (Array (_ BitVec 32) ValueCell!16557)) mapDefault!53966)))))

(assert (=> mapNonEmpty!53965 (= tp!102974 (and e!743760 mapRes!53966))))

(declare-fun b!1303873 () Bool)

(assert (=> b!1303873 (= e!743759 tp_is_empty!34911)))

(assert (= (and mapNonEmpty!53965 condMapEmpty!53966) mapIsEmpty!53966))

(assert (= (and mapNonEmpty!53965 (not condMapEmpty!53966)) mapNonEmpty!53966))

(assert (= (and mapNonEmpty!53966 ((_ is ValueCellFull!16557) mapValue!53966)) b!1303873))

(assert (= (and mapNonEmpty!53965 ((_ is ValueCellFull!16557) mapDefault!53966)) b!1303874))

(declare-fun m!1194957 () Bool)

(assert (=> mapNonEmpty!53966 m!1194957))

(declare-fun b_lambda!23301 () Bool)

(assert (= b_lambda!23299 (or (and start!110108 b_free!29271) b_lambda!23301)))

(declare-fun b_lambda!23303 () Bool)

(assert (= b_lambda!23297 (or (and start!110108 b_free!29271) b_lambda!23303)))

(check-sat (not d!141665) (not b!1303793) (not d!141587) (not b!1303758) (not d!141623) (not b!1303791) (not b!1303822) (not b!1303757) (not b!1303836) (not b_lambda!23291) (not b!1303862) (not b!1303868) (not d!141681) (not d!141671) (not b_lambda!23303) (not d!141673) (not b!1303777) (not b!1303744) (not b!1303742) (not d!141633) (not b!1303803) (not b!1303809) (not b!1303824) (not b!1303774) (not d!141687) (not b!1303797) (not d!141669) (not b_lambda!23295) (not b!1303798) (not d!141619) (not d!141677) (not b!1303808) (not b!1303829) (not b!1303860) (not d!141611) tp_is_empty!34911 (not b_lambda!23301) (not b!1303775) (not mapNonEmpty!53966) (not b!1303818) (not b!1303746) (not b!1303817) (not d!141595) (not b!1303820) (not d!141631) (not b!1303870) (not b_lambda!23293) (not d!141637) (not b!1303805) (not d!141629) (not b!1303799) b_and!47457 (not d!141621) (not d!141607) (not b!1303789) (not d!141691) (not d!141589) (not d!141651) (not b!1303772) (not b!1303851) (not bm!64230) (not b!1303825) (not d!141615) (not b!1303759) (not d!141653) (not b!1303830) (not d!141635) (not b!1303865) (not b!1303872) (not b!1303754) (not d!141655) (not d!141639) (not b!1303764) (not b!1303770) (not b!1303756) (not b!1303731) (not b!1303819) (not d!141645) (not b!1303826) (not b!1303864) (not b!1303760) (not d!141597) (not d!141647) (not b!1303788) (not d!141627) (not d!141641) (not b_next!29271) (not d!141661) (not bm!64232) (not d!141613) (not d!141643) (not d!141605) (not b!1303796) (not b!1303821) (not d!141663) (not d!141659) (not b!1303810) (not b!1303815) (not d!141591) (not d!141657) (not b!1303761) (not b!1303806) (not d!141625) (not b!1303778) (not d!141603) (not bm!64231) (not b!1303794) (not b!1303755) (not b!1303749) (not d!141617) (not b!1303863) (not d!141599) (not b!1303767) (not b!1303795))
(check-sat b_and!47457 (not b_next!29271))
