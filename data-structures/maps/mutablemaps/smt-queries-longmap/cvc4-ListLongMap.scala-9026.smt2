; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!108956 () Bool)

(assert start!108956)

(declare-fun b_free!28433 () Bool)

(declare-fun b_next!28433 () Bool)

(assert (=> start!108956 (= b_free!28433 (not b_next!28433))))

(declare-fun tp!100416 () Bool)

(declare-fun b_and!46527 () Bool)

(assert (=> start!108956 (= tp!100416 b_and!46527)))

(declare-fun b!1286850 () Bool)

(declare-fun res!854798 () Bool)

(declare-fun e!734969 () Bool)

(assert (=> b!1286850 (=> (not res!854798) (not e!734969))))

(declare-fun from!2144 () (_ BitVec 32))

(declare-datatypes ((array!85153 0))(
  ( (array!85154 (arr!41074 (Array (_ BitVec 32) (_ BitVec 64))) (size!41625 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!85153)

(assert (=> b!1286850 (= res!854798 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!41625 _keys!1741))))))

(declare-fun b!1286851 () Bool)

(declare-fun e!734972 () Bool)

(declare-fun tp_is_empty!34073 () Bool)

(assert (=> b!1286851 (= e!734972 tp_is_empty!34073)))

(declare-fun bm!63089 () Bool)

(declare-fun call!63093 () Bool)

(declare-fun call!63095 () Bool)

(assert (=> bm!63089 (= call!63093 call!63095)))

(declare-fun b!1286852 () Bool)

(declare-fun res!854793 () Bool)

(assert (=> b!1286852 (=> (not res!854793) (not e!734969))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1286852 (= res!854793 (validKeyInArray!0 (select (arr!41074 _keys!1741) from!2144)))))

(declare-fun mapIsEmpty!52667 () Bool)

(declare-fun mapRes!52667 () Bool)

(assert (=> mapIsEmpty!52667 mapRes!52667))

(declare-fun b!1286853 () Bool)

(declare-fun res!854797 () Bool)

(assert (=> b!1286853 (=> (not res!854797) (not e!734969))))

(declare-datatypes ((V!50533 0))(
  ( (V!50534 (val!17111 Int)) )
))
(declare-fun minValue!1387 () V!50533)

(declare-fun zeroValue!1387 () V!50533)

(declare-datatypes ((ValueCell!16138 0))(
  ( (ValueCellFull!16138 (v!19711 V!50533)) (EmptyCell!16138) )
))
(declare-datatypes ((array!85155 0))(
  ( (array!85156 (arr!41075 (Array (_ BitVec 32) ValueCell!16138)) (size!41626 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!85155)

(declare-fun k!1205 () (_ BitVec 64))

(declare-fun extraKeys!1366 () (_ BitVec 32))

(declare-fun defaultEntry!1448 () Int)

(declare-fun mask!2175 () (_ BitVec 32))

(declare-datatypes ((tuple2!22084 0))(
  ( (tuple2!22085 (_1!11052 (_ BitVec 64)) (_2!11052 V!50533)) )
))
(declare-datatypes ((List!29286 0))(
  ( (Nil!29283) (Cons!29282 (h!30491 tuple2!22084) (t!42855 List!29286)) )
))
(declare-datatypes ((ListLongMap!19753 0))(
  ( (ListLongMap!19754 (toList!9892 List!29286)) )
))
(declare-fun contains!7946 (ListLongMap!19753 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!4901 (array!85153 array!85155 (_ BitVec 32) (_ BitVec 32) V!50533 V!50533 (_ BitVec 32) Int) ListLongMap!19753)

(assert (=> b!1286853 (= res!854797 (contains!7946 (getCurrentListMap!4901 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) k!1205))))

(declare-fun b!1286854 () Bool)

(assert (=> b!1286854 call!63093))

(declare-datatypes ((Unit!42482 0))(
  ( (Unit!42483) )
))
(declare-fun lt!577541 () Unit!42482)

(declare-fun call!63096 () Unit!42482)

(assert (=> b!1286854 (= lt!577541 call!63096)))

(declare-fun lt!577539 () ListLongMap!19753)

(declare-fun call!63092 () ListLongMap!19753)

(assert (=> b!1286854 (= lt!577539 call!63092)))

(declare-fun e!734974 () Unit!42482)

(assert (=> b!1286854 (= e!734974 lt!577541)))

(declare-fun b!1286855 () Bool)

(declare-fun e!734971 () Unit!42482)

(assert (=> b!1286855 (= e!734971 e!734974)))

(declare-fun c!124206 () Bool)

(declare-fun lt!577543 () Bool)

(assert (=> b!1286855 (= c!124206 (and (not lt!577543) (= (bvand extraKeys!1366 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1286856 () Bool)

(declare-fun e!734973 () Bool)

(assert (=> b!1286856 (= e!734973 tp_is_empty!34073)))

(declare-fun b!1286857 () Bool)

(declare-fun res!854794 () Bool)

(assert (=> b!1286857 (=> (not res!854794) (not e!734969))))

(assert (=> b!1286857 (= res!854794 (and (= (size!41626 _values!1445) (bvadd #b00000000000000000000000000000001 mask!2175)) (= (size!41625 _keys!1741) (size!41626 _values!1445)) (bvsge mask!2175 #b00000000000000000000000000000000) (bvsge extraKeys!1366 #b00000000000000000000000000000000) (bvsle extraKeys!1366 #b00000000000000000000000000000011)))))

(declare-fun bm!63090 () Bool)

(declare-fun lt!577548 () ListLongMap!19753)

(declare-fun lt!577540 () ListLongMap!19753)

(declare-fun c!124205 () Bool)

(assert (=> bm!63090 (= call!63095 (contains!7946 (ite c!124205 lt!577548 (ite c!124206 lt!577539 lt!577540)) k!1205))))

(declare-fun bm!63091 () Bool)

(declare-fun call!63097 () Unit!42482)

(assert (=> bm!63091 (= call!63096 call!63097)))

(declare-fun b!1286859 () Bool)

(declare-fun res!854792 () Bool)

(assert (=> b!1286859 (=> (not res!854792) (not e!734969))))

(assert (=> b!1286859 (= res!854792 (and (not (= k!1205 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1205 #b1000000000000000000000000000000000000000000000000000000000000000)) (bvsge (bvadd #b00000000000000000000000000000001 from!2144) (size!41625 _keys!1741))))))

(declare-fun mapNonEmpty!52667 () Bool)

(declare-fun tp!100415 () Bool)

(assert (=> mapNonEmpty!52667 (= mapRes!52667 (and tp!100415 e!734973))))

(declare-fun mapValue!52667 () ValueCell!16138)

(declare-fun mapRest!52667 () (Array (_ BitVec 32) ValueCell!16138))

(declare-fun mapKey!52667 () (_ BitVec 32))

(assert (=> mapNonEmpty!52667 (= (arr!41075 _values!1445) (store mapRest!52667 mapKey!52667 mapValue!52667))))

(declare-fun b!1286860 () Bool)

(declare-fun res!854795 () Bool)

(assert (=> b!1286860 (=> (not res!854795) (not e!734969))))

(declare-datatypes ((List!29287 0))(
  ( (Nil!29284) (Cons!29283 (h!30492 (_ BitVec 64)) (t!42856 List!29287)) )
))
(declare-fun arrayNoDuplicates!0 (array!85153 (_ BitVec 32) List!29287) Bool)

(assert (=> b!1286860 (= res!854795 (arrayNoDuplicates!0 _keys!1741 #b00000000000000000000000000000000 Nil!29284))))

(declare-fun bm!63092 () Bool)

(declare-fun call!63094 () ListLongMap!19753)

(assert (=> bm!63092 (= call!63092 call!63094)))

(declare-fun b!1286861 () Bool)

(assert (=> b!1286861 (= e!734969 (not true))))

(assert (=> b!1286861 (not (contains!7946 (ListLongMap!19754 Nil!29283) k!1205))))

(declare-fun lt!577547 () Unit!42482)

(declare-fun emptyContainsNothing!14 ((_ BitVec 64)) Unit!42482)

(assert (=> b!1286861 (= lt!577547 (emptyContainsNothing!14 k!1205))))

(declare-fun lt!577542 () Unit!42482)

(assert (=> b!1286861 (= lt!577542 e!734971)))

(assert (=> b!1286861 (= c!124205 (and (not lt!577543) (not (= (bvand extraKeys!1366 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> b!1286861 (= lt!577543 (= (bvand extraKeys!1366 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(declare-fun bm!63093 () Bool)

(declare-fun getCurrentListMapNoExtraKeys!6007 (array!85153 array!85155 (_ BitVec 32) (_ BitVec 32) V!50533 V!50533 (_ BitVec 32) Int) ListLongMap!19753)

(assert (=> bm!63093 (= call!63094 (getCurrentListMapNoExtraKeys!6007 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448))))

(declare-fun b!1286862 () Bool)

(declare-fun e!734967 () Unit!42482)

(declare-fun lt!577545 () Unit!42482)

(assert (=> b!1286862 (= e!734967 lt!577545)))

(assert (=> b!1286862 (= lt!577540 call!63092)))

(assert (=> b!1286862 (= lt!577545 call!63096)))

(assert (=> b!1286862 call!63093))

(declare-fun b!1286863 () Bool)

(declare-fun c!124207 () Bool)

(assert (=> b!1286863 (= c!124207 (and (not (= (bvand extraKeys!1366 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!577543))))

(assert (=> b!1286863 (= e!734974 e!734967)))

(declare-fun b!1286864 () Bool)

(declare-fun Unit!42484 () Unit!42482)

(assert (=> b!1286864 (= e!734967 Unit!42484)))

(declare-fun b!1286865 () Bool)

(declare-fun lt!577538 () Unit!42482)

(assert (=> b!1286865 (= e!734971 lt!577538)))

(assert (=> b!1286865 (= lt!577548 call!63094)))

(declare-fun lt!577544 () ListLongMap!19753)

(declare-fun +!4295 (ListLongMap!19753 tuple2!22084) ListLongMap!19753)

(assert (=> b!1286865 (= lt!577544 (+!4295 lt!577548 (tuple2!22085 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387)))))

(declare-fun lt!577546 () Unit!42482)

(declare-fun lemmaInListMapAfterAddingDiffThenInBefore!35 ((_ BitVec 64) (_ BitVec 64) V!50533 ListLongMap!19753) Unit!42482)

(assert (=> b!1286865 (= lt!577546 (lemmaInListMapAfterAddingDiffThenInBefore!35 k!1205 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387 lt!577544))))

(assert (=> b!1286865 (contains!7946 lt!577544 k!1205)))

(assert (=> b!1286865 (= lt!577538 call!63097)))

(assert (=> b!1286865 call!63095))

(declare-fun bm!63094 () Bool)

(assert (=> bm!63094 (= call!63097 (lemmaInListMapAfterAddingDiffThenInBefore!35 k!1205 (ite (or c!124205 c!124206) #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000) (ite (or c!124205 c!124206) zeroValue!1387 minValue!1387) (ite c!124205 lt!577548 (ite c!124206 lt!577539 lt!577540))))))

(declare-fun b!1286866 () Bool)

(declare-fun e!734970 () Bool)

(assert (=> b!1286866 (= e!734970 (and e!734972 mapRes!52667))))

(declare-fun condMapEmpty!52667 () Bool)

(declare-fun mapDefault!52667 () ValueCell!16138)

