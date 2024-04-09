; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!42602 () Bool)

(assert start!42602)

(declare-fun b_free!12029 () Bool)

(declare-fun b_next!12029 () Bool)

(assert (=> start!42602 (= b_free!12029 (not b_next!12029))))

(declare-fun tp!42127 () Bool)

(declare-fun b_and!20527 () Bool)

(assert (=> start!42602 (= tp!42127 b_and!20527)))

(declare-fun b!474998 () Bool)

(declare-fun e!278892 () Bool)

(declare-fun tp_is_empty!13457 () Bool)

(assert (=> b!474998 (= e!278892 tp_is_empty!13457)))

(declare-fun b!474999 () Bool)

(declare-fun e!278896 () Bool)

(declare-fun mapRes!21904 () Bool)

(assert (=> b!474999 (= e!278896 (and e!278892 mapRes!21904))))

(declare-fun condMapEmpty!21904 () Bool)

(declare-datatypes ((V!19047 0))(
  ( (V!19048 (val!6773 Int)) )
))
(declare-datatypes ((ValueCell!6385 0))(
  ( (ValueCellFull!6385 (v!9062 V!19047)) (EmptyCell!6385) )
))
(declare-datatypes ((array!30625 0))(
  ( (array!30626 (arr!14727 (Array (_ BitVec 32) ValueCell!6385)) (size!15079 (_ BitVec 32))) )
))
(declare-fun _values!833 () array!30625)

(declare-fun mapDefault!21904 () ValueCell!6385)

