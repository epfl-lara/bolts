; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!42658 () Bool)

(assert start!42658)

(declare-fun b_free!12055 () Bool)

(declare-fun b_next!12055 () Bool)

(assert (=> start!42658 (= b_free!12055 (not b_next!12055))))

(declare-fun tp!42210 () Bool)

(declare-fun b_and!20573 () Bool)

(assert (=> start!42658 (= tp!42210 b_and!20573)))

(declare-fun b!475551 () Bool)

(declare-fun e!279273 () Bool)

(declare-fun e!279274 () Bool)

(declare-fun mapRes!21949 () Bool)

(assert (=> b!475551 (= e!279273 (and e!279274 mapRes!21949))))

(declare-fun condMapEmpty!21949 () Bool)

(declare-datatypes ((V!19083 0))(
  ( (V!19084 (val!6786 Int)) )
))
(declare-datatypes ((ValueCell!6398 0))(
  ( (ValueCellFull!6398 (v!9076 V!19083)) (EmptyCell!6398) )
))
(declare-datatypes ((array!30677 0))(
  ( (array!30678 (arr!14751 (Array (_ BitVec 32) ValueCell!6398)) (size!15103 (_ BitVec 32))) )
))
(declare-fun _values!833 () array!30677)

(declare-fun mapDefault!21949 () ValueCell!6398)

