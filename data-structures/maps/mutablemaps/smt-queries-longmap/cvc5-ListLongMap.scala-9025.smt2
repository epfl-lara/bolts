; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!108946 () Bool)

(assert start!108946)

(declare-fun b_free!28423 () Bool)

(declare-fun b_next!28423 () Bool)

(assert (=> start!108946 (= b_free!28423 (not b_next!28423))))

(declare-fun tp!100386 () Bool)

(declare-fun b_and!46517 () Bool)

(assert (=> start!108946 (= tp!100386 b_and!46517)))

(declare-datatypes ((V!50521 0))(
  ( (V!50522 (val!17106 Int)) )
))
(declare-fun minValue!1387 () V!50521)

(declare-fun zeroValue!1387 () V!50521)

(declare-fun from!2144 () (_ BitVec 32))

(declare-fun bm!62999 () Bool)

(declare-datatypes ((tuple2!22074 0))(
  ( (tuple2!22075 (_1!11047 (_ BitVec 64)) (_2!11047 V!50521)) )
))
(declare-datatypes ((List!29277 0))(
  ( (Nil!29274) (Cons!29273 (h!30482 tuple2!22074) (t!42846 List!29277)) )
))
(declare-datatypes ((ListLongMap!19743 0))(
  ( (ListLongMap!19744 (toList!9887 List!29277)) )
))
(declare-fun call!63004 () ListLongMap!19743)

