; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!77494 () Bool)

(assert start!77494)

(declare-fun b!902626 () Bool)

(declare-fun e!505630 () Bool)

(declare-fun e!505628 () Bool)

(declare-fun mapRes!29428 () Bool)

(assert (=> b!902626 (= e!505630 (and e!505628 mapRes!29428))))

(declare-fun condMapEmpty!29428 () Bool)

(declare-datatypes ((V!29603 0))(
  ( (V!29604 (val!9290 Int)) )
))
(declare-datatypes ((ValueCell!8758 0))(
  ( (ValueCellFull!8758 (v!11795 V!29603)) (EmptyCell!8758) )
))
(declare-datatypes ((array!53010 0))(
  ( (array!53011 (arr!25461 (Array (_ BitVec 32) ValueCell!8758)) (size!25921 (_ BitVec 32))) )
))
(declare-fun _values!1152 () array!53010)

(declare-fun mapDefault!29428 () ValueCell!8758)

