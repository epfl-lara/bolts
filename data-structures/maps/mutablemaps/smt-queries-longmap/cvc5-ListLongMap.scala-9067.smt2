; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!109222 () Bool)

(assert start!109222)

(declare-fun b_free!28675 () Bool)

(declare-fun b_next!28675 () Bool)

(assert (=> start!109222 (= b_free!28675 (not b_next!28675))))

(declare-fun tp!101144 () Bool)

(declare-fun b_and!46775 () Bool)

(assert (=> start!109222 (= tp!101144 b_and!46775)))

(declare-fun b!1291335 () Bool)

(declare-fun res!858041 () Bool)

(declare-fun e!737191 () Bool)

(assert (=> b!1291335 (=> (not res!858041) (not e!737191))))

(declare-datatypes ((array!85625 0))(
  ( (array!85626 (arr!41309 (Array (_ BitVec 32) (_ BitVec 64))) (size!41860 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!85625)

(declare-fun from!2144 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1291335 (= res!858041 (not (validKeyInArray!0 (select (arr!41309 _keys!1741) from!2144))))))

(declare-fun mapNonEmpty!53033 () Bool)

(declare-fun mapRes!53033 () Bool)

(declare-fun tp!101145 () Bool)

(declare-fun e!737187 () Bool)

(assert (=> mapNonEmpty!53033 (= mapRes!53033 (and tp!101145 e!737187))))

(declare-datatypes ((V!50857 0))(
  ( (V!50858 (val!17232 Int)) )
))
(declare-datatypes ((ValueCell!16259 0))(
  ( (ValueCellFull!16259 (v!19833 V!50857)) (EmptyCell!16259) )
))
(declare-datatypes ((array!85627 0))(
  ( (array!85628 (arr!41310 (Array (_ BitVec 32) ValueCell!16259)) (size!41861 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!85627)

(declare-fun mapValue!53033 () ValueCell!16259)

(declare-fun mapKey!53033 () (_ BitVec 32))

(declare-fun mapRest!53033 () (Array (_ BitVec 32) ValueCell!16259))

(assert (=> mapNonEmpty!53033 (= (arr!41310 _values!1445) (store mapRest!53033 mapKey!53033 mapValue!53033))))

(declare-fun b!1291336 () Bool)

(declare-fun e!737190 () Bool)

(declare-fun tp_is_empty!34315 () Bool)

(assert (=> b!1291336 (= e!737190 tp_is_empty!34315)))

(declare-fun b!1291337 () Bool)

(declare-fun res!858042 () Bool)

(assert (=> b!1291337 (=> (not res!858042) (not e!737191))))

(declare-fun mask!2175 () (_ BitVec 32))

(declare-fun extraKeys!1366 () (_ BitVec 32))

(assert (=> b!1291337 (= res!858042 (and (= (size!41861 _values!1445) (bvadd #b00000000000000000000000000000001 mask!2175)) (= (size!41860 _keys!1741) (size!41861 _values!1445)) (bvsge mask!2175 #b00000000000000000000000000000000) (bvsge extraKeys!1366 #b00000000000000000000000000000000) (bvsle extraKeys!1366 #b00000000000000000000000000000011)))))

(declare-fun b!1291338 () Bool)

(declare-fun res!858035 () Bool)

(assert (=> b!1291338 (=> (not res!858035) (not e!737191))))

(declare-fun k!1205 () (_ BitVec 64))

(assert (=> b!1291338 (= res!858035 (and (not (= k!1205 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1205 #b1000000000000000000000000000000000000000000000000000000000000000)) (bvsge (bvadd #b00000000000000000000000000000001 from!2144) (size!41860 _keys!1741))))))

(declare-fun b!1291339 () Bool)

(declare-fun res!858038 () Bool)

(assert (=> b!1291339 (=> (not res!858038) (not e!737191))))

(assert (=> b!1291339 (= res!858038 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!41860 _keys!1741))))))

(declare-fun b!1291340 () Bool)

(declare-fun res!858040 () Bool)

(assert (=> b!1291340 (=> (not res!858040) (not e!737191))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!85625 (_ BitVec 32)) Bool)

(assert (=> b!1291340 (= res!858040 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1741 mask!2175))))

(declare-fun b!1291341 () Bool)

(declare-fun e!737189 () Bool)

(assert (=> b!1291341 (= e!737189 true)))

(assert (=> b!1291341 false))

(declare-fun minValue!1387 () V!50857)

(declare-datatypes ((Unit!42679 0))(
  ( (Unit!42680) )
))
(declare-fun lt!579063 () Unit!42679)

(declare-datatypes ((tuple2!22290 0))(
  ( (tuple2!22291 (_1!11155 (_ BitVec 64)) (_2!11155 V!50857)) )
))
(declare-datatypes ((List!29482 0))(
  ( (Nil!29479) (Cons!29478 (h!30687 tuple2!22290) (t!43053 List!29482)) )
))
(declare-datatypes ((ListLongMap!19959 0))(
  ( (ListLongMap!19960 (toList!9995 List!29482)) )
))
(declare-fun lt!579064 () ListLongMap!19959)

(declare-fun lemmaInListMapAfterAddingDiffThenInBefore!52 ((_ BitVec 64) (_ BitVec 64) V!50857 ListLongMap!19959) Unit!42679)

(assert (=> b!1291341 (= lt!579063 (lemmaInListMapAfterAddingDiffThenInBefore!52 k!1205 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387 lt!579064))))

(declare-fun lt!579060 () ListLongMap!19959)

(declare-fun contains!8051 (ListLongMap!19959 (_ BitVec 64)) Bool)

(declare-fun +!4357 (ListLongMap!19959 tuple2!22290) ListLongMap!19959)

(assert (=> b!1291341 (not (contains!8051 (+!4357 lt!579060 (tuple2!22291 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387)) k!1205))))

(declare-fun lt!579059 () Unit!42679)

(declare-fun addStillNotContains!402 (ListLongMap!19959 (_ BitVec 64) V!50857 (_ BitVec 64)) Unit!42679)

(assert (=> b!1291341 (= lt!579059 (addStillNotContains!402 lt!579060 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387 k!1205))))

(assert (=> b!1291341 (not (contains!8051 lt!579064 k!1205))))

(declare-fun zeroValue!1387 () V!50857)

(assert (=> b!1291341 (= lt!579064 (+!4357 lt!579060 (tuple2!22291 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387)))))

(declare-fun lt!579062 () Unit!42679)

(assert (=> b!1291341 (= lt!579062 (addStillNotContains!402 lt!579060 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387 k!1205))))

(declare-fun defaultEntry!1448 () Int)

(declare-fun getCurrentListMapNoExtraKeys!6069 (array!85625 array!85627 (_ BitVec 32) (_ BitVec 32) V!50857 V!50857 (_ BitVec 32) Int) ListLongMap!19959)

(assert (=> b!1291341 (= lt!579060 (getCurrentListMapNoExtraKeys!6069 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448))))

(declare-fun b!1291342 () Bool)

(declare-fun res!858037 () Bool)

(assert (=> b!1291342 (=> (not res!858037) (not e!737191))))

(declare-datatypes ((List!29483 0))(
  ( (Nil!29480) (Cons!29479 (h!30688 (_ BitVec 64)) (t!43054 List!29483)) )
))
(declare-fun arrayNoDuplicates!0 (array!85625 (_ BitVec 32) List!29483) Bool)

(assert (=> b!1291342 (= res!858037 (arrayNoDuplicates!0 _keys!1741 #b00000000000000000000000000000000 Nil!29480))))

(declare-fun b!1291343 () Bool)

(declare-fun e!737188 () Bool)

(assert (=> b!1291343 (= e!737188 (and e!737190 mapRes!53033))))

(declare-fun condMapEmpty!53033 () Bool)

(declare-fun mapDefault!53033 () ValueCell!16259)

