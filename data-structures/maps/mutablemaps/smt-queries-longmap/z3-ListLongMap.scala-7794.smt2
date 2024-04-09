; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!97546 () Bool)

(assert start!97546)

(declare-fun b!1113158 () Bool)

(declare-fun e!634619 () Bool)

(assert (=> b!1113158 (= e!634619 (not true))))

(declare-datatypes ((array!72338 0))(
  ( (array!72339 (arr!34818 (Array (_ BitVec 32) (_ BitVec 64))) (size!35355 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!72338)

(declare-fun k0!934 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!72338 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1113158 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!36439 0))(
  ( (Unit!36440) )
))
(declare-fun lt!496611 () Unit!36439)

(declare-fun i!673 () (_ BitVec 32))

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!72338 (_ BitVec 64) (_ BitVec 32)) Unit!36439)

(assert (=> b!1113158 (= lt!496611 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1113159 () Bool)

(declare-fun res!743000 () Bool)

(declare-fun e!634616 () Bool)

(assert (=> b!1113159 (=> (not res!743000) (not e!634616))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1113159 (= res!743000 (validKeyInArray!0 k0!934))))

(declare-fun b!1113160 () Bool)

(declare-fun res!742994 () Bool)

(assert (=> b!1113160 (=> (not res!742994) (not e!634616))))

(declare-datatypes ((List!24414 0))(
  ( (Nil!24411) (Cons!24410 (h!25619 (_ BitVec 64)) (t!34902 List!24414)) )
))
(declare-fun arrayNoDuplicates!0 (array!72338 (_ BitVec 32) List!24414) Bool)

(assert (=> b!1113160 (= res!742994 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!24411))))

(declare-fun b!1113161 () Bool)

(assert (=> b!1113161 (= e!634616 e!634619)))

(declare-fun res!742999 () Bool)

(assert (=> b!1113161 (=> (not res!742999) (not e!634619))))

(declare-fun lt!496610 () array!72338)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!72338 (_ BitVec 32)) Bool)

(assert (=> b!1113161 (= res!742999 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!496610 mask!1564))))

