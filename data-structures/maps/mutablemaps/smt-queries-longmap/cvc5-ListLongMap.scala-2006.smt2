; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!35024 () Bool)

(assert start!35024)

(declare-fun b_free!7705 () Bool)

(declare-fun b_next!7705 () Bool)

(assert (=> start!35024 (= b_free!7705 (not b_next!7705))))

(declare-fun tp!26694 () Bool)

(declare-fun b_and!14953 () Bool)

(assert (=> start!35024 (= tp!26694 b_and!14953)))

(declare-fun b!350673 () Bool)

(declare-fun e!214789 () Bool)

(declare-fun e!214792 () Bool)

(declare-fun mapRes!12957 () Bool)

(assert (=> b!350673 (= e!214789 (and e!214792 mapRes!12957))))

(declare-fun condMapEmpty!12957 () Bool)

(declare-datatypes ((V!11187 0))(
  ( (V!11188 (val!3873 Int)) )
))
(declare-datatypes ((ValueCell!3485 0))(
  ( (ValueCellFull!3485 (v!6056 V!11187)) (EmptyCell!3485) )
))
(declare-datatypes ((array!18863 0))(
  ( (array!18864 (arr!8934 (Array (_ BitVec 32) ValueCell!3485)) (size!9286 (_ BitVec 32))) )
))
(declare-fun _values!1525 () array!18863)

(declare-fun mapDefault!12957 () ValueCell!3485)

