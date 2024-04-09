; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!35040 () Bool)

(assert start!35040)

(declare-fun b_free!7721 () Bool)

(declare-fun b_next!7721 () Bool)

(assert (=> start!35040 (= b_free!7721 (not b_next!7721))))

(declare-fun tp!26742 () Bool)

(declare-fun b_and!14969 () Bool)

(assert (=> start!35040 (= tp!26742 b_and!14969)))

(declare-fun b!350937 () Bool)

(declare-fun e!214936 () Bool)

(declare-fun e!214932 () Bool)

(declare-fun mapRes!12981 () Bool)

(assert (=> b!350937 (= e!214936 (and e!214932 mapRes!12981))))

(declare-fun condMapEmpty!12981 () Bool)

(declare-datatypes ((V!11207 0))(
  ( (V!11208 (val!3881 Int)) )
))
(declare-datatypes ((ValueCell!3493 0))(
  ( (ValueCellFull!3493 (v!6064 V!11207)) (EmptyCell!3493) )
))
(declare-datatypes ((array!18891 0))(
  ( (array!18892 (arr!8948 (Array (_ BitVec 32) ValueCell!3493)) (size!9300 (_ BitVec 32))) )
))
(declare-fun _values!1525 () array!18891)

(declare-fun mapDefault!12981 () ValueCell!3493)

