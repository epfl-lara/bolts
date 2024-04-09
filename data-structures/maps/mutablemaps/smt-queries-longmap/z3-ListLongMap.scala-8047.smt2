; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!99160 () Bool)

(assert start!99160)

(declare-fun b_free!24729 () Bool)

(declare-fun b_next!24729 () Bool)

(assert (=> start!99160 (= b_free!24729 (not b_next!24729))))

(declare-fun tp!86899 () Bool)

(declare-fun b_and!40321 () Bool)

(assert (=> start!99160 (= tp!86899 b_and!40321)))

(declare-fun b!1166121 () Bool)

(declare-fun e!662911 () Bool)

(declare-fun e!662914 () Bool)

(assert (=> b!1166121 (= e!662911 e!662914)))

(declare-fun res!773545 () Bool)

(assert (=> b!1166121 (=> (not res!773545) (not e!662914))))

(declare-datatypes ((array!75298 0))(
  ( (array!75299 (arr!36296 (Array (_ BitVec 32) (_ BitVec 64))) (size!36833 (_ BitVec 32))) )
))
(declare-fun lt!525100 () array!75298)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!75298 (_ BitVec 32)) Bool)

(assert (=> b!1166121 (= res!773545 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!525100 mask!1564))))

(declare-fun _keys!1208 () array!75298)

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1166121 (= lt!525100 (array!75299 (store (arr!36296 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!36833 _keys!1208)))))

(declare-fun b!1166122 () Bool)

(declare-fun res!773549 () Bool)

(assert (=> b!1166122 (=> (not res!773549) (not e!662914))))

(declare-datatypes ((List!25583 0))(
  ( (Nil!25580) (Cons!25579 (h!26788 (_ BitVec 64)) (t!37311 List!25583)) )
))
(declare-fun arrayNoDuplicates!0 (array!75298 (_ BitVec 32) List!25583) Bool)

