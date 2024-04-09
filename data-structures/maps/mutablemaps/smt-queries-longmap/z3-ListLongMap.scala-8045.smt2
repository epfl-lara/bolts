; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!99148 () Bool)

(assert start!99148)

(declare-fun b_free!24717 () Bool)

(declare-fun b_next!24717 () Bool)

(assert (=> start!99148 (= b_free!24717 (not b_next!24717))))

(declare-fun tp!86862 () Bool)

(declare-fun b_and!40297 () Bool)

(assert (=> start!99148 (= tp!86862 b_and!40297)))

(declare-fun b!1165839 () Bool)

(declare-fun res!773335 () Bool)

(declare-fun e!662771 () Bool)

(assert (=> b!1165839 (=> (not res!773335) (not e!662771))))

(declare-datatypes ((array!75276 0))(
  ( (array!75277 (arr!36285 (Array (_ BitVec 32) (_ BitVec 64))) (size!36822 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!75276)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!75276 (_ BitVec 32)) Bool)

(assert (=> b!1165839 (= res!773335 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1165840 () Bool)

(declare-fun e!662769 () Bool)

(assert (=> b!1165840 (= e!662771 e!662769)))

(declare-fun res!773334 () Bool)

(assert (=> b!1165840 (=> (not res!773334) (not e!662769))))

(declare-fun lt!524993 () array!75276)

(assert (=> b!1165840 (= res!773334 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!524993 mask!1564))))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1165840 (= lt!524993 (array!75277 (store (arr!36285 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!36822 _keys!1208)))))

(declare-fun b!1165841 () Bool)

(declare-fun e!662772 () Bool)

(declare-fun tp_is_empty!29247 () Bool)

(assert (=> b!1165841 (= e!662772 tp_is_empty!29247)))

(declare-fun res!773328 () Bool)

(assert (=> start!99148 (=> (not res!773328) (not e!662771))))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> start!99148 (= res!773328 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!36822 _keys!1208))))))

(assert (=> start!99148 e!662771))

(assert (=> start!99148 tp_is_empty!29247))

(declare-fun array_inv!27624 (array!75276) Bool)

(assert (=> start!99148 (array_inv!27624 _keys!1208)))

(assert (=> start!99148 true))

(assert (=> start!99148 tp!86862))

