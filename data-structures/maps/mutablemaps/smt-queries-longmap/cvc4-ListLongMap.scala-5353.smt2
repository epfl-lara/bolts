; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!71720 () Bool)

(assert start!71720)

(declare-fun b_free!13529 () Bool)

(declare-fun b_next!13529 () Bool)

(assert (=> start!71720 (= b_free!13529 (not b_next!13529))))

(declare-fun tp!47383 () Bool)

(declare-fun b_and!22633 () Bool)

(assert (=> start!71720 (= tp!47383 b_and!22633)))

(declare-fun b!833674 () Bool)

(declare-fun e!465151 () Bool)

(declare-fun tp_is_empty!15239 () Bool)

(assert (=> b!833674 (= e!465151 tp_is_empty!15239)))

(declare-fun b!833675 () Bool)

(declare-fun e!465144 () Bool)

(declare-fun mapRes!24521 () Bool)

(assert (=> b!833675 (= e!465144 (and e!465151 mapRes!24521))))

(declare-fun condMapEmpty!24521 () Bool)

(declare-datatypes ((V!25319 0))(
  ( (V!25320 (val!7667 Int)) )
))
(declare-datatypes ((ValueCell!7204 0))(
  ( (ValueCellFull!7204 (v!10111 V!25319)) (EmptyCell!7204) )
))
(declare-datatypes ((array!46622 0))(
  ( (array!46623 (arr!22341 (Array (_ BitVec 32) ValueCell!7204)) (size!22762 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!46622)

(declare-fun mapDefault!24521 () ValueCell!7204)

