; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!99594 () Bool)

(assert start!99594)

(declare-fun b_free!25137 () Bool)

(declare-fun b_next!25137 () Bool)

(assert (=> start!99594 (= b_free!25137 (not b_next!25137))))

(declare-fun tp!88125 () Bool)

(declare-fun b_and!41155 () Bool)

(assert (=> start!99594 (= tp!88125 b_and!41155)))

(declare-fun mapIsEmpty!46328 () Bool)

(declare-fun mapRes!46328 () Bool)

(assert (=> mapIsEmpty!46328 mapRes!46328))

(declare-fun b!1178231 () Bool)

(declare-fun e!669853 () Bool)

(declare-fun e!669856 () Bool)

(assert (=> b!1178231 (= e!669853 e!669856)))

(declare-fun res!782802 () Bool)

(assert (=> b!1178231 (=> res!782802 e!669856)))

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1178231 (= res!782802 (or (= from!1455 i!673) (bvsge from!1455 i!673)))))

(declare-datatypes ((V!44683 0))(
  ( (V!44684 (val!14890 Int)) )
))
(declare-datatypes ((ValueCell!14124 0))(
  ( (ValueCellFull!14124 (v!17529 V!44683)) (EmptyCell!14124) )
))
(declare-datatypes ((array!76106 0))(
  ( (array!76107 (arr!36699 (Array (_ BitVec 32) ValueCell!14124)) (size!37236 (_ BitVec 32))) )
))
(declare-fun lt!532202 () array!76106)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-datatypes ((array!76108 0))(
  ( (array!76109 (arr!36700 (Array (_ BitVec 32) (_ BitVec 64))) (size!37237 (_ BitVec 32))) )
))
(declare-fun lt!532208 () array!76108)

(declare-datatypes ((tuple2!19174 0))(
  ( (tuple2!19175 (_1!9597 (_ BitVec 64)) (_2!9597 V!44683)) )
))
(declare-datatypes ((List!25938 0))(
  ( (Nil!25935) (Cons!25934 (h!27143 tuple2!19174) (t!38074 List!25938)) )
))
(declare-datatypes ((ListLongMap!17155 0))(
  ( (ListLongMap!17156 (toList!8593 List!25938)) )
))
(declare-fun lt!532195 () ListLongMap!17155)

(declare-fun minValue!944 () V!44683)

(declare-fun zeroValue!944 () V!44683)

(declare-fun getCurrentListMapNoExtraKeys!5023 (array!76108 array!76106 (_ BitVec 32) (_ BitVec 32) V!44683 V!44683 (_ BitVec 32) Int) ListLongMap!17155)

