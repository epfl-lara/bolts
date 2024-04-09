; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!39390 () Bool)

(assert start!39390)

(declare-fun b_free!9649 () Bool)

(declare-fun b_next!9649 () Bool)

(assert (=> start!39390 (= b_free!9649 (not b_next!9649))))

(declare-fun tp!34476 () Bool)

(declare-fun b_and!17191 () Bool)

(assert (=> start!39390 (= tp!34476 b_and!17191)))

(declare-fun b!418238 () Bool)

(declare-fun e!249405 () Bool)

(declare-fun e!249404 () Bool)

(declare-fun mapRes!17823 () Bool)

(assert (=> b!418238 (= e!249405 (and e!249404 mapRes!17823))))

(declare-fun condMapEmpty!17823 () Bool)

(declare-datatypes ((V!15507 0))(
  ( (V!15508 (val!5445 Int)) )
))
(declare-datatypes ((ValueCell!5057 0))(
  ( (ValueCellFull!5057 (v!7688 V!15507)) (EmptyCell!5057) )
))
(declare-datatypes ((array!25437 0))(
  ( (array!25438 (arr!12165 (Array (_ BitVec 32) ValueCell!5057)) (size!12517 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!25437)

(declare-fun mapDefault!17823 () ValueCell!5057)

