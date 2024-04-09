; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!69982 () Bool)

(assert start!69982)

(declare-fun b_free!12391 () Bool)

(declare-fun b_next!12391 () Bool)

(assert (=> start!69982 (= b_free!12391 (not b_next!12391))))

(declare-fun tp!43884 () Bool)

(declare-fun b_and!21177 () Bool)

(assert (=> start!69982 (= tp!43884 b_and!21177)))

(declare-fun b!813028 () Bool)

(declare-fun e!450508 () Bool)

(declare-fun e!450512 () Bool)

(declare-fun mapRes!22729 () Bool)

(assert (=> b!813028 (= e!450508 (and e!450512 mapRes!22729))))

(declare-fun condMapEmpty!22729 () Bool)

(declare-datatypes ((V!23803 0))(
  ( (V!23804 (val!7098 Int)) )
))
(declare-datatypes ((ValueCell!6635 0))(
  ( (ValueCellFull!6635 (v!9521 V!23803)) (EmptyCell!6635) )
))
(declare-datatypes ((array!44392 0))(
  ( (array!44393 (arr!21253 (Array (_ BitVec 32) ValueCell!6635)) (size!21674 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!44392)

(declare-fun mapDefault!22729 () ValueCell!6635)

