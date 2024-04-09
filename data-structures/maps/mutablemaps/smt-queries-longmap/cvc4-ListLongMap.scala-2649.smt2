; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!39724 () Bool)

(assert start!39724)

(declare-fun b_free!9983 () Bool)

(declare-fun b_next!9983 () Bool)

(assert (=> start!39724 (= b_free!9983 (not b_next!9983))))

(declare-fun tp!35477 () Bool)

(declare-fun b_and!17657 () Bool)

(assert (=> start!39724 (= tp!35477 b_and!17657)))

(declare-fun mapIsEmpty!18324 () Bool)

(declare-fun mapRes!18324 () Bool)

(assert (=> mapIsEmpty!18324 mapRes!18324))

(declare-fun b!426813 () Bool)

(declare-fun e!253146 () Bool)

(declare-fun e!253145 () Bool)

(assert (=> b!426813 (= e!253146 (and e!253145 mapRes!18324))))

(declare-fun condMapEmpty!18324 () Bool)

(declare-datatypes ((V!15951 0))(
  ( (V!15952 (val!5612 Int)) )
))
(declare-datatypes ((ValueCell!5224 0))(
  ( (ValueCellFull!5224 (v!7855 V!15951)) (EmptyCell!5224) )
))
(declare-datatypes ((array!26091 0))(
  ( (array!26092 (arr!12492 (Array (_ BitVec 32) ValueCell!5224)) (size!12844 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!26091)

(declare-fun mapDefault!18324 () ValueCell!5224)

