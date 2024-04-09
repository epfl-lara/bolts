; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!110372 () Bool)

(assert start!110372)

(declare-fun b_free!29319 () Bool)

(declare-fun b_next!29319 () Bool)

(assert (=> start!110372 (= b_free!29319 (not b_next!29319))))

(declare-fun tp!103127 () Bool)

(declare-fun b_and!47535 () Bool)

(assert (=> start!110372 (= tp!103127 b_and!47535)))

(declare-fun b!1305826 () Bool)

(declare-fun res!867091 () Bool)

(declare-fun e!744887 () Bool)

(assert (=> b!1305826 (=> (not res!867091) (not e!744887))))

(declare-fun from!2144 () (_ BitVec 32))

(declare-datatypes ((array!86901 0))(
  ( (array!86902 (arr!41932 (Array (_ BitVec 32) (_ BitVec 64))) (size!42483 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!86901)

(assert (=> b!1305826 (= res!867091 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!42483 _keys!1741))))))

(declare-fun b!1305827 () Bool)

(declare-fun k0!1205 () (_ BitVec 64))

(declare-fun extraKeys!1366 () (_ BitVec 32))

(assert (=> b!1305827 (= e!744887 (and (or (= k0!1205 #b0000000000000000000000000000000000000000000000000000000000000000) (= k0!1205 #b1000000000000000000000000000000000000000000000000000000000000000)) (ite (= k0!1205 #b0000000000000000000000000000000000000000000000000000000000000000) (= (bvand extraKeys!1366 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (= (bvand extraKeys!1366 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun res!867090 () Bool)

(assert (=> start!110372 (=> (not res!867090) (not e!744887))))

(declare-fun mask!2175 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!110372 (= res!867090 (validMask!0 mask!2175))))

(assert (=> start!110372 e!744887))

(declare-fun tp_is_empty!34959 () Bool)

(assert (=> start!110372 tp_is_empty!34959))

(assert (=> start!110372 true))

(declare-datatypes ((V!51715 0))(
  ( (V!51716 (val!17554 Int)) )
))
(declare-datatypes ((ValueCell!16581 0))(
  ( (ValueCellFull!16581 (v!20177 V!51715)) (EmptyCell!16581) )
))
(declare-datatypes ((array!86903 0))(
  ( (array!86904 (arr!41933 (Array (_ BitVec 32) ValueCell!16581)) (size!42484 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!86903)

(declare-fun e!744884 () Bool)

(declare-fun array_inv!31709 (array!86903) Bool)

(assert (=> start!110372 (and (array_inv!31709 _values!1445) e!744884)))

(declare-fun array_inv!31710 (array!86901) Bool)

(assert (=> start!110372 (array_inv!31710 _keys!1741)))

(assert (=> start!110372 tp!103127))

(declare-fun mapIsEmpty!54049 () Bool)

(declare-fun mapRes!54049 () Bool)

(assert (=> mapIsEmpty!54049 mapRes!54049))

(declare-fun b!1305828 () Bool)

(declare-fun res!867089 () Bool)

(assert (=> b!1305828 (=> (not res!867089) (not e!744887))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!86901 (_ BitVec 32)) Bool)

(assert (=> b!1305828 (= res!867089 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1741 mask!2175))))

(declare-fun b!1305829 () Bool)

(declare-fun res!867092 () Bool)

(assert (=> b!1305829 (=> (not res!867092) (not e!744887))))

(declare-datatypes ((List!29968 0))(
  ( (Nil!29965) (Cons!29964 (h!31173 (_ BitVec 64)) (t!43579 List!29968)) )
))
(declare-fun arrayNoDuplicates!0 (array!86901 (_ BitVec 32) List!29968) Bool)

(assert (=> b!1305829 (= res!867092 (arrayNoDuplicates!0 _keys!1741 #b00000000000000000000000000000000 Nil!29965))))

(declare-fun b!1305830 () Bool)

(declare-fun res!867088 () Bool)

(assert (=> b!1305830 (=> (not res!867088) (not e!744887))))

(declare-fun minValue!1387 () V!51715)

(declare-fun zeroValue!1387 () V!51715)

(declare-fun defaultEntry!1448 () Int)

(declare-datatypes ((tuple2!22822 0))(
  ( (tuple2!22823 (_1!11421 (_ BitVec 64)) (_2!11421 V!51715)) )
))
(declare-datatypes ((List!29969 0))(
  ( (Nil!29966) (Cons!29965 (h!31174 tuple2!22822) (t!43580 List!29969)) )
))
(declare-datatypes ((ListLongMap!20491 0))(
  ( (ListLongMap!20492 (toList!10261 List!29969)) )
))
(declare-fun contains!8342 (ListLongMap!20491 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5217 (array!86901 array!86903 (_ BitVec 32) (_ BitVec 32) V!51715 V!51715 (_ BitVec 32) Int) ListLongMap!20491)

(assert (=> b!1305830 (= res!867088 (contains!8342 (getCurrentListMap!5217 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) k0!1205))))

(declare-fun b!1305831 () Bool)

(declare-fun e!744888 () Bool)

(assert (=> b!1305831 (= e!744888 tp_is_empty!34959)))

(declare-fun mapNonEmpty!54049 () Bool)

(declare-fun tp!103126 () Bool)

(assert (=> mapNonEmpty!54049 (= mapRes!54049 (and tp!103126 e!744888))))

(declare-fun mapValue!54049 () ValueCell!16581)

(declare-fun mapKey!54049 () (_ BitVec 32))

(declare-fun mapRest!54049 () (Array (_ BitVec 32) ValueCell!16581))

(assert (=> mapNonEmpty!54049 (= (arr!41933 _values!1445) (store mapRest!54049 mapKey!54049 mapValue!54049))))

(declare-fun b!1305832 () Bool)

(declare-fun res!867093 () Bool)

(assert (=> b!1305832 (=> (not res!867093) (not e!744887))))

(assert (=> b!1305832 (= res!867093 (and (= (size!42484 _values!1445) (bvadd #b00000000000000000000000000000001 mask!2175)) (= (size!42483 _keys!1741) (size!42484 _values!1445)) (bvsge mask!2175 #b00000000000000000000000000000000) (bvsge extraKeys!1366 #b00000000000000000000000000000000) (bvsle extraKeys!1366 #b00000000000000000000000000000011)))))

(declare-fun b!1305833 () Bool)

(declare-fun e!744886 () Bool)

(assert (=> b!1305833 (= e!744886 tp_is_empty!34959)))

(declare-fun b!1305834 () Bool)

(assert (=> b!1305834 (= e!744884 (and e!744886 mapRes!54049))))

(declare-fun condMapEmpty!54049 () Bool)

(declare-fun mapDefault!54049 () ValueCell!16581)

(assert (=> b!1305834 (= condMapEmpty!54049 (= (arr!41933 _values!1445) ((as const (Array (_ BitVec 32) ValueCell!16581)) mapDefault!54049)))))

(assert (= (and start!110372 res!867090) b!1305832))

(assert (= (and b!1305832 res!867093) b!1305828))

(assert (= (and b!1305828 res!867089) b!1305829))

(assert (= (and b!1305829 res!867092) b!1305826))

(assert (= (and b!1305826 res!867091) b!1305830))

(assert (= (and b!1305830 res!867088) b!1305827))

(assert (= (and b!1305834 condMapEmpty!54049) mapIsEmpty!54049))

(assert (= (and b!1305834 (not condMapEmpty!54049)) mapNonEmpty!54049))

(get-info :version)

(assert (= (and mapNonEmpty!54049 ((_ is ValueCellFull!16581) mapValue!54049)) b!1305831))

(assert (= (and b!1305834 ((_ is ValueCellFull!16581) mapDefault!54049)) b!1305833))

(assert (= start!110372 b!1305834))

(declare-fun m!1197081 () Bool)

(assert (=> mapNonEmpty!54049 m!1197081))

(declare-fun m!1197083 () Bool)

(assert (=> b!1305830 m!1197083))

(assert (=> b!1305830 m!1197083))

(declare-fun m!1197085 () Bool)

(assert (=> b!1305830 m!1197085))

(declare-fun m!1197087 () Bool)

(assert (=> start!110372 m!1197087))

(declare-fun m!1197089 () Bool)

(assert (=> start!110372 m!1197089))

(declare-fun m!1197091 () Bool)

(assert (=> start!110372 m!1197091))

(declare-fun m!1197093 () Bool)

(assert (=> b!1305829 m!1197093))

(declare-fun m!1197095 () Bool)

(assert (=> b!1305828 m!1197095))

(check-sat b_and!47535 (not b_next!29319) (not start!110372) (not b!1305829) (not mapNonEmpty!54049) (not b!1305830) tp_is_empty!34959 (not b!1305828))
(check-sat b_and!47535 (not b_next!29319))
(get-model)

(declare-fun b!1305870 () Bool)

(declare-fun e!744912 () Bool)

(declare-fun e!744911 () Bool)

(assert (=> b!1305870 (= e!744912 e!744911)))

(declare-fun c!125453 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1305870 (= c!125453 (validKeyInArray!0 (select (arr!41932 _keys!1741) #b00000000000000000000000000000000)))))

(declare-fun b!1305871 () Bool)

(declare-fun e!744910 () Bool)

(assert (=> b!1305871 (= e!744911 e!744910)))

(declare-fun lt!584741 () (_ BitVec 64))

(assert (=> b!1305871 (= lt!584741 (select (arr!41932 _keys!1741) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!43210 0))(
  ( (Unit!43211) )
))
(declare-fun lt!584740 () Unit!43210)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!86901 (_ BitVec 64) (_ BitVec 32)) Unit!43210)

(assert (=> b!1305871 (= lt!584740 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1741 lt!584741 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!86901 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1305871 (arrayContainsKey!0 _keys!1741 lt!584741 #b00000000000000000000000000000000)))

(declare-fun lt!584742 () Unit!43210)

(assert (=> b!1305871 (= lt!584742 lt!584740)))

(declare-fun res!867116 () Bool)

(declare-datatypes ((SeekEntryResult!10027 0))(
  ( (MissingZero!10027 (index!42478 (_ BitVec 32))) (Found!10027 (index!42479 (_ BitVec 32))) (Intermediate!10027 (undefined!10839 Bool) (index!42480 (_ BitVec 32)) (x!115960 (_ BitVec 32))) (Undefined!10027) (MissingVacant!10027 (index!42481 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!86901 (_ BitVec 32)) SeekEntryResult!10027)

(assert (=> b!1305871 (= res!867116 (= (seekEntryOrOpen!0 (select (arr!41932 _keys!1741) #b00000000000000000000000000000000) _keys!1741 mask!2175) (Found!10027 #b00000000000000000000000000000000)))))

(assert (=> b!1305871 (=> (not res!867116) (not e!744910))))

(declare-fun b!1305872 () Bool)

(declare-fun call!64592 () Bool)

(assert (=> b!1305872 (= e!744911 call!64592)))

(declare-fun bm!64589 () Bool)

(assert (=> bm!64589 (= call!64592 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) _keys!1741 mask!2175))))

(declare-fun d!142113 () Bool)

(declare-fun res!867117 () Bool)

(assert (=> d!142113 (=> res!867117 e!744912)))

(assert (=> d!142113 (= res!867117 (bvsge #b00000000000000000000000000000000 (size!42483 _keys!1741)))))

(assert (=> d!142113 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1741 mask!2175) e!744912)))

(declare-fun b!1305873 () Bool)

(assert (=> b!1305873 (= e!744910 call!64592)))

(assert (= (and d!142113 (not res!867117)) b!1305870))

(assert (= (and b!1305870 c!125453) b!1305871))

(assert (= (and b!1305870 (not c!125453)) b!1305872))

(assert (= (and b!1305871 res!867116) b!1305873))

(assert (= (or b!1305873 b!1305872) bm!64589))

(declare-fun m!1197113 () Bool)

(assert (=> b!1305870 m!1197113))

(assert (=> b!1305870 m!1197113))

(declare-fun m!1197115 () Bool)

(assert (=> b!1305870 m!1197115))

(assert (=> b!1305871 m!1197113))

(declare-fun m!1197117 () Bool)

(assert (=> b!1305871 m!1197117))

(declare-fun m!1197119 () Bool)

(assert (=> b!1305871 m!1197119))

(assert (=> b!1305871 m!1197113))

(declare-fun m!1197121 () Bool)

(assert (=> b!1305871 m!1197121))

(declare-fun m!1197123 () Bool)

(assert (=> bm!64589 m!1197123))

(assert (=> b!1305828 d!142113))

(declare-fun d!142115 () Bool)

(assert (=> d!142115 (= (validMask!0 mask!2175) (and (or (= mask!2175 #b00000000000000000000000000000111) (= mask!2175 #b00000000000000000000000000001111) (= mask!2175 #b00000000000000000000000000011111) (= mask!2175 #b00000000000000000000000000111111) (= mask!2175 #b00000000000000000000000001111111) (= mask!2175 #b00000000000000000000000011111111) (= mask!2175 #b00000000000000000000000111111111) (= mask!2175 #b00000000000000000000001111111111) (= mask!2175 #b00000000000000000000011111111111) (= mask!2175 #b00000000000000000000111111111111) (= mask!2175 #b00000000000000000001111111111111) (= mask!2175 #b00000000000000000011111111111111) (= mask!2175 #b00000000000000000111111111111111) (= mask!2175 #b00000000000000001111111111111111) (= mask!2175 #b00000000000000011111111111111111) (= mask!2175 #b00000000000000111111111111111111) (= mask!2175 #b00000000000001111111111111111111) (= mask!2175 #b00000000000011111111111111111111) (= mask!2175 #b00000000000111111111111111111111) (= mask!2175 #b00000000001111111111111111111111) (= mask!2175 #b00000000011111111111111111111111) (= mask!2175 #b00000000111111111111111111111111) (= mask!2175 #b00000001111111111111111111111111) (= mask!2175 #b00000011111111111111111111111111) (= mask!2175 #b00000111111111111111111111111111) (= mask!2175 #b00001111111111111111111111111111) (= mask!2175 #b00011111111111111111111111111111) (= mask!2175 #b00111111111111111111111111111111)) (bvsle mask!2175 #b00111111111111111111111111111111)))))

(assert (=> start!110372 d!142115))

(declare-fun d!142117 () Bool)

(assert (=> d!142117 (= (array_inv!31709 _values!1445) (bvsge (size!42484 _values!1445) #b00000000000000000000000000000000))))

(assert (=> start!110372 d!142117))

(declare-fun d!142119 () Bool)

(assert (=> d!142119 (= (array_inv!31710 _keys!1741) (bvsge (size!42483 _keys!1741) #b00000000000000000000000000000000))))

(assert (=> start!110372 d!142119))

(declare-fun bm!64592 () Bool)

(declare-fun call!64595 () Bool)

(declare-fun c!125456 () Bool)

(assert (=> bm!64592 (= call!64595 (arrayNoDuplicates!0 _keys!1741 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!125456 (Cons!29964 (select (arr!41932 _keys!1741) #b00000000000000000000000000000000) Nil!29965) Nil!29965)))))

(declare-fun d!142121 () Bool)

(declare-fun res!867125 () Bool)

(declare-fun e!744923 () Bool)

(assert (=> d!142121 (=> res!867125 e!744923)))

(assert (=> d!142121 (= res!867125 (bvsge #b00000000000000000000000000000000 (size!42483 _keys!1741)))))

(assert (=> d!142121 (= (arrayNoDuplicates!0 _keys!1741 #b00000000000000000000000000000000 Nil!29965) e!744923)))

(declare-fun b!1305884 () Bool)

(declare-fun e!744921 () Bool)

(assert (=> b!1305884 (= e!744921 call!64595)))

(declare-fun b!1305885 () Bool)

(declare-fun e!744922 () Bool)

(declare-fun contains!8344 (List!29968 (_ BitVec 64)) Bool)

(assert (=> b!1305885 (= e!744922 (contains!8344 Nil!29965 (select (arr!41932 _keys!1741) #b00000000000000000000000000000000)))))

(declare-fun b!1305886 () Bool)

(declare-fun e!744924 () Bool)

(assert (=> b!1305886 (= e!744923 e!744924)))

(declare-fun res!867124 () Bool)

(assert (=> b!1305886 (=> (not res!867124) (not e!744924))))

(assert (=> b!1305886 (= res!867124 (not e!744922))))

(declare-fun res!867126 () Bool)

(assert (=> b!1305886 (=> (not res!867126) (not e!744922))))

(assert (=> b!1305886 (= res!867126 (validKeyInArray!0 (select (arr!41932 _keys!1741) #b00000000000000000000000000000000)))))

(declare-fun b!1305887 () Bool)

(assert (=> b!1305887 (= e!744921 call!64595)))

(declare-fun b!1305888 () Bool)

(assert (=> b!1305888 (= e!744924 e!744921)))

(assert (=> b!1305888 (= c!125456 (validKeyInArray!0 (select (arr!41932 _keys!1741) #b00000000000000000000000000000000)))))

(assert (= (and d!142121 (not res!867125)) b!1305886))

(assert (= (and b!1305886 res!867126) b!1305885))

(assert (= (and b!1305886 res!867124) b!1305888))

(assert (= (and b!1305888 c!125456) b!1305887))

(assert (= (and b!1305888 (not c!125456)) b!1305884))

(assert (= (or b!1305887 b!1305884) bm!64592))

(assert (=> bm!64592 m!1197113))

(declare-fun m!1197125 () Bool)

(assert (=> bm!64592 m!1197125))

(assert (=> b!1305885 m!1197113))

(assert (=> b!1305885 m!1197113))

(declare-fun m!1197127 () Bool)

(assert (=> b!1305885 m!1197127))

(assert (=> b!1305886 m!1197113))

(assert (=> b!1305886 m!1197113))

(assert (=> b!1305886 m!1197115))

(assert (=> b!1305888 m!1197113))

(assert (=> b!1305888 m!1197113))

(assert (=> b!1305888 m!1197115))

(assert (=> b!1305829 d!142121))

(declare-fun d!142123 () Bool)

(declare-fun e!744929 () Bool)

(assert (=> d!142123 e!744929))

(declare-fun res!867129 () Bool)

(assert (=> d!142123 (=> res!867129 e!744929)))

(declare-fun lt!584754 () Bool)

(assert (=> d!142123 (= res!867129 (not lt!584754))))

(declare-fun lt!584752 () Bool)

(assert (=> d!142123 (= lt!584754 lt!584752)))

(declare-fun lt!584753 () Unit!43210)

(declare-fun e!744930 () Unit!43210)

(assert (=> d!142123 (= lt!584753 e!744930)))

(declare-fun c!125459 () Bool)

(assert (=> d!142123 (= c!125459 lt!584752)))

(declare-fun containsKey!730 (List!29969 (_ BitVec 64)) Bool)

(assert (=> d!142123 (= lt!584752 (containsKey!730 (toList!10261 (getCurrentListMap!5217 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448)) k0!1205))))

(assert (=> d!142123 (= (contains!8342 (getCurrentListMap!5217 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) k0!1205) lt!584754)))

(declare-fun b!1305895 () Bool)

(declare-fun lt!584751 () Unit!43210)

(assert (=> b!1305895 (= e!744930 lt!584751)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!475 (List!29969 (_ BitVec 64)) Unit!43210)

(assert (=> b!1305895 (= lt!584751 (lemmaContainsKeyImpliesGetValueByKeyDefined!475 (toList!10261 (getCurrentListMap!5217 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448)) k0!1205))))

(declare-datatypes ((Option!763 0))(
  ( (Some!762 (v!20179 V!51715)) (None!761) )
))
(declare-fun isDefined!515 (Option!763) Bool)

(declare-fun getValueByKey!712 (List!29969 (_ BitVec 64)) Option!763)

(assert (=> b!1305895 (isDefined!515 (getValueByKey!712 (toList!10261 (getCurrentListMap!5217 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448)) k0!1205))))

(declare-fun b!1305896 () Bool)

(declare-fun Unit!43212 () Unit!43210)

(assert (=> b!1305896 (= e!744930 Unit!43212)))

(declare-fun b!1305897 () Bool)

(assert (=> b!1305897 (= e!744929 (isDefined!515 (getValueByKey!712 (toList!10261 (getCurrentListMap!5217 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448)) k0!1205)))))

(assert (= (and d!142123 c!125459) b!1305895))

(assert (= (and d!142123 (not c!125459)) b!1305896))

(assert (= (and d!142123 (not res!867129)) b!1305897))

(declare-fun m!1197129 () Bool)

(assert (=> d!142123 m!1197129))

(declare-fun m!1197131 () Bool)

(assert (=> b!1305895 m!1197131))

(declare-fun m!1197133 () Bool)

(assert (=> b!1305895 m!1197133))

(assert (=> b!1305895 m!1197133))

(declare-fun m!1197135 () Bool)

(assert (=> b!1305895 m!1197135))

(assert (=> b!1305897 m!1197133))

(assert (=> b!1305897 m!1197133))

(assert (=> b!1305897 m!1197135))

(assert (=> b!1305830 d!142123))

(declare-fun b!1305940 () Bool)

(declare-fun e!744964 () Bool)

(declare-fun lt!584812 () ListLongMap!20491)

(declare-fun apply!1062 (ListLongMap!20491 (_ BitVec 64)) V!51715)

(assert (=> b!1305940 (= e!744964 (= (apply!1062 lt!584812 #b0000000000000000000000000000000000000000000000000000000000000000) zeroValue!1387))))

(declare-fun bm!64607 () Bool)

(declare-fun call!64610 () ListLongMap!20491)

(declare-fun call!64611 () ListLongMap!20491)

(assert (=> bm!64607 (= call!64610 call!64611)))

(declare-fun call!64616 () ListLongMap!20491)

(declare-fun bm!64608 () Bool)

(declare-fun getCurrentListMapNoExtraKeys!6192 (array!86901 array!86903 (_ BitVec 32) (_ BitVec 32) V!51715 V!51715 (_ BitVec 32) Int) ListLongMap!20491)

(assert (=> bm!64608 (= call!64616 (getCurrentListMapNoExtraKeys!6192 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448))))

(declare-fun b!1305941 () Bool)

(declare-fun e!744960 () Bool)

(declare-fun e!744966 () Bool)

(assert (=> b!1305941 (= e!744960 e!744966)))

(declare-fun res!867148 () Bool)

(declare-fun call!64615 () Bool)

(assert (=> b!1305941 (= res!867148 call!64615)))

(assert (=> b!1305941 (=> (not res!867148) (not e!744966))))

(declare-fun b!1305942 () Bool)

(declare-fun e!744957 () Bool)

(assert (=> b!1305942 (= e!744957 e!744960)))

(declare-fun c!125476 () Bool)

(assert (=> b!1305942 (= c!125476 (not (= (bvand extraKeys!1366 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1305943 () Bool)

(declare-fun e!744963 () ListLongMap!20491)

(declare-fun call!64613 () ListLongMap!20491)

(assert (=> b!1305943 (= e!744963 call!64613)))

(declare-fun d!142125 () Bool)

(assert (=> d!142125 e!744957))

(declare-fun res!867151 () Bool)

(assert (=> d!142125 (=> (not res!867151) (not e!744957))))

(assert (=> d!142125 (= res!867151 (or (bvsge from!2144 (size!42483 _keys!1741)) (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!42483 _keys!1741)))))))

(declare-fun lt!584819 () ListLongMap!20491)

(assert (=> d!142125 (= lt!584812 lt!584819)))

(declare-fun lt!584814 () Unit!43210)

(declare-fun e!744965 () Unit!43210)

(assert (=> d!142125 (= lt!584814 e!744965)))

(declare-fun c!125473 () Bool)

(declare-fun e!744968 () Bool)

(assert (=> d!142125 (= c!125473 e!744968)))

(declare-fun res!867153 () Bool)

(assert (=> d!142125 (=> (not res!867153) (not e!744968))))

(assert (=> d!142125 (= res!867153 (bvslt from!2144 (size!42483 _keys!1741)))))

(declare-fun e!744961 () ListLongMap!20491)

(assert (=> d!142125 (= lt!584819 e!744961)))

(declare-fun c!125475 () Bool)

(assert (=> d!142125 (= c!125475 (and (not (= (bvand extraKeys!1366 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1366 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!142125 (validMask!0 mask!2175)))

(assert (=> d!142125 (= (getCurrentListMap!5217 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) lt!584812)))

(declare-fun b!1305944 () Bool)

(declare-fun +!4477 (ListLongMap!20491 tuple2!22822) ListLongMap!20491)

(assert (=> b!1305944 (= e!744961 (+!4477 call!64611 (tuple2!22823 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387)))))

(declare-fun bm!64609 () Bool)

(declare-fun call!64614 () ListLongMap!20491)

(assert (=> bm!64609 (= call!64614 call!64616)))

(declare-fun bm!64610 () Bool)

(assert (=> bm!64610 (= call!64613 call!64614)))

(declare-fun bm!64611 () Bool)

(declare-fun call!64612 () Bool)

(assert (=> bm!64611 (= call!64612 (contains!8342 lt!584812 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun bm!64612 () Bool)

(assert (=> bm!64612 (= call!64615 (contains!8342 lt!584812 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun bm!64613 () Bool)

(declare-fun c!125477 () Bool)

(assert (=> bm!64613 (= call!64611 (+!4477 (ite c!125475 call!64616 (ite c!125477 call!64614 call!64613)) (ite (or c!125475 c!125477) (tuple2!22823 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387) (tuple2!22823 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387))))))

(declare-fun b!1305945 () Bool)

(assert (=> b!1305945 (= e!744963 call!64610)))

(declare-fun b!1305946 () Bool)

(declare-fun Unit!43213 () Unit!43210)

(assert (=> b!1305946 (= e!744965 Unit!43213)))

(declare-fun b!1305947 () Bool)

(declare-fun e!744958 () Bool)

(declare-fun e!744962 () Bool)

(assert (=> b!1305947 (= e!744958 e!744962)))

(declare-fun res!867156 () Bool)

(assert (=> b!1305947 (=> (not res!867156) (not e!744962))))

(assert (=> b!1305947 (= res!867156 (contains!8342 lt!584812 (select (arr!41932 _keys!1741) from!2144)))))

(assert (=> b!1305947 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!42483 _keys!1741)))))

(declare-fun b!1305948 () Bool)

(assert (=> b!1305948 (= e!744960 (not call!64615))))

(declare-fun b!1305949 () Bool)

(assert (=> b!1305949 (= e!744968 (validKeyInArray!0 (select (arr!41932 _keys!1741) from!2144)))))

(declare-fun b!1305950 () Bool)

(declare-fun get!21234 (ValueCell!16581 V!51715) V!51715)

(declare-fun dynLambda!3514 (Int (_ BitVec 64)) V!51715)

(assert (=> b!1305950 (= e!744962 (= (apply!1062 lt!584812 (select (arr!41932 _keys!1741) from!2144)) (get!21234 (select (arr!41933 _values!1445) from!2144) (dynLambda!3514 defaultEntry!1448 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1305950 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!42484 _values!1445)))))

(assert (=> b!1305950 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!42483 _keys!1741)))))

(declare-fun b!1305951 () Bool)

(declare-fun res!867152 () Bool)

(assert (=> b!1305951 (=> (not res!867152) (not e!744957))))

(assert (=> b!1305951 (= res!867152 e!744958)))

(declare-fun res!867155 () Bool)

(assert (=> b!1305951 (=> res!867155 e!744958)))

(declare-fun e!744959 () Bool)

(assert (=> b!1305951 (= res!867155 (not e!744959))))

(declare-fun res!867149 () Bool)

(assert (=> b!1305951 (=> (not res!867149) (not e!744959))))

(assert (=> b!1305951 (= res!867149 (bvslt from!2144 (size!42483 _keys!1741)))))

(declare-fun b!1305952 () Bool)

(declare-fun e!744967 () Bool)

(assert (=> b!1305952 (= e!744967 e!744964)))

(declare-fun res!867154 () Bool)

(assert (=> b!1305952 (= res!867154 call!64612)))

(assert (=> b!1305952 (=> (not res!867154) (not e!744964))))

(declare-fun b!1305953 () Bool)

(assert (=> b!1305953 (= e!744966 (= (apply!1062 lt!584812 #b1000000000000000000000000000000000000000000000000000000000000000) minValue!1387))))

(declare-fun b!1305954 () Bool)

(declare-fun c!125472 () Bool)

(assert (=> b!1305954 (= c!125472 (and (not (= (bvand extraKeys!1366 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeys!1366 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun e!744969 () ListLongMap!20491)

(assert (=> b!1305954 (= e!744969 e!744963)))

(declare-fun b!1305955 () Bool)

(assert (=> b!1305955 (= e!744969 call!64610)))

(declare-fun b!1305956 () Bool)

(assert (=> b!1305956 (= e!744959 (validKeyInArray!0 (select (arr!41932 _keys!1741) from!2144)))))

(declare-fun b!1305957 () Bool)

(declare-fun lt!584801 () Unit!43210)

(assert (=> b!1305957 (= e!744965 lt!584801)))

(declare-fun lt!584810 () ListLongMap!20491)

(assert (=> b!1305957 (= lt!584810 (getCurrentListMapNoExtraKeys!6192 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448))))

(declare-fun lt!584806 () (_ BitVec 64))

(assert (=> b!1305957 (= lt!584806 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!584800 () (_ BitVec 64))

(assert (=> b!1305957 (= lt!584800 (select (arr!41932 _keys!1741) from!2144))))

(declare-fun lt!584820 () Unit!43210)

(declare-fun addStillContains!1131 (ListLongMap!20491 (_ BitVec 64) V!51715 (_ BitVec 64)) Unit!43210)

(assert (=> b!1305957 (= lt!584820 (addStillContains!1131 lt!584810 lt!584806 zeroValue!1387 lt!584800))))

(assert (=> b!1305957 (contains!8342 (+!4477 lt!584810 (tuple2!22823 lt!584806 zeroValue!1387)) lt!584800)))

(declare-fun lt!584804 () Unit!43210)

(assert (=> b!1305957 (= lt!584804 lt!584820)))

(declare-fun lt!584805 () ListLongMap!20491)

(assert (=> b!1305957 (= lt!584805 (getCurrentListMapNoExtraKeys!6192 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448))))

(declare-fun lt!584809 () (_ BitVec 64))

(assert (=> b!1305957 (= lt!584809 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!584815 () (_ BitVec 64))

(assert (=> b!1305957 (= lt!584815 (select (arr!41932 _keys!1741) from!2144))))

(declare-fun lt!584807 () Unit!43210)

(declare-fun addApplyDifferent!565 (ListLongMap!20491 (_ BitVec 64) V!51715 (_ BitVec 64)) Unit!43210)

(assert (=> b!1305957 (= lt!584807 (addApplyDifferent!565 lt!584805 lt!584809 minValue!1387 lt!584815))))

(assert (=> b!1305957 (= (apply!1062 (+!4477 lt!584805 (tuple2!22823 lt!584809 minValue!1387)) lt!584815) (apply!1062 lt!584805 lt!584815))))

(declare-fun lt!584813 () Unit!43210)

(assert (=> b!1305957 (= lt!584813 lt!584807)))

(declare-fun lt!584799 () ListLongMap!20491)

(assert (=> b!1305957 (= lt!584799 (getCurrentListMapNoExtraKeys!6192 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448))))

(declare-fun lt!584802 () (_ BitVec 64))

(assert (=> b!1305957 (= lt!584802 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!584811 () (_ BitVec 64))

(assert (=> b!1305957 (= lt!584811 (select (arr!41932 _keys!1741) from!2144))))

(declare-fun lt!584818 () Unit!43210)

(assert (=> b!1305957 (= lt!584818 (addApplyDifferent!565 lt!584799 lt!584802 zeroValue!1387 lt!584811))))

(assert (=> b!1305957 (= (apply!1062 (+!4477 lt!584799 (tuple2!22823 lt!584802 zeroValue!1387)) lt!584811) (apply!1062 lt!584799 lt!584811))))

(declare-fun lt!584816 () Unit!43210)

(assert (=> b!1305957 (= lt!584816 lt!584818)))

(declare-fun lt!584817 () ListLongMap!20491)

(assert (=> b!1305957 (= lt!584817 (getCurrentListMapNoExtraKeys!6192 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448))))

(declare-fun lt!584803 () (_ BitVec 64))

(assert (=> b!1305957 (= lt!584803 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!584808 () (_ BitVec 64))

(assert (=> b!1305957 (= lt!584808 (select (arr!41932 _keys!1741) from!2144))))

(assert (=> b!1305957 (= lt!584801 (addApplyDifferent!565 lt!584817 lt!584803 minValue!1387 lt!584808))))

(assert (=> b!1305957 (= (apply!1062 (+!4477 lt!584817 (tuple2!22823 lt!584803 minValue!1387)) lt!584808) (apply!1062 lt!584817 lt!584808))))

(declare-fun b!1305958 () Bool)

(assert (=> b!1305958 (= e!744967 (not call!64612))))

(declare-fun b!1305959 () Bool)

(declare-fun res!867150 () Bool)

(assert (=> b!1305959 (=> (not res!867150) (not e!744957))))

(assert (=> b!1305959 (= res!867150 e!744967)))

(declare-fun c!125474 () Bool)

(assert (=> b!1305959 (= c!125474 (not (= (bvand extraKeys!1366 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!1305960 () Bool)

(assert (=> b!1305960 (= e!744961 e!744969)))

(assert (=> b!1305960 (= c!125477 (and (not (= (bvand extraKeys!1366 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeys!1366 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(assert (= (and d!142125 c!125475) b!1305944))

(assert (= (and d!142125 (not c!125475)) b!1305960))

(assert (= (and b!1305960 c!125477) b!1305955))

(assert (= (and b!1305960 (not c!125477)) b!1305954))

(assert (= (and b!1305954 c!125472) b!1305945))

(assert (= (and b!1305954 (not c!125472)) b!1305943))

(assert (= (or b!1305945 b!1305943) bm!64610))

(assert (= (or b!1305955 bm!64610) bm!64609))

(assert (= (or b!1305955 b!1305945) bm!64607))

(assert (= (or b!1305944 bm!64609) bm!64608))

(assert (= (or b!1305944 bm!64607) bm!64613))

(assert (= (and d!142125 res!867153) b!1305949))

(assert (= (and d!142125 c!125473) b!1305957))

(assert (= (and d!142125 (not c!125473)) b!1305946))

(assert (= (and d!142125 res!867151) b!1305951))

(assert (= (and b!1305951 res!867149) b!1305956))

(assert (= (and b!1305951 (not res!867155)) b!1305947))

(assert (= (and b!1305947 res!867156) b!1305950))

(assert (= (and b!1305951 res!867152) b!1305959))

(assert (= (and b!1305959 c!125474) b!1305952))

(assert (= (and b!1305959 (not c!125474)) b!1305958))

(assert (= (and b!1305952 res!867154) b!1305940))

(assert (= (or b!1305952 b!1305958) bm!64611))

(assert (= (and b!1305959 res!867150) b!1305942))

(assert (= (and b!1305942 c!125476) b!1305941))

(assert (= (and b!1305942 (not c!125476)) b!1305948))

(assert (= (and b!1305941 res!867148) b!1305953))

(assert (= (or b!1305941 b!1305948) bm!64612))

(declare-fun b_lambda!23369 () Bool)

(assert (=> (not b_lambda!23369) (not b!1305950)))

(declare-fun t!43584 () Bool)

(declare-fun tb!11417 () Bool)

(assert (=> (and start!110372 (= defaultEntry!1448 defaultEntry!1448) t!43584) tb!11417))

(declare-fun result!23857 () Bool)

(assert (=> tb!11417 (= result!23857 tp_is_empty!34959)))

(assert (=> b!1305950 t!43584))

(declare-fun b_and!47539 () Bool)

(assert (= b_and!47535 (and (=> t!43584 result!23857) b_and!47539)))

(declare-fun m!1197137 () Bool)

(assert (=> b!1305957 m!1197137))

(declare-fun m!1197139 () Bool)

(assert (=> b!1305957 m!1197139))

(declare-fun m!1197141 () Bool)

(assert (=> b!1305957 m!1197141))

(declare-fun m!1197143 () Bool)

(assert (=> b!1305957 m!1197143))

(declare-fun m!1197145 () Bool)

(assert (=> b!1305957 m!1197145))

(declare-fun m!1197147 () Bool)

(assert (=> b!1305957 m!1197147))

(declare-fun m!1197149 () Bool)

(assert (=> b!1305957 m!1197149))

(declare-fun m!1197151 () Bool)

(assert (=> b!1305957 m!1197151))

(declare-fun m!1197153 () Bool)

(assert (=> b!1305957 m!1197153))

(declare-fun m!1197155 () Bool)

(assert (=> b!1305957 m!1197155))

(declare-fun m!1197157 () Bool)

(assert (=> b!1305957 m!1197157))

(declare-fun m!1197159 () Bool)

(assert (=> b!1305957 m!1197159))

(assert (=> b!1305957 m!1197145))

(declare-fun m!1197161 () Bool)

(assert (=> b!1305957 m!1197161))

(assert (=> b!1305957 m!1197155))

(declare-fun m!1197163 () Bool)

(assert (=> b!1305957 m!1197163))

(declare-fun m!1197165 () Bool)

(assert (=> b!1305957 m!1197165))

(assert (=> b!1305957 m!1197137))

(declare-fun m!1197167 () Bool)

(assert (=> b!1305957 m!1197167))

(assert (=> b!1305957 m!1197141))

(declare-fun m!1197169 () Bool)

(assert (=> b!1305957 m!1197169))

(declare-fun m!1197171 () Bool)

(assert (=> bm!64611 m!1197171))

(assert (=> b!1305956 m!1197153))

(assert (=> b!1305956 m!1197153))

(declare-fun m!1197173 () Bool)

(assert (=> b!1305956 m!1197173))

(declare-fun m!1197175 () Bool)

(assert (=> bm!64612 m!1197175))

(declare-fun m!1197177 () Bool)

(assert (=> b!1305940 m!1197177))

(declare-fun m!1197179 () Bool)

(assert (=> bm!64613 m!1197179))

(assert (=> b!1305947 m!1197153))

(assert (=> b!1305947 m!1197153))

(declare-fun m!1197181 () Bool)

(assert (=> b!1305947 m!1197181))

(assert (=> b!1305949 m!1197153))

(assert (=> b!1305949 m!1197153))

(assert (=> b!1305949 m!1197173))

(assert (=> d!142125 m!1197087))

(declare-fun m!1197183 () Bool)

(assert (=> b!1305944 m!1197183))

(declare-fun m!1197185 () Bool)

(assert (=> b!1305950 m!1197185))

(assert (=> b!1305950 m!1197185))

(declare-fun m!1197187 () Bool)

(assert (=> b!1305950 m!1197187))

(declare-fun m!1197189 () Bool)

(assert (=> b!1305950 m!1197189))

(assert (=> b!1305950 m!1197187))

(assert (=> b!1305950 m!1197153))

(declare-fun m!1197191 () Bool)

(assert (=> b!1305950 m!1197191))

(assert (=> b!1305950 m!1197153))

(declare-fun m!1197193 () Bool)

(assert (=> b!1305953 m!1197193))

(assert (=> bm!64608 m!1197165))

(assert (=> b!1305830 d!142125))

(declare-fun condMapEmpty!54055 () Bool)

(declare-fun mapDefault!54055 () ValueCell!16581)

(assert (=> mapNonEmpty!54049 (= condMapEmpty!54055 (= mapRest!54049 ((as const (Array (_ BitVec 32) ValueCell!16581)) mapDefault!54055)))))

(declare-fun e!744975 () Bool)

(declare-fun mapRes!54055 () Bool)

(assert (=> mapNonEmpty!54049 (= tp!103126 (and e!744975 mapRes!54055))))

(declare-fun mapNonEmpty!54055 () Bool)

(declare-fun tp!103136 () Bool)

(declare-fun e!744974 () Bool)

(assert (=> mapNonEmpty!54055 (= mapRes!54055 (and tp!103136 e!744974))))

(declare-fun mapValue!54055 () ValueCell!16581)

(declare-fun mapRest!54055 () (Array (_ BitVec 32) ValueCell!16581))

(declare-fun mapKey!54055 () (_ BitVec 32))

(assert (=> mapNonEmpty!54055 (= mapRest!54049 (store mapRest!54055 mapKey!54055 mapValue!54055))))

(declare-fun mapIsEmpty!54055 () Bool)

(assert (=> mapIsEmpty!54055 mapRes!54055))

(declare-fun b!1305969 () Bool)

(assert (=> b!1305969 (= e!744974 tp_is_empty!34959)))

(declare-fun b!1305970 () Bool)

(assert (=> b!1305970 (= e!744975 tp_is_empty!34959)))

(assert (= (and mapNonEmpty!54049 condMapEmpty!54055) mapIsEmpty!54055))

(assert (= (and mapNonEmpty!54049 (not condMapEmpty!54055)) mapNonEmpty!54055))

(assert (= (and mapNonEmpty!54055 ((_ is ValueCellFull!16581) mapValue!54055)) b!1305969))

(assert (= (and mapNonEmpty!54049 ((_ is ValueCellFull!16581) mapDefault!54055)) b!1305970))

(declare-fun m!1197195 () Bool)

(assert (=> mapNonEmpty!54055 m!1197195))

(declare-fun b_lambda!23371 () Bool)

(assert (= b_lambda!23369 (or (and start!110372 b_free!29319) b_lambda!23371)))

(check-sat (not b!1305944) (not b_next!29319) (not b!1305897) (not b!1305888) b_and!47539 (not b!1305949) (not bm!64613) (not b!1305947) (not d!142125) (not b!1305885) (not bm!64611) (not d!142123) (not b_lambda!23371) (not b!1305956) (not mapNonEmpty!54055) (not b!1305940) (not b!1305886) (not b!1305895) (not b!1305953) (not bm!64592) (not b!1305870) (not b!1305957) (not b!1305950) (not bm!64589) tp_is_empty!34959 (not b!1305871) (not bm!64612) (not bm!64608))
(check-sat b_and!47539 (not b_next!29319))