(assert (=> b!1178231 (= lt!532195 (getCurrentListMapNoExtraKeys!5023 lt!532208 lt!532202 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun _values!996 () array!76106)

(declare-fun lt!532209 () V!44683)

(assert (=> b!1178231 (= lt!532202 (array!76107 (store (arr!36699 _values!996) i!673 (ValueCellFull!14124 lt!532209)) (size!37236 _values!996)))))

(declare-fun dynLambda!2997 (Int (_ BitVec 64)) V!44683)

(assert (=> b!1178231 (= lt!532209 (dynLambda!2997 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun _keys!1208 () array!76108)

(declare-fun lt!532206 () ListLongMap!17155)

(assert (=> b!1178231 (= lt!532206 (getCurrentListMapNoExtraKeys!5023 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1178232 () Bool)

(declare-datatypes ((Unit!38853 0))(
  ( (Unit!38854) )
))
(declare-fun e!669862 () Unit!38853)

(declare-fun Unit!38855 () Unit!38853)

(assert (=> b!1178232 (= e!669862 Unit!38855)))

(declare-fun k0!934 () (_ BitVec 64))

(declare-fun lt!532205 () Unit!38853)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!76108 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!38853)

(assert (=> b!1178232 (= lt!532205 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 _keys!1208 k0!934 i!673 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun arrayContainsKey!0 (array!76108 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1178232 (arrayContainsKey!0 _keys!1208 k0!934 (bvadd #b00000000000000000000000000000001 from!1455))))

(declare-fun lt!532203 () Unit!38853)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!76108 (_ BitVec 32) (_ BitVec 32)) Unit!38853)

(assert (=> b!1178232 (= lt!532203 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1208 #b00000000000000000000000000000000 from!1455))))

(declare-datatypes ((List!25939 0))(
  ( (Nil!25936) (Cons!25935 (h!27144 (_ BitVec 64)) (t!38075 List!25939)) )
))
(declare-fun arrayNoDuplicates!0 (array!76108 (_ BitVec 32) List!25939) Bool)

(assert (=> b!1178232 (arrayNoDuplicates!0 _keys!1208 from!1455 Nil!25936)))

(declare-fun lt!532199 () Unit!38853)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!76108 (_ BitVec 64) (_ BitVec 32) List!25939) Unit!38853)

(assert (=> b!1178232 (= lt!532199 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!1208 k0!934 from!1455 Nil!25936))))

(assert (=> b!1178232 false))

(declare-fun b!1178233 () Bool)

(declare-fun Unit!38856 () Unit!38853)

(assert (=> b!1178233 (= e!669862 Unit!38856)))

(declare-fun b!1178234 () Bool)

(declare-fun e!669857 () Bool)

(declare-fun tp_is_empty!29667 () Bool)

(assert (=> b!1178234 (= e!669857 tp_is_empty!29667)))

(declare-fun b!1178235 () Bool)

(declare-fun res!782797 () Bool)

(declare-fun e!669854 () Bool)

(assert (=> b!1178235 (=> (not res!782797) (not e!669854))))

(assert (=> b!1178235 (= res!782797 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!25936))))

(declare-fun b!1178236 () Bool)

(declare-fun res!782800 () Bool)

(assert (=> b!1178236 (=> (not res!782800) (not e!669854))))

(assert (=> b!1178236 (= res!782800 (and (= (size!37236 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!37237 _keys!1208) (size!37236 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1178238 () Bool)

(declare-fun e!669858 () Bool)

(declare-fun e!669859 () Bool)

(assert (=> b!1178238 (= e!669858 e!669859)))

(declare-fun res!782794 () Bool)

(assert (=> b!1178238 (=> res!782794 e!669859)))

(assert (=> b!1178238 (= res!782794 (not (= (select (arr!36700 _keys!1208) from!1455) k0!934)))))

(declare-fun mapNonEmpty!46328 () Bool)

(declare-fun tp!88126 () Bool)

(assert (=> mapNonEmpty!46328 (= mapRes!46328 (and tp!88126 e!669857))))

(declare-fun mapRest!46328 () (Array (_ BitVec 32) ValueCell!14124))

(declare-fun mapValue!46328 () ValueCell!14124)

(declare-fun mapKey!46328 () (_ BitVec 32))

(assert (=> mapNonEmpty!46328 (= (arr!36699 _values!996) (store mapRest!46328 mapKey!46328 mapValue!46328))))

(declare-fun b!1178239 () Bool)

(declare-fun e!669855 () Bool)

(assert (=> b!1178239 (= e!669854 e!669855)))

(declare-fun res!782793 () Bool)

(assert (=> b!1178239 (=> (not res!782793) (not e!669855))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!76108 (_ BitVec 32)) Bool)

(assert (=> b!1178239 (= res!782793 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!532208 mask!1564))))

(assert (=> b!1178239 (= lt!532208 (array!76109 (store (arr!36700 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!37237 _keys!1208)))))

(declare-fun b!1178240 () Bool)

(declare-fun res!782801 () Bool)

(assert (=> b!1178240 (=> (not res!782801) (not e!669854))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1178240 (= res!782801 (validKeyInArray!0 k0!934))))

(declare-fun b!1178241 () Bool)

(declare-fun e!669850 () Bool)

(declare-fun e!669851 () Bool)

(assert (=> b!1178241 (= e!669850 (and e!669851 mapRes!46328))))

(declare-fun condMapEmpty!46328 () Bool)

(declare-fun mapDefault!46328 () ValueCell!14124)

(assert (=> b!1178241 (= condMapEmpty!46328 (= (arr!36699 _values!996) ((as const (Array (_ BitVec 32) ValueCell!14124)) mapDefault!46328)))))

(declare-fun b!1178242 () Bool)

(declare-fun res!782795 () Bool)

(assert (=> b!1178242 (=> (not res!782795) (not e!669854))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1178242 (= res!782795 (validMask!0 mask!1564))))

(declare-fun b!1178243 () Bool)

(declare-fun res!782803 () Bool)

(assert (=> b!1178243 (=> (not res!782803) (not e!669854))))

(assert (=> b!1178243 (= res!782803 (= (select (arr!36700 _keys!1208) i!673) k0!934))))

(declare-fun b!1178244 () Bool)

(assert (=> b!1178244 (= e!669855 (not e!669853))))

(declare-fun res!782792 () Bool)

(assert (=> b!1178244 (=> res!782792 e!669853)))

(assert (=> b!1178244 (= res!782792 (bvsgt from!1455 i!673))))

(assert (=> b!1178244 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-fun lt!532201 () Unit!38853)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!76108 (_ BitVec 64) (_ BitVec 32)) Unit!38853)

(assert (=> b!1178244 (= lt!532201 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1178245 () Bool)

(declare-fun e!669861 () Bool)

(assert (=> b!1178245 (= e!669856 e!669861)))

(declare-fun res!782806 () Bool)

(assert (=> b!1178245 (=> res!782806 e!669861)))

(assert (=> b!1178245 (= res!782806 (not (validKeyInArray!0 (select (arr!36700 _keys!1208) from!1455))))))

(declare-fun lt!532197 () ListLongMap!17155)

(declare-fun lt!532198 () ListLongMap!17155)

(assert (=> b!1178245 (= lt!532197 lt!532198)))

(declare-fun lt!532204 () ListLongMap!17155)

(declare-fun -!1592 (ListLongMap!17155 (_ BitVec 64)) ListLongMap!17155)

(assert (=> b!1178245 (= lt!532198 (-!1592 lt!532204 k0!934))))

(assert (=> b!1178245 (= lt!532197 (getCurrentListMapNoExtraKeys!5023 lt!532208 lt!532202 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(assert (=> b!1178245 (= lt!532204 (getCurrentListMapNoExtraKeys!5023 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun lt!532196 () Unit!38853)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!816 (array!76108 array!76106 (_ BitVec 32) (_ BitVec 32) V!44683 V!44683 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!38853)

(assert (=> b!1178245 (= lt!532196 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!816 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1178246 () Bool)

(declare-fun res!782791 () Bool)

(assert (=> b!1178246 (=> (not res!782791) (not e!669855))))

(assert (=> b!1178246 (= res!782791 (arrayNoDuplicates!0 lt!532208 #b00000000000000000000000000000000 Nil!25936))))

(declare-fun b!1178247 () Bool)

(assert (=> b!1178247 (= e!669859 (arrayContainsKey!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1178248 () Bool)

(declare-fun res!782796 () Bool)

(assert (=> b!1178248 (=> (not res!782796) (not e!669854))))

(assert (=> b!1178248 (= res!782796 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!37237 _keys!1208))))))

(declare-fun e!669852 () Bool)

(declare-fun b!1178249 () Bool)

(declare-fun lt!532200 () tuple2!19174)

(declare-fun +!3814 (ListLongMap!17155 tuple2!19174) ListLongMap!17155)

(assert (=> b!1178249 (= e!669852 (= lt!532206 (+!3814 lt!532204 lt!532200)))))

(declare-fun b!1178250 () Bool)

(assert (=> b!1178250 (= e!669861 true)))

(assert (=> b!1178250 e!669852))

(declare-fun res!782805 () Bool)

(assert (=> b!1178250 (=> (not res!782805) (not e!669852))))

(assert (=> b!1178250 (= res!782805 (not (= (select (arr!36700 _keys!1208) from!1455) k0!934)))))

(declare-fun lt!532207 () Unit!38853)

(assert (=> b!1178250 (= lt!532207 e!669862)))

(declare-fun c!116777 () Bool)

(assert (=> b!1178250 (= c!116777 (= (select (arr!36700 _keys!1208) from!1455) k0!934))))

(assert (=> b!1178250 e!669858))

(declare-fun res!782798 () Bool)

(assert (=> b!1178250 (=> (not res!782798) (not e!669858))))

(assert (=> b!1178250 (= res!782798 (= lt!532195 (+!3814 lt!532198 lt!532200)))))

(declare-fun get!18789 (ValueCell!14124 V!44683) V!44683)

(assert (=> b!1178250 (= lt!532200 (tuple2!19175 (select (arr!36700 _keys!1208) from!1455) (get!18789 (select (arr!36699 _values!996) from!1455) lt!532209)))))

(declare-fun b!1178251 () Bool)

(assert (=> b!1178251 (= e!669851 tp_is_empty!29667)))

(declare-fun res!782804 () Bool)

(assert (=> start!99594 (=> (not res!782804) (not e!669854))))

(assert (=> start!99594 (= res!782804 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!37237 _keys!1208))))))

(assert (=> start!99594 e!669854))

(assert (=> start!99594 tp_is_empty!29667))

(declare-fun array_inv!27912 (array!76108) Bool)

(assert (=> start!99594 (array_inv!27912 _keys!1208)))

(assert (=> start!99594 true))

(assert (=> start!99594 tp!88125))

(declare-fun array_inv!27913 (array!76106) Bool)

(assert (=> start!99594 (and (array_inv!27913 _values!996) e!669850)))

(declare-fun b!1178237 () Bool)

(declare-fun res!782799 () Bool)

(assert (=> b!1178237 (=> (not res!782799) (not e!669854))))

(assert (=> b!1178237 (= res!782799 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(assert (= (and start!99594 res!782804) b!1178242))

(assert (= (and b!1178242 res!782795) b!1178236))

(assert (= (and b!1178236 res!782800) b!1178237))

(assert (= (and b!1178237 res!782799) b!1178235))

(assert (= (and b!1178235 res!782797) b!1178248))

(assert (= (and b!1178248 res!782796) b!1178240))

(assert (= (and b!1178240 res!782801) b!1178243))

(assert (= (and b!1178243 res!782803) b!1178239))

(assert (= (and b!1178239 res!782793) b!1178246))

(assert (= (and b!1178246 res!782791) b!1178244))

(assert (= (and b!1178244 (not res!782792)) b!1178231))

(assert (= (and b!1178231 (not res!782802)) b!1178245))

(assert (= (and b!1178245 (not res!782806)) b!1178250))

(assert (= (and b!1178250 res!782798) b!1178238))

(assert (= (and b!1178238 (not res!782794)) b!1178247))

(assert (= (and b!1178250 c!116777) b!1178232))

(assert (= (and b!1178250 (not c!116777)) b!1178233))

(assert (= (and b!1178250 res!782805) b!1178249))

(assert (= (and b!1178241 condMapEmpty!46328) mapIsEmpty!46328))

(assert (= (and b!1178241 (not condMapEmpty!46328)) mapNonEmpty!46328))

(get-info :version)

(assert (= (and mapNonEmpty!46328 ((_ is ValueCellFull!14124) mapValue!46328)) b!1178234))

(assert (= (and b!1178241 ((_ is ValueCellFull!14124) mapDefault!46328)) b!1178251))

(assert (= start!99594 b!1178241))

(declare-fun b_lambda!20299 () Bool)

(assert (=> (not b_lambda!20299) (not b!1178231)))

(declare-fun t!38073 () Bool)

(declare-fun tb!9957 () Bool)

(assert (=> (and start!99594 (= defaultEntry!1004 defaultEntry!1004) t!38073) tb!9957))

(declare-fun result!20473 () Bool)

(assert (=> tb!9957 (= result!20473 tp_is_empty!29667)))

(assert (=> b!1178231 t!38073))

(declare-fun b_and!41157 () Bool)

(assert (= b_and!41155 (and (=> t!38073 result!20473) b_and!41157)))

(declare-fun m!1086245 () Bool)

(assert (=> b!1178231 m!1086245))

(declare-fun m!1086247 () Bool)

(assert (=> b!1178231 m!1086247))

(declare-fun m!1086249 () Bool)

(assert (=> b!1178231 m!1086249))

(declare-fun m!1086251 () Bool)

(assert (=> b!1178231 m!1086251))

(declare-fun m!1086253 () Bool)

(assert (=> b!1178247 m!1086253))

(declare-fun m!1086255 () Bool)

(assert (=> start!99594 m!1086255))

(declare-fun m!1086257 () Bool)

(assert (=> start!99594 m!1086257))

(declare-fun m!1086259 () Bool)

(assert (=> b!1178237 m!1086259))

(declare-fun m!1086261 () Bool)

(assert (=> b!1178235 m!1086261))

(declare-fun m!1086263 () Bool)

(assert (=> b!1178240 m!1086263))

(declare-fun m!1086265 () Bool)

(assert (=> b!1178250 m!1086265))

(declare-fun m!1086267 () Bool)

(assert (=> b!1178250 m!1086267))

(declare-fun m!1086269 () Bool)

(assert (=> b!1178250 m!1086269))

(assert (=> b!1178250 m!1086269))

(declare-fun m!1086271 () Bool)

(assert (=> b!1178250 m!1086271))

(declare-fun m!1086273 () Bool)

(assert (=> b!1178239 m!1086273))

(declare-fun m!1086275 () Bool)

(assert (=> b!1178239 m!1086275))

(declare-fun m!1086277 () Bool)

(assert (=> b!1178243 m!1086277))

(declare-fun m!1086279 () Bool)

(assert (=> b!1178249 m!1086279))

(declare-fun m!1086281 () Bool)

(assert (=> b!1178244 m!1086281))

(declare-fun m!1086283 () Bool)

(assert (=> b!1178244 m!1086283))

(declare-fun m!1086285 () Bool)

(assert (=> b!1178246 m!1086285))

(assert (=> b!1178238 m!1086265))

(declare-fun m!1086287 () Bool)

(assert (=> b!1178245 m!1086287))

(declare-fun m!1086289 () Bool)

(assert (=> b!1178245 m!1086289))

(declare-fun m!1086291 () Bool)

(assert (=> b!1178245 m!1086291))

(declare-fun m!1086293 () Bool)

(assert (=> b!1178245 m!1086293))

(assert (=> b!1178245 m!1086265))

(declare-fun m!1086295 () Bool)

(assert (=> b!1178245 m!1086295))

(assert (=> b!1178245 m!1086265))

(declare-fun m!1086297 () Bool)

(assert (=> mapNonEmpty!46328 m!1086297))

(declare-fun m!1086299 () Bool)

(assert (=> b!1178242 m!1086299))

(declare-fun m!1086301 () Bool)

(assert (=> b!1178232 m!1086301))

(declare-fun m!1086303 () Bool)

(assert (=> b!1178232 m!1086303))

(declare-fun m!1086305 () Bool)

(assert (=> b!1178232 m!1086305))

(declare-fun m!1086307 () Bool)

(assert (=> b!1178232 m!1086307))

(declare-fun m!1086309 () Bool)

(assert (=> b!1178232 m!1086309))

(check-sat (not b!1178244) (not b!1178240) (not b!1178232) (not mapNonEmpty!46328) (not b!1178231) b_and!41157 (not start!99594) tp_is_empty!29667 (not b!1178250) (not b!1178235) (not b!1178242) (not b!1178245) (not b!1178247) (not b!1178249) (not b_next!25137) (not b!1178239) (not b!1178246) (not b_lambda!20299) (not b!1178237))
(check-sat b_and!41157 (not b_next!25137))
