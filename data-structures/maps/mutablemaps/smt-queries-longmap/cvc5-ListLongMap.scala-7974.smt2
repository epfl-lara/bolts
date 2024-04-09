; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!98720 () Bool)

(assert start!98720)

(declare-fun b_free!24289 () Bool)

(declare-fun b_next!24289 () Bool)

(assert (=> start!98720 (= b_free!24289 (not b_next!24289))))

(declare-fun tp!85579 () Bool)

(declare-fun b_and!39441 () Bool)

(assert (=> start!98720 (= tp!85579 b_and!39441)))

(declare-fun b!1148242 () Bool)

(declare-fun e!653161 () Bool)

(declare-fun tp_is_empty!28819 () Bool)

(assert (=> b!1148242 (= e!653161 tp_is_empty!28819)))

(declare-datatypes ((V!43553 0))(
  ( (V!43554 (val!14466 Int)) )
))
(declare-datatypes ((tuple2!18424 0))(
  ( (tuple2!18425 (_1!9222 (_ BitVec 64)) (_2!9222 V!43553)) )
))
(declare-datatypes ((List!25217 0))(
  ( (Nil!25214) (Cons!25213 (h!26422 tuple2!18424) (t!36505 List!25217)) )
))
(declare-datatypes ((ListLongMap!16405 0))(
  ( (ListLongMap!16406 (toList!8218 List!25217)) )
))
(declare-fun call!53015 () ListLongMap!16405)

(declare-fun b!1148243 () Bool)

(declare-fun e!653164 () Bool)

(declare-fun call!53013 () ListLongMap!16405)

(declare-fun k!934 () (_ BitVec 64))

(declare-fun -!1307 (ListLongMap!16405 (_ BitVec 64)) ListLongMap!16405)

(assert (=> b!1148243 (= e!653164 (= call!53015 (-!1307 call!53013 k!934)))))

(declare-fun b!1148244 () Bool)

(declare-datatypes ((Unit!37650 0))(
  ( (Unit!37651) )
))
(declare-fun e!653166 () Unit!37650)

(declare-fun lt!513244 () Unit!37650)

(assert (=> b!1148244 (= e!653166 lt!513244)))

(declare-fun call!53016 () Unit!37650)

(assert (=> b!1148244 (= lt!513244 call!53016)))

(declare-fun call!53009 () Bool)

(assert (=> b!1148244 call!53009))

(declare-fun lt!513256 () Bool)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun e!653163 () Bool)

(declare-fun b!1148245 () Bool)

(assert (=> b!1148245 (= e!653163 (ite (= k!934 #b0000000000000000000000000000000000000000000000000000000000000000) (not lt!513256) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!1148246 () Bool)

(declare-fun e!653167 () Bool)

(declare-fun e!653157 () Bool)

(assert (=> b!1148246 (= e!653167 e!653157)))

(declare-fun res!764215 () Bool)

(assert (=> b!1148246 (=> (not res!764215) (not e!653157))))

(declare-datatypes ((array!74442 0))(
  ( (array!74443 (arr!35868 (Array (_ BitVec 32) (_ BitVec 64))) (size!36405 (_ BitVec 32))) )
))
(declare-fun lt!513247 () array!74442)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!74442 (_ BitVec 32)) Bool)

(assert (=> b!1148246 (= res!764215 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!513247 mask!1564))))

(declare-fun _keys!1208 () array!74442)

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1148246 (= lt!513247 (array!74443 (store (arr!35868 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!36405 _keys!1208)))))

(declare-fun b!1148247 () Bool)

(declare-fun lt!513246 () ListLongMap!16405)

(declare-fun minValue!944 () V!43553)

(declare-fun contains!6714 (ListLongMap!16405 (_ BitVec 64)) Bool)

(declare-fun +!3557 (ListLongMap!16405 tuple2!18424) ListLongMap!16405)

(assert (=> b!1148247 (contains!6714 (+!3557 lt!513246 (tuple2!18425 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944)) k!934)))

(declare-fun lt!513252 () Unit!37650)

(declare-fun addStillContains!856 (ListLongMap!16405 (_ BitVec 64) V!43553 (_ BitVec 64)) Unit!37650)

(assert (=> b!1148247 (= lt!513252 (addStillContains!856 lt!513246 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944 k!934))))

(declare-fun call!53014 () Bool)

(assert (=> b!1148247 call!53014))

(declare-fun call!53011 () ListLongMap!16405)

(assert (=> b!1148247 (= lt!513246 call!53011)))

(declare-fun lt!513245 () Unit!37650)

(declare-fun call!53012 () Unit!37650)

(assert (=> b!1148247 (= lt!513245 call!53012)))

(declare-fun e!653171 () Unit!37650)

(assert (=> b!1148247 (= e!653171 lt!513252)))

(declare-fun b!1148248 () Bool)

(declare-fun e!653162 () Bool)

(assert (=> b!1148248 (= e!653162 true)))

(declare-fun e!653170 () Bool)

(assert (=> b!1148248 e!653170))

(declare-fun res!764226 () Bool)

(assert (=> b!1148248 (=> (not res!764226) (not e!653170))))

(declare-fun lt!513258 () V!43553)

(declare-fun lt!513257 () ListLongMap!16405)

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> b!1148248 (= res!764226 (= (-!1307 (+!3557 lt!513257 (tuple2!18425 (select (arr!35868 _keys!1208) from!1455) lt!513258)) (select (arr!35868 _keys!1208) from!1455)) lt!513257))))

