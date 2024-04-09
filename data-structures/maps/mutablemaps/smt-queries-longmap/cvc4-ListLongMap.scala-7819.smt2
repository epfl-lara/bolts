; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!97698 () Bool)

(assert start!97698)

(declare-fun b!1116121 () Bool)

(declare-fun res!745279 () Bool)

(declare-fun e!635985 () Bool)

(assert (=> b!1116121 (=> (not res!745279) (not e!635985))))

(declare-fun k!934 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1116121 (= res!745279 (validKeyInArray!0 k!934))))

(declare-fun b!1116122 () Bool)

(declare-fun res!745277 () Bool)

(assert (=> b!1116122 (=> (not res!745277) (not e!635985))))

(declare-datatypes ((array!72626 0))(
  ( (array!72627 (arr!34962 (Array (_ BitVec 32) (_ BitVec 64))) (size!35499 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!72626)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!72626 (_ BitVec 32)) Bool)

(assert (=> b!1116122 (= res!745277 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1116123 () Bool)

(declare-fun e!635987 () Bool)

(assert (=> b!1116123 (= e!635987 (not true))))

(declare-fun arrayContainsKey!0 (array!72626 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1116123 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-fun i!673 () (_ BitVec 32))

(declare-datatypes ((Unit!36533 0))(
  ( (Unit!36534) )
))
(declare-fun lt!497067 () Unit!36533)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!72626 (_ BitVec 64) (_ BitVec 32)) Unit!36533)

(assert (=> b!1116123 (= lt!497067 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun mapNonEmpty!43657 () Bool)

(declare-fun mapRes!43657 () Bool)

(declare-fun tp!82902 () Bool)

(declare-fun e!635986 () Bool)

(assert (=> mapNonEmpty!43657 (= mapRes!43657 (and tp!82902 e!635986))))

(declare-fun mapKey!43657 () (_ BitVec 32))

(declare-datatypes ((V!42317 0))(
  ( (V!42318 (val!14003 Int)) )
))
(declare-datatypes ((ValueCell!13237 0))(
  ( (ValueCellFull!13237 (v!16637 V!42317)) (EmptyCell!13237) )
))
(declare-fun mapValue!43657 () ValueCell!13237)

(declare-fun mapRest!43657 () (Array (_ BitVec 32) ValueCell!13237))

(declare-datatypes ((array!72628 0))(
  ( (array!72629 (arr!34963 (Array (_ BitVec 32) ValueCell!13237)) (size!35500 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!72628)

(assert (=> mapNonEmpty!43657 (= (arr!34963 _values!996) (store mapRest!43657 mapKey!43657 mapValue!43657))))

(declare-fun res!745273 () Bool)

(assert (=> start!97698 (=> (not res!745273) (not e!635985))))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> start!97698 (= res!745273 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!35499 _keys!1208))))))

(assert (=> start!97698 e!635985))

(declare-fun array_inv!26732 (array!72626) Bool)

(assert (=> start!97698 (array_inv!26732 _keys!1208)))

(assert (=> start!97698 true))

(declare-fun e!635982 () Bool)

(declare-fun array_inv!26733 (array!72628) Bool)

(assert (=> start!97698 (and (array_inv!26733 _values!996) e!635982)))

(declare-fun mapIsEmpty!43657 () Bool)

(assert (=> mapIsEmpty!43657 mapRes!43657))

(declare-fun b!1116124 () Bool)

(declare-fun res!745276 () Bool)

(assert (=> b!1116124 (=> (not res!745276) (not e!635985))))

(assert (=> b!1116124 (= res!745276 (= (select (arr!34962 _keys!1208) i!673) k!934))))

(declare-fun b!1116125 () Bool)

(declare-fun res!745274 () Bool)

(assert (=> b!1116125 (=> (not res!745274) (not e!635985))))

(declare-datatypes ((List!24469 0))(
  ( (Nil!24466) (Cons!24465 (h!25674 (_ BitVec 64)) (t!34957 List!24469)) )
))
(declare-fun arrayNoDuplicates!0 (array!72626 (_ BitVec 32) List!24469) Bool)

(assert (=> b!1116125 (= res!745274 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!24466))))

(declare-fun b!1116126 () Bool)

(declare-fun e!635984 () Bool)

(declare-fun tp_is_empty!27893 () Bool)

(assert (=> b!1116126 (= e!635984 tp_is_empty!27893)))

(declare-fun b!1116127 () Bool)

(assert (=> b!1116127 (= e!635985 e!635987)))

(declare-fun res!745275 () Bool)

(assert (=> b!1116127 (=> (not res!745275) (not e!635987))))

(declare-fun lt!497066 () array!72626)

(assert (=> b!1116127 (= res!745275 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!497066 mask!1564))))

(assert (=> b!1116127 (= lt!497066 (array!72627 (store (arr!34962 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!35499 _keys!1208)))))

(declare-fun b!1116128 () Bool)

(declare-fun res!745278 () Bool)

(assert (=> b!1116128 (=> (not res!745278) (not e!635985))))

(assert (=> b!1116128 (= res!745278 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!35499 _keys!1208))))))

(declare-fun b!1116129 () Bool)

(declare-fun res!745272 () Bool)

(assert (=> b!1116129 (=> (not res!745272) (not e!635985))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1116129 (= res!745272 (validMask!0 mask!1564))))

(declare-fun b!1116130 () Bool)

(declare-fun res!745281 () Bool)

(assert (=> b!1116130 (=> (not res!745281) (not e!635987))))

(assert (=> b!1116130 (= res!745281 (arrayNoDuplicates!0 lt!497066 #b00000000000000000000000000000000 Nil!24466))))

(declare-fun b!1116131 () Bool)

(assert (=> b!1116131 (= e!635986 tp_is_empty!27893)))

(declare-fun b!1116132 () Bool)

(assert (=> b!1116132 (= e!635982 (and e!635984 mapRes!43657))))

(declare-fun condMapEmpty!43657 () Bool)

(declare-fun mapDefault!43657 () ValueCell!13237)

