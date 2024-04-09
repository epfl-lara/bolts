; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!109474 () Bool)

(assert start!109474)

(declare-fun b_free!28927 () Bool)

(declare-fun b_next!28927 () Bool)

(assert (=> start!109474 (= b_free!28927 (not b_next!28927))))

(declare-fun tp!101901 () Bool)

(declare-fun b_and!47027 () Bool)

(assert (=> start!109474 (= tp!101901 b_and!47027)))

(declare-fun b!1295709 () Bool)

(declare-fun res!861281 () Bool)

(declare-fun e!739295 () Bool)

(assert (=> b!1295709 (=> (not res!861281) (not e!739295))))

(declare-datatypes ((array!86115 0))(
  ( (array!86116 (arr!41554 (Array (_ BitVec 32) (_ BitVec 64))) (size!42105 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!86115)

(declare-datatypes ((List!29674 0))(
  ( (Nil!29671) (Cons!29670 (h!30879 (_ BitVec 64)) (t!43245 List!29674)) )
))
(declare-fun arrayNoDuplicates!0 (array!86115 (_ BitVec 32) List!29674) Bool)

(assert (=> b!1295709 (= res!861281 (arrayNoDuplicates!0 _keys!1741 #b00000000000000000000000000000000 Nil!29671))))

(declare-fun b!1295710 () Bool)

(declare-fun res!861275 () Bool)

(assert (=> b!1295710 (=> (not res!861275) (not e!739295))))

(declare-fun mask!2175 () (_ BitVec 32))

(declare-datatypes ((V!51193 0))(
  ( (V!51194 (val!17358 Int)) )
))
(declare-datatypes ((ValueCell!16385 0))(
  ( (ValueCellFull!16385 (v!19959 V!51193)) (EmptyCell!16385) )
))
(declare-datatypes ((array!86117 0))(
  ( (array!86118 (arr!41555 (Array (_ BitVec 32) ValueCell!16385)) (size!42106 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!86117)

(declare-fun extraKeys!1366 () (_ BitVec 32))

(assert (=> b!1295710 (= res!861275 (and (= (size!42106 _values!1445) (bvadd #b00000000000000000000000000000001 mask!2175)) (= (size!42105 _keys!1741) (size!42106 _values!1445)) (bvsge mask!2175 #b00000000000000000000000000000000) (bvsge extraKeys!1366 #b00000000000000000000000000000000) (bvsle extraKeys!1366 #b00000000000000000000000000000011)))))

(declare-fun b!1295711 () Bool)

(declare-fun res!861278 () Bool)

(assert (=> b!1295711 (=> (not res!861278) (not e!739295))))

(declare-fun from!2144 () (_ BitVec 32))

(declare-fun k!1205 () (_ BitVec 64))

(assert (=> b!1295711 (= res!861278 (and (not (= k!1205 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1205 #b1000000000000000000000000000000000000000000000000000000000000000)) (bvsge (bvadd #b00000000000000000000000000000001 from!2144) (size!42105 _keys!1741))))))

(declare-fun b!1295712 () Bool)

(declare-fun e!739296 () Bool)

(declare-fun e!739293 () Bool)

(declare-fun mapRes!53411 () Bool)

(assert (=> b!1295712 (= e!739296 (and e!739293 mapRes!53411))))

(declare-fun condMapEmpty!53411 () Bool)

(declare-fun mapDefault!53411 () ValueCell!16385)

