; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!39060 () Bool)

(assert start!39060)

(declare-fun b_free!9319 () Bool)

(declare-fun b_next!9319 () Bool)

(assert (=> start!39060 (= b_free!9319 (not b_next!9319))))

(declare-fun tp!33486 () Bool)

(declare-fun b_and!16723 () Bool)

(assert (=> start!39060 (= tp!33486 b_and!16723)))

(declare-fun b!409587 () Bool)

(declare-fun e!245637 () Bool)

(declare-fun e!245640 () Bool)

(declare-fun mapRes!17328 () Bool)

(assert (=> b!409587 (= e!245637 (and e!245640 mapRes!17328))))

(declare-fun condMapEmpty!17328 () Bool)

(declare-datatypes ((V!15067 0))(
  ( (V!15068 (val!5280 Int)) )
))
(declare-datatypes ((ValueCell!4892 0))(
  ( (ValueCellFull!4892 (v!7523 V!15067)) (EmptyCell!4892) )
))
(declare-datatypes ((array!24795 0))(
  ( (array!24796 (arr!11844 (Array (_ BitVec 32) ValueCell!4892)) (size!12196 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!24795)

(declare-fun mapDefault!17328 () ValueCell!4892)

