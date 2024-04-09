; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!98998 () Bool)

(assert start!98998)

(declare-fun b_free!24567 () Bool)

(declare-fun b_next!24567 () Bool)

(assert (=> start!98998 (= b_free!24567 (not b_next!24567))))

(declare-fun tp!86412 () Bool)

(declare-fun b_and!39997 () Bool)

(assert (=> start!98998 (= tp!86412 b_and!39997)))

(declare-fun b!1161030 () Bool)

(declare-fun e!660259 () Bool)

(assert (=> b!1161030 (= e!660259 true)))

(declare-fun e!660246 () Bool)

(assert (=> b!1161030 e!660246))

(declare-fun res!770483 () Bool)

(assert (=> b!1161030 (=> (not res!770483) (not e!660246))))

(declare-datatypes ((V!43923 0))(
  ( (V!43924 (val!14605 Int)) )
))
(declare-datatypes ((tuple2!18680 0))(
  ( (tuple2!18681 (_1!9350 (_ BitVec 64)) (_2!9350 V!43923)) )
))
(declare-datatypes ((List!25458 0))(
  ( (Nil!25455) (Cons!25454 (h!26663 tuple2!18680) (t!37024 List!25458)) )
))
(declare-datatypes ((ListLongMap!16661 0))(
  ( (ListLongMap!16662 (toList!8346 List!25458)) )
))
(declare-fun lt!522411 () ListLongMap!16661)

(declare-fun lt!522409 () ListLongMap!16661)

(assert (=> b!1161030 (= res!770483 (= lt!522411 lt!522409))))

(declare-fun lt!522403 () ListLongMap!16661)

(declare-fun k0!934 () (_ BitVec 64))

(declare-fun -!1418 (ListLongMap!16661 (_ BitVec 64)) ListLongMap!16661)

(assert (=> b!1161030 (= lt!522411 (-!1418 lt!522403 k0!934))))

