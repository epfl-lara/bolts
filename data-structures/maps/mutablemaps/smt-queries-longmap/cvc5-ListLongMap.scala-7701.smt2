; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!96746 () Bool)

(assert start!96746)

(declare-fun b_free!23131 () Bool)

(declare-fun b_next!23131 () Bool)

(assert (=> start!96746 (= b_free!23131 (not b_next!23131))))

(declare-fun tp!81339 () Bool)

(declare-fun b_and!37027 () Bool)

(assert (=> start!96746 (= tp!81339 b_and!37027)))

(declare-fun b!1099904 () Bool)

(declare-fun e!627832 () Bool)

(declare-fun e!627837 () Bool)

(declare-fun mapRes!42550 () Bool)

(assert (=> b!1099904 (= e!627832 (and e!627837 mapRes!42550))))

(declare-fun condMapEmpty!42550 () Bool)

(declare-datatypes ((V!41369 0))(
  ( (V!41370 (val!13647 Int)) )
))
(declare-datatypes ((ValueCell!12881 0))(
  ( (ValueCellFull!12881 (v!16275 V!41369)) (EmptyCell!12881) )
))
(declare-datatypes ((array!71232 0))(
  ( (array!71233 (arr!34278 (Array (_ BitVec 32) ValueCell!12881)) (size!34815 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!71232)

(declare-fun mapDefault!42550 () ValueCell!12881)

