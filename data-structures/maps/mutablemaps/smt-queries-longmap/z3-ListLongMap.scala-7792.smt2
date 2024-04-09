; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!97534 () Bool)

(assert start!97534)

(declare-fun res!742814 () Bool)

(declare-fun e!634511 () Bool)

(assert (=> start!97534 (=> (not res!742814) (not e!634511))))

(declare-fun from!1455 () (_ BitVec 32))

(declare-datatypes ((array!72314 0))(
  ( (array!72315 (arr!34806 (Array (_ BitVec 32) (_ BitVec 64))) (size!35343 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!72314)

(assert (=> start!97534 (= res!742814 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!35343 _keys!1208))))))

(assert (=> start!97534 e!634511))

(declare-fun array_inv!26634 (array!72314) Bool)

(assert (=> start!97534 (array_inv!26634 _keys!1208)))

(assert (=> start!97534 true))

(declare-datatypes ((V!42099 0))(
  ( (V!42100 (val!13921 Int)) )
))
(declare-datatypes ((ValueCell!13155 0))(
  ( (ValueCellFull!13155 (v!16555 V!42099)) (EmptyCell!13155) )
))
(declare-datatypes ((array!72316 0))(
  ( (array!72317 (arr!34807 (Array (_ BitVec 32) ValueCell!13155)) (size!35344 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!72316)

(declare-fun e!634509 () Bool)

(declare-fun array_inv!26635 (array!72316) Bool)

(assert (=> start!97534 (and (array_inv!26635 _values!996) e!634509)))

(declare-fun b!1112923 () Bool)

(declare-fun e!634510 () Bool)

(declare-fun tp_is_empty!27729 () Bool)

(assert (=> b!1112923 (= e!634510 tp_is_empty!27729)))

(declare-fun mapIsEmpty!43411 () Bool)

(declare-fun mapRes!43411 () Bool)

(assert (=> mapIsEmpty!43411 mapRes!43411))

(declare-fun b!1112924 () Bool)

(declare-fun res!742816 () Bool)

(assert (=> b!1112924 (=> (not res!742816) (not e!634511))))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1112924 (= res!742816 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!35343 _keys!1208))))))

(declare-fun b!1112925 () Bool)

(declare-fun res!742819 () Bool)

(assert (=> b!1112925 (=> (not res!742819) (not e!634511))))

(declare-fun k0!934 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1112925 (= res!742819 (validKeyInArray!0 k0!934))))

(declare-fun b!1112926 () Bool)

(declare-fun res!742820 () Bool)

(declare-fun e!634506 () Bool)

(assert (=> b!1112926 (=> (not res!742820) (not e!634506))))

(declare-fun lt!496575 () array!72314)

(declare-datatypes ((List!24408 0))(
  ( (Nil!24405) (Cons!24404 (h!25613 (_ BitVec 64)) (t!34896 List!24408)) )
))
(declare-fun arrayNoDuplicates!0 (array!72314 (_ BitVec 32) List!24408) Bool)