(assert (=> b!1166122 (= res!773549 (arrayNoDuplicates!0 lt!525100 #b00000000000000000000000000000000 Nil!25580))))

(declare-fun b!1166123 () Bool)

(declare-fun res!773546 () Bool)

(assert (=> b!1166123 (=> (not res!773546) (not e!662911))))

(declare-fun k0!934 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1166123 (= res!773546 (validKeyInArray!0 k0!934))))

(declare-fun b!1166124 () Bool)

(declare-fun res!773543 () Bool)

(assert (=> b!1166124 (=> (not res!773543) (not e!662911))))

(assert (=> b!1166124 (= res!773543 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1166125 () Bool)

(declare-fun e!662915 () Bool)

(declare-fun tp_is_empty!29259 () Bool)

(assert (=> b!1166125 (= e!662915 tp_is_empty!29259)))

(declare-fun b!1166127 () Bool)

(declare-fun e!662912 () Bool)

(assert (=> b!1166127 (= e!662912 true)))

(declare-datatypes ((V!44139 0))(
  ( (V!44140 (val!14686 Int)) )
))
(declare-fun zeroValue!944 () V!44139)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-datatypes ((ValueCell!13920 0))(
  ( (ValueCellFull!13920 (v!17324 V!44139)) (EmptyCell!13920) )
))
(declare-datatypes ((array!75300 0))(
  ( (array!75301 (arr!36297 (Array (_ BitVec 32) ValueCell!13920)) (size!36834 (_ BitVec 32))) )
))
(declare-fun lt!525105 () array!75300)

(declare-fun defaultEntry!1004 () Int)

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun _values!996 () array!75300)

(declare-fun minValue!944 () V!44139)

(declare-datatypes ((tuple2!18808 0))(
  ( (tuple2!18809 (_1!9414 (_ BitVec 64)) (_2!9414 V!44139)) )
))
(declare-datatypes ((List!25584 0))(
  ( (Nil!25581) (Cons!25580 (h!26789 tuple2!18808) (t!37312 List!25584)) )
))
(declare-datatypes ((ListLongMap!16789 0))(
  ( (ListLongMap!16790 (toList!8410 List!25584)) )
))
(declare-fun getCurrentListMapNoExtraKeys!4843 (array!75298 array!75300 (_ BitVec 32) (_ BitVec 32) V!44139 V!44139 (_ BitVec 32) Int) ListLongMap!16789)

(declare-fun -!1447 (ListLongMap!16789 (_ BitVec 64)) ListLongMap!16789)

(assert (=> b!1166127 (= (getCurrentListMapNoExtraKeys!4843 lt!525100 lt!525105 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004) (-!1447 (getCurrentListMapNoExtraKeys!4843 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004) k0!934))))

(declare-datatypes ((Unit!38372 0))(
  ( (Unit!38373) )
))
(declare-fun lt!525102 () Unit!38372)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!671 (array!75298 array!75300 (_ BitVec 32) (_ BitVec 32) V!44139 V!44139 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!38372)

(assert (=> b!1166127 (= lt!525102 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!671 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1166128 () Bool)

(declare-fun e!662910 () Bool)

(assert (=> b!1166128 (= e!662910 tp_is_empty!29259)))

(declare-fun b!1166129 () Bool)

(declare-fun res!773548 () Bool)

(assert (=> b!1166129 (=> (not res!773548) (not e!662911))))

(assert (=> b!1166129 (= res!773548 (and (= (size!36834 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!36833 _keys!1208) (size!36834 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1166130 () Bool)

(declare-fun e!662913 () Bool)

(declare-fun mapRes!45713 () Bool)

(assert (=> b!1166130 (= e!662913 (and e!662915 mapRes!45713))))

(declare-fun condMapEmpty!45713 () Bool)

(declare-fun mapDefault!45713 () ValueCell!13920)

(assert (=> b!1166130 (= condMapEmpty!45713 (= (arr!36297 _values!996) ((as const (Array (_ BitVec 32) ValueCell!13920)) mapDefault!45713)))))

(declare-fun b!1166131 () Bool)

(declare-fun e!662916 () Bool)

(assert (=> b!1166131 (= e!662916 e!662912)))

(declare-fun res!773547 () Bool)

(assert (=> b!1166131 (=> res!773547 e!662912)))

(assert (=> b!1166131 (= res!773547 (or (= from!1455 i!673) (bvsge from!1455 i!673)))))

(declare-fun lt!525103 () ListLongMap!16789)

(assert (=> b!1166131 (= lt!525103 (getCurrentListMapNoExtraKeys!4843 lt!525100 lt!525105 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun dynLambda!2838 (Int (_ BitVec 64)) V!44139)

(assert (=> b!1166131 (= lt!525105 (array!75301 (store (arr!36297 _values!996) i!673 (ValueCellFull!13920 (dynLambda!2838 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!36834 _values!996)))))

(declare-fun lt!525104 () ListLongMap!16789)

(assert (=> b!1166131 (= lt!525104 (getCurrentListMapNoExtraKeys!4843 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun mapIsEmpty!45713 () Bool)

(assert (=> mapIsEmpty!45713 mapRes!45713))

(declare-fun b!1166132 () Bool)

(declare-fun res!773552 () Bool)

(assert (=> b!1166132 (=> (not res!773552) (not e!662911))))

(assert (=> b!1166132 (= res!773552 (= (select (arr!36296 _keys!1208) i!673) k0!934))))

(declare-fun b!1166126 () Bool)

(declare-fun res!773542 () Bool)

(assert (=> b!1166126 (=> (not res!773542) (not e!662911))))

(assert (=> b!1166126 (= res!773542 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!25580))))

(declare-fun res!773544 () Bool)

(assert (=> start!99160 (=> (not res!773544) (not e!662911))))

(assert (=> start!99160 (= res!773544 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!36833 _keys!1208))))))

(assert (=> start!99160 e!662911))

(assert (=> start!99160 tp_is_empty!29259))

(declare-fun array_inv!27630 (array!75298) Bool)

(assert (=> start!99160 (array_inv!27630 _keys!1208)))

(assert (=> start!99160 true))

(assert (=> start!99160 tp!86899))

(declare-fun array_inv!27631 (array!75300) Bool)

(assert (=> start!99160 (and (array_inv!27631 _values!996) e!662913)))

(declare-fun b!1166133 () Bool)

(declare-fun res!773541 () Bool)

(assert (=> b!1166133 (=> (not res!773541) (not e!662911))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1166133 (= res!773541 (validMask!0 mask!1564))))

(declare-fun mapNonEmpty!45713 () Bool)

(declare-fun tp!86898 () Bool)

(assert (=> mapNonEmpty!45713 (= mapRes!45713 (and tp!86898 e!662910))))

(declare-fun mapRest!45713 () (Array (_ BitVec 32) ValueCell!13920))

(declare-fun mapValue!45713 () ValueCell!13920)

(declare-fun mapKey!45713 () (_ BitVec 32))

(assert (=> mapNonEmpty!45713 (= (arr!36297 _values!996) (store mapRest!45713 mapKey!45713 mapValue!45713))))

(declare-fun b!1166134 () Bool)

(assert (=> b!1166134 (= e!662914 (not e!662916))))

(declare-fun res!773550 () Bool)

(assert (=> b!1166134 (=> res!773550 e!662916)))

(assert (=> b!1166134 (= res!773550 (bvsgt from!1455 i!673))))

(declare-fun arrayContainsKey!0 (array!75298 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1166134 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-fun lt!525101 () Unit!38372)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!75298 (_ BitVec 64) (_ BitVec 32)) Unit!38372)

(assert (=> b!1166134 (= lt!525101 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1166135 () Bool)

(declare-fun res!773551 () Bool)

(assert (=> b!1166135 (=> (not res!773551) (not e!662911))))

(assert (=> b!1166135 (= res!773551 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!36833 _keys!1208))))))

(assert (= (and start!99160 res!773544) b!1166133))

(assert (= (and b!1166133 res!773541) b!1166129))

(assert (= (and b!1166129 res!773548) b!1166124))

(assert (= (and b!1166124 res!773543) b!1166126))

(assert (= (and b!1166126 res!773542) b!1166135))

(assert (= (and b!1166135 res!773551) b!1166123))

(assert (= (and b!1166123 res!773546) b!1166132))

(assert (= (and b!1166132 res!773552) b!1166121))

(assert (= (and b!1166121 res!773545) b!1166122))

(assert (= (and b!1166122 res!773549) b!1166134))

(assert (= (and b!1166134 (not res!773550)) b!1166131))

(assert (= (and b!1166131 (not res!773547)) b!1166127))

(assert (= (and b!1166130 condMapEmpty!45713) mapIsEmpty!45713))

(assert (= (and b!1166130 (not condMapEmpty!45713)) mapNonEmpty!45713))

(get-info :version)

(assert (= (and mapNonEmpty!45713 ((_ is ValueCellFull!13920) mapValue!45713)) b!1166128))

(assert (= (and b!1166130 ((_ is ValueCellFull!13920) mapDefault!45713)) b!1166125))

(assert (= start!99160 b!1166130))

(declare-fun b_lambda!19853 () Bool)

(assert (=> (not b_lambda!19853) (not b!1166131)))

(declare-fun t!37310 () Bool)

(declare-fun tb!9549 () Bool)

(assert (=> (and start!99160 (= defaultEntry!1004 defaultEntry!1004) t!37310) tb!9549))

(declare-fun result!19655 () Bool)

(assert (=> tb!9549 (= result!19655 tp_is_empty!29259)))

(assert (=> b!1166131 t!37310))

(declare-fun b_and!40323 () Bool)

(assert (= b_and!40321 (and (=> t!37310 result!19655) b_and!40323)))

(declare-fun m!1074241 () Bool)

(assert (=> start!99160 m!1074241))

(declare-fun m!1074243 () Bool)

(assert (=> start!99160 m!1074243))

(declare-fun m!1074245 () Bool)

(assert (=> mapNonEmpty!45713 m!1074245))

(declare-fun m!1074247 () Bool)

(assert (=> b!1166134 m!1074247))

(declare-fun m!1074249 () Bool)

(assert (=> b!1166134 m!1074249))

(declare-fun m!1074251 () Bool)

(assert (=> b!1166132 m!1074251))

(declare-fun m!1074253 () Bool)

(assert (=> b!1166126 m!1074253))

(declare-fun m!1074255 () Bool)

(assert (=> b!1166124 m!1074255))

(declare-fun m!1074257 () Bool)

(assert (=> b!1166123 m!1074257))

(declare-fun m!1074259 () Bool)

(assert (=> b!1166131 m!1074259))

(declare-fun m!1074261 () Bool)

(assert (=> b!1166131 m!1074261))

(declare-fun m!1074263 () Bool)

(assert (=> b!1166131 m!1074263))

(declare-fun m!1074265 () Bool)

(assert (=> b!1166131 m!1074265))

(declare-fun m!1074267 () Bool)

(assert (=> b!1166122 m!1074267))

(declare-fun m!1074269 () Bool)

(assert (=> b!1166133 m!1074269))

(declare-fun m!1074271 () Bool)

(assert (=> b!1166127 m!1074271))

(declare-fun m!1074273 () Bool)

(assert (=> b!1166127 m!1074273))

(assert (=> b!1166127 m!1074273))

(declare-fun m!1074275 () Bool)

(assert (=> b!1166127 m!1074275))

(declare-fun m!1074277 () Bool)

(assert (=> b!1166127 m!1074277))

(declare-fun m!1074279 () Bool)

(assert (=> b!1166121 m!1074279))

(declare-fun m!1074281 () Bool)

(assert (=> b!1166121 m!1074281))

(check-sat b_and!40323 (not b!1166123) (not b!1166122) (not b!1166121) (not b!1166133) (not b!1166126) (not b_lambda!19853) (not b!1166127) (not b!1166124) (not start!99160) (not b!1166131) tp_is_empty!29259 (not mapNonEmpty!45713) (not b_next!24729) (not b!1166134))
(check-sat b_and!40323 (not b_next!24729))
