; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!78228 () Bool)

(assert start!78228)

(declare-fun b_free!16691 () Bool)

(declare-fun b_next!16691 () Bool)

(assert (=> start!78228 (= b_free!16691 (not b_next!16691))))

(declare-fun tp!58350 () Bool)

(declare-fun b_and!27285 () Bool)

(assert (=> start!78228 (= tp!58350 b_and!27285)))

(declare-fun b!912473 () Bool)

(declare-fun e!511870 () Bool)

(declare-fun tp_is_empty!19109 () Bool)

(assert (=> b!912473 (= e!511870 tp_is_empty!19109)))

(declare-fun b!912474 () Bool)

(declare-fun e!511868 () Bool)

(declare-fun e!511869 () Bool)

(declare-fun mapRes!30391 () Bool)

(assert (=> b!912474 (= e!511868 (and e!511869 mapRes!30391))))

(declare-fun condMapEmpty!30391 () Bool)

(declare-datatypes ((V!30443 0))(
  ( (V!30444 (val!9605 Int)) )
))
(declare-datatypes ((ValueCell!9073 0))(
  ( (ValueCellFull!9073 (v!12116 V!30443)) (EmptyCell!9073) )
))
(declare-datatypes ((array!54222 0))(
  ( (array!54223 (arr!26061 (Array (_ BitVec 32) ValueCell!9073)) (size!26521 (_ BitVec 32))) )
))
(declare-fun _values!1152 () array!54222)

(declare-fun mapDefault!30391 () ValueCell!9073)

