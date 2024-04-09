; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!78004 () Bool)

(assert start!78004)

(declare-fun b_free!16519 () Bool)

(declare-fun b_next!16519 () Bool)

(assert (=> start!78004 (= b_free!16519 (not b_next!16519))))

(declare-fun tp!57826 () Bool)

(declare-fun b_and!27107 () Bool)

(assert (=> start!78004 (= tp!57826 b_and!27107)))

(declare-fun b!910191 () Bool)

(declare-fun e!510353 () Bool)

(declare-fun e!510355 () Bool)

(declare-fun mapRes!30124 () Bool)

(assert (=> b!910191 (= e!510353 (and e!510355 mapRes!30124))))

(declare-fun condMapEmpty!30124 () Bool)

(declare-datatypes ((V!30215 0))(
  ( (V!30216 (val!9519 Int)) )
))
(declare-datatypes ((ValueCell!8987 0))(
  ( (ValueCellFull!8987 (v!12027 V!30215)) (EmptyCell!8987) )
))
(declare-datatypes ((array!53886 0))(
  ( (array!53887 (arr!25896 (Array (_ BitVec 32) ValueCell!8987)) (size!26356 (_ BitVec 32))) )
))
(declare-fun _values!1152 () array!53886)

(declare-fun mapDefault!30124 () ValueCell!8987)

