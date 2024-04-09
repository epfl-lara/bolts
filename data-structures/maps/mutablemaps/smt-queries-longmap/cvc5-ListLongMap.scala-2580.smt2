; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!39306 () Bool)

(assert start!39306)

(declare-fun b_free!9565 () Bool)

(declare-fun b_next!9565 () Bool)

(assert (=> start!39306 (= b_free!9565 (not b_next!9565))))

(declare-fun tp!34223 () Bool)

(declare-fun b_and!17023 () Bool)

(assert (=> start!39306 (= tp!34223 b_and!17023)))

(declare-fun b!415760 () Bool)

(declare-fun e!248276 () Bool)

(declare-fun e!248278 () Bool)

(declare-fun mapRes!17697 () Bool)

(assert (=> b!415760 (= e!248276 (and e!248278 mapRes!17697))))

(declare-fun condMapEmpty!17697 () Bool)

(declare-datatypes ((V!15395 0))(
  ( (V!15396 (val!5403 Int)) )
))
(declare-datatypes ((ValueCell!5015 0))(
  ( (ValueCellFull!5015 (v!7646 V!15395)) (EmptyCell!5015) )
))
(declare-datatypes ((array!25271 0))(
  ( (array!25272 (arr!12082 (Array (_ BitVec 32) ValueCell!5015)) (size!12434 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!25271)

(declare-fun mapDefault!17697 () ValueCell!5015)

