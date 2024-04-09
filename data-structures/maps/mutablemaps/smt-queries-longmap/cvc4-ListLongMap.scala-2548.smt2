; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!39118 () Bool)

(assert start!39118)

(declare-fun b_free!9377 () Bool)

(declare-fun b_next!9377 () Bool)

(assert (=> start!39118 (= b_free!9377 (not b_next!9377))))

(declare-fun tp!33660 () Bool)

(declare-fun b_and!16781 () Bool)

(assert (=> start!39118 (= tp!33660 b_and!16781)))

(declare-fun b!410892 () Bool)

(declare-fun e!246160 () Bool)

(declare-fun e!246163 () Bool)

(declare-fun mapRes!17415 () Bool)

(assert (=> b!410892 (= e!246160 (and e!246163 mapRes!17415))))

(declare-fun condMapEmpty!17415 () Bool)

(declare-datatypes ((V!15143 0))(
  ( (V!15144 (val!5309 Int)) )
))
(declare-datatypes ((ValueCell!4921 0))(
  ( (ValueCellFull!4921 (v!7552 V!15143)) (EmptyCell!4921) )
))
(declare-datatypes ((array!24907 0))(
  ( (array!24908 (arr!11900 (Array (_ BitVec 32) ValueCell!4921)) (size!12252 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!24907)

(declare-fun mapDefault!17415 () ValueCell!4921)

