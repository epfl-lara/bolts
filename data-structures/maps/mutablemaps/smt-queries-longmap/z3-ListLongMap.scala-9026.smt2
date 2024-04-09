; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!108954 () Bool)

(assert start!108954)

(declare-fun b_free!28431 () Bool)

(declare-fun b_next!28431 () Bool)

(assert (=> start!108954 (= b_free!28431 (not b_next!28431))))

(declare-fun tp!100409 () Bool)

(declare-fun b_and!46525 () Bool)

(assert (=> start!108954 (= tp!100409 b_and!46525)))

(declare-fun b!1286799 () Bool)

(declare-fun res!854769 () Bool)

(declare-fun e!734945 () Bool)

(assert (=> b!1286799 (=> (not res!854769) (not e!734945))))

(declare-fun from!2144 () (_ BitVec 32))

(declare-datatypes ((array!85149 0))(
  ( (array!85150 (arr!41072 (Array (_ BitVec 32) (_ BitVec 64))) (size!41623 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!85149)

(assert (=> b!1286799 (= res!854769 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!41623 _keys!1741))))))

(declare-datatypes ((V!50531 0))(
  ( (V!50532 (val!17110 Int)) )
))
(declare-datatypes ((tuple2!22082 0))(
  ( (tuple2!22083 (_1!11051 (_ BitVec 64)) (_2!11051 V!50531)) )
))
(declare-datatypes ((List!29284 0))(
  ( (Nil!29281) (Cons!29280 (h!30489 tuple2!22082) (t!42853 List!29284)) )
))
(declare-datatypes ((ListLongMap!19751 0))(
  ( (ListLongMap!19752 (toList!9891 List!29284)) )
))
(declare-fun lt!577513 () ListLongMap!19751)

(declare-fun lt!577507 () ListLongMap!19751)

(declare-fun c!124198 () Bool)

(declare-fun call!63079 () Bool)

(declare-fun k0!1205 () (_ BitVec 64))

(declare-fun bm!63071 () Bool)

(declare-fun c!124197 () Bool)

(declare-fun lt!577508 () ListLongMap!19751)

(declare-fun contains!7945 (ListLongMap!19751 (_ BitVec 64)) Bool)

(assert (=> bm!63071 (= call!63079 (contains!7945 (ite c!124197 lt!577513 (ite c!124198 lt!577507 lt!577508)) k0!1205))))

(declare-fun minValue!1387 () V!50531)

(declare-fun zeroValue!1387 () V!50531)

(declare-datatypes ((ValueCell!16137 0))(
  ( (ValueCellFull!16137 (v!19710 V!50531)) (EmptyCell!16137) )
))
(declare-datatypes ((array!85151 0))(
  ( (array!85152 (arr!41073 (Array (_ BitVec 32) ValueCell!16137)) (size!41624 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!85151)

(declare-fun defaultEntry!1448 () Int)

(declare-fun mask!2175 () (_ BitVec 32))

(declare-fun bm!63072 () Bool)

(declare-fun call!63077 () ListLongMap!19751)

(declare-fun extraKeys!1366 () (_ BitVec 32))

(declare-fun getCurrentListMapNoExtraKeys!6006 (array!85149 array!85151 (_ BitVec 32) (_ BitVec 32) V!50531 V!50531 (_ BitVec 32) Int) ListLongMap!19751)

(assert (=> bm!63072 (= call!63077 (getCurrentListMapNoExtraKeys!6006 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448))))

(declare-fun b!1286800 () Bool)

(declare-fun c!124196 () Bool)

(declare-fun lt!577515 () Bool)

(assert (=> b!1286800 (= c!124196 (and (not (= (bvand extraKeys!1366 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!577515))))

(declare-datatypes ((Unit!42479 0))(
  ( (Unit!42480) )
))
(declare-fun e!734946 () Unit!42479)

(declare-fun e!734949 () Unit!42479)

(assert (=> b!1286800 (= e!734946 e!734949)))

(declare-fun b!1286801 () Bool)

(declare-fun res!854774 () Bool)

(assert (=> b!1286801 (=> (not res!854774) (not e!734945))))

(declare-fun getCurrentListMap!4900 (array!85149 array!85151 (_ BitVec 32) (_ BitVec 32) V!50531 V!50531 (_ BitVec 32) Int) ListLongMap!19751)

(assert (=> b!1286801 (= res!854774 (contains!7945 (getCurrentListMap!4900 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) k0!1205))))

(declare-fun b!1286802 () Bool)

(declare-fun res!854772 () Bool)

(assert (=> b!1286802 (=> (not res!854772) (not e!734945))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!85149 (_ BitVec 32)) Bool)

(assert (=> b!1286802 (= res!854772 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1741 mask!2175))))

(declare-fun b!1286803 () Bool)

(declare-fun res!854768 () Bool)

(assert (=> b!1286803 (=> (not res!854768) (not e!734945))))

(assert (=> b!1286803 (= res!854768 (and (not (= k0!1205 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1205 #b1000000000000000000000000000000000000000000000000000000000000000)) (bvsge (bvadd #b00000000000000000000000000000001 from!2144) (size!41623 _keys!1741))))))

(declare-fun mapNonEmpty!52664 () Bool)

(declare-fun mapRes!52664 () Bool)

(declare-fun tp!100410 () Bool)

(declare-fun e!734950 () Bool)

(assert (=> mapNonEmpty!52664 (= mapRes!52664 (and tp!100410 e!734950))))

(declare-fun mapRest!52664 () (Array (_ BitVec 32) ValueCell!16137))

(declare-fun mapKey!52664 () (_ BitVec 32))

(declare-fun mapValue!52664 () ValueCell!16137)

(assert (=> mapNonEmpty!52664 (= (arr!41073 _values!1445) (store mapRest!52664 mapKey!52664 mapValue!52664))))

(declare-fun b!1286804 () Bool)

(declare-fun res!854771 () Bool)

(assert (=> b!1286804 (=> (not res!854771) (not e!734945))))

(declare-datatypes ((List!29285 0))(
  ( (Nil!29282) (Cons!29281 (h!30490 (_ BitVec 64)) (t!42854 List!29285)) )
))
(declare-fun arrayNoDuplicates!0 (array!85149 (_ BitVec 32) List!29285) Bool)

(assert (=> b!1286804 (= res!854771 (arrayNoDuplicates!0 _keys!1741 #b00000000000000000000000000000000 Nil!29282))))

(declare-fun lt!577509 () ListLongMap!19751)

(declare-fun call!63078 () Unit!42479)

(declare-fun bm!63073 () Bool)

(declare-fun lemmaInListMapAfterAddingDiffThenInBefore!34 ((_ BitVec 64) (_ BitVec 64) V!50531 ListLongMap!19751) Unit!42479)

(assert (=> bm!63073 (= call!63078 (lemmaInListMapAfterAddingDiffThenInBefore!34 k0!1205 (ite c!124197 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!124198 #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000)) (ite c!124197 minValue!1387 (ite c!124198 zeroValue!1387 minValue!1387)) (ite c!124197 lt!577509 (ite c!124198 lt!577507 lt!577508))))))

(declare-fun b!1286805 () Bool)

(declare-fun e!734948 () Unit!42479)

(declare-fun lt!577510 () Unit!42479)

(assert (=> b!1286805 (= e!734948 lt!577510)))

(assert (=> b!1286805 (= lt!577513 call!63077)))

(declare-fun +!4294 (ListLongMap!19751 tuple2!22082) ListLongMap!19751)

(assert (=> b!1286805 (= lt!577509 (+!4294 lt!577513 (tuple2!22083 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387)))))

(declare-fun lt!577505 () Unit!42479)

(assert (=> b!1286805 (= lt!577505 call!63078)))

(assert (=> b!1286805 (contains!7945 lt!577509 k0!1205)))

(assert (=> b!1286805 (= lt!577510 (lemmaInListMapAfterAddingDiffThenInBefore!34 k0!1205 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387 lt!577513))))

(assert (=> b!1286805 call!63079))

(declare-fun b!1286806 () Bool)

(declare-fun call!63074 () Bool)

(assert (=> b!1286806 call!63074))

(declare-fun lt!577512 () Unit!42479)

(declare-fun call!63076 () Unit!42479)

(assert (=> b!1286806 (= lt!577512 call!63076)))

(declare-fun call!63075 () ListLongMap!19751)

(assert (=> b!1286806 (= lt!577507 call!63075)))

(assert (=> b!1286806 (= e!734946 lt!577512)))

(declare-fun res!854773 () Bool)

(assert (=> start!108954 (=> (not res!854773) (not e!734945))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!108954 (= res!854773 (validMask!0 mask!2175))))

(assert (=> start!108954 e!734945))

(declare-fun tp_is_empty!34071 () Bool)

(assert (=> start!108954 tp_is_empty!34071))

(assert (=> start!108954 true))

(declare-fun e!734947 () Bool)

(declare-fun array_inv!31121 (array!85151) Bool)

(assert (=> start!108954 (and (array_inv!31121 _values!1445) e!734947)))

(declare-fun array_inv!31122 (array!85149) Bool)

(assert (=> start!108954 (array_inv!31122 _keys!1741)))

(assert (=> start!108954 tp!100409))

(declare-fun b!1286807 () Bool)

(assert (=> b!1286807 (= e!734948 e!734946)))

(assert (=> b!1286807 (= c!124198 (and (not lt!577515) (= (bvand extraKeys!1366 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun bm!63074 () Bool)

(assert (=> bm!63074 (= call!63074 call!63079)))

(declare-fun bm!63075 () Bool)

(assert (=> bm!63075 (= call!63075 call!63077)))

(declare-fun b!1286808 () Bool)

(declare-fun e!734944 () Bool)

(assert (=> b!1286808 (= e!734944 tp_is_empty!34071)))

(declare-fun b!1286809 () Bool)

(declare-fun res!854770 () Bool)

(assert (=> b!1286809 (=> (not res!854770) (not e!734945))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1286809 (= res!854770 (validKeyInArray!0 (select (arr!41072 _keys!1741) from!2144)))))

(declare-fun b!1286810 () Bool)

(assert (=> b!1286810 (= e!734945 (not true))))

(assert (=> b!1286810 (not (contains!7945 (ListLongMap!19752 Nil!29281) k0!1205))))

(declare-fun lt!577511 () Unit!42479)

(declare-fun emptyContainsNothing!13 ((_ BitVec 64)) Unit!42479)

(assert (=> b!1286810 (= lt!577511 (emptyContainsNothing!13 k0!1205))))

(declare-fun lt!577506 () Unit!42479)

(assert (=> b!1286810 (= lt!577506 e!734948)))

(assert (=> b!1286810 (= c!124197 (and (not lt!577515) (not (= (bvand extraKeys!1366 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> b!1286810 (= lt!577515 (= (bvand extraKeys!1366 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(declare-fun b!1286811 () Bool)

(declare-fun res!854775 () Bool)

(assert (=> b!1286811 (=> (not res!854775) (not e!734945))))

(assert (=> b!1286811 (= res!854775 (and (= (size!41624 _values!1445) (bvadd #b00000000000000000000000000000001 mask!2175)) (= (size!41623 _keys!1741) (size!41624 _values!1445)) (bvsge mask!2175 #b00000000000000000000000000000000) (bvsge extraKeys!1366 #b00000000000000000000000000000000) (bvsle extraKeys!1366 #b00000000000000000000000000000011)))))

(declare-fun b!1286812 () Bool)

(assert (=> b!1286812 (= e!734947 (and e!734944 mapRes!52664))))

(declare-fun condMapEmpty!52664 () Bool)

(declare-fun mapDefault!52664 () ValueCell!16137)

(assert (=> b!1286812 (= condMapEmpty!52664 (= (arr!41073 _values!1445) ((as const (Array (_ BitVec 32) ValueCell!16137)) mapDefault!52664)))))

(declare-fun bm!63076 () Bool)

(assert (=> bm!63076 (= call!63076 call!63078)))

(declare-fun b!1286813 () Bool)

(assert (=> b!1286813 (= e!734950 tp_is_empty!34071)))

(declare-fun b!1286814 () Bool)

(declare-fun Unit!42481 () Unit!42479)

(assert (=> b!1286814 (= e!734949 Unit!42481)))

(declare-fun mapIsEmpty!52664 () Bool)

(assert (=> mapIsEmpty!52664 mapRes!52664))

(declare-fun b!1286815 () Bool)

(declare-fun lt!577514 () Unit!42479)

(assert (=> b!1286815 (= e!734949 lt!577514)))

(assert (=> b!1286815 (= lt!577508 call!63075)))

(assert (=> b!1286815 (= lt!577514 call!63076)))

(assert (=> b!1286815 call!63074))

(assert (= (and start!108954 res!854773) b!1286811))

(assert (= (and b!1286811 res!854775) b!1286802))

(assert (= (and b!1286802 res!854772) b!1286804))

(assert (= (and b!1286804 res!854771) b!1286799))

(assert (= (and b!1286799 res!854769) b!1286801))

(assert (= (and b!1286801 res!854774) b!1286803))

(assert (= (and b!1286803 res!854768) b!1286809))

(assert (= (and b!1286809 res!854770) b!1286810))

(assert (= (and b!1286810 c!124197) b!1286805))

(assert (= (and b!1286810 (not c!124197)) b!1286807))

(assert (= (and b!1286807 c!124198) b!1286806))

(assert (= (and b!1286807 (not c!124198)) b!1286800))

(assert (= (and b!1286800 c!124196) b!1286815))

(assert (= (and b!1286800 (not c!124196)) b!1286814))

(assert (= (or b!1286806 b!1286815) bm!63075))

(assert (= (or b!1286806 b!1286815) bm!63076))

(assert (= (or b!1286806 b!1286815) bm!63074))

(assert (= (or b!1286805 bm!63075) bm!63072))

(assert (= (or b!1286805 bm!63076) bm!63073))

(assert (= (or b!1286805 bm!63074) bm!63071))

(assert (= (and b!1286812 condMapEmpty!52664) mapIsEmpty!52664))

(assert (= (and b!1286812 (not condMapEmpty!52664)) mapNonEmpty!52664))

(get-info :version)

(assert (= (and mapNonEmpty!52664 ((_ is ValueCellFull!16137) mapValue!52664)) b!1286813))

(assert (= (and b!1286812 ((_ is ValueCellFull!16137) mapDefault!52664)) b!1286808))

(assert (= start!108954 b!1286812))

(declare-fun m!1179819 () Bool)

(assert (=> bm!63071 m!1179819))

(declare-fun m!1179821 () Bool)

(assert (=> bm!63073 m!1179821))

(declare-fun m!1179823 () Bool)

(assert (=> b!1286810 m!1179823))

(declare-fun m!1179825 () Bool)

(assert (=> b!1286810 m!1179825))

(declare-fun m!1179827 () Bool)

(assert (=> start!108954 m!1179827))

(declare-fun m!1179829 () Bool)

(assert (=> start!108954 m!1179829))

(declare-fun m!1179831 () Bool)

(assert (=> start!108954 m!1179831))

(declare-fun m!1179833 () Bool)

(assert (=> b!1286804 m!1179833))

(declare-fun m!1179835 () Bool)

(assert (=> mapNonEmpty!52664 m!1179835))

(declare-fun m!1179837 () Bool)

(assert (=> b!1286805 m!1179837))

(declare-fun m!1179839 () Bool)

(assert (=> b!1286805 m!1179839))

(declare-fun m!1179841 () Bool)

(assert (=> b!1286805 m!1179841))

(declare-fun m!1179843 () Bool)

(assert (=> b!1286801 m!1179843))

(assert (=> b!1286801 m!1179843))

(declare-fun m!1179845 () Bool)

(assert (=> b!1286801 m!1179845))

(declare-fun m!1179847 () Bool)

(assert (=> b!1286809 m!1179847))

(assert (=> b!1286809 m!1179847))

(declare-fun m!1179849 () Bool)

(assert (=> b!1286809 m!1179849))

(declare-fun m!1179851 () Bool)

(assert (=> bm!63072 m!1179851))

(declare-fun m!1179853 () Bool)

(assert (=> b!1286802 m!1179853))

(check-sat (not b!1286802) (not b_next!28431) b_and!46525 (not b!1286801) (not start!108954) (not bm!63072) (not bm!63073) (not mapNonEmpty!52664) (not b!1286805) (not bm!63071) (not b!1286804) tp_is_empty!34071 (not b!1286810) (not b!1286809))
(check-sat b_and!46525 (not b_next!28431))
