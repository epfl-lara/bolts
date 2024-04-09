; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!72696 () Bool)

(assert start!72696)

(declare-fun b!843329 () Bool)

(declare-fun e!470580 () Bool)

(declare-fun tp_is_empty!15719 () Bool)

(assert (=> b!843329 (= e!470580 tp_is_empty!15719)))

(declare-fun b!843330 () Bool)

(declare-fun e!470578 () Bool)

(declare-fun e!470577 () Bool)

(declare-fun mapRes!25178 () Bool)

(assert (=> b!843330 (= e!470578 (and e!470577 mapRes!25178))))

(declare-fun condMapEmpty!25178 () Bool)

(declare-datatypes ((V!26005 0))(
  ( (V!26006 (val!7907 Int)) )
))
(declare-datatypes ((ValueCell!7420 0))(
  ( (ValueCellFull!7420 (v!10328 V!26005)) (EmptyCell!7420) )
))
(declare-datatypes ((array!47672 0))(
  ( (array!47673 (arr!22863 (Array (_ BitVec 32) ValueCell!7420)) (size!23304 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!47672)

(declare-fun mapDefault!25178 () ValueCell!7420)

