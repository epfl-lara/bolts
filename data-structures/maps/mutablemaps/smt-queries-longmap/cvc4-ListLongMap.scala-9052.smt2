; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!109136 () Bool)

(assert start!109136)

(declare-fun b_free!28589 () Bool)

(declare-fun b_next!28589 () Bool)

(assert (=> start!109136 (= b_free!28589 (not b_next!28589))))

(declare-fun tp!100887 () Bool)

(declare-fun b_and!46689 () Bool)

(assert (=> start!109136 (= tp!100887 b_and!46689)))

(declare-fun mapNonEmpty!52904 () Bool)

(declare-fun mapRes!52904 () Bool)

(declare-fun tp!100886 () Bool)

(declare-fun e!736415 () Bool)

(assert (=> mapNonEmpty!52904 (= mapRes!52904 (and tp!100886 e!736415))))

(declare-fun mapKey!52904 () (_ BitVec 32))

(declare-datatypes ((V!50741 0))(
  ( (V!50742 (val!17189 Int)) )
))
(declare-datatypes ((ValueCell!16216 0))(
  ( (ValueCellFull!16216 (v!19790 V!50741)) (EmptyCell!16216) )
))
(declare-fun mapRest!52904 () (Array (_ BitVec 32) ValueCell!16216))

(declare-datatypes ((array!85457 0))(
  ( (array!85458 (arr!41225 (Array (_ BitVec 32) ValueCell!16216)) (size!41776 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!85457)

(declare-fun mapValue!52904 () ValueCell!16216)

(assert (=> mapNonEmpty!52904 (= (arr!41225 _values!1445) (store mapRest!52904 mapKey!52904 mapValue!52904))))

(declare-fun mapIsEmpty!52904 () Bool)

(assert (=> mapIsEmpty!52904 mapRes!52904))

(declare-fun b!1289787 () Bool)

(declare-fun res!856880 () Bool)

(declare-fun e!736416 () Bool)

(assert (=> b!1289787 (=> (not res!856880) (not e!736416))))

(declare-datatypes ((array!85459 0))(
  ( (array!85460 (arr!41226 (Array (_ BitVec 32) (_ BitVec 64))) (size!41777 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!85459)

(declare-datatypes ((List!29414 0))(
  ( (Nil!29411) (Cons!29410 (h!30619 (_ BitVec 64)) (t!42985 List!29414)) )
))
(declare-fun arrayNoDuplicates!0 (array!85459 (_ BitVec 32) List!29414) Bool)

(assert (=> b!1289787 (= res!856880 (arrayNoDuplicates!0 _keys!1741 #b00000000000000000000000000000000 Nil!29411))))

(declare-fun b!1289788 () Bool)

(declare-fun res!856881 () Bool)

(assert (=> b!1289788 (=> (not res!856881) (not e!736416))))

(declare-fun from!2144 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1289788 (= res!856881 (not (validKeyInArray!0 (select (arr!41226 _keys!1741) from!2144))))))

(declare-fun res!856879 () Bool)

(assert (=> start!109136 (=> (not res!856879) (not e!736416))))

(declare-fun mask!2175 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!109136 (= res!856879 (validMask!0 mask!2175))))

(assert (=> start!109136 e!736416))

(declare-fun tp_is_empty!34229 () Bool)

(assert (=> start!109136 tp_is_empty!34229))

(assert (=> start!109136 true))

(declare-fun e!736417 () Bool)

(declare-fun array_inv!31223 (array!85457) Bool)

(assert (=> start!109136 (and (array_inv!31223 _values!1445) e!736417)))

(declare-fun array_inv!31224 (array!85459) Bool)

(assert (=> start!109136 (array_inv!31224 _keys!1741)))

(assert (=> start!109136 tp!100887))

(declare-fun b!1289789 () Bool)

(declare-fun res!856877 () Bool)

(assert (=> b!1289789 (=> (not res!856877) (not e!736416))))

(declare-fun extraKeys!1366 () (_ BitVec 32))

(assert (=> b!1289789 (= res!856877 (and (= (size!41776 _values!1445) (bvadd #b00000000000000000000000000000001 mask!2175)) (= (size!41777 _keys!1741) (size!41776 _values!1445)) (bvsge mask!2175 #b00000000000000000000000000000000) (bvsge extraKeys!1366 #b00000000000000000000000000000000) (bvsle extraKeys!1366 #b00000000000000000000000000000011)))))

(declare-fun b!1289790 () Bool)

(declare-fun res!856873 () Bool)

(assert (=> b!1289790 (=> (not res!856873) (not e!736416))))

(assert (=> b!1289790 (= res!856873 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!41777 _keys!1741))))))

(declare-fun b!1289791 () Bool)

(declare-fun res!856875 () Bool)

(assert (=> b!1289791 (=> (not res!856875) (not e!736416))))

(declare-fun minValue!1387 () V!50741)

(declare-fun zeroValue!1387 () V!50741)

(declare-fun defaultEntry!1448 () Int)

(declare-fun k!1205 () (_ BitVec 64))

(declare-datatypes ((tuple2!22216 0))(
  ( (tuple2!22217 (_1!11118 (_ BitVec 64)) (_2!11118 V!50741)) )
))
(declare-datatypes ((List!29415 0))(
  ( (Nil!29412) (Cons!29411 (h!30620 tuple2!22216) (t!42986 List!29415)) )
))
(declare-datatypes ((ListLongMap!19885 0))(
  ( (ListLongMap!19886 (toList!9958 List!29415)) )
))
(declare-fun contains!8014 (ListLongMap!19885 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!4960 (array!85459 array!85457 (_ BitVec 32) (_ BitVec 32) V!50741 V!50741 (_ BitVec 32) Int) ListLongMap!19885)

(assert (=> b!1289791 (= res!856875 (contains!8014 (getCurrentListMap!4960 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) k!1205))))

(declare-fun b!1289792 () Bool)

(declare-fun res!856874 () Bool)

(assert (=> b!1289792 (=> (not res!856874) (not e!736416))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!85459 (_ BitVec 32)) Bool)

(assert (=> b!1289792 (= res!856874 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1741 mask!2175))))

(declare-fun b!1289793 () Bool)

(declare-fun res!856878 () Bool)

(assert (=> b!1289793 (=> (not res!856878) (not e!736416))))

(assert (=> b!1289793 (= res!856878 (and (not (= k!1205 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1205 #b1000000000000000000000000000000000000000000000000000000000000000)) (bvsge (bvadd #b00000000000000000000000000000001 from!2144) (size!41777 _keys!1741))))))

(declare-fun b!1289794 () Bool)

(declare-fun e!736412 () Bool)

(assert (=> b!1289794 (= e!736416 (not e!736412))))

(declare-fun res!856876 () Bool)

(assert (=> b!1289794 (=> res!856876 e!736412)))

(assert (=> b!1289794 (= res!856876 (or (= (bvand extraKeys!1366 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (= (bvand extraKeys!1366 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(assert (=> b!1289794 (not (contains!8014 (ListLongMap!19886 Nil!29412) k!1205))))

(declare-datatypes ((Unit!42607 0))(
  ( (Unit!42608) )
))
(declare-fun lt!578342 () Unit!42607)

(declare-fun emptyContainsNothing!66 ((_ BitVec 64)) Unit!42607)

(assert (=> b!1289794 (= lt!578342 (emptyContainsNothing!66 k!1205))))

(declare-fun b!1289795 () Bool)

(declare-fun e!736413 () Bool)

(assert (=> b!1289795 (= e!736413 tp_is_empty!34229)))

(declare-fun b!1289796 () Bool)

(assert (=> b!1289796 (= e!736415 tp_is_empty!34229)))

(declare-fun b!1289797 () Bool)

(assert (=> b!1289797 (= e!736412 true)))

(declare-fun lt!578343 () ListLongMap!19885)

(declare-fun +!4328 (ListLongMap!19885 tuple2!22216) ListLongMap!19885)

(assert (=> b!1289797 (not (contains!8014 (+!4328 lt!578343 (tuple2!22217 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387)) k!1205))))

(declare-fun lt!578344 () Unit!42607)

(declare-fun addStillNotContains!373 (ListLongMap!19885 (_ BitVec 64) V!50741 (_ BitVec 64)) Unit!42607)

(assert (=> b!1289797 (= lt!578344 (addStillNotContains!373 lt!578343 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387 k!1205))))

(assert (=> b!1289797 (not (contains!8014 (+!4328 lt!578343 (tuple2!22217 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387)) k!1205))))

(declare-fun lt!578341 () Unit!42607)

(assert (=> b!1289797 (= lt!578341 (addStillNotContains!373 lt!578343 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387 k!1205))))

(declare-fun getCurrentListMapNoExtraKeys!6040 (array!85459 array!85457 (_ BitVec 32) (_ BitVec 32) V!50741 V!50741 (_ BitVec 32) Int) ListLongMap!19885)

(assert (=> b!1289797 (= lt!578343 (getCurrentListMapNoExtraKeys!6040 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448))))

(declare-fun b!1289798 () Bool)

(assert (=> b!1289798 (= e!736417 (and e!736413 mapRes!52904))))

(declare-fun condMapEmpty!52904 () Bool)

(declare-fun mapDefault!52904 () ValueCell!16216)

