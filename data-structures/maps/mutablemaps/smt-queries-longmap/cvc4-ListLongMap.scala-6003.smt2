; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!77902 () Bool)

(assert start!77902)

(declare-fun b_free!16433 () Bool)

(declare-fun b_next!16433 () Bool)

(assert (=> start!77902 (= b_free!16433 (not b_next!16433))))

(declare-fun tp!57565 () Bool)

(declare-fun b_and!27019 () Bool)

(assert (=> start!77902 (= tp!57565 b_and!27019)))

(declare-fun b!909157 () Bool)

(declare-fun e!509635 () Bool)

(declare-fun e!509639 () Bool)

(declare-fun mapRes!29992 () Bool)

(assert (=> b!909157 (= e!509635 (and e!509639 mapRes!29992))))

(declare-fun condMapEmpty!29992 () Bool)

(declare-datatypes ((V!30099 0))(
  ( (V!30100 (val!9476 Int)) )
))
(declare-datatypes ((ValueCell!8944 0))(
  ( (ValueCellFull!8944 (v!11983 V!30099)) (EmptyCell!8944) )
))
(declare-datatypes ((array!53722 0))(
  ( (array!53723 (arr!25815 (Array (_ BitVec 32) ValueCell!8944)) (size!26275 (_ BitVec 32))) )
))
(declare-fun _values!1152 () array!53722)

(declare-fun mapDefault!29992 () ValueCell!8944)

