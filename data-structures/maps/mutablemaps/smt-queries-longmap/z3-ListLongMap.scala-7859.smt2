; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!97936 () Bool)

(assert start!97936)

(declare-fun b_free!23601 () Bool)

(declare-fun b_next!23601 () Bool)

(assert (=> start!97936 (= b_free!23601 (not b_next!23601))))

(declare-fun tp!83507 () Bool)

(declare-fun b_and!38007 () Bool)

(assert (=> start!97936 (= tp!83507 b_and!38007)))

(declare-fun b!1121243 () Bool)

(declare-fun res!749138 () Bool)

(declare-fun e!638457 () Bool)

(assert (=> b!1121243 (=> (not res!749138) (not e!638457))))

(declare-fun k0!934 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1121243 (= res!749138 (validKeyInArray!0 k0!934))))

(declare-fun b!1121245 () Bool)

(declare-fun e!638455 () Bool)

(declare-fun tp_is_empty!28131 () Bool)

(assert (=> b!1121245 (= e!638455 tp_is_empty!28131)))

(declare-fun mapIsEmpty!44014 () Bool)

(declare-fun mapRes!44014 () Bool)

(assert (=> mapIsEmpty!44014 mapRes!44014))

(declare-fun b!1121246 () Bool)

(declare-fun e!638454 () Bool)

(assert (=> b!1121246 (= e!638454 tp_is_empty!28131)))

(declare-fun b!1121247 () Bool)

(declare-fun res!749133 () Bool)

(assert (=> b!1121247 (=> (not res!749133) (not e!638457))))

(declare-datatypes ((array!73088 0))(
  ( (array!73089 (arr!35193 (Array (_ BitVec 32) (_ BitVec 64))) (size!35730 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!73088)

(declare-datatypes ((List!24624 0))(
  ( (Nil!24621) (Cons!24620 (h!25829 (_ BitVec 64)) (t!35224 List!24624)) )
))
(declare-fun arrayNoDuplicates!0 (array!73088 (_ BitVec 32) List!24624) Bool)

(assert (=> b!1121247 (= res!749133 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!24621))))

(declare-fun b!1121248 () Bool)

(declare-fun e!638458 () Bool)

(declare-datatypes ((V!42635 0))(
  ( (V!42636 (val!14122 Int)) )
))
(declare-datatypes ((tuple2!17786 0))(
  ( (tuple2!17787 (_1!8903 (_ BitVec 64)) (_2!8903 V!42635)) )
))
(declare-datatypes ((List!24625 0))(
  ( (Nil!24622) (Cons!24621 (h!25830 tuple2!17786) (t!35225 List!24625)) )
))
(declare-datatypes ((ListLongMap!15767 0))(
  ( (ListLongMap!15768 (toList!7899 List!24625)) )
))
(declare-fun call!47086 () ListLongMap!15767)

(declare-fun call!47087 () ListLongMap!15767)

(assert (=> b!1121248 (= e!638458 (= call!47086 call!47087))))

(declare-fun b!1121249 () Bool)

(declare-fun res!749132 () Bool)

(assert (=> b!1121249 (=> (not res!749132) (not e!638457))))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1121249 (= res!749132 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!35730 _keys!1208))))))

(declare-fun b!1121250 () Bool)

(declare-fun -!1065 (ListLongMap!15767 (_ BitVec 64)) ListLongMap!15767)

(assert (=> b!1121250 (= e!638458 (= call!47086 (-!1065 call!47087 k0!934)))))

(declare-fun b!1121251 () Bool)

(declare-fun e!638460 () Bool)

(declare-fun e!638462 () Bool)

(assert (=> b!1121251 (= e!638460 e!638462)))

(declare-fun res!749139 () Bool)

(assert (=> b!1121251 (=> res!749139 e!638462)))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> b!1121251 (= res!749139 (not (= from!1455 i!673)))))

(declare-fun zeroValue!944 () V!42635)

(declare-fun lt!498278 () array!73088)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-fun lt!498280 () ListLongMap!15767)

(declare-datatypes ((ValueCell!13356 0))(
  ( (ValueCellFull!13356 (v!16756 V!42635)) (EmptyCell!13356) )
))
(declare-datatypes ((array!73090 0))(
  ( (array!73091 (arr!35194 (Array (_ BitVec 32) ValueCell!13356)) (size!35731 (_ BitVec 32))) )
))
(declare-fun lt!498281 () array!73090)

(declare-fun minValue!944 () V!42635)

(declare-fun getCurrentListMapNoExtraKeys!4360 (array!73088 array!73090 (_ BitVec 32) (_ BitVec 32) V!42635 V!42635 (_ BitVec 32) Int) ListLongMap!15767)

