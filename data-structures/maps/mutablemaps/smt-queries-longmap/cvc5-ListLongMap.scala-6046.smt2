; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!78224 () Bool)

(assert start!78224)

(declare-fun b_free!16687 () Bool)

(declare-fun b_next!16687 () Bool)

(assert (=> start!78224 (= b_free!16687 (not b_next!16687))))

(declare-fun tp!58339 () Bool)

(declare-fun b_and!27281 () Bool)

(assert (=> start!78224 (= tp!58339 b_and!27281)))

(declare-fun b!912413 () Bool)

(declare-fun e!511840 () Bool)

(declare-fun e!511839 () Bool)

(declare-fun mapRes!30385 () Bool)

(assert (=> b!912413 (= e!511840 (and e!511839 mapRes!30385))))

(declare-fun condMapEmpty!30385 () Bool)

(declare-datatypes ((V!30439 0))(
  ( (V!30440 (val!9603 Int)) )
))
(declare-datatypes ((ValueCell!9071 0))(
  ( (ValueCellFull!9071 (v!12114 V!30439)) (EmptyCell!9071) )
))
(declare-datatypes ((array!54216 0))(
  ( (array!54217 (arr!26058 (Array (_ BitVec 32) ValueCell!9071)) (size!26518 (_ BitVec 32))) )
))
(declare-fun _values!1152 () array!54216)

(declare-fun mapDefault!30385 () ValueCell!9071)

