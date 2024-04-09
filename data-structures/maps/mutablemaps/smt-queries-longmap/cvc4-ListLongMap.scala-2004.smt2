; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!35016 () Bool)

(assert start!35016)

(declare-fun b_free!7697 () Bool)

(declare-fun b_next!7697 () Bool)

(assert (=> start!35016 (= b_free!7697 (not b_next!7697))))

(declare-fun tp!26670 () Bool)

(declare-fun b_and!14945 () Bool)

(assert (=> start!35016 (= tp!26670 b_and!14945)))

(declare-fun mapNonEmpty!12945 () Bool)

(declare-fun mapRes!12945 () Bool)

(declare-fun tp!26669 () Bool)

(declare-fun e!214719 () Bool)

(assert (=> mapNonEmpty!12945 (= mapRes!12945 (and tp!26669 e!214719))))

(declare-datatypes ((V!11175 0))(
  ( (V!11176 (val!3869 Int)) )
))
(declare-datatypes ((ValueCell!3481 0))(
  ( (ValueCellFull!3481 (v!6052 V!11175)) (EmptyCell!3481) )
))
(declare-fun mapValue!12945 () ValueCell!3481)

(declare-fun mapRest!12945 () (Array (_ BitVec 32) ValueCell!3481))

(declare-datatypes ((array!18849 0))(
  ( (array!18850 (arr!8927 (Array (_ BitVec 32) ValueCell!3481)) (size!9279 (_ BitVec 32))) )
))
(declare-fun _values!1525 () array!18849)

(declare-fun mapKey!12945 () (_ BitVec 32))

(assert (=> mapNonEmpty!12945 (= (arr!8927 _values!1525) (store mapRest!12945 mapKey!12945 mapValue!12945))))

(declare-fun b!350541 () Bool)

(declare-fun tp_is_empty!7649 () Bool)

(assert (=> b!350541 (= e!214719 tp_is_empty!7649)))

(declare-fun b!350542 () Bool)

(declare-fun e!214716 () Bool)

(declare-fun e!214717 () Bool)

(assert (=> b!350542 (= e!214716 (and e!214717 mapRes!12945))))

(declare-fun condMapEmpty!12945 () Bool)

(declare-fun mapDefault!12945 () ValueCell!3481)

