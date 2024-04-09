; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!109574 () Bool)

(assert start!109574)

(declare-fun b_free!29027 () Bool)

(declare-fun b_next!29027 () Bool)

(assert (=> start!109574 (= b_free!29027 (not b_next!29027))))

(declare-fun tp!102201 () Bool)

(declare-fun b_and!47127 () Bool)

(assert (=> start!109574 (= tp!102201 b_and!47127)))

(declare-fun b!1297261 () Bool)

(declare-fun res!862217 () Bool)

(declare-fun e!740151 () Bool)

(assert (=> b!1297261 (=> (not res!862217) (not e!740151))))

(declare-datatypes ((array!86311 0))(
  ( (array!86312 (arr!41652 (Array (_ BitVec 32) (_ BitVec 64))) (size!42203 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!86311)

(declare-datatypes ((List!29745 0))(
  ( (Nil!29742) (Cons!29741 (h!30950 (_ BitVec 64)) (t!43316 List!29745)) )
))
(declare-fun arrayNoDuplicates!0 (array!86311 (_ BitVec 32) List!29745) Bool)

(assert (=> b!1297261 (= res!862217 (arrayNoDuplicates!0 _keys!1741 #b00000000000000000000000000000000 Nil!29742))))

(declare-fun b!1297262 () Bool)

(declare-fun e!740152 () Bool)

(declare-fun tp_is_empty!34667 () Bool)

(assert (=> b!1297262 (= e!740152 tp_is_empty!34667)))

(declare-fun b!1297263 () Bool)

(assert (=> b!1297263 (= e!740151 false)))

(declare-datatypes ((V!51325 0))(
  ( (V!51326 (val!17408 Int)) )
))
(declare-fun minValue!1387 () V!51325)

(declare-fun zeroValue!1387 () V!51325)

(declare-fun from!2144 () (_ BitVec 32))

(declare-fun lt!580522 () Bool)

(declare-datatypes ((ValueCell!16435 0))(
  ( (ValueCellFull!16435 (v!20009 V!51325)) (EmptyCell!16435) )
))
(declare-datatypes ((array!86313 0))(
  ( (array!86314 (arr!41653 (Array (_ BitVec 32) ValueCell!16435)) (size!42204 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!86313)

(declare-fun k!1205 () (_ BitVec 64))

(declare-fun extraKeys!1366 () (_ BitVec 32))

(declare-fun defaultEntry!1448 () Int)

(declare-fun mask!2175 () (_ BitVec 32))

(declare-datatypes ((tuple2!22580 0))(
  ( (tuple2!22581 (_1!11300 (_ BitVec 64)) (_2!11300 V!51325)) )
))
(declare-datatypes ((List!29746 0))(
  ( (Nil!29743) (Cons!29742 (h!30951 tuple2!22580) (t!43317 List!29746)) )
))
(declare-datatypes ((ListLongMap!20249 0))(
  ( (ListLongMap!20250 (toList!10140 List!29746)) )
))
(declare-fun contains!8194 (ListLongMap!20249 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5114 (array!86311 array!86313 (_ BitVec 32) (_ BitVec 32) V!51325 V!51325 (_ BitVec 32) Int) ListLongMap!20249)

(assert (=> b!1297263 (= lt!580522 (contains!8194 (getCurrentListMap!5114 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) k!1205))))

(declare-fun b!1297264 () Bool)

(declare-fun e!740148 () Bool)

(declare-fun mapRes!53561 () Bool)

(assert (=> b!1297264 (= e!740148 (and e!740152 mapRes!53561))))

(declare-fun condMapEmpty!53561 () Bool)

(declare-fun mapDefault!53561 () ValueCell!16435)

