; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!97406 () Bool)

(assert start!97406)

(declare-fun b_free!23341 () Bool)

(declare-fun b_next!23341 () Bool)

(assert (=> start!97406 (= b_free!23341 (not b_next!23341))))

(declare-fun tp!82322 () Bool)

(declare-fun b_and!37539 () Bool)

(assert (=> start!97406 (= tp!82322 b_and!37539)))

(declare-fun b!1109893 () Bool)

(declare-fun e!633068 () Bool)

(declare-fun e!633069 () Bool)

(declare-fun mapRes!43219 () Bool)

(assert (=> b!1109893 (= e!633068 (and e!633069 mapRes!43219))))

(declare-fun condMapEmpty!43219 () Bool)

(declare-datatypes ((V!41929 0))(
  ( (V!41930 (val!13857 Int)) )
))
(declare-datatypes ((ValueCell!13091 0))(
  ( (ValueCellFull!13091 (v!16491 V!41929)) (EmptyCell!13091) )
))
(declare-datatypes ((array!72070 0))(
  ( (array!72071 (arr!34684 (Array (_ BitVec 32) ValueCell!13091)) (size!35221 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!72070)

(declare-fun mapDefault!43219 () ValueCell!13091)

