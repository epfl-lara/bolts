; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!554 () Bool)

(assert start!554)

(declare-fun mapIsEmpty!128 () Bool)

(declare-fun mapRes!128 () Bool)

(assert (=> mapIsEmpty!128 mapRes!128))

(declare-fun b!3321 () Bool)

(declare-fun e!1549 () Bool)

(declare-fun e!1553 () Bool)

(assert (=> b!3321 (= e!1549 (and e!1553 mapRes!128))))

(declare-fun condMapEmpty!128 () Bool)

(declare-datatypes ((V!331 0))(
  ( (V!332 (val!63 Int)) )
))
(declare-datatypes ((ValueCell!41 0))(
  ( (ValueCellFull!41 (v!1150 V!331)) (EmptyCell!41) )
))
(declare-datatypes ((array!165 0))(
  ( (array!166 (arr!76 (Array (_ BitVec 32) ValueCell!41)) (size!138 (_ BitVec 32))) )
))
(declare-fun _values!1492 () array!165)

(declare-fun mapDefault!128 () ValueCell!41)

