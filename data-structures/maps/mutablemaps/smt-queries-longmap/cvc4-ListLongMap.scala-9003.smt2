; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!108818 () Bool)

(assert start!108818)

(declare-fun b_free!28295 () Bool)

(declare-fun b_next!28295 () Bool)

(assert (=> start!108818 (= b_free!28295 (not b_next!28295))))

(declare-fun tp!100001 () Bool)

(declare-fun b_and!46371 () Bool)

(assert (=> start!108818 (= tp!100001 b_and!46371)))

(declare-fun b!1284474 () Bool)

(declare-fun e!733750 () Bool)

(assert (=> b!1284474 (= e!733750 false)))

(declare-datatypes ((V!50349 0))(
  ( (V!50350 (val!17042 Int)) )
))
(declare-fun minValue!1387 () V!50349)

(declare-fun zeroValue!1387 () V!50349)

(declare-fun from!2144 () (_ BitVec 32))

(declare-datatypes ((ValueCell!16069 0))(
  ( (ValueCellFull!16069 (v!19642 V!50349)) (EmptyCell!16069) )
))
(declare-datatypes ((array!84885 0))(
  ( (array!84886 (arr!40940 (Array (_ BitVec 32) ValueCell!16069)) (size!41491 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!84885)

(declare-fun k!1205 () (_ BitVec 64))

(declare-fun lt!576765 () Bool)

(declare-fun extraKeys!1366 () (_ BitVec 32))

(declare-datatypes ((array!84887 0))(
  ( (array!84888 (arr!40941 (Array (_ BitVec 32) (_ BitVec 64))) (size!41492 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!84887)

(declare-fun defaultEntry!1448 () Int)

(declare-fun mask!2175 () (_ BitVec 32))

(declare-datatypes ((tuple2!21972 0))(
  ( (tuple2!21973 (_1!10996 (_ BitVec 64)) (_2!10996 V!50349)) )
))
(declare-datatypes ((List!29181 0))(
  ( (Nil!29178) (Cons!29177 (h!30386 tuple2!21972) (t!42732 List!29181)) )
))
(declare-datatypes ((ListLongMap!19641 0))(
  ( (ListLongMap!19642 (toList!9836 List!29181)) )
))
(declare-fun contains!7891 (ListLongMap!19641 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!4854 (array!84887 array!84885 (_ BitVec 32) (_ BitVec 32) V!50349 V!50349 (_ BitVec 32) Int) ListLongMap!19641)

(assert (=> b!1284474 (= lt!576765 (contains!7891 (getCurrentListMap!4854 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) k!1205))))

(declare-fun b!1284475 () Bool)

(declare-fun res!853377 () Bool)

(assert (=> b!1284475 (=> (not res!853377) (not e!733750))))

(assert (=> b!1284475 (= res!853377 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!41492 _keys!1741))))))

(declare-fun mapIsEmpty!52460 () Bool)

(declare-fun mapRes!52460 () Bool)

(assert (=> mapIsEmpty!52460 mapRes!52460))

(declare-fun mapNonEmpty!52460 () Bool)

(declare-fun tp!100002 () Bool)

(declare-fun e!733747 () Bool)

(assert (=> mapNonEmpty!52460 (= mapRes!52460 (and tp!100002 e!733747))))

(declare-fun mapKey!52460 () (_ BitVec 32))

(declare-fun mapRest!52460 () (Array (_ BitVec 32) ValueCell!16069))

(declare-fun mapValue!52460 () ValueCell!16069)

(assert (=> mapNonEmpty!52460 (= (arr!40940 _values!1445) (store mapRest!52460 mapKey!52460 mapValue!52460))))

(declare-fun res!853373 () Bool)

(assert (=> start!108818 (=> (not res!853373) (not e!733750))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!108818 (= res!853373 (validMask!0 mask!2175))))

(assert (=> start!108818 e!733750))

(declare-fun tp_is_empty!33935 () Bool)

(assert (=> start!108818 tp_is_empty!33935))

(assert (=> start!108818 true))

(declare-fun e!733746 () Bool)

(declare-fun array_inv!31029 (array!84885) Bool)

(assert (=> start!108818 (and (array_inv!31029 _values!1445) e!733746)))

(declare-fun array_inv!31030 (array!84887) Bool)

(assert (=> start!108818 (array_inv!31030 _keys!1741)))

(assert (=> start!108818 tp!100001))

(declare-fun b!1284476 () Bool)

(declare-fun res!853376 () Bool)

(assert (=> b!1284476 (=> (not res!853376) (not e!733750))))

(declare-datatypes ((List!29182 0))(
  ( (Nil!29179) (Cons!29178 (h!30387 (_ BitVec 64)) (t!42733 List!29182)) )
))
(declare-fun arrayNoDuplicates!0 (array!84887 (_ BitVec 32) List!29182) Bool)

(assert (=> b!1284476 (= res!853376 (arrayNoDuplicates!0 _keys!1741 #b00000000000000000000000000000000 Nil!29179))))

(declare-fun b!1284477 () Bool)

(assert (=> b!1284477 (= e!733747 tp_is_empty!33935)))

(declare-fun b!1284478 () Bool)

(declare-fun e!733748 () Bool)

(assert (=> b!1284478 (= e!733746 (and e!733748 mapRes!52460))))

(declare-fun condMapEmpty!52460 () Bool)

(declare-fun mapDefault!52460 () ValueCell!16069)

