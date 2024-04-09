; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!108116 () Bool)

(assert start!108116)

(declare-fun b_free!27793 () Bool)

(declare-fun b_next!27793 () Bool)

(assert (=> start!108116 (= b_free!27793 (not b_next!27793))))

(declare-fun tp!98334 () Bool)

(declare-fun b_and!45859 () Bool)

(assert (=> start!108116 (= tp!98334 b_and!45859)))

(declare-fun b!1276299 () Bool)

(declare-fun e!728827 () Bool)

(declare-fun e!728831 () Bool)

(declare-fun mapRes!51545 () Bool)

(assert (=> b!1276299 (= e!728827 (and e!728831 mapRes!51545))))

(declare-fun condMapEmpty!51545 () Bool)

(declare-datatypes ((V!49561 0))(
  ( (V!49562 (val!16746 Int)) )
))
(declare-datatypes ((ValueCell!15773 0))(
  ( (ValueCellFull!15773 (v!19341 V!49561)) (EmptyCell!15773) )
))
(declare-datatypes ((array!83735 0))(
  ( (array!83736 (arr!40374 (Array (_ BitVec 32) ValueCell!15773)) (size!40925 (_ BitVec 32))) )
))
(declare-fun _values!1187 () array!83735)

(declare-fun mapDefault!51545 () ValueCell!15773)

