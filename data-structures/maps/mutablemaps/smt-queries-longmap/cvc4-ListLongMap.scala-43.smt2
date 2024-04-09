; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!754 () Bool)

(assert start!754)

(declare-fun b_free!167 () Bool)

(declare-fun b_next!167 () Bool)

(assert (=> start!754 (= b_free!167 (not b_next!167))))

(declare-fun tp!727 () Bool)

(declare-fun b_and!311 () Bool)

(assert (=> start!754 (= tp!727 b_and!311)))

(declare-fun mapIsEmpty!335 () Bool)

(declare-fun mapRes!335 () Bool)

(assert (=> mapIsEmpty!335 mapRes!335))

(declare-fun b!5360 () Bool)

(declare-fun e!2897 () Bool)

(declare-fun e!2892 () Bool)

(assert (=> b!5360 (= e!2897 (and e!2892 mapRes!335))))

(declare-fun condMapEmpty!335 () Bool)

(declare-datatypes ((V!503 0))(
  ( (V!504 (val!128 Int)) )
))
(declare-datatypes ((ValueCell!106 0))(
  ( (ValueCellFull!106 (v!1218 V!503)) (EmptyCell!106) )
))
(declare-datatypes ((array!425 0))(
  ( (array!426 (arr!202 (Array (_ BitVec 32) ValueCell!106)) (size!264 (_ BitVec 32))) )
))
(declare-fun _values!1492 () array!425)

(declare-fun mapDefault!335 () ValueCell!106)

