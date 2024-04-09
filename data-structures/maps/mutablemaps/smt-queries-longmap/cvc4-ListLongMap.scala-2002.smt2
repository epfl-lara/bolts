; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!35004 () Bool)

(assert start!35004)

(declare-fun b_free!7685 () Bool)

(declare-fun b_next!7685 () Bool)

(assert (=> start!35004 (= b_free!7685 (not b_next!7685))))

(declare-fun tp!26633 () Bool)

(declare-fun b_and!14933 () Bool)

(assert (=> start!35004 (= tp!26633 b_and!14933)))

(declare-fun b!350343 () Bool)

(declare-fun e!214612 () Bool)

(declare-fun e!214610 () Bool)

(declare-fun mapRes!12927 () Bool)

(assert (=> b!350343 (= e!214612 (and e!214610 mapRes!12927))))

(declare-fun condMapEmpty!12927 () Bool)

(declare-datatypes ((V!11159 0))(
  ( (V!11160 (val!3863 Int)) )
))
(declare-datatypes ((ValueCell!3475 0))(
  ( (ValueCellFull!3475 (v!6046 V!11159)) (EmptyCell!3475) )
))
(declare-datatypes ((array!18829 0))(
  ( (array!18830 (arr!8917 (Array (_ BitVec 32) ValueCell!3475)) (size!9269 (_ BitVec 32))) )
))
(declare-fun _values!1525 () array!18829)

(declare-fun mapDefault!12927 () ValueCell!3475)

