; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!43656 () Bool)

(assert start!43656)

(declare-fun b_free!12355 () Bool)

(declare-fun b_next!12355 () Bool)

(assert (=> start!43656 (= b_free!12355 (not b_next!12355))))

(declare-fun tp!43356 () Bool)

(declare-fun b_and!21139 () Bool)

(assert (=> start!43656 (= tp!43356 b_and!21139)))

(declare-fun b!483238 () Bool)

(declare-fun e!284390 () Bool)

(declare-datatypes ((array!31363 0))(
  ( (array!31364 (arr!15078 (Array (_ BitVec 32) (_ BitVec 64))) (size!15436 (_ BitVec 32))) )
))
(declare-fun _keys!1874 () array!31363)

(declare-fun k!1332 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!31363 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!483238 (= e!284390 (arrayContainsKey!0 _keys!1874 k!1332 #b00000000000000000000000000000000))))

(declare-fun mapIsEmpty!22519 () Bool)

(declare-fun mapRes!22519 () Bool)

(assert (=> mapIsEmpty!22519 mapRes!22519))

(declare-fun b!483239 () Bool)

(declare-fun e!284395 () Bool)

(declare-fun e!284393 () Bool)

(assert (=> b!483239 (= e!284395 (and e!284393 mapRes!22519))))

(declare-fun condMapEmpty!22519 () Bool)

(declare-datatypes ((V!19561 0))(
  ( (V!19562 (val!6981 Int)) )
))
(declare-datatypes ((ValueCell!6572 0))(
  ( (ValueCellFull!6572 (v!9273 V!19561)) (EmptyCell!6572) )
))
(declare-datatypes ((array!31365 0))(
  ( (array!31366 (arr!15079 (Array (_ BitVec 32) ValueCell!6572)) (size!15437 (_ BitVec 32))) )
))
(declare-fun _values!1516 () array!31365)

(declare-fun mapDefault!22519 () ValueCell!6572)

