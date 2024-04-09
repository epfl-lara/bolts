; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!39180 () Bool)

(assert start!39180)

(declare-fun b_free!9439 () Bool)

(declare-fun b_next!9439 () Bool)

(assert (=> start!39180 (= b_free!9439 (not b_next!9439))))

(declare-fun tp!33845 () Bool)

(declare-fun b_and!16843 () Bool)

(assert (=> start!39180 (= tp!33845 b_and!16843)))

(declare-fun b!412287 () Bool)

(declare-fun e!246718 () Bool)

(declare-fun e!246717 () Bool)

(declare-fun mapRes!17508 () Bool)

(assert (=> b!412287 (= e!246718 (and e!246717 mapRes!17508))))

(declare-fun condMapEmpty!17508 () Bool)

(declare-datatypes ((V!15227 0))(
  ( (V!15228 (val!5340 Int)) )
))
(declare-datatypes ((ValueCell!4952 0))(
  ( (ValueCellFull!4952 (v!7583 V!15227)) (EmptyCell!4952) )
))
(declare-datatypes ((array!25023 0))(
  ( (array!25024 (arr!11958 (Array (_ BitVec 32) ValueCell!4952)) (size!12310 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!25023)

(declare-fun mapDefault!17508 () ValueCell!4952)

