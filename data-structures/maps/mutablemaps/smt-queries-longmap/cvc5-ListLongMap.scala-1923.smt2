; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!34192 () Bool)

(assert start!34192)

(declare-fun b_free!7207 () Bool)

(declare-fun b_next!7207 () Bool)

(assert (=> start!34192 (= b_free!7207 (not b_next!7207))))

(declare-fun tp!25154 () Bool)

(declare-fun b_and!14425 () Bool)

(assert (=> start!34192 (= tp!25154 b_and!14425)))

(declare-fun b!340556 () Bool)

(declare-fun e!208913 () Bool)

(declare-fun e!208915 () Bool)

(declare-fun mapRes!12165 () Bool)

(assert (=> b!340556 (= e!208913 (and e!208915 mapRes!12165))))

(declare-fun condMapEmpty!12165 () Bool)

(declare-datatypes ((V!10523 0))(
  ( (V!10524 (val!3624 Int)) )
))
(declare-datatypes ((ValueCell!3236 0))(
  ( (ValueCellFull!3236 (v!5792 V!10523)) (EmptyCell!3236) )
))
(declare-datatypes ((array!17887 0))(
  ( (array!17888 (arr!8461 (Array (_ BitVec 32) ValueCell!3236)) (size!8813 (_ BitVec 32))) )
))
(declare-fun _values!1525 () array!17887)

(declare-fun mapDefault!12165 () ValueCell!3236)