(declare-datatypes ((ValueCell!16133 0))(
  ( (ValueCellFull!16133 (v!19706 V!50521)) (EmptyCell!16133) )
))
(declare-datatypes ((array!85133 0))(
  ( (array!85134 (arr!41064 (Array (_ BitVec 32) ValueCell!16133)) (size!41615 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!85133)

(declare-fun extraKeys!1366 () (_ BitVec 32))

(declare-datatypes ((array!85135 0))(
  ( (array!85136 (arr!41065 (Array (_ BitVec 32) (_ BitVec 64))) (size!41616 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!85135)

(declare-fun defaultEntry!1448 () Int)

(declare-fun mask!2175 () (_ BitVec 32))

(declare-fun getCurrentListMapNoExtraKeys!6003 (array!85135 array!85133 (_ BitVec 32) (_ BitVec 32) V!50521 V!50521 (_ BitVec 32) Int) ListLongMap!19743)

(assert (=> bm!62999 (= call!63004 (getCurrentListMapNoExtraKeys!6003 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448))))

(declare-fun b!1286595 () Bool)

(declare-fun res!854676 () Bool)

(declare-fun e!734847 () Bool)

(assert (=> b!1286595 (=> (not res!854676) (not e!734847))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!85135 (_ BitVec 32)) Bool)

(assert (=> b!1286595 (= res!854676 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1741 mask!2175))))

(declare-fun b!1286596 () Bool)

(declare-fun res!854672 () Bool)

(assert (=> b!1286596 (=> (not res!854672) (not e!734847))))

(declare-fun k!1205 () (_ BitVec 64))

(declare-fun contains!7941 (ListLongMap!19743 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!4897 (array!85135 array!85133 (_ BitVec 32) (_ BitVec 32) V!50521 V!50521 (_ BitVec 32) Int) ListLongMap!19743)

(assert (=> b!1286596 (= res!854672 (contains!7941 (getCurrentListMap!4897 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) k!1205))))

(declare-fun b!1286597 () Bool)

(declare-fun e!734850 () Bool)

(declare-fun tp_is_empty!34063 () Bool)

(assert (=> b!1286597 (= e!734850 tp_is_empty!34063)))

(declare-fun b!1286598 () Bool)

(declare-fun res!854674 () Bool)

(assert (=> b!1286598 (=> (not res!854674) (not e!734847))))

(assert (=> b!1286598 (= res!854674 (and (= (size!41615 _values!1445) (bvadd #b00000000000000000000000000000001 mask!2175)) (= (size!41616 _keys!1741) (size!41615 _values!1445)) (bvsge mask!2175 #b00000000000000000000000000000000) (bvsge extraKeys!1366 #b00000000000000000000000000000000) (bvsle extraKeys!1366 #b00000000000000000000000000000011)))))

(declare-fun bm!63000 () Bool)

(declare-fun call!63005 () ListLongMap!19743)

(assert (=> bm!63000 (= call!63005 call!63004)))

(declare-fun bm!63001 () Bool)

(declare-datatypes ((Unit!42468 0))(
  ( (Unit!42469) )
))
(declare-fun call!63002 () Unit!42468)

(declare-fun call!63007 () Unit!42468)

(assert (=> bm!63001 (= call!63002 call!63007)))

(declare-fun res!854675 () Bool)

(assert (=> start!108946 (=> (not res!854675) (not e!734847))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!108946 (= res!854675 (validMask!0 mask!2175))))

(assert (=> start!108946 e!734847))

(assert (=> start!108946 tp_is_empty!34063))

(assert (=> start!108946 true))

(declare-fun e!734851 () Bool)

(declare-fun array_inv!31117 (array!85133) Bool)

(assert (=> start!108946 (and (array_inv!31117 _values!1445) e!734851)))

(declare-fun array_inv!31118 (array!85135) Bool)

(assert (=> start!108946 (array_inv!31118 _keys!1741)))

(assert (=> start!108946 tp!100386))

(declare-fun b!1286599 () Bool)

(declare-fun res!854679 () Bool)

(assert (=> b!1286599 (=> (not res!854679) (not e!734847))))

(declare-datatypes ((List!29278 0))(
  ( (Nil!29275) (Cons!29274 (h!30483 (_ BitVec 64)) (t!42847 List!29278)) )
))
(declare-fun arrayNoDuplicates!0 (array!85135 (_ BitVec 32) List!29278) Bool)

(assert (=> b!1286599 (= res!854679 (arrayNoDuplicates!0 _keys!1741 #b00000000000000000000000000000000 Nil!29275))))

(declare-fun b!1286600 () Bool)

(declare-fun e!734852 () Unit!42468)

(declare-fun lt!577378 () Unit!42468)

(assert (=> b!1286600 (= e!734852 lt!577378)))

(declare-fun lt!577377 () ListLongMap!19743)

(assert (=> b!1286600 (= lt!577377 call!63005)))

(assert (=> b!1286600 (= lt!577378 call!63002)))

(declare-fun call!63006 () Bool)

(assert (=> b!1286600 call!63006))

(declare-fun b!1286601 () Bool)

(declare-fun e!734848 () Bool)

(assert (=> b!1286601 (= e!734848 tp_is_empty!34063)))

(declare-fun mapNonEmpty!52652 () Bool)

(declare-fun mapRes!52652 () Bool)

(declare-fun tp!100385 () Bool)

(assert (=> mapNonEmpty!52652 (= mapRes!52652 (and tp!100385 e!734848))))

(declare-fun mapValue!52652 () ValueCell!16133)

(declare-fun mapKey!52652 () (_ BitVec 32))

(declare-fun mapRest!52652 () (Array (_ BitVec 32) ValueCell!16133))

(assert (=> mapNonEmpty!52652 (= (arr!41064 _values!1445) (store mapRest!52652 mapKey!52652 mapValue!52652))))

(declare-fun bm!63002 () Bool)

(declare-fun call!63003 () Bool)

(assert (=> bm!63002 (= call!63006 call!63003)))

(declare-fun b!1286602 () Bool)

(declare-fun e!734854 () Unit!42468)

(declare-fun lt!577381 () Unit!42468)

(assert (=> b!1286602 (= e!734854 lt!577381)))

(declare-fun lt!577382 () ListLongMap!19743)

(assert (=> b!1286602 (= lt!577382 call!63004)))

(declare-fun lt!577375 () ListLongMap!19743)

(declare-fun +!4292 (ListLongMap!19743 tuple2!22074) ListLongMap!19743)

(assert (=> b!1286602 (= lt!577375 (+!4292 lt!577382 (tuple2!22075 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387)))))

(declare-fun lt!577379 () Unit!42468)

(declare-fun lemmaInListMapAfterAddingDiffThenInBefore!32 ((_ BitVec 64) (_ BitVec 64) V!50521 ListLongMap!19743) Unit!42468)

(assert (=> b!1286602 (= lt!577379 (lemmaInListMapAfterAddingDiffThenInBefore!32 k!1205 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387 lt!577375))))

(assert (=> b!1286602 call!63003))

(assert (=> b!1286602 (= lt!577381 call!63007)))

(assert (=> b!1286602 (contains!7941 lt!577382 k!1205)))

(declare-fun b!1286603 () Bool)

(declare-fun res!854677 () Bool)

(assert (=> b!1286603 (=> (not res!854677) (not e!734847))))

(assert (=> b!1286603 (= res!854677 (and (not (= k!1205 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1205 #b1000000000000000000000000000000000000000000000000000000000000000)) (bvsge (bvadd #b00000000000000000000000000000001 from!2144) (size!41616 _keys!1741))))))

(declare-fun b!1286604 () Bool)

(declare-fun Unit!42470 () Unit!42468)

(assert (=> b!1286604 (= e!734852 Unit!42470)))

(declare-fun b!1286605 () Bool)

(declare-fun c!124160 () Bool)

(declare-fun lt!577376 () Bool)

(assert (=> b!1286605 (= c!124160 (and (not (= (bvand extraKeys!1366 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!577376))))

(declare-fun e!734849 () Unit!42468)

(assert (=> b!1286605 (= e!734849 e!734852)))

(declare-fun c!124161 () Bool)

(declare-fun lt!577380 () ListLongMap!19743)

(declare-fun bm!63003 () Bool)

(declare-fun c!124162 () Bool)

(assert (=> bm!63003 (= call!63003 (contains!7941 (ite c!124161 lt!577375 (ite c!124162 lt!577380 lt!577377)) k!1205))))

(declare-fun mapIsEmpty!52652 () Bool)

(assert (=> mapIsEmpty!52652 mapRes!52652))

(declare-fun b!1286606 () Bool)

(assert (=> b!1286606 call!63006))

(declare-fun lt!577374 () Unit!42468)

(assert (=> b!1286606 (= lt!577374 call!63002)))

(assert (=> b!1286606 (= lt!577380 call!63005)))

(assert (=> b!1286606 (= e!734849 lt!577374)))

(declare-fun b!1286607 () Bool)

(assert (=> b!1286607 (= e!734847 (not true))))

(assert (=> b!1286607 (not (contains!7941 (ListLongMap!19744 Nil!29274) k!1205))))

(declare-fun lt!577373 () Unit!42468)

(declare-fun emptyContainsNothing!9 ((_ BitVec 64)) Unit!42468)

(assert (=> b!1286607 (= lt!577373 (emptyContainsNothing!9 k!1205))))

(declare-fun lt!577383 () Unit!42468)

(assert (=> b!1286607 (= lt!577383 e!734854)))

(assert (=> b!1286607 (= c!124161 (and (not lt!577376) (not (= (bvand extraKeys!1366 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> b!1286607 (= lt!577376 (= (bvand extraKeys!1366 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(declare-fun b!1286608 () Bool)

(declare-fun res!854678 () Bool)

(assert (=> b!1286608 (=> (not res!854678) (not e!734847))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1286608 (= res!854678 (validKeyInArray!0 (select (arr!41065 _keys!1741) from!2144)))))

(declare-fun b!1286609 () Bool)

(assert (=> b!1286609 (= e!734854 e!734849)))

(assert (=> b!1286609 (= c!124162 (and (not lt!577376) (= (bvand extraKeys!1366 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun bm!63004 () Bool)

(assert (=> bm!63004 (= call!63007 (lemmaInListMapAfterAddingDiffThenInBefore!32 k!1205 (ite (or c!124161 c!124162) #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000) (ite (or c!124161 c!124162) zeroValue!1387 minValue!1387) (ite c!124161 lt!577382 (ite c!124162 lt!577380 lt!577377))))))

(declare-fun b!1286610 () Bool)

(declare-fun res!854673 () Bool)

(assert (=> b!1286610 (=> (not res!854673) (not e!734847))))

(assert (=> b!1286610 (= res!854673 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!41616 _keys!1741))))))

(declare-fun b!1286611 () Bool)

(assert (=> b!1286611 (= e!734851 (and e!734850 mapRes!52652))))

(declare-fun condMapEmpty!52652 () Bool)

(declare-fun mapDefault!52652 () ValueCell!16133)

