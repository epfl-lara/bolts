; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!98722 () Bool)

(assert start!98722)

(declare-fun b_free!24291 () Bool)

(declare-fun b_next!24291 () Bool)

(assert (=> start!98722 (= b_free!24291 (not b_next!24291))))

(declare-fun tp!85585 () Bool)

(declare-fun b_and!39445 () Bool)

(assert (=> start!98722 (= tp!85585 b_and!39445)))

(declare-fun b!1148334 () Bool)

(declare-fun e!653222 () Bool)

(declare-fun e!653223 () Bool)

(assert (=> b!1148334 (= e!653222 e!653223)))

(declare-fun res!764272 () Bool)

(assert (=> b!1148334 (=> (not res!764272) (not e!653223))))

(declare-datatypes ((array!74446 0))(
  ( (array!74447 (arr!35870 (Array (_ BitVec 32) (_ BitVec 64))) (size!36407 (_ BitVec 32))) )
))
(declare-fun lt!513306 () array!74446)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!74446 (_ BitVec 32)) Bool)

(assert (=> b!1148334 (= res!764272 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!513306 mask!1564))))

(declare-fun _keys!1208 () array!74446)

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1148334 (= lt!513306 (array!74447 (store (arr!35870 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!36407 _keys!1208)))))

(declare-fun e!653211 () Bool)

(declare-fun k0!934 () (_ BitVec 64))

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun b!1148335 () Bool)

