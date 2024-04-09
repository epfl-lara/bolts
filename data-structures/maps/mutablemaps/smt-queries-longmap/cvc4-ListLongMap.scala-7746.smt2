; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!97260 () Bool)

(assert start!97260)

(declare-fun b!1106332 () Bool)

(declare-fun res!738382 () Bool)

(declare-fun e!631366 () Bool)

(assert (=> b!1106332 (=> (not res!738382) (not e!631366))))

(declare-datatypes ((array!71780 0))(
  ( (array!71781 (arr!34539 (Array (_ BitVec 32) (_ BitVec 64))) (size!35076 (_ BitVec 32))) )
))
(declare-fun lt!495428 () array!71780)

(declare-datatypes ((List!24214 0))(
  ( (Nil!24211) (Cons!24210 (h!25419 (_ BitVec 64)) (t!34486 List!24214)) )
))
(declare-fun arrayNoDuplicates!0 (array!71780 (_ BitVec 32) List!24214) Bool)

(assert (=> b!1106332 (= res!738382 (arrayNoDuplicates!0 lt!495428 #b00000000000000000000000000000000 Nil!24211))))

(declare-fun b!1106333 () Bool)

(declare-fun res!738381 () Bool)

(declare-fun e!631367 () Bool)

(assert (=> b!1106333 (=> (not res!738381) (not e!631367))))

(declare-fun _keys!1208 () array!71780)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!71780 (_ BitVec 32)) Bool)

(assert (=> b!1106333 (= res!738381 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1106334 () Bool)

(declare-fun res!738383 () Bool)

(assert (=> b!1106334 (=> (not res!738383) (not e!631367))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1106334 (= res!738383 (validMask!0 mask!1564))))

(declare-fun b!1106335 () Bool)

(declare-fun res!738379 () Bool)

(assert (=> b!1106335 (=> (not res!738379) (not e!631367))))

(declare-fun k!934 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1106335 (= res!738379 (validKeyInArray!0 k!934))))

(declare-fun b!1106336 () Bool)

(declare-fun res!738380 () Bool)

(assert (=> b!1106336 (=> (not res!738380) (not e!631367))))

(assert (=> b!1106336 (= res!738380 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!24211))))

(declare-fun mapIsEmpty!43000 () Bool)

(declare-fun mapRes!43000 () Bool)

(assert (=> mapIsEmpty!43000 mapRes!43000))

(declare-fun b!1106337 () Bool)

(declare-fun e!631365 () Bool)

(declare-fun tp_is_empty!27455 () Bool)

(assert (=> b!1106337 (= e!631365 tp_is_empty!27455)))

(declare-fun b!1106338 () Bool)

(assert (=> b!1106338 (= e!631367 e!631366)))

(declare-fun res!738378 () Bool)

(assert (=> b!1106338 (=> (not res!738378) (not e!631366))))

(assert (=> b!1106338 (= res!738378 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!495428 mask!1564))))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1106338 (= lt!495428 (array!71781 (store (arr!34539 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!35076 _keys!1208)))))

(declare-fun b!1106339 () Bool)

(declare-fun res!738386 () Bool)

(assert (=> b!1106339 (=> (not res!738386) (not e!631367))))

(assert (=> b!1106339 (= res!738386 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!35076 _keys!1208))))))

(declare-fun b!1106340 () Bool)

(declare-fun res!738385 () Bool)

(assert (=> b!1106340 (=> (not res!738385) (not e!631367))))

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-datatypes ((V!41733 0))(
  ( (V!41734 (val!13784 Int)) )
))
(declare-datatypes ((ValueCell!13018 0))(
  ( (ValueCellFull!13018 (v!16418 V!41733)) (EmptyCell!13018) )
))
(declare-datatypes ((array!71782 0))(
  ( (array!71783 (arr!34540 (Array (_ BitVec 32) ValueCell!13018)) (size!35077 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!71782)

(assert (=> b!1106340 (= res!738385 (and (= (size!35077 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!35076 _keys!1208) (size!35077 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!43000 () Bool)

(declare-fun tp!81921 () Bool)

(declare-fun e!631362 () Bool)

(assert (=> mapNonEmpty!43000 (= mapRes!43000 (and tp!81921 e!631362))))

(declare-fun mapKey!43000 () (_ BitVec 32))

(declare-fun mapValue!43000 () ValueCell!13018)

(declare-fun mapRest!43000 () (Array (_ BitVec 32) ValueCell!13018))

(assert (=> mapNonEmpty!43000 (= (arr!34540 _values!996) (store mapRest!43000 mapKey!43000 mapValue!43000))))

(declare-fun b!1106342 () Bool)

(assert (=> b!1106342 (= e!631366 (not true))))

(declare-fun arrayContainsKey!0 (array!71780 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1106342 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!36245 0))(
  ( (Unit!36246) )
))
(declare-fun lt!495429 () Unit!36245)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!71780 (_ BitVec 64) (_ BitVec 32)) Unit!36245)

(assert (=> b!1106342 (= lt!495429 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun b!1106343 () Bool)

(declare-fun res!738384 () Bool)

(assert (=> b!1106343 (=> (not res!738384) (not e!631367))))

(assert (=> b!1106343 (= res!738384 (= (select (arr!34539 _keys!1208) i!673) k!934))))

(declare-fun b!1106344 () Bool)

(assert (=> b!1106344 (= e!631362 tp_is_empty!27455)))

(declare-fun res!738387 () Bool)

(assert (=> start!97260 (=> (not res!738387) (not e!631367))))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> start!97260 (= res!738387 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!35076 _keys!1208))))))

(assert (=> start!97260 e!631367))

(declare-fun array_inv!26442 (array!71780) Bool)

(assert (=> start!97260 (array_inv!26442 _keys!1208)))

(assert (=> start!97260 true))

(declare-fun e!631363 () Bool)

(declare-fun array_inv!26443 (array!71782) Bool)

(assert (=> start!97260 (and (array_inv!26443 _values!996) e!631363)))

(declare-fun b!1106341 () Bool)

(assert (=> b!1106341 (= e!631363 (and e!631365 mapRes!43000))))

(declare-fun condMapEmpty!43000 () Bool)

(declare-fun mapDefault!43000 () ValueCell!13018)

