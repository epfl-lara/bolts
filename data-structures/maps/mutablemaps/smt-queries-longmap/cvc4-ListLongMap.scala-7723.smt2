; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!97064 () Bool)

(assert start!97064)

(declare-fun b!1103574 () Bool)

(declare-fun e!630017 () Bool)

(declare-fun e!630016 () Bool)

(declare-fun mapRes!42781 () Bool)

(assert (=> b!1103574 (= e!630017 (and e!630016 mapRes!42781))))

(declare-fun condMapEmpty!42781 () Bool)

(declare-datatypes ((V!41549 0))(
  ( (V!41550 (val!13715 Int)) )
))
(declare-datatypes ((ValueCell!12949 0))(
  ( (ValueCellFull!12949 (v!16348 V!41549)) (EmptyCell!12949) )
))
(declare-datatypes ((array!71512 0))(
  ( (array!71513 (arr!34409 (Array (_ BitVec 32) ValueCell!12949)) (size!34946 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!71512)

(declare-fun mapDefault!42781 () ValueCell!12949)

