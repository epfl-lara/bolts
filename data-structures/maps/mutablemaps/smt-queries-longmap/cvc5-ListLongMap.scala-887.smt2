; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!20430 () Bool)

(assert start!20430)

(declare-fun b_free!5077 () Bool)

(declare-fun b_next!5077 () Bool)

(assert (=> start!20430 (= b_free!5077 (not b_next!5077))))

(declare-fun tp!18263 () Bool)

(declare-fun b_and!11841 () Bool)

(assert (=> start!20430 (= tp!18263 b_and!11841)))

(declare-fun b!201970 () Bool)

(declare-fun e!132341 () Bool)

(declare-fun tp_is_empty!4933 () Bool)

(assert (=> b!201970 (= e!132341 tp_is_empty!4933)))

(declare-fun b!201971 () Bool)

(declare-fun e!132337 () Bool)

(declare-fun mapRes!8468 () Bool)

(assert (=> b!201971 (= e!132337 (and e!132341 mapRes!8468))))

(declare-fun condMapEmpty!8468 () Bool)

(declare-datatypes ((V!6225 0))(
  ( (V!6226 (val!2511 Int)) )
))
(declare-datatypes ((ValueCell!2123 0))(
  ( (ValueCellFull!2123 (v!4477 V!6225)) (EmptyCell!2123) )
))
(declare-datatypes ((array!9094 0))(
  ( (array!9095 (arr!4297 (Array (_ BitVec 32) ValueCell!2123)) (size!4622 (_ BitVec 32))) )
))
(declare-fun _values!649 () array!9094)

(declare-fun mapDefault!8468 () ValueCell!2123)

