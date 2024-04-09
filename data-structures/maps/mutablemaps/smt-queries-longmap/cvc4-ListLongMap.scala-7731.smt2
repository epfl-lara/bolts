; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!97154 () Bool)

(assert start!97154)

(declare-fun b!1104546 () Bool)

(declare-fun e!630516 () Bool)

(declare-fun e!630513 () Bool)

(declare-fun mapRes!42862 () Bool)

(assert (=> b!1104546 (= e!630516 (and e!630513 mapRes!42862))))

(declare-fun condMapEmpty!42862 () Bool)

(declare-datatypes ((V!41613 0))(
  ( (V!41614 (val!13739 Int)) )
))
(declare-datatypes ((ValueCell!12973 0))(
  ( (ValueCellFull!12973 (v!16373 V!41613)) (EmptyCell!12973) )
))
(declare-datatypes ((array!71608 0))(
  ( (array!71609 (arr!34454 (Array (_ BitVec 32) ValueCell!12973)) (size!34991 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!71608)

(declare-fun mapDefault!42862 () ValueCell!12973)

