; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!932 () Bool)

(assert start!932)

(declare-fun b_free!305 () Bool)

(declare-fun b_next!305 () Bool)

(assert (=> start!932 (= b_free!305 (not b_next!305))))

(declare-fun tp!1148 () Bool)

(declare-fun b_and!453 () Bool)

(assert (=> start!932 (= tp!1148 b_and!453)))

(declare-fun mapIsEmpty!548 () Bool)

(declare-fun mapRes!548 () Bool)

(assert (=> mapIsEmpty!548 mapRes!548))

(declare-fun b!7848 () Bool)

(declare-fun e!4423 () Bool)

(declare-fun e!4425 () Bool)

(assert (=> b!7848 (= e!4423 (and e!4425 mapRes!548))))

(declare-fun condMapEmpty!548 () Bool)

(declare-datatypes ((V!687 0))(
  ( (V!688 (val!197 Int)) )
))
(declare-datatypes ((ValueCell!175 0))(
  ( (ValueCellFull!175 (v!1289 V!687)) (EmptyCell!175) )
))
(declare-datatypes ((array!695 0))(
  ( (array!696 (arr!335 (Array (_ BitVec 32) ValueCell!175)) (size!397 (_ BitVec 32))) )
))
(declare-fun _values!1492 () array!695)

(declare-fun mapDefault!548 () ValueCell!175)

