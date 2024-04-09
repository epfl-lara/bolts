; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!108736 () Bool)

(assert start!108736)

(declare-fun b_free!28213 () Bool)

(declare-fun b_next!28213 () Bool)

(assert (=> start!108736 (= b_free!28213 (not b_next!28213))))

(declare-fun tp!99756 () Bool)

(declare-fun b_and!46289 () Bool)

(assert (=> start!108736 (= tp!99756 b_and!46289)))

(declare-fun b!1283174 () Bool)

(declare-fun e!733132 () Bool)

(declare-fun tp_is_empty!33853 () Bool)

(assert (=> b!1283174 (= e!733132 tp_is_empty!33853)))

(declare-fun res!852444 () Bool)

(declare-fun e!733135 () Bool)

(assert (=> start!108736 (=> (not res!852444) (not e!733135))))

(declare-fun mask!2175 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!108736 (= res!852444 (validMask!0 mask!2175))))

(assert (=> start!108736 e!733135))

(assert (=> start!108736 tp_is_empty!33853))

(assert (=> start!108736 true))

(declare-datatypes ((V!50241 0))(
  ( (V!50242 (val!17001 Int)) )
))
(declare-datatypes ((ValueCell!16028 0))(
  ( (ValueCellFull!16028 (v!19601 V!50241)) (EmptyCell!16028) )
))
(declare-datatypes ((array!84725 0))(
  ( (array!84726 (arr!40860 (Array (_ BitVec 32) ValueCell!16028)) (size!41411 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!84725)

(declare-fun e!733133 () Bool)

(declare-fun array_inv!30977 (array!84725) Bool)

(assert (=> start!108736 (and (array_inv!30977 _values!1445) e!733133)))

(declare-datatypes ((array!84727 0))(
  ( (array!84728 (arr!40861 (Array (_ BitVec 32) (_ BitVec 64))) (size!41412 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!84727)

(declare-fun array_inv!30978 (array!84727) Bool)

(assert (=> start!108736 (array_inv!30978 _keys!1741)))

(assert (=> start!108736 tp!99756))

(declare-fun b!1283175 () Bool)

(declare-fun res!852448 () Bool)

(assert (=> b!1283175 (=> (not res!852448) (not e!733135))))

(declare-fun extraKeys!1366 () (_ BitVec 32))

(assert (=> b!1283175 (= res!852448 (and (not (= (bvand extraKeys!1366 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1366 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun mapIsEmpty!52337 () Bool)

(declare-fun mapRes!52337 () Bool)

(assert (=> mapIsEmpty!52337 mapRes!52337))

(declare-fun b!1283176 () Bool)

(declare-fun res!852442 () Bool)

(assert (=> b!1283176 (=> (not res!852442) (not e!733135))))

(declare-fun from!2144 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1283176 (= res!852442 (validKeyInArray!0 (select (arr!40861 _keys!1741) from!2144)))))

(declare-fun b!1283177 () Bool)

(declare-fun e!733131 () Bool)

(assert (=> b!1283177 (= e!733131 tp_is_empty!33853)))

(declare-fun mapNonEmpty!52337 () Bool)

(declare-fun tp!99755 () Bool)

(assert (=> mapNonEmpty!52337 (= mapRes!52337 (and tp!99755 e!733132))))

(declare-fun mapRest!52337 () (Array (_ BitVec 32) ValueCell!16028))

(declare-fun mapValue!52337 () ValueCell!16028)

(declare-fun mapKey!52337 () (_ BitVec 32))

(assert (=> mapNonEmpty!52337 (= (arr!40860 _values!1445) (store mapRest!52337 mapKey!52337 mapValue!52337))))

(declare-fun b!1283178 () Bool)

(declare-fun res!852449 () Bool)

(assert (=> b!1283178 (=> (not res!852449) (not e!733135))))

(assert (=> b!1283178 (= res!852449 (and (= (size!41411 _values!1445) (bvadd #b00000000000000000000000000000001 mask!2175)) (= (size!41412 _keys!1741) (size!41411 _values!1445)) (bvsge mask!2175 #b00000000000000000000000000000000) (bvsge extraKeys!1366 #b00000000000000000000000000000000) (bvsle extraKeys!1366 #b00000000000000000000000000000011)))))

(declare-fun b!1283179 () Bool)

(declare-fun res!852446 () Bool)

(assert (=> b!1283179 (=> (not res!852446) (not e!733135))))

(declare-datatypes ((List!29124 0))(
  ( (Nil!29121) (Cons!29120 (h!30329 (_ BitVec 64)) (t!42675 List!29124)) )
))
(declare-fun arrayNoDuplicates!0 (array!84727 (_ BitVec 32) List!29124) Bool)

(assert (=> b!1283179 (= res!852446 (arrayNoDuplicates!0 _keys!1741 #b00000000000000000000000000000000 Nil!29121))))

(declare-fun b!1283180 () Bool)

(assert (=> b!1283180 (= e!733135 (not true))))

(declare-datatypes ((tuple2!21914 0))(
  ( (tuple2!21915 (_1!10967 (_ BitVec 64)) (_2!10967 V!50241)) )
))
(declare-datatypes ((List!29125 0))(
  ( (Nil!29122) (Cons!29121 (h!30330 tuple2!21914) (t!42676 List!29125)) )
))
(declare-datatypes ((ListLongMap!19583 0))(
  ( (ListLongMap!19584 (toList!9807 List!29125)) )
))
(declare-fun lt!576564 () ListLongMap!19583)

(declare-fun k!1205 () (_ BitVec 64))

(declare-fun contains!7862 (ListLongMap!19583 (_ BitVec 64)) Bool)

(assert (=> b!1283180 (contains!7862 lt!576564 k!1205)))

(declare-fun minValue!1387 () V!50241)

(declare-datatypes ((Unit!42405 0))(
  ( (Unit!42406) )
))
(declare-fun lt!576563 () Unit!42405)

(declare-fun lemmaInListMapAfterAddingDiffThenInBefore!4 ((_ BitVec 64) (_ BitVec 64) V!50241 ListLongMap!19583) Unit!42405)

(assert (=> b!1283180 (= lt!576563 (lemmaInListMapAfterAddingDiffThenInBefore!4 k!1205 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387 lt!576564))))

(declare-fun zeroValue!1387 () V!50241)

(declare-fun defaultEntry!1448 () Int)

(declare-fun +!4255 (ListLongMap!19583 tuple2!21914) ListLongMap!19583)

(declare-fun getCurrentListMapNoExtraKeys!5966 (array!84727 array!84725 (_ BitVec 32) (_ BitVec 32) V!50241 V!50241 (_ BitVec 32) Int) ListLongMap!19583)

(assert (=> b!1283180 (= lt!576564 (+!4255 (getCurrentListMapNoExtraKeys!5966 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) (tuple2!21915 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387)))))

(declare-fun b!1283181 () Bool)

(declare-fun res!852447 () Bool)

(assert (=> b!1283181 (=> (not res!852447) (not e!733135))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!84727 (_ BitVec 32)) Bool)

(assert (=> b!1283181 (= res!852447 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1741 mask!2175))))

(declare-fun b!1283182 () Bool)

(assert (=> b!1283182 (= e!733133 (and e!733131 mapRes!52337))))

(declare-fun condMapEmpty!52337 () Bool)

(declare-fun mapDefault!52337 () ValueCell!16028)

