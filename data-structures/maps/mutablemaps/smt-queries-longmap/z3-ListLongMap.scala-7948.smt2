; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!98566 () Bool)

(assert start!98566)

(declare-fun b_free!24135 () Bool)

(declare-fun b_next!24135 () Bool)

(assert (=> start!98566 (= b_free!24135 (not b_next!24135))))

(declare-fun tp!85117 () Bool)

(declare-fun b_and!39133 () Bool)

(assert (=> start!98566 (= tp!85117 b_and!39133)))

(declare-fun b!1141252 () Bool)

(declare-datatypes ((Unit!37353 0))(
  ( (Unit!37354) )
))
(declare-fun e!649335 () Unit!37353)

(declare-fun lt!508400 () Unit!37353)

(assert (=> b!1141252 (= e!649335 lt!508400)))

(declare-fun call!51163 () Unit!37353)

(assert (=> b!1141252 (= lt!508400 call!51163)))

(declare-fun call!51165 () Bool)

(assert (=> b!1141252 call!51165))

(declare-fun b!1141253 () Bool)

(declare-fun res!760844 () Bool)

(declare-fun e!649336 () Bool)

(assert (=> b!1141253 (=> (not res!760844) (not e!649336))))

(declare-fun k0!934 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1141253 (= res!760844 (validKeyInArray!0 k0!934))))

(declare-fun b!1141254 () Bool)

(declare-fun c!112025 () Bool)

(declare-fun lt!508401 () Bool)

(declare-fun extraKeys!923 () (_ BitVec 32))

