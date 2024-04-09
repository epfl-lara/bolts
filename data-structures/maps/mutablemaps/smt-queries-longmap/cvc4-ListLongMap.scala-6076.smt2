; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!78596 () Bool)

(assert start!78596)

(declare-fun b_free!16781 () Bool)

(declare-fun b_next!16781 () Bool)

(assert (=> start!78596 (= b_free!16781 (not b_next!16781))))

(declare-fun tp!58784 () Bool)

(declare-fun b_and!27421 () Bool)

(assert (=> start!78596 (= tp!58784 b_and!27421)))

(declare-fun mapNonEmpty!30690 () Bool)

(declare-fun mapRes!30690 () Bool)

(declare-fun tp!58785 () Bool)

(declare-fun e!514027 () Bool)

(assert (=> mapNonEmpty!30690 (= mapRes!30690 (and tp!58785 e!514027))))

(declare-datatypes ((V!30683 0))(
  ( (V!30684 (val!9695 Int)) )
))
(declare-datatypes ((ValueCell!9163 0))(
  ( (ValueCellFull!9163 (v!12213 V!30683)) (EmptyCell!9163) )
))
(declare-fun mapValue!30690 () ValueCell!9163)

(declare-fun mapKey!30690 () (_ BitVec 32))

(declare-fun mapRest!30690 () (Array (_ BitVec 32) ValueCell!9163))

(declare-datatypes ((array!54582 0))(
  ( (array!54583 (arr!26232 (Array (_ BitVec 32) ValueCell!9163)) (size!26692 (_ BitVec 32))) )
))
(declare-fun _values!1231 () array!54582)

(assert (=> mapNonEmpty!30690 (= (arr!26232 _values!1231) (store mapRest!30690 mapKey!30690 mapValue!30690))))

(declare-fun b!915715 () Bool)

(declare-fun e!514028 () Bool)

(declare-fun e!514025 () Bool)

(assert (=> b!915715 (= e!514028 (and e!514025 mapRes!30690))))

(declare-fun condMapEmpty!30690 () Bool)

(declare-fun mapDefault!30690 () ValueCell!9163)