(assert (=> b!1112926 (= res!742820 (arrayNoDuplicates!0 lt!496575 #b00000000000000000000000000000000 Nil!24405))))

(declare-fun b!1112927 () Bool)

(declare-fun res!742817 () Bool)

(assert (=> b!1112927 (=> (not res!742817) (not e!634511))))

(assert (=> b!1112927 (= res!742817 (= (select (arr!34806 _keys!1208) i!673) k0!934))))

(declare-fun b!1112928 () Bool)

(declare-fun res!742812 () Bool)

(assert (=> b!1112928 (=> (not res!742812) (not e!634511))))

(assert (=> b!1112928 (= res!742812 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!24405))))

(declare-fun b!1112929 () Bool)

(declare-fun e!634508 () Bool)

(assert (=> b!1112929 (= e!634508 tp_is_empty!27729)))

(declare-fun mapNonEmpty!43411 () Bool)

(declare-fun tp!82656 () Bool)

(assert (=> mapNonEmpty!43411 (= mapRes!43411 (and tp!82656 e!634510))))

(declare-fun mapValue!43411 () ValueCell!13155)

(declare-fun mapRest!43411 () (Array (_ BitVec 32) ValueCell!13155))

(declare-fun mapKey!43411 () (_ BitVec 32))

(assert (=> mapNonEmpty!43411 (= (arr!34807 _values!996) (store mapRest!43411 mapKey!43411 mapValue!43411))))

(declare-fun b!1112930 () Bool)

(declare-fun res!742818 () Bool)

(assert (=> b!1112930 (=> (not res!742818) (not e!634511))))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!72314 (_ BitVec 32)) Bool)

(assert (=> b!1112930 (= res!742818 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1112931 () Bool)

(declare-fun res!742815 () Bool)

(assert (=> b!1112931 (=> (not res!742815) (not e!634511))))

(declare-fun extraKeys!923 () (_ BitVec 32))

(assert (=> b!1112931 (= res!742815 (and (= (size!35344 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!35343 _keys!1208) (size!35344 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1112932 () Bool)

(assert (=> b!1112932 (= e!634509 (and e!634508 mapRes!43411))))

(declare-fun condMapEmpty!43411 () Bool)

(declare-fun mapDefault!43411 () ValueCell!13155)

(assert (=> b!1112932 (= condMapEmpty!43411 (= (arr!34807 _values!996) ((as const (Array (_ BitVec 32) ValueCell!13155)) mapDefault!43411)))))

(declare-fun b!1112933 () Bool)

(assert (=> b!1112933 (= e!634511 e!634506)))

(declare-fun res!742813 () Bool)

(assert (=> b!1112933 (=> (not res!742813) (not e!634506))))

(assert (=> b!1112933 (= res!742813 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!496575 mask!1564))))

(assert (=> b!1112933 (= lt!496575 (array!72315 (store (arr!34806 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!35343 _keys!1208)))))

(declare-fun b!1112934 () Bool)

(assert (=> b!1112934 (= e!634506 (not true))))

(declare-fun arrayContainsKey!0 (array!72314 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1112934 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!36431 0))(
  ( (Unit!36432) )
))
(declare-fun lt!496574 () Unit!36431)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!72314 (_ BitVec 64) (_ BitVec 32)) Unit!36431)

(assert (=> b!1112934 (= lt!496574 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1112935 () Bool)

(declare-fun res!742821 () Bool)

(assert (=> b!1112935 (=> (not res!742821) (not e!634511))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1112935 (= res!742821 (validMask!0 mask!1564))))

(assert (= (and start!97534 res!742814) b!1112935))

(assert (= (and b!1112935 res!742821) b!1112931))

(assert (= (and b!1112931 res!742815) b!1112930))

(assert (= (and b!1112930 res!742818) b!1112928))

(assert (= (and b!1112928 res!742812) b!1112924))

(assert (= (and b!1112924 res!742816) b!1112925))

(assert (= (and b!1112925 res!742819) b!1112927))

(assert (= (and b!1112927 res!742817) b!1112933))

(assert (= (and b!1112933 res!742813) b!1112926))

(assert (= (and b!1112926 res!742820) b!1112934))

(assert (= (and b!1112932 condMapEmpty!43411) mapIsEmpty!43411))

(assert (= (and b!1112932 (not condMapEmpty!43411)) mapNonEmpty!43411))

(get-info :version)

(assert (= (and mapNonEmpty!43411 ((_ is ValueCellFull!13155) mapValue!43411)) b!1112923))

(assert (= (and b!1112932 ((_ is ValueCellFull!13155) mapDefault!43411)) b!1112929))

(assert (= start!97534 b!1112932))

(declare-fun m!1030407 () Bool)

(assert (=> b!1112926 m!1030407))

(declare-fun m!1030409 () Bool)

(assert (=> b!1112935 m!1030409))

(declare-fun m!1030411 () Bool)

(assert (=> start!97534 m!1030411))

(declare-fun m!1030413 () Bool)

(assert (=> start!97534 m!1030413))

(declare-fun m!1030415 () Bool)

(assert (=> b!1112927 m!1030415))

(declare-fun m!1030417 () Bool)

(assert (=> b!1112925 m!1030417))

(declare-fun m!1030419 () Bool)

(assert (=> b!1112928 m!1030419))

(declare-fun m!1030421 () Bool)

(assert (=> b!1112930 m!1030421))

(declare-fun m!1030423 () Bool)

(assert (=> mapNonEmpty!43411 m!1030423))

(declare-fun m!1030425 () Bool)

(assert (=> b!1112933 m!1030425))

(declare-fun m!1030427 () Bool)

(assert (=> b!1112933 m!1030427))

(declare-fun m!1030429 () Bool)

(assert (=> b!1112934 m!1030429))

(declare-fun m!1030431 () Bool)

(assert (=> b!1112934 m!1030431))

(check-sat (not b!1112930) (not b!1112926) (not b!1112935) (not b!1112925) (not b!1112934) (not mapNonEmpty!43411) (not b!1112933) (not start!97534) tp_is_empty!27729 (not b!1112928))
(check-sat)
