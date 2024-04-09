; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!108926 () Bool)

(assert start!108926)

(declare-fun b_free!28403 () Bool)

(declare-fun b_next!28403 () Bool)

(assert (=> start!108926 (= b_free!28403 (not b_next!28403))))

(declare-fun tp!100325 () Bool)

(declare-fun b_and!46479 () Bool)

(assert (=> start!108926 (= tp!100325 b_and!46479)))

(declare-fun b!1286040 () Bool)

(declare-fun res!854412 () Bool)

(declare-fun e!734585 () Bool)

(assert (=> b!1286040 (=> (not res!854412) (not e!734585))))

(declare-fun from!2144 () (_ BitVec 32))

(declare-fun k!1205 () (_ BitVec 64))

(declare-datatypes ((array!85095 0))(
  ( (array!85096 (arr!41045 (Array (_ BitVec 32) (_ BitVec 64))) (size!41596 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!85095)

(assert (=> b!1286040 (= res!854412 (and (not (= k!1205 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1205 #b1000000000000000000000000000000000000000000000000000000000000000)) (bvsge (bvadd #b00000000000000000000000000000001 from!2144) (size!41596 _keys!1741))))))

(declare-fun b!1286041 () Bool)

(declare-fun call!62824 () Bool)

(assert (=> b!1286041 call!62824))

(declare-datatypes ((Unit!42444 0))(
  ( (Unit!42445) )
))
(declare-fun lt!576989 () Unit!42444)

(declare-fun call!62826 () Unit!42444)

(assert (=> b!1286041 (= lt!576989 call!62826)))

(declare-datatypes ((V!50493 0))(
  ( (V!50494 (val!17096 Int)) )
))
(declare-datatypes ((tuple2!22054 0))(
  ( (tuple2!22055 (_1!11037 (_ BitVec 64)) (_2!11037 V!50493)) )
))
(declare-datatypes ((List!29262 0))(
  ( (Nil!29259) (Cons!29258 (h!30467 tuple2!22054) (t!42813 List!29262)) )
))
(declare-datatypes ((ListLongMap!19723 0))(
  ( (ListLongMap!19724 (toList!9877 List!29262)) )
))
(declare-fun lt!576996 () ListLongMap!19723)

(declare-fun call!62825 () ListLongMap!19723)

(assert (=> b!1286041 (= lt!576996 call!62825)))

(declare-fun e!734583 () Unit!42444)

(assert (=> b!1286041 (= e!734583 lt!576989)))

(declare-fun b!1286042 () Bool)

(declare-fun c!124072 () Bool)

(declare-fun extraKeys!1366 () (_ BitVec 32))

(declare-fun lt!576995 () Bool)

(assert (=> b!1286042 (= c!124072 (and (not (= (bvand extraKeys!1366 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!576995))))

(declare-fun e!734580 () Unit!42444)

(assert (=> b!1286042 (= e!734583 e!734580)))

(declare-fun mapNonEmpty!52622 () Bool)

(declare-fun mapRes!52622 () Bool)

(declare-fun tp!100326 () Bool)

(declare-fun e!734581 () Bool)

(assert (=> mapNonEmpty!52622 (= mapRes!52622 (and tp!100326 e!734581))))

(declare-datatypes ((ValueCell!16123 0))(
  ( (ValueCellFull!16123 (v!19696 V!50493)) (EmptyCell!16123) )
))
(declare-datatypes ((array!85097 0))(
  ( (array!85098 (arr!41046 (Array (_ BitVec 32) ValueCell!16123)) (size!41597 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!85097)

(declare-fun mapValue!52622 () ValueCell!16123)

(declare-fun mapRest!52622 () (Array (_ BitVec 32) ValueCell!16123))

(declare-fun mapKey!52622 () (_ BitVec 32))

(assert (=> mapNonEmpty!52622 (= (arr!41046 _values!1445) (store mapRest!52622 mapKey!52622 mapValue!52622))))

(declare-fun bm!62819 () Bool)

(declare-fun call!62827 () Bool)

(assert (=> bm!62819 (= call!62824 call!62827)))

(declare-fun b!1286043 () Bool)

(declare-fun res!854410 () Bool)

(assert (=> b!1286043 (=> (not res!854410) (not e!734585))))

(declare-fun mask!2175 () (_ BitVec 32))

(assert (=> b!1286043 (= res!854410 (and (= (size!41597 _values!1445) (bvadd #b00000000000000000000000000000001 mask!2175)) (= (size!41596 _keys!1741) (size!41597 _values!1445)) (bvsge mask!2175 #b00000000000000000000000000000000) (bvsge extraKeys!1366 #b00000000000000000000000000000000) (bvsle extraKeys!1366 #b00000000000000000000000000000011)))))

(declare-fun bm!62820 () Bool)

(declare-fun call!62822 () ListLongMap!19723)

(assert (=> bm!62820 (= call!62825 call!62822)))

(declare-fun b!1286044 () Bool)

(declare-fun e!734587 () Bool)

(declare-fun tp_is_empty!34043 () Bool)

(assert (=> b!1286044 (= e!734587 tp_is_empty!34043)))

(declare-fun b!1286045 () Bool)

(assert (=> b!1286045 (= e!734585 (not true))))

(declare-fun contains!7931 (ListLongMap!19723 (_ BitVec 64)) Bool)

(assert (=> b!1286045 (not (contains!7931 (ListLongMap!19724 Nil!29259) k!1205))))

(declare-fun lt!576994 () Unit!42444)

(declare-fun emptyContainsNothing!2 ((_ BitVec 64)) Unit!42444)

(assert (=> b!1286045 (= lt!576994 (emptyContainsNothing!2 k!1205))))

(declare-fun lt!576992 () Unit!42444)

(declare-fun e!734586 () Unit!42444)

(assert (=> b!1286045 (= lt!576992 e!734586)))

(declare-fun c!124071 () Bool)

(assert (=> b!1286045 (= c!124071 (and (not lt!576995) (not (= (bvand extraKeys!1366 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> b!1286045 (= lt!576995 (= (bvand extraKeys!1366 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(declare-fun b!1286046 () Bool)

(declare-fun Unit!42446 () Unit!42444)

(assert (=> b!1286046 (= e!734580 Unit!42446)))

(declare-fun lt!576993 () ListLongMap!19723)

(declare-fun lt!576998 () ListLongMap!19723)

(declare-fun bm!62822 () Bool)

(declare-fun c!124070 () Bool)

(assert (=> bm!62822 (= call!62827 (contains!7931 (ite c!124071 lt!576998 (ite c!124070 lt!576996 lt!576993)) k!1205))))

(declare-fun b!1286047 () Bool)

(declare-fun res!854406 () Bool)

(assert (=> b!1286047 (=> (not res!854406) (not e!734585))))

(assert (=> b!1286047 (= res!854406 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!41596 _keys!1741))))))

(declare-fun mapIsEmpty!52622 () Bool)

(assert (=> mapIsEmpty!52622 mapRes!52622))

(declare-fun bm!62823 () Bool)

(declare-fun call!62823 () Unit!42444)

(assert (=> bm!62823 (= call!62826 call!62823)))

(declare-fun b!1286048 () Bool)

(assert (=> b!1286048 (= e!734581 tp_is_empty!34043)))

(declare-fun b!1286049 () Bool)

(declare-fun lt!576991 () Unit!42444)

(assert (=> b!1286049 (= e!734580 lt!576991)))

(assert (=> b!1286049 (= lt!576993 call!62825)))

(assert (=> b!1286049 (= lt!576991 call!62826)))

(assert (=> b!1286049 call!62824))

(declare-fun b!1286050 () Bool)

(declare-fun res!854409 () Bool)

(assert (=> b!1286050 (=> (not res!854409) (not e!734585))))

(declare-fun minValue!1387 () V!50493)

(declare-fun zeroValue!1387 () V!50493)

(declare-fun defaultEntry!1448 () Int)

(declare-fun getCurrentListMap!4891 (array!85095 array!85097 (_ BitVec 32) (_ BitVec 32) V!50493 V!50493 (_ BitVec 32) Int) ListLongMap!19723)

(assert (=> b!1286050 (= res!854409 (contains!7931 (getCurrentListMap!4891 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) k!1205))))

(declare-fun bm!62821 () Bool)

(declare-fun lt!576997 () ListLongMap!19723)

(declare-fun lemmaInListMapAfterAddingDiffThenInBefore!23 ((_ BitVec 64) (_ BitVec 64) V!50493 ListLongMap!19723) Unit!42444)

(assert (=> bm!62821 (= call!62823 (lemmaInListMapAfterAddingDiffThenInBefore!23 k!1205 (ite (or c!124071 c!124070) #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000) (ite (or c!124071 c!124070) zeroValue!1387 minValue!1387) (ite c!124071 lt!576997 (ite c!124070 lt!576996 lt!576993))))))

(declare-fun res!854408 () Bool)

(assert (=> start!108926 (=> (not res!854408) (not e!734585))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!108926 (= res!854408 (validMask!0 mask!2175))))

(assert (=> start!108926 e!734585))

(assert (=> start!108926 tp_is_empty!34043))

(assert (=> start!108926 true))

(declare-fun e!734582 () Bool)

(declare-fun array_inv!31101 (array!85097) Bool)

(assert (=> start!108926 (and (array_inv!31101 _values!1445) e!734582)))

(declare-fun array_inv!31102 (array!85095) Bool)

(assert (=> start!108926 (array_inv!31102 _keys!1741)))

(assert (=> start!108926 tp!100325))

(declare-fun bm!62824 () Bool)

(declare-fun getCurrentListMapNoExtraKeys!5997 (array!85095 array!85097 (_ BitVec 32) (_ BitVec 32) V!50493 V!50493 (_ BitVec 32) Int) ListLongMap!19723)

(assert (=> bm!62824 (= call!62822 (getCurrentListMapNoExtraKeys!5997 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448))))

(declare-fun b!1286051 () Bool)

(declare-fun res!854407 () Bool)

(assert (=> b!1286051 (=> (not res!854407) (not e!734585))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1286051 (= res!854407 (validKeyInArray!0 (select (arr!41045 _keys!1741) from!2144)))))

(declare-fun b!1286052 () Bool)

(assert (=> b!1286052 (= e!734586 e!734583)))

(assert (=> b!1286052 (= c!124070 (and (not lt!576995) (= (bvand extraKeys!1366 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1286053 () Bool)

(declare-fun res!854411 () Bool)

(assert (=> b!1286053 (=> (not res!854411) (not e!734585))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!85095 (_ BitVec 32)) Bool)

(assert (=> b!1286053 (= res!854411 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1741 mask!2175))))

(declare-fun b!1286054 () Bool)

(declare-fun res!854405 () Bool)

(assert (=> b!1286054 (=> (not res!854405) (not e!734585))))

(declare-datatypes ((List!29263 0))(
  ( (Nil!29260) (Cons!29259 (h!30468 (_ BitVec 64)) (t!42814 List!29263)) )
))
(declare-fun arrayNoDuplicates!0 (array!85095 (_ BitVec 32) List!29263) Bool)

(assert (=> b!1286054 (= res!854405 (arrayNoDuplicates!0 _keys!1741 #b00000000000000000000000000000000 Nil!29260))))

(declare-fun b!1286055 () Bool)

(declare-fun lt!576990 () Unit!42444)

(assert (=> b!1286055 (= e!734586 lt!576990)))

(assert (=> b!1286055 (= lt!576997 call!62822)))

(declare-fun +!4285 (ListLongMap!19723 tuple2!22054) ListLongMap!19723)

(assert (=> b!1286055 (= lt!576998 (+!4285 lt!576997 (tuple2!22055 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387)))))

(declare-fun lt!576999 () Unit!42444)

(assert (=> b!1286055 (= lt!576999 (lemmaInListMapAfterAddingDiffThenInBefore!23 k!1205 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387 lt!576998))))

(assert (=> b!1286055 call!62827))

(assert (=> b!1286055 (= lt!576990 call!62823)))

(assert (=> b!1286055 (contains!7931 lt!576997 k!1205)))

(declare-fun b!1286056 () Bool)

(assert (=> b!1286056 (= e!734582 (and e!734587 mapRes!52622))))

(declare-fun condMapEmpty!52622 () Bool)

(declare-fun mapDefault!52622 () ValueCell!16123)