(declare-datatypes ((V!44123 0))(
  ( (V!44124 (val!14680 Int)) )
))
(declare-datatypes ((ValueCell!13914 0))(
  ( (ValueCellFull!13914 (v!17318 V!44123)) (EmptyCell!13914) )
))
(declare-datatypes ((array!75278 0))(
  ( (array!75279 (arr!36286 (Array (_ BitVec 32) ValueCell!13914)) (size!36823 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!75278)

(declare-fun e!662770 () Bool)

(declare-fun array_inv!27625 (array!75278) Bool)

(assert (=> start!99148 (and (array_inv!27625 _values!996) e!662770)))

(declare-fun b!1165842 () Bool)

(declare-fun res!773333 () Bool)

(assert (=> b!1165842 (=> (not res!773333) (not e!662771))))

(declare-fun extraKeys!923 () (_ BitVec 32))

(assert (=> b!1165842 (= res!773333 (and (= (size!36823 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!36822 _keys!1208) (size!36823 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1165843 () Bool)

(declare-fun res!773331 () Bool)

(assert (=> b!1165843 (=> (not res!773331) (not e!662771))))

(declare-datatypes ((List!25576 0))(
  ( (Nil!25573) (Cons!25572 (h!26781 (_ BitVec 64)) (t!37292 List!25576)) )
))
(declare-fun arrayNoDuplicates!0 (array!75276 (_ BitVec 32) List!25576) Bool)

(assert (=> b!1165843 (= res!773331 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!25573))))

(declare-fun b!1165844 () Bool)

(declare-fun res!773336 () Bool)

(assert (=> b!1165844 (=> (not res!773336) (not e!662771))))

(assert (=> b!1165844 (= res!773336 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!36822 _keys!1208))))))

(declare-fun mapNonEmpty!45695 () Bool)

(declare-fun mapRes!45695 () Bool)

(declare-fun tp!86863 () Bool)

(assert (=> mapNonEmpty!45695 (= mapRes!45695 (and tp!86863 e!662772))))

(declare-fun mapKey!45695 () (_ BitVec 32))

(declare-fun mapValue!45695 () ValueCell!13914)

(declare-fun mapRest!45695 () (Array (_ BitVec 32) ValueCell!13914))

(assert (=> mapNonEmpty!45695 (= (arr!36286 _values!996) (store mapRest!45695 mapKey!45695 mapValue!45695))))

(declare-fun b!1165845 () Bool)

(declare-fun e!662765 () Bool)

(assert (=> b!1165845 (= e!662769 (not e!662765))))

(declare-fun res!773330 () Bool)

(assert (=> b!1165845 (=> res!773330 e!662765)))

(assert (=> b!1165845 (= res!773330 (bvsgt from!1455 i!673))))

(declare-fun k0!934 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!75276 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1165845 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!38364 0))(
  ( (Unit!38365) )
))
(declare-fun lt!524992 () Unit!38364)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!75276 (_ BitVec 64) (_ BitVec 32)) Unit!38364)

(assert (=> b!1165845 (= lt!524992 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1165846 () Bool)

(declare-fun e!662768 () Bool)

(assert (=> b!1165846 (= e!662765 e!662768)))

(declare-fun res!773329 () Bool)

(assert (=> b!1165846 (=> res!773329 e!662768)))

(assert (=> b!1165846 (= res!773329 (or (= from!1455 i!673) (bvsge from!1455 i!673)))))

(declare-datatypes ((tuple2!18800 0))(
  ( (tuple2!18801 (_1!9410 (_ BitVec 64)) (_2!9410 V!44123)) )
))
(declare-datatypes ((List!25577 0))(
  ( (Nil!25574) (Cons!25573 (h!26782 tuple2!18800) (t!37293 List!25577)) )
))
(declare-datatypes ((ListLongMap!16781 0))(
  ( (ListLongMap!16782 (toList!8406 List!25577)) )
))
(declare-fun lt!524994 () ListLongMap!16781)

(declare-fun defaultEntry!1004 () Int)

(declare-fun lt!524995 () array!75278)

(declare-fun minValue!944 () V!44123)

(declare-fun zeroValue!944 () V!44123)

(declare-fun getCurrentListMapNoExtraKeys!4839 (array!75276 array!75278 (_ BitVec 32) (_ BitVec 32) V!44123 V!44123 (_ BitVec 32) Int) ListLongMap!16781)

(assert (=> b!1165846 (= lt!524994 (getCurrentListMapNoExtraKeys!4839 lt!524993 lt!524995 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun dynLambda!2836 (Int (_ BitVec 64)) V!44123)

(assert (=> b!1165846 (= lt!524995 (array!75279 (store (arr!36286 _values!996) i!673 (ValueCellFull!13914 (dynLambda!2836 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!36823 _values!996)))))

(declare-fun lt!524996 () ListLongMap!16781)

(assert (=> b!1165846 (= lt!524996 (getCurrentListMapNoExtraKeys!4839 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1165847 () Bool)

(declare-fun res!773325 () Bool)

(assert (=> b!1165847 (=> (not res!773325) (not e!662771))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1165847 (= res!773325 (validMask!0 mask!1564))))

(declare-fun b!1165848 () Bool)

(declare-fun e!662766 () Bool)

(assert (=> b!1165848 (= e!662766 tp_is_empty!29247)))

(declare-fun b!1165849 () Bool)

(declare-fun res!773326 () Bool)

(assert (=> b!1165849 (=> (not res!773326) (not e!662771))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1165849 (= res!773326 (validKeyInArray!0 k0!934))))

(declare-fun b!1165850 () Bool)

(assert (=> b!1165850 (= e!662770 (and e!662766 mapRes!45695))))

(declare-fun condMapEmpty!45695 () Bool)

(declare-fun mapDefault!45695 () ValueCell!13914)

(assert (=> b!1165850 (= condMapEmpty!45695 (= (arr!36286 _values!996) ((as const (Array (_ BitVec 32) ValueCell!13914)) mapDefault!45695)))))

(declare-fun b!1165851 () Bool)

(declare-fun res!773327 () Bool)

(assert (=> b!1165851 (=> (not res!773327) (not e!662771))))

(assert (=> b!1165851 (= res!773327 (= (select (arr!36285 _keys!1208) i!673) k0!934))))

(declare-fun b!1165852 () Bool)

(assert (=> b!1165852 (= e!662768 true)))

(declare-fun -!1443 (ListLongMap!16781 (_ BitVec 64)) ListLongMap!16781)

(assert (=> b!1165852 (= (getCurrentListMapNoExtraKeys!4839 lt!524993 lt!524995 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004) (-!1443 (getCurrentListMapNoExtraKeys!4839 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004) k0!934))))

(declare-fun lt!524997 () Unit!38364)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!667 (array!75276 array!75278 (_ BitVec 32) (_ BitVec 32) V!44123 V!44123 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!38364)

(assert (=> b!1165852 (= lt!524997 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!667 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1165853 () Bool)

(declare-fun res!773332 () Bool)

(assert (=> b!1165853 (=> (not res!773332) (not e!662769))))

(assert (=> b!1165853 (= res!773332 (arrayNoDuplicates!0 lt!524993 #b00000000000000000000000000000000 Nil!25573))))

(declare-fun mapIsEmpty!45695 () Bool)

(assert (=> mapIsEmpty!45695 mapRes!45695))

(assert (= (and start!99148 res!773328) b!1165847))

(assert (= (and b!1165847 res!773325) b!1165842))

(assert (= (and b!1165842 res!773333) b!1165839))

(assert (= (and b!1165839 res!773335) b!1165843))

(assert (= (and b!1165843 res!773331) b!1165844))

(assert (= (and b!1165844 res!773336) b!1165849))

(assert (= (and b!1165849 res!773326) b!1165851))

(assert (= (and b!1165851 res!773327) b!1165840))

(assert (= (and b!1165840 res!773334) b!1165853))

(assert (= (and b!1165853 res!773332) b!1165845))

(assert (= (and b!1165845 (not res!773330)) b!1165846))

(assert (= (and b!1165846 (not res!773329)) b!1165852))

(assert (= (and b!1165850 condMapEmpty!45695) mapIsEmpty!45695))

(assert (= (and b!1165850 (not condMapEmpty!45695)) mapNonEmpty!45695))

(get-info :version)

(assert (= (and mapNonEmpty!45695 ((_ is ValueCellFull!13914) mapValue!45695)) b!1165841))

(assert (= (and b!1165850 ((_ is ValueCellFull!13914) mapDefault!45695)) b!1165848))

(assert (= start!99148 b!1165850))

(declare-fun b_lambda!19841 () Bool)

(assert (=> (not b_lambda!19841) (not b!1165846)))

(declare-fun t!37291 () Bool)

(declare-fun tb!9537 () Bool)

(assert (=> (and start!99148 (= defaultEntry!1004 defaultEntry!1004) t!37291) tb!9537))

(declare-fun result!19631 () Bool)

(assert (=> tb!9537 (= result!19631 tp_is_empty!29247)))

(assert (=> b!1165846 t!37291))

(declare-fun b_and!40299 () Bool)

(assert (= b_and!40297 (and (=> t!37291 result!19631) b_and!40299)))

(declare-fun m!1073989 () Bool)

(assert (=> b!1165849 m!1073989))

(declare-fun m!1073991 () Bool)

(assert (=> b!1165852 m!1073991))

(declare-fun m!1073993 () Bool)

(assert (=> b!1165852 m!1073993))

(assert (=> b!1165852 m!1073993))

(declare-fun m!1073995 () Bool)

(assert (=> b!1165852 m!1073995))

(declare-fun m!1073997 () Bool)

(assert (=> b!1165852 m!1073997))

(declare-fun m!1073999 () Bool)

(assert (=> b!1165843 m!1073999))

(declare-fun m!1074001 () Bool)

(assert (=> mapNonEmpty!45695 m!1074001))

(declare-fun m!1074003 () Bool)

(assert (=> start!99148 m!1074003))

(declare-fun m!1074005 () Bool)

(assert (=> start!99148 m!1074005))

(declare-fun m!1074007 () Bool)

(assert (=> b!1165847 m!1074007))

(declare-fun m!1074009 () Bool)

(assert (=> b!1165853 m!1074009))

(declare-fun m!1074011 () Bool)

(assert (=> b!1165845 m!1074011))

(declare-fun m!1074013 () Bool)

(assert (=> b!1165845 m!1074013))

(declare-fun m!1074015 () Bool)

(assert (=> b!1165840 m!1074015))

(declare-fun m!1074017 () Bool)

(assert (=> b!1165840 m!1074017))

(declare-fun m!1074019 () Bool)

(assert (=> b!1165839 m!1074019))

(declare-fun m!1074021 () Bool)

(assert (=> b!1165846 m!1074021))

(declare-fun m!1074023 () Bool)

(assert (=> b!1165846 m!1074023))

(declare-fun m!1074025 () Bool)

(assert (=> b!1165846 m!1074025))

(declare-fun m!1074027 () Bool)

(assert (=> b!1165846 m!1074027))

(declare-fun m!1074029 () Bool)

(assert (=> b!1165851 m!1074029))

(check-sat tp_is_empty!29247 (not b_next!24717) (not mapNonEmpty!45695) b_and!40299 (not b!1165849) (not b!1165843) (not start!99148) (not b!1165839) (not b_lambda!19841) (not b!1165846) (not b!1165852) (not b!1165853) (not b!1165847) (not b!1165845) (not b!1165840))
(check-sat b_and!40299 (not b_next!24717))
