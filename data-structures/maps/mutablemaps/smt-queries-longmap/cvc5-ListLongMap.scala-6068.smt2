; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!78544 () Bool)

(assert start!78544)

(declare-fun mapIsEmpty!30612 () Bool)

(declare-fun mapRes!30612 () Bool)

(assert (=> mapIsEmpty!30612 mapRes!30612))

(declare-fun b!915186 () Bool)

(declare-fun e!513635 () Bool)

(declare-fun tp_is_empty!19237 () Bool)

(assert (=> b!915186 (= e!513635 tp_is_empty!19237)))

(declare-fun b!915187 () Bool)

(declare-fun e!513637 () Bool)

(assert (=> b!915187 (= e!513637 (and e!513635 mapRes!30612))))

(declare-fun condMapEmpty!30612 () Bool)

(declare-datatypes ((V!30615 0))(
  ( (V!30616 (val!9669 Int)) )
))
(declare-datatypes ((ValueCell!9137 0))(
  ( (ValueCellFull!9137 (v!12187 V!30615)) (EmptyCell!9137) )
))
(declare-datatypes ((array!54484 0))(
  ( (array!54485 (arr!26183 (Array (_ BitVec 32) ValueCell!9137)) (size!26643 (_ BitVec 32))) )
))
(declare-fun _values!1231 () array!54484)

(declare-fun mapDefault!30612 () ValueCell!9137)

