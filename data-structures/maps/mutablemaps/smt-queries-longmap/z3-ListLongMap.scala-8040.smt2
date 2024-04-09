; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!99118 () Bool)

(assert start!99118)

(declare-fun b_free!24687 () Bool)

(declare-fun b_next!24687 () Bool)

(assert (=> start!99118 (= b_free!24687 (not b_next!24687))))

(declare-fun tp!86772 () Bool)

(declare-fun b_and!40237 () Bool)

(assert (=> start!99118 (= tp!86772 b_and!40237)))

(declare-fun b!1165174 () Bool)

(declare-fun res!772833 () Bool)

(declare-fun e!662446 () Bool)

(assert (=> b!1165174 (=> (not res!772833) (not e!662446))))

(declare-datatypes ((array!75218 0))(
  ( (array!75219 (arr!36256 (Array (_ BitVec 32) (_ BitVec 64))) (size!36793 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!75218)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-datatypes ((V!44083 0))(
  ( (V!44084 (val!14665 Int)) )
))
(declare-datatypes ((ValueCell!13899 0))(
  ( (ValueCellFull!13899 (v!17303 V!44083)) (EmptyCell!13899) )
))
(declare-datatypes ((array!75220 0))(
  ( (array!75221 (arr!36257 (Array (_ BitVec 32) ValueCell!13899)) (size!36794 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!75220)

(assert (=> b!1165174 (= res!772833 (and (= (size!36794 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!36793 _keys!1208) (size!36794 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1165175 () Bool)

(declare-fun e!662450 () Bool)

(declare-fun e!662448 () Bool)

(assert (=> b!1165175 (= e!662450 (not e!662448))))

(declare-fun res!772827 () Bool)

(assert (=> b!1165175 (=> res!772827 e!662448)))

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1165175 (= res!772827 (bvsgt from!1455 i!673))))

(declare-fun k0!934 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!75218 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1165175 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!38346 0))(
  ( (Unit!38347) )
))
(declare-fun lt!524804 () Unit!38346)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!75218 (_ BitVec 64) (_ BitVec 32)) Unit!38346)

(assert (=> b!1165175 (= lt!524804 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1165176 () Bool)

(declare-fun res!772831 () Bool)

(assert (=> b!1165176 (=> (not res!772831) (not e!662446))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1165176 (= res!772831 (validMask!0 mask!1564))))

(declare-fun res!772835 () Bool)

(assert (=> start!99118 (=> (not res!772835) (not e!662446))))

(assert (=> start!99118 (= res!772835 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!36793 _keys!1208))))))

(assert (=> start!99118 e!662446))

(declare-fun tp_is_empty!29217 () Bool)

(assert (=> start!99118 tp_is_empty!29217))

(declare-fun array_inv!27604 (array!75218) Bool)

(assert (=> start!99118 (array_inv!27604 _keys!1208)))

(assert (=> start!99118 true))

(assert (=> start!99118 tp!86772))

(declare-fun e!662451 () Bool)

(declare-fun array_inv!27605 (array!75220) Bool)

(assert (=> start!99118 (and (array_inv!27605 _values!996) e!662451)))

(declare-fun b!1165177 () Bool)

(declare-fun res!772825 () Bool)

(assert (=> b!1165177 (=> (not res!772825) (not e!662446))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!75218 (_ BitVec 32)) Bool)

(assert (=> b!1165177 (= res!772825 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun mapIsEmpty!45650 () Bool)

(declare-fun mapRes!45650 () Bool)

(assert (=> mapIsEmpty!45650 mapRes!45650))

(declare-fun mapNonEmpty!45650 () Bool)

(declare-fun tp!86773 () Bool)

(declare-fun e!662449 () Bool)

(assert (=> mapNonEmpty!45650 (= mapRes!45650 (and tp!86773 e!662449))))

(declare-fun mapRest!45650 () (Array (_ BitVec 32) ValueCell!13899))

(declare-fun mapKey!45650 () (_ BitVec 32))

(declare-fun mapValue!45650 () ValueCell!13899)

(assert (=> mapNonEmpty!45650 (= (arr!36257 _values!996) (store mapRest!45650 mapKey!45650 mapValue!45650))))

(declare-fun b!1165178 () Bool)

(declare-fun e!662445 () Bool)

(assert (=> b!1165178 (= e!662445 tp_is_empty!29217)))

(declare-fun b!1165179 () Bool)

(declare-fun res!772834 () Bool)

(assert (=> b!1165179 (=> (not res!772834) (not e!662446))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1165179 (= res!772834 (validKeyInArray!0 k0!934))))

(declare-fun b!1165180 () Bool)

(assert (=> b!1165180 (= e!662449 tp_is_empty!29217)))

(declare-fun b!1165181 () Bool)

(assert (=> b!1165181 (= e!662446 e!662450)))

(declare-fun res!772830 () Bool)

(assert (=> b!1165181 (=> (not res!772830) (not e!662450))))

(declare-fun lt!524803 () array!75218)

(assert (=> b!1165181 (= res!772830 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!524803 mask!1564))))

(assert (=> b!1165181 (= lt!524803 (array!75219 (store (arr!36256 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!36793 _keys!1208)))))

(declare-fun b!1165182 () Bool)

(declare-fun res!772828 () Bool)

(assert (=> b!1165182 (=> (not res!772828) (not e!662446))))

(assert (=> b!1165182 (= res!772828 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!36793 _keys!1208))))))

(declare-fun b!1165183 () Bool)

(declare-fun res!772832 () Bool)

(assert (=> b!1165183 (=> (not res!772832) (not e!662450))))

(declare-datatypes ((List!25554 0))(
  ( (Nil!25551) (Cons!25550 (h!26759 (_ BitVec 64)) (t!37240 List!25554)) )
))
(declare-fun arrayNoDuplicates!0 (array!75218 (_ BitVec 32) List!25554) Bool)

(assert (=> b!1165183 (= res!772832 (arrayNoDuplicates!0 lt!524803 #b00000000000000000000000000000000 Nil!25551))))

(declare-fun b!1165184 () Bool)

(declare-fun res!772826 () Bool)

(assert (=> b!1165184 (=> (not res!772826) (not e!662446))))

(assert (=> b!1165184 (= res!772826 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!25551))))

(declare-fun b!1165185 () Bool)

(assert (=> b!1165185 (= e!662448 true)))

(declare-fun zeroValue!944 () V!44083)

(declare-fun defaultEntry!1004 () Int)

(declare-datatypes ((tuple2!18778 0))(
  ( (tuple2!18779 (_1!9399 (_ BitVec 64)) (_2!9399 V!44083)) )
))
(declare-datatypes ((List!25555 0))(
  ( (Nil!25552) (Cons!25551 (h!26760 tuple2!18778) (t!37241 List!25555)) )
))
(declare-datatypes ((ListLongMap!16759 0))(
  ( (ListLongMap!16760 (toList!8395 List!25555)) )
))
(declare-fun lt!524802 () ListLongMap!16759)

(declare-fun minValue!944 () V!44083)

(declare-fun getCurrentListMapNoExtraKeys!4828 (array!75218 array!75220 (_ BitVec 32) (_ BitVec 32) V!44083 V!44083 (_ BitVec 32) Int) ListLongMap!16759)

(declare-fun dynLambda!2825 (Int (_ BitVec 64)) V!44083)

(assert (=> b!1165185 (= lt!524802 (getCurrentListMapNoExtraKeys!4828 lt!524803 (array!75221 (store (arr!36257 _values!996) i!673 (ValueCellFull!13899 (dynLambda!2825 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!36794 _values!996)) mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun lt!524805 () ListLongMap!16759)

(assert (=> b!1165185 (= lt!524805 (getCurrentListMapNoExtraKeys!4828 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1165186 () Bool)

(assert (=> b!1165186 (= e!662451 (and e!662445 mapRes!45650))))

(declare-fun condMapEmpty!45650 () Bool)

(declare-fun mapDefault!45650 () ValueCell!13899)

(assert (=> b!1165186 (= condMapEmpty!45650 (= (arr!36257 _values!996) ((as const (Array (_ BitVec 32) ValueCell!13899)) mapDefault!45650)))))

(declare-fun b!1165187 () Bool)

(declare-fun res!772829 () Bool)

(assert (=> b!1165187 (=> (not res!772829) (not e!662446))))

(assert (=> b!1165187 (= res!772829 (= (select (arr!36256 _keys!1208) i!673) k0!934))))

(assert (= (and start!99118 res!772835) b!1165176))

(assert (= (and b!1165176 res!772831) b!1165174))

(assert (= (and b!1165174 res!772833) b!1165177))

(assert (= (and b!1165177 res!772825) b!1165184))

(assert (= (and b!1165184 res!772826) b!1165182))

(assert (= (and b!1165182 res!772828) b!1165179))

(assert (= (and b!1165179 res!772834) b!1165187))

(assert (= (and b!1165187 res!772829) b!1165181))

(assert (= (and b!1165181 res!772830) b!1165183))

(assert (= (and b!1165183 res!772832) b!1165175))

(assert (= (and b!1165175 (not res!772827)) b!1165185))

(assert (= (and b!1165186 condMapEmpty!45650) mapIsEmpty!45650))

(assert (= (and b!1165186 (not condMapEmpty!45650)) mapNonEmpty!45650))

(get-info :version)

(assert (= (and mapNonEmpty!45650 ((_ is ValueCellFull!13899) mapValue!45650)) b!1165180))

(assert (= (and b!1165186 ((_ is ValueCellFull!13899) mapDefault!45650)) b!1165178))

(assert (= start!99118 b!1165186))

(declare-fun b_lambda!19811 () Bool)

(assert (=> (not b_lambda!19811) (not b!1165185)))

(declare-fun t!37239 () Bool)

(declare-fun tb!9507 () Bool)

(assert (=> (and start!99118 (= defaultEntry!1004 defaultEntry!1004) t!37239) tb!9507))

(declare-fun result!19571 () Bool)

(assert (=> tb!9507 (= result!19571 tp_is_empty!29217)))

(assert (=> b!1165185 t!37239))

(declare-fun b_and!40239 () Bool)

(assert (= b_and!40237 (and (=> t!37239 result!19571) b_and!40239)))

(declare-fun m!1073471 () Bool)

(assert (=> b!1165181 m!1073471))

(declare-fun m!1073473 () Bool)

(assert (=> b!1165181 m!1073473))

(declare-fun m!1073475 () Bool)

(assert (=> b!1165179 m!1073475))

(declare-fun m!1073477 () Bool)

(assert (=> b!1165177 m!1073477))

(declare-fun m!1073479 () Bool)

(assert (=> mapNonEmpty!45650 m!1073479))

(declare-fun m!1073481 () Bool)

(assert (=> b!1165176 m!1073481))

(declare-fun m!1073483 () Bool)

(assert (=> b!1165175 m!1073483))

(declare-fun m!1073485 () Bool)

(assert (=> b!1165175 m!1073485))

(declare-fun m!1073487 () Bool)

(assert (=> b!1165185 m!1073487))

(declare-fun m!1073489 () Bool)

(assert (=> b!1165185 m!1073489))

(declare-fun m!1073491 () Bool)

(assert (=> b!1165185 m!1073491))

(declare-fun m!1073493 () Bool)

(assert (=> b!1165185 m!1073493))

(declare-fun m!1073495 () Bool)

(assert (=> b!1165183 m!1073495))

(declare-fun m!1073497 () Bool)

(assert (=> b!1165184 m!1073497))

(declare-fun m!1073499 () Bool)

(assert (=> start!99118 m!1073499))

(declare-fun m!1073501 () Bool)

(assert (=> start!99118 m!1073501))

(declare-fun m!1073503 () Bool)

(assert (=> b!1165187 m!1073503))

(check-sat b_and!40239 (not b!1165185) (not b!1165183) tp_is_empty!29217 (not b!1165179) (not b!1165184) (not start!99118) (not b!1165177) (not b!1165175) (not b!1165176) (not b_lambda!19811) (not mapNonEmpty!45650) (not b_next!24687) (not b!1165181))
(check-sat b_and!40239 (not b_next!24687))
