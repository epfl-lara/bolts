; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!109588 () Bool)

(assert start!109588)

(declare-fun b_free!29041 () Bool)

(declare-fun b_next!29041 () Bool)

(assert (=> start!109588 (= b_free!29041 (not b_next!29041))))

(declare-fun tp!102242 () Bool)

(declare-fun b_and!47141 () Bool)

(assert (=> start!109588 (= tp!102242 b_and!47141)))

(declare-fun b!1297429 () Bool)

(declare-fun e!740255 () Bool)

(declare-fun e!740257 () Bool)

(declare-fun mapRes!53582 () Bool)

(assert (=> b!1297429 (= e!740255 (and e!740257 mapRes!53582))))

(declare-fun condMapEmpty!53582 () Bool)

(declare-datatypes ((V!51345 0))(
  ( (V!51346 (val!17415 Int)) )
))
(declare-datatypes ((ValueCell!16442 0))(
  ( (ValueCellFull!16442 (v!20016 V!51345)) (EmptyCell!16442) )
))
(declare-datatypes ((array!86337 0))(
  ( (array!86338 (arr!41665 (Array (_ BitVec 32) ValueCell!16442)) (size!42216 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!86337)

(declare-fun mapDefault!53582 () ValueCell!16442)

