; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!109580 () Bool)

(assert start!109580)

(declare-fun b_free!29033 () Bool)

(declare-fun b_next!29033 () Bool)

(assert (=> start!109580 (= b_free!29033 (not b_next!29033))))

(declare-fun tp!102218 () Bool)

(declare-fun b_and!47133 () Bool)

(assert (=> start!109580 (= tp!102218 b_and!47133)))

(declare-fun b!1297333 () Bool)

(declare-fun res!862261 () Bool)

(declare-fun e!740194 () Bool)

(assert (=> b!1297333 (=> (not res!862261) (not e!740194))))

(declare-fun mask!2175 () (_ BitVec 32))

(declare-datatypes ((V!51333 0))(
  ( (V!51334 (val!17411 Int)) )
))
(declare-datatypes ((ValueCell!16438 0))(
  ( (ValueCellFull!16438 (v!20012 V!51333)) (EmptyCell!16438) )
))
(declare-datatypes ((array!86323 0))(
  ( (array!86324 (arr!41658 (Array (_ BitVec 32) ValueCell!16438)) (size!42209 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!86323)

(declare-fun extraKeys!1366 () (_ BitVec 32))

(declare-datatypes ((array!86325 0))(
  ( (array!86326 (arr!41659 (Array (_ BitVec 32) (_ BitVec 64))) (size!42210 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!86325)

(assert (=> b!1297333 (= res!862261 (and (= (size!42209 _values!1445) (bvadd #b00000000000000000000000000000001 mask!2175)) (= (size!42210 _keys!1741) (size!42209 _values!1445)) (bvsge mask!2175 #b00000000000000000000000000000000) (bvsge extraKeys!1366 #b00000000000000000000000000000000) (bvsle extraKeys!1366 #b00000000000000000000000000000011)))))

(declare-fun b!1297334 () Bool)

(declare-fun e!740196 () Bool)

(declare-fun e!740197 () Bool)

(declare-fun mapRes!53570 () Bool)

(assert (=> b!1297334 (= e!740196 (and e!740197 mapRes!53570))))

(declare-fun condMapEmpty!53570 () Bool)

(declare-fun mapDefault!53570 () ValueCell!16438)

