; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!108904 () Bool)

(assert start!108904)

(declare-fun b_free!28381 () Bool)

(declare-fun b_next!28381 () Bool)

(assert (=> start!108904 (= b_free!28381 (not b_next!28381))))

(declare-fun tp!100260 () Bool)

(declare-fun b_and!46457 () Bool)

(assert (=> start!108904 (= tp!100260 b_and!46457)))

(declare-fun b!1285611 () Bool)

(declare-fun res!854128 () Bool)

(declare-fun e!734395 () Bool)

(assert (=> b!1285611 (=> (not res!854128) (not e!734395))))

(declare-fun from!2144 () (_ BitVec 32))

(declare-datatypes ((array!85051 0))(
  ( (array!85052 (arr!41023 (Array (_ BitVec 32) (_ BitVec 64))) (size!41574 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!85051)

(assert (=> b!1285611 (= res!854128 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!41574 _keys!1741))))))

(declare-fun b!1285612 () Bool)

(declare-fun res!854130 () Bool)

(assert (=> b!1285612 (=> (not res!854130) (not e!734395))))

(declare-fun mask!2175 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!85051 (_ BitVec 32)) Bool)

(assert (=> b!1285612 (= res!854130 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1741 mask!2175))))

(declare-fun b!1285613 () Bool)

(declare-fun res!854123 () Bool)

(assert (=> b!1285613 (=> (not res!854123) (not e!734395))))

(declare-datatypes ((V!50465 0))(
  ( (V!50466 (val!17085 Int)) )
))
(declare-fun minValue!1387 () V!50465)

(declare-fun zeroValue!1387 () V!50465)

(declare-datatypes ((ValueCell!16112 0))(
  ( (ValueCellFull!16112 (v!19685 V!50465)) (EmptyCell!16112) )
))
(declare-datatypes ((array!85053 0))(
  ( (array!85054 (arr!41024 (Array (_ BitVec 32) ValueCell!16112)) (size!41575 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!85053)

(declare-fun k!1205 () (_ BitVec 64))

(declare-fun extraKeys!1366 () (_ BitVec 32))

(declare-fun defaultEntry!1448 () Int)

(declare-datatypes ((tuple2!22032 0))(
  ( (tuple2!22033 (_1!11026 (_ BitVec 64)) (_2!11026 V!50465)) )
))
(declare-datatypes ((List!29244 0))(
  ( (Nil!29241) (Cons!29240 (h!30449 tuple2!22032) (t!42795 List!29244)) )
))
(declare-datatypes ((ListLongMap!19701 0))(
  ( (ListLongMap!19702 (toList!9866 List!29244)) )
))
(declare-fun contains!7921 (ListLongMap!19701 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!4882 (array!85051 array!85053 (_ BitVec 32) (_ BitVec 32) V!50465 V!50465 (_ BitVec 32) Int) ListLongMap!19701)

(assert (=> b!1285613 (= res!854123 (contains!7921 (getCurrentListMap!4882 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) k!1205))))

(declare-fun res!854125 () Bool)

(assert (=> start!108904 (=> (not res!854125) (not e!734395))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!108904 (= res!854125 (validMask!0 mask!2175))))

(assert (=> start!108904 e!734395))

(declare-fun tp_is_empty!34021 () Bool)

(assert (=> start!108904 tp_is_empty!34021))

(assert (=> start!108904 true))

(declare-fun e!734392 () Bool)

(declare-fun array_inv!31085 (array!85053) Bool)

(assert (=> start!108904 (and (array_inv!31085 _values!1445) e!734392)))

(declare-fun array_inv!31086 (array!85051) Bool)

(assert (=> start!108904 (array_inv!31086 _keys!1741)))

(assert (=> start!108904 tp!100260))

(declare-fun b!1285614 () Bool)

(declare-fun res!854126 () Bool)

(assert (=> b!1285614 (=> (not res!854126) (not e!734395))))

(declare-datatypes ((List!29245 0))(
  ( (Nil!29242) (Cons!29241 (h!30450 (_ BitVec 64)) (t!42796 List!29245)) )
))
(declare-fun arrayNoDuplicates!0 (array!85051 (_ BitVec 32) List!29245) Bool)

(assert (=> b!1285614 (= res!854126 (arrayNoDuplicates!0 _keys!1741 #b00000000000000000000000000000000 Nil!29242))))

(declare-fun b!1285615 () Bool)

(declare-fun e!734394 () Bool)

(declare-fun mapRes!52589 () Bool)

(assert (=> b!1285615 (= e!734392 (and e!734394 mapRes!52589))))

(declare-fun condMapEmpty!52589 () Bool)

(declare-fun mapDefault!52589 () ValueCell!16112)

