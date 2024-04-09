; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!108924 () Bool)

(assert start!108924)

(declare-fun b_free!28401 () Bool)

(declare-fun b_next!28401 () Bool)

(assert (=> start!108924 (= b_free!28401 (not b_next!28401))))

(declare-fun tp!100319 () Bool)

(declare-fun b_and!46477 () Bool)

(assert (=> start!108924 (= tp!100319 b_and!46477)))

(declare-fun b!1285989 () Bool)

(declare-fun res!854384 () Bool)

(declare-fun e!734556 () Bool)

(assert (=> b!1285989 (=> (not res!854384) (not e!734556))))

(declare-datatypes ((V!50491 0))(
  ( (V!50492 (val!17095 Int)) )
))
(declare-fun minValue!1387 () V!50491)

(declare-fun zeroValue!1387 () V!50491)

(declare-fun from!2144 () (_ BitVec 32))

(declare-datatypes ((ValueCell!16122 0))(
  ( (ValueCellFull!16122 (v!19695 V!50491)) (EmptyCell!16122) )
))
(declare-datatypes ((array!85091 0))(
  ( (array!85092 (arr!41043 (Array (_ BitVec 32) ValueCell!16122)) (size!41594 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!85091)

(declare-fun k0!1205 () (_ BitVec 64))

(declare-fun extraKeys!1366 () (_ BitVec 32))

(declare-datatypes ((array!85093 0))(
  ( (array!85094 (arr!41044 (Array (_ BitVec 32) (_ BitVec 64))) (size!41595 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!85093)

(declare-fun defaultEntry!1448 () Int)

(declare-fun mask!2175 () (_ BitVec 32))

(declare-datatypes ((tuple2!22052 0))(
  ( (tuple2!22053 (_1!11036 (_ BitVec 64)) (_2!11036 V!50491)) )
))
(declare-datatypes ((List!29260 0))(
  ( (Nil!29257) (Cons!29256 (h!30465 tuple2!22052) (t!42811 List!29260)) )
))
(declare-datatypes ((ListLongMap!19721 0))(
  ( (ListLongMap!19722 (toList!9876 List!29260)) )
))
(declare-fun contains!7930 (ListLongMap!19721 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!4890 (array!85093 array!85091 (_ BitVec 32) (_ BitVec 32) V!50491 V!50491 (_ BitVec 32) Int) ListLongMap!19721)

(assert (=> b!1285989 (= res!854384 (contains!7930 (getCurrentListMap!4890 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) k0!1205))))

(declare-fun b!1285990 () Bool)

(declare-fun call!62804 () Bool)

(assert (=> b!1285990 call!62804))

(declare-datatypes ((Unit!42441 0))(
  ( (Unit!42442) )
))
(declare-fun lt!576965 () Unit!42441)

(declare-fun call!62805 () Unit!42441)

(assert (=> b!1285990 (= lt!576965 call!62805)))

(declare-fun lt!576963 () ListLongMap!19721)

(declare-fun call!62806 () ListLongMap!19721)

(assert (=> b!1285990 (= lt!576963 call!62806)))

(declare-fun e!734560 () Unit!42441)

(assert (=> b!1285990 (= e!734560 lt!576965)))

(declare-fun mapIsEmpty!52619 () Bool)

(declare-fun mapRes!52619 () Bool)

(assert (=> mapIsEmpty!52619 mapRes!52619))

(declare-fun bm!62801 () Bool)

(declare-fun call!62808 () Bool)

(assert (=> bm!62801 (= call!62804 call!62808)))

(declare-fun b!1285992 () Bool)

(declare-fun res!854382 () Bool)

(assert (=> b!1285992 (=> (not res!854382) (not e!734556))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1285992 (= res!854382 (validKeyInArray!0 (select (arr!41044 _keys!1741) from!2144)))))

(declare-fun b!1285993 () Bool)

(declare-fun res!854383 () Bool)

(assert (=> b!1285993 (=> (not res!854383) (not e!734556))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!85093 (_ BitVec 32)) Bool)

(assert (=> b!1285993 (= res!854383 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1741 mask!2175))))

(declare-fun bm!62802 () Bool)

(declare-fun call!62809 () ListLongMap!19721)

(declare-fun getCurrentListMapNoExtraKeys!5996 (array!85093 array!85091 (_ BitVec 32) (_ BitVec 32) V!50491 V!50491 (_ BitVec 32) Int) ListLongMap!19721)

(assert (=> bm!62802 (= call!62809 (getCurrentListMapNoExtraKeys!5996 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448))))

(declare-fun b!1285994 () Bool)

(declare-fun e!734562 () Unit!42441)

(assert (=> b!1285994 (= e!734562 e!734560)))

(declare-fun c!124061 () Bool)

(declare-fun lt!576964 () Bool)

(assert (=> b!1285994 (= c!124061 (and (not lt!576964) (= (bvand extraKeys!1366 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1285995 () Bool)

(declare-fun res!854388 () Bool)

(assert (=> b!1285995 (=> (not res!854388) (not e!734556))))

(declare-datatypes ((List!29261 0))(
  ( (Nil!29258) (Cons!29257 (h!30466 (_ BitVec 64)) (t!42812 List!29261)) )
))
(declare-fun arrayNoDuplicates!0 (array!85093 (_ BitVec 32) List!29261) Bool)

(assert (=> b!1285995 (= res!854388 (arrayNoDuplicates!0 _keys!1741 #b00000000000000000000000000000000 Nil!29258))))

(declare-fun b!1285996 () Bool)

(declare-fun c!124062 () Bool)

(assert (=> b!1285996 (= c!124062 (and (not (= (bvand extraKeys!1366 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!576964))))

(declare-fun e!734561 () Unit!42441)

(assert (=> b!1285996 (= e!734560 e!734561)))

(declare-fun lt!576960 () ListLongMap!19721)

(declare-fun lt!576959 () ListLongMap!19721)

(declare-fun call!62807 () Unit!42441)

(declare-fun c!124063 () Bool)

(declare-fun bm!62803 () Bool)

(declare-fun lemmaInListMapAfterAddingDiffThenInBefore!22 ((_ BitVec 64) (_ BitVec 64) V!50491 ListLongMap!19721) Unit!42441)

(assert (=> bm!62803 (= call!62807 (lemmaInListMapAfterAddingDiffThenInBefore!22 k0!1205 (ite (or c!124063 c!124061) #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000) (ite (or c!124063 c!124061) zeroValue!1387 minValue!1387) (ite c!124063 lt!576960 (ite c!124061 lt!576963 lt!576959))))))

(declare-fun b!1285997 () Bool)

(declare-fun e!734563 () Bool)

(declare-fun tp_is_empty!34041 () Bool)

(assert (=> b!1285997 (= e!734563 tp_is_empty!34041)))

(declare-fun b!1285998 () Bool)

(assert (=> b!1285998 (= e!734556 (not true))))

(assert (=> b!1285998 (not (contains!7930 (ListLongMap!19722 Nil!29257) k0!1205))))

(declare-fun lt!576958 () Unit!42441)

(declare-fun emptyContainsNothing!1 ((_ BitVec 64)) Unit!42441)

(assert (=> b!1285998 (= lt!576958 (emptyContainsNothing!1 k0!1205))))

(declare-fun lt!576956 () Unit!42441)

(assert (=> b!1285998 (= lt!576956 e!734562)))

(assert (=> b!1285998 (= c!124063 (and (not lt!576964) (not (= (bvand extraKeys!1366 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> b!1285998 (= lt!576964 (= (bvand extraKeys!1366 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(declare-fun b!1285999 () Bool)

(declare-fun res!854387 () Bool)

(assert (=> b!1285999 (=> (not res!854387) (not e!734556))))

(assert (=> b!1285999 (= res!854387 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!41595 _keys!1741))))))

(declare-fun b!1286000 () Bool)

(declare-fun lt!576966 () Unit!42441)

(assert (=> b!1286000 (= e!734562 lt!576966)))

(assert (=> b!1286000 (= lt!576960 call!62809)))

(declare-fun lt!576957 () ListLongMap!19721)

(declare-fun +!4284 (ListLongMap!19721 tuple2!22052) ListLongMap!19721)

(assert (=> b!1286000 (= lt!576957 (+!4284 lt!576960 (tuple2!22053 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387)))))

(declare-fun lt!576961 () Unit!42441)

(assert (=> b!1286000 (= lt!576961 (lemmaInListMapAfterAddingDiffThenInBefore!22 k0!1205 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387 lt!576957))))

(assert (=> b!1286000 call!62808))

(assert (=> b!1286000 (= lt!576966 call!62807)))

(assert (=> b!1286000 (contains!7930 lt!576960 k0!1205)))

(declare-fun mapNonEmpty!52619 () Bool)

(declare-fun tp!100320 () Bool)

(assert (=> mapNonEmpty!52619 (= mapRes!52619 (and tp!100320 e!734563))))

(declare-fun mapValue!52619 () ValueCell!16122)

(declare-fun mapKey!52619 () (_ BitVec 32))

(declare-fun mapRest!52619 () (Array (_ BitVec 32) ValueCell!16122))

(assert (=> mapNonEmpty!52619 (= (arr!41043 _values!1445) (store mapRest!52619 mapKey!52619 mapValue!52619))))

(declare-fun bm!62804 () Bool)

(assert (=> bm!62804 (= call!62806 call!62809)))

(declare-fun b!1286001 () Bool)

(declare-fun res!854381 () Bool)

(assert (=> b!1286001 (=> (not res!854381) (not e!734556))))

(assert (=> b!1286001 (= res!854381 (and (not (= k0!1205 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1205 #b1000000000000000000000000000000000000000000000000000000000000000)) (bvsge (bvadd #b00000000000000000000000000000001 from!2144) (size!41595 _keys!1741))))))

(declare-fun b!1286002 () Bool)

(declare-fun Unit!42443 () Unit!42441)

(assert (=> b!1286002 (= e!734561 Unit!42443)))

(declare-fun bm!62805 () Bool)

(assert (=> bm!62805 (= call!62805 call!62807)))

(declare-fun b!1285991 () Bool)

(declare-fun res!854386 () Bool)

(assert (=> b!1285991 (=> (not res!854386) (not e!734556))))

(assert (=> b!1285991 (= res!854386 (and (= (size!41594 _values!1445) (bvadd #b00000000000000000000000000000001 mask!2175)) (= (size!41595 _keys!1741) (size!41594 _values!1445)) (bvsge mask!2175 #b00000000000000000000000000000000) (bvsge extraKeys!1366 #b00000000000000000000000000000000) (bvsle extraKeys!1366 #b00000000000000000000000000000011)))))

(declare-fun res!854385 () Bool)

(assert (=> start!108924 (=> (not res!854385) (not e!734556))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!108924 (= res!854385 (validMask!0 mask!2175))))

(assert (=> start!108924 e!734556))

(assert (=> start!108924 tp_is_empty!34041))

(assert (=> start!108924 true))

(declare-fun e!734557 () Bool)

(declare-fun array_inv!31099 (array!85091) Bool)

(assert (=> start!108924 (and (array_inv!31099 _values!1445) e!734557)))

(declare-fun array_inv!31100 (array!85093) Bool)

(assert (=> start!108924 (array_inv!31100 _keys!1741)))

(assert (=> start!108924 tp!100319))

(declare-fun b!1286003 () Bool)

(declare-fun lt!576962 () Unit!42441)

(assert (=> b!1286003 (= e!734561 lt!576962)))

(assert (=> b!1286003 (= lt!576959 call!62806)))

(assert (=> b!1286003 (= lt!576962 call!62805)))

(assert (=> b!1286003 call!62804))

(declare-fun bm!62806 () Bool)

(assert (=> bm!62806 (= call!62808 (contains!7930 (ite c!124063 lt!576957 (ite c!124061 lt!576963 lt!576959)) k0!1205))))

(declare-fun b!1286004 () Bool)

(declare-fun e!734559 () Bool)

(assert (=> b!1286004 (= e!734557 (and e!734559 mapRes!52619))))

(declare-fun condMapEmpty!52619 () Bool)

(declare-fun mapDefault!52619 () ValueCell!16122)

(assert (=> b!1286004 (= condMapEmpty!52619 (= (arr!41043 _values!1445) ((as const (Array (_ BitVec 32) ValueCell!16122)) mapDefault!52619)))))

(declare-fun b!1286005 () Bool)

(assert (=> b!1286005 (= e!734559 tp_is_empty!34041)))

(assert (= (and start!108924 res!854385) b!1285991))

(assert (= (and b!1285991 res!854386) b!1285993))

(assert (= (and b!1285993 res!854383) b!1285995))

(assert (= (and b!1285995 res!854388) b!1285999))

(assert (= (and b!1285999 res!854387) b!1285989))

(assert (= (and b!1285989 res!854384) b!1286001))

(assert (= (and b!1286001 res!854381) b!1285992))

(assert (= (and b!1285992 res!854382) b!1285998))

(assert (= (and b!1285998 c!124063) b!1286000))

(assert (= (and b!1285998 (not c!124063)) b!1285994))

(assert (= (and b!1285994 c!124061) b!1285990))

(assert (= (and b!1285994 (not c!124061)) b!1285996))

(assert (= (and b!1285996 c!124062) b!1286003))

(assert (= (and b!1285996 (not c!124062)) b!1286002))

(assert (= (or b!1285990 b!1286003) bm!62804))

(assert (= (or b!1285990 b!1286003) bm!62805))

(assert (= (or b!1285990 b!1286003) bm!62801))

(assert (= (or b!1286000 bm!62804) bm!62802))

(assert (= (or b!1286000 bm!62805) bm!62803))

(assert (= (or b!1286000 bm!62801) bm!62806))

(assert (= (and b!1286004 condMapEmpty!52619) mapIsEmpty!52619))

(assert (= (and b!1286004 (not condMapEmpty!52619)) mapNonEmpty!52619))

(get-info :version)

(assert (= (and mapNonEmpty!52619 ((_ is ValueCellFull!16122) mapValue!52619)) b!1285997))

(assert (= (and b!1286004 ((_ is ValueCellFull!16122) mapDefault!52619)) b!1286005))

(assert (= start!108924 b!1286004))

(declare-fun m!1179171 () Bool)

(assert (=> b!1285993 m!1179171))

(declare-fun m!1179173 () Bool)

(assert (=> b!1285998 m!1179173))

(declare-fun m!1179175 () Bool)

(assert (=> b!1285998 m!1179175))

(declare-fun m!1179177 () Bool)

(assert (=> b!1285992 m!1179177))

(assert (=> b!1285992 m!1179177))

(declare-fun m!1179179 () Bool)

(assert (=> b!1285992 m!1179179))

(declare-fun m!1179181 () Bool)

(assert (=> b!1286000 m!1179181))

(declare-fun m!1179183 () Bool)

(assert (=> b!1286000 m!1179183))

(declare-fun m!1179185 () Bool)

(assert (=> b!1286000 m!1179185))

(declare-fun m!1179187 () Bool)

(assert (=> bm!62803 m!1179187))

(declare-fun m!1179189 () Bool)

(assert (=> mapNonEmpty!52619 m!1179189))

(declare-fun m!1179191 () Bool)

(assert (=> start!108924 m!1179191))

(declare-fun m!1179193 () Bool)

(assert (=> start!108924 m!1179193))

(declare-fun m!1179195 () Bool)

(assert (=> start!108924 m!1179195))

(declare-fun m!1179197 () Bool)

(assert (=> b!1285995 m!1179197))

(declare-fun m!1179199 () Bool)

(assert (=> bm!62802 m!1179199))

(declare-fun m!1179201 () Bool)

(assert (=> b!1285989 m!1179201))

(assert (=> b!1285989 m!1179201))

(declare-fun m!1179203 () Bool)

(assert (=> b!1285989 m!1179203))

(declare-fun m!1179205 () Bool)

(assert (=> bm!62806 m!1179205))

(check-sat (not b!1285995) (not b_next!28401) (not b!1285989) tp_is_empty!34041 (not b!1285998) (not bm!62802) (not start!108924) (not bm!62806) (not bm!62803) b_and!46477 (not mapNonEmpty!52619) (not b!1285992) (not b!1286000) (not b!1285993))
(check-sat b_and!46477 (not b_next!28401))
