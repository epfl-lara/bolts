; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!97652 () Bool)

(assert start!97652)

(declare-fun b!1115224 () Bool)

(declare-fun e!635572 () Bool)

(declare-fun e!635568 () Bool)

(declare-fun mapRes!43588 () Bool)

(assert (=> b!1115224 (= e!635572 (and e!635568 mapRes!43588))))

(declare-fun condMapEmpty!43588 () Bool)

(declare-datatypes ((V!42257 0))(
  ( (V!42258 (val!13980 Int)) )
))
(declare-datatypes ((ValueCell!13214 0))(
  ( (ValueCellFull!13214 (v!16614 V!42257)) (EmptyCell!13214) )
))
(declare-datatypes ((array!72538 0))(
  ( (array!72539 (arr!34918 (Array (_ BitVec 32) ValueCell!13214)) (size!35455 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!72538)

(declare-fun mapDefault!43588 () ValueCell!13214)

