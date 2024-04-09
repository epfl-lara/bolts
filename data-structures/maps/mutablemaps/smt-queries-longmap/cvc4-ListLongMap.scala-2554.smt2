; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!39154 () Bool)

(assert start!39154)

(declare-fun b_free!9413 () Bool)

(declare-fun b_next!9413 () Bool)

(assert (=> start!39154 (= b_free!9413 (not b_next!9413))))

(declare-fun tp!33768 () Bool)

(declare-fun b_and!16817 () Bool)

(assert (=> start!39154 (= tp!33768 b_and!16817)))

(declare-fun mapIsEmpty!17469 () Bool)

(declare-fun mapRes!17469 () Bool)

(assert (=> mapIsEmpty!17469 mapRes!17469))

(declare-fun b!411702 () Bool)

(declare-fun e!246486 () Bool)

(declare-fun e!246485 () Bool)

(assert (=> b!411702 (= e!246486 (and e!246485 mapRes!17469))))

(declare-fun condMapEmpty!17469 () Bool)

(declare-datatypes ((V!15191 0))(
  ( (V!15192 (val!5327 Int)) )
))
(declare-datatypes ((ValueCell!4939 0))(
  ( (ValueCellFull!4939 (v!7570 V!15191)) (EmptyCell!4939) )
))
(declare-datatypes ((array!24973 0))(
  ( (array!24974 (arr!11933 (Array (_ BitVec 32) ValueCell!4939)) (size!12285 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!24973)

(declare-fun mapDefault!17469 () ValueCell!4939)

