; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!97526 () Bool)

(assert start!97526)

(declare-fun b!1112768 () Bool)

(declare-fun res!742701 () Bool)

(declare-fun e!634439 () Bool)

(assert (=> b!1112768 (=> (not res!742701) (not e!634439))))

(declare-datatypes ((array!72298 0))(
  ( (array!72299 (arr!34798 (Array (_ BitVec 32) (_ BitVec 64))) (size!35335 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!72298)

(declare-datatypes ((List!24406 0))(
  ( (Nil!24403) (Cons!24402 (h!25611 (_ BitVec 64)) (t!34894 List!24406)) )
))
(declare-fun arrayNoDuplicates!0 (array!72298 (_ BitVec 32) List!24406) Bool)

(assert (=> b!1112768 (= res!742701 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!24403))))

(declare-fun b!1112769 () Bool)

(declare-fun res!742692 () Bool)

(assert (=> b!1112769 (=> (not res!742692) (not e!634439))))

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-datatypes ((V!42089 0))(
  ( (V!42090 (val!13917 Int)) )
))
(declare-datatypes ((ValueCell!13151 0))(
  ( (ValueCellFull!13151 (v!16551 V!42089)) (EmptyCell!13151) )
))
(declare-datatypes ((array!72300 0))(
  ( (array!72301 (arr!34799 (Array (_ BitVec 32) ValueCell!13151)) (size!35336 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!72300)

(assert (=> b!1112769 (= res!742692 (and (= (size!35336 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!35335 _keys!1208) (size!35336 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!43399 () Bool)

(declare-fun mapRes!43399 () Bool)

(declare-fun tp!82644 () Bool)

(declare-fun e!634436 () Bool)

(assert (=> mapNonEmpty!43399 (= mapRes!43399 (and tp!82644 e!634436))))

(declare-fun mapRest!43399 () (Array (_ BitVec 32) ValueCell!13151))

(declare-fun mapKey!43399 () (_ BitVec 32))

(declare-fun mapValue!43399 () ValueCell!13151)

(assert (=> mapNonEmpty!43399 (= (arr!34799 _values!996) (store mapRest!43399 mapKey!43399 mapValue!43399))))

(declare-fun b!1112770 () Bool)

(declare-fun res!742696 () Bool)

(assert (=> b!1112770 (=> (not res!742696) (not e!634439))))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1112770 (= res!742696 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!35335 _keys!1208))))))

(declare-fun b!1112771 () Bool)

(declare-fun res!742693 () Bool)

(declare-fun e!634435 () Bool)

(assert (=> b!1112771 (=> (not res!742693) (not e!634435))))

(declare-fun lt!496550 () array!72298)

(assert (=> b!1112771 (= res!742693 (arrayNoDuplicates!0 lt!496550 #b00000000000000000000000000000000 Nil!24403))))

(declare-fun b!1112772 () Bool)

(declare-fun res!742695 () Bool)

(assert (=> b!1112772 (=> (not res!742695) (not e!634439))))

(declare-fun k!934 () (_ BitVec 64))

(assert (=> b!1112772 (= res!742695 (= (select (arr!34798 _keys!1208) i!673) k!934))))

(declare-fun b!1112773 () Bool)

(declare-fun res!742699 () Bool)

(assert (=> b!1112773 (=> (not res!742699) (not e!634439))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1112773 (= res!742699 (validKeyInArray!0 k!934))))

(declare-fun b!1112774 () Bool)

(assert (=> b!1112774 (= e!634439 e!634435)))

(declare-fun res!742697 () Bool)

(assert (=> b!1112774 (=> (not res!742697) (not e!634435))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!72298 (_ BitVec 32)) Bool)

(assert (=> b!1112774 (= res!742697 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!496550 mask!1564))))

(assert (=> b!1112774 (= lt!496550 (array!72299 (store (arr!34798 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!35335 _keys!1208)))))

(declare-fun b!1112767 () Bool)

(assert (=> b!1112767 (= e!634435 (not true))))

(declare-fun arrayContainsKey!0 (array!72298 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1112767 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!36427 0))(
  ( (Unit!36428) )
))
(declare-fun lt!496551 () Unit!36427)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!72298 (_ BitVec 64) (_ BitVec 32)) Unit!36427)

(assert (=> b!1112767 (= lt!496551 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun res!742700 () Bool)

(assert (=> start!97526 (=> (not res!742700) (not e!634439))))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> start!97526 (= res!742700 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!35335 _keys!1208))))))

(assert (=> start!97526 e!634439))

(declare-fun array_inv!26630 (array!72298) Bool)

(assert (=> start!97526 (array_inv!26630 _keys!1208)))

(assert (=> start!97526 true))

(declare-fun e!634438 () Bool)

(declare-fun array_inv!26631 (array!72300) Bool)

(assert (=> start!97526 (and (array_inv!26631 _values!996) e!634438)))

(declare-fun b!1112775 () Bool)

(declare-fun res!742694 () Bool)

(assert (=> b!1112775 (=> (not res!742694) (not e!634439))))

(assert (=> b!1112775 (= res!742694 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1112776 () Bool)

(declare-fun res!742698 () Bool)

(assert (=> b!1112776 (=> (not res!742698) (not e!634439))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1112776 (= res!742698 (validMask!0 mask!1564))))

(declare-fun b!1112777 () Bool)

(declare-fun e!634437 () Bool)

(assert (=> b!1112777 (= e!634438 (and e!634437 mapRes!43399))))

(declare-fun condMapEmpty!43399 () Bool)

(declare-fun mapDefault!43399 () ValueCell!13151)

