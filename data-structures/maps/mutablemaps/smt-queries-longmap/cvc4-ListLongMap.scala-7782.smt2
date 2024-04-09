; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!97476 () Bool)

(assert start!97476)

(declare-fun b_free!23411 () Bool)

(declare-fun b_next!23411 () Bool)

(assert (=> start!97476 (= b_free!23411 (not b_next!23411))))

(declare-fun tp!82533 () Bool)

(declare-fun b_and!37679 () Bool)

(assert (=> start!97476 (= tp!82533 b_and!37679)))

(declare-fun b!1111643 () Bool)

(declare-fun e!633911 () Bool)

(declare-fun tp_is_empty!27671 () Bool)

(assert (=> b!1111643 (= e!633911 tp_is_empty!27671)))

(declare-fun mapIsEmpty!43324 () Bool)

(declare-fun mapRes!43324 () Bool)

(assert (=> mapIsEmpty!43324 mapRes!43324))

(declare-fun b!1111644 () Bool)

(declare-fun e!633909 () Bool)

(declare-fun e!633905 () Bool)

(assert (=> b!1111644 (= e!633909 (and e!633905 mapRes!43324))))

(declare-fun condMapEmpty!43324 () Bool)

(declare-datatypes ((V!42021 0))(
  ( (V!42022 (val!13892 Int)) )
))
(declare-datatypes ((ValueCell!13126 0))(
  ( (ValueCellFull!13126 (v!16526 V!42021)) (EmptyCell!13126) )
))
(declare-datatypes ((array!72204 0))(
  ( (array!72205 (arr!34751 (Array (_ BitVec 32) ValueCell!13126)) (size!35288 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!72204)

(declare-fun mapDefault!43324 () ValueCell!13126)

