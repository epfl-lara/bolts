; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!20232 () Bool)

(assert start!20232)

(declare-fun b_free!4879 () Bool)

(declare-fun b_next!4879 () Bool)

(assert (=> start!20232 (= b_free!4879 (not b_next!4879))))

(declare-fun tp!17669 () Bool)

(declare-fun b_and!11643 () Bool)

(assert (=> start!20232 (= tp!17669 b_and!11643)))

(declare-fun mapIsEmpty!8171 () Bool)

(declare-fun mapRes!8171 () Bool)

(assert (=> mapIsEmpty!8171 mapRes!8171))

(declare-fun b!198690 () Bool)

(declare-fun e!130553 () Bool)

(declare-fun e!130551 () Bool)

(assert (=> b!198690 (= e!130553 (and e!130551 mapRes!8171))))

(declare-fun condMapEmpty!8171 () Bool)

(declare-datatypes ((V!5961 0))(
  ( (V!5962 (val!2412 Int)) )
))
(declare-datatypes ((ValueCell!2024 0))(
  ( (ValueCellFull!2024 (v!4378 V!5961)) (EmptyCell!2024) )
))
(declare-datatypes ((array!8712 0))(
  ( (array!8713 (arr!4106 (Array (_ BitVec 32) ValueCell!2024)) (size!4431 (_ BitVec 32))) )
))
(declare-fun _values!649 () array!8712)

(declare-fun mapDefault!8171 () ValueCell!2024)

