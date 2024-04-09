; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!78560 () Bool)

(assert start!78560)

(declare-fun b!915330 () Bool)

(declare-fun e!513758 () Bool)

(declare-fun e!513755 () Bool)

(declare-fun mapRes!30636 () Bool)

(assert (=> b!915330 (= e!513758 (and e!513755 mapRes!30636))))

(declare-fun condMapEmpty!30636 () Bool)

(declare-datatypes ((V!30635 0))(
  ( (V!30636 (val!9677 Int)) )
))
(declare-datatypes ((ValueCell!9145 0))(
  ( (ValueCellFull!9145 (v!12195 V!30635)) (EmptyCell!9145) )
))
(declare-datatypes ((array!54512 0))(
  ( (array!54513 (arr!26197 (Array (_ BitVec 32) ValueCell!9145)) (size!26657 (_ BitVec 32))) )
))
(declare-fun _values!1231 () array!54512)

(declare-fun mapDefault!30636 () ValueCell!9145)

