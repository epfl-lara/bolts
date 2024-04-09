; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!108758 () Bool)

(assert start!108758)

(declare-fun b_free!28235 () Bool)

(declare-fun b_next!28235 () Bool)

(assert (=> start!108758 (= b_free!28235 (not b_next!28235))))

(declare-fun tp!99822 () Bool)

(declare-fun b_and!46311 () Bool)

(assert (=> start!108758 (= tp!99822 b_and!46311)))

(declare-fun mapIsEmpty!52370 () Bool)

(declare-fun mapRes!52370 () Bool)

(assert (=> mapIsEmpty!52370 mapRes!52370))

(declare-fun b!1283570 () Bool)

(declare-fun e!733297 () Bool)

(assert (=> b!1283570 (= e!733297 (not true))))

(declare-datatypes ((V!50269 0))(
  ( (V!50270 (val!17012 Int)) )
))
(declare-datatypes ((tuple2!21932 0))(
  ( (tuple2!21933 (_1!10976 (_ BitVec 64)) (_2!10976 V!50269)) )
))
(declare-datatypes ((List!29141 0))(
  ( (Nil!29138) (Cons!29137 (h!30346 tuple2!21932) (t!42692 List!29141)) )
))
(declare-datatypes ((ListLongMap!19601 0))(
  ( (ListLongMap!19602 (toList!9816 List!29141)) )
))
(declare-fun lt!576630 () ListLongMap!19601)

(declare-fun k!1205 () (_ BitVec 64))

(declare-fun contains!7871 (ListLongMap!19601 (_ BitVec 64)) Bool)

(assert (=> b!1283570 (contains!7871 lt!576630 k!1205)))

(declare-fun minValue!1387 () V!50269)

(declare-datatypes ((Unit!42421 0))(
  ( (Unit!42422) )
))
(declare-fun lt!576629 () Unit!42421)

(declare-fun lemmaInListMapAfterAddingDiffThenInBefore!12 ((_ BitVec 64) (_ BitVec 64) V!50269 ListLongMap!19601) Unit!42421)

(assert (=> b!1283570 (= lt!576629 (lemmaInListMapAfterAddingDiffThenInBefore!12 k!1205 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387 lt!576630))))

(declare-fun zeroValue!1387 () V!50269)

(declare-fun from!2144 () (_ BitVec 32))

(declare-datatypes ((ValueCell!16039 0))(
  ( (ValueCellFull!16039 (v!19612 V!50269)) (EmptyCell!16039) )
))
(declare-datatypes ((array!84767 0))(
  ( (array!84768 (arr!40881 (Array (_ BitVec 32) ValueCell!16039)) (size!41432 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!84767)

(declare-fun extraKeys!1366 () (_ BitVec 32))

(declare-datatypes ((array!84769 0))(
  ( (array!84770 (arr!40882 (Array (_ BitVec 32) (_ BitVec 64))) (size!41433 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!84769)

(declare-fun defaultEntry!1448 () Int)

(declare-fun mask!2175 () (_ BitVec 32))

(declare-fun +!4263 (ListLongMap!19601 tuple2!21932) ListLongMap!19601)

(declare-fun getCurrentListMapNoExtraKeys!5974 (array!84769 array!84767 (_ BitVec 32) (_ BitVec 32) V!50269 V!50269 (_ BitVec 32) Int) ListLongMap!19601)

(assert (=> b!1283570 (= lt!576630 (+!4263 (getCurrentListMapNoExtraKeys!5974 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) (tuple2!21933 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387)))))

(declare-fun b!1283571 () Bool)

(declare-fun res!852742 () Bool)

(assert (=> b!1283571 (=> (not res!852742) (not e!733297))))

(assert (=> b!1283571 (= res!852742 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!41433 _keys!1741))))))

(declare-fun b!1283572 () Bool)

(declare-fun e!733298 () Bool)

(declare-fun tp_is_empty!33875 () Bool)

(assert (=> b!1283572 (= e!733298 tp_is_empty!33875)))

(declare-fun b!1283573 () Bool)

(declare-fun res!852746 () Bool)

(assert (=> b!1283573 (=> (not res!852746) (not e!733297))))

(assert (=> b!1283573 (= res!852746 (and (= (size!41432 _values!1445) (bvadd #b00000000000000000000000000000001 mask!2175)) (= (size!41433 _keys!1741) (size!41432 _values!1445)) (bvsge mask!2175 #b00000000000000000000000000000000) (bvsge extraKeys!1366 #b00000000000000000000000000000000) (bvsle extraKeys!1366 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!52370 () Bool)

(declare-fun tp!99821 () Bool)

(declare-fun e!733296 () Bool)

(assert (=> mapNonEmpty!52370 (= mapRes!52370 (and tp!99821 e!733296))))

(declare-fun mapRest!52370 () (Array (_ BitVec 32) ValueCell!16039))

(declare-fun mapValue!52370 () ValueCell!16039)

(declare-fun mapKey!52370 () (_ BitVec 32))

(assert (=> mapNonEmpty!52370 (= (arr!40881 _values!1445) (store mapRest!52370 mapKey!52370 mapValue!52370))))

(declare-fun b!1283574 () Bool)

(declare-fun res!852740 () Bool)

(assert (=> b!1283574 (=> (not res!852740) (not e!733297))))

(declare-fun getCurrentListMap!4834 (array!84769 array!84767 (_ BitVec 32) (_ BitVec 32) V!50269 V!50269 (_ BitVec 32) Int) ListLongMap!19601)

(assert (=> b!1283574 (= res!852740 (contains!7871 (getCurrentListMap!4834 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) k!1205))))

(declare-fun b!1283575 () Bool)

(assert (=> b!1283575 (= e!733296 tp_is_empty!33875)))

(declare-fun b!1283576 () Bool)

(declare-fun res!852743 () Bool)

(assert (=> b!1283576 (=> (not res!852743) (not e!733297))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1283576 (= res!852743 (validKeyInArray!0 (select (arr!40882 _keys!1741) from!2144)))))

(declare-fun b!1283577 () Bool)

(declare-fun e!733299 () Bool)

(assert (=> b!1283577 (= e!733299 (and e!733298 mapRes!52370))))

(declare-fun condMapEmpty!52370 () Bool)

(declare-fun mapDefault!52370 () ValueCell!16039)

