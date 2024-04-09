; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!41698 () Bool)

(assert start!41698)

(declare-fun b_free!11329 () Bool)

(declare-fun b_next!11329 () Bool)

(assert (=> start!41698 (= b_free!11329 (not b_next!11329))))

(declare-fun tp!39990 () Bool)

(declare-fun b_and!19703 () Bool)

(assert (=> start!41698 (= tp!39990 b_and!19703)))

(declare-fun b!465287 () Bool)

(declare-fun e!271929 () Bool)

(declare-fun tp_is_empty!12757 () Bool)

(assert (=> b!465287 (= e!271929 tp_is_empty!12757)))

(declare-fun b!465288 () Bool)

(declare-fun e!271932 () Bool)

(declare-fun e!271928 () Bool)

(declare-fun mapRes!20818 () Bool)

(assert (=> b!465288 (= e!271932 (and e!271928 mapRes!20818))))

(declare-fun condMapEmpty!20818 () Bool)

(declare-datatypes ((V!18115 0))(
  ( (V!18116 (val!6423 Int)) )
))
(declare-datatypes ((ValueCell!6035 0))(
  ( (ValueCellFull!6035 (v!8706 V!18115)) (EmptyCell!6035) )
))
(declare-datatypes ((array!29255 0))(
  ( (array!29256 (arr!14054 (Array (_ BitVec 32) ValueCell!6035)) (size!14406 (_ BitVec 32))) )
))
(declare-fun _values!833 () array!29255)

(declare-fun mapDefault!20818 () ValueCell!6035)

