; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!39148 () Bool)

(assert start!39148)

(declare-fun b_free!9407 () Bool)

(declare-fun b_next!9407 () Bool)

(assert (=> start!39148 (= b_free!9407 (not b_next!9407))))

(declare-fun tp!33749 () Bool)

(declare-fun b_and!16811 () Bool)

(assert (=> start!39148 (= tp!33749 b_and!16811)))

(declare-fun b!411567 () Bool)

(declare-fun e!246430 () Bool)

(declare-fun e!246433 () Bool)

(declare-fun mapRes!17460 () Bool)

(assert (=> b!411567 (= e!246430 (and e!246433 mapRes!17460))))

(declare-fun condMapEmpty!17460 () Bool)

(declare-datatypes ((V!15183 0))(
  ( (V!15184 (val!5324 Int)) )
))
(declare-datatypes ((ValueCell!4936 0))(
  ( (ValueCellFull!4936 (v!7567 V!15183)) (EmptyCell!4936) )
))
(declare-datatypes ((array!24963 0))(
  ( (array!24964 (arr!11928 (Array (_ BitVec 32) ValueCell!4936)) (size!12280 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!24963)

(declare-fun mapDefault!17460 () ValueCell!4936)

