; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!934 () Bool)

(assert start!934)

(declare-fun b_free!307 () Bool)

(declare-fun b_next!307 () Bool)

(assert (=> start!934 (= b_free!307 (not b_next!307))))

(declare-fun tp!1153 () Bool)

(declare-fun b_and!455 () Bool)

(assert (=> start!934 (= tp!1153 b_and!455)))

(declare-fun b!7869 () Bool)

(declare-fun e!4442 () Bool)

(declare-fun tp_is_empty!385 () Bool)

(assert (=> b!7869 (= e!4442 tp_is_empty!385)))

(declare-fun b!7870 () Bool)

(declare-fun e!4439 () Bool)

(assert (=> b!7870 (= e!4439 tp_is_empty!385)))

(declare-fun mapIsEmpty!551 () Bool)

(declare-fun mapRes!551 () Bool)

(assert (=> mapIsEmpty!551 mapRes!551))

(declare-fun b!7871 () Bool)

(declare-fun e!4440 () Bool)

(assert (=> b!7871 (= e!4440 (and e!4442 mapRes!551))))

(declare-fun condMapEmpty!551 () Bool)

(declare-datatypes ((V!691 0))(
  ( (V!692 (val!198 Int)) )
))
(declare-datatypes ((ValueCell!176 0))(
  ( (ValueCellFull!176 (v!1290 V!691)) (EmptyCell!176) )
))
(declare-datatypes ((array!697 0))(
  ( (array!698 (arr!336 (Array (_ BitVec 32) ValueCell!176)) (size!398 (_ BitVec 32))) )
))
(declare-fun _values!1492 () array!697)

(declare-fun mapDefault!551 () ValueCell!176)

