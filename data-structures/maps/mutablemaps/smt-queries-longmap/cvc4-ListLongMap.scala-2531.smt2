; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!39016 () Bool)

(assert start!39016)

(declare-fun b!408653 () Bool)

(declare-fun e!245245 () Bool)

(declare-fun e!245240 () Bool)

(declare-fun mapRes!17262 () Bool)

(assert (=> b!408653 (= e!245245 (and e!245240 mapRes!17262))))

(declare-fun condMapEmpty!17262 () Bool)

(declare-datatypes ((V!15007 0))(
  ( (V!15008 (val!5258 Int)) )
))
(declare-datatypes ((ValueCell!4870 0))(
  ( (ValueCellFull!4870 (v!7501 V!15007)) (EmptyCell!4870) )
))
(declare-datatypes ((array!24709 0))(
  ( (array!24710 (arr!11801 (Array (_ BitVec 32) ValueCell!4870)) (size!12153 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!24709)

(declare-fun mapDefault!17262 () ValueCell!4870)

