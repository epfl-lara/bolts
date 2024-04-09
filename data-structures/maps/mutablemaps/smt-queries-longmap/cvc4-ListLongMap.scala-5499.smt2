; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!72810 () Bool)

(assert start!72810)

(declare-fun mapIsEmpty!25349 () Bool)

(declare-fun mapRes!25349 () Bool)

(assert (=> mapIsEmpty!25349 mapRes!25349))

(declare-fun b!844526 () Bool)

(declare-fun e!471432 () Bool)

(declare-fun e!471433 () Bool)

(assert (=> b!844526 (= e!471432 (and e!471433 mapRes!25349))))

(declare-fun condMapEmpty!25349 () Bool)

(declare-datatypes ((V!26157 0))(
  ( (V!26158 (val!7964 Int)) )
))
(declare-datatypes ((ValueCell!7477 0))(
  ( (ValueCellFull!7477 (v!10385 V!26157)) (EmptyCell!7477) )
))
(declare-datatypes ((array!47882 0))(
  ( (array!47883 (arr!22968 (Array (_ BitVec 32) ValueCell!7477)) (size!23409 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!47882)

(declare-fun mapDefault!25349 () ValueCell!7477)