(assert (=> b!1113161 (= lt!496610 (array!72339 (store (arr!34818 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!35355 _keys!1208)))))

(declare-fun b!1113162 () Bool)

(declare-fun e!634617 () Bool)

(declare-fun e!634615 () Bool)

(declare-fun mapRes!43429 () Bool)

(assert (=> b!1113162 (= e!634617 (and e!634615 mapRes!43429))))

(declare-fun condMapEmpty!43429 () Bool)

(declare-datatypes ((V!42115 0))(
  ( (V!42116 (val!13927 Int)) )
))
(declare-datatypes ((ValueCell!13161 0))(
  ( (ValueCellFull!13161 (v!16561 V!42115)) (EmptyCell!13161) )
))
(declare-datatypes ((array!72340 0))(
  ( (array!72341 (arr!34819 (Array (_ BitVec 32) ValueCell!13161)) (size!35356 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!72340)

(declare-fun mapDefault!43429 () ValueCell!13161)

(assert (=> b!1113162 (= condMapEmpty!43429 (= (arr!34819 _values!996) ((as const (Array (_ BitVec 32) ValueCell!13161)) mapDefault!43429)))))

(declare-fun b!1113163 () Bool)

(declare-fun res!742992 () Bool)

(assert (=> b!1113163 (=> (not res!742992) (not e!634616))))

(assert (=> b!1113163 (= res!742992 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!35355 _keys!1208))))))

(declare-fun b!1113164 () Bool)

(declare-fun res!743001 () Bool)

(assert (=> b!1113164 (=> (not res!743001) (not e!634619))))

(assert (=> b!1113164 (= res!743001 (arrayNoDuplicates!0 lt!496610 #b00000000000000000000000000000000 Nil!24411))))

(declare-fun mapNonEmpty!43429 () Bool)

(declare-fun tp!82674 () Bool)

(declare-fun e!634614 () Bool)

(assert (=> mapNonEmpty!43429 (= mapRes!43429 (and tp!82674 e!634614))))

(declare-fun mapKey!43429 () (_ BitVec 32))

(declare-fun mapValue!43429 () ValueCell!13161)

(declare-fun mapRest!43429 () (Array (_ BitVec 32) ValueCell!13161))

(assert (=> mapNonEmpty!43429 (= (arr!34819 _values!996) (store mapRest!43429 mapKey!43429 mapValue!43429))))

(declare-fun res!742993 () Bool)

(assert (=> start!97546 (=> (not res!742993) (not e!634616))))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> start!97546 (= res!742993 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!35355 _keys!1208))))))

(assert (=> start!97546 e!634616))

(declare-fun array_inv!26642 (array!72338) Bool)

(assert (=> start!97546 (array_inv!26642 _keys!1208)))

(assert (=> start!97546 true))

(declare-fun array_inv!26643 (array!72340) Bool)

(assert (=> start!97546 (and (array_inv!26643 _values!996) e!634617)))

(declare-fun b!1113157 () Bool)

(declare-fun res!742995 () Bool)

(assert (=> b!1113157 (=> (not res!742995) (not e!634616))))

(declare-fun extraKeys!923 () (_ BitVec 32))

(assert (=> b!1113157 (= res!742995 (and (= (size!35356 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!35355 _keys!1208) (size!35356 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1113165 () Bool)

(declare-fun res!742997 () Bool)

(assert (=> b!1113165 (=> (not res!742997) (not e!634616))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1113165 (= res!742997 (validMask!0 mask!1564))))

(declare-fun mapIsEmpty!43429 () Bool)

(assert (=> mapIsEmpty!43429 mapRes!43429))

(declare-fun b!1113166 () Bool)

(declare-fun res!742996 () Bool)

(assert (=> b!1113166 (=> (not res!742996) (not e!634616))))

(assert (=> b!1113166 (= res!742996 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1113167 () Bool)

(declare-fun res!742998 () Bool)

(assert (=> b!1113167 (=> (not res!742998) (not e!634616))))

(assert (=> b!1113167 (= res!742998 (= (select (arr!34818 _keys!1208) i!673) k0!934))))

(declare-fun b!1113168 () Bool)

(declare-fun tp_is_empty!27741 () Bool)

(assert (=> b!1113168 (= e!634614 tp_is_empty!27741)))

(declare-fun b!1113169 () Bool)

(assert (=> b!1113169 (= e!634615 tp_is_empty!27741)))

(assert (= (and start!97546 res!742993) b!1113165))

(assert (= (and b!1113165 res!742997) b!1113157))

(assert (= (and b!1113157 res!742995) b!1113166))

(assert (= (and b!1113166 res!742996) b!1113160))

(assert (= (and b!1113160 res!742994) b!1113163))

(assert (= (and b!1113163 res!742992) b!1113159))

(assert (= (and b!1113159 res!743000) b!1113167))

(assert (= (and b!1113167 res!742998) b!1113161))

(assert (= (and b!1113161 res!742999) b!1113164))

(assert (= (and b!1113164 res!743001) b!1113158))

(assert (= (and b!1113162 condMapEmpty!43429) mapIsEmpty!43429))

(assert (= (and b!1113162 (not condMapEmpty!43429)) mapNonEmpty!43429))

(get-info :version)

(assert (= (and mapNonEmpty!43429 ((_ is ValueCellFull!13161) mapValue!43429)) b!1113168))

(assert (= (and b!1113162 ((_ is ValueCellFull!13161) mapDefault!43429)) b!1113169))

(assert (= start!97546 b!1113162))

(declare-fun m!1030563 () Bool)

(assert (=> b!1113159 m!1030563))

(declare-fun m!1030565 () Bool)

(assert (=> b!1113164 m!1030565))

(declare-fun m!1030567 () Bool)

(assert (=> b!1113165 m!1030567))

(declare-fun m!1030569 () Bool)

(assert (=> b!1113158 m!1030569))

(declare-fun m!1030571 () Bool)

(assert (=> b!1113158 m!1030571))

(declare-fun m!1030573 () Bool)

(assert (=> mapNonEmpty!43429 m!1030573))

(declare-fun m!1030575 () Bool)

(assert (=> b!1113160 m!1030575))

(declare-fun m!1030577 () Bool)

(assert (=> start!97546 m!1030577))

(declare-fun m!1030579 () Bool)

(assert (=> start!97546 m!1030579))

(declare-fun m!1030581 () Bool)

(assert (=> b!1113161 m!1030581))

(declare-fun m!1030583 () Bool)

(assert (=> b!1113161 m!1030583))

(declare-fun m!1030585 () Bool)

(assert (=> b!1113167 m!1030585))

(declare-fun m!1030587 () Bool)

(assert (=> b!1113166 m!1030587))

(check-sat (not b!1113160) (not b!1113158) (not start!97546) (not b!1113159) (not b!1113166) (not b!1113161) (not b!1113164) tp_is_empty!27741 (not mapNonEmpty!43429) (not b!1113165))
(check-sat)
