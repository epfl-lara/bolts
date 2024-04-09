; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!109762 () Bool)

(assert start!109762)

(declare-fun b_free!29159 () Bool)

(declare-fun b_next!29159 () Bool)

(assert (=> start!109762 (= b_free!29159 (not b_next!29159))))

(declare-fun tp!102605 () Bool)

(declare-fun b_and!47271 () Bool)

(assert (=> start!109762 (= tp!102605 b_and!47271)))

(declare-fun b!1299610 () Bool)

(declare-fun e!741426 () Bool)

(declare-fun tp_is_empty!34799 () Bool)

(assert (=> b!1299610 (= e!741426 tp_is_empty!34799)))

(declare-fun res!863738 () Bool)

(declare-fun e!741424 () Bool)

(assert (=> start!109762 (=> (not res!863738) (not e!741424))))

(declare-fun mask!2175 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!109762 (= res!863738 (validMask!0 mask!2175))))

(assert (=> start!109762 e!741424))

(assert (=> start!109762 tp_is_empty!34799))

(assert (=> start!109762 true))

(declare-datatypes ((V!51501 0))(
  ( (V!51502 (val!17474 Int)) )
))
(declare-datatypes ((ValueCell!16501 0))(
  ( (ValueCellFull!16501 (v!20078 V!51501)) (EmptyCell!16501) )
))
(declare-datatypes ((array!86571 0))(
  ( (array!86572 (arr!41779 (Array (_ BitVec 32) ValueCell!16501)) (size!42330 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!86571)

(declare-fun e!741423 () Bool)

(declare-fun array_inv!31611 (array!86571) Bool)

(assert (=> start!109762 (and (array_inv!31611 _values!1445) e!741423)))

(declare-datatypes ((array!86573 0))(
  ( (array!86574 (arr!41780 (Array (_ BitVec 32) (_ BitVec 64))) (size!42331 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!86573)

(declare-fun array_inv!31612 (array!86573) Bool)

(assert (=> start!109762 (array_inv!31612 _keys!1741)))

(assert (=> start!109762 tp!102605))

(declare-fun b!1299611 () Bool)

(declare-fun mapRes!53768 () Bool)

(assert (=> b!1299611 (= e!741423 (and e!741426 mapRes!53768))))

(declare-fun condMapEmpty!53768 () Bool)

(declare-fun mapDefault!53768 () ValueCell!16501)

