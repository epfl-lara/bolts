; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!109006 () Bool)

(assert start!109006)

(declare-fun b_free!28459 () Bool)

(declare-fun b_next!28459 () Bool)

(assert (=> start!109006 (= b_free!28459 (not b_next!28459))))

(declare-fun tp!100496 () Bool)

(declare-fun b_and!46559 () Bool)

(assert (=> start!109006 (= tp!100496 b_and!46559)))

(declare-fun mapIsEmpty!52709 () Bool)

(declare-fun mapRes!52709 () Bool)

(assert (=> mapIsEmpty!52709 mapRes!52709))

(declare-fun b!1287499 () Bool)

(declare-fun e!735295 () Bool)

(declare-fun tp_is_empty!34099 () Bool)

(assert (=> b!1287499 (= e!735295 tp_is_empty!34099)))

(declare-fun b!1287500 () Bool)

(declare-fun res!855174 () Bool)

(declare-fun e!735298 () Bool)

(assert (=> b!1287500 (=> (not res!855174) (not e!735298))))

(declare-fun mask!2175 () (_ BitVec 32))

(declare-datatypes ((V!50569 0))(
  ( (V!50570 (val!17124 Int)) )
))
(declare-datatypes ((ValueCell!16151 0))(
  ( (ValueCellFull!16151 (v!19725 V!50569)) (EmptyCell!16151) )
))
(declare-datatypes ((array!85203 0))(
  ( (array!85204 (arr!41098 (Array (_ BitVec 32) ValueCell!16151)) (size!41649 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!85203)

(declare-fun extraKeys!1366 () (_ BitVec 32))

(declare-datatypes ((array!85205 0))(
  ( (array!85206 (arr!41099 (Array (_ BitVec 32) (_ BitVec 64))) (size!41650 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!85205)

(assert (=> b!1287500 (= res!855174 (and (= (size!41649 _values!1445) (bvadd #b00000000000000000000000000000001 mask!2175)) (= (size!41650 _keys!1741) (size!41649 _values!1445)) (bvsge mask!2175 #b00000000000000000000000000000000) (bvsge extraKeys!1366 #b00000000000000000000000000000000) (bvsle extraKeys!1366 #b00000000000000000000000000000011)))))

(declare-fun b!1287501 () Bool)

(declare-fun res!855176 () Bool)

(assert (=> b!1287501 (=> (not res!855176) (not e!735298))))

(declare-datatypes ((List!29306 0))(
  ( (Nil!29303) (Cons!29302 (h!30511 (_ BitVec 64)) (t!42877 List!29306)) )
))
(declare-fun arrayNoDuplicates!0 (array!85205 (_ BitVec 32) List!29306) Bool)

(assert (=> b!1287501 (= res!855176 (arrayNoDuplicates!0 _keys!1741 #b00000000000000000000000000000000 Nil!29303))))

(declare-fun b!1287502 () Bool)

(declare-fun res!855175 () Bool)

(assert (=> b!1287502 (=> (not res!855175) (not e!735298))))

(declare-fun minValue!1387 () V!50569)

(declare-fun zeroValue!1387 () V!50569)

(declare-fun from!2144 () (_ BitVec 32))

(declare-fun k!1205 () (_ BitVec 64))

(declare-fun defaultEntry!1448 () Int)

(declare-datatypes ((tuple2!22106 0))(
  ( (tuple2!22107 (_1!11063 (_ BitVec 64)) (_2!11063 V!50569)) )
))
(declare-datatypes ((List!29307 0))(
  ( (Nil!29304) (Cons!29303 (h!30512 tuple2!22106) (t!42878 List!29307)) )
))
(declare-datatypes ((ListLongMap!19775 0))(
  ( (ListLongMap!19776 (toList!9903 List!29307)) )
))
(declare-fun contains!7959 (ListLongMap!19775 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!4910 (array!85205 array!85203 (_ BitVec 32) (_ BitVec 32) V!50569 V!50569 (_ BitVec 32) Int) ListLongMap!19775)

(assert (=> b!1287502 (= res!855175 (contains!7959 (getCurrentListMap!4910 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) k!1205))))

(declare-fun b!1287503 () Bool)

(assert (=> b!1287503 (= e!735298 (not true))))

(assert (=> b!1287503 (not (contains!7959 (ListLongMap!19776 Nil!29304) k!1205))))

(declare-datatypes ((Unit!42509 0))(
  ( (Unit!42510) )
))
(declare-fun lt!577816 () Unit!42509)

(declare-fun emptyContainsNothing!22 ((_ BitVec 64)) Unit!42509)

(assert (=> b!1287503 (= lt!577816 (emptyContainsNothing!22 k!1205))))

(declare-fun b!1287504 () Bool)

(declare-fun e!735296 () Bool)

(assert (=> b!1287504 (= e!735296 (and e!735295 mapRes!52709))))

(declare-fun condMapEmpty!52709 () Bool)

(declare-fun mapDefault!52709 () ValueCell!16151)

