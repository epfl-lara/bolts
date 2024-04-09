; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!97496 () Bool)

(assert start!97496)

(declare-fun b_free!23431 () Bool)

(declare-fun b_next!23431 () Bool)

(assert (=> start!97496 (= b_free!23431 (not b_next!23431))))

(declare-fun tp!82593 () Bool)

(declare-fun b_and!37721 () Bool)

(assert (=> start!97496 (= tp!82593 b_and!37721)))

(declare-fun b!1112155 () Bool)

(declare-fun e!634157 () Bool)

(declare-fun e!634155 () Bool)

(assert (=> b!1112155 (= e!634157 e!634155)))

(declare-fun res!742238 () Bool)

(assert (=> b!1112155 (=> (not res!742238) (not e!634155))))

(declare-datatypes ((array!72240 0))(
  ( (array!72241 (arr!34769 (Array (_ BitVec 32) (_ BitVec 64))) (size!35306 (_ BitVec 32))) )
))
(declare-fun lt!496453 () array!72240)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!72240 (_ BitVec 32)) Bool)

(assert (=> b!1112155 (= res!742238 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!496453 mask!1564))))

(declare-fun _keys!1208 () array!72240)

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1112155 (= lt!496453 (array!72241 (store (arr!34769 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!35306 _keys!1208)))))

(declare-fun b!1112156 () Bool)

(declare-fun res!742236 () Bool)

(assert (=> b!1112156 (=> (not res!742236) (not e!634157))))

(assert (=> b!1112156 (= res!742236 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1112157 () Bool)

(declare-fun e!634151 () Bool)

(declare-fun tp_is_empty!27691 () Bool)

(assert (=> b!1112157 (= e!634151 tp_is_empty!27691)))

(declare-fun b!1112158 () Bool)

(declare-fun e!634154 () Bool)

(declare-fun mapRes!43354 () Bool)

(assert (=> b!1112158 (= e!634154 (and e!634151 mapRes!43354))))

(declare-fun condMapEmpty!43354 () Bool)

(declare-datatypes ((V!42049 0))(
  ( (V!42050 (val!13902 Int)) )
))
(declare-datatypes ((ValueCell!13136 0))(
  ( (ValueCellFull!13136 (v!16536 V!42049)) (EmptyCell!13136) )
))
(declare-datatypes ((array!72242 0))(
  ( (array!72243 (arr!34770 (Array (_ BitVec 32) ValueCell!13136)) (size!35307 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!72242)

(declare-fun mapDefault!43354 () ValueCell!13136)

