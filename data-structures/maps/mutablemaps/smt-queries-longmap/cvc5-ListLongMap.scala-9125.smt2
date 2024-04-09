; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!109570 () Bool)

(assert start!109570)

(declare-fun b_free!29023 () Bool)

(declare-fun b_next!29023 () Bool)

(assert (=> start!109570 (= b_free!29023 (not b_next!29023))))

(declare-fun tp!102189 () Bool)

(declare-fun b_and!47123 () Bool)

(assert (=> start!109570 (= tp!102189 b_and!47123)))

(declare-fun b!1297213 () Bool)

(declare-fun res!862187 () Bool)

(declare-fun e!740119 () Bool)

(assert (=> b!1297213 (=> (not res!862187) (not e!740119))))

(declare-datatypes ((V!51321 0))(
  ( (V!51322 (val!17406 Int)) )
))
(declare-datatypes ((ValueCell!16433 0))(
  ( (ValueCellFull!16433 (v!20007 V!51321)) (EmptyCell!16433) )
))
(declare-datatypes ((array!86303 0))(
  ( (array!86304 (arr!41648 (Array (_ BitVec 32) ValueCell!16433)) (size!42199 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!86303)

(declare-fun extraKeys!1366 () (_ BitVec 32))

(declare-datatypes ((array!86305 0))(
  ( (array!86306 (arr!41649 (Array (_ BitVec 32) (_ BitVec 64))) (size!42200 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!86305)

(declare-fun mask!2175 () (_ BitVec 32))

(assert (=> b!1297213 (= res!862187 (and (= (size!42199 _values!1445) (bvadd #b00000000000000000000000000000001 mask!2175)) (= (size!42200 _keys!1741) (size!42199 _values!1445)) (bvsge mask!2175 #b00000000000000000000000000000000) (bvsge extraKeys!1366 #b00000000000000000000000000000000) (bvsle extraKeys!1366 #b00000000000000000000000000000011)))))

(declare-fun b!1297214 () Bool)

(declare-fun e!740122 () Bool)

(declare-fun tp_is_empty!34663 () Bool)

(assert (=> b!1297214 (= e!740122 tp_is_empty!34663)))

(declare-fun b!1297215 () Bool)

(declare-fun res!862184 () Bool)

(assert (=> b!1297215 (=> (not res!862184) (not e!740119))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!86305 (_ BitVec 32)) Bool)

(assert (=> b!1297215 (= res!862184 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1741 mask!2175))))

(declare-fun mapIsEmpty!53555 () Bool)

(declare-fun mapRes!53555 () Bool)

(assert (=> mapIsEmpty!53555 mapRes!53555))

(declare-fun b!1297217 () Bool)

(declare-fun res!862186 () Bool)

(assert (=> b!1297217 (=> (not res!862186) (not e!740119))))

(declare-fun from!2144 () (_ BitVec 32))

(assert (=> b!1297217 (= res!862186 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!42200 _keys!1741))))))

(declare-fun b!1297216 () Bool)

(declare-fun e!740121 () Bool)

(assert (=> b!1297216 (= e!740121 tp_is_empty!34663)))

(declare-fun res!862188 () Bool)

(assert (=> start!109570 (=> (not res!862188) (not e!740119))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!109570 (= res!862188 (validMask!0 mask!2175))))

(assert (=> start!109570 e!740119))

(assert (=> start!109570 tp_is_empty!34663))

(assert (=> start!109570 true))

(declare-fun e!740118 () Bool)

(declare-fun array_inv!31519 (array!86303) Bool)

(assert (=> start!109570 (and (array_inv!31519 _values!1445) e!740118)))

(declare-fun array_inv!31520 (array!86305) Bool)

(assert (=> start!109570 (array_inv!31520 _keys!1741)))

(assert (=> start!109570 tp!102189))

(declare-fun b!1297218 () Bool)

(declare-fun res!862185 () Bool)

(assert (=> b!1297218 (=> (not res!862185) (not e!740119))))

(declare-datatypes ((List!29742 0))(
  ( (Nil!29739) (Cons!29738 (h!30947 (_ BitVec 64)) (t!43313 List!29742)) )
))
(declare-fun arrayNoDuplicates!0 (array!86305 (_ BitVec 32) List!29742) Bool)

(assert (=> b!1297218 (= res!862185 (arrayNoDuplicates!0 _keys!1741 #b00000000000000000000000000000000 Nil!29739))))

(declare-fun b!1297219 () Bool)

(assert (=> b!1297219 (= e!740118 (and e!740122 mapRes!53555))))

(declare-fun condMapEmpty!53555 () Bool)

(declare-fun mapDefault!53555 () ValueCell!16433)

