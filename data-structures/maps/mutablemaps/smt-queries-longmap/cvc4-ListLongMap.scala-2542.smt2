; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!39082 () Bool)

(assert start!39082)

(declare-fun b_free!9341 () Bool)

(declare-fun b_next!9341 () Bool)

(assert (=> start!39082 (= b_free!9341 (not b_next!9341))))

(declare-fun tp!33551 () Bool)

(declare-fun b_and!16745 () Bool)

(assert (=> start!39082 (= tp!33551 b_and!16745)))

(declare-fun b!410082 () Bool)

(declare-fun e!245836 () Bool)

(declare-fun tp_is_empty!10493 () Bool)

(assert (=> b!410082 (= e!245836 tp_is_empty!10493)))

(declare-fun b!410083 () Bool)

(declare-fun e!245837 () Bool)

(declare-fun e!245834 () Bool)

(declare-fun mapRes!17361 () Bool)

(assert (=> b!410083 (= e!245837 (and e!245834 mapRes!17361))))

(declare-fun condMapEmpty!17361 () Bool)

(declare-datatypes ((V!15095 0))(
  ( (V!15096 (val!5291 Int)) )
))
(declare-datatypes ((ValueCell!4903 0))(
  ( (ValueCellFull!4903 (v!7534 V!15095)) (EmptyCell!4903) )
))
(declare-datatypes ((array!24837 0))(
  ( (array!24838 (arr!11865 (Array (_ BitVec 32) ValueCell!4903)) (size!12217 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!24837)

(declare-fun mapDefault!17361 () ValueCell!4903)

