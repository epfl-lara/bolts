; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!110608 () Bool)

(assert start!110608)

(declare-fun b_free!29407 () Bool)

(declare-fun b_next!29407 () Bool)

(assert (=> start!110608 (= b_free!29407 (not b_next!29407))))

(declare-fun tp!103544 () Bool)

(declare-fun b_and!47625 () Bool)

(assert (=> start!110608 (= tp!103544 b_and!47625)))

(declare-fun b!1308002 () Bool)

(declare-fun e!746386 () Bool)

(declare-fun e!746389 () Bool)

(declare-fun mapRes!54334 () Bool)

(assert (=> b!1308002 (= e!746386 (and e!746389 mapRes!54334))))

(declare-fun condMapEmpty!54334 () Bool)

(declare-datatypes ((V!51953 0))(
  ( (V!51954 (val!17643 Int)) )
))
(declare-datatypes ((ValueCell!16670 0))(
  ( (ValueCellFull!16670 (v!20268 V!51953)) (EmptyCell!16670) )
))
(declare-datatypes ((array!87243 0))(
  ( (array!87244 (arr!42097 (Array (_ BitVec 32) ValueCell!16670)) (size!42648 (_ BitVec 32))) )
))
(declare-fun _values!1354 () array!87243)

(declare-fun mapDefault!54334 () ValueCell!16670)

