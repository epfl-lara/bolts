; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!78102 () Bool)

(assert start!78102)

(declare-fun b_free!16601 () Bool)

(declare-fun b_next!16601 () Bool)

(assert (=> start!78102 (= b_free!16601 (not b_next!16601))))

(declare-fun tp!58075 () Bool)

(declare-fun b_and!27191 () Bool)

(assert (=> start!78102 (= tp!58075 b_and!27191)))

(declare-fun b!911175 () Bool)

(declare-fun e!511039 () Bool)

(declare-fun tp_is_empty!19019 () Bool)

(assert (=> b!911175 (= e!511039 tp_is_empty!19019)))

(declare-fun b!911176 () Bool)

(declare-fun e!511040 () Bool)

(assert (=> b!911176 (= e!511040 tp_is_empty!19019)))

(declare-fun mapIsEmpty!30250 () Bool)

(declare-fun mapRes!30250 () Bool)

(assert (=> mapIsEmpty!30250 mapRes!30250))

(declare-fun b!911177 () Bool)

(declare-fun e!511041 () Bool)

(assert (=> b!911177 (= e!511041 (and e!511039 mapRes!30250))))

(declare-fun condMapEmpty!30250 () Bool)

(declare-datatypes ((V!30323 0))(
  ( (V!30324 (val!9560 Int)) )
))
(declare-datatypes ((ValueCell!9028 0))(
  ( (ValueCellFull!9028 (v!12069 V!30323)) (EmptyCell!9028) )
))
(declare-datatypes ((array!54046 0))(
  ( (array!54047 (arr!25975 (Array (_ BitVec 32) ValueCell!9028)) (size!26435 (_ BitVec 32))) )
))
(declare-fun _values!1152 () array!54046)

(declare-fun mapDefault!30250 () ValueCell!9028)

