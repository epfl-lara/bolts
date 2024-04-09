; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!922 () Bool)

(assert start!922)

(declare-fun b_free!295 () Bool)

(declare-fun b_next!295 () Bool)

(assert (=> start!922 (= b_free!295 (not b_next!295))))

(declare-fun tp!1118 () Bool)

(declare-fun b_and!443 () Bool)

(assert (=> start!922 (= tp!1118 b_and!443)))

(declare-fun res!7581 () Bool)

(declare-fun e!4352 () Bool)

(assert (=> start!922 (=> (not res!7581) (not e!4352))))

(declare-fun mask!2250 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!922 (= res!7581 (validMask!0 mask!2250))))

(assert (=> start!922 e!4352))

(assert (=> start!922 tp!1118))

(assert (=> start!922 true))

(declare-datatypes ((V!675 0))(
  ( (V!676 (val!192 Int)) )
))
(declare-datatypes ((ValueCell!170 0))(
  ( (ValueCellFull!170 (v!1284 V!675)) (EmptyCell!170) )
))
(declare-datatypes ((array!675 0))(
  ( (array!676 (arr!325 (Array (_ BitVec 32) ValueCell!170)) (size!387 (_ BitVec 32))) )
))
(declare-fun _values!1492 () array!675)

(declare-fun e!4350 () Bool)

(declare-fun array_inv!243 (array!675) Bool)

(assert (=> start!922 (and (array_inv!243 _values!1492) e!4350)))

(declare-fun tp_is_empty!373 () Bool)

(assert (=> start!922 tp_is_empty!373))

(declare-datatypes ((array!677 0))(
  ( (array!678 (arr!326 (Array (_ BitVec 32) (_ BitVec 64))) (size!388 (_ BitVec 32))) )
))
(declare-fun _keys!1806 () array!677)

(declare-fun array_inv!244 (array!677) Bool)

(assert (=> start!922 (array_inv!244 _keys!1806)))

(declare-fun b!7743 () Bool)

(declare-fun e!4348 () Bool)

(assert (=> b!7743 (= e!4348 tp_is_empty!373)))

(declare-fun b!7744 () Bool)

(declare-fun e!4349 () Bool)

(declare-fun mapRes!533 () Bool)

(assert (=> b!7744 (= e!4350 (and e!4349 mapRes!533))))

(declare-fun condMapEmpty!533 () Bool)

(declare-fun mapDefault!533 () ValueCell!170)

