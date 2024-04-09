; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!41932 () Bool)

(assert start!41932)

(declare-fun b_free!11513 () Bool)

(declare-fun b_next!11513 () Bool)

(assert (=> start!41932 (= b_free!11513 (not b_next!11513))))

(declare-fun tp!40551 () Bool)

(declare-fun b_and!19919 () Bool)

(assert (=> start!41932 (= tp!40551 b_and!19919)))

(declare-fun b!467867 () Bool)

(declare-fun e!273779 () Bool)

(declare-fun tp_is_empty!12941 () Bool)

(assert (=> b!467867 (= e!273779 tp_is_empty!12941)))

(declare-fun b!467868 () Bool)

(declare-fun e!273778 () Bool)

(declare-fun mapRes!21103 () Bool)

(assert (=> b!467868 (= e!273778 (and e!273779 mapRes!21103))))

(declare-fun condMapEmpty!21103 () Bool)

(declare-datatypes ((V!18359 0))(
  ( (V!18360 (val!6515 Int)) )
))
(declare-datatypes ((ValueCell!6127 0))(
  ( (ValueCellFull!6127 (v!8800 V!18359)) (EmptyCell!6127) )
))
(declare-datatypes ((array!29615 0))(
  ( (array!29616 (arr!14231 (Array (_ BitVec 32) ValueCell!6127)) (size!14583 (_ BitVec 32))) )
))
(declare-fun _values!833 () array!29615)

(declare-fun mapDefault!21103 () ValueCell!6127)

