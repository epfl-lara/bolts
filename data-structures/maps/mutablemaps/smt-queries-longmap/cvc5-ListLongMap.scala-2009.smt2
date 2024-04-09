; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!35042 () Bool)

(assert start!35042)

(declare-fun b_free!7723 () Bool)

(declare-fun b_next!7723 () Bool)

(assert (=> start!35042 (= b_free!7723 (not b_next!7723))))

(declare-fun tp!26748 () Bool)

(declare-fun b_and!14971 () Bool)

(assert (=> start!35042 (= tp!26748 b_and!14971)))

(declare-fun mapNonEmpty!12984 () Bool)

(declare-fun mapRes!12984 () Bool)

(declare-fun tp!26747 () Bool)

(declare-fun e!214950 () Bool)

(assert (=> mapNonEmpty!12984 (= mapRes!12984 (and tp!26747 e!214950))))

(declare-datatypes ((V!11211 0))(
  ( (V!11212 (val!3882 Int)) )
))
(declare-datatypes ((ValueCell!3494 0))(
  ( (ValueCellFull!3494 (v!6065 V!11211)) (EmptyCell!3494) )
))
(declare-fun mapValue!12984 () ValueCell!3494)

(declare-fun mapKey!12984 () (_ BitVec 32))

(declare-fun mapRest!12984 () (Array (_ BitVec 32) ValueCell!3494))

(declare-datatypes ((array!18893 0))(
  ( (array!18894 (arr!8949 (Array (_ BitVec 32) ValueCell!3494)) (size!9301 (_ BitVec 32))) )
))
(declare-fun _values!1525 () array!18893)

(assert (=> mapNonEmpty!12984 (= (arr!8949 _values!1525) (store mapRest!12984 mapKey!12984 mapValue!12984))))

(declare-fun b!350970 () Bool)

(declare-fun e!214954 () Bool)

(declare-fun e!214952 () Bool)

(assert (=> b!350970 (= e!214954 (and e!214952 mapRes!12984))))

(declare-fun condMapEmpty!12984 () Bool)

(declare-fun mapDefault!12984 () ValueCell!3494)