(assert (=> b!1121251 (= lt!498280 (getCurrentListMapNoExtraKeys!4360 lt!498278 lt!498281 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun _values!996 () array!73090)

(declare-fun dynLambda!2460 (Int (_ BitVec 64)) V!42635)

(assert (=> b!1121251 (= lt!498281 (array!73091 (store (arr!35194 _values!996) i!673 (ValueCellFull!13356 (dynLambda!2460 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!35731 _values!996)))))

(declare-fun lt!498277 () ListLongMap!15767)

(assert (=> b!1121251 (= lt!498277 (getCurrentListMapNoExtraKeys!4360 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1121252 () Bool)

(declare-fun e!638459 () Bool)

(assert (=> b!1121252 (= e!638459 (not e!638460))))

(declare-fun res!749137 () Bool)

(assert (=> b!1121252 (=> res!749137 e!638460)))

(assert (=> b!1121252 (= res!749137 (bvsgt from!1455 i!673))))

(declare-fun arrayContainsKey!0 (array!73088 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1121252 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!36713 0))(
  ( (Unit!36714) )
))
(declare-fun lt!498282 () Unit!36713)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!73088 (_ BitVec 64) (_ BitVec 32)) Unit!36713)

(assert (=> b!1121252 (= lt!498282 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1121253 () Bool)

(declare-fun res!749131 () Bool)

(assert (=> b!1121253 (=> (not res!749131) (not e!638457))))

(assert (=> b!1121253 (= res!749131 (= (select (arr!35193 _keys!1208) i!673) k0!934))))

(declare-fun b!1121254 () Bool)

(declare-fun res!749136 () Bool)

(assert (=> b!1121254 (=> (not res!749136) (not e!638459))))

(assert (=> b!1121254 (= res!749136 (arrayNoDuplicates!0 lt!498278 #b00000000000000000000000000000000 Nil!24621))))

(declare-fun b!1121244 () Bool)

(declare-fun res!749134 () Bool)

(assert (=> b!1121244 (=> (not res!749134) (not e!638457))))

(assert (=> b!1121244 (= res!749134 (and (= (size!35731 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!35730 _keys!1208) (size!35731 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun res!749142 () Bool)

(assert (=> start!97936 (=> (not res!749142) (not e!638457))))

(assert (=> start!97936 (= res!749142 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!35730 _keys!1208))))))

(assert (=> start!97936 e!638457))

(assert (=> start!97936 tp_is_empty!28131))

(declare-fun array_inv!26902 (array!73088) Bool)

(assert (=> start!97936 (array_inv!26902 _keys!1208)))

(assert (=> start!97936 true))

(assert (=> start!97936 tp!83507))

(declare-fun e!638461 () Bool)

(declare-fun array_inv!26903 (array!73090) Bool)

(assert (=> start!97936 (and (array_inv!26903 _values!996) e!638461)))

(declare-fun b!1121255 () Bool)

(assert (=> b!1121255 (= e!638462 true)))

(assert (=> b!1121255 e!638458))

(declare-fun c!109352 () Bool)

(assert (=> b!1121255 (= c!109352 (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673))))

(declare-fun lt!498279 () Unit!36713)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!319 (array!73088 array!73090 (_ BitVec 32) (_ BitVec 32) V!42635 V!42635 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!36713)

(assert (=> b!1121255 (= lt!498279 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!319 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun bm!47083 () Bool)

(assert (=> bm!47083 (= call!47087 (getCurrentListMapNoExtraKeys!4360 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun mapNonEmpty!44014 () Bool)

(declare-fun tp!83508 () Bool)

(assert (=> mapNonEmpty!44014 (= mapRes!44014 (and tp!83508 e!638455))))

(declare-fun mapKey!44014 () (_ BitVec 32))

(declare-fun mapRest!44014 () (Array (_ BitVec 32) ValueCell!13356))

(declare-fun mapValue!44014 () ValueCell!13356)

(assert (=> mapNonEmpty!44014 (= (arr!35194 _values!996) (store mapRest!44014 mapKey!44014 mapValue!44014))))

(declare-fun b!1121256 () Bool)

(declare-fun res!749141 () Bool)

(assert (=> b!1121256 (=> (not res!749141) (not e!638457))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!73088 (_ BitVec 32)) Bool)

(assert (=> b!1121256 (= res!749141 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1121257 () Bool)

(assert (=> b!1121257 (= e!638457 e!638459)))

(declare-fun res!749135 () Bool)

(assert (=> b!1121257 (=> (not res!749135) (not e!638459))))

(assert (=> b!1121257 (= res!749135 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!498278 mask!1564))))

(assert (=> b!1121257 (= lt!498278 (array!73089 (store (arr!35193 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!35730 _keys!1208)))))

(declare-fun b!1121258 () Bool)

(declare-fun res!749140 () Bool)

(assert (=> b!1121258 (=> (not res!749140) (not e!638457))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1121258 (= res!749140 (validMask!0 mask!1564))))

(declare-fun bm!47084 () Bool)

(assert (=> bm!47084 (= call!47086 (getCurrentListMapNoExtraKeys!4360 lt!498278 lt!498281 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1121259 () Bool)

(assert (=> b!1121259 (= e!638461 (and e!638454 mapRes!44014))))

(declare-fun condMapEmpty!44014 () Bool)

(declare-fun mapDefault!44014 () ValueCell!13356)

(assert (=> b!1121259 (= condMapEmpty!44014 (= (arr!35194 _values!996) ((as const (Array (_ BitVec 32) ValueCell!13356)) mapDefault!44014)))))

(assert (= (and start!97936 res!749142) b!1121258))

(assert (= (and b!1121258 res!749140) b!1121244))

(assert (= (and b!1121244 res!749134) b!1121256))

(assert (= (and b!1121256 res!749141) b!1121247))

(assert (= (and b!1121247 res!749133) b!1121249))

(assert (= (and b!1121249 res!749132) b!1121243))

(assert (= (and b!1121243 res!749138) b!1121253))

(assert (= (and b!1121253 res!749131) b!1121257))

(assert (= (and b!1121257 res!749135) b!1121254))

(assert (= (and b!1121254 res!749136) b!1121252))

(assert (= (and b!1121252 (not res!749137)) b!1121251))

(assert (= (and b!1121251 (not res!749139)) b!1121255))

(assert (= (and b!1121255 c!109352) b!1121250))

(assert (= (and b!1121255 (not c!109352)) b!1121248))

(assert (= (or b!1121250 b!1121248) bm!47084))

(assert (= (or b!1121250 b!1121248) bm!47083))

(assert (= (and b!1121259 condMapEmpty!44014) mapIsEmpty!44014))

(assert (= (and b!1121259 (not condMapEmpty!44014)) mapNonEmpty!44014))

(get-info :version)

(assert (= (and mapNonEmpty!44014 ((_ is ValueCellFull!13356) mapValue!44014)) b!1121245))

(assert (= (and b!1121259 ((_ is ValueCellFull!13356) mapDefault!44014)) b!1121246))

(assert (= start!97936 b!1121259))

(declare-fun b_lambda!18605 () Bool)

(assert (=> (not b_lambda!18605) (not b!1121251)))

(declare-fun t!35223 () Bool)

(declare-fun tb!8421 () Bool)

(assert (=> (and start!97936 (= defaultEntry!1004 defaultEntry!1004) t!35223) tb!8421))

(declare-fun result!17395 () Bool)

(assert (=> tb!8421 (= result!17395 tp_is_empty!28131)))

(assert (=> b!1121251 t!35223))

(declare-fun b_and!38009 () Bool)

(assert (= b_and!38007 (and (=> t!35223 result!17395) b_and!38009)))

(declare-fun m!1036231 () Bool)

(assert (=> b!1121252 m!1036231))

(declare-fun m!1036233 () Bool)

(assert (=> b!1121252 m!1036233))

(declare-fun m!1036235 () Bool)

(assert (=> b!1121247 m!1036235))

(declare-fun m!1036237 () Bool)

(assert (=> b!1121250 m!1036237))

(declare-fun m!1036239 () Bool)

(assert (=> b!1121243 m!1036239))

(declare-fun m!1036241 () Bool)

(assert (=> mapNonEmpty!44014 m!1036241))

(declare-fun m!1036243 () Bool)

(assert (=> b!1121257 m!1036243))

(declare-fun m!1036245 () Bool)

(assert (=> b!1121257 m!1036245))

(declare-fun m!1036247 () Bool)

(assert (=> bm!47083 m!1036247))

(declare-fun m!1036249 () Bool)

(assert (=> b!1121251 m!1036249))

(declare-fun m!1036251 () Bool)

(assert (=> b!1121251 m!1036251))

(declare-fun m!1036253 () Bool)

(assert (=> b!1121251 m!1036253))

(declare-fun m!1036255 () Bool)

(assert (=> b!1121251 m!1036255))

(declare-fun m!1036257 () Bool)

(assert (=> b!1121253 m!1036257))

(declare-fun m!1036259 () Bool)

(assert (=> b!1121256 m!1036259))

(declare-fun m!1036261 () Bool)

(assert (=> bm!47084 m!1036261))

(declare-fun m!1036263 () Bool)

(assert (=> b!1121255 m!1036263))

(declare-fun m!1036265 () Bool)

(assert (=> start!97936 m!1036265))

(declare-fun m!1036267 () Bool)

(assert (=> start!97936 m!1036267))

(declare-fun m!1036269 () Bool)

(assert (=> b!1121254 m!1036269))

(declare-fun m!1036271 () Bool)

(assert (=> b!1121258 m!1036271))

(check-sat (not b!1121254) (not b!1121258) (not b!1121251) (not b!1121247) b_and!38009 (not b!1121255) (not b!1121257) (not start!97936) (not b_next!23601) tp_is_empty!28131 (not bm!47084) (not b!1121243) (not mapNonEmpty!44014) (not b!1121250) (not b!1121256) (not bm!47083) (not b_lambda!18605) (not b!1121252))
(check-sat b_and!38009 (not b_next!23601))
