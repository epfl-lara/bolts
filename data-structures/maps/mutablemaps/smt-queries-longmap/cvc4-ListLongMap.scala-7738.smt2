; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!97212 () Bool)

(assert start!97212)

(declare-fun b!1105396 () Bool)

(declare-fun e!630932 () Bool)

(declare-fun e!630930 () Bool)

(declare-fun mapRes!42928 () Bool)

(assert (=> b!1105396 (= e!630932 (and e!630930 mapRes!42928))))

(declare-fun condMapEmpty!42928 () Bool)

(declare-datatypes ((V!41669 0))(
  ( (V!41670 (val!13760 Int)) )
))
(declare-datatypes ((ValueCell!12994 0))(
  ( (ValueCellFull!12994 (v!16394 V!41669)) (EmptyCell!12994) )
))
(declare-datatypes ((array!71688 0))(
  ( (array!71689 (arr!34493 (Array (_ BitVec 32) ValueCell!12994)) (size!35030 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!71688)

(declare-fun mapDefault!42928 () ValueCell!12994)

