; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!108944 () Bool)

(assert start!108944)

(declare-fun b_free!28421 () Bool)

(declare-fun b_next!28421 () Bool)

(assert (=> start!108944 (= b_free!28421 (not b_next!28421))))

(declare-fun tp!100379 () Bool)

(declare-fun b_and!46513 () Bool)

(assert (=> start!108944 (= tp!100379 b_and!46513)))

(declare-fun b!1286541 () Bool)

(declare-datatypes ((Unit!42466 0))(
  ( (Unit!42467) )
))
(declare-fun e!734826 () Unit!42466)

(declare-fun e!734822 () Unit!42466)

(assert (=> b!1286541 (= e!734826 e!734822)))

(declare-fun c!124153 () Bool)

(declare-fun lt!577341 () Bool)

(declare-fun extraKeys!1366 () (_ BitVec 32))

(assert (=> b!1286541 (= c!124153 (and (not lt!577341) (= (bvand extraKeys!1366 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1286542 () Bool)

(declare-fun lt!577340 () Unit!42466)

(assert (=> b!1286542 (= e!734826 lt!577340)))

(declare-datatypes ((V!50517 0))(
  ( (V!50518 (val!17105 Int)) )
))
(declare-datatypes ((tuple2!22072 0))(
  ( (tuple2!22073 (_1!11046 (_ BitVec 64)) (_2!11046 V!50517)) )
))
(declare-datatypes ((List!29275 0))(
  ( (Nil!29272) (Cons!29271 (h!30480 tuple2!22072) (t!42844 List!29275)) )
))
(declare-datatypes ((ListLongMap!19741 0))(
  ( (ListLongMap!19742 (toList!9886 List!29275)) )
))
(declare-fun lt!577349 () ListLongMap!19741)

(declare-fun call!62987 () ListLongMap!19741)

(assert (=> b!1286542 (= lt!577349 call!62987)))

(declare-fun lt!577350 () ListLongMap!19741)

(declare-fun zeroValue!1387 () V!50517)

(declare-fun +!4291 (ListLongMap!19741 tuple2!22072) ListLongMap!19741)

(assert (=> b!1286542 (= lt!577350 (+!4291 lt!577349 (tuple2!22073 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387)))))

(declare-fun lt!577345 () Unit!42466)

(declare-fun call!62988 () Unit!42466)

(assert (=> b!1286542 (= lt!577345 call!62988)))

(declare-fun call!62985 () Bool)

(assert (=> b!1286542 call!62985))

(declare-fun k!1205 () (_ BitVec 64))

(declare-fun lemmaInListMapAfterAddingDiffThenInBefore!31 ((_ BitVec 64) (_ BitVec 64) V!50517 ListLongMap!19741) Unit!42466)

(assert (=> b!1286542 (= lt!577340 (lemmaInListMapAfterAddingDiffThenInBefore!31 k!1205 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387 lt!577349))))

(declare-fun contains!7940 (ListLongMap!19741 (_ BitVec 64)) Bool)

(assert (=> b!1286542 (contains!7940 lt!577349 k!1205)))

(declare-fun b!1286543 () Bool)

(declare-fun res!854655 () Bool)

(declare-fun e!734828 () Bool)

(assert (=> b!1286543 (=> (not res!854655) (not e!734828))))

(declare-fun mask!2175 () (_ BitVec 32))

(declare-datatypes ((ValueCell!16132 0))(
  ( (ValueCellFull!16132 (v!19705 V!50517)) (EmptyCell!16132) )
))
(declare-datatypes ((array!85129 0))(
  ( (array!85130 (arr!41062 (Array (_ BitVec 32) ValueCell!16132)) (size!41613 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!85129)

(declare-datatypes ((array!85131 0))(
  ( (array!85132 (arr!41063 (Array (_ BitVec 32) (_ BitVec 64))) (size!41614 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!85131)

(assert (=> b!1286543 (= res!854655 (and (= (size!41613 _values!1445) (bvadd #b00000000000000000000000000000001 mask!2175)) (= (size!41614 _keys!1741) (size!41613 _values!1445)) (bvsge mask!2175 #b00000000000000000000000000000000) (bvsge extraKeys!1366 #b00000000000000000000000000000000) (bvsle extraKeys!1366 #b00000000000000000000000000000011)))))

(declare-fun b!1286544 () Bool)

(declare-fun res!854647 () Bool)

(assert (=> b!1286544 (=> (not res!854647) (not e!734828))))

(declare-fun from!2144 () (_ BitVec 32))

(assert (=> b!1286544 (= res!854647 (and (not (= k!1205 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1205 #b1000000000000000000000000000000000000000000000000000000000000000)) (bvsge (bvadd #b00000000000000000000000000000001 from!2144) (size!41614 _keys!1741))))))

(declare-fun bm!62981 () Bool)

(declare-fun call!62989 () ListLongMap!19741)

(assert (=> bm!62981 (= call!62989 call!62987)))

(declare-fun b!1286545 () Bool)

(declare-fun res!854652 () Bool)

(assert (=> b!1286545 (=> (not res!854652) (not e!734828))))

(declare-datatypes ((List!29276 0))(
  ( (Nil!29273) (Cons!29272 (h!30481 (_ BitVec 64)) (t!42845 List!29276)) )
))
(declare-fun arrayNoDuplicates!0 (array!85131 (_ BitVec 32) List!29276) Bool)

(assert (=> b!1286545 (= res!854652 (arrayNoDuplicates!0 _keys!1741 #b00000000000000000000000000000000 Nil!29273))))

(declare-fun b!1286546 () Bool)

(declare-fun e!734824 () Bool)

(declare-fun tp_is_empty!34061 () Bool)

(assert (=> b!1286546 (= e!734824 tp_is_empty!34061)))

(declare-fun b!1286547 () Bool)

(declare-fun res!854651 () Bool)

(assert (=> b!1286547 (=> (not res!854651) (not e!734828))))

(declare-fun minValue!1387 () V!50517)

(declare-fun defaultEntry!1448 () Int)

(declare-fun getCurrentListMap!4896 (array!85131 array!85129 (_ BitVec 32) (_ BitVec 32) V!50517 V!50517 (_ BitVec 32) Int) ListLongMap!19741)

(assert (=> b!1286547 (= res!854651 (contains!7940 (getCurrentListMap!4896 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) k!1205))))

(declare-fun bm!62982 () Bool)

(declare-fun call!62984 () Bool)

(assert (=> bm!62982 (= call!62984 call!62985)))

(declare-fun res!854654 () Bool)

(assert (=> start!108944 (=> (not res!854654) (not e!734828))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!108944 (= res!854654 (validMask!0 mask!2175))))

(assert (=> start!108944 e!734828))

(assert (=> start!108944 tp_is_empty!34061))

(assert (=> start!108944 true))

(declare-fun e!734823 () Bool)

(declare-fun array_inv!31115 (array!85129) Bool)

(assert (=> start!108944 (and (array_inv!31115 _values!1445) e!734823)))

(declare-fun array_inv!31116 (array!85131) Bool)

(assert (=> start!108944 (array_inv!31116 _keys!1741)))

(assert (=> start!108944 tp!100379))

(declare-fun b!1286548 () Bool)

(declare-fun res!854648 () Bool)

(assert (=> b!1286548 (=> (not res!854648) (not e!734828))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!85131 (_ BitVec 32)) Bool)

(assert (=> b!1286548 (= res!854648 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1741 mask!2175))))

(declare-fun bm!62983 () Bool)

(declare-fun lt!577339 () ListLongMap!19741)

(declare-fun c!124152 () Bool)

(declare-fun lt!577343 () ListLongMap!19741)

(assert (=> bm!62983 (= call!62988 (lemmaInListMapAfterAddingDiffThenInBefore!31 k!1205 (ite c!124152 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!124153 #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000)) (ite c!124152 minValue!1387 (ite c!124153 zeroValue!1387 minValue!1387)) (ite c!124152 lt!577350 (ite c!124153 lt!577343 lt!577339))))))

(declare-fun b!1286549 () Bool)

(declare-fun e!734830 () Bool)

(assert (=> b!1286549 (= e!734830 true)))

(declare-fun lt!577346 () V!50517)

(assert (=> b!1286549 (not (contains!7940 (+!4291 (ListLongMap!19742 Nil!29272) (tuple2!22073 (select (arr!41063 _keys!1741) from!2144) lt!577346)) k!1205))))

(declare-fun lt!577347 () Unit!42466)

(declare-fun addStillNotContains!341 (ListLongMap!19741 (_ BitVec 64) V!50517 (_ BitVec 64)) Unit!42466)

(assert (=> b!1286549 (= lt!577347 (addStillNotContains!341 (ListLongMap!19742 Nil!29272) (select (arr!41063 _keys!1741) from!2144) lt!577346 k!1205))))

(declare-fun get!20900 (ValueCell!16132 V!50517) V!50517)

(declare-fun dynLambda!3495 (Int (_ BitVec 64)) V!50517)

(assert (=> b!1286549 (= lt!577346 (get!20900 (select (arr!41062 _values!1445) from!2144) (dynLambda!3495 defaultEntry!1448 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun bm!62984 () Bool)

(assert (=> bm!62984 (= call!62985 (contains!7940 (ite c!124152 lt!577350 (ite c!124153 lt!577343 lt!577339)) k!1205))))

(declare-fun b!1286550 () Bool)

(declare-fun res!854653 () Bool)

(assert (=> b!1286550 (=> (not res!854653) (not e!734828))))

(assert (=> b!1286550 (= res!854653 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!41614 _keys!1741))))))

(declare-fun mapNonEmpty!52649 () Bool)

(declare-fun mapRes!52649 () Bool)

(declare-fun tp!100380 () Bool)

(declare-fun e!734825 () Bool)

(assert (=> mapNonEmpty!52649 (= mapRes!52649 (and tp!100380 e!734825))))

(declare-fun mapValue!52649 () ValueCell!16132)

(declare-fun mapRest!52649 () (Array (_ BitVec 32) ValueCell!16132))

(declare-fun mapKey!52649 () (_ BitVec 32))

(assert (=> mapNonEmpty!52649 (= (arr!41062 _values!1445) (store mapRest!52649 mapKey!52649 mapValue!52649))))

(declare-fun mapIsEmpty!52649 () Bool)

(assert (=> mapIsEmpty!52649 mapRes!52649))

(declare-fun b!1286551 () Bool)

(declare-fun e!734827 () Unit!42466)

(declare-fun lt!577344 () Unit!42466)

(assert (=> b!1286551 (= e!734827 lt!577344)))

(assert (=> b!1286551 (= lt!577339 call!62989)))

(declare-fun call!62986 () Unit!42466)

(assert (=> b!1286551 (= lt!577344 call!62986)))

(assert (=> b!1286551 call!62984))

(declare-fun bm!62985 () Bool)

(assert (=> bm!62985 (= call!62986 call!62988)))

(declare-fun b!1286552 () Bool)

(declare-fun c!124151 () Bool)

(assert (=> b!1286552 (= c!124151 (and (not (= (bvand extraKeys!1366 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!577341))))

(assert (=> b!1286552 (= e!734822 e!734827)))

(declare-fun b!1286553 () Bool)

(assert (=> b!1286553 (= e!734828 (not e!734830))))

(declare-fun res!854650 () Bool)

(assert (=> b!1286553 (=> res!854650 e!734830)))

(assert (=> b!1286553 (= res!854650 (= k!1205 (select (arr!41063 _keys!1741) from!2144)))))

(assert (=> b!1286553 (not (contains!7940 (ListLongMap!19742 Nil!29272) k!1205))))

(declare-fun lt!577338 () Unit!42466)

(declare-fun emptyContainsNothing!8 ((_ BitVec 64)) Unit!42466)

(assert (=> b!1286553 (= lt!577338 (emptyContainsNothing!8 k!1205))))

(declare-fun lt!577342 () Unit!42466)

(assert (=> b!1286553 (= lt!577342 e!734826)))

(assert (=> b!1286553 (= c!124152 (and (not lt!577341) (not (= (bvand extraKeys!1366 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> b!1286553 (= lt!577341 (= (bvand extraKeys!1366 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(declare-fun b!1286554 () Bool)

(assert (=> b!1286554 (= e!734823 (and e!734824 mapRes!52649))))

(declare-fun condMapEmpty!52649 () Bool)

(declare-fun mapDefault!52649 () ValueCell!16132)

