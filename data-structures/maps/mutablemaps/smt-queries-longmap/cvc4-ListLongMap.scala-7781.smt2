; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!97470 () Bool)

(assert start!97470)

(declare-fun b_free!23405 () Bool)

(declare-fun b_next!23405 () Bool)

(assert (=> start!97470 (= b_free!23405 (not b_next!23405))))

(declare-fun tp!82514 () Bool)

(declare-fun b_and!37667 () Bool)

(assert (=> start!97470 (= tp!82514 b_and!37667)))

(declare-fun b!1111493 () Bool)

(declare-fun e!633836 () Bool)

(declare-fun e!633837 () Bool)

(declare-fun mapRes!43315 () Bool)

(assert (=> b!1111493 (= e!633836 (and e!633837 mapRes!43315))))

(declare-fun condMapEmpty!43315 () Bool)

(declare-datatypes ((V!42013 0))(
  ( (V!42014 (val!13889 Int)) )
))
(declare-datatypes ((ValueCell!13123 0))(
  ( (ValueCellFull!13123 (v!16523 V!42013)) (EmptyCell!13123) )
))
(declare-datatypes ((array!72194 0))(
  ( (array!72195 (arr!34746 (Array (_ BitVec 32) ValueCell!13123)) (size!35283 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!72194)

(declare-fun mapDefault!43315 () ValueCell!13123)

