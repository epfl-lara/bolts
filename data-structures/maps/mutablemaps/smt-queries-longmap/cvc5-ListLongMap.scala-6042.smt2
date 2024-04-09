; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!78180 () Bool)

(assert start!78180)

(declare-fun b_free!16663 () Bool)

(declare-fun b_next!16663 () Bool)

(assert (=> start!78180 (= b_free!16663 (not b_next!16663))))

(declare-fun tp!58264 () Bool)

(declare-fun b_and!27255 () Bool)

(assert (=> start!78180 (= tp!58264 b_and!27255)))

(declare-fun mapIsEmpty!30346 () Bool)

(declare-fun mapRes!30346 () Bool)

(assert (=> mapIsEmpty!30346 mapRes!30346))

(declare-fun b!911953 () Bool)

(declare-fun e!511580 () Bool)

(declare-fun e!511579 () Bool)

(assert (=> b!911953 (= e!511580 (and e!511579 mapRes!30346))))

(declare-fun condMapEmpty!30346 () Bool)

(declare-datatypes ((V!30407 0))(
  ( (V!30408 (val!9591 Int)) )
))
(declare-datatypes ((ValueCell!9059 0))(
  ( (ValueCellFull!9059 (v!12101 V!30407)) (EmptyCell!9059) )
))
(declare-datatypes ((array!54168 0))(
  ( (array!54169 (arr!26035 (Array (_ BitVec 32) ValueCell!9059)) (size!26495 (_ BitVec 32))) )
))
(declare-fun _values!1152 () array!54168)

(declare-fun mapDefault!30346 () ValueCell!9059)

