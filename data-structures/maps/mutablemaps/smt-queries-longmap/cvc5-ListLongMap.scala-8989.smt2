; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!108730 () Bool)

(assert start!108730)

(declare-fun b_free!28207 () Bool)

(declare-fun b_next!28207 () Bool)

(assert (=> start!108730 (= b_free!28207 (not b_next!28207))))

(declare-fun tp!99738 () Bool)

(declare-fun b_and!46283 () Bool)

(assert (=> start!108730 (= tp!99738 b_and!46283)))

(declare-fun b!1283066 () Bool)

(declare-fun res!852364 () Bool)

(declare-fun e!733086 () Bool)

(assert (=> b!1283066 (=> (not res!852364) (not e!733086))))

(declare-fun mask!2175 () (_ BitVec 32))

(declare-datatypes ((V!50233 0))(
  ( (V!50234 (val!16998 Int)) )
))
(declare-datatypes ((ValueCell!16025 0))(
  ( (ValueCellFull!16025 (v!19598 V!50233)) (EmptyCell!16025) )
))
(declare-datatypes ((array!84713 0))(
  ( (array!84714 (arr!40854 (Array (_ BitVec 32) ValueCell!16025)) (size!41405 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!84713)

(declare-fun extraKeys!1366 () (_ BitVec 32))

(declare-datatypes ((array!84715 0))(
  ( (array!84716 (arr!40855 (Array (_ BitVec 32) (_ BitVec 64))) (size!41406 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!84715)

(assert (=> b!1283066 (= res!852364 (and (= (size!41405 _values!1445) (bvadd #b00000000000000000000000000000001 mask!2175)) (= (size!41406 _keys!1741) (size!41405 _values!1445)) (bvsge mask!2175 #b00000000000000000000000000000000) (bvsge extraKeys!1366 #b00000000000000000000000000000000) (bvsle extraKeys!1366 #b00000000000000000000000000000011)))))

(declare-fun b!1283067 () Bool)

(assert (=> b!1283067 (= e!733086 (not true))))

(declare-datatypes ((tuple2!21910 0))(
  ( (tuple2!21911 (_1!10965 (_ BitVec 64)) (_2!10965 V!50233)) )
))
(declare-datatypes ((List!29121 0))(
  ( (Nil!29118) (Cons!29117 (h!30326 tuple2!21910) (t!42672 List!29121)) )
))
(declare-datatypes ((ListLongMap!19579 0))(
  ( (ListLongMap!19580 (toList!9805 List!29121)) )
))
(declare-fun lt!576546 () ListLongMap!19579)

(declare-fun k!1205 () (_ BitVec 64))

(declare-fun contains!7860 (ListLongMap!19579 (_ BitVec 64)) Bool)

(assert (=> b!1283067 (contains!7860 lt!576546 k!1205)))

(declare-fun minValue!1387 () V!50233)

(declare-datatypes ((Unit!42401 0))(
  ( (Unit!42402) )
))
(declare-fun lt!576545 () Unit!42401)

(declare-fun lemmaInListMapAfterAddingDiffThenInBefore!2 ((_ BitVec 64) (_ BitVec 64) V!50233 ListLongMap!19579) Unit!42401)

(assert (=> b!1283067 (= lt!576545 (lemmaInListMapAfterAddingDiffThenInBefore!2 k!1205 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387 lt!576546))))

(declare-fun zeroValue!1387 () V!50233)

(declare-fun from!2144 () (_ BitVec 32))

(declare-fun defaultEntry!1448 () Int)

(declare-fun +!4253 (ListLongMap!19579 tuple2!21910) ListLongMap!19579)

(declare-fun getCurrentListMapNoExtraKeys!5964 (array!84715 array!84713 (_ BitVec 32) (_ BitVec 32) V!50233 V!50233 (_ BitVec 32) Int) ListLongMap!19579)

(assert (=> b!1283067 (= lt!576546 (+!4253 (getCurrentListMapNoExtraKeys!5964 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) (tuple2!21911 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387)))))

(declare-fun b!1283068 () Bool)

(declare-fun res!852366 () Bool)

(assert (=> b!1283068 (=> (not res!852366) (not e!733086))))

(assert (=> b!1283068 (= res!852366 (and (not (= k!1205 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1205 #b1000000000000000000000000000000000000000000000000000000000000000)) (bvsge (bvadd #b00000000000000000000000000000001 from!2144) (size!41406 _keys!1741))))))

(declare-fun b!1283069 () Bool)

(declare-fun res!852367 () Bool)

(assert (=> b!1283069 (=> (not res!852367) (not e!733086))))

(declare-fun getCurrentListMap!4824 (array!84715 array!84713 (_ BitVec 32) (_ BitVec 32) V!50233 V!50233 (_ BitVec 32) Int) ListLongMap!19579)

(assert (=> b!1283069 (= res!852367 (contains!7860 (getCurrentListMap!4824 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) k!1205))))

(declare-fun b!1283070 () Bool)

(declare-fun res!852369 () Bool)

(assert (=> b!1283070 (=> (not res!852369) (not e!733086))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!84715 (_ BitVec 32)) Bool)

(assert (=> b!1283070 (= res!852369 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1741 mask!2175))))

(declare-fun mapNonEmpty!52328 () Bool)

(declare-fun mapRes!52328 () Bool)

(declare-fun tp!99737 () Bool)

(declare-fun e!733090 () Bool)

(assert (=> mapNonEmpty!52328 (= mapRes!52328 (and tp!99737 e!733090))))

(declare-fun mapRest!52328 () (Array (_ BitVec 32) ValueCell!16025))

(declare-fun mapValue!52328 () ValueCell!16025)

(declare-fun mapKey!52328 () (_ BitVec 32))

(assert (=> mapNonEmpty!52328 (= (arr!40854 _values!1445) (store mapRest!52328 mapKey!52328 mapValue!52328))))

(declare-fun res!852368 () Bool)

(assert (=> start!108730 (=> (not res!852368) (not e!733086))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!108730 (= res!852368 (validMask!0 mask!2175))))

(assert (=> start!108730 e!733086))

(declare-fun tp_is_empty!33847 () Bool)

(assert (=> start!108730 tp_is_empty!33847))

(assert (=> start!108730 true))

(declare-fun e!733089 () Bool)

(declare-fun array_inv!30973 (array!84713) Bool)

(assert (=> start!108730 (and (array_inv!30973 _values!1445) e!733089)))

(declare-fun array_inv!30974 (array!84715) Bool)

(assert (=> start!108730 (array_inv!30974 _keys!1741)))

(assert (=> start!108730 tp!99738))

(declare-fun b!1283071 () Bool)

(declare-fun res!852362 () Bool)

(assert (=> b!1283071 (=> (not res!852362) (not e!733086))))

(assert (=> b!1283071 (= res!852362 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!41406 _keys!1741))))))

(declare-fun b!1283072 () Bool)

(declare-fun e!733088 () Bool)

(assert (=> b!1283072 (= e!733088 tp_is_empty!33847)))

(declare-fun b!1283073 () Bool)

(assert (=> b!1283073 (= e!733089 (and e!733088 mapRes!52328))))

(declare-fun condMapEmpty!52328 () Bool)

(declare-fun mapDefault!52328 () ValueCell!16025)

