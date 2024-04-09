; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!97248 () Bool)

(assert start!97248)

(declare-fun b!1106098 () Bool)

(declare-fun e!631254 () Bool)

(declare-fun e!631256 () Bool)

(declare-fun mapRes!42982 () Bool)

(assert (=> b!1106098 (= e!631254 (and e!631256 mapRes!42982))))

(declare-fun condMapEmpty!42982 () Bool)

(declare-datatypes ((V!41717 0))(
  ( (V!41718 (val!13778 Int)) )
))
(declare-datatypes ((ValueCell!13012 0))(
  ( (ValueCellFull!13012 (v!16412 V!41717)) (EmptyCell!13012) )
))
(declare-datatypes ((array!71758 0))(
  ( (array!71759 (arr!34528 (Array (_ BitVec 32) ValueCell!13012)) (size!35065 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!71758)

(declare-fun mapDefault!42982 () ValueCell!13012)

