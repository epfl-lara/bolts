; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!109232 () Bool)

(assert start!109232)

(declare-fun b_free!28685 () Bool)

(declare-fun b_next!28685 () Bool)

(assert (=> start!109232 (= b_free!28685 (not b_next!28685))))

(declare-fun tp!101175 () Bool)

(declare-fun b_and!46785 () Bool)

(assert (=> start!109232 (= tp!101175 b_and!46785)))

(declare-fun b!1291515 () Bool)

(declare-fun res!858170 () Bool)

(declare-fun e!737279 () Bool)

(assert (=> b!1291515 (=> (not res!858170) (not e!737279))))

(declare-fun from!2144 () (_ BitVec 32))

(declare-datatypes ((array!85645 0))(
  ( (array!85646 (arr!41319 (Array (_ BitVec 32) (_ BitVec 64))) (size!41870 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!85645)

(assert (=> b!1291515 (= res!858170 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!41870 _keys!1741))))))

(declare-fun b!1291516 () Bool)

(declare-fun res!858169 () Bool)

(assert (=> b!1291516 (=> (not res!858169) (not e!737279))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1291516 (= res!858169 (not (validKeyInArray!0 (select (arr!41319 _keys!1741) from!2144))))))

(declare-fun mapNonEmpty!53048 () Bool)

(declare-fun mapRes!53048 () Bool)

(declare-fun tp!101174 () Bool)

(declare-fun e!737278 () Bool)

(assert (=> mapNonEmpty!53048 (= mapRes!53048 (and tp!101174 e!737278))))

(declare-fun mapKey!53048 () (_ BitVec 32))

(declare-datatypes ((V!50869 0))(
  ( (V!50870 (val!17237 Int)) )
))
(declare-datatypes ((ValueCell!16264 0))(
  ( (ValueCellFull!16264 (v!19838 V!50869)) (EmptyCell!16264) )
))
(declare-fun mapRest!53048 () (Array (_ BitVec 32) ValueCell!16264))

(declare-datatypes ((array!85647 0))(
  ( (array!85648 (arr!41320 (Array (_ BitVec 32) ValueCell!16264)) (size!41871 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!85647)

(declare-fun mapValue!53048 () ValueCell!16264)

(assert (=> mapNonEmpty!53048 (= (arr!41320 _values!1445) (store mapRest!53048 mapKey!53048 mapValue!53048))))

(declare-fun b!1291517 () Bool)

(declare-fun e!737281 () Bool)

(assert (=> b!1291517 (= e!737281 true)))

(assert (=> b!1291517 false))

(declare-fun minValue!1387 () V!50869)

(declare-datatypes ((tuple2!22298 0))(
  ( (tuple2!22299 (_1!11159 (_ BitVec 64)) (_2!11159 V!50869)) )
))
(declare-datatypes ((List!29490 0))(
  ( (Nil!29487) (Cons!29486 (h!30695 tuple2!22298) (t!43061 List!29490)) )
))
(declare-datatypes ((ListLongMap!19967 0))(
  ( (ListLongMap!19968 (toList!9999 List!29490)) )
))
(declare-fun lt!579149 () ListLongMap!19967)

(declare-datatypes ((Unit!42687 0))(
  ( (Unit!42688) )
))
(declare-fun lt!579150 () Unit!42687)

(declare-fun k!1205 () (_ BitVec 64))

(declare-fun lemmaInListMapAfterAddingDiffThenInBefore!56 ((_ BitVec 64) (_ BitVec 64) V!50869 ListLongMap!19967) Unit!42687)

(assert (=> b!1291517 (= lt!579150 (lemmaInListMapAfterAddingDiffThenInBefore!56 k!1205 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387 lt!579149))))

(declare-fun lt!579153 () ListLongMap!19967)

(declare-fun contains!8055 (ListLongMap!19967 (_ BitVec 64)) Bool)

(declare-fun +!4361 (ListLongMap!19967 tuple2!22298) ListLongMap!19967)

(assert (=> b!1291517 (not (contains!8055 (+!4361 lt!579153 (tuple2!22299 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387)) k!1205))))

(declare-fun lt!579152 () Unit!42687)

(declare-fun addStillNotContains!406 (ListLongMap!19967 (_ BitVec 64) V!50869 (_ BitVec 64)) Unit!42687)

(assert (=> b!1291517 (= lt!579152 (addStillNotContains!406 lt!579153 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387 k!1205))))

(assert (=> b!1291517 (not (contains!8055 lt!579149 k!1205))))

(declare-fun zeroValue!1387 () V!50869)

(assert (=> b!1291517 (= lt!579149 (+!4361 lt!579153 (tuple2!22299 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387)))))

(declare-fun lt!579154 () Unit!42687)

(assert (=> b!1291517 (= lt!579154 (addStillNotContains!406 lt!579153 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387 k!1205))))

(declare-fun extraKeys!1366 () (_ BitVec 32))

(declare-fun defaultEntry!1448 () Int)

(declare-fun mask!2175 () (_ BitVec 32))

(declare-fun getCurrentListMapNoExtraKeys!6073 (array!85645 array!85647 (_ BitVec 32) (_ BitVec 32) V!50869 V!50869 (_ BitVec 32) Int) ListLongMap!19967)

(assert (=> b!1291517 (= lt!579153 (getCurrentListMapNoExtraKeys!6073 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448))))

(declare-fun mapIsEmpty!53048 () Bool)

(assert (=> mapIsEmpty!53048 mapRes!53048))

(declare-fun b!1291518 () Bool)

(declare-fun e!737277 () Bool)

(declare-fun e!737280 () Bool)

(assert (=> b!1291518 (= e!737277 (and e!737280 mapRes!53048))))

(declare-fun condMapEmpty!53048 () Bool)

(declare-fun mapDefault!53048 () ValueCell!16264)

