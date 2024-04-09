; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!97398 () Bool)

(assert start!97398)

(declare-fun b_free!23333 () Bool)

(declare-fun b_next!23333 () Bool)

(assert (=> start!97398 (= b_free!23333 (not b_next!23333))))

(declare-fun tp!82298 () Bool)

(declare-fun b_and!37521 () Bool)

(assert (=> start!97398 (= tp!82298 b_and!37521)))

(declare-fun b!1109689 () Bool)

(declare-fun res!740622 () Bool)

(declare-fun e!632974 () Bool)

(assert (=> b!1109689 (=> (not res!740622) (not e!632974))))

(declare-fun i!673 () (_ BitVec 32))

(declare-datatypes ((array!72054 0))(
  ( (array!72055 (arr!34676 (Array (_ BitVec 32) (_ BitVec 64))) (size!35213 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!72054)

(assert (=> b!1109689 (= res!740622 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!35213 _keys!1208))))))

(declare-fun b!1109690 () Bool)

(declare-fun e!632969 () Bool)

(declare-fun e!632967 () Bool)

(declare-fun mapRes!43207 () Bool)

(assert (=> b!1109690 (= e!632969 (and e!632967 mapRes!43207))))

(declare-fun condMapEmpty!43207 () Bool)

(declare-datatypes ((V!41917 0))(
  ( (V!41918 (val!13853 Int)) )
))
(declare-datatypes ((ValueCell!13087 0))(
  ( (ValueCellFull!13087 (v!16487 V!41917)) (EmptyCell!13087) )
))
(declare-datatypes ((array!72056 0))(
  ( (array!72057 (arr!34677 (Array (_ BitVec 32) ValueCell!13087)) (size!35214 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!72056)

(declare-fun mapDefault!43207 () ValueCell!13087)

