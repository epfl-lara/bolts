; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!77986 () Bool)

(assert start!77986)

(declare-fun b_free!16501 () Bool)

(declare-fun b_next!16501 () Bool)

(assert (=> start!77986 (= b_free!16501 (not b_next!16501))))

(declare-fun tp!57771 () Bool)

(declare-fun b_and!27089 () Bool)

(assert (=> start!77986 (= tp!57771 b_and!27089)))

(declare-fun mapIsEmpty!30097 () Bool)

(declare-fun mapRes!30097 () Bool)

(assert (=> mapIsEmpty!30097 mapRes!30097))

(declare-fun b!909998 () Bool)

(declare-fun e!510218 () Bool)

(declare-fun e!510217 () Bool)

(assert (=> b!909998 (= e!510218 (and e!510217 mapRes!30097))))

(declare-fun condMapEmpty!30097 () Bool)

(declare-datatypes ((V!30191 0))(
  ( (V!30192 (val!9510 Int)) )
))
(declare-datatypes ((ValueCell!8978 0))(
  ( (ValueCellFull!8978 (v!12018 V!30191)) (EmptyCell!8978) )
))
(declare-datatypes ((array!53854 0))(
  ( (array!53855 (arr!25880 (Array (_ BitVec 32) ValueCell!8978)) (size!26340 (_ BitVec 32))) )
))
(declare-fun _values!1152 () array!53854)

(declare-fun mapDefault!30097 () ValueCell!8978)

