; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!101496 () Bool)

(assert start!101496)

(declare-fun b_free!26277 () Bool)

(declare-fun b_next!26277 () Bool)

(assert (=> start!101496 (= b_free!26277 (not b_next!26277))))

(declare-fun tp!91866 () Bool)

(declare-fun b_and!43753 () Bool)

(assert (=> start!101496 (= tp!91866 b_and!43753)))

(declare-fun b!1219293 () Bool)

(declare-fun res!809910 () Bool)

(declare-fun e!692344 () Bool)

(assert (=> b!1219293 (=> (not res!809910) (not e!692344))))

(declare-datatypes ((array!78714 0))(
  ( (array!78715 (arr!37984 (Array (_ BitVec 32) (_ BitVec 64))) (size!38521 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!78714)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!78714 (_ BitVec 32)) Bool)

(assert (=> b!1219293 (= res!809910 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun mapIsEmpty!48358 () Bool)

(declare-fun mapRes!48358 () Bool)

(assert (=> mapIsEmpty!48358 mapRes!48358))

(declare-fun b!1219294 () Bool)

(declare-fun res!809917 () Bool)

(assert (=> b!1219294 (=> (not res!809917) (not e!692344))))

(declare-datatypes ((List!26957 0))(
  ( (Nil!26954) (Cons!26953 (h!28162 (_ BitVec 64)) (t!40221 List!26957)) )
))
(declare-fun arrayNoDuplicates!0 (array!78714 (_ BitVec 32) List!26957) Bool)

(assert (=> b!1219294 (= res!809917 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!26954))))

(declare-fun b!1219295 () Bool)

(declare-fun res!809921 () Bool)

(declare-fun e!692352 () Bool)

(assert (=> b!1219295 (=> (not res!809921) (not e!692352))))

(declare-fun lt!554335 () array!78714)

(assert (=> b!1219295 (= res!809921 (arrayNoDuplicates!0 lt!554335 #b00000000000000000000000000000000 Nil!26954))))

(declare-fun b!1219296 () Bool)

(declare-fun e!692347 () Bool)

(declare-fun e!692341 () Bool)

(assert (=> b!1219296 (= e!692347 e!692341)))

(declare-fun res!809919 () Bool)

(assert (=> b!1219296 (=> res!809919 e!692341)))

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1219296 (= res!809919 (not (validKeyInArray!0 (select (arr!37984 _keys!1208) from!1455))))))

(declare-datatypes ((V!46435 0))(
  ( (V!46436 (val!15547 Int)) )
))
(declare-datatypes ((tuple2!20138 0))(
  ( (tuple2!20139 (_1!10079 (_ BitVec 64)) (_2!10079 V!46435)) )
))
(declare-datatypes ((List!26958 0))(
  ( (Nil!26955) (Cons!26954 (h!28163 tuple2!20138) (t!40222 List!26958)) )
))
(declare-datatypes ((ListLongMap!18119 0))(
  ( (ListLongMap!18120 (toList!9075 List!26958)) )
))
(declare-fun lt!554331 () ListLongMap!18119)

(declare-fun lt!554333 () ListLongMap!18119)

(assert (=> b!1219296 (= lt!554331 lt!554333)))

(declare-fun lt!554337 () ListLongMap!18119)

(declare-fun k0!934 () (_ BitVec 64))

(declare-fun -!1930 (ListLongMap!18119 (_ BitVec 64)) ListLongMap!18119)

(assert (=> b!1219296 (= lt!554333 (-!1930 lt!554337 k0!934))))

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-datatypes ((ValueCell!14781 0))(
  ( (ValueCellFull!14781 (v!18205 V!46435)) (EmptyCell!14781) )
))
(declare-datatypes ((array!78716 0))(
  ( (array!78717 (arr!37985 (Array (_ BitVec 32) ValueCell!14781)) (size!38522 (_ BitVec 32))) )
))
(declare-fun lt!554329 () array!78716)

(declare-fun minValue!944 () V!46435)

(declare-fun zeroValue!944 () V!46435)

(declare-fun getCurrentListMapNoExtraKeys!5476 (array!78714 array!78716 (_ BitVec 32) (_ BitVec 32) V!46435 V!46435 (_ BitVec 32) Int) ListLongMap!18119)

(assert (=> b!1219296 (= lt!554331 (getCurrentListMapNoExtraKeys!5476 lt!554335 lt!554329 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun _values!996 () array!78716)

(assert (=> b!1219296 (= lt!554337 (getCurrentListMapNoExtraKeys!5476 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun i!673 () (_ BitVec 32))

(declare-datatypes ((Unit!40328 0))(
  ( (Unit!40329) )
))
(declare-fun lt!554339 () Unit!40328)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!1132 (array!78714 array!78716 (_ BitVec 32) (_ BitVec 32) V!46435 V!46435 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!40328)

(assert (=> b!1219296 (= lt!554339 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!1132 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1219297 () Bool)

(declare-fun e!692345 () Bool)

(declare-fun e!692351 () Bool)

(assert (=> b!1219297 (= e!692345 e!692351)))

(declare-fun res!809916 () Bool)

(assert (=> b!1219297 (=> res!809916 e!692351)))

(assert (=> b!1219297 (= res!809916 (not (= (select (arr!37984 _keys!1208) from!1455) k0!934)))))

(declare-fun b!1219298 () Bool)

(declare-fun res!809918 () Bool)

(assert (=> b!1219298 (=> (not res!809918) (not e!692344))))

(assert (=> b!1219298 (= res!809918 (= (select (arr!37984 _keys!1208) i!673) k0!934))))

(declare-fun b!1219299 () Bool)

(declare-fun e!692343 () Bool)

(assert (=> b!1219299 (= e!692343 true)))

(declare-fun arrayContainsKey!0 (array!78714 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1219299 (arrayContainsKey!0 _keys!1208 k0!934 (bvadd #b00000000000000000000000000000001 from!1455))))

(declare-fun lt!554334 () Unit!40328)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!78714 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!40328)

(assert (=> b!1219299 (= lt!554334 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 _keys!1208 k0!934 i!673 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun b!1219300 () Bool)

(declare-fun e!692348 () Bool)

(declare-fun tp_is_empty!30981 () Bool)

(assert (=> b!1219300 (= e!692348 tp_is_empty!30981)))

(declare-fun b!1219301 () Bool)

(declare-fun e!692342 () Bool)

(assert (=> b!1219301 (= e!692342 e!692347)))

(declare-fun res!809908 () Bool)

(assert (=> b!1219301 (=> res!809908 e!692347)))

(assert (=> b!1219301 (= res!809908 (or (= from!1455 i!673) (bvsge from!1455 i!673)))))

(declare-fun lt!554330 () ListLongMap!18119)

(assert (=> b!1219301 (= lt!554330 (getCurrentListMapNoExtraKeys!5476 lt!554335 lt!554329 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun lt!554338 () V!46435)

(assert (=> b!1219301 (= lt!554329 (array!78717 (store (arr!37985 _values!996) i!673 (ValueCellFull!14781 lt!554338)) (size!38522 _values!996)))))

(declare-fun dynLambda!3380 (Int (_ BitVec 64)) V!46435)

(assert (=> b!1219301 (= lt!554338 (dynLambda!3380 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!554332 () ListLongMap!18119)

(assert (=> b!1219301 (= lt!554332 (getCurrentListMapNoExtraKeys!5476 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun mapNonEmpty!48358 () Bool)

(declare-fun tp!91865 () Bool)

(declare-fun e!692349 () Bool)

(assert (=> mapNonEmpty!48358 (= mapRes!48358 (and tp!91865 e!692349))))

(declare-fun mapRest!48358 () (Array (_ BitVec 32) ValueCell!14781))

(declare-fun mapValue!48358 () ValueCell!14781)

(declare-fun mapKey!48358 () (_ BitVec 32))

(assert (=> mapNonEmpty!48358 (= (arr!37985 _values!996) (store mapRest!48358 mapKey!48358 mapValue!48358))))

(declare-fun res!809920 () Bool)

(assert (=> start!101496 (=> (not res!809920) (not e!692344))))

(assert (=> start!101496 (= res!809920 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!38521 _keys!1208))))))

(assert (=> start!101496 e!692344))

(assert (=> start!101496 tp_is_empty!30981))

(declare-fun array_inv!28822 (array!78714) Bool)

(assert (=> start!101496 (array_inv!28822 _keys!1208)))

(assert (=> start!101496 true))

(assert (=> start!101496 tp!91866))

(declare-fun e!692346 () Bool)

(declare-fun array_inv!28823 (array!78716) Bool)

(assert (=> start!101496 (and (array_inv!28823 _values!996) e!692346)))

(declare-fun b!1219302 () Bool)

(assert (=> b!1219302 (= e!692341 e!692343)))

(declare-fun res!809907 () Bool)

(assert (=> b!1219302 (=> res!809907 e!692343)))

(assert (=> b!1219302 (= res!809907 (not (= (select (arr!37984 _keys!1208) from!1455) k0!934)))))

(assert (=> b!1219302 e!692345))

(declare-fun res!809914 () Bool)

(assert (=> b!1219302 (=> (not res!809914) (not e!692345))))

(declare-fun +!4054 (ListLongMap!18119 tuple2!20138) ListLongMap!18119)

(declare-fun get!19412 (ValueCell!14781 V!46435) V!46435)

(assert (=> b!1219302 (= res!809914 (= lt!554330 (+!4054 lt!554333 (tuple2!20139 (select (arr!37984 _keys!1208) from!1455) (get!19412 (select (arr!37985 _values!996) from!1455) lt!554338)))))))

(declare-fun b!1219303 () Bool)

(assert (=> b!1219303 (= e!692346 (and e!692348 mapRes!48358))))

(declare-fun condMapEmpty!48358 () Bool)

(declare-fun mapDefault!48358 () ValueCell!14781)

(assert (=> b!1219303 (= condMapEmpty!48358 (= (arr!37985 _values!996) ((as const (Array (_ BitVec 32) ValueCell!14781)) mapDefault!48358)))))

(declare-fun b!1219304 () Bool)

(declare-fun res!809912 () Bool)

(assert (=> b!1219304 (=> (not res!809912) (not e!692344))))

(assert (=> b!1219304 (= res!809912 (validKeyInArray!0 k0!934))))

(declare-fun b!1219305 () Bool)

(declare-fun res!809913 () Bool)

(assert (=> b!1219305 (=> (not res!809913) (not e!692344))))

(assert (=> b!1219305 (= res!809913 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!38521 _keys!1208))))))

(declare-fun b!1219306 () Bool)

(assert (=> b!1219306 (= e!692349 tp_is_empty!30981)))

(declare-fun b!1219307 () Bool)

(assert (=> b!1219307 (= e!692344 e!692352)))

(declare-fun res!809906 () Bool)

(assert (=> b!1219307 (=> (not res!809906) (not e!692352))))

(assert (=> b!1219307 (= res!809906 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!554335 mask!1564))))

(assert (=> b!1219307 (= lt!554335 (array!78715 (store (arr!37984 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!38521 _keys!1208)))))

(declare-fun b!1219308 () Bool)

(assert (=> b!1219308 (= e!692352 (not e!692342))))

(declare-fun res!809909 () Bool)

(assert (=> b!1219308 (=> res!809909 e!692342)))

(assert (=> b!1219308 (= res!809909 (bvsgt from!1455 i!673))))

(assert (=> b!1219308 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-fun lt!554336 () Unit!40328)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!78714 (_ BitVec 64) (_ BitVec 32)) Unit!40328)

(assert (=> b!1219308 (= lt!554336 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1219309 () Bool)

(assert (=> b!1219309 (= e!692351 (arrayContainsKey!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1219310 () Bool)

(declare-fun res!809911 () Bool)

(assert (=> b!1219310 (=> (not res!809911) (not e!692344))))

(assert (=> b!1219310 (= res!809911 (and (= (size!38522 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!38521 _keys!1208) (size!38522 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1219311 () Bool)

(declare-fun res!809915 () Bool)

(assert (=> b!1219311 (=> (not res!809915) (not e!692344))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1219311 (= res!809915 (validMask!0 mask!1564))))

(assert (= (and start!101496 res!809920) b!1219311))

(assert (= (and b!1219311 res!809915) b!1219310))

(assert (= (and b!1219310 res!809911) b!1219293))

(assert (= (and b!1219293 res!809910) b!1219294))

(assert (= (and b!1219294 res!809917) b!1219305))

(assert (= (and b!1219305 res!809913) b!1219304))

(assert (= (and b!1219304 res!809912) b!1219298))

(assert (= (and b!1219298 res!809918) b!1219307))

(assert (= (and b!1219307 res!809906) b!1219295))

(assert (= (and b!1219295 res!809921) b!1219308))

(assert (= (and b!1219308 (not res!809909)) b!1219301))

(assert (= (and b!1219301 (not res!809908)) b!1219296))

(assert (= (and b!1219296 (not res!809919)) b!1219302))

(assert (= (and b!1219302 res!809914) b!1219297))

(assert (= (and b!1219297 (not res!809916)) b!1219309))

(assert (= (and b!1219302 (not res!809907)) b!1219299))

(assert (= (and b!1219303 condMapEmpty!48358) mapIsEmpty!48358))

(assert (= (and b!1219303 (not condMapEmpty!48358)) mapNonEmpty!48358))

(get-info :version)

(assert (= (and mapNonEmpty!48358 ((_ is ValueCellFull!14781) mapValue!48358)) b!1219306))

(assert (= (and b!1219303 ((_ is ValueCellFull!14781) mapDefault!48358)) b!1219300))

(assert (= start!101496 b!1219303))

(declare-fun b_lambda!22115 () Bool)

(assert (=> (not b_lambda!22115) (not b!1219301)))

(declare-fun t!40220 () Bool)

(declare-fun tb!11085 () Bool)

(assert (=> (and start!101496 (= defaultEntry!1004 defaultEntry!1004) t!40220) tb!11085))

(declare-fun result!22767 () Bool)

(assert (=> tb!11085 (= result!22767 tp_is_empty!30981)))

(assert (=> b!1219301 t!40220))

(declare-fun b_and!43755 () Bool)

(assert (= b_and!43753 (and (=> t!40220 result!22767) b_and!43755)))

(declare-fun m!1124117 () Bool)

(assert (=> b!1219302 m!1124117))

(declare-fun m!1124119 () Bool)

(assert (=> b!1219302 m!1124119))

(assert (=> b!1219302 m!1124119))

(declare-fun m!1124121 () Bool)

(assert (=> b!1219302 m!1124121))

(declare-fun m!1124123 () Bool)

(assert (=> b!1219302 m!1124123))

(declare-fun m!1124125 () Bool)

(assert (=> b!1219308 m!1124125))

(declare-fun m!1124127 () Bool)

(assert (=> b!1219308 m!1124127))

(declare-fun m!1124129 () Bool)

(assert (=> b!1219301 m!1124129))

(declare-fun m!1124131 () Bool)

(assert (=> b!1219301 m!1124131))

(declare-fun m!1124133 () Bool)

(assert (=> b!1219301 m!1124133))

(declare-fun m!1124135 () Bool)

(assert (=> b!1219301 m!1124135))

(declare-fun m!1124137 () Bool)

(assert (=> b!1219296 m!1124137))

(declare-fun m!1124139 () Bool)

(assert (=> b!1219296 m!1124139))

(declare-fun m!1124141 () Bool)

(assert (=> b!1219296 m!1124141))

(declare-fun m!1124143 () Bool)

(assert (=> b!1219296 m!1124143))

(assert (=> b!1219296 m!1124117))

(declare-fun m!1124145 () Bool)

(assert (=> b!1219296 m!1124145))

(assert (=> b!1219296 m!1124117))

(declare-fun m!1124147 () Bool)

(assert (=> b!1219294 m!1124147))

(assert (=> b!1219297 m!1124117))

(declare-fun m!1124149 () Bool)

(assert (=> b!1219299 m!1124149))

(declare-fun m!1124151 () Bool)

(assert (=> b!1219299 m!1124151))

(declare-fun m!1124153 () Bool)

(assert (=> b!1219304 m!1124153))

(declare-fun m!1124155 () Bool)

(assert (=> start!101496 m!1124155))

(declare-fun m!1124157 () Bool)

(assert (=> start!101496 m!1124157))

(declare-fun m!1124159 () Bool)

(assert (=> b!1219311 m!1124159))

(declare-fun m!1124161 () Bool)

(assert (=> b!1219298 m!1124161))

(declare-fun m!1124163 () Bool)

(assert (=> b!1219295 m!1124163))

(declare-fun m!1124165 () Bool)

(assert (=> b!1219309 m!1124165))

(declare-fun m!1124167 () Bool)

(assert (=> mapNonEmpty!48358 m!1124167))

(declare-fun m!1124169 () Bool)

(assert (=> b!1219307 m!1124169))

(declare-fun m!1124171 () Bool)

(assert (=> b!1219307 m!1124171))

(declare-fun m!1124173 () Bool)

(assert (=> b!1219293 m!1124173))

(check-sat (not b_lambda!22115) tp_is_empty!30981 (not b!1219302) (not b!1219293) b_and!43755 (not mapNonEmpty!48358) (not b!1219296) (not b!1219307) (not b_next!26277) (not b!1219295) (not b!1219294) (not b!1219299) (not b!1219309) (not b!1219311) (not start!101496) (not b!1219301) (not b!1219308) (not b!1219304))
(check-sat b_and!43755 (not b_next!26277))
