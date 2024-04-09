; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!97506 () Bool)

(assert start!97506)

(declare-fun mapIsEmpty!43369 () Bool)

(declare-fun mapRes!43369 () Bool)

(assert (=> mapIsEmpty!43369 mapRes!43369))

(declare-fun b!1112377 () Bool)

(declare-fun res!742400 () Bool)

(declare-fun e!634255 () Bool)

(assert (=> b!1112377 (=> (not res!742400) (not e!634255))))

(declare-datatypes ((array!72260 0))(
  ( (array!72261 (arr!34779 (Array (_ BitVec 32) (_ BitVec 64))) (size!35316 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!72260)

(declare-datatypes ((List!24398 0))(
  ( (Nil!24395) (Cons!24394 (h!25603 (_ BitVec 64)) (t!34886 List!24398)) )
))
(declare-fun arrayNoDuplicates!0 (array!72260 (_ BitVec 32) List!24398) Bool)

(assert (=> b!1112377 (= res!742400 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!24395))))

(declare-fun b!1112378 () Bool)

(declare-fun res!742398 () Bool)

(assert (=> b!1112378 (=> (not res!742398) (not e!634255))))

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-datatypes ((V!42061 0))(
  ( (V!42062 (val!13907 Int)) )
))
(declare-datatypes ((ValueCell!13141 0))(
  ( (ValueCellFull!13141 (v!16541 V!42061)) (EmptyCell!13141) )
))
(declare-datatypes ((array!72262 0))(
  ( (array!72263 (arr!34780 (Array (_ BitVec 32) ValueCell!13141)) (size!35317 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!72262)

(assert (=> b!1112378 (= res!742398 (and (= (size!35317 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!35316 _keys!1208) (size!35317 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1112380 () Bool)

(declare-fun e!634256 () Bool)

(declare-fun tp_is_empty!27701 () Bool)

(assert (=> b!1112380 (= e!634256 tp_is_empty!27701)))

(declare-fun b!1112381 () Bool)

(declare-fun e!634257 () Bool)

(assert (=> b!1112381 (= e!634257 (not true))))

(declare-fun k!934 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!72260 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1112381 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-fun i!673 () (_ BitVec 32))

(declare-datatypes ((Unit!36415 0))(
  ( (Unit!36416) )
))
(declare-fun lt!496491 () Unit!36415)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!72260 (_ BitVec 64) (_ BitVec 32)) Unit!36415)

(assert (=> b!1112381 (= lt!496491 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun b!1112382 () Bool)

(assert (=> b!1112382 (= e!634255 e!634257)))

(declare-fun res!742395 () Bool)

(assert (=> b!1112382 (=> (not res!742395) (not e!634257))))

(declare-fun lt!496490 () array!72260)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!72260 (_ BitVec 32)) Bool)

(assert (=> b!1112382 (= res!742395 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!496490 mask!1564))))

(assert (=> b!1112382 (= lt!496490 (array!72261 (store (arr!34779 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!35316 _keys!1208)))))

(declare-fun b!1112383 () Bool)

(declare-fun res!742392 () Bool)

(assert (=> b!1112383 (=> (not res!742392) (not e!634255))))

(assert (=> b!1112383 (= res!742392 (= (select (arr!34779 _keys!1208) i!673) k!934))))

(declare-fun b!1112384 () Bool)

(declare-fun e!634259 () Bool)

(declare-fun e!634254 () Bool)

(assert (=> b!1112384 (= e!634259 (and e!634254 mapRes!43369))))

(declare-fun condMapEmpty!43369 () Bool)

(declare-fun mapDefault!43369 () ValueCell!13141)

