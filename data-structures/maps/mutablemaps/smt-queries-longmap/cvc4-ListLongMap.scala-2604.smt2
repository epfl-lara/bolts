; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!39454 () Bool)

(assert start!39454)

(declare-fun b_free!9713 () Bool)

(declare-fun b_next!9713 () Bool)

(assert (=> start!39454 (= b_free!9713 (not b_next!9713))))

(declare-fun tp!34667 () Bool)

(declare-fun b_and!17319 () Bool)

(assert (=> start!39454 (= tp!34667 b_and!17319)))

(declare-fun b!420126 () Bool)

(declare-fun e!250274 () Bool)

(declare-fun e!250273 () Bool)

(declare-fun mapRes!17919 () Bool)

(assert (=> b!420126 (= e!250274 (and e!250273 mapRes!17919))))

(declare-fun condMapEmpty!17919 () Bool)

(declare-datatypes ((V!15591 0))(
  ( (V!15592 (val!5477 Int)) )
))
(declare-datatypes ((ValueCell!5089 0))(
  ( (ValueCellFull!5089 (v!7720 V!15591)) (EmptyCell!5089) )
))
(declare-datatypes ((array!25561 0))(
  ( (array!25562 (arr!12227 (Array (_ BitVec 32) ValueCell!5089)) (size!12579 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!25561)

(declare-fun mapDefault!17919 () ValueCell!5089)

