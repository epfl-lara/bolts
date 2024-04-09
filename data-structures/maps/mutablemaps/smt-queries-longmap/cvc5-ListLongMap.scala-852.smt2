; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!20220 () Bool)

(assert start!20220)

(declare-fun b_free!4867 () Bool)

(declare-fun b_next!4867 () Bool)

(assert (=> start!20220 (= b_free!4867 (not b_next!4867))))

(declare-fun tp!17632 () Bool)

(declare-fun b_and!11631 () Bool)

(assert (=> start!20220 (= tp!17632 b_and!11631)))

(declare-fun b!198510 () Bool)

(declare-fun e!130464 () Bool)

(declare-fun e!130463 () Bool)

(declare-fun mapRes!8153 () Bool)

(assert (=> b!198510 (= e!130464 (and e!130463 mapRes!8153))))

(declare-fun condMapEmpty!8153 () Bool)

(declare-datatypes ((V!5945 0))(
  ( (V!5946 (val!2406 Int)) )
))
(declare-datatypes ((ValueCell!2018 0))(
  ( (ValueCellFull!2018 (v!4372 V!5945)) (EmptyCell!2018) )
))
(declare-datatypes ((array!8694 0))(
  ( (array!8695 (arr!4097 (Array (_ BitVec 32) ValueCell!2018)) (size!4422 (_ BitVec 32))) )
))
(declare-fun _values!649 () array!8694)

(declare-fun mapDefault!8153 () ValueCell!2018)

