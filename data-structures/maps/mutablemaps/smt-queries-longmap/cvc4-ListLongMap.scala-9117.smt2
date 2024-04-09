; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!109526 () Bool)

(assert start!109526)

(declare-fun b_free!28979 () Bool)

(declare-fun b_next!28979 () Bool)

(assert (=> start!109526 (= b_free!28979 (not b_next!28979))))

(declare-fun tp!102057 () Bool)

(declare-fun b_and!47079 () Bool)

(assert (=> start!109526 (= tp!102057 b_and!47079)))

(declare-fun b!1296676 () Bool)

(declare-fun e!739788 () Bool)

(assert (=> b!1296676 (= e!739788 false)))

(declare-datatypes ((V!51261 0))(
  ( (V!51262 (val!17384 Int)) )
))
(declare-fun minValue!1387 () V!51261)

(declare-fun zeroValue!1387 () V!51261)

(declare-fun from!2144 () (_ BitVec 32))

(declare-datatypes ((ValueCell!16411 0))(
  ( (ValueCellFull!16411 (v!19985 V!51261)) (EmptyCell!16411) )
))
(declare-datatypes ((array!86217 0))(
  ( (array!86218 (arr!41605 (Array (_ BitVec 32) ValueCell!16411)) (size!42156 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!86217)

(declare-fun k!1205 () (_ BitVec 64))

(declare-fun lt!580459 () Bool)

(declare-fun extraKeys!1366 () (_ BitVec 32))

(declare-datatypes ((array!86219 0))(
  ( (array!86220 (arr!41606 (Array (_ BitVec 32) (_ BitVec 64))) (size!42157 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!86219)

(declare-fun defaultEntry!1448 () Int)

(declare-fun mask!2175 () (_ BitVec 32))

(declare-datatypes ((tuple2!22548 0))(
  ( (tuple2!22549 (_1!11284 (_ BitVec 64)) (_2!11284 V!51261)) )
))
(declare-datatypes ((List!29714 0))(
  ( (Nil!29711) (Cons!29710 (h!30919 tuple2!22548) (t!43285 List!29714)) )
))
(declare-datatypes ((ListLongMap!20217 0))(
  ( (ListLongMap!20218 (toList!10124 List!29714)) )
))
(declare-fun contains!8178 (ListLongMap!20217 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5098 (array!86219 array!86217 (_ BitVec 32) (_ BitVec 32) V!51261 V!51261 (_ BitVec 32) Int) ListLongMap!20217)

(assert (=> b!1296676 (= lt!580459 (contains!8178 (getCurrentListMap!5098 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) k!1205))))

(declare-fun res!861849 () Bool)

(assert (=> start!109526 (=> (not res!861849) (not e!739788))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!109526 (= res!861849 (validMask!0 mask!2175))))

(assert (=> start!109526 e!739788))

(declare-fun tp_is_empty!34619 () Bool)

(assert (=> start!109526 tp_is_empty!34619))

(assert (=> start!109526 true))

(declare-fun e!739791 () Bool)

(declare-fun array_inv!31489 (array!86217) Bool)

(assert (=> start!109526 (and (array_inv!31489 _values!1445) e!739791)))

(declare-fun array_inv!31490 (array!86219) Bool)

(assert (=> start!109526 (array_inv!31490 _keys!1741)))

(assert (=> start!109526 tp!102057))

(declare-fun b!1296677 () Bool)

(declare-fun res!861847 () Bool)

(assert (=> b!1296677 (=> (not res!861847) (not e!739788))))

(assert (=> b!1296677 (= res!861847 (and (= (size!42156 _values!1445) (bvadd #b00000000000000000000000000000001 mask!2175)) (= (size!42157 _keys!1741) (size!42156 _values!1445)) (bvsge mask!2175 #b00000000000000000000000000000000) (bvsge extraKeys!1366 #b00000000000000000000000000000000) (bvsle extraKeys!1366 #b00000000000000000000000000000011)))))

(declare-fun b!1296678 () Bool)

(declare-fun e!739790 () Bool)

(assert (=> b!1296678 (= e!739790 tp_is_empty!34619)))

(declare-fun mapIsEmpty!53489 () Bool)

(declare-fun mapRes!53489 () Bool)

(assert (=> mapIsEmpty!53489 mapRes!53489))

(declare-fun b!1296679 () Bool)

(assert (=> b!1296679 (= e!739791 (and e!739790 mapRes!53489))))

(declare-fun condMapEmpty!53489 () Bool)

(declare-fun mapDefault!53489 () ValueCell!16411)