(declare-fun lt!513251 () Unit!37650)

(declare-fun addThenRemoveForNewKeyIsSame!156 (ListLongMap!16405 (_ BitVec 64) V!43553) Unit!37650)

(assert (=> b!1148248 (= lt!513251 (addThenRemoveForNewKeyIsSame!156 lt!513257 (select (arr!35868 _keys!1208) from!1455) lt!513258))))

(declare-fun lt!513248 () V!43553)

(declare-datatypes ((ValueCell!13700 0))(
  ( (ValueCellFull!13700 (v!17104 V!43553)) (EmptyCell!13700) )
))
(declare-datatypes ((array!74444 0))(
  ( (array!74445 (arr!35869 (Array (_ BitVec 32) ValueCell!13700)) (size!36406 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!74444)

(declare-fun get!18274 (ValueCell!13700 V!43553) V!43553)

(assert (=> b!1148248 (= lt!513258 (get!18274 (select (arr!35869 _values!996) from!1455) lt!513248))))

(declare-fun lt!513250 () Unit!37650)

(declare-fun e!653158 () Unit!37650)

(assert (=> b!1148248 (= lt!513250 e!653158)))

(declare-fun c!113409 () Bool)

(assert (=> b!1148248 (= c!113409 (contains!6714 lt!513257 k!934))))

(declare-fun zeroValue!944 () V!43553)

(declare-fun defaultEntry!1004 () Int)

(declare-fun getCurrentListMapNoExtraKeys!4659 (array!74442 array!74444 (_ BitVec 32) (_ BitVec 32) V!43553 V!43553 (_ BitVec 32) Int) ListLongMap!16405)

(assert (=> b!1148248 (= lt!513257 (getCurrentListMapNoExtraKeys!4659 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun res!764217 () Bool)

(assert (=> start!98720 (=> (not res!764217) (not e!653167))))

(assert (=> start!98720 (= res!764217 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!36405 _keys!1208))))))

(assert (=> start!98720 e!653167))

(assert (=> start!98720 tp_is_empty!28819))

(declare-fun array_inv!27352 (array!74442) Bool)

(assert (=> start!98720 (array_inv!27352 _keys!1208)))

(assert (=> start!98720 true))

(assert (=> start!98720 tp!85579))

(declare-fun e!653172 () Bool)

(declare-fun array_inv!27353 (array!74444) Bool)

(assert (=> start!98720 (and (array_inv!27353 _values!996) e!653172)))

(declare-fun b!1148249 () Bool)

(declare-fun e!653160 () Bool)

(declare-fun e!653169 () Bool)

(assert (=> b!1148249 (= e!653160 e!653169)))

(declare-fun res!764220 () Bool)

(assert (=> b!1148249 (=> res!764220 e!653169)))

(assert (=> b!1148249 (= res!764220 (not (= from!1455 i!673)))))

(declare-fun lt!513255 () array!74444)

(declare-fun lt!513242 () ListLongMap!16405)

(assert (=> b!1148249 (= lt!513242 (getCurrentListMapNoExtraKeys!4659 lt!513247 lt!513255 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(assert (=> b!1148249 (= lt!513255 (array!74445 (store (arr!35869 _values!996) i!673 (ValueCellFull!13700 lt!513248)) (size!36406 _values!996)))))

(declare-fun dynLambda!2691 (Int (_ BitVec 64)) V!43553)

(assert (=> b!1148249 (= lt!513248 (dynLambda!2691 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!513254 () ListLongMap!16405)

(assert (=> b!1148249 (= lt!513254 (getCurrentListMapNoExtraKeys!4659 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1148250 () Bool)

(declare-fun res!764219 () Bool)

(assert (=> b!1148250 (=> (not res!764219) (not e!653167))))

(assert (=> b!1148250 (= res!764219 (and (= (size!36406 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!36405 _keys!1208) (size!36406 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!45053 () Bool)

(declare-fun mapRes!45053 () Bool)

(declare-fun tp!85578 () Bool)

(assert (=> mapNonEmpty!45053 (= mapRes!45053 (and tp!85578 e!653161))))

(declare-fun mapKey!45053 () (_ BitVec 32))

(declare-fun mapValue!45053 () ValueCell!13700)

(declare-fun mapRest!45053 () (Array (_ BitVec 32) ValueCell!13700))

(assert (=> mapNonEmpty!45053 (= (arr!35869 _values!996) (store mapRest!45053 mapKey!45053 mapValue!45053))))

(declare-fun b!1148251 () Bool)

(declare-fun arrayContainsKey!0 (array!74442 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1148251 (= e!653163 (arrayContainsKey!0 _keys!1208 k!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun b!1148252 () Bool)

(declare-fun res!764223 () Bool)

(assert (=> b!1148252 (=> (not res!764223) (not e!653167))))

(assert (=> b!1148252 (= res!764223 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1148253 () Bool)

(assert (=> b!1148253 (= e!653169 e!653162)))

(declare-fun res!764225 () Bool)

(assert (=> b!1148253 (=> res!764225 e!653162)))

(assert (=> b!1148253 (= res!764225 (not (= (select (arr!35868 _keys!1208) from!1455) k!934)))))

(assert (=> b!1148253 e!653164))

(declare-fun c!113408 () Bool)

(assert (=> b!1148253 (= c!113408 (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673))))

(declare-fun lt!513243 () Unit!37650)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!551 (array!74442 array!74444 (_ BitVec 32) (_ BitVec 32) V!43553 V!43553 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!37650)

(assert (=> b!1148253 (= lt!513243 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!551 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1148254 () Bool)

(assert (=> b!1148254 (= e!653157 (not e!653160))))

(declare-fun res!764218 () Bool)

(assert (=> b!1148254 (=> res!764218 e!653160)))

(assert (=> b!1148254 (= res!764218 (bvsgt from!1455 i!673))))

(assert (=> b!1148254 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-fun lt!513259 () Unit!37650)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!74442 (_ BitVec 64) (_ BitVec 32)) Unit!37650)

(assert (=> b!1148254 (= lt!513259 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun b!1148255 () Bool)

(declare-fun res!764214 () Bool)

(assert (=> b!1148255 (=> (not res!764214) (not e!653167))))

(declare-datatypes ((List!25218 0))(
  ( (Nil!25215) (Cons!25214 (h!26423 (_ BitVec 64)) (t!36506 List!25218)) )
))
(declare-fun arrayNoDuplicates!0 (array!74442 (_ BitVec 32) List!25218) Bool)

(assert (=> b!1148255 (= res!764214 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!25215))))

(declare-fun b!1148256 () Bool)

(declare-fun e!653159 () Unit!37650)

(assert (=> b!1148256 (= e!653166 e!653159)))

(declare-fun c!113410 () Bool)

(assert (=> b!1148256 (= c!113410 (and (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!513256))))

(declare-fun mapIsEmpty!45053 () Bool)

(assert (=> mapIsEmpty!45053 mapRes!45053))

(declare-fun c!113411 () Bool)

(declare-fun bm!53006 () Bool)

(declare-fun call!53010 () ListLongMap!16405)

(assert (=> bm!53006 (= call!53014 (contains!6714 (ite c!113411 lt!513246 call!53010) k!934))))

(declare-fun bm!53007 () Bool)

(assert (=> bm!53007 (= call!53013 (getCurrentListMapNoExtraKeys!4659 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1148257 () Bool)

(declare-fun Unit!37652 () Unit!37650)

(assert (=> b!1148257 (= e!653158 Unit!37652)))

(assert (=> b!1148257 (= lt!513256 (= (bvand extraKeys!923 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(assert (=> b!1148257 (= c!113411 (and (not lt!513256) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun lt!513241 () Unit!37650)

(assert (=> b!1148257 (= lt!513241 e!653171)))

(declare-fun lt!513260 () Unit!37650)

(declare-fun lemmaListMapContainsThenArrayContainsFrom!443 (array!74442 array!74444 (_ BitVec 32) (_ BitVec 32) V!43553 V!43553 (_ BitVec 64) (_ BitVec 32) Int) Unit!37650)

(assert (=> b!1148257 (= lt!513260 (lemmaListMapContainsThenArrayContainsFrom!443 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun c!113412 () Bool)

(assert (=> b!1148257 (= c!113412 (and (not (= k!934 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!934 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun res!764227 () Bool)

(assert (=> b!1148257 (= res!764227 e!653163)))

(declare-fun e!653168 () Bool)

(assert (=> b!1148257 (=> (not res!764227) (not e!653168))))

(assert (=> b!1148257 e!653168))

(declare-fun lt!513249 () Unit!37650)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!74442 (_ BitVec 32) (_ BitVec 32)) Unit!37650)

(assert (=> b!1148257 (= lt!513249 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1208 #b00000000000000000000000000000000 from!1455))))

(assert (=> b!1148257 (arrayNoDuplicates!0 _keys!1208 from!1455 Nil!25215)))

(declare-fun lt!513261 () Unit!37650)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!74442 (_ BitVec 64) (_ BitVec 32) List!25218) Unit!37650)

(assert (=> b!1148257 (= lt!513261 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!1208 k!934 from!1455 Nil!25215))))

(assert (=> b!1148257 false))

(declare-fun b!1148258 () Bool)

(assert (=> b!1148258 (= e!653164 (= call!53015 call!53013))))

(declare-fun bm!53008 () Bool)

(assert (=> bm!53008 (= call!53016 call!53012)))

(declare-fun b!1148259 () Bool)

(declare-fun c!113407 () Bool)

(assert (=> b!1148259 (= c!113407 (and (not lt!513256) (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(assert (=> b!1148259 (= e!653171 e!653166)))

(declare-fun b!1148260 () Bool)

(declare-fun res!764221 () Bool)

(assert (=> b!1148260 (=> (not res!764221) (not e!653167))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1148260 (= res!764221 (validMask!0 mask!1564))))

(declare-fun bm!53009 () Bool)

(assert (=> bm!53009 (= call!53015 (getCurrentListMapNoExtraKeys!4659 lt!513247 lt!513255 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1148261 () Bool)

(declare-fun res!764222 () Bool)

(assert (=> b!1148261 (=> (not res!764222) (not e!653167))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1148261 (= res!764222 (validKeyInArray!0 k!934))))

(declare-fun bm!53010 () Bool)

(assert (=> bm!53010 (= call!53010 call!53011)))

(declare-fun b!1148262 () Bool)

(assert (=> b!1148262 (= e!653170 (= (-!1307 lt!513254 k!934) lt!513257))))

(declare-fun b!1148263 () Bool)

(assert (=> b!1148263 call!53009))

(declare-fun lt!513253 () Unit!37650)

(assert (=> b!1148263 (= lt!513253 call!53016)))

(assert (=> b!1148263 (= e!653159 lt!513253)))

(declare-fun bm!53011 () Bool)

(assert (=> bm!53011 (= call!53012 (addStillContains!856 lt!513257 (ite (or c!113411 c!113407) #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000) (ite (or c!113411 c!113407) zeroValue!944 minValue!944) k!934))))

(declare-fun b!1148264 () Bool)

(declare-fun res!764224 () Bool)

(assert (=> b!1148264 (=> (not res!764224) (not e!653167))))

(assert (=> b!1148264 (= res!764224 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!36405 _keys!1208))))))

(declare-fun b!1148265 () Bool)

(declare-fun e!653156 () Bool)

(assert (=> b!1148265 (= e!653156 tp_is_empty!28819)))

(declare-fun b!1148266 () Bool)

(declare-fun Unit!37653 () Unit!37650)

(assert (=> b!1148266 (= e!653158 Unit!37653)))

(declare-fun bm!53012 () Bool)

(assert (=> bm!53012 (= call!53011 (+!3557 lt!513257 (ite (or c!113411 c!113407) (tuple2!18425 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!18425 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944))))))

(declare-fun bm!53013 () Bool)

(assert (=> bm!53013 (= call!53009 call!53014)))

(declare-fun b!1148267 () Bool)

(declare-fun res!764216 () Bool)

(assert (=> b!1148267 (=> (not res!764216) (not e!653167))))

(assert (=> b!1148267 (= res!764216 (= (select (arr!35868 _keys!1208) i!673) k!934))))

(declare-fun b!1148268 () Bool)

(assert (=> b!1148268 (= e!653168 (arrayContainsKey!0 _keys!1208 k!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun b!1148269 () Bool)

(declare-fun Unit!37654 () Unit!37650)

(assert (=> b!1148269 (= e!653159 Unit!37654)))

(declare-fun b!1148270 () Bool)

(assert (=> b!1148270 (= e!653172 (and e!653156 mapRes!45053))))

(declare-fun condMapEmpty!45053 () Bool)

(declare-fun mapDefault!45053 () ValueCell!13700)

