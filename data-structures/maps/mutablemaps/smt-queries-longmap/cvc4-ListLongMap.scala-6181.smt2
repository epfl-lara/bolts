; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!79226 () Bool)

(assert start!79226)

(declare-fun b_free!17411 () Bool)

(declare-fun b_next!17411 () Bool)

(assert (=> start!79226 (= b_free!17411 (not b_next!17411))))

(declare-fun tp!60674 () Bool)

(declare-fun b_and!28495 () Bool)

(assert (=> start!79226 (= tp!60674 b_and!28495)))

(declare-fun b!929647 () Bool)

(declare-fun e!522071 () Bool)

(declare-fun e!522074 () Bool)

(declare-fun mapRes!31635 () Bool)

(assert (=> b!929647 (= e!522071 (and e!522074 mapRes!31635))))

(declare-fun condMapEmpty!31635 () Bool)

(declare-datatypes ((V!31523 0))(
  ( (V!31524 (val!10010 Int)) )
))
(declare-datatypes ((ValueCell!9478 0))(
  ( (ValueCellFull!9478 (v!12528 V!31523)) (EmptyCell!9478) )
))
(declare-datatypes ((array!55810 0))(
  ( (array!55811 (arr!26846 (Array (_ BitVec 32) ValueCell!9478)) (size!27306 (_ BitVec 32))) )
))
(declare-fun _values!1231 () array!55810)

(declare-fun mapDefault!31635 () ValueCell!9478)

