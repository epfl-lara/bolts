; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!42100 () Bool)

(assert start!42100)

(declare-fun b_free!11645 () Bool)

(declare-fun b_next!11645 () Bool)

(assert (=> start!42100 (= b_free!11645 (not b_next!11645))))

(declare-fun tp!40954 () Bool)

(declare-fun b_and!20073 () Bool)

(assert (=> start!42100 (= tp!40954 b_and!20073)))

(declare-fun b!469778 () Bool)

(declare-fun e!275176 () Bool)

(declare-fun tp_is_empty!13073 () Bool)

(assert (=> b!469778 (= e!275176 tp_is_empty!13073)))

(declare-fun b!469779 () Bool)

(declare-fun e!275172 () Bool)

(declare-fun e!275171 () Bool)

(declare-fun mapRes!21307 () Bool)

(assert (=> b!469779 (= e!275172 (and e!275171 mapRes!21307))))

(declare-fun condMapEmpty!21307 () Bool)

(declare-datatypes ((V!18535 0))(
  ( (V!18536 (val!6581 Int)) )
))
(declare-datatypes ((ValueCell!6193 0))(
  ( (ValueCellFull!6193 (v!8867 V!18535)) (EmptyCell!6193) )
))
(declare-datatypes ((array!29879 0))(
  ( (array!29880 (arr!14361 (Array (_ BitVec 32) ValueCell!6193)) (size!14713 (_ BitVec 32))) )
))
(declare-fun _values!833 () array!29879)

(declare-fun mapDefault!21307 () ValueCell!6193)

