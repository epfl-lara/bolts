; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!109216 () Bool)

(assert start!109216)

(declare-fun b_free!28669 () Bool)

(declare-fun b_next!28669 () Bool)

(assert (=> start!109216 (= b_free!28669 (not b_next!28669))))

(declare-fun tp!101127 () Bool)

(declare-fun b_and!46769 () Bool)

(assert (=> start!109216 (= tp!101127 b_and!46769)))

(declare-fun mapIsEmpty!53024 () Bool)

(declare-fun mapRes!53024 () Bool)

(assert (=> mapIsEmpty!53024 mapRes!53024))

(declare-fun b!1291227 () Bool)

(declare-fun res!857957 () Bool)

(declare-fun e!737132 () Bool)

(assert (=> b!1291227 (=> (not res!857957) (not e!737132))))

(declare-datatypes ((array!85613 0))(
  ( (array!85614 (arr!41303 (Array (_ BitVec 32) (_ BitVec 64))) (size!41854 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!85613)

(declare-datatypes ((List!29476 0))(
  ( (Nil!29473) (Cons!29472 (h!30681 (_ BitVec 64)) (t!43047 List!29476)) )
))
(declare-fun arrayNoDuplicates!0 (array!85613 (_ BitVec 32) List!29476) Bool)

(assert (=> b!1291227 (= res!857957 (arrayNoDuplicates!0 _keys!1741 #b00000000000000000000000000000000 Nil!29473))))

(declare-fun b!1291228 () Bool)

(declare-fun e!737133 () Bool)

(declare-fun tp_is_empty!34309 () Bool)

(assert (=> b!1291228 (= e!737133 tp_is_empty!34309)))

(declare-fun b!1291229 () Bool)

(declare-fun res!857959 () Bool)

(assert (=> b!1291229 (=> (not res!857959) (not e!737132))))

(declare-fun mask!2175 () (_ BitVec 32))

(declare-datatypes ((V!50849 0))(
  ( (V!50850 (val!17229 Int)) )
))
(declare-datatypes ((ValueCell!16256 0))(
  ( (ValueCellFull!16256 (v!19830 V!50849)) (EmptyCell!16256) )
))
(declare-datatypes ((array!85615 0))(
  ( (array!85616 (arr!41304 (Array (_ BitVec 32) ValueCell!16256)) (size!41855 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!85615)

(declare-fun extraKeys!1366 () (_ BitVec 32))

(assert (=> b!1291229 (= res!857959 (and (= (size!41855 _values!1445) (bvadd #b00000000000000000000000000000001 mask!2175)) (= (size!41854 _keys!1741) (size!41855 _values!1445)) (bvsge mask!2175 #b00000000000000000000000000000000) (bvsge extraKeys!1366 #b00000000000000000000000000000000) (bvsle extraKeys!1366 #b00000000000000000000000000000011)))))

(declare-fun b!1291230 () Bool)

(declare-fun res!857954 () Bool)

(assert (=> b!1291230 (=> (not res!857954) (not e!737132))))

(declare-fun from!2144 () (_ BitVec 32))

(assert (=> b!1291230 (= res!857954 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!41854 _keys!1741))))))

(declare-fun mapNonEmpty!53024 () Bool)

(declare-fun tp!101126 () Bool)

(declare-fun e!737134 () Bool)

(assert (=> mapNonEmpty!53024 (= mapRes!53024 (and tp!101126 e!737134))))

(declare-fun mapValue!53024 () ValueCell!16256)

(declare-fun mapRest!53024 () (Array (_ BitVec 32) ValueCell!16256))

(declare-fun mapKey!53024 () (_ BitVec 32))

(assert (=> mapNonEmpty!53024 (= (arr!41304 _values!1445) (store mapRest!53024 mapKey!53024 mapValue!53024))))

(declare-fun b!1291231 () Bool)

(declare-fun e!737135 () Bool)

(assert (=> b!1291231 (= e!737135 true)))

(assert (=> b!1291231 false))

(declare-fun minValue!1387 () V!50849)

(declare-fun k!1205 () (_ BitVec 64))

(declare-datatypes ((tuple2!22284 0))(
  ( (tuple2!22285 (_1!11152 (_ BitVec 64)) (_2!11152 V!50849)) )
))
(declare-datatypes ((List!29477 0))(
  ( (Nil!29474) (Cons!29473 (h!30682 tuple2!22284) (t!43048 List!29477)) )
))
(declare-datatypes ((ListLongMap!19953 0))(
  ( (ListLongMap!19954 (toList!9992 List!29477)) )
))
(declare-fun lt!579008 () ListLongMap!19953)

(declare-datatypes ((Unit!42673 0))(
  ( (Unit!42674) )
))
(declare-fun lt!579006 () Unit!42673)

(declare-fun lemmaInListMapAfterAddingDiffThenInBefore!50 ((_ BitVec 64) (_ BitVec 64) V!50849 ListLongMap!19953) Unit!42673)

(assert (=> b!1291231 (= lt!579006 (lemmaInListMapAfterAddingDiffThenInBefore!50 k!1205 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387 lt!579008))))

(declare-fun lt!579005 () ListLongMap!19953)

(declare-fun contains!8048 (ListLongMap!19953 (_ BitVec 64)) Bool)

(declare-fun +!4355 (ListLongMap!19953 tuple2!22284) ListLongMap!19953)

(assert (=> b!1291231 (not (contains!8048 (+!4355 lt!579005 (tuple2!22285 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387)) k!1205))))

(declare-fun lt!579009 () Unit!42673)

(declare-fun addStillNotContains!400 (ListLongMap!19953 (_ BitVec 64) V!50849 (_ BitVec 64)) Unit!42673)

(assert (=> b!1291231 (= lt!579009 (addStillNotContains!400 lt!579005 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387 k!1205))))

(assert (=> b!1291231 (not (contains!8048 lt!579008 k!1205))))

(declare-fun zeroValue!1387 () V!50849)

(assert (=> b!1291231 (= lt!579008 (+!4355 lt!579005 (tuple2!22285 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387)))))

(declare-fun lt!579007 () Unit!42673)

(assert (=> b!1291231 (= lt!579007 (addStillNotContains!400 lt!579005 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387 k!1205))))

(declare-fun defaultEntry!1448 () Int)

(declare-fun getCurrentListMapNoExtraKeys!6067 (array!85613 array!85615 (_ BitVec 32) (_ BitVec 32) V!50849 V!50849 (_ BitVec 32) Int) ListLongMap!19953)

(assert (=> b!1291231 (= lt!579005 (getCurrentListMapNoExtraKeys!6067 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448))))

(declare-fun b!1291232 () Bool)

(declare-fun e!737136 () Bool)

(assert (=> b!1291232 (= e!737136 (and e!737133 mapRes!53024))))

(declare-fun condMapEmpty!53024 () Bool)

(declare-fun mapDefault!53024 () ValueCell!16256)

