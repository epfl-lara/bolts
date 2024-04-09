; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!109576 () Bool)

(assert start!109576)

(declare-fun b_free!29029 () Bool)

(declare-fun b_next!29029 () Bool)

(assert (=> start!109576 (= b_free!29029 (not b_next!29029))))

(declare-fun tp!102206 () Bool)

(declare-fun b_and!47129 () Bool)

(assert (=> start!109576 (= tp!102206 b_and!47129)))

(declare-fun b!1297285 () Bool)

(declare-fun e!740167 () Bool)

(declare-fun tp_is_empty!34669 () Bool)

(assert (=> b!1297285 (= e!740167 tp_is_empty!34669)))

(declare-fun res!862229 () Bool)

(declare-fun e!740165 () Bool)

(assert (=> start!109576 (=> (not res!862229) (not e!740165))))

(declare-fun mask!2175 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!109576 (= res!862229 (validMask!0 mask!2175))))

(assert (=> start!109576 e!740165))

(assert (=> start!109576 tp_is_empty!34669))

(assert (=> start!109576 true))

(declare-datatypes ((V!51329 0))(
  ( (V!51330 (val!17409 Int)) )
))
(declare-datatypes ((ValueCell!16436 0))(
  ( (ValueCellFull!16436 (v!20010 V!51329)) (EmptyCell!16436) )
))
(declare-datatypes ((array!86315 0))(
  ( (array!86316 (arr!41654 (Array (_ BitVec 32) ValueCell!16436)) (size!42205 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!86315)

(declare-fun e!740166 () Bool)

(declare-fun array_inv!31523 (array!86315) Bool)

(assert (=> start!109576 (and (array_inv!31523 _values!1445) e!740166)))

(declare-datatypes ((array!86317 0))(
  ( (array!86318 (arr!41655 (Array (_ BitVec 32) (_ BitVec 64))) (size!42206 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!86317)

(declare-fun array_inv!31524 (array!86317) Bool)

(assert (=> start!109576 (array_inv!31524 _keys!1741)))

(assert (=> start!109576 tp!102206))

(declare-fun b!1297286 () Bool)

(declare-fun e!740164 () Bool)

(assert (=> b!1297286 (= e!740164 tp_is_empty!34669)))

(declare-fun b!1297287 () Bool)

(assert (=> b!1297287 (= e!740165 false)))

(declare-fun minValue!1387 () V!51329)

(declare-fun zeroValue!1387 () V!51329)

(declare-fun from!2144 () (_ BitVec 32))

(declare-fun extraKeys!1366 () (_ BitVec 32))

(declare-fun defaultEntry!1448 () Int)

(declare-fun k!1205 () (_ BitVec 64))

(declare-fun lt!580525 () Bool)

(declare-datatypes ((tuple2!22582 0))(
  ( (tuple2!22583 (_1!11301 (_ BitVec 64)) (_2!11301 V!51329)) )
))
(declare-datatypes ((List!29747 0))(
  ( (Nil!29744) (Cons!29743 (h!30952 tuple2!22582) (t!43318 List!29747)) )
))
(declare-datatypes ((ListLongMap!20251 0))(
  ( (ListLongMap!20252 (toList!10141 List!29747)) )
))
(declare-fun contains!8195 (ListLongMap!20251 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5115 (array!86317 array!86315 (_ BitVec 32) (_ BitVec 32) V!51329 V!51329 (_ BitVec 32) Int) ListLongMap!20251)

(assert (=> b!1297287 (= lt!580525 (contains!8195 (getCurrentListMap!5115 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) k!1205))))

(declare-fun b!1297288 () Bool)

(declare-fun mapRes!53564 () Bool)

(assert (=> b!1297288 (= e!740166 (and e!740167 mapRes!53564))))

(declare-fun condMapEmpty!53564 () Bool)

(declare-fun mapDefault!53564 () ValueCell!16436)

