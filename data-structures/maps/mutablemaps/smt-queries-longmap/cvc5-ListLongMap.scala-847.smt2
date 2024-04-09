; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!20190 () Bool)

(assert start!20190)

(declare-fun b_free!4837 () Bool)

(declare-fun b_next!4837 () Bool)

(assert (=> start!20190 (= b_free!4837 (not b_next!4837))))

(declare-fun tp!17542 () Bool)

(declare-fun b_and!11601 () Bool)

(assert (=> start!20190 (= tp!17542 b_and!11601)))

(declare-fun b!198060 () Bool)

(declare-fun e!130239 () Bool)

(declare-fun tp_is_empty!4693 () Bool)

(assert (=> b!198060 (= e!130239 tp_is_empty!4693)))

(declare-fun b!198061 () Bool)

(declare-fun e!130240 () Bool)

(declare-fun e!130238 () Bool)

(declare-fun mapRes!8108 () Bool)

(assert (=> b!198061 (= e!130240 (and e!130238 mapRes!8108))))

(declare-fun condMapEmpty!8108 () Bool)

(declare-datatypes ((V!5905 0))(
  ( (V!5906 (val!2391 Int)) )
))
(declare-datatypes ((ValueCell!2003 0))(
  ( (ValueCellFull!2003 (v!4357 V!5905)) (EmptyCell!2003) )
))
(declare-datatypes ((array!8636 0))(
  ( (array!8637 (arr!4068 (Array (_ BitVec 32) ValueCell!2003)) (size!4393 (_ BitVec 32))) )
))
(declare-fun _values!649 () array!8636)

(declare-fun mapDefault!8108 () ValueCell!2003)