(declare-datatypes ((array!74984 0))(
  ( (array!74985 (arr!36139 (Array (_ BitVec 32) (_ BitVec 64))) (size!36676 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!74984)

(declare-fun lt!522398 () V!43923)

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun +!3671 (ListLongMap!16661 tuple2!18680) ListLongMap!16661)

(assert (=> b!1161030 (= (-!1418 (+!3671 lt!522409 (tuple2!18681 (select (arr!36139 _keys!1208) from!1455) lt!522398)) (select (arr!36139 _keys!1208) from!1455)) lt!522409)))

(declare-datatypes ((Unit!38188 0))(
  ( (Unit!38189) )
))
(declare-fun lt!522410 () Unit!38188)

(declare-fun addThenRemoveForNewKeyIsSame!255 (ListLongMap!16661 (_ BitVec 64) V!43923) Unit!38188)

(assert (=> b!1161030 (= lt!522410 (addThenRemoveForNewKeyIsSame!255 lt!522409 (select (arr!36139 _keys!1208) from!1455) lt!522398))))

(declare-fun lt!522395 () V!43923)

(declare-datatypes ((ValueCell!13839 0))(
  ( (ValueCellFull!13839 (v!17243 V!43923)) (EmptyCell!13839) )
))
(declare-datatypes ((array!74986 0))(
  ( (array!74987 (arr!36140 (Array (_ BitVec 32) ValueCell!13839)) (size!36677 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!74986)

(declare-fun get!18465 (ValueCell!13839 V!43923) V!43923)

(assert (=> b!1161030 (= lt!522398 (get!18465 (select (arr!36140 _values!996) from!1455) lt!522395))))

(declare-fun lt!522394 () Unit!38188)

(declare-fun e!660249 () Unit!38188)

(assert (=> b!1161030 (= lt!522394 e!660249)))

(declare-fun c!115913 () Bool)

(declare-fun contains!6827 (ListLongMap!16661 (_ BitVec 64)) Bool)

(assert (=> b!1161030 (= c!115913 (contains!6827 lt!522409 k0!934))))

(declare-fun zeroValue!944 () V!43923)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-fun minValue!944 () V!43923)

(declare-fun getCurrentListMapNoExtraKeys!4782 (array!74984 array!74986 (_ BitVec 32) (_ BitVec 32) V!43923 V!43923 (_ BitVec 32) Int) ListLongMap!16661)

(assert (=> b!1161030 (= lt!522409 (getCurrentListMapNoExtraKeys!4782 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1161031 () Bool)

(declare-fun lt!522406 () ListLongMap!16661)

(assert (=> b!1161031 (contains!6827 (+!3671 lt!522406 (tuple2!18681 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944)) k0!934)))

(declare-fun lt!522405 () Unit!38188)

(declare-fun addStillContains!968 (ListLongMap!16661 (_ BitVec 64) V!43923 (_ BitVec 64)) Unit!38188)

(assert (=> b!1161031 (= lt!522405 (addStillContains!968 lt!522406 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944 k0!934))))

(declare-fun call!56345 () Bool)

(assert (=> b!1161031 call!56345))

(declare-fun call!56347 () ListLongMap!16661)

(assert (=> b!1161031 (= lt!522406 call!56347)))

(declare-fun lt!522396 () Unit!38188)

(declare-fun call!56346 () Unit!38188)

(assert (=> b!1161031 (= lt!522396 call!56346)))

(declare-fun e!660248 () Unit!38188)

(assert (=> b!1161031 (= e!660248 lt!522405)))

(declare-fun c!115909 () Bool)

(declare-fun bm!56342 () Bool)

(declare-fun c!115912 () Bool)

(assert (=> bm!56342 (= call!56346 (addStillContains!968 lt!522409 (ite (or c!115909 c!115912) #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000) (ite (or c!115909 c!115912) zeroValue!944 minValue!944) k0!934))))

(declare-fun b!1161033 () Bool)

(declare-fun res!770470 () Bool)

(declare-fun e!660247 () Bool)

(assert (=> b!1161033 (=> (not res!770470) (not e!660247))))

(declare-fun lt!522392 () array!74984)

(declare-datatypes ((List!25459 0))(
  ( (Nil!25456) (Cons!25455 (h!26664 (_ BitVec 64)) (t!37025 List!25459)) )
))
(declare-fun arrayNoDuplicates!0 (array!74984 (_ BitVec 32) List!25459) Bool)

(assert (=> b!1161033 (= res!770470 (arrayNoDuplicates!0 lt!522392 #b00000000000000000000000000000000 Nil!25456))))

(declare-fun b!1161034 () Bool)

(declare-fun res!770469 () Bool)

(declare-fun e!660258 () Bool)

(assert (=> b!1161034 (=> (not res!770469) (not e!660258))))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1161034 (= res!770469 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!36676 _keys!1208))))))

(declare-fun b!1161035 () Bool)

(declare-fun e!660261 () Bool)

(declare-fun tp_is_empty!29097 () Bool)

(assert (=> b!1161035 (= e!660261 tp_is_empty!29097)))

(declare-fun b!1161036 () Bool)

(declare-fun res!770473 () Bool)

(assert (=> b!1161036 (=> (not res!770473) (not e!660258))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1161036 (= res!770473 (validKeyInArray!0 k0!934))))

(declare-fun call!56350 () ListLongMap!16661)

(declare-fun bm!56343 () Bool)

(declare-fun lt!522400 () array!74986)

(assert (=> bm!56343 (= call!56350 (getCurrentListMapNoExtraKeys!4782 lt!522392 lt!522400 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1161037 () Bool)

(declare-fun e!660257 () Bool)

(declare-fun arrayContainsKey!0 (array!74984 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1161037 (= e!660257 (arrayContainsKey!0 _keys!1208 k0!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun mapNonEmpty!45470 () Bool)

(declare-fun mapRes!45470 () Bool)

(declare-fun tp!86413 () Bool)

(assert (=> mapNonEmpty!45470 (= mapRes!45470 (and tp!86413 e!660261))))

(declare-fun mapKey!45470 () (_ BitVec 32))

(declare-fun mapValue!45470 () ValueCell!13839)

(declare-fun mapRest!45470 () (Array (_ BitVec 32) ValueCell!13839))

(assert (=> mapNonEmpty!45470 (= (arr!36140 _values!996) (store mapRest!45470 mapKey!45470 mapValue!45470))))

(declare-fun b!1161038 () Bool)

(declare-fun e!660245 () Unit!38188)

(declare-fun e!660251 () Unit!38188)

(assert (=> b!1161038 (= e!660245 e!660251)))

(declare-fun c!115911 () Bool)

(declare-fun lt!522391 () Bool)

(assert (=> b!1161038 (= c!115911 (and (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!522391))))

(declare-fun b!1161039 () Bool)

(declare-fun res!770475 () Bool)

(assert (=> b!1161039 (=> (not res!770475) (not e!660258))))

(assert (=> b!1161039 (= res!770475 (= (select (arr!36139 _keys!1208) i!673) k0!934))))

(declare-fun b!1161040 () Bool)

(declare-fun e!660253 () Bool)

(declare-fun e!660252 () Bool)

(assert (=> b!1161040 (= e!660253 e!660252)))

(declare-fun res!770479 () Bool)

(assert (=> b!1161040 (=> res!770479 e!660252)))

(assert (=> b!1161040 (= res!770479 (not (= from!1455 i!673)))))

(declare-fun lt!522393 () ListLongMap!16661)

(assert (=> b!1161040 (= lt!522393 (getCurrentListMapNoExtraKeys!4782 lt!522392 lt!522400 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(assert (=> b!1161040 (= lt!522400 (array!74987 (store (arr!36140 _values!996) i!673 (ValueCellFull!13839 lt!522395)) (size!36677 _values!996)))))

(declare-fun dynLambda!2784 (Int (_ BitVec 64)) V!43923)

(assert (=> b!1161040 (= lt!522395 (dynLambda!2784 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1161040 (= lt!522403 (getCurrentListMapNoExtraKeys!4782 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun call!56352 () ListLongMap!16661)

(declare-fun e!660254 () Bool)

(declare-fun b!1161041 () Bool)

(assert (=> b!1161041 (= e!660254 (= call!56350 (-!1418 call!56352 k0!934)))))

(declare-fun mapIsEmpty!45470 () Bool)

(assert (=> mapIsEmpty!45470 mapRes!45470))

(declare-fun b!1161042 () Bool)

(assert (=> b!1161042 (= e!660246 (= lt!522411 (getCurrentListMapNoExtraKeys!4782 lt!522392 lt!522400 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004)))))

(declare-fun bm!56344 () Bool)

(declare-fun call!56349 () ListLongMap!16661)

(assert (=> bm!56344 (= call!56349 call!56347)))

(declare-fun b!1161043 () Bool)

(declare-fun Unit!38190 () Unit!38188)

(assert (=> b!1161043 (= e!660249 Unit!38190)))

(assert (=> b!1161043 (= lt!522391 (= (bvand extraKeys!923 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(assert (=> b!1161043 (= c!115909 (and (not lt!522391) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun lt!522401 () Unit!38188)

(assert (=> b!1161043 (= lt!522401 e!660248)))

(declare-fun lt!522390 () Unit!38188)

(declare-fun lemmaListMapContainsThenArrayContainsFrom!541 (array!74984 array!74986 (_ BitVec 32) (_ BitVec 32) V!43923 V!43923 (_ BitVec 64) (_ BitVec 32) Int) Unit!38188)

(assert (=> b!1161043 (= lt!522390 (lemmaListMapContainsThenArrayContainsFrom!541 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun c!115910 () Bool)

(assert (=> b!1161043 (= c!115910 (and (not (= k0!934 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!934 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun res!770472 () Bool)

(declare-fun e!660250 () Bool)

(assert (=> b!1161043 (= res!770472 e!660250)))

(assert (=> b!1161043 (=> (not res!770472) (not e!660257))))

(assert (=> b!1161043 e!660257))

(declare-fun lt!522407 () Unit!38188)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!74984 (_ BitVec 32) (_ BitVec 32)) Unit!38188)

(assert (=> b!1161043 (= lt!522407 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1208 #b00000000000000000000000000000000 from!1455))))

(assert (=> b!1161043 (arrayNoDuplicates!0 _keys!1208 from!1455 Nil!25456)))

(declare-fun lt!522408 () Unit!38188)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!74984 (_ BitVec 64) (_ BitVec 32) List!25459) Unit!38188)

(assert (=> b!1161043 (= lt!522408 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!1208 k0!934 from!1455 Nil!25456))))

(assert (=> b!1161043 false))

(declare-fun bm!56345 () Bool)

(declare-fun call!56348 () Unit!38188)

(assert (=> bm!56345 (= call!56348 call!56346)))

(declare-fun bm!56346 () Bool)

(assert (=> bm!56346 (= call!56347 (+!3671 lt!522409 (ite (or c!115909 c!115912) (tuple2!18681 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!18681 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944))))))

(declare-fun b!1161044 () Bool)

(assert (=> b!1161044 (= e!660250 (ite (= k0!934 #b0000000000000000000000000000000000000000000000000000000000000000) (not lt!522391) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!1161045 () Bool)

(declare-fun lt!522397 () Unit!38188)

(assert (=> b!1161045 (= e!660245 lt!522397)))

(assert (=> b!1161045 (= lt!522397 call!56348)))

(declare-fun call!56351 () Bool)

(assert (=> b!1161045 call!56351))

(declare-fun b!1161046 () Bool)

(assert (=> b!1161046 call!56351))

(declare-fun lt!522404 () Unit!38188)

(assert (=> b!1161046 (= lt!522404 call!56348)))

(assert (=> b!1161046 (= e!660251 lt!522404)))

(declare-fun res!770481 () Bool)

(assert (=> start!98998 (=> (not res!770481) (not e!660258))))

(assert (=> start!98998 (= res!770481 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!36676 _keys!1208))))))

(assert (=> start!98998 e!660258))

(assert (=> start!98998 tp_is_empty!29097))

(declare-fun array_inv!27526 (array!74984) Bool)

(assert (=> start!98998 (array_inv!27526 _keys!1208)))

(assert (=> start!98998 true))

(assert (=> start!98998 tp!86412))

(declare-fun e!660256 () Bool)

(declare-fun array_inv!27527 (array!74986) Bool)

(assert (=> start!98998 (and (array_inv!27527 _values!996) e!660256)))

(declare-fun b!1161032 () Bool)

(declare-fun res!770471 () Bool)

(assert (=> b!1161032 (=> (not res!770471) (not e!660258))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!74984 (_ BitVec 32)) Bool)

(assert (=> b!1161032 (= res!770471 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1161047 () Bool)

(declare-fun e!660255 () Bool)

(assert (=> b!1161047 (= e!660255 tp_is_empty!29097)))

(declare-fun b!1161048 () Bool)

(declare-fun res!770482 () Bool)

(assert (=> b!1161048 (=> (not res!770482) (not e!660258))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1161048 (= res!770482 (validMask!0 mask!1564))))

(declare-fun b!1161049 () Bool)

(assert (=> b!1161049 (= e!660250 (arrayContainsKey!0 _keys!1208 k0!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun bm!56347 () Bool)

(assert (=> bm!56347 (= call!56352 (getCurrentListMapNoExtraKeys!4782 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun bm!56348 () Bool)

(assert (=> bm!56348 (= call!56345 (contains!6827 (ite c!115909 lt!522406 call!56349) k0!934))))

(declare-fun b!1161050 () Bool)

(assert (=> b!1161050 (= e!660258 e!660247)))

(declare-fun res!770480 () Bool)

(assert (=> b!1161050 (=> (not res!770480) (not e!660247))))

(assert (=> b!1161050 (= res!770480 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!522392 mask!1564))))

(assert (=> b!1161050 (= lt!522392 (array!74985 (store (arr!36139 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!36676 _keys!1208)))))

(declare-fun b!1161051 () Bool)

(declare-fun Unit!38191 () Unit!38188)

(assert (=> b!1161051 (= e!660251 Unit!38191)))

(declare-fun bm!56349 () Bool)

(assert (=> bm!56349 (= call!56351 call!56345)))

(declare-fun b!1161052 () Bool)

(declare-fun Unit!38192 () Unit!38188)

(assert (=> b!1161052 (= e!660249 Unit!38192)))

(declare-fun b!1161053 () Bool)

(assert (=> b!1161053 (= e!660247 (not e!660253))))

(declare-fun res!770477 () Bool)

(assert (=> b!1161053 (=> res!770477 e!660253)))

(assert (=> b!1161053 (= res!770477 (bvsgt from!1455 i!673))))

(assert (=> b!1161053 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-fun lt!522402 () Unit!38188)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!74984 (_ BitVec 64) (_ BitVec 32)) Unit!38188)

(assert (=> b!1161053 (= lt!522402 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1161054 () Bool)

(assert (=> b!1161054 (= e!660254 (= call!56350 call!56352))))

(declare-fun b!1161055 () Bool)

(assert (=> b!1161055 (= e!660252 e!660259)))

(declare-fun res!770478 () Bool)

(assert (=> b!1161055 (=> res!770478 e!660259)))

(assert (=> b!1161055 (= res!770478 (not (= (select (arr!36139 _keys!1208) from!1455) k0!934)))))

(assert (=> b!1161055 e!660254))

(declare-fun c!115914 () Bool)

(assert (=> b!1161055 (= c!115914 (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673))))

(declare-fun lt!522399 () Unit!38188)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!641 (array!74984 array!74986 (_ BitVec 32) (_ BitVec 32) V!43923 V!43923 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!38188)

(assert (=> b!1161055 (= lt!522399 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!641 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1161056 () Bool)

(assert (=> b!1161056 (= c!115912 (and (not lt!522391) (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(assert (=> b!1161056 (= e!660248 e!660245)))

(declare-fun b!1161057 () Bool)

(declare-fun res!770474 () Bool)

(assert (=> b!1161057 (=> (not res!770474) (not e!660258))))

(assert (=> b!1161057 (= res!770474 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!25456))))

(declare-fun b!1161058 () Bool)

(declare-fun res!770476 () Bool)

(assert (=> b!1161058 (=> (not res!770476) (not e!660258))))

(assert (=> b!1161058 (= res!770476 (and (= (size!36677 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!36676 _keys!1208) (size!36677 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1161059 () Bool)

(assert (=> b!1161059 (= e!660256 (and e!660255 mapRes!45470))))

(declare-fun condMapEmpty!45470 () Bool)

(declare-fun mapDefault!45470 () ValueCell!13839)

(assert (=> b!1161059 (= condMapEmpty!45470 (= (arr!36140 _values!996) ((as const (Array (_ BitVec 32) ValueCell!13839)) mapDefault!45470)))))

(assert (= (and start!98998 res!770481) b!1161048))

(assert (= (and b!1161048 res!770482) b!1161058))

(assert (= (and b!1161058 res!770476) b!1161032))

(assert (= (and b!1161032 res!770471) b!1161057))

(assert (= (and b!1161057 res!770474) b!1161034))

(assert (= (and b!1161034 res!770469) b!1161036))

(assert (= (and b!1161036 res!770473) b!1161039))

(assert (= (and b!1161039 res!770475) b!1161050))

(assert (= (and b!1161050 res!770480) b!1161033))

(assert (= (and b!1161033 res!770470) b!1161053))

(assert (= (and b!1161053 (not res!770477)) b!1161040))

(assert (= (and b!1161040 (not res!770479)) b!1161055))

(assert (= (and b!1161055 c!115914) b!1161041))

(assert (= (and b!1161055 (not c!115914)) b!1161054))

(assert (= (or b!1161041 b!1161054) bm!56347))

(assert (= (or b!1161041 b!1161054) bm!56343))

(assert (= (and b!1161055 (not res!770478)) b!1161030))

(assert (= (and b!1161030 c!115913) b!1161043))

(assert (= (and b!1161030 (not c!115913)) b!1161052))

(assert (= (and b!1161043 c!115909) b!1161031))

(assert (= (and b!1161043 (not c!115909)) b!1161056))

(assert (= (and b!1161056 c!115912) b!1161045))

(assert (= (and b!1161056 (not c!115912)) b!1161038))

(assert (= (and b!1161038 c!115911) b!1161046))

(assert (= (and b!1161038 (not c!115911)) b!1161051))

(assert (= (or b!1161045 b!1161046) bm!56345))

(assert (= (or b!1161045 b!1161046) bm!56344))

(assert (= (or b!1161045 b!1161046) bm!56349))

(assert (= (or b!1161031 bm!56349) bm!56348))

(assert (= (or b!1161031 bm!56345) bm!56342))

(assert (= (or b!1161031 bm!56344) bm!56346))

(assert (= (and b!1161043 c!115910) b!1161049))

(assert (= (and b!1161043 (not c!115910)) b!1161044))

(assert (= (and b!1161043 res!770472) b!1161037))

(assert (= (and b!1161030 res!770483) b!1161042))

(assert (= (and b!1161059 condMapEmpty!45470) mapIsEmpty!45470))

(assert (= (and b!1161059 (not condMapEmpty!45470)) mapNonEmpty!45470))

(get-info :version)

(assert (= (and mapNonEmpty!45470 ((_ is ValueCellFull!13839) mapValue!45470)) b!1161035))

(assert (= (and b!1161059 ((_ is ValueCellFull!13839) mapDefault!45470)) b!1161047))

(assert (= start!98998 b!1161059))

(declare-fun b_lambda!19691 () Bool)

(assert (=> (not b_lambda!19691) (not b!1161040)))

(declare-fun t!37023 () Bool)

(declare-fun tb!9387 () Bool)

(assert (=> (and start!98998 (= defaultEntry!1004 defaultEntry!1004) t!37023) tb!9387))

(declare-fun result!19331 () Bool)

(assert (=> tb!9387 (= result!19331 tp_is_empty!29097)))

(assert (=> b!1161040 t!37023))

(declare-fun b_and!39999 () Bool)

(assert (= b_and!39997 (and (=> t!37023 result!19331) b_and!39999)))

(declare-fun m!1069943 () Bool)

(assert (=> b!1161048 m!1069943))

(declare-fun m!1069945 () Bool)

(assert (=> b!1161055 m!1069945))

(declare-fun m!1069947 () Bool)

(assert (=> b!1161055 m!1069947))

(declare-fun m!1069949 () Bool)

(assert (=> b!1161040 m!1069949))

(declare-fun m!1069951 () Bool)

(assert (=> b!1161040 m!1069951))

(declare-fun m!1069953 () Bool)

(assert (=> b!1161040 m!1069953))

(declare-fun m!1069955 () Bool)

(assert (=> b!1161040 m!1069955))

(declare-fun m!1069957 () Bool)

(assert (=> b!1161042 m!1069957))

(declare-fun m!1069959 () Bool)

(assert (=> b!1161036 m!1069959))

(declare-fun m!1069961 () Bool)

(assert (=> b!1161032 m!1069961))

(declare-fun m!1069963 () Bool)

(assert (=> bm!56347 m!1069963))

(declare-fun m!1069965 () Bool)

(assert (=> bm!56346 m!1069965))

(declare-fun m!1069967 () Bool)

(assert (=> b!1161039 m!1069967))

(declare-fun m!1069969 () Bool)

(assert (=> b!1161033 m!1069969))

(declare-fun m!1069971 () Bool)

(assert (=> b!1161043 m!1069971))

(declare-fun m!1069973 () Bool)

(assert (=> b!1161043 m!1069973))

(declare-fun m!1069975 () Bool)

(assert (=> b!1161043 m!1069975))

(declare-fun m!1069977 () Bool)

(assert (=> b!1161043 m!1069977))

(declare-fun m!1069979 () Bool)

(assert (=> start!98998 m!1069979))

(declare-fun m!1069981 () Bool)

(assert (=> start!98998 m!1069981))

(declare-fun m!1069983 () Bool)

(assert (=> bm!56342 m!1069983))

(declare-fun m!1069985 () Bool)

(assert (=> b!1161041 m!1069985))

(declare-fun m!1069987 () Bool)

(assert (=> b!1161037 m!1069987))

(declare-fun m!1069989 () Bool)

(assert (=> bm!56348 m!1069989))

(assert (=> b!1161049 m!1069987))

(declare-fun m!1069991 () Bool)

(assert (=> b!1161053 m!1069991))

(declare-fun m!1069993 () Bool)

(assert (=> b!1161053 m!1069993))

(declare-fun m!1069995 () Bool)

(assert (=> b!1161030 m!1069995))

(assert (=> b!1161030 m!1069945))

(declare-fun m!1069997 () Bool)

(assert (=> b!1161030 m!1069997))

(declare-fun m!1069999 () Bool)

(assert (=> b!1161030 m!1069999))

(assert (=> b!1161030 m!1069995))

(assert (=> b!1161030 m!1069945))

(declare-fun m!1070001 () Bool)

(assert (=> b!1161030 m!1070001))

(assert (=> b!1161030 m!1069999))

(declare-fun m!1070003 () Bool)

(assert (=> b!1161030 m!1070003))

(declare-fun m!1070005 () Bool)

(assert (=> b!1161030 m!1070005))

(assert (=> b!1161030 m!1069945))

(declare-fun m!1070007 () Bool)

(assert (=> b!1161030 m!1070007))

(assert (=> b!1161030 m!1069963))

(declare-fun m!1070009 () Bool)

(assert (=> b!1161057 m!1070009))

(declare-fun m!1070011 () Bool)

(assert (=> b!1161031 m!1070011))

(assert (=> b!1161031 m!1070011))

(declare-fun m!1070013 () Bool)

(assert (=> b!1161031 m!1070013))

(declare-fun m!1070015 () Bool)

(assert (=> b!1161031 m!1070015))

(declare-fun m!1070017 () Bool)

(assert (=> b!1161050 m!1070017))

(declare-fun m!1070019 () Bool)

(assert (=> b!1161050 m!1070019))

(assert (=> bm!56343 m!1069957))

(declare-fun m!1070021 () Bool)

(assert (=> mapNonEmpty!45470 m!1070021))

(check-sat (not b!1161040) tp_is_empty!29097 (not b!1161031) (not b!1161041) (not b!1161036) (not b!1161037) (not b!1161043) (not b!1161055) (not b!1161048) (not b!1161057) b_and!39999 (not bm!56348) (not b!1161042) (not mapNonEmpty!45470) (not bm!56346) (not b!1161030) (not start!98998) (not b_lambda!19691) (not bm!56347) (not b!1161053) (not b!1161049) (not bm!56342) (not b_next!24567) (not b!1161032) (not b!1161050) (not bm!56343) (not b!1161033))
(check-sat b_and!39999 (not b_next!24567))
