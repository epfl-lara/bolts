; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!43202 () Bool)

(assert start!43202)

(declare-fun b!478537 () Bool)

(declare-fun e!281415 () Bool)

(declare-fun tp_is_empty!13583 () Bool)

(assert (=> b!478537 (= e!281415 tp_is_empty!13583)))

(declare-fun b!478538 () Bool)

(declare-fun e!281413 () Bool)

(declare-fun e!281416 () Bool)

(declare-fun mapRes!22069 () Bool)

(assert (=> b!478538 (= e!281413 (and e!281416 mapRes!22069))))

(declare-fun condMapEmpty!22069 () Bool)

(declare-datatypes ((V!19181 0))(
  ( (V!19182 (val!6839 Int)) )
))
(declare-datatypes ((ValueCell!6430 0))(
  ( (ValueCellFull!6430 (v!9124 V!19181)) (EmptyCell!6430) )
))
(declare-datatypes ((array!30811 0))(
  ( (array!30812 (arr!14810 (Array (_ BitVec 32) ValueCell!6430)) (size!15168 (_ BitVec 32))) )
))
(declare-fun _values!1516 () array!30811)

(declare-fun mapDefault!22069 () ValueCell!6430)

