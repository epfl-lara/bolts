; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!78090 () Bool)

(assert start!78090)

(declare-fun b_free!16589 () Bool)

(declare-fun b_next!16589 () Bool)

(assert (=> start!78090 (= b_free!16589 (not b_next!16589))))

(declare-fun tp!58039 () Bool)

(declare-fun b_and!27179 () Bool)

(assert (=> start!78090 (= tp!58039 b_and!27179)))

(declare-fun b!911049 () Bool)

(declare-fun e!510951 () Bool)

(declare-fun tp_is_empty!19007 () Bool)

(assert (=> b!911049 (= e!510951 tp_is_empty!19007)))

(declare-fun b!911050 () Bool)

(declare-fun e!510953 () Bool)

(declare-fun e!510949 () Bool)

(declare-fun mapRes!30232 () Bool)

(assert (=> b!911050 (= e!510953 (and e!510949 mapRes!30232))))

(declare-fun condMapEmpty!30232 () Bool)

(declare-datatypes ((V!30307 0))(
  ( (V!30308 (val!9554 Int)) )
))
(declare-datatypes ((ValueCell!9022 0))(
  ( (ValueCellFull!9022 (v!12063 V!30307)) (EmptyCell!9022) )
))
(declare-datatypes ((array!54024 0))(
  ( (array!54025 (arr!25964 (Array (_ BitVec 32) ValueCell!9022)) (size!26424 (_ BitVec 32))) )
))
(declare-fun _values!1152 () array!54024)

(declare-fun mapDefault!30232 () ValueCell!9022)

