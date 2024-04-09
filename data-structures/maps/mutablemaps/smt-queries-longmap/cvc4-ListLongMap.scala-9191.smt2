; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!110534 () Bool)

(assert start!110534)

(declare-fun b_free!29333 () Bool)

(declare-fun b_next!29333 () Bool)

(assert (=> start!110534 (= b_free!29333 (not b_next!29333))))

(declare-fun tp!103321 () Bool)

(declare-fun b_and!47551 () Bool)

(assert (=> start!110534 (= tp!103321 b_and!47551)))

(declare-fun mapIsEmpty!54223 () Bool)

(declare-fun mapRes!54223 () Bool)

(assert (=> mapIsEmpty!54223 mapRes!54223))

(declare-fun b!1307034 () Bool)

(declare-fun e!745835 () Bool)

(declare-fun e!745833 () Bool)

(assert (=> b!1307034 (= e!745835 (and e!745833 mapRes!54223))))

(declare-fun condMapEmpty!54223 () Bool)

(declare-datatypes ((V!51853 0))(
  ( (V!51854 (val!17606 Int)) )
))
(declare-datatypes ((ValueCell!16633 0))(
  ( (ValueCellFull!16633 (v!20231 V!51853)) (EmptyCell!16633) )
))
(declare-datatypes ((array!87107 0))(
  ( (array!87108 (arr!42029 (Array (_ BitVec 32) ValueCell!16633)) (size!42580 (_ BitVec 32))) )
))
(declare-fun _values!1354 () array!87107)

(declare-fun mapDefault!54223 () ValueCell!16633)