(assert (=> b!1141254 (= c!112025 (and (not lt!508401) (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun e!649330 () Unit!37353)

(assert (=> b!1141254 (= e!649330 e!649335)))

(declare-datatypes ((V!43347 0))(
  ( (V!43348 (val!14389 Int)) )
))
(declare-fun zeroValue!944 () V!43347)

(declare-fun bm!51158 () Bool)

(declare-fun c!112026 () Bool)

(declare-datatypes ((tuple2!18284 0))(
  ( (tuple2!18285 (_1!9152 (_ BitVec 64)) (_2!9152 V!43347)) )
))
(declare-datatypes ((List!25085 0))(
  ( (Nil!25082) (Cons!25081 (h!26290 tuple2!18284) (t!36219 List!25085)) )
))
(declare-datatypes ((ListLongMap!16265 0))(
  ( (ListLongMap!16266 (toList!8148 List!25085)) )
))
(declare-fun call!51168 () ListLongMap!16265)

(declare-fun minValue!944 () V!43347)

(declare-fun lt!508394 () ListLongMap!16265)

(declare-fun +!3493 (ListLongMap!16265 tuple2!18284) ListLongMap!16265)

(assert (=> bm!51158 (= call!51168 (+!3493 lt!508394 (ite (or c!112026 c!112025) (tuple2!18285 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!18285 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944))))))

(declare-fun b!1141255 () Bool)

(declare-fun e!649323 () Bool)

(declare-fun call!51164 () ListLongMap!16265)

(declare-fun call!51162 () ListLongMap!16265)

(assert (=> b!1141255 (= e!649323 (= call!51164 call!51162))))

(declare-fun call!51167 () ListLongMap!16265)

(declare-fun call!51166 () Bool)

(declare-fun lt!508391 () ListLongMap!16265)

(declare-fun bm!51159 () Bool)

(declare-fun contains!6653 (ListLongMap!16265 (_ BitVec 64)) Bool)

(assert (=> bm!51159 (= call!51166 (contains!6653 (ite c!112026 lt!508391 call!51167) k0!934))))

(declare-fun b!1141256 () Bool)

(declare-fun res!760849 () Bool)

(declare-fun e!649332 () Bool)

(assert (=> b!1141256 (=> (not res!760849) (not e!649332))))

(declare-datatypes ((array!74140 0))(
  ( (array!74141 (arr!35717 (Array (_ BitVec 32) (_ BitVec 64))) (size!36254 (_ BitVec 32))) )
))
(declare-fun lt!508407 () array!74140)

(declare-datatypes ((List!25086 0))(
  ( (Nil!25083) (Cons!25082 (h!26291 (_ BitVec 64)) (t!36220 List!25086)) )
))
(declare-fun arrayNoDuplicates!0 (array!74140 (_ BitVec 32) List!25086) Bool)

(assert (=> b!1141256 (= res!760849 (arrayNoDuplicates!0 lt!508407 #b00000000000000000000000000000000 Nil!25083))))

(declare-fun e!649325 () Bool)

(declare-fun _keys!1208 () array!74140)

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun b!1141257 () Bool)

(declare-fun arrayContainsKey!0 (array!74140 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1141257 (= e!649325 (arrayContainsKey!0 _keys!1208 k0!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun b!1141258 () Bool)

(assert (=> b!1141258 call!51165))

(declare-fun lt!508392 () Unit!37353)

(assert (=> b!1141258 (= lt!508392 call!51163)))

(declare-fun e!649333 () Unit!37353)

(assert (=> b!1141258 (= e!649333 lt!508392)))

(declare-fun b!1141259 () Bool)

(declare-fun e!649338 () Bool)

(declare-fun tp_is_empty!28665 () Bool)

(assert (=> b!1141259 (= e!649338 tp_is_empty!28665)))

(declare-fun b!1141260 () Bool)

(declare-fun e!649324 () Bool)

(assert (=> b!1141260 (= e!649324 true)))

(declare-fun lt!508405 () V!43347)

(declare-fun -!1246 (ListLongMap!16265 (_ BitVec 64)) ListLongMap!16265)

(assert (=> b!1141260 (= (-!1246 (+!3493 lt!508394 (tuple2!18285 (select (arr!35717 _keys!1208) from!1455) lt!508405)) (select (arr!35717 _keys!1208) from!1455)) lt!508394)))

(declare-fun lt!508395 () Unit!37353)

(declare-fun addThenRemoveForNewKeyIsSame!101 (ListLongMap!16265 (_ BitVec 64) V!43347) Unit!37353)

(assert (=> b!1141260 (= lt!508395 (addThenRemoveForNewKeyIsSame!101 lt!508394 (select (arr!35717 _keys!1208) from!1455) lt!508405))))

(declare-fun lt!508403 () V!43347)

(declare-datatypes ((ValueCell!13623 0))(
  ( (ValueCellFull!13623 (v!17027 V!43347)) (EmptyCell!13623) )
))
(declare-datatypes ((array!74142 0))(
  ( (array!74143 (arr!35718 (Array (_ BitVec 32) ValueCell!13623)) (size!36255 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!74142)

(declare-fun get!18167 (ValueCell!13623 V!43347) V!43347)

(assert (=> b!1141260 (= lt!508405 (get!18167 (select (arr!35718 _values!996) from!1455) lt!508403))))

(declare-fun lt!508410 () Unit!37353)

(declare-fun e!649334 () Unit!37353)

(assert (=> b!1141260 (= lt!508410 e!649334)))

(declare-fun c!112023 () Bool)

(assert (=> b!1141260 (= c!112023 (contains!6653 lt!508394 k0!934))))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-fun getCurrentListMapNoExtraKeys!4592 (array!74140 array!74142 (_ BitVec 32) (_ BitVec 32) V!43347 V!43347 (_ BitVec 32) Int) ListLongMap!16265)

(assert (=> b!1141260 (= lt!508394 (getCurrentListMapNoExtraKeys!4592 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1141261 () Bool)

(declare-fun res!760852 () Bool)

(assert (=> b!1141261 (=> (not res!760852) (not e!649336))))

(assert (=> b!1141261 (= res!760852 (and (= (size!36255 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!36254 _keys!1208) (size!36255 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1141262 () Bool)

(declare-fun e!649329 () Bool)

(assert (=> b!1141262 (= e!649332 (not e!649329))))

(declare-fun res!760853 () Bool)

(assert (=> b!1141262 (=> res!760853 e!649329)))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1141262 (= res!760853 (bvsgt from!1455 i!673))))

(assert (=> b!1141262 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-fun lt!508409 () Unit!37353)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!74140 (_ BitVec 64) (_ BitVec 32)) Unit!37353)

(assert (=> b!1141262 (= lt!508409 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun mapIsEmpty!44822 () Bool)

(declare-fun mapRes!44822 () Bool)

(assert (=> mapIsEmpty!44822 mapRes!44822))

(declare-fun b!1141263 () Bool)

(declare-fun res!760850 () Bool)

(assert (=> b!1141263 (=> (not res!760850) (not e!649336))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1141263 (= res!760850 (validMask!0 mask!1564))))

(declare-fun b!1141264 () Bool)

(declare-fun Unit!37355 () Unit!37353)

(assert (=> b!1141264 (= e!649333 Unit!37355)))

(declare-fun mapNonEmpty!44822 () Bool)

(declare-fun tp!85116 () Bool)

(assert (=> mapNonEmpty!44822 (= mapRes!44822 (and tp!85116 e!649338))))

(declare-fun mapRest!44822 () (Array (_ BitVec 32) ValueCell!13623))

(declare-fun mapValue!44822 () ValueCell!13623)

(declare-fun mapKey!44822 () (_ BitVec 32))

(assert (=> mapNonEmpty!44822 (= (arr!35718 _values!996) (store mapRest!44822 mapKey!44822 mapValue!44822))))

(declare-fun lt!508393 () array!74142)

(declare-fun c!112022 () Bool)

(declare-fun bm!51160 () Bool)

(assert (=> bm!51160 (= call!51164 (getCurrentListMapNoExtraKeys!4592 (ite c!112022 _keys!1208 lt!508407) (ite c!112022 _values!996 lt!508393) mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun e!649326 () Bool)

(declare-fun b!1141265 () Bool)

(assert (=> b!1141265 (= e!649326 (arrayContainsKey!0 _keys!1208 k0!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun b!1141266 () Bool)

(declare-fun res!760847 () Bool)

(assert (=> b!1141266 (=> (not res!760847) (not e!649336))))

(assert (=> b!1141266 (= res!760847 (= (select (arr!35717 _keys!1208) i!673) k0!934))))

(declare-fun res!760855 () Bool)

(assert (=> start!98566 (=> (not res!760855) (not e!649336))))

(assert (=> start!98566 (= res!760855 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!36254 _keys!1208))))))

(assert (=> start!98566 e!649336))

(assert (=> start!98566 tp_is_empty!28665))

(declare-fun array_inv!27246 (array!74140) Bool)

(assert (=> start!98566 (array_inv!27246 _keys!1208)))

(assert (=> start!98566 true))

(assert (=> start!98566 tp!85117))

(declare-fun e!649337 () Bool)

(declare-fun array_inv!27247 (array!74142) Bool)

(assert (=> start!98566 (and (array_inv!27247 _values!996) e!649337)))

(declare-fun b!1141267 () Bool)

(declare-fun Unit!37356 () Unit!37353)

(assert (=> b!1141267 (= e!649334 Unit!37356)))

(assert (=> b!1141267 (= lt!508401 (= (bvand extraKeys!923 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(assert (=> b!1141267 (= c!112026 (and (not lt!508401) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun lt!508397 () Unit!37353)

(assert (=> b!1141267 (= lt!508397 e!649330)))

(declare-fun lt!508406 () Unit!37353)

(declare-fun lemmaListMapContainsThenArrayContainsFrom!392 (array!74140 array!74142 (_ BitVec 32) (_ BitVec 32) V!43347 V!43347 (_ BitVec 64) (_ BitVec 32) Int) Unit!37353)

(assert (=> b!1141267 (= lt!508406 (lemmaListMapContainsThenArrayContainsFrom!392 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun c!112021 () Bool)

(assert (=> b!1141267 (= c!112021 (and (not (= k0!934 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!934 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun res!760846 () Bool)

(assert (=> b!1141267 (= res!760846 e!649325)))

(assert (=> b!1141267 (=> (not res!760846) (not e!649326))))

(assert (=> b!1141267 e!649326))

(declare-fun lt!508404 () Unit!37353)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!74140 (_ BitVec 32) (_ BitVec 32)) Unit!37353)

(assert (=> b!1141267 (= lt!508404 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1208 #b00000000000000000000000000000000 from!1455))))

(assert (=> b!1141267 (arrayNoDuplicates!0 _keys!1208 from!1455 Nil!25083)))

(declare-fun lt!508398 () Unit!37353)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!74140 (_ BitVec 64) (_ BitVec 32) List!25086) Unit!37353)

(assert (=> b!1141267 (= lt!508398 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!1208 k0!934 from!1455 Nil!25083))))

(assert (=> b!1141267 false))

(declare-fun call!51161 () Unit!37353)

(declare-fun bm!51161 () Bool)

(declare-fun addStillContains!794 (ListLongMap!16265 (_ BitVec 64) V!43347 (_ BitVec 64)) Unit!37353)

(assert (=> bm!51161 (= call!51161 (addStillContains!794 lt!508394 (ite (or c!112026 c!112025) #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000) (ite (or c!112026 c!112025) zeroValue!944 minValue!944) k0!934))))

(declare-fun b!1141268 () Bool)

(assert (=> b!1141268 (contains!6653 (+!3493 lt!508391 (tuple2!18285 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944)) k0!934)))

(declare-fun lt!508408 () Unit!37353)

(assert (=> b!1141268 (= lt!508408 (addStillContains!794 lt!508391 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944 k0!934))))

(assert (=> b!1141268 call!51166))

(assert (=> b!1141268 (= lt!508391 call!51168)))

(declare-fun lt!508396 () Unit!37353)

(assert (=> b!1141268 (= lt!508396 call!51161)))

(assert (=> b!1141268 (= e!649330 lt!508408)))

(declare-fun bm!51162 () Bool)

(assert (=> bm!51162 (= call!51163 call!51161)))

(declare-fun b!1141269 () Bool)

(declare-fun res!760851 () Bool)

(assert (=> b!1141269 (=> (not res!760851) (not e!649336))))

(assert (=> b!1141269 (= res!760851 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!36254 _keys!1208))))))

(declare-fun b!1141270 () Bool)

(assert (=> b!1141270 (= e!649323 (= call!51162 (-!1246 call!51164 k0!934)))))

(declare-fun b!1141271 () Bool)

(assert (=> b!1141271 (= e!649336 e!649332)))

(declare-fun res!760843 () Bool)

(assert (=> b!1141271 (=> (not res!760843) (not e!649332))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!74140 (_ BitVec 32)) Bool)

(assert (=> b!1141271 (= res!760843 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!508407 mask!1564))))

(assert (=> b!1141271 (= lt!508407 (array!74141 (store (arr!35717 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!36254 _keys!1208)))))

(declare-fun b!1141272 () Bool)

(assert (=> b!1141272 (= e!649325 (ite (= k0!934 #b0000000000000000000000000000000000000000000000000000000000000000) (not lt!508401) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!1141273 () Bool)

(declare-fun e!649327 () Bool)

(assert (=> b!1141273 (= e!649327 tp_is_empty!28665)))

(declare-fun b!1141274 () Bool)

(assert (=> b!1141274 (= e!649337 (and e!649327 mapRes!44822))))

(declare-fun condMapEmpty!44822 () Bool)

(declare-fun mapDefault!44822 () ValueCell!13623)

(assert (=> b!1141274 (= condMapEmpty!44822 (= (arr!35718 _values!996) ((as const (Array (_ BitVec 32) ValueCell!13623)) mapDefault!44822)))))

(declare-fun b!1141275 () Bool)

(declare-fun res!760856 () Bool)

(assert (=> b!1141275 (=> (not res!760856) (not e!649336))))

(assert (=> b!1141275 (= res!760856 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!25083))))

(declare-fun b!1141276 () Bool)

(declare-fun e!649328 () Bool)

(assert (=> b!1141276 (= e!649328 e!649324)))

(declare-fun res!760845 () Bool)

(assert (=> b!1141276 (=> res!760845 e!649324)))

(assert (=> b!1141276 (= res!760845 (not (= (select (arr!35717 _keys!1208) from!1455) k0!934)))))

(assert (=> b!1141276 e!649323))

(assert (=> b!1141276 (= c!112022 (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673))))

(declare-fun lt!508402 () Unit!37353)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!501 (array!74140 array!74142 (_ BitVec 32) (_ BitVec 32) V!43347 V!43347 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!37353)

(assert (=> b!1141276 (= lt!508402 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!501 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun bm!51163 () Bool)

(assert (=> bm!51163 (= call!51162 (getCurrentListMapNoExtraKeys!4592 (ite c!112022 lt!508407 _keys!1208) (ite c!112022 lt!508393 _values!996) mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1141277 () Bool)

(declare-fun res!760854 () Bool)

(assert (=> b!1141277 (=> (not res!760854) (not e!649336))))

(assert (=> b!1141277 (= res!760854 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1141278 () Bool)

(declare-fun Unit!37357 () Unit!37353)

(assert (=> b!1141278 (= e!649334 Unit!37357)))

(declare-fun b!1141279 () Bool)

(assert (=> b!1141279 (= e!649335 e!649333)))

(declare-fun c!112024 () Bool)

(assert (=> b!1141279 (= c!112024 (and (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!508401))))

(declare-fun bm!51164 () Bool)

(assert (=> bm!51164 (= call!51165 call!51166)))

(declare-fun bm!51165 () Bool)

(assert (=> bm!51165 (= call!51167 call!51168)))

(declare-fun b!1141280 () Bool)

(assert (=> b!1141280 (= e!649329 e!649328)))

(declare-fun res!760848 () Bool)

(assert (=> b!1141280 (=> res!760848 e!649328)))

(assert (=> b!1141280 (= res!760848 (not (= from!1455 i!673)))))

(declare-fun lt!508390 () ListLongMap!16265)

(assert (=> b!1141280 (= lt!508390 (getCurrentListMapNoExtraKeys!4592 lt!508407 lt!508393 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(assert (=> b!1141280 (= lt!508393 (array!74143 (store (arr!35718 _values!996) i!673 (ValueCellFull!13623 lt!508403)) (size!36255 _values!996)))))

(declare-fun dynLambda!2645 (Int (_ BitVec 64)) V!43347)

(assert (=> b!1141280 (= lt!508403 (dynLambda!2645 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!508399 () ListLongMap!16265)

(assert (=> b!1141280 (= lt!508399 (getCurrentListMapNoExtraKeys!4592 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(assert (= (and start!98566 res!760855) b!1141263))

(assert (= (and b!1141263 res!760850) b!1141261))

(assert (= (and b!1141261 res!760852) b!1141277))

(assert (= (and b!1141277 res!760854) b!1141275))

(assert (= (and b!1141275 res!760856) b!1141269))

(assert (= (and b!1141269 res!760851) b!1141253))

(assert (= (and b!1141253 res!760844) b!1141266))

(assert (= (and b!1141266 res!760847) b!1141271))

(assert (= (and b!1141271 res!760843) b!1141256))

(assert (= (and b!1141256 res!760849) b!1141262))

(assert (= (and b!1141262 (not res!760853)) b!1141280))

(assert (= (and b!1141280 (not res!760848)) b!1141276))

(assert (= (and b!1141276 c!112022) b!1141270))

(assert (= (and b!1141276 (not c!112022)) b!1141255))

(assert (= (or b!1141270 b!1141255) bm!51160))

(assert (= (or b!1141270 b!1141255) bm!51163))

(assert (= (and b!1141276 (not res!760845)) b!1141260))

(assert (= (and b!1141260 c!112023) b!1141267))

(assert (= (and b!1141260 (not c!112023)) b!1141278))

(assert (= (and b!1141267 c!112026) b!1141268))

(assert (= (and b!1141267 (not c!112026)) b!1141254))

(assert (= (and b!1141254 c!112025) b!1141252))

(assert (= (and b!1141254 (not c!112025)) b!1141279))

(assert (= (and b!1141279 c!112024) b!1141258))

(assert (= (and b!1141279 (not c!112024)) b!1141264))

(assert (= (or b!1141252 b!1141258) bm!51162))

(assert (= (or b!1141252 b!1141258) bm!51165))

(assert (= (or b!1141252 b!1141258) bm!51164))

(assert (= (or b!1141268 bm!51164) bm!51159))

(assert (= (or b!1141268 bm!51162) bm!51161))

(assert (= (or b!1141268 bm!51165) bm!51158))

(assert (= (and b!1141267 c!112021) b!1141257))

(assert (= (and b!1141267 (not c!112021)) b!1141272))

(assert (= (and b!1141267 res!760846) b!1141265))

(assert (= (and b!1141274 condMapEmpty!44822) mapIsEmpty!44822))

(assert (= (and b!1141274 (not condMapEmpty!44822)) mapNonEmpty!44822))

(get-info :version)

(assert (= (and mapNonEmpty!44822 ((_ is ValueCellFull!13623) mapValue!44822)) b!1141259))

(assert (= (and b!1141274 ((_ is ValueCellFull!13623) mapDefault!44822)) b!1141273))

(assert (= start!98566 b!1141274))

(declare-fun b_lambda!19259 () Bool)

(assert (=> (not b_lambda!19259) (not b!1141280)))

(declare-fun t!36218 () Bool)

(declare-fun tb!8955 () Bool)

(assert (=> (and start!98566 (= defaultEntry!1004 defaultEntry!1004) t!36218) tb!8955))

(declare-fun result!18467 () Bool)

(assert (=> tb!8955 (= result!18467 tp_is_empty!28665)))

(assert (=> b!1141280 t!36218))

(declare-fun b_and!39135 () Bool)

(assert (= b_and!39133 (and (=> t!36218 result!18467) b_and!39135)))

(declare-fun m!1052709 () Bool)

(assert (=> mapNonEmpty!44822 m!1052709))

(declare-fun m!1052711 () Bool)

(assert (=> bm!51161 m!1052711))

(declare-fun m!1052713 () Bool)

(assert (=> b!1141267 m!1052713))

(declare-fun m!1052715 () Bool)

(assert (=> b!1141267 m!1052715))

(declare-fun m!1052717 () Bool)

(assert (=> b!1141267 m!1052717))

(declare-fun m!1052719 () Bool)

(assert (=> b!1141267 m!1052719))

(declare-fun m!1052721 () Bool)

(assert (=> b!1141262 m!1052721))

(declare-fun m!1052723 () Bool)

(assert (=> b!1141262 m!1052723))

(declare-fun m!1052725 () Bool)

(assert (=> b!1141253 m!1052725))

(declare-fun m!1052727 () Bool)

(assert (=> b!1141277 m!1052727))

(declare-fun m!1052729 () Bool)

(assert (=> b!1141263 m!1052729))

(declare-fun m!1052731 () Bool)

(assert (=> b!1141270 m!1052731))

(declare-fun m!1052733 () Bool)

(assert (=> b!1141276 m!1052733))

(declare-fun m!1052735 () Bool)

(assert (=> b!1141276 m!1052735))

(declare-fun m!1052737 () Bool)

(assert (=> b!1141265 m!1052737))

(declare-fun m!1052739 () Bool)

(assert (=> b!1141268 m!1052739))

(assert (=> b!1141268 m!1052739))

(declare-fun m!1052741 () Bool)

(assert (=> b!1141268 m!1052741))

(declare-fun m!1052743 () Bool)

(assert (=> b!1141268 m!1052743))

(declare-fun m!1052745 () Bool)

(assert (=> start!98566 m!1052745))

(declare-fun m!1052747 () Bool)

(assert (=> start!98566 m!1052747))

(declare-fun m!1052749 () Bool)

(assert (=> b!1141256 m!1052749))

(declare-fun m!1052751 () Bool)

(assert (=> bm!51160 m!1052751))

(declare-fun m!1052753 () Bool)

(assert (=> b!1141275 m!1052753))

(declare-fun m!1052755 () Bool)

(assert (=> bm!51163 m!1052755))

(declare-fun m!1052757 () Bool)

(assert (=> b!1141266 m!1052757))

(assert (=> b!1141257 m!1052737))

(declare-fun m!1052759 () Bool)

(assert (=> b!1141260 m!1052759))

(declare-fun m!1052761 () Bool)

(assert (=> b!1141260 m!1052761))

(assert (=> b!1141260 m!1052733))

(declare-fun m!1052763 () Bool)

(assert (=> b!1141260 m!1052763))

(declare-fun m!1052765 () Bool)

(assert (=> b!1141260 m!1052765))

(declare-fun m!1052767 () Bool)

(assert (=> b!1141260 m!1052767))

(assert (=> b!1141260 m!1052761))

(declare-fun m!1052769 () Bool)

(assert (=> b!1141260 m!1052769))

(assert (=> b!1141260 m!1052765))

(assert (=> b!1141260 m!1052733))

(declare-fun m!1052771 () Bool)

(assert (=> b!1141260 m!1052771))

(assert (=> b!1141260 m!1052733))

(declare-fun m!1052773 () Bool)

(assert (=> bm!51159 m!1052773))

(declare-fun m!1052775 () Bool)

(assert (=> b!1141280 m!1052775))

(declare-fun m!1052777 () Bool)

(assert (=> b!1141280 m!1052777))

(declare-fun m!1052779 () Bool)

(assert (=> b!1141280 m!1052779))

(declare-fun m!1052781 () Bool)

(assert (=> b!1141280 m!1052781))

(declare-fun m!1052783 () Bool)

(assert (=> b!1141271 m!1052783))

(declare-fun m!1052785 () Bool)

(assert (=> b!1141271 m!1052785))

(declare-fun m!1052787 () Bool)

(assert (=> bm!51158 m!1052787))

(check-sat (not b!1141263) (not b!1141256) (not b!1141277) (not bm!51161) (not b!1141257) b_and!39135 (not b!1141276) (not start!98566) (not bm!51163) (not b!1141267) (not b_next!24135) (not bm!51158) (not b!1141271) (not b!1141265) (not b!1141270) (not mapNonEmpty!44822) (not b!1141253) (not bm!51159) (not b!1141280) (not b!1141268) tp_is_empty!28665 (not b!1141260) (not b_lambda!19259) (not b!1141275) (not bm!51160) (not b!1141262))
(check-sat b_and!39135 (not b_next!24135))