(declare-fun arrayContainsKey!0 (array!74446 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1148335 (= e!653211 (arrayContainsKey!0 _keys!1208 k0!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-datatypes ((V!43555 0))(
  ( (V!43556 (val!14467 Int)) )
))
(declare-fun zeroValue!944 () V!43555)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-datatypes ((tuple2!18426 0))(
  ( (tuple2!18427 (_1!9223 (_ BitVec 64)) (_2!9223 V!43555)) )
))
(declare-datatypes ((List!25219 0))(
  ( (Nil!25216) (Cons!25215 (h!26424 tuple2!18426) (t!36509 List!25219)) )
))
(declare-datatypes ((ListLongMap!16407 0))(
  ( (ListLongMap!16408 (toList!8219 List!25219)) )
))
(declare-fun call!53038 () ListLongMap!16407)

(declare-fun defaultEntry!1004 () Int)

(declare-datatypes ((ValueCell!13701 0))(
  ( (ValueCellFull!13701 (v!17105 V!43555)) (EmptyCell!13701) )
))
(declare-datatypes ((array!74448 0))(
  ( (array!74449 (arr!35871 (Array (_ BitVec 32) ValueCell!13701)) (size!36408 (_ BitVec 32))) )
))
(declare-fun lt!513308 () array!74448)

(declare-fun bm!53030 () Bool)

(declare-fun minValue!944 () V!43555)

(declare-fun getCurrentListMapNoExtraKeys!4660 (array!74446 array!74448 (_ BitVec 32) (_ BitVec 32) V!43555 V!43555 (_ BitVec 32) Int) ListLongMap!16407)

(assert (=> bm!53030 (= call!53038 (getCurrentListMapNoExtraKeys!4660 lt!513306 lt!513308 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1148336 () Bool)

(declare-fun e!653209 () Bool)

(declare-fun tp_is_empty!28821 () Bool)

(assert (=> b!1148336 (= e!653209 tp_is_empty!28821)))

(declare-fun b!1148337 () Bool)

(declare-fun e!653210 () Bool)

(declare-fun e!653216 () Bool)

(assert (=> b!1148337 (= e!653210 e!653216)))

(declare-fun res!764266 () Bool)

(assert (=> b!1148337 (=> res!764266 e!653216)))

(assert (=> b!1148337 (= res!764266 (not (= (select (arr!35870 _keys!1208) from!1455) k0!934)))))

(declare-fun e!653215 () Bool)

(assert (=> b!1148337 e!653215))

(declare-fun c!113430 () Bool)

(assert (=> b!1148337 (= c!113430 (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673))))

(declare-datatypes ((Unit!37655 0))(
  ( (Unit!37656) )
))
(declare-fun lt!513314 () Unit!37655)

(declare-fun _values!996 () array!74448)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!552 (array!74446 array!74448 (_ BitVec 32) (_ BitVec 32) V!43555 V!43555 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!37655)

(assert (=> b!1148337 (= lt!513314 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!552 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1148338 () Bool)

(declare-fun res!764264 () Bool)

(assert (=> b!1148338 (=> (not res!764264) (not e!653222))))

(assert (=> b!1148338 (= res!764264 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1148339 () Bool)

(declare-fun call!53035 () ListLongMap!16407)

(declare-fun -!1308 (ListLongMap!16407 (_ BitVec 64)) ListLongMap!16407)

(assert (=> b!1148339 (= e!653215 (= call!53038 (-!1308 call!53035 k0!934)))))

(declare-fun b!1148341 () Bool)

(declare-fun e!653217 () Unit!37655)

(declare-fun Unit!37657 () Unit!37655)

(assert (=> b!1148341 (= e!653217 Unit!37657)))

(declare-fun lt!513320 () Bool)

(assert (=> b!1148341 (= lt!513320 (= (bvand extraKeys!923 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(declare-fun c!113427 () Bool)

(assert (=> b!1148341 (= c!113427 (and (not lt!513320) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun lt!513310 () Unit!37655)

(declare-fun e!653220 () Unit!37655)

(assert (=> b!1148341 (= lt!513310 e!653220)))

(declare-fun lt!513318 () Unit!37655)

(declare-fun lemmaListMapContainsThenArrayContainsFrom!444 (array!74446 array!74448 (_ BitVec 32) (_ BitVec 32) V!43555 V!43555 (_ BitVec 64) (_ BitVec 32) Int) Unit!37655)

(assert (=> b!1148341 (= lt!513318 (lemmaListMapContainsThenArrayContainsFrom!444 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun c!113426 () Bool)

(assert (=> b!1148341 (= c!113426 (and (not (= k0!934 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!934 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun res!764265 () Bool)

(declare-fun e!653207 () Bool)

(assert (=> b!1148341 (= res!764265 e!653207)))

(assert (=> b!1148341 (=> (not res!764265) (not e!653211))))

(assert (=> b!1148341 e!653211))

(declare-fun lt!513313 () Unit!37655)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!74446 (_ BitVec 32) (_ BitVec 32)) Unit!37655)

(assert (=> b!1148341 (= lt!513313 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1208 #b00000000000000000000000000000000 from!1455))))

(declare-datatypes ((List!25220 0))(
  ( (Nil!25217) (Cons!25216 (h!26425 (_ BitVec 64)) (t!36510 List!25220)) )
))
(declare-fun arrayNoDuplicates!0 (array!74446 (_ BitVec 32) List!25220) Bool)

(assert (=> b!1148341 (arrayNoDuplicates!0 _keys!1208 from!1455 Nil!25217)))

(declare-fun lt!513323 () Unit!37655)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!74446 (_ BitVec 64) (_ BitVec 32) List!25220) Unit!37655)

(assert (=> b!1148341 (= lt!513323 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!1208 k0!934 from!1455 Nil!25217))))

(assert (=> b!1148341 false))

(declare-fun b!1148342 () Bool)

(declare-fun res!764259 () Bool)

(assert (=> b!1148342 (=> (not res!764259) (not e!653222))))

(assert (=> b!1148342 (= res!764259 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!36407 _keys!1208))))))

(declare-fun b!1148343 () Bool)

(declare-fun Unit!37658 () Unit!37655)

(assert (=> b!1148343 (= e!653217 Unit!37658)))

(declare-fun bm!53031 () Bool)

(declare-fun call!53037 () ListLongMap!16407)

(declare-fun call!53036 () ListLongMap!16407)

(assert (=> bm!53031 (= call!53037 call!53036)))

(declare-fun b!1148344 () Bool)

(declare-fun e!653213 () Unit!37655)

(declare-fun Unit!37659 () Unit!37655)

(assert (=> b!1148344 (= e!653213 Unit!37659)))

(declare-fun mapNonEmpty!45056 () Bool)

(declare-fun mapRes!45056 () Bool)

(declare-fun tp!85584 () Bool)

(declare-fun e!653214 () Bool)

(assert (=> mapNonEmpty!45056 (= mapRes!45056 (and tp!85584 e!653214))))

(declare-fun mapRest!45056 () (Array (_ BitVec 32) ValueCell!13701))

(declare-fun mapValue!45056 () ValueCell!13701)

(declare-fun mapKey!45056 () (_ BitVec 32))

(assert (=> mapNonEmpty!45056 (= (arr!35871 _values!996) (store mapRest!45056 mapKey!45056 mapValue!45056))))

(declare-fun b!1148345 () Bool)

(declare-fun e!653218 () Bool)

(assert (=> b!1148345 (= e!653218 e!653210)))

(declare-fun res!764270 () Bool)

(assert (=> b!1148345 (=> res!764270 e!653210)))

(assert (=> b!1148345 (= res!764270 (not (= from!1455 i!673)))))

(declare-fun lt!513316 () ListLongMap!16407)

(assert (=> b!1148345 (= lt!513316 (getCurrentListMapNoExtraKeys!4660 lt!513306 lt!513308 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun lt!513304 () V!43555)

(assert (=> b!1148345 (= lt!513308 (array!74449 (store (arr!35871 _values!996) i!673 (ValueCellFull!13701 lt!513304)) (size!36408 _values!996)))))

(declare-fun dynLambda!2692 (Int (_ BitVec 64)) V!43555)

(assert (=> b!1148345 (= lt!513304 (dynLambda!2692 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!513315 () ListLongMap!16407)

(assert (=> b!1148345 (= lt!513315 (getCurrentListMapNoExtraKeys!4660 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1148346 () Bool)

(assert (=> b!1148346 (= e!653215 (= call!53038 call!53035))))

(declare-fun mapIsEmpty!45056 () Bool)

(assert (=> mapIsEmpty!45056 mapRes!45056))

(declare-fun b!1148347 () Bool)

(declare-fun call!53040 () Bool)

(assert (=> b!1148347 call!53040))

(declare-fun lt!513307 () Unit!37655)

(declare-fun call!53034 () Unit!37655)

(assert (=> b!1148347 (= lt!513307 call!53034)))

(assert (=> b!1148347 (= e!653213 lt!513307)))

(declare-fun b!1148348 () Bool)

(declare-fun res!764269 () Bool)

(assert (=> b!1148348 (=> (not res!764269) (not e!653222))))

(assert (=> b!1148348 (= res!764269 (and (= (size!36408 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!36407 _keys!1208) (size!36408 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1148349 () Bool)

(assert (=> b!1148349 (= e!653214 tp_is_empty!28821)))

(declare-fun bm!53032 () Bool)

(declare-fun call!53033 () Bool)

(assert (=> bm!53032 (= call!53040 call!53033)))

(declare-fun bm!53033 () Bool)

(assert (=> bm!53033 (= call!53035 (getCurrentListMapNoExtraKeys!4660 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun bm!53034 () Bool)

(declare-fun call!53039 () Unit!37655)

(assert (=> bm!53034 (= call!53034 call!53039)))

(declare-fun b!1148350 () Bool)

(declare-fun contains!6715 (ListLongMap!16407 (_ BitVec 64)) Bool)

(assert (=> b!1148350 (contains!6715 call!53036 k0!934)))

(declare-fun lt!513305 () Unit!37655)

(declare-fun lt!513321 () ListLongMap!16407)

(declare-fun addStillContains!857 (ListLongMap!16407 (_ BitVec 64) V!43555 (_ BitVec 64)) Unit!37655)

(assert (=> b!1148350 (= lt!513305 (addStillContains!857 lt!513321 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944 k0!934))))

(assert (=> b!1148350 call!53033))

(declare-fun lt!513324 () ListLongMap!16407)

(declare-fun +!3558 (ListLongMap!16407 tuple2!18426) ListLongMap!16407)

(assert (=> b!1148350 (= lt!513321 (+!3558 lt!513324 (tuple2!18427 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944)))))

(declare-fun lt!513322 () Unit!37655)

(assert (=> b!1148350 (= lt!513322 call!53039)))

(assert (=> b!1148350 (= e!653220 lt!513305)))

(declare-fun c!113425 () Bool)

(declare-fun bm!53035 () Bool)

(assert (=> bm!53035 (= call!53039 (addStillContains!857 lt!513324 (ite (or c!113427 c!113425) #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000) (ite (or c!113427 c!113425) zeroValue!944 minValue!944) k0!934))))

(declare-fun b!1148351 () Bool)

(declare-fun res!764261 () Bool)

(assert (=> b!1148351 (=> (not res!764261) (not e!653223))))

(assert (=> b!1148351 (= res!764261 (arrayNoDuplicates!0 lt!513306 #b00000000000000000000000000000000 Nil!25217))))

(declare-fun bm!53036 () Bool)

(assert (=> bm!53036 (= call!53036 (+!3558 (ite c!113427 lt!513321 lt!513324) (ite c!113427 (tuple2!18427 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944) (ite c!113425 (tuple2!18427 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!18427 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944)))))))

(declare-fun b!1148352 () Bool)

(assert (=> b!1148352 (= e!653207 (ite (= k0!934 #b0000000000000000000000000000000000000000000000000000000000000000) (not lt!513320) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!1148353 () Bool)

(declare-fun e!653212 () Unit!37655)

(declare-fun lt!513309 () Unit!37655)

(assert (=> b!1148353 (= e!653212 lt!513309)))

(assert (=> b!1148353 (= lt!513309 call!53034)))

(assert (=> b!1148353 call!53040))

(declare-fun b!1148354 () Bool)

(declare-fun res!764262 () Bool)

(assert (=> b!1148354 (=> (not res!764262) (not e!653222))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1148354 (= res!764262 (validKeyInArray!0 k0!934))))

(declare-fun e!653221 () Bool)

(declare-fun b!1148355 () Bool)

(assert (=> b!1148355 (= e!653221 (= (-!1308 lt!513315 k0!934) lt!513324))))

(declare-fun b!1148356 () Bool)

(declare-fun res!764267 () Bool)

(assert (=> b!1148356 (=> (not res!764267) (not e!653222))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1148356 (= res!764267 (validMask!0 mask!1564))))

(declare-fun b!1148357 () Bool)

(declare-fun res!764260 () Bool)

(assert (=> b!1148357 (=> (not res!764260) (not e!653222))))

(assert (=> b!1148357 (= res!764260 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!25217))))

(declare-fun b!1148358 () Bool)

(assert (=> b!1148358 (= c!113425 (and (not lt!513320) (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(assert (=> b!1148358 (= e!653220 e!653212)))

(declare-fun b!1148340 () Bool)

(assert (=> b!1148340 (= e!653212 e!653213)))

(declare-fun c!113428 () Bool)

(assert (=> b!1148340 (= c!113428 (and (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!513320))))

(declare-fun res!764273 () Bool)

(assert (=> start!98722 (=> (not res!764273) (not e!653222))))

(assert (=> start!98722 (= res!764273 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!36407 _keys!1208))))))

(assert (=> start!98722 e!653222))

(assert (=> start!98722 tp_is_empty!28821))

(declare-fun array_inv!27354 (array!74446) Bool)

(assert (=> start!98722 (array_inv!27354 _keys!1208)))

(assert (=> start!98722 true))

(assert (=> start!98722 tp!85585))

(declare-fun e!653208 () Bool)

(declare-fun array_inv!27355 (array!74448) Bool)

(assert (=> start!98722 (and (array_inv!27355 _values!996) e!653208)))

(declare-fun bm!53037 () Bool)

(assert (=> bm!53037 (= call!53033 (contains!6715 (ite c!113427 lt!513321 call!53037) k0!934))))

(declare-fun b!1148359 () Bool)

(assert (=> b!1148359 (= e!653208 (and e!653209 mapRes!45056))))

(declare-fun condMapEmpty!45056 () Bool)

(declare-fun mapDefault!45056 () ValueCell!13701)

(assert (=> b!1148359 (= condMapEmpty!45056 (= (arr!35871 _values!996) ((as const (Array (_ BitVec 32) ValueCell!13701)) mapDefault!45056)))))

(declare-fun b!1148360 () Bool)

(assert (=> b!1148360 (= e!653216 true)))

(assert (=> b!1148360 e!653221))

(declare-fun res!764271 () Bool)

(assert (=> b!1148360 (=> (not res!764271) (not e!653221))))

(declare-fun lt!513317 () V!43555)

(assert (=> b!1148360 (= res!764271 (= (-!1308 (+!3558 lt!513324 (tuple2!18427 (select (arr!35870 _keys!1208) from!1455) lt!513317)) (select (arr!35870 _keys!1208) from!1455)) lt!513324))))

(declare-fun lt!513319 () Unit!37655)

(declare-fun addThenRemoveForNewKeyIsSame!157 (ListLongMap!16407 (_ BitVec 64) V!43555) Unit!37655)

(assert (=> b!1148360 (= lt!513319 (addThenRemoveForNewKeyIsSame!157 lt!513324 (select (arr!35870 _keys!1208) from!1455) lt!513317))))

(declare-fun get!18275 (ValueCell!13701 V!43555) V!43555)

(assert (=> b!1148360 (= lt!513317 (get!18275 (select (arr!35871 _values!996) from!1455) lt!513304))))

(declare-fun lt!513311 () Unit!37655)

(assert (=> b!1148360 (= lt!513311 e!653217)))

(declare-fun c!113429 () Bool)

(assert (=> b!1148360 (= c!113429 (contains!6715 lt!513324 k0!934))))

(assert (=> b!1148360 (= lt!513324 (getCurrentListMapNoExtraKeys!4660 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1148361 () Bool)

(assert (=> b!1148361 (= e!653207 (arrayContainsKey!0 _keys!1208 k0!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun b!1148362 () Bool)

(declare-fun res!764268 () Bool)

(assert (=> b!1148362 (=> (not res!764268) (not e!653222))))

(assert (=> b!1148362 (= res!764268 (= (select (arr!35870 _keys!1208) i!673) k0!934))))

(declare-fun b!1148363 () Bool)

(assert (=> b!1148363 (= e!653223 (not e!653218))))

(declare-fun res!764263 () Bool)

(assert (=> b!1148363 (=> res!764263 e!653218)))

(assert (=> b!1148363 (= res!764263 (bvsgt from!1455 i!673))))

(assert (=> b!1148363 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-fun lt!513312 () Unit!37655)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!74446 (_ BitVec 64) (_ BitVec 32)) Unit!37655)

(assert (=> b!1148363 (= lt!513312 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(assert (= (and start!98722 res!764273) b!1148356))

(assert (= (and b!1148356 res!764267) b!1148348))

(assert (= (and b!1148348 res!764269) b!1148338))

(assert (= (and b!1148338 res!764264) b!1148357))

(assert (= (and b!1148357 res!764260) b!1148342))

(assert (= (and b!1148342 res!764259) b!1148354))

(assert (= (and b!1148354 res!764262) b!1148362))

(assert (= (and b!1148362 res!764268) b!1148334))

(assert (= (and b!1148334 res!764272) b!1148351))

(assert (= (and b!1148351 res!764261) b!1148363))

(assert (= (and b!1148363 (not res!764263)) b!1148345))

(assert (= (and b!1148345 (not res!764270)) b!1148337))

(assert (= (and b!1148337 c!113430) b!1148339))

(assert (= (and b!1148337 (not c!113430)) b!1148346))

(assert (= (or b!1148339 b!1148346) bm!53030))

(assert (= (or b!1148339 b!1148346) bm!53033))

(assert (= (and b!1148337 (not res!764266)) b!1148360))

(assert (= (and b!1148360 c!113429) b!1148341))

(assert (= (and b!1148360 (not c!113429)) b!1148343))

(assert (= (and b!1148341 c!113427) b!1148350))

(assert (= (and b!1148341 (not c!113427)) b!1148358))

(assert (= (and b!1148358 c!113425) b!1148353))

(assert (= (and b!1148358 (not c!113425)) b!1148340))

(assert (= (and b!1148340 c!113428) b!1148347))

(assert (= (and b!1148340 (not c!113428)) b!1148344))

(assert (= (or b!1148353 b!1148347) bm!53034))

(assert (= (or b!1148353 b!1148347) bm!53031))

(assert (= (or b!1148353 b!1148347) bm!53032))

(assert (= (or b!1148350 bm!53032) bm!53037))

(assert (= (or b!1148350 bm!53034) bm!53035))

(assert (= (or b!1148350 bm!53031) bm!53036))

(assert (= (and b!1148341 c!113426) b!1148361))

(assert (= (and b!1148341 (not c!113426)) b!1148352))

(assert (= (and b!1148341 res!764265) b!1148335))

(assert (= (and b!1148360 res!764271) b!1148355))

(assert (= (and b!1148359 condMapEmpty!45056) mapIsEmpty!45056))

(assert (= (and b!1148359 (not condMapEmpty!45056)) mapNonEmpty!45056))

(get-info :version)

(assert (= (and mapNonEmpty!45056 ((_ is ValueCellFull!13701) mapValue!45056)) b!1148349))

(assert (= (and b!1148359 ((_ is ValueCellFull!13701) mapDefault!45056)) b!1148336))

(assert (= start!98722 b!1148359))

(declare-fun b_lambda!19415 () Bool)

(assert (=> (not b_lambda!19415) (not b!1148345)))

(declare-fun t!36508 () Bool)

(declare-fun tb!9111 () Bool)

(assert (=> (and start!98722 (= defaultEntry!1004 defaultEntry!1004) t!36508) tb!9111))

(declare-fun result!18779 () Bool)

(assert (=> tb!9111 (= result!18779 tp_is_empty!28821)))

(assert (=> b!1148345 t!36508))

(declare-fun b_and!39447 () Bool)

(assert (= b_and!39445 (and (=> t!36508 result!18779) b_and!39447)))

(declare-fun m!1058893 () Bool)

(assert (=> b!1148356 m!1058893))

(declare-fun m!1058895 () Bool)

(assert (=> b!1148355 m!1058895))

(declare-fun m!1058897 () Bool)

(assert (=> b!1148339 m!1058897))

(declare-fun m!1058899 () Bool)

(assert (=> start!98722 m!1058899))

(declare-fun m!1058901 () Bool)

(assert (=> start!98722 m!1058901))

(declare-fun m!1058903 () Bool)

(assert (=> b!1148341 m!1058903))

(declare-fun m!1058905 () Bool)

(assert (=> b!1148341 m!1058905))

(declare-fun m!1058907 () Bool)

(assert (=> b!1148341 m!1058907))

(declare-fun m!1058909 () Bool)

(assert (=> b!1148341 m!1058909))

(declare-fun m!1058911 () Bool)

(assert (=> b!1148357 m!1058911))

(declare-fun m!1058913 () Bool)

(assert (=> b!1148335 m!1058913))

(declare-fun m!1058915 () Bool)

(assert (=> bm!53035 m!1058915))

(declare-fun m!1058917 () Bool)

(assert (=> bm!53037 m!1058917))

(declare-fun m!1058919 () Bool)

(assert (=> bm!53033 m!1058919))

(declare-fun m!1058921 () Bool)

(assert (=> b!1148363 m!1058921))

(declare-fun m!1058923 () Bool)

(assert (=> b!1148363 m!1058923))

(declare-fun m!1058925 () Bool)

(assert (=> b!1148351 m!1058925))

(declare-fun m!1058927 () Bool)

(assert (=> b!1148354 m!1058927))

(declare-fun m!1058929 () Bool)

(assert (=> b!1148338 m!1058929))

(declare-fun m!1058931 () Bool)

(assert (=> bm!53030 m!1058931))

(declare-fun m!1058933 () Bool)

(assert (=> b!1148362 m!1058933))

(declare-fun m!1058935 () Bool)

(assert (=> b!1148350 m!1058935))

(declare-fun m!1058937 () Bool)

(assert (=> b!1148350 m!1058937))

(declare-fun m!1058939 () Bool)

(assert (=> b!1148350 m!1058939))

(declare-fun m!1058941 () Bool)

(assert (=> bm!53036 m!1058941))

(declare-fun m!1058943 () Bool)

(assert (=> b!1148345 m!1058943))

(declare-fun m!1058945 () Bool)

(assert (=> b!1148345 m!1058945))

(declare-fun m!1058947 () Bool)

(assert (=> b!1148345 m!1058947))

(declare-fun m!1058949 () Bool)

(assert (=> b!1148345 m!1058949))

(declare-fun m!1058951 () Bool)

(assert (=> mapNonEmpty!45056 m!1058951))

(assert (=> b!1148360 m!1058919))

(declare-fun m!1058953 () Bool)

(assert (=> b!1148360 m!1058953))

(declare-fun m!1058955 () Bool)

(assert (=> b!1148360 m!1058955))

(declare-fun m!1058957 () Bool)

(assert (=> b!1148360 m!1058957))

(declare-fun m!1058959 () Bool)

(assert (=> b!1148360 m!1058959))

(assert (=> b!1148360 m!1058959))

(assert (=> b!1148360 m!1058955))

(declare-fun m!1058961 () Bool)

(assert (=> b!1148360 m!1058961))

(assert (=> b!1148360 m!1058955))

(assert (=> b!1148360 m!1058953))

(declare-fun m!1058963 () Bool)

(assert (=> b!1148360 m!1058963))

(declare-fun m!1058965 () Bool)

(assert (=> b!1148360 m!1058965))

(declare-fun m!1058967 () Bool)

(assert (=> b!1148334 m!1058967))

(declare-fun m!1058969 () Bool)

(assert (=> b!1148334 m!1058969))

(assert (=> b!1148337 m!1058955))

(declare-fun m!1058971 () Bool)

(assert (=> b!1148337 m!1058971))

(assert (=> b!1148361 m!1058913))

(check-sat (not b!1148334) (not b!1148360) (not b!1148335) (not b_next!24291) (not b!1148337) (not b!1148354) (not b!1148339) tp_is_empty!28821 (not b_lambda!19415) (not mapNonEmpty!45056) (not b!1148357) (not b!1148350) (not b!1148356) (not bm!53035) (not b!1148338) (not b!1148361) (not b!1148341) b_and!39447 (not b!1148355) (not b!1148363) (not bm!53037) (not b!1148345) (not bm!53033) (not bm!53030) (not bm!53036) (not start!98722) (not b!1148351))
(check-sat b_and!39447 (not b_next!24291))
