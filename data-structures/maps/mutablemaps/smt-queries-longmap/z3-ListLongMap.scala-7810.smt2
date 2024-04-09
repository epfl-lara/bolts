; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!97642 () Bool)

(assert start!97642)

(declare-fun mapNonEmpty!43573 () Bool)

(declare-fun mapRes!43573 () Bool)

(declare-fun tp!82818 () Bool)

(declare-fun e!635481 () Bool)

(assert (=> mapNonEmpty!43573 (= mapRes!43573 (and tp!82818 e!635481))))

(declare-fun mapKey!43573 () (_ BitVec 32))

(declare-datatypes ((V!42243 0))(
  ( (V!42244 (val!13975 Int)) )
))
(declare-datatypes ((ValueCell!13209 0))(
  ( (ValueCellFull!13209 (v!16609 V!42243)) (EmptyCell!13209) )
))
(declare-fun mapRest!43573 () (Array (_ BitVec 32) ValueCell!13209))

(declare-fun mapValue!43573 () ValueCell!13209)

(declare-datatypes ((array!72520 0))(
  ( (array!72521 (arr!34909 (Array (_ BitVec 32) ValueCell!13209)) (size!35446 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!72520)

(assert (=> mapNonEmpty!43573 (= (arr!34909 _values!996) (store mapRest!43573 mapKey!43573 mapValue!43573))))

(declare-fun b!1115029 () Bool)

(declare-fun res!744440 () Bool)

(declare-fun e!635483 () Bool)

(assert (=> b!1115029 (=> (not res!744440) (not e!635483))))

(declare-datatypes ((array!72522 0))(
  ( (array!72523 (arr!34910 (Array (_ BitVec 32) (_ BitVec 64))) (size!35447 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!72522)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(assert (=> b!1115029 (= res!744440 (and (= (size!35446 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!35447 _keys!1208) (size!35446 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1115031 () Bool)

(declare-fun res!744436 () Bool)

(assert (=> b!1115031 (=> (not res!744436) (not e!635483))))

(declare-fun k0!934 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1115031 (= res!744436 (validKeyInArray!0 k0!934))))

(declare-fun b!1115032 () Bool)

(declare-fun e!635482 () Bool)

(declare-fun e!635479 () Bool)

(assert (=> b!1115032 (= e!635482 (and e!635479 mapRes!43573))))

(declare-fun condMapEmpty!43573 () Bool)

(declare-fun mapDefault!43573 () ValueCell!13209)

(assert (=> b!1115032 (= condMapEmpty!43573 (= (arr!34909 _values!996) ((as const (Array (_ BitVec 32) ValueCell!13209)) mapDefault!43573)))))

(declare-fun b!1115033 () Bool)

(declare-fun res!744437 () Bool)

(declare-fun e!635478 () Bool)

(assert (=> b!1115033 (=> (not res!744437) (not e!635478))))

(declare-fun lt!496898 () array!72522)

(declare-datatypes ((List!24447 0))(
  ( (Nil!24444) (Cons!24443 (h!25652 (_ BitVec 64)) (t!34935 List!24447)) )
))
(declare-fun arrayNoDuplicates!0 (array!72522 (_ BitVec 32) List!24447) Bool)

(assert (=> b!1115033 (= res!744437 (arrayNoDuplicates!0 lt!496898 #b00000000000000000000000000000000 Nil!24444))))

(declare-fun mapIsEmpty!43573 () Bool)

(assert (=> mapIsEmpty!43573 mapRes!43573))

(declare-fun b!1115034 () Bool)

(declare-fun res!744435 () Bool)

(assert (=> b!1115034 (=> (not res!744435) (not e!635483))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!72522 (_ BitVec 32)) Bool)

(assert (=> b!1115034 (= res!744435 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1115035 () Bool)

(declare-fun tp_is_empty!27837 () Bool)

(assert (=> b!1115035 (= e!635481 tp_is_empty!27837)))

(declare-fun b!1115030 () Bool)

(declare-fun res!744432 () Bool)

(assert (=> b!1115030 (=> (not res!744432) (not e!635483))))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1115030 (= res!744432 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!35447 _keys!1208))))))

(declare-fun res!744439 () Bool)

(assert (=> start!97642 (=> (not res!744439) (not e!635483))))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> start!97642 (= res!744439 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!35447 _keys!1208))))))

(assert (=> start!97642 e!635483))

(declare-fun array_inv!26702 (array!72522) Bool)

(assert (=> start!97642 (array_inv!26702 _keys!1208)))

(assert (=> start!97642 true))

(declare-fun array_inv!26703 (array!72520) Bool)

(assert (=> start!97642 (and (array_inv!26703 _values!996) e!635482)))

(declare-fun b!1115036 () Bool)

(declare-fun res!744438 () Bool)

(assert (=> b!1115036 (=> (not res!744438) (not e!635483))))

(assert (=> b!1115036 (= res!744438 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!24444))))

(declare-fun b!1115037 () Bool)

(declare-fun res!744434 () Bool)

(assert (=> b!1115037 (=> (not res!744434) (not e!635483))))

(assert (=> b!1115037 (= res!744434 (= (select (arr!34910 _keys!1208) i!673) k0!934))))

(declare-fun b!1115038 () Bool)

(assert (=> b!1115038 (= e!635483 e!635478)))

(declare-fun res!744441 () Bool)

(assert (=> b!1115038 (=> (not res!744441) (not e!635478))))

(assert (=> b!1115038 (= res!744441 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!496898 mask!1564))))

(assert (=> b!1115038 (= lt!496898 (array!72523 (store (arr!34910 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!35447 _keys!1208)))))

(declare-fun b!1115039 () Bool)

(declare-fun res!744433 () Bool)

(assert (=> b!1115039 (=> (not res!744433) (not e!635483))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1115039 (= res!744433 (validMask!0 mask!1564))))

(declare-fun b!1115040 () Bool)

(assert (=> b!1115040 (= e!635479 tp_is_empty!27837)))

(declare-fun b!1115041 () Bool)

(assert (=> b!1115041 (= e!635478 (not true))))

(declare-fun arrayContainsKey!0 (array!72522 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1115041 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!36499 0))(
  ( (Unit!36500) )
))
(declare-fun lt!496899 () Unit!36499)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!72522 (_ BitVec 64) (_ BitVec 32)) Unit!36499)

(assert (=> b!1115041 (= lt!496899 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(assert (= (and start!97642 res!744439) b!1115039))

(assert (= (and b!1115039 res!744433) b!1115029))

(assert (= (and b!1115029 res!744440) b!1115034))

(assert (= (and b!1115034 res!744435) b!1115036))

(assert (= (and b!1115036 res!744438) b!1115030))

(assert (= (and b!1115030 res!744432) b!1115031))

(assert (= (and b!1115031 res!744436) b!1115037))

(assert (= (and b!1115037 res!744434) b!1115038))

(assert (= (and b!1115038 res!744441) b!1115033))

(assert (= (and b!1115033 res!744437) b!1115041))

(assert (= (and b!1115032 condMapEmpty!43573) mapIsEmpty!43573))

(assert (= (and b!1115032 (not condMapEmpty!43573)) mapNonEmpty!43573))

(get-info :version)

(assert (= (and mapNonEmpty!43573 ((_ is ValueCellFull!13209) mapValue!43573)) b!1115035))

(assert (= (and b!1115032 ((_ is ValueCellFull!13209) mapDefault!43573)) b!1115040))

(assert (= start!97642 b!1115032))

(declare-fun m!1031811 () Bool)

(assert (=> b!1115034 m!1031811))

(declare-fun m!1031813 () Bool)

(assert (=> b!1115033 m!1031813))

(declare-fun m!1031815 () Bool)

(assert (=> b!1115038 m!1031815))

(declare-fun m!1031817 () Bool)

(assert (=> b!1115038 m!1031817))

(declare-fun m!1031819 () Bool)

(assert (=> b!1115036 m!1031819))

(declare-fun m!1031821 () Bool)

(assert (=> b!1115041 m!1031821))

(declare-fun m!1031823 () Bool)

(assert (=> b!1115041 m!1031823))

(declare-fun m!1031825 () Bool)

(assert (=> b!1115031 m!1031825))

(declare-fun m!1031827 () Bool)

(assert (=> b!1115039 m!1031827))

(declare-fun m!1031829 () Bool)

(assert (=> mapNonEmpty!43573 m!1031829))

(declare-fun m!1031831 () Bool)

(assert (=> b!1115037 m!1031831))

(declare-fun m!1031833 () Bool)

(assert (=> start!97642 m!1031833))

(declare-fun m!1031835 () Bool)

(assert (=> start!97642 m!1031835))

(check-sat tp_is_empty!27837 (not start!97642) (not b!1115034) (not b!1115038) (not b!1115031) (not b!1115033) (not b!1115039) (not b!1115036) (not mapNonEmpty!43573) (not b!1115041))
(check-sat)
