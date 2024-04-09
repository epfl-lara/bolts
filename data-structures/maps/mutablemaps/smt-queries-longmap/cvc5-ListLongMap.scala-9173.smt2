; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!110364 () Bool)

(assert start!110364)

(declare-fun b_free!29311 () Bool)

(declare-fun b_next!29311 () Bool)

(assert (=> start!110364 (= b_free!29311 (not b_next!29311))))

(declare-fun tp!103102 () Bool)

(declare-fun b_and!47527 () Bool)

(assert (=> start!110364 (= tp!103102 b_and!47527)))

(declare-fun b!1305662 () Bool)

(declare-fun e!744804 () Bool)

(declare-fun tp_is_empty!34951 () Bool)

(assert (=> b!1305662 (= e!744804 tp_is_empty!34951)))

(declare-fun mapNonEmpty!54037 () Bool)

(declare-fun mapRes!54037 () Bool)

(declare-fun tp!103103 () Bool)

(assert (=> mapNonEmpty!54037 (= mapRes!54037 (and tp!103103 e!744804))))

(declare-datatypes ((V!51705 0))(
  ( (V!51706 (val!17550 Int)) )
))
(declare-datatypes ((ValueCell!16577 0))(
  ( (ValueCellFull!16577 (v!20173 V!51705)) (EmptyCell!16577) )
))
(declare-fun mapValue!54037 () ValueCell!16577)

(declare-fun mapKey!54037 () (_ BitVec 32))

