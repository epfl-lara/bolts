; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!111134 () Bool)

(assert start!111134)

(declare-fun b_free!29933 () Bool)

(declare-fun b_next!29933 () Bool)

(assert (=> start!111134 (= b_free!29933 (not b_next!29933))))

(declare-fun tp!105122 () Bool)

(declare-fun b_and!48151 () Bool)

(assert (=> start!111134 (= tp!105122 b_and!48151)))

(declare-fun b!1315305 () Bool)

(declare-fun e!750333 () Bool)

(declare-fun e!750331 () Bool)

(declare-fun mapRes!55123 () Bool)

(assert (=> b!1315305 (= e!750333 (and e!750331 mapRes!55123))))

(declare-fun condMapEmpty!55123 () Bool)

(declare-datatypes ((V!52653 0))(
  ( (V!52654 (val!17906 Int)) )
))
(declare-datatypes ((ValueCell!16933 0))(
  ( (ValueCellFull!16933 (v!20531 V!52653)) (EmptyCell!16933) )
))
(declare-datatypes ((array!88251 0))(
  ( (array!88252 (arr!42601 (Array (_ BitVec 32) ValueCell!16933)) (size!43152 (_ BitVec 32))) )
))
(declare-fun _values!1354 () array!88251)

(declare-fun mapDefault!55123 () ValueCell!16933)

