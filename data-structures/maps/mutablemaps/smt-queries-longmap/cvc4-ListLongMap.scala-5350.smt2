; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!71702 () Bool)

(assert start!71702)

(declare-fun b_free!13511 () Bool)

(declare-fun b_next!13511 () Bool)

(assert (=> start!71702 (= b_free!13511 (not b_next!13511))))

(declare-fun tp!47329 () Bool)

(declare-fun b_and!22615 () Bool)

(assert (=> start!71702 (= tp!47329 b_and!22615)))

(declare-fun b!833396 () Bool)

(declare-fun e!464922 () Bool)

(declare-fun e!464923 () Bool)

(declare-fun mapRes!24494 () Bool)

(assert (=> b!833396 (= e!464922 (and e!464923 mapRes!24494))))

(declare-fun condMapEmpty!24494 () Bool)

(declare-datatypes ((V!25295 0))(
  ( (V!25296 (val!7658 Int)) )
))
(declare-datatypes ((ValueCell!7195 0))(
  ( (ValueCellFull!7195 (v!10102 V!25295)) (EmptyCell!7195) )
))
(declare-datatypes ((array!46590 0))(
  ( (array!46591 (arr!22325 (Array (_ BitVec 32) ValueCell!7195)) (size!22746 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!46590)

(declare-fun mapDefault!24494 () ValueCell!7195)

