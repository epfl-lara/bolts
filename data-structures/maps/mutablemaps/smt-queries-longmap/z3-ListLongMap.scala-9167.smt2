; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!110166 () Bool)

(assert start!110166)

(declare-fun b_free!29277 () Bool)

(declare-fun b_next!29277 () Bool)

(assert (=> start!110166 (= b_free!29277 (not b_next!29277))))

(declare-fun tp!102986 () Bool)

(declare-fun b_and!47461 () Bool)

(assert (=> start!110166 (= tp!102986 b_and!47461)))

(declare-fun b!1303935 () Bool)

(declare-fun e!743795 () Bool)

(declare-fun e!743792 () Bool)

(assert (=> b!1303935 (= e!743795 (not e!743792))))

(declare-fun res!866099 () Bool)

(assert (=> b!1303935 (=> res!866099 e!743792)))

(declare-fun extraKeys!1366 () (_ BitVec 32))

(assert (=> b!1303935 (= res!866099 (or (not (= (bvand extraKeys!1366 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeys!1366 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun k0!1205 () (_ BitVec 64))

(declare-datatypes ((V!51659 0))(
  ( (V!51660 (val!17533 Int)) )
))
(declare-datatypes ((tuple2!22784 0))(
  ( (tuple2!22785 (_1!11402 (_ BitVec 64)) (_2!11402 V!51659)) )
))
(declare-datatypes ((List!29935 0))(
  ( (Nil!29932) (Cons!29931 (h!31140 tuple2!22784) (t!43538 List!29935)) )
))
(declare-datatypes ((ListLongMap!20453 0))(
  ( (ListLongMap!20454 (toList!10242 List!29935)) )
))
(declare-fun contains!8315 (ListLongMap!20453 (_ BitVec 64)) Bool)

(assert (=> b!1303935 (not (contains!8315 (ListLongMap!20454 Nil!29932) k0!1205))))

(declare-datatypes ((Unit!43128 0))(
  ( (Unit!43129) )
))
(declare-fun lt!583532 () Unit!43128)

(declare-fun emptyContainsNothing!227 ((_ BitVec 64)) Unit!43128)

(assert (=> b!1303935 (= lt!583532 (emptyContainsNothing!227 k0!1205))))

(declare-fun b!1303936 () Bool)

(declare-fun res!866100 () Bool)

(assert (=> b!1303936 (=> (not res!866100) (not e!743795))))

(declare-datatypes ((array!86813 0))(
  ( (array!86814 (arr!41892 (Array (_ BitVec 32) (_ BitVec 64))) (size!42443 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!86813)

(declare-datatypes ((List!29936 0))(
  ( (Nil!29933) (Cons!29932 (h!31141 (_ BitVec 64)) (t!43539 List!29936)) )
))
(declare-fun arrayNoDuplicates!0 (array!86813 (_ BitVec 32) List!29936) Bool)

(assert (=> b!1303936 (= res!866100 (arrayNoDuplicates!0 _keys!1741 #b00000000000000000000000000000000 Nil!29933))))

(declare-fun b!1303937 () Bool)

(declare-fun res!866095 () Bool)

(assert (=> b!1303937 (=> (not res!866095) (not e!743795))))

(declare-fun minValue!1387 () V!51659)

(declare-fun zeroValue!1387 () V!51659)

(declare-fun from!2144 () (_ BitVec 32))

(declare-datatypes ((ValueCell!16560 0))(
  ( (ValueCellFull!16560 (v!20149 V!51659)) (EmptyCell!16560) )
))
(declare-datatypes ((array!86815 0))(
  ( (array!86816 (arr!41893 (Array (_ BitVec 32) ValueCell!16560)) (size!42444 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!86815)

(declare-fun defaultEntry!1448 () Int)

(declare-fun mask!2175 () (_ BitVec 32))

(declare-fun getCurrentListMap!5202 (array!86813 array!86815 (_ BitVec 32) (_ BitVec 32) V!51659 V!51659 (_ BitVec 32) Int) ListLongMap!20453)

(assert (=> b!1303937 (= res!866095 (contains!8315 (getCurrentListMap!5202 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) k0!1205))))

(declare-fun res!866097 () Bool)

(assert (=> start!110166 (=> (not res!866097) (not e!743795))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!110166 (= res!866097 (validMask!0 mask!2175))))

(assert (=> start!110166 e!743795))

(declare-fun tp_is_empty!34917 () Bool)

(assert (=> start!110166 tp_is_empty!34917))

(assert (=> start!110166 true))

(declare-fun e!743793 () Bool)

(declare-fun array_inv!31681 (array!86815) Bool)

(assert (=> start!110166 (and (array_inv!31681 _values!1445) e!743793)))

(declare-fun array_inv!31682 (array!86813) Bool)

(assert (=> start!110166 (array_inv!31682 _keys!1741)))

(assert (=> start!110166 tp!102986))

(declare-fun b!1303938 () Bool)

(declare-fun res!866098 () Bool)

(assert (=> b!1303938 (=> (not res!866098) (not e!743795))))

(assert (=> b!1303938 (= res!866098 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!42443 _keys!1741))))))

(declare-fun mapNonEmpty!53972 () Bool)

(declare-fun mapRes!53972 () Bool)

(declare-fun tp!102987 () Bool)

(declare-fun e!743796 () Bool)

(assert (=> mapNonEmpty!53972 (= mapRes!53972 (and tp!102987 e!743796))))

(declare-fun mapValue!53972 () ValueCell!16560)

(declare-fun mapKey!53972 () (_ BitVec 32))

(declare-fun mapRest!53972 () (Array (_ BitVec 32) ValueCell!16560))

(assert (=> mapNonEmpty!53972 (= (arr!41893 _values!1445) (store mapRest!53972 mapKey!53972 mapValue!53972))))

(declare-fun b!1303939 () Bool)

(declare-fun res!866101 () Bool)

(assert (=> b!1303939 (=> (not res!866101) (not e!743795))))

(assert (=> b!1303939 (= res!866101 (and (= (size!42444 _values!1445) (bvadd #b00000000000000000000000000000001 mask!2175)) (= (size!42443 _keys!1741) (size!42444 _values!1445)) (bvsge mask!2175 #b00000000000000000000000000000000) (bvsge extraKeys!1366 #b00000000000000000000000000000000) (bvsle extraKeys!1366 #b00000000000000000000000000000011)))))

(declare-fun b!1303940 () Bool)

(declare-fun res!866096 () Bool)

(assert (=> b!1303940 (=> (not res!866096) (not e!743795))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1303940 (= res!866096 (not (validKeyInArray!0 (select (arr!41892 _keys!1741) from!2144))))))

(declare-fun b!1303941 () Bool)

(declare-fun e!743791 () Bool)

(assert (=> b!1303941 (= e!743791 tp_is_empty!34917)))

(declare-fun b!1303942 () Bool)

(assert (=> b!1303942 (= e!743793 (and e!743791 mapRes!53972))))

(declare-fun condMapEmpty!53972 () Bool)

(declare-fun mapDefault!53972 () ValueCell!16560)

(assert (=> b!1303942 (= condMapEmpty!53972 (= (arr!41893 _values!1445) ((as const (Array (_ BitVec 32) ValueCell!16560)) mapDefault!53972)))))

(declare-fun b!1303943 () Bool)

(assert (=> b!1303943 (= e!743796 tp_is_empty!34917)))

(declare-fun b!1303944 () Bool)

(assert (=> b!1303944 (= e!743792 false)))

(declare-fun lt!583533 () ListLongMap!20453)

(declare-fun +!4460 (ListLongMap!20453 tuple2!22784) ListLongMap!20453)

(assert (=> b!1303944 (not (contains!8315 (+!4460 lt!583533 (tuple2!22785 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387)) k0!1205))))

(declare-fun lt!583534 () Unit!43128)

(declare-fun addStillNotContains!484 (ListLongMap!20453 (_ BitVec 64) V!51659 (_ BitVec 64)) Unit!43128)

(assert (=> b!1303944 (= lt!583534 (addStillNotContains!484 lt!583533 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387 k0!1205))))

(declare-fun getCurrentListMapNoExtraKeys!6176 (array!86813 array!86815 (_ BitVec 32) (_ BitVec 32) V!51659 V!51659 (_ BitVec 32) Int) ListLongMap!20453)

(assert (=> b!1303944 (= lt!583533 (getCurrentListMapNoExtraKeys!6176 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448))))

(declare-fun mapIsEmpty!53972 () Bool)

(assert (=> mapIsEmpty!53972 mapRes!53972))

(declare-fun b!1303945 () Bool)

(declare-fun res!866103 () Bool)

(assert (=> b!1303945 (=> (not res!866103) (not e!743795))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!86813 (_ BitVec 32)) Bool)

(assert (=> b!1303945 (= res!866103 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1741 mask!2175))))

(declare-fun b!1303946 () Bool)

(declare-fun res!866102 () Bool)

(assert (=> b!1303946 (=> (not res!866102) (not e!743795))))

(assert (=> b!1303946 (= res!866102 (and (not (= k0!1205 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1205 #b1000000000000000000000000000000000000000000000000000000000000000)) (bvsge (bvadd #b00000000000000000000000000000001 from!2144) (size!42443 _keys!1741))))))

(assert (= (and start!110166 res!866097) b!1303939))

(assert (= (and b!1303939 res!866101) b!1303945))

(assert (= (and b!1303945 res!866103) b!1303936))

(assert (= (and b!1303936 res!866100) b!1303938))

(assert (= (and b!1303938 res!866098) b!1303937))

(assert (= (and b!1303937 res!866095) b!1303946))

(assert (= (and b!1303946 res!866102) b!1303940))

(assert (= (and b!1303940 res!866096) b!1303935))

(assert (= (and b!1303935 (not res!866099)) b!1303944))

(assert (= (and b!1303942 condMapEmpty!53972) mapIsEmpty!53972))

(assert (= (and b!1303942 (not condMapEmpty!53972)) mapNonEmpty!53972))

(get-info :version)

(assert (= (and mapNonEmpty!53972 ((_ is ValueCellFull!16560) mapValue!53972)) b!1303943))

(assert (= (and b!1303942 ((_ is ValueCellFull!16560) mapDefault!53972)) b!1303941))

(assert (= start!110166 b!1303942))

(declare-fun m!1194991 () Bool)

(assert (=> b!1303937 m!1194991))

(assert (=> b!1303937 m!1194991))

(declare-fun m!1194993 () Bool)

(assert (=> b!1303937 m!1194993))

(declare-fun m!1194995 () Bool)

(assert (=> b!1303936 m!1194995))

(declare-fun m!1194997 () Bool)

(assert (=> start!110166 m!1194997))

(declare-fun m!1194999 () Bool)

(assert (=> start!110166 m!1194999))

(declare-fun m!1195001 () Bool)

(assert (=> start!110166 m!1195001))

(declare-fun m!1195003 () Bool)

(assert (=> b!1303945 m!1195003))

(declare-fun m!1195005 () Bool)

(assert (=> b!1303935 m!1195005))

(declare-fun m!1195007 () Bool)

(assert (=> b!1303935 m!1195007))

(declare-fun m!1195009 () Bool)

(assert (=> mapNonEmpty!53972 m!1195009))

(declare-fun m!1195011 () Bool)

(assert (=> b!1303944 m!1195011))

(assert (=> b!1303944 m!1195011))

(declare-fun m!1195013 () Bool)

(assert (=> b!1303944 m!1195013))

(declare-fun m!1195015 () Bool)

(assert (=> b!1303944 m!1195015))

(declare-fun m!1195017 () Bool)

(assert (=> b!1303944 m!1195017))

(declare-fun m!1195019 () Bool)

(assert (=> b!1303940 m!1195019))

(assert (=> b!1303940 m!1195019))

(declare-fun m!1195021 () Bool)

(assert (=> b!1303940 m!1195021))

(check-sat (not b!1303936) (not mapNonEmpty!53972) (not b!1303935) (not b!1303945) b_and!47461 (not b_next!29277) (not b!1303940) tp_is_empty!34917 (not b!1303937) (not b!1303944) (not start!110166))
(check-sat b_and!47461 (not b_next!29277))
(get-model)

(declare-fun d!141697 () Bool)

(assert (=> d!141697 (= (validMask!0 mask!2175) (and (or (= mask!2175 #b00000000000000000000000000000111) (= mask!2175 #b00000000000000000000000000001111) (= mask!2175 #b00000000000000000000000000011111) (= mask!2175 #b00000000000000000000000000111111) (= mask!2175 #b00000000000000000000000001111111) (= mask!2175 #b00000000000000000000000011111111) (= mask!2175 #b00000000000000000000000111111111) (= mask!2175 #b00000000000000000000001111111111) (= mask!2175 #b00000000000000000000011111111111) (= mask!2175 #b00000000000000000000111111111111) (= mask!2175 #b00000000000000000001111111111111) (= mask!2175 #b00000000000000000011111111111111) (= mask!2175 #b00000000000000000111111111111111) (= mask!2175 #b00000000000000001111111111111111) (= mask!2175 #b00000000000000011111111111111111) (= mask!2175 #b00000000000000111111111111111111) (= mask!2175 #b00000000000001111111111111111111) (= mask!2175 #b00000000000011111111111111111111) (= mask!2175 #b00000000000111111111111111111111) (= mask!2175 #b00000000001111111111111111111111) (= mask!2175 #b00000000011111111111111111111111) (= mask!2175 #b00000000111111111111111111111111) (= mask!2175 #b00000001111111111111111111111111) (= mask!2175 #b00000011111111111111111111111111) (= mask!2175 #b00000111111111111111111111111111) (= mask!2175 #b00001111111111111111111111111111) (= mask!2175 #b00011111111111111111111111111111) (= mask!2175 #b00111111111111111111111111111111)) (bvsle mask!2175 #b00111111111111111111111111111111)))))

(assert (=> start!110166 d!141697))

(declare-fun d!141699 () Bool)

(assert (=> d!141699 (= (array_inv!31681 _values!1445) (bvsge (size!42444 _values!1445) #b00000000000000000000000000000000))))

(assert (=> start!110166 d!141699))

(declare-fun d!141701 () Bool)

(assert (=> d!141701 (= (array_inv!31682 _keys!1741) (bvsge (size!42443 _keys!1741) #b00000000000000000000000000000000))))

(assert (=> start!110166 d!141701))

(declare-fun d!141703 () Bool)

(declare-fun e!743819 () Bool)

(assert (=> d!141703 e!743819))

(declare-fun res!866133 () Bool)

(assert (=> d!141703 (=> res!866133 e!743819)))

(declare-fun lt!583554 () Bool)

(assert (=> d!141703 (= res!866133 (not lt!583554))))

(declare-fun lt!583555 () Bool)

(assert (=> d!141703 (= lt!583554 lt!583555)))

(declare-fun lt!583552 () Unit!43128)

(declare-fun e!743820 () Unit!43128)

(assert (=> d!141703 (= lt!583552 e!743820)))

(declare-fun c!125125 () Bool)

(assert (=> d!141703 (= c!125125 lt!583555)))

(declare-fun containsKey!726 (List!29935 (_ BitVec 64)) Bool)

(assert (=> d!141703 (= lt!583555 (containsKey!726 (toList!10242 (getCurrentListMap!5202 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448)) k0!1205))))

(assert (=> d!141703 (= (contains!8315 (getCurrentListMap!5202 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) k0!1205) lt!583554)))

(declare-fun b!1303989 () Bool)

(declare-fun lt!583553 () Unit!43128)

(assert (=> b!1303989 (= e!743820 lt!583553)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!471 (List!29935 (_ BitVec 64)) Unit!43128)

(assert (=> b!1303989 (= lt!583553 (lemmaContainsKeyImpliesGetValueByKeyDefined!471 (toList!10242 (getCurrentListMap!5202 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448)) k0!1205))))

(declare-datatypes ((Option!759 0))(
  ( (Some!758 (v!20151 V!51659)) (None!757) )
))
(declare-fun isDefined!511 (Option!759) Bool)

(declare-fun getValueByKey!708 (List!29935 (_ BitVec 64)) Option!759)

(assert (=> b!1303989 (isDefined!511 (getValueByKey!708 (toList!10242 (getCurrentListMap!5202 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448)) k0!1205))))

(declare-fun b!1303990 () Bool)

(declare-fun Unit!43132 () Unit!43128)

(assert (=> b!1303990 (= e!743820 Unit!43132)))

(declare-fun b!1303991 () Bool)

(assert (=> b!1303991 (= e!743819 (isDefined!511 (getValueByKey!708 (toList!10242 (getCurrentListMap!5202 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448)) k0!1205)))))

(assert (= (and d!141703 c!125125) b!1303989))

(assert (= (and d!141703 (not c!125125)) b!1303990))

(assert (= (and d!141703 (not res!866133)) b!1303991))

(declare-fun m!1195055 () Bool)

(assert (=> d!141703 m!1195055))

(declare-fun m!1195057 () Bool)

(assert (=> b!1303989 m!1195057))

(declare-fun m!1195059 () Bool)

(assert (=> b!1303989 m!1195059))

(assert (=> b!1303989 m!1195059))

(declare-fun m!1195061 () Bool)

(assert (=> b!1303989 m!1195061))

(assert (=> b!1303991 m!1195059))

(assert (=> b!1303991 m!1195059))

(assert (=> b!1303991 m!1195061))

(assert (=> b!1303937 d!141703))

(declare-fun b!1304034 () Bool)

(declare-fun e!743857 () Bool)

(declare-fun e!743856 () Bool)

(assert (=> b!1304034 (= e!743857 e!743856)))

(declare-fun res!866158 () Bool)

(declare-fun call!64251 () Bool)

(assert (=> b!1304034 (= res!866158 call!64251)))

(assert (=> b!1304034 (=> (not res!866158) (not e!743856))))

(declare-fun b!1304035 () Bool)

(declare-fun c!125143 () Bool)

(assert (=> b!1304035 (= c!125143 (and (not (= (bvand extraKeys!1366 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeys!1366 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun e!743852 () ListLongMap!20453)

(declare-fun e!743854 () ListLongMap!20453)

(assert (=> b!1304035 (= e!743852 e!743854)))

(declare-fun b!1304036 () Bool)

(declare-fun e!743853 () Bool)

(declare-fun e!743851 () Bool)

(assert (=> b!1304036 (= e!743853 e!743851)))

(declare-fun res!866155 () Bool)

(assert (=> b!1304036 (=> (not res!866155) (not e!743851))))

(declare-fun lt!583617 () ListLongMap!20453)

(assert (=> b!1304036 (= res!866155 (contains!8315 lt!583617 (select (arr!41892 _keys!1741) from!2144)))))

(assert (=> b!1304036 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!42443 _keys!1741)))))

(declare-fun b!1304037 () Bool)

(declare-fun res!866156 () Bool)

(declare-fun e!743859 () Bool)

(assert (=> b!1304037 (=> (not res!866156) (not e!743859))))

(assert (=> b!1304037 (= res!866156 e!743857)))

(declare-fun c!125142 () Bool)

(assert (=> b!1304037 (= c!125142 (not (= (bvand extraKeys!1366 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!1304038 () Bool)

(declare-fun e!743850 () Bool)

(assert (=> b!1304038 (= e!743859 e!743850)))

(declare-fun c!125139 () Bool)

(assert (=> b!1304038 (= c!125139 (not (= (bvand extraKeys!1366 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1304039 () Bool)

(declare-fun e!743849 () Bool)

(declare-fun apply!1058 (ListLongMap!20453 (_ BitVec 64)) V!51659)

(assert (=> b!1304039 (= e!743849 (= (apply!1058 lt!583617 #b1000000000000000000000000000000000000000000000000000000000000000) minValue!1387))))

(declare-fun b!1304040 () Bool)

(declare-fun e!743848 () Bool)

(assert (=> b!1304040 (= e!743848 (validKeyInArray!0 (select (arr!41892 _keys!1741) from!2144)))))

(declare-fun bm!64248 () Bool)

(declare-fun call!64255 () Bool)

(assert (=> bm!64248 (= call!64255 (contains!8315 lt!583617 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1304041 () Bool)

(declare-fun e!743855 () Unit!43128)

(declare-fun lt!583615 () Unit!43128)

(assert (=> b!1304041 (= e!743855 lt!583615)))

(declare-fun lt!583608 () ListLongMap!20453)

(assert (=> b!1304041 (= lt!583608 (getCurrentListMapNoExtraKeys!6176 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448))))

(declare-fun lt!583604 () (_ BitVec 64))

(assert (=> b!1304041 (= lt!583604 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!583616 () (_ BitVec 64))

(assert (=> b!1304041 (= lt!583616 (select (arr!41892 _keys!1741) from!2144))))

(declare-fun lt!583613 () Unit!43128)

(declare-fun addStillContains!1127 (ListLongMap!20453 (_ BitVec 64) V!51659 (_ BitVec 64)) Unit!43128)

(assert (=> b!1304041 (= lt!583613 (addStillContains!1127 lt!583608 lt!583604 zeroValue!1387 lt!583616))))

(assert (=> b!1304041 (contains!8315 (+!4460 lt!583608 (tuple2!22785 lt!583604 zeroValue!1387)) lt!583616)))

(declare-fun lt!583612 () Unit!43128)

(assert (=> b!1304041 (= lt!583612 lt!583613)))

(declare-fun lt!583619 () ListLongMap!20453)

(assert (=> b!1304041 (= lt!583619 (getCurrentListMapNoExtraKeys!6176 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448))))

(declare-fun lt!583600 () (_ BitVec 64))

(assert (=> b!1304041 (= lt!583600 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!583609 () (_ BitVec 64))

(assert (=> b!1304041 (= lt!583609 (select (arr!41892 _keys!1741) from!2144))))

(declare-fun lt!583610 () Unit!43128)

(declare-fun addApplyDifferent!561 (ListLongMap!20453 (_ BitVec 64) V!51659 (_ BitVec 64)) Unit!43128)

(assert (=> b!1304041 (= lt!583610 (addApplyDifferent!561 lt!583619 lt!583600 minValue!1387 lt!583609))))

(assert (=> b!1304041 (= (apply!1058 (+!4460 lt!583619 (tuple2!22785 lt!583600 minValue!1387)) lt!583609) (apply!1058 lt!583619 lt!583609))))

(declare-fun lt!583614 () Unit!43128)

(assert (=> b!1304041 (= lt!583614 lt!583610)))

(declare-fun lt!583621 () ListLongMap!20453)

(assert (=> b!1304041 (= lt!583621 (getCurrentListMapNoExtraKeys!6176 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448))))

(declare-fun lt!583607 () (_ BitVec 64))

(assert (=> b!1304041 (= lt!583607 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!583618 () (_ BitVec 64))

(assert (=> b!1304041 (= lt!583618 (select (arr!41892 _keys!1741) from!2144))))

(declare-fun lt!583620 () Unit!43128)

(assert (=> b!1304041 (= lt!583620 (addApplyDifferent!561 lt!583621 lt!583607 zeroValue!1387 lt!583618))))

(assert (=> b!1304041 (= (apply!1058 (+!4460 lt!583621 (tuple2!22785 lt!583607 zeroValue!1387)) lt!583618) (apply!1058 lt!583621 lt!583618))))

(declare-fun lt!583603 () Unit!43128)

(assert (=> b!1304041 (= lt!583603 lt!583620)))

(declare-fun lt!583601 () ListLongMap!20453)

(assert (=> b!1304041 (= lt!583601 (getCurrentListMapNoExtraKeys!6176 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448))))

(declare-fun lt!583602 () (_ BitVec 64))

(assert (=> b!1304041 (= lt!583602 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!583605 () (_ BitVec 64))

(assert (=> b!1304041 (= lt!583605 (select (arr!41892 _keys!1741) from!2144))))

(assert (=> b!1304041 (= lt!583615 (addApplyDifferent!561 lt!583601 lt!583602 minValue!1387 lt!583605))))

(assert (=> b!1304041 (= (apply!1058 (+!4460 lt!583601 (tuple2!22785 lt!583602 minValue!1387)) lt!583605) (apply!1058 lt!583601 lt!583605))))

(declare-fun b!1304042 () Bool)

(declare-fun e!743858 () ListLongMap!20453)

(declare-fun call!64250 () ListLongMap!20453)

(assert (=> b!1304042 (= e!743858 (+!4460 call!64250 (tuple2!22785 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387)))))

(declare-fun bm!64249 () Bool)

(declare-fun call!64256 () ListLongMap!20453)

(assert (=> bm!64249 (= call!64256 call!64250)))

(declare-fun b!1304043 () Bool)

(declare-fun e!743847 () Bool)

(assert (=> b!1304043 (= e!743847 (validKeyInArray!0 (select (arr!41892 _keys!1741) from!2144)))))

(declare-fun b!1304044 () Bool)

(assert (=> b!1304044 (= e!743858 e!743852)))

(declare-fun c!125138 () Bool)

(assert (=> b!1304044 (= c!125138 (and (not (= (bvand extraKeys!1366 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeys!1366 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1304045 () Bool)

(assert (=> b!1304045 (= e!743854 call!64256)))

(declare-fun b!1304046 () Bool)

(assert (=> b!1304046 (= e!743857 (not call!64251))))

(declare-fun b!1304047 () Bool)

(declare-fun Unit!43133 () Unit!43128)

(assert (=> b!1304047 (= e!743855 Unit!43133)))

(declare-fun bm!64250 () Bool)

(declare-fun call!64253 () ListLongMap!20453)

(declare-fun call!64254 () ListLongMap!20453)

(assert (=> bm!64250 (= call!64253 call!64254)))

(declare-fun bm!64251 () Bool)

(assert (=> bm!64251 (= call!64254 (getCurrentListMapNoExtraKeys!6176 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448))))

(declare-fun b!1304048 () Bool)

(assert (=> b!1304048 (= e!743850 (not call!64255))))

(declare-fun b!1304049 () Bool)

(declare-fun get!21210 (ValueCell!16560 V!51659) V!51659)

(declare-fun dynLambda!3510 (Int (_ BitVec 64)) V!51659)

(assert (=> b!1304049 (= e!743851 (= (apply!1058 lt!583617 (select (arr!41892 _keys!1741) from!2144)) (get!21210 (select (arr!41893 _values!1445) from!2144) (dynLambda!3510 defaultEntry!1448 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1304049 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!42444 _values!1445)))))

(assert (=> b!1304049 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!42443 _keys!1741)))))

(declare-fun b!1304050 () Bool)

(assert (=> b!1304050 (= e!743850 e!743849)))

(declare-fun res!866153 () Bool)

(assert (=> b!1304050 (= res!866153 call!64255)))

(assert (=> b!1304050 (=> (not res!866153) (not e!743849))))

(declare-fun d!141705 () Bool)

(assert (=> d!141705 e!743859))

(declare-fun res!866154 () Bool)

(assert (=> d!141705 (=> (not res!866154) (not e!743859))))

(assert (=> d!141705 (= res!866154 (or (bvsge from!2144 (size!42443 _keys!1741)) (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!42443 _keys!1741)))))))

(declare-fun lt!583606 () ListLongMap!20453)

(assert (=> d!141705 (= lt!583617 lt!583606)))

(declare-fun lt!583611 () Unit!43128)

(assert (=> d!141705 (= lt!583611 e!743855)))

(declare-fun c!125141 () Bool)

(assert (=> d!141705 (= c!125141 e!743848)))

(declare-fun res!866159 () Bool)

(assert (=> d!141705 (=> (not res!866159) (not e!743848))))

(assert (=> d!141705 (= res!866159 (bvslt from!2144 (size!42443 _keys!1741)))))

(assert (=> d!141705 (= lt!583606 e!743858)))

(declare-fun c!125140 () Bool)

(assert (=> d!141705 (= c!125140 (and (not (= (bvand extraKeys!1366 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1366 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!141705 (validMask!0 mask!2175)))

(assert (=> d!141705 (= (getCurrentListMap!5202 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) lt!583617)))

(declare-fun bm!64247 () Bool)

(assert (=> bm!64247 (= call!64251 (contains!8315 lt!583617 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun bm!64252 () Bool)

(declare-fun call!64252 () ListLongMap!20453)

(assert (=> bm!64252 (= call!64252 call!64253)))

(declare-fun bm!64253 () Bool)

(assert (=> bm!64253 (= call!64250 (+!4460 (ite c!125140 call!64254 (ite c!125138 call!64253 call!64252)) (ite (or c!125140 c!125138) (tuple2!22785 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387) (tuple2!22785 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387))))))

(declare-fun b!1304051 () Bool)

(declare-fun res!866152 () Bool)

(assert (=> b!1304051 (=> (not res!866152) (not e!743859))))

(assert (=> b!1304051 (= res!866152 e!743853)))

(declare-fun res!866160 () Bool)

(assert (=> b!1304051 (=> res!866160 e!743853)))

(assert (=> b!1304051 (= res!866160 (not e!743847))))

(declare-fun res!866157 () Bool)

(assert (=> b!1304051 (=> (not res!866157) (not e!743847))))

(assert (=> b!1304051 (= res!866157 (bvslt from!2144 (size!42443 _keys!1741)))))

(declare-fun b!1304052 () Bool)

(assert (=> b!1304052 (= e!743852 call!64256)))

(declare-fun b!1304053 () Bool)

(assert (=> b!1304053 (= e!743854 call!64252)))

(declare-fun b!1304054 () Bool)

(assert (=> b!1304054 (= e!743856 (= (apply!1058 lt!583617 #b0000000000000000000000000000000000000000000000000000000000000000) zeroValue!1387))))

(assert (= (and d!141705 c!125140) b!1304042))

(assert (= (and d!141705 (not c!125140)) b!1304044))

(assert (= (and b!1304044 c!125138) b!1304052))

(assert (= (and b!1304044 (not c!125138)) b!1304035))

(assert (= (and b!1304035 c!125143) b!1304045))

(assert (= (and b!1304035 (not c!125143)) b!1304053))

(assert (= (or b!1304045 b!1304053) bm!64252))

(assert (= (or b!1304052 bm!64252) bm!64250))

(assert (= (or b!1304052 b!1304045) bm!64249))

(assert (= (or b!1304042 bm!64250) bm!64251))

(assert (= (or b!1304042 bm!64249) bm!64253))

(assert (= (and d!141705 res!866159) b!1304040))

(assert (= (and d!141705 c!125141) b!1304041))

(assert (= (and d!141705 (not c!125141)) b!1304047))

(assert (= (and d!141705 res!866154) b!1304051))

(assert (= (and b!1304051 res!866157) b!1304043))

(assert (= (and b!1304051 (not res!866160)) b!1304036))

(assert (= (and b!1304036 res!866155) b!1304049))

(assert (= (and b!1304051 res!866152) b!1304037))

(assert (= (and b!1304037 c!125142) b!1304034))

(assert (= (and b!1304037 (not c!125142)) b!1304046))

(assert (= (and b!1304034 res!866158) b!1304054))

(assert (= (or b!1304034 b!1304046) bm!64247))

(assert (= (and b!1304037 res!866156) b!1304038))

(assert (= (and b!1304038 c!125139) b!1304050))

(assert (= (and b!1304038 (not c!125139)) b!1304048))

(assert (= (and b!1304050 res!866153) b!1304039))

(assert (= (or b!1304050 b!1304048) bm!64248))

(declare-fun b_lambda!23305 () Bool)

(assert (=> (not b_lambda!23305) (not b!1304049)))

(declare-fun t!43543 () Bool)

(declare-fun tb!11409 () Bool)

(assert (=> (and start!110166 (= defaultEntry!1448 defaultEntry!1448) t!43543) tb!11409))

(declare-fun result!23833 () Bool)

(assert (=> tb!11409 (= result!23833 tp_is_empty!34917)))

(assert (=> b!1304049 t!43543))

(declare-fun b_and!47465 () Bool)

(assert (= b_and!47461 (and (=> t!43543 result!23833) b_and!47465)))

(assert (=> b!1304036 m!1195019))

(assert (=> b!1304036 m!1195019))

(declare-fun m!1195063 () Bool)

(assert (=> b!1304036 m!1195063))

(assert (=> d!141705 m!1194997))

(declare-fun m!1195065 () Bool)

(assert (=> bm!64247 m!1195065))

(assert (=> b!1304043 m!1195019))

(assert (=> b!1304043 m!1195019))

(assert (=> b!1304043 m!1195021))

(declare-fun m!1195067 () Bool)

(assert (=> b!1304042 m!1195067))

(assert (=> bm!64251 m!1195017))

(declare-fun m!1195069 () Bool)

(assert (=> b!1304041 m!1195069))

(declare-fun m!1195071 () Bool)

(assert (=> b!1304041 m!1195071))

(declare-fun m!1195073 () Bool)

(assert (=> b!1304041 m!1195073))

(assert (=> b!1304041 m!1195019))

(declare-fun m!1195075 () Bool)

(assert (=> b!1304041 m!1195075))

(declare-fun m!1195077 () Bool)

(assert (=> b!1304041 m!1195077))

(declare-fun m!1195079 () Bool)

(assert (=> b!1304041 m!1195079))

(assert (=> b!1304041 m!1195077))

(declare-fun m!1195081 () Bool)

(assert (=> b!1304041 m!1195081))

(declare-fun m!1195083 () Bool)

(assert (=> b!1304041 m!1195083))

(assert (=> b!1304041 m!1195017))

(declare-fun m!1195085 () Bool)

(assert (=> b!1304041 m!1195085))

(assert (=> b!1304041 m!1195085))

(declare-fun m!1195087 () Bool)

(assert (=> b!1304041 m!1195087))

(declare-fun m!1195089 () Bool)

(assert (=> b!1304041 m!1195089))

(declare-fun m!1195091 () Bool)

(assert (=> b!1304041 m!1195091))

(assert (=> b!1304041 m!1195083))

(declare-fun m!1195093 () Bool)

(assert (=> b!1304041 m!1195093))

(declare-fun m!1195095 () Bool)

(assert (=> b!1304041 m!1195095))

(declare-fun m!1195097 () Bool)

(assert (=> b!1304041 m!1195097))

(assert (=> b!1304041 m!1195089))

(declare-fun m!1195099 () Bool)

(assert (=> b!1304049 m!1195099))

(assert (=> b!1304049 m!1195019))

(declare-fun m!1195101 () Bool)

(assert (=> b!1304049 m!1195101))

(assert (=> b!1304049 m!1195019))

(declare-fun m!1195103 () Bool)

(assert (=> b!1304049 m!1195103))

(assert (=> b!1304049 m!1195101))

(assert (=> b!1304049 m!1195099))

(declare-fun m!1195105 () Bool)

(assert (=> b!1304049 m!1195105))

(assert (=> b!1304040 m!1195019))

(assert (=> b!1304040 m!1195019))

(assert (=> b!1304040 m!1195021))

(declare-fun m!1195107 () Bool)

(assert (=> bm!64253 m!1195107))

(declare-fun m!1195109 () Bool)

(assert (=> bm!64248 m!1195109))

(declare-fun m!1195111 () Bool)

(assert (=> b!1304054 m!1195111))

(declare-fun m!1195113 () Bool)

(assert (=> b!1304039 m!1195113))

(assert (=> b!1303937 d!141705))

(declare-fun d!141707 () Bool)

(assert (=> d!141707 (= (validKeyInArray!0 (select (arr!41892 _keys!1741) from!2144)) (and (not (= (select (arr!41892 _keys!1741) from!2144) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!41892 _keys!1741) from!2144) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1303940 d!141707))

(declare-fun b!1304067 () Bool)

(declare-fun e!743871 () Bool)

(declare-fun contains!8317 (List!29936 (_ BitVec 64)) Bool)

(assert (=> b!1304067 (= e!743871 (contains!8317 Nil!29933 (select (arr!41892 _keys!1741) #b00000000000000000000000000000000)))))

(declare-fun d!141709 () Bool)

(declare-fun res!866167 () Bool)

(declare-fun e!743868 () Bool)

(assert (=> d!141709 (=> res!866167 e!743868)))

(assert (=> d!141709 (= res!866167 (bvsge #b00000000000000000000000000000000 (size!42443 _keys!1741)))))

(assert (=> d!141709 (= (arrayNoDuplicates!0 _keys!1741 #b00000000000000000000000000000000 Nil!29933) e!743868)))

(declare-fun b!1304068 () Bool)

(declare-fun e!743869 () Bool)

(assert (=> b!1304068 (= e!743868 e!743869)))

(declare-fun res!866169 () Bool)

(assert (=> b!1304068 (=> (not res!866169) (not e!743869))))

(assert (=> b!1304068 (= res!866169 (not e!743871))))

(declare-fun res!866168 () Bool)

(assert (=> b!1304068 (=> (not res!866168) (not e!743871))))

(assert (=> b!1304068 (= res!866168 (validKeyInArray!0 (select (arr!41892 _keys!1741) #b00000000000000000000000000000000)))))

(declare-fun b!1304069 () Bool)

(declare-fun e!743870 () Bool)

(declare-fun call!64259 () Bool)

(assert (=> b!1304069 (= e!743870 call!64259)))

(declare-fun b!1304070 () Bool)

(assert (=> b!1304070 (= e!743870 call!64259)))

(declare-fun b!1304071 () Bool)

(assert (=> b!1304071 (= e!743869 e!743870)))

(declare-fun c!125146 () Bool)

(assert (=> b!1304071 (= c!125146 (validKeyInArray!0 (select (arr!41892 _keys!1741) #b00000000000000000000000000000000)))))

(declare-fun bm!64256 () Bool)

(assert (=> bm!64256 (= call!64259 (arrayNoDuplicates!0 _keys!1741 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!125146 (Cons!29932 (select (arr!41892 _keys!1741) #b00000000000000000000000000000000) Nil!29933) Nil!29933)))))

(assert (= (and d!141709 (not res!866167)) b!1304068))

(assert (= (and b!1304068 res!866168) b!1304067))

(assert (= (and b!1304068 res!866169) b!1304071))

(assert (= (and b!1304071 c!125146) b!1304069))

(assert (= (and b!1304071 (not c!125146)) b!1304070))

(assert (= (or b!1304069 b!1304070) bm!64256))

(declare-fun m!1195115 () Bool)

(assert (=> b!1304067 m!1195115))

(assert (=> b!1304067 m!1195115))

(declare-fun m!1195117 () Bool)

(assert (=> b!1304067 m!1195117))

(assert (=> b!1304068 m!1195115))

(assert (=> b!1304068 m!1195115))

(declare-fun m!1195119 () Bool)

(assert (=> b!1304068 m!1195119))

(assert (=> b!1304071 m!1195115))

(assert (=> b!1304071 m!1195115))

(assert (=> b!1304071 m!1195119))

(assert (=> bm!64256 m!1195115))

(declare-fun m!1195121 () Bool)

(assert (=> bm!64256 m!1195121))

(assert (=> b!1303936 d!141709))

(declare-fun b!1304080 () Bool)

(declare-fun e!743879 () Bool)

(declare-fun e!743880 () Bool)

(assert (=> b!1304080 (= e!743879 e!743880)))

(declare-fun c!125149 () Bool)

(assert (=> b!1304080 (= c!125149 (validKeyInArray!0 (select (arr!41892 _keys!1741) #b00000000000000000000000000000000)))))

(declare-fun d!141711 () Bool)

(declare-fun res!866174 () Bool)

(assert (=> d!141711 (=> res!866174 e!743879)))

(assert (=> d!141711 (= res!866174 (bvsge #b00000000000000000000000000000000 (size!42443 _keys!1741)))))

(assert (=> d!141711 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1741 mask!2175) e!743879)))

(declare-fun b!1304081 () Bool)

(declare-fun call!64262 () Bool)

(assert (=> b!1304081 (= e!743880 call!64262)))

(declare-fun b!1304082 () Bool)

(declare-fun e!743878 () Bool)

(assert (=> b!1304082 (= e!743880 e!743878)))

(declare-fun lt!583629 () (_ BitVec 64))

(assert (=> b!1304082 (= lt!583629 (select (arr!41892 _keys!1741) #b00000000000000000000000000000000))))

(declare-fun lt!583628 () Unit!43128)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!86813 (_ BitVec 64) (_ BitVec 32)) Unit!43128)

(assert (=> b!1304082 (= lt!583628 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1741 lt!583629 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!86813 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1304082 (arrayContainsKey!0 _keys!1741 lt!583629 #b00000000000000000000000000000000)))

(declare-fun lt!583630 () Unit!43128)

(assert (=> b!1304082 (= lt!583630 lt!583628)))

(declare-fun res!866175 () Bool)

(declare-datatypes ((SeekEntryResult!10023 0))(
  ( (MissingZero!10023 (index!42462 (_ BitVec 32))) (Found!10023 (index!42463 (_ BitVec 32))) (Intermediate!10023 (undefined!10835 Bool) (index!42464 (_ BitVec 32)) (x!115817 (_ BitVec 32))) (Undefined!10023) (MissingVacant!10023 (index!42465 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!86813 (_ BitVec 32)) SeekEntryResult!10023)

(assert (=> b!1304082 (= res!866175 (= (seekEntryOrOpen!0 (select (arr!41892 _keys!1741) #b00000000000000000000000000000000) _keys!1741 mask!2175) (Found!10023 #b00000000000000000000000000000000)))))

(assert (=> b!1304082 (=> (not res!866175) (not e!743878))))

(declare-fun bm!64259 () Bool)

(assert (=> bm!64259 (= call!64262 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) _keys!1741 mask!2175))))

(declare-fun b!1304083 () Bool)

(assert (=> b!1304083 (= e!743878 call!64262)))

(assert (= (and d!141711 (not res!866174)) b!1304080))

(assert (= (and b!1304080 c!125149) b!1304082))

(assert (= (and b!1304080 (not c!125149)) b!1304081))

(assert (= (and b!1304082 res!866175) b!1304083))

(assert (= (or b!1304083 b!1304081) bm!64259))

(assert (=> b!1304080 m!1195115))

(assert (=> b!1304080 m!1195115))

(assert (=> b!1304080 m!1195119))

(assert (=> b!1304082 m!1195115))

(declare-fun m!1195123 () Bool)

(assert (=> b!1304082 m!1195123))

(declare-fun m!1195125 () Bool)

(assert (=> b!1304082 m!1195125))

(assert (=> b!1304082 m!1195115))

(declare-fun m!1195127 () Bool)

(assert (=> b!1304082 m!1195127))

(declare-fun m!1195129 () Bool)

(assert (=> bm!64259 m!1195129))

(assert (=> b!1303945 d!141711))

(declare-fun d!141713 () Bool)

(declare-fun e!743881 () Bool)

(assert (=> d!141713 e!743881))

(declare-fun res!866176 () Bool)

(assert (=> d!141713 (=> res!866176 e!743881)))

(declare-fun lt!583633 () Bool)

(assert (=> d!141713 (= res!866176 (not lt!583633))))

(declare-fun lt!583634 () Bool)

(assert (=> d!141713 (= lt!583633 lt!583634)))

(declare-fun lt!583631 () Unit!43128)

(declare-fun e!743882 () Unit!43128)

(assert (=> d!141713 (= lt!583631 e!743882)))

(declare-fun c!125150 () Bool)

(assert (=> d!141713 (= c!125150 lt!583634)))

(assert (=> d!141713 (= lt!583634 (containsKey!726 (toList!10242 (+!4460 lt!583533 (tuple2!22785 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387))) k0!1205))))

(assert (=> d!141713 (= (contains!8315 (+!4460 lt!583533 (tuple2!22785 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387)) k0!1205) lt!583633)))

(declare-fun b!1304084 () Bool)

(declare-fun lt!583632 () Unit!43128)

(assert (=> b!1304084 (= e!743882 lt!583632)))

(assert (=> b!1304084 (= lt!583632 (lemmaContainsKeyImpliesGetValueByKeyDefined!471 (toList!10242 (+!4460 lt!583533 (tuple2!22785 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387))) k0!1205))))

(assert (=> b!1304084 (isDefined!511 (getValueByKey!708 (toList!10242 (+!4460 lt!583533 (tuple2!22785 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387))) k0!1205))))

(declare-fun b!1304085 () Bool)

(declare-fun Unit!43134 () Unit!43128)

(assert (=> b!1304085 (= e!743882 Unit!43134)))

(declare-fun b!1304086 () Bool)

(assert (=> b!1304086 (= e!743881 (isDefined!511 (getValueByKey!708 (toList!10242 (+!4460 lt!583533 (tuple2!22785 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387))) k0!1205)))))

(assert (= (and d!141713 c!125150) b!1304084))

(assert (= (and d!141713 (not c!125150)) b!1304085))

(assert (= (and d!141713 (not res!866176)) b!1304086))

(declare-fun m!1195131 () Bool)

(assert (=> d!141713 m!1195131))

(declare-fun m!1195133 () Bool)

(assert (=> b!1304084 m!1195133))

(declare-fun m!1195135 () Bool)

(assert (=> b!1304084 m!1195135))

(assert (=> b!1304084 m!1195135))

(declare-fun m!1195137 () Bool)

(assert (=> b!1304084 m!1195137))

(assert (=> b!1304086 m!1195135))

(assert (=> b!1304086 m!1195135))

(assert (=> b!1304086 m!1195137))

(assert (=> b!1303944 d!141713))

(declare-fun d!141715 () Bool)

(declare-fun e!743885 () Bool)

(assert (=> d!141715 e!743885))

(declare-fun res!866182 () Bool)

(assert (=> d!141715 (=> (not res!866182) (not e!743885))))

(declare-fun lt!583645 () ListLongMap!20453)

(assert (=> d!141715 (= res!866182 (contains!8315 lt!583645 (_1!11402 (tuple2!22785 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387))))))

(declare-fun lt!583646 () List!29935)

(assert (=> d!141715 (= lt!583645 (ListLongMap!20454 lt!583646))))

(declare-fun lt!583644 () Unit!43128)

(declare-fun lt!583643 () Unit!43128)

(assert (=> d!141715 (= lt!583644 lt!583643)))

(assert (=> d!141715 (= (getValueByKey!708 lt!583646 (_1!11402 (tuple2!22785 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387))) (Some!758 (_2!11402 (tuple2!22785 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387))))))

(declare-fun lemmaContainsTupThenGetReturnValue!352 (List!29935 (_ BitVec 64) V!51659) Unit!43128)

(assert (=> d!141715 (= lt!583643 (lemmaContainsTupThenGetReturnValue!352 lt!583646 (_1!11402 (tuple2!22785 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387)) (_2!11402 (tuple2!22785 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387))))))

(declare-fun insertStrictlySorted!481 (List!29935 (_ BitVec 64) V!51659) List!29935)

(assert (=> d!141715 (= lt!583646 (insertStrictlySorted!481 (toList!10242 lt!583533) (_1!11402 (tuple2!22785 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387)) (_2!11402 (tuple2!22785 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387))))))

(assert (=> d!141715 (= (+!4460 lt!583533 (tuple2!22785 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387)) lt!583645)))

(declare-fun b!1304091 () Bool)

(declare-fun res!866181 () Bool)

(assert (=> b!1304091 (=> (not res!866181) (not e!743885))))

(assert (=> b!1304091 (= res!866181 (= (getValueByKey!708 (toList!10242 lt!583645) (_1!11402 (tuple2!22785 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387))) (Some!758 (_2!11402 (tuple2!22785 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387)))))))

(declare-fun b!1304092 () Bool)

(declare-fun contains!8318 (List!29935 tuple2!22784) Bool)

(assert (=> b!1304092 (= e!743885 (contains!8318 (toList!10242 lt!583645) (tuple2!22785 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387)))))

(assert (= (and d!141715 res!866182) b!1304091))

(assert (= (and b!1304091 res!866181) b!1304092))

(declare-fun m!1195139 () Bool)

(assert (=> d!141715 m!1195139))

(declare-fun m!1195141 () Bool)

(assert (=> d!141715 m!1195141))

(declare-fun m!1195143 () Bool)

(assert (=> d!141715 m!1195143))

(declare-fun m!1195145 () Bool)

(assert (=> d!141715 m!1195145))

(declare-fun m!1195147 () Bool)

(assert (=> b!1304091 m!1195147))

(declare-fun m!1195149 () Bool)

(assert (=> b!1304092 m!1195149))

(assert (=> b!1303944 d!141715))

(declare-fun d!141717 () Bool)

(assert (=> d!141717 (not (contains!8315 (+!4460 lt!583533 (tuple2!22785 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387)) k0!1205))))

(declare-fun lt!583649 () Unit!43128)

(declare-fun choose!1935 (ListLongMap!20453 (_ BitVec 64) V!51659 (_ BitVec 64)) Unit!43128)

(assert (=> d!141717 (= lt!583649 (choose!1935 lt!583533 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387 k0!1205))))

(declare-fun e!743888 () Bool)

(assert (=> d!141717 e!743888))

(declare-fun res!866185 () Bool)

(assert (=> d!141717 (=> (not res!866185) (not e!743888))))

(assert (=> d!141717 (= res!866185 (not (contains!8315 lt!583533 k0!1205)))))

(assert (=> d!141717 (= (addStillNotContains!484 lt!583533 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387 k0!1205) lt!583649)))

(declare-fun b!1304096 () Bool)

(assert (=> b!1304096 (= e!743888 (not (= #b0000000000000000000000000000000000000000000000000000000000000000 k0!1205)))))

(assert (= (and d!141717 res!866185) b!1304096))

(assert (=> d!141717 m!1195011))

(assert (=> d!141717 m!1195011))

(assert (=> d!141717 m!1195013))

(declare-fun m!1195151 () Bool)

(assert (=> d!141717 m!1195151))

(declare-fun m!1195153 () Bool)

(assert (=> d!141717 m!1195153))

(assert (=> b!1303944 d!141717))

(declare-fun b!1304121 () Bool)

(declare-fun e!743908 () ListLongMap!20453)

(declare-fun call!64265 () ListLongMap!20453)

(assert (=> b!1304121 (= e!743908 call!64265)))

(declare-fun b!1304122 () Bool)

(declare-fun e!743903 () Bool)

(declare-fun lt!583670 () ListLongMap!20453)

(declare-fun isEmpty!1068 (ListLongMap!20453) Bool)

(assert (=> b!1304122 (= e!743903 (isEmpty!1068 lt!583670))))

(declare-fun b!1304123 () Bool)

(assert (=> b!1304123 (= e!743903 (= lt!583670 (getCurrentListMapNoExtraKeys!6176 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 (bvadd from!2144 #b00000000000000000000000000000001) defaultEntry!1448)))))

(declare-fun b!1304124 () Bool)

(declare-fun e!743904 () Bool)

(declare-fun e!743906 () Bool)

(assert (=> b!1304124 (= e!743904 e!743906)))

(assert (=> b!1304124 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!42443 _keys!1741)))))

(declare-fun res!866195 () Bool)

(assert (=> b!1304124 (= res!866195 (contains!8315 lt!583670 (select (arr!41892 _keys!1741) from!2144)))))

(assert (=> b!1304124 (=> (not res!866195) (not e!743906))))

(declare-fun b!1304125 () Bool)

(declare-fun res!866196 () Bool)

(declare-fun e!743905 () Bool)

(assert (=> b!1304125 (=> (not res!866196) (not e!743905))))

(assert (=> b!1304125 (= res!866196 (not (contains!8315 lt!583670 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1304126 () Bool)

(assert (=> b!1304126 (= e!743904 e!743903)))

(declare-fun c!125159 () Bool)

(assert (=> b!1304126 (= c!125159 (bvslt from!2144 (size!42443 _keys!1741)))))

(declare-fun bm!64262 () Bool)

(assert (=> bm!64262 (= call!64265 (getCurrentListMapNoExtraKeys!6176 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 (bvadd from!2144 #b00000000000000000000000000000001) defaultEntry!1448))))

(declare-fun b!1304127 () Bool)

(declare-fun lt!583665 () Unit!43128)

(declare-fun lt!583669 () Unit!43128)

(assert (=> b!1304127 (= lt!583665 lt!583669)))

(declare-fun lt!583668 () ListLongMap!20453)

(declare-fun lt!583667 () (_ BitVec 64))

(declare-fun lt!583664 () (_ BitVec 64))

(declare-fun lt!583666 () V!51659)

(assert (=> b!1304127 (not (contains!8315 (+!4460 lt!583668 (tuple2!22785 lt!583667 lt!583666)) lt!583664))))

(assert (=> b!1304127 (= lt!583669 (addStillNotContains!484 lt!583668 lt!583667 lt!583666 lt!583664))))

(assert (=> b!1304127 (= lt!583664 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!1304127 (= lt!583666 (get!21210 (select (arr!41893 _values!1445) from!2144) (dynLambda!3510 defaultEntry!1448 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!1304127 (= lt!583667 (select (arr!41892 _keys!1741) from!2144))))

(assert (=> b!1304127 (= lt!583668 call!64265)))

(assert (=> b!1304127 (= e!743908 (+!4460 call!64265 (tuple2!22785 (select (arr!41892 _keys!1741) from!2144) (get!21210 (select (arr!41893 _values!1445) from!2144) (dynLambda!3510 defaultEntry!1448 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!1304128 () Bool)

(declare-fun e!743907 () ListLongMap!20453)

(assert (=> b!1304128 (= e!743907 (ListLongMap!20454 Nil!29932))))

(declare-fun d!141719 () Bool)

(assert (=> d!141719 e!743905))

(declare-fun res!866194 () Bool)

(assert (=> d!141719 (=> (not res!866194) (not e!743905))))

(assert (=> d!141719 (= res!866194 (not (contains!8315 lt!583670 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!141719 (= lt!583670 e!743907)))

(declare-fun c!125162 () Bool)

(assert (=> d!141719 (= c!125162 (bvsge from!2144 (size!42443 _keys!1741)))))

(assert (=> d!141719 (validMask!0 mask!2175)))

(assert (=> d!141719 (= (getCurrentListMapNoExtraKeys!6176 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) lt!583670)))

(declare-fun b!1304129 () Bool)

(assert (=> b!1304129 (= e!743907 e!743908)))

(declare-fun c!125160 () Bool)

(assert (=> b!1304129 (= c!125160 (validKeyInArray!0 (select (arr!41892 _keys!1741) from!2144)))))

(declare-fun b!1304130 () Bool)

(assert (=> b!1304130 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!42443 _keys!1741)))))

(assert (=> b!1304130 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!42444 _values!1445)))))

(assert (=> b!1304130 (= e!743906 (= (apply!1058 lt!583670 (select (arr!41892 _keys!1741) from!2144)) (get!21210 (select (arr!41893 _values!1445) from!2144) (dynLambda!3510 defaultEntry!1448 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1304131 () Bool)

(assert (=> b!1304131 (= e!743905 e!743904)))

(declare-fun c!125161 () Bool)

(declare-fun e!743909 () Bool)

(assert (=> b!1304131 (= c!125161 e!743909)))

(declare-fun res!866197 () Bool)

(assert (=> b!1304131 (=> (not res!866197) (not e!743909))))

(assert (=> b!1304131 (= res!866197 (bvslt from!2144 (size!42443 _keys!1741)))))

(declare-fun b!1304132 () Bool)

(assert (=> b!1304132 (= e!743909 (validKeyInArray!0 (select (arr!41892 _keys!1741) from!2144)))))

(assert (=> b!1304132 (bvsge from!2144 #b00000000000000000000000000000000)))

(assert (= (and d!141719 c!125162) b!1304128))

(assert (= (and d!141719 (not c!125162)) b!1304129))

(assert (= (and b!1304129 c!125160) b!1304127))

(assert (= (and b!1304129 (not c!125160)) b!1304121))

(assert (= (or b!1304127 b!1304121) bm!64262))

(assert (= (and d!141719 res!866194) b!1304125))

(assert (= (and b!1304125 res!866196) b!1304131))

(assert (= (and b!1304131 res!866197) b!1304132))

(assert (= (and b!1304131 c!125161) b!1304124))

(assert (= (and b!1304131 (not c!125161)) b!1304126))

(assert (= (and b!1304124 res!866195) b!1304130))

(assert (= (and b!1304126 c!125159) b!1304123))

(assert (= (and b!1304126 (not c!125159)) b!1304122))

(declare-fun b_lambda!23307 () Bool)

(assert (=> (not b_lambda!23307) (not b!1304127)))

(assert (=> b!1304127 t!43543))

(declare-fun b_and!47467 () Bool)

(assert (= b_and!47465 (and (=> t!43543 result!23833) b_and!47467)))

(declare-fun b_lambda!23309 () Bool)

(assert (=> (not b_lambda!23309) (not b!1304130)))

(assert (=> b!1304130 t!43543))

(declare-fun b_and!47469 () Bool)

(assert (= b_and!47467 (and (=> t!43543 result!23833) b_and!47469)))

(assert (=> b!1304129 m!1195019))

(assert (=> b!1304129 m!1195019))

(assert (=> b!1304129 m!1195021))

(assert (=> b!1304127 m!1195101))

(assert (=> b!1304127 m!1195099))

(assert (=> b!1304127 m!1195105))

(declare-fun m!1195155 () Bool)

(assert (=> b!1304127 m!1195155))

(assert (=> b!1304127 m!1195101))

(assert (=> b!1304127 m!1195019))

(assert (=> b!1304127 m!1195099))

(declare-fun m!1195157 () Bool)

(assert (=> b!1304127 m!1195157))

(assert (=> b!1304127 m!1195157))

(declare-fun m!1195159 () Bool)

(assert (=> b!1304127 m!1195159))

(declare-fun m!1195161 () Bool)

(assert (=> b!1304127 m!1195161))

(declare-fun m!1195163 () Bool)

(assert (=> bm!64262 m!1195163))

(assert (=> b!1304130 m!1195101))

(assert (=> b!1304130 m!1195099))

(assert (=> b!1304130 m!1195105))

(assert (=> b!1304130 m!1195099))

(assert (=> b!1304130 m!1195019))

(declare-fun m!1195165 () Bool)

(assert (=> b!1304130 m!1195165))

(assert (=> b!1304130 m!1195101))

(assert (=> b!1304130 m!1195019))

(declare-fun m!1195167 () Bool)

(assert (=> d!141719 m!1195167))

(assert (=> d!141719 m!1194997))

(assert (=> b!1304123 m!1195163))

(declare-fun m!1195169 () Bool)

(assert (=> b!1304122 m!1195169))

(assert (=> b!1304132 m!1195019))

(assert (=> b!1304132 m!1195019))

(assert (=> b!1304132 m!1195021))

(assert (=> b!1304124 m!1195019))

(assert (=> b!1304124 m!1195019))

(declare-fun m!1195171 () Bool)

(assert (=> b!1304124 m!1195171))

(declare-fun m!1195173 () Bool)

(assert (=> b!1304125 m!1195173))

(assert (=> b!1303944 d!141719))

(declare-fun d!141721 () Bool)

(declare-fun e!743910 () Bool)

(assert (=> d!141721 e!743910))

(declare-fun res!866198 () Bool)

(assert (=> d!141721 (=> res!866198 e!743910)))

(declare-fun lt!583673 () Bool)

(assert (=> d!141721 (= res!866198 (not lt!583673))))

(declare-fun lt!583674 () Bool)

(assert (=> d!141721 (= lt!583673 lt!583674)))

(declare-fun lt!583671 () Unit!43128)

(declare-fun e!743911 () Unit!43128)

(assert (=> d!141721 (= lt!583671 e!743911)))

(declare-fun c!125163 () Bool)

(assert (=> d!141721 (= c!125163 lt!583674)))

(assert (=> d!141721 (= lt!583674 (containsKey!726 (toList!10242 (ListLongMap!20454 Nil!29932)) k0!1205))))

(assert (=> d!141721 (= (contains!8315 (ListLongMap!20454 Nil!29932) k0!1205) lt!583673)))

(declare-fun b!1304133 () Bool)

(declare-fun lt!583672 () Unit!43128)

(assert (=> b!1304133 (= e!743911 lt!583672)))

(assert (=> b!1304133 (= lt!583672 (lemmaContainsKeyImpliesGetValueByKeyDefined!471 (toList!10242 (ListLongMap!20454 Nil!29932)) k0!1205))))

(assert (=> b!1304133 (isDefined!511 (getValueByKey!708 (toList!10242 (ListLongMap!20454 Nil!29932)) k0!1205))))

(declare-fun b!1304134 () Bool)

(declare-fun Unit!43135 () Unit!43128)

(assert (=> b!1304134 (= e!743911 Unit!43135)))

(declare-fun b!1304135 () Bool)

(assert (=> b!1304135 (= e!743910 (isDefined!511 (getValueByKey!708 (toList!10242 (ListLongMap!20454 Nil!29932)) k0!1205)))))

(assert (= (and d!141721 c!125163) b!1304133))

(assert (= (and d!141721 (not c!125163)) b!1304134))

(assert (= (and d!141721 (not res!866198)) b!1304135))

(declare-fun m!1195175 () Bool)

(assert (=> d!141721 m!1195175))

(declare-fun m!1195177 () Bool)

(assert (=> b!1304133 m!1195177))

(declare-fun m!1195179 () Bool)

(assert (=> b!1304133 m!1195179))

(assert (=> b!1304133 m!1195179))

(declare-fun m!1195181 () Bool)

(assert (=> b!1304133 m!1195181))

(assert (=> b!1304135 m!1195179))

(assert (=> b!1304135 m!1195179))

(assert (=> b!1304135 m!1195181))

(assert (=> b!1303935 d!141721))

(declare-fun d!141723 () Bool)

(assert (=> d!141723 (not (contains!8315 (ListLongMap!20454 Nil!29932) k0!1205))))

(declare-fun lt!583677 () Unit!43128)

(declare-fun choose!1936 ((_ BitVec 64)) Unit!43128)

(assert (=> d!141723 (= lt!583677 (choose!1936 k0!1205))))

(assert (=> d!141723 (= (emptyContainsNothing!227 k0!1205) lt!583677)))

(declare-fun bs!37138 () Bool)

(assert (= bs!37138 d!141723))

(assert (=> bs!37138 m!1195005))

(declare-fun m!1195183 () Bool)

(assert (=> bs!37138 m!1195183))

(assert (=> b!1303935 d!141723))

(declare-fun b!1304142 () Bool)

(declare-fun e!743917 () Bool)

(assert (=> b!1304142 (= e!743917 tp_is_empty!34917)))

(declare-fun b!1304143 () Bool)

(declare-fun e!743916 () Bool)

(assert (=> b!1304143 (= e!743916 tp_is_empty!34917)))

(declare-fun mapIsEmpty!53978 () Bool)

(declare-fun mapRes!53978 () Bool)

(assert (=> mapIsEmpty!53978 mapRes!53978))

(declare-fun mapNonEmpty!53978 () Bool)

(declare-fun tp!102996 () Bool)

(assert (=> mapNonEmpty!53978 (= mapRes!53978 (and tp!102996 e!743917))))

(declare-fun mapValue!53978 () ValueCell!16560)

(declare-fun mapRest!53978 () (Array (_ BitVec 32) ValueCell!16560))

(declare-fun mapKey!53978 () (_ BitVec 32))

(assert (=> mapNonEmpty!53978 (= mapRest!53972 (store mapRest!53978 mapKey!53978 mapValue!53978))))

(declare-fun condMapEmpty!53978 () Bool)

(declare-fun mapDefault!53978 () ValueCell!16560)

(assert (=> mapNonEmpty!53972 (= condMapEmpty!53978 (= mapRest!53972 ((as const (Array (_ BitVec 32) ValueCell!16560)) mapDefault!53978)))))

(assert (=> mapNonEmpty!53972 (= tp!102987 (and e!743916 mapRes!53978))))

(assert (= (and mapNonEmpty!53972 condMapEmpty!53978) mapIsEmpty!53978))

(assert (= (and mapNonEmpty!53972 (not condMapEmpty!53978)) mapNonEmpty!53978))

(assert (= (and mapNonEmpty!53978 ((_ is ValueCellFull!16560) mapValue!53978)) b!1304142))

(assert (= (and mapNonEmpty!53972 ((_ is ValueCellFull!16560) mapDefault!53978)) b!1304143))

(declare-fun m!1195185 () Bool)

(assert (=> mapNonEmpty!53978 m!1195185))

(declare-fun b_lambda!23311 () Bool)

(assert (= b_lambda!23307 (or (and start!110166 b_free!29277) b_lambda!23311)))

(declare-fun b_lambda!23313 () Bool)

(assert (= b_lambda!23309 (or (and start!110166 b_free!29277) b_lambda!23313)))

(declare-fun b_lambda!23315 () Bool)

(assert (= b_lambda!23305 (or (and start!110166 b_free!29277) b_lambda!23315)))

(check-sat (not b!1304082) (not d!141703) (not b!1304092) (not b!1304043) b_and!47469 (not b_lambda!23311) (not b!1304123) (not b!1303991) (not b!1304084) (not d!141717) (not b!1304129) (not b!1304130) (not bm!64247) (not d!141719) (not b!1304036) (not b!1304039) (not b!1304041) (not b!1304133) (not b_lambda!23313) (not d!141721) (not b!1304132) (not b!1303989) (not d!141715) (not b_next!29277) (not b!1304068) (not b!1304127) (not bm!64248) (not b!1304040) (not bm!64259) (not b!1304071) (not mapNonEmpty!53978) (not bm!64262) (not bm!64253) (not b!1304067) (not b!1304124) (not b!1304122) (not bm!64251) tp_is_empty!34917 (not b!1304080) (not b!1304125) (not bm!64256) (not d!141713) (not b!1304086) (not b_lambda!23315) (not b!1304135) (not b!1304091) (not d!141723) (not b!1304049) (not b!1304054) (not d!141705) (not b!1304042))
(check-sat b_and!47469 (not b_next!29277))
