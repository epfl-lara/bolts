; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!95932 () Bool)

(assert start!95932)

(declare-fun b_free!22549 () Bool)

(declare-fun b_next!22549 () Bool)

(assert (=> start!95932 (= b_free!22549 (not b_next!22549))))

(declare-fun tp!79496 () Bool)

(declare-fun b_and!35791 () Bool)

(assert (=> start!95932 (= tp!79496 b_and!35791)))

(declare-fun b!1085759 () Bool)

(declare-fun e!620289 () Bool)

(declare-fun e!620291 () Bool)

(declare-fun mapRes!41581 () Bool)

(assert (=> b!1085759 (= e!620289 (and e!620291 mapRes!41581))))

(declare-fun condMapEmpty!41581 () Bool)

(declare-datatypes ((V!40529 0))(
  ( (V!40530 (val!13332 Int)) )
))
(declare-datatypes ((ValueCell!12566 0))(
  ( (ValueCellFull!12566 (v!15954 V!40529)) (EmptyCell!12566) )
))
(declare-datatypes ((array!70002 0))(
  ( (array!70003 (arr!33671 (Array (_ BitVec 32) ValueCell!12566)) (size!34208 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!70002)

(declare-fun mapDefault!41581 () ValueCell!12566)