(declare-datatypes ((array!86885 0))(
  ( (array!86886 (arr!41924 (Array (_ BitVec 32) ValueCell!16577)) (size!42475 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!86885)

(declare-fun mapRest!54037 () (Array (_ BitVec 32) ValueCell!16577))

(assert (=> mapNonEmpty!54037 (= (arr!41924 _values!1445) (store mapRest!54037 mapKey!54037 mapValue!54037))))

(declare-fun bm!64503 () Bool)

(declare-fun c!125430 () Bool)

(declare-datatypes ((tuple2!22814 0))(
  ( (tuple2!22815 (_1!11417 (_ BitVec 64)) (_2!11417 V!51705)) )
))
(declare-datatypes ((List!29961 0))(
  ( (Nil!29958) (Cons!29957 (h!31166 tuple2!22814) (t!43572 List!29961)) )
))
(declare-datatypes ((ListLongMap!20483 0))(
  ( (ListLongMap!20484 (toList!10257 List!29961)) )
))
(declare-fun lt!584628 () ListLongMap!20483)

(declare-fun lt!584625 () ListLongMap!20483)

(declare-fun k!1205 () (_ BitVec 64))

(declare-fun lt!584626 () ListLongMap!20483)

(declare-fun c!125431 () Bool)

(declare-fun call!64508 () Bool)

(declare-fun contains!8338 (ListLongMap!20483 (_ BitVec 64)) Bool)

(assert (=> bm!64503 (= call!64508 (contains!8338 (ite c!125431 lt!584626 (ite c!125430 lt!584628 lt!584625)) k!1205))))

(declare-fun zeroValue!1387 () V!51705)

(declare-fun bm!64504 () Bool)

(declare-datatypes ((Unit!43203 0))(
  ( (Unit!43204) )
))
(declare-fun call!64513 () Unit!43203)

(declare-fun minValue!1387 () V!51705)

(declare-fun addStillNotContains!498 (ListLongMap!20483 (_ BitVec 64) V!51705 (_ BitVec 64)) Unit!43203)

(assert (=> bm!64504 (= call!64513 (addStillNotContains!498 (ite c!125431 lt!584626 (ite c!125430 lt!584628 lt!584625)) (ite c!125431 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!125430 #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000)) (ite c!125431 minValue!1387 (ite c!125430 zeroValue!1387 minValue!1387)) k!1205))))

(declare-fun b!1305663 () Bool)

(declare-fun e!744807 () Unit!43203)

(declare-fun lt!584624 () Unit!43203)

(assert (=> b!1305663 (= e!744807 lt!584624)))

(declare-fun call!64506 () ListLongMap!20483)

(assert (=> b!1305663 (= lt!584626 call!64506)))

(declare-fun lt!584632 () Unit!43203)

(assert (=> b!1305663 (= lt!584632 (addStillNotContains!498 lt!584626 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387 k!1205))))

(declare-fun lt!584623 () ListLongMap!20483)

(declare-fun +!4474 (ListLongMap!20483 tuple2!22814) ListLongMap!20483)

(assert (=> b!1305663 (= lt!584623 (+!4474 lt!584626 (tuple2!22815 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387)))))

(declare-fun call!64515 () Bool)

(assert (=> b!1305663 (not call!64515)))

(declare-fun lt!584631 () Unit!43203)

(assert (=> b!1305663 (= lt!584631 call!64513)))

(declare-fun call!64509 () ListLongMap!20483)

(assert (=> b!1305663 (not (contains!8338 call!64509 k!1205))))

(declare-fun lt!584633 () Unit!43203)

(declare-fun lemmaInListMapAfterAddingDiffThenInBefore!94 ((_ BitVec 64) (_ BitVec 64) V!51705 ListLongMap!20483) Unit!43203)

(assert (=> b!1305663 (= lt!584633 (lemmaInListMapAfterAddingDiffThenInBefore!94 k!1205 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387 lt!584623))))

(assert (=> b!1305663 false))

(declare-fun call!64516 () Unit!43203)

(assert (=> b!1305663 (= lt!584624 call!64516)))

(declare-fun lt!584635 () Bool)

(assert (=> b!1305663 (= lt!584635 call!64508)))

(declare-fun b!1305664 () Bool)

(declare-fun res!867008 () Bool)

(declare-fun e!744803 () Bool)

(assert (=> b!1305664 (=> (not res!867008) (not e!744803))))

(declare-fun from!2144 () (_ BitVec 32))

(declare-datatypes ((array!86887 0))(
  ( (array!86888 (arr!41925 (Array (_ BitVec 32) (_ BitVec 64))) (size!42476 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!86887)

(assert (=> b!1305664 (= res!867008 (and (not (= k!1205 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1205 #b1000000000000000000000000000000000000000000000000000000000000000)) (bvsge (bvadd #b00000000000000000000000000000001 from!2144) (size!42476 _keys!1741))))))

(declare-fun mapIsEmpty!54037 () Bool)

(assert (=> mapIsEmpty!54037 mapRes!54037))

(declare-fun b!1305666 () Bool)

(declare-fun res!867006 () Bool)

(assert (=> b!1305666 (=> (not res!867006) (not e!744803))))

(declare-fun extraKeys!1366 () (_ BitVec 32))

(declare-fun defaultEntry!1448 () Int)

(declare-fun mask!2175 () (_ BitVec 32))

(declare-fun getCurrentListMap!5213 (array!86887 array!86885 (_ BitVec 32) (_ BitVec 32) V!51705 V!51705 (_ BitVec 32) Int) ListLongMap!20483)

(assert (=> b!1305666 (= res!867006 (contains!8338 (getCurrentListMap!5213 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) k!1205))))

(declare-fun bm!64505 () Bool)

(assert (=> bm!64505 (= call!64516 (lemmaInListMapAfterAddingDiffThenInBefore!94 k!1205 (ite (or c!125431 c!125430) #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000) (ite (or c!125431 c!125430) zeroValue!1387 minValue!1387) (ite c!125431 lt!584626 (ite c!125430 lt!584628 lt!584625))))))

(declare-fun b!1305667 () Bool)

(declare-fun e!744808 () Bool)

(declare-fun e!744805 () Bool)

(assert (=> b!1305667 (= e!744808 (and e!744805 mapRes!54037))))

(declare-fun condMapEmpty!54037 () Bool)

(declare-fun mapDefault!54037 () ValueCell!16577)

