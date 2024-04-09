; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!108928 () Bool)

(assert start!108928)

(declare-fun b_free!28405 () Bool)

(declare-fun b_next!28405 () Bool)

(assert (=> start!108928 (= b_free!28405 (not b_next!28405))))

(declare-fun tp!100332 () Bool)

(declare-fun b_and!46481 () Bool)

(assert (=> start!108928 (= tp!100332 b_and!46481)))

(declare-fun b!1286093 () Bool)

(declare-fun res!854435 () Bool)

(declare-fun e!734610 () Bool)

(assert (=> b!1286093 (=> (not res!854435) (not e!734610))))

(declare-datatypes ((array!85099 0))(
  ( (array!85100 (arr!41047 (Array (_ BitVec 32) (_ BitVec 64))) (size!41598 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!85099)

(declare-fun from!2144 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1286093 (= res!854435 (validKeyInArray!0 (select (arr!41047 _keys!1741) from!2144)))))

(declare-fun mapNonEmpty!52625 () Bool)

(declare-fun mapRes!52625 () Bool)

(declare-fun tp!100331 () Bool)

(declare-fun e!734614 () Bool)

(assert (=> mapNonEmpty!52625 (= mapRes!52625 (and tp!100331 e!734614))))

(declare-fun mapKey!52625 () (_ BitVec 32))

(declare-datatypes ((V!50497 0))(
  ( (V!50498 (val!17097 Int)) )
))
(declare-datatypes ((ValueCell!16124 0))(
  ( (ValueCellFull!16124 (v!19697 V!50497)) (EmptyCell!16124) )
))
(declare-fun mapValue!52625 () ValueCell!16124)

(declare-fun mapRest!52625 () (Array (_ BitVec 32) ValueCell!16124))

(declare-datatypes ((array!85101 0))(
  ( (array!85102 (arr!41048 (Array (_ BitVec 32) ValueCell!16124)) (size!41599 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!85101)

(assert (=> mapNonEmpty!52625 (= (arr!41048 _values!1445) (store mapRest!52625 mapKey!52625 mapValue!52625))))

(declare-fun b!1286094 () Bool)

(declare-fun res!854432 () Bool)

(assert (=> b!1286094 (=> (not res!854432) (not e!734610))))

(declare-fun k!1205 () (_ BitVec 64))

(assert (=> b!1286094 (= res!854432 (and (not (= k!1205 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1205 #b1000000000000000000000000000000000000000000000000000000000000000)) (bvsge (bvadd #b00000000000000000000000000000001 from!2144) (size!41598 _keys!1741))))))

(declare-fun b!1286095 () Bool)

(declare-fun e!734613 () Bool)

(assert (=> b!1286095 (= e!734613 true)))

(declare-fun lt!577027 () V!50497)

(declare-datatypes ((tuple2!22056 0))(
  ( (tuple2!22057 (_1!11038 (_ BitVec 64)) (_2!11038 V!50497)) )
))
(declare-datatypes ((List!29264 0))(
  ( (Nil!29261) (Cons!29260 (h!30469 tuple2!22056) (t!42817 List!29264)) )
))
(declare-datatypes ((ListLongMap!19725 0))(
  ( (ListLongMap!19726 (toList!9878 List!29264)) )
))
(declare-fun contains!7932 (ListLongMap!19725 (_ BitVec 64)) Bool)

(declare-fun +!4286 (ListLongMap!19725 tuple2!22056) ListLongMap!19725)

(assert (=> b!1286095 (not (contains!7932 (+!4286 (ListLongMap!19726 Nil!29261) (tuple2!22057 (select (arr!41047 _keys!1741) from!2144) lt!577027)) k!1205))))

(declare-datatypes ((Unit!42447 0))(
  ( (Unit!42448) )
))
(declare-fun lt!577028 () Unit!42447)

(declare-fun addStillNotContains!337 (ListLongMap!19725 (_ BitVec 64) V!50497 (_ BitVec 64)) Unit!42447)

(assert (=> b!1286095 (= lt!577028 (addStillNotContains!337 (ListLongMap!19726 Nil!29261) (select (arr!41047 _keys!1741) from!2144) lt!577027 k!1205))))

(declare-fun defaultEntry!1448 () Int)

(declare-fun get!20892 (ValueCell!16124 V!50497) V!50497)

(declare-fun dynLambda!3491 (Int (_ BitVec 64)) V!50497)

(assert (=> b!1286095 (= lt!577027 (get!20892 (select (arr!41048 _values!1445) from!2144) (dynLambda!3491 defaultEntry!1448 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun bm!62837 () Bool)

(declare-fun call!62843 () Unit!42447)

(declare-fun call!62842 () Unit!42447)

(assert (=> bm!62837 (= call!62843 call!62842)))

(declare-fun b!1286096 () Bool)

(assert (=> b!1286096 (= e!734610 (not e!734613))))

(declare-fun res!854433 () Bool)

(assert (=> b!1286096 (=> res!854433 e!734613)))

(assert (=> b!1286096 (= res!854433 (= k!1205 (select (arr!41047 _keys!1741) from!2144)))))

(assert (=> b!1286096 (not (contains!7932 (ListLongMap!19726 Nil!29261) k!1205))))

(declare-fun lt!577036 () Unit!42447)

(declare-fun emptyContainsNothing!3 ((_ BitVec 64)) Unit!42447)

(assert (=> b!1286096 (= lt!577036 (emptyContainsNothing!3 k!1205))))

(declare-fun lt!577033 () Unit!42447)

(declare-fun e!734606 () Unit!42447)

(assert (=> b!1286096 (= lt!577033 e!734606)))

(declare-fun c!124081 () Bool)

(declare-fun lt!577034 () Bool)

(declare-fun extraKeys!1366 () (_ BitVec 32))

(assert (=> b!1286096 (= c!124081 (and (not lt!577034) (not (= (bvand extraKeys!1366 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> b!1286096 (= lt!577034 (= (bvand extraKeys!1366 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(declare-fun bm!62838 () Bool)

(declare-fun call!62845 () Bool)

(declare-fun call!62840 () Bool)

(assert (=> bm!62838 (= call!62845 call!62840)))

(declare-fun res!854434 () Bool)

(assert (=> start!108928 (=> (not res!854434) (not e!734610))))

(declare-fun mask!2175 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!108928 (= res!854434 (validMask!0 mask!2175))))

(assert (=> start!108928 e!734610))

(declare-fun tp_is_empty!34045 () Bool)

(assert (=> start!108928 tp_is_empty!34045))

(assert (=> start!108928 true))

(declare-fun e!734612 () Bool)

(declare-fun array_inv!31103 (array!85101) Bool)

(assert (=> start!108928 (and (array_inv!31103 _values!1445) e!734612)))

(declare-fun array_inv!31104 (array!85099) Bool)

(assert (=> start!108928 (array_inv!31104 _keys!1741)))

(assert (=> start!108928 tp!100332))

(declare-fun b!1286097 () Bool)

(declare-fun e!734607 () Unit!42447)

(assert (=> b!1286097 (= e!734606 e!734607)))

(declare-fun c!124080 () Bool)

(assert (=> b!1286097 (= c!124080 (and (not lt!577034) (= (bvand extraKeys!1366 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1286098 () Bool)

(declare-fun res!854437 () Bool)

(assert (=> b!1286098 (=> (not res!854437) (not e!734610))))

(assert (=> b!1286098 (= res!854437 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!41598 _keys!1741))))))

(declare-fun b!1286099 () Bool)

(declare-fun res!854439 () Bool)

(assert (=> b!1286099 (=> (not res!854439) (not e!734610))))

(assert (=> b!1286099 (= res!854439 (and (= (size!41599 _values!1445) (bvadd #b00000000000000000000000000000001 mask!2175)) (= (size!41598 _keys!1741) (size!41599 _values!1445)) (bvsge mask!2175 #b00000000000000000000000000000000) (bvsge extraKeys!1366 #b00000000000000000000000000000000) (bvsle extraKeys!1366 #b00000000000000000000000000000011)))))

(declare-fun b!1286100 () Bool)

(declare-fun lt!577038 () Unit!42447)

(assert (=> b!1286100 (= e!734606 lt!577038)))

(declare-fun lt!577035 () ListLongMap!19725)

(declare-fun call!62844 () ListLongMap!19725)

(assert (=> b!1286100 (= lt!577035 call!62844)))

(declare-fun lt!577032 () ListLongMap!19725)

(declare-fun zeroValue!1387 () V!50497)

(assert (=> b!1286100 (= lt!577032 (+!4286 lt!577035 (tuple2!22057 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387)))))

(declare-fun lt!577026 () Unit!42447)

(assert (=> b!1286100 (= lt!577026 call!62842)))

(assert (=> b!1286100 call!62840))

(declare-fun lemmaInListMapAfterAddingDiffThenInBefore!24 ((_ BitVec 64) (_ BitVec 64) V!50497 ListLongMap!19725) Unit!42447)

(assert (=> b!1286100 (= lt!577038 (lemmaInListMapAfterAddingDiffThenInBefore!24 k!1205 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387 lt!577035))))

(assert (=> b!1286100 (contains!7932 lt!577035 k!1205)))

(declare-fun b!1286101 () Bool)

(assert (=> b!1286101 (= e!734614 tp_is_empty!34045)))

(declare-fun bm!62839 () Bool)

(declare-fun lt!577029 () ListLongMap!19725)

(declare-fun minValue!1387 () V!50497)

(declare-fun lt!577030 () ListLongMap!19725)

(assert (=> bm!62839 (= call!62842 (lemmaInListMapAfterAddingDiffThenInBefore!24 k!1205 (ite c!124081 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!124080 #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000)) (ite c!124081 minValue!1387 (ite c!124080 zeroValue!1387 minValue!1387)) (ite c!124081 lt!577032 (ite c!124080 lt!577029 lt!577030))))))

(declare-fun b!1286102 () Bool)

(declare-fun e!734608 () Bool)

(assert (=> b!1286102 (= e!734612 (and e!734608 mapRes!52625))))

(declare-fun condMapEmpty!52625 () Bool)

(declare-fun mapDefault!52625 () ValueCell!16124)

