; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!108594 () Bool)

(assert start!108594)

(declare-fun b_free!28105 () Bool)

(declare-fun b_next!28105 () Bool)

(assert (=> start!108594 (= b_free!28105 (not b_next!28105))))

(declare-fun tp!99426 () Bool)

(declare-fun b_and!46175 () Bool)

(assert (=> start!108594 (= tp!99426 b_and!46175)))

(declare-fun b!1281388 () Bool)

(declare-fun res!851296 () Bool)

(declare-fun e!732140 () Bool)

(assert (=> b!1281388 (=> (not res!851296) (not e!732140))))

(declare-datatypes ((V!50097 0))(
  ( (V!50098 (val!16947 Int)) )
))
(declare-fun minValue!1387 () V!50097)

(declare-fun zeroValue!1387 () V!50097)

(declare-fun from!2144 () (_ BitVec 32))

(declare-datatypes ((ValueCell!15974 0))(
  ( (ValueCellFull!15974 (v!19545 V!50097)) (EmptyCell!15974) )
))
(declare-datatypes ((array!84513 0))(
  ( (array!84514 (arr!40756 (Array (_ BitVec 32) ValueCell!15974)) (size!41307 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!84513)

(declare-fun k!1205 () (_ BitVec 64))

(declare-fun extraKeys!1366 () (_ BitVec 32))

(declare-datatypes ((array!84515 0))(
  ( (array!84516 (arr!40757 (Array (_ BitVec 32) (_ BitVec 64))) (size!41308 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!84515)

(declare-fun defaultEntry!1448 () Int)

(declare-fun mask!2175 () (_ BitVec 32))

(declare-datatypes ((tuple2!21844 0))(
  ( (tuple2!21845 (_1!10932 (_ BitVec 64)) (_2!10932 V!50097)) )
))
(declare-datatypes ((List!29053 0))(
  ( (Nil!29050) (Cons!29049 (h!30258 tuple2!21844) (t!42600 List!29053)) )
))
(declare-datatypes ((ListLongMap!19513 0))(
  ( (ListLongMap!19514 (toList!9772 List!29053)) )
))
(declare-fun contains!7825 (ListLongMap!19513 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!4792 (array!84515 array!84513 (_ BitVec 32) (_ BitVec 32) V!50097 V!50097 (_ BitVec 32) Int) ListLongMap!19513)

(assert (=> b!1281388 (= res!851296 (contains!7825 (getCurrentListMap!4792 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) k!1205))))

(declare-fun b!1281389 () Bool)

(declare-fun e!732139 () Bool)

(assert (=> b!1281389 (= e!732139 true)))

(declare-fun arrayContainsKey!0 (array!84515 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1281389 (arrayContainsKey!0 _keys!1741 k!1205 (bvadd #b00000000000000000000000000000001 from!2144))))

(declare-datatypes ((Unit!42379 0))(
  ( (Unit!42380) )
))
(declare-fun lt!576178 () Unit!42379)

(declare-fun lemmaListMapContainsThenArrayContainsFrom!635 (array!84515 array!84513 (_ BitVec 32) (_ BitVec 32) V!50097 V!50097 (_ BitVec 64) (_ BitVec 32) Int) Unit!42379)

(assert (=> b!1281389 (= lt!576178 (lemmaListMapContainsThenArrayContainsFrom!635 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 k!1205 (bvadd #b00000000000000000000000000000001 from!2144) defaultEntry!1448))))

(declare-fun b!1281390 () Bool)

(declare-fun res!851297 () Bool)

(assert (=> b!1281390 (=> (not res!851297) (not e!732140))))

(assert (=> b!1281390 (= res!851297 (and (= (size!41307 _values!1445) (bvadd #b00000000000000000000000000000001 mask!2175)) (= (size!41308 _keys!1741) (size!41307 _values!1445)) (bvsge mask!2175 #b00000000000000000000000000000000) (bvsge extraKeys!1366 #b00000000000000000000000000000000) (bvsle extraKeys!1366 #b00000000000000000000000000000011)))))

(declare-fun b!1281391 () Bool)

(declare-fun e!732141 () Bool)

(declare-fun e!732142 () Bool)

(declare-fun mapRes!52169 () Bool)

(assert (=> b!1281391 (= e!732141 (and e!732142 mapRes!52169))))

(declare-fun condMapEmpty!52169 () Bool)

(declare-fun mapDefault!52169 () ValueCell!15974)

