; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!78530 () Bool)

(assert start!78530)

(declare-fun b!915060 () Bool)

(declare-fun e!513530 () Bool)

(declare-fun e!513533 () Bool)

(declare-fun mapRes!30591 () Bool)

(assert (=> b!915060 (= e!513530 (and e!513533 mapRes!30591))))

(declare-fun condMapEmpty!30591 () Bool)

(declare-datatypes ((V!30595 0))(
  ( (V!30596 (val!9662 Int)) )
))
(declare-datatypes ((ValueCell!9130 0))(
  ( (ValueCellFull!9130 (v!12180 V!30595)) (EmptyCell!9130) )
))
(declare-datatypes ((array!54460 0))(
  ( (array!54461 (arr!26171 (Array (_ BitVec 32) ValueCell!9130)) (size!26631 (_ BitVec 32))) )
))
(declare-fun _values!1231 () array!54460)

(declare-fun mapDefault!30591 () ValueCell!9130)

