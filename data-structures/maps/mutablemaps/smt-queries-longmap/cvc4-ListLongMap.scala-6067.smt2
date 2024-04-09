; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!78542 () Bool)

(assert start!78542)

(declare-fun b!915168 () Bool)

(declare-fun e!513620 () Bool)

(declare-fun tp_is_empty!19235 () Bool)

(assert (=> b!915168 (= e!513620 tp_is_empty!19235)))

(declare-fun b!915169 () Bool)

(declare-fun e!513621 () Bool)

(declare-fun e!513623 () Bool)

(declare-fun mapRes!30609 () Bool)

(assert (=> b!915169 (= e!513621 (and e!513623 mapRes!30609))))

(declare-fun condMapEmpty!30609 () Bool)

(declare-datatypes ((V!30611 0))(
  ( (V!30612 (val!9668 Int)) )
))
(declare-datatypes ((ValueCell!9136 0))(
  ( (ValueCellFull!9136 (v!12186 V!30611)) (EmptyCell!9136) )
))
(declare-datatypes ((array!54482 0))(
  ( (array!54483 (arr!26182 (Array (_ BitVec 32) ValueCell!9136)) (size!26642 (_ BitVec 32))) )
))
(declare-fun _values!1231 () array!54482)

(declare-fun mapDefault!30609 () ValueCell!9136)

