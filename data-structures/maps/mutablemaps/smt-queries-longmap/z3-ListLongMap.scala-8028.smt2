; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!99046 () Bool)

(assert start!99046)

(declare-fun b_free!24615 () Bool)

(declare-fun b_next!24615 () Bool)

(assert (=> start!99046 (= b_free!24615 (not b_next!24615))))

(declare-fun tp!86557 () Bool)

(declare-fun b_and!40093 () Bool)

(assert (=> start!99046 (= tp!86557 b_and!40093)))

(declare-fun b!1163238 () Bool)

(declare-fun e!661484 () Bool)

(declare-fun e!661469 () Bool)

(assert (=> b!1163238 (= e!661484 e!661469)))

(declare-fun res!771561 () Bool)

(assert (=> b!1163238 (=> res!771561 e!661469)))

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1163238 (= res!771561 (not (= from!1455 i!673)))))

(declare-datatypes ((V!43987 0))(
  ( (V!43988 (val!14629 Int)) )
))
(declare-fun zeroValue!944 () V!43987)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-datatypes ((tuple2!18728 0))(
  ( (tuple2!18729 (_1!9374 (_ BitVec 64)) (_2!9374 V!43987)) )
))
(declare-datatypes ((List!25503 0))(
  ( (Nil!25500) (Cons!25499 (h!26708 tuple2!18728) (t!37117 List!25503)) )
))
(declare-datatypes ((ListLongMap!16709 0))(
  ( (ListLongMap!16710 (toList!8370 List!25503)) )
))
(declare-fun lt!523990 () ListLongMap!16709)

(declare-fun minValue!944 () V!43987)

(declare-datatypes ((array!75080 0))(
  ( (array!75081 (arr!36187 (Array (_ BitVec 32) (_ BitVec 64))) (size!36724 (_ BitVec 32))) )
))
(declare-fun lt!523991 () array!75080)

(declare-datatypes ((ValueCell!13863 0))(
  ( (ValueCellFull!13863 (v!17267 V!43987)) (EmptyCell!13863) )
))
(declare-datatypes ((array!75082 0))(
  ( (array!75083 (arr!36188 (Array (_ BitVec 32) ValueCell!13863)) (size!36725 (_ BitVec 32))) )
))
(declare-fun lt!523979 () array!75082)

(declare-fun getCurrentListMapNoExtraKeys!4804 (array!75080 array!75082 (_ BitVec 32) (_ BitVec 32) V!43987 V!43987 (_ BitVec 32) Int) ListLongMap!16709)

(assert (=> b!1163238 (= lt!523990 (getCurrentListMapNoExtraKeys!4804 lt!523991 lt!523979 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun _values!996 () array!75082)

(declare-fun lt!523994 () V!43987)

(assert (=> b!1163238 (= lt!523979 (array!75083 (store (arr!36188 _values!996) i!673 (ValueCellFull!13863 lt!523994)) (size!36725 _values!996)))))

(declare-fun dynLambda!2801 (Int (_ BitVec 64)) V!43987)

(assert (=> b!1163238 (= lt!523994 (dynLambda!2801 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun _keys!1208 () array!75080)

(declare-fun lt!523975 () ListLongMap!16709)

(assert (=> b!1163238 (= lt!523975 (getCurrentListMapNoExtraKeys!4804 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1163239 () Bool)

(declare-fun res!771553 () Bool)

(declare-fun e!661479 () Bool)

(assert (=> b!1163239 (=> (not res!771553) (not e!661479))))

(assert (=> b!1163239 (= res!771553 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!36724 _keys!1208))))))

(declare-fun b!1163240 () Bool)

(declare-fun e!661472 () Bool)

(declare-fun tp_is_empty!29145 () Bool)

(assert (=> b!1163240 (= e!661472 tp_is_empty!29145)))

(declare-fun b!1163241 () Bool)

(declare-fun e!661477 () Bool)

(declare-fun mapRes!45542 () Bool)

(assert (=> b!1163241 (= e!661477 (and e!661472 mapRes!45542))))

(declare-fun condMapEmpty!45542 () Bool)

(declare-fun mapDefault!45542 () ValueCell!13863)

(assert (=> b!1163241 (= condMapEmpty!45542 (= (arr!36188 _values!996) ((as const (Array (_ BitVec 32) ValueCell!13863)) mapDefault!45542)))))

(declare-fun b!1163242 () Bool)

(declare-fun lt!523983 () Bool)

(declare-fun e!661473 () Bool)

(declare-fun k0!934 () (_ BitVec 64))

(assert (=> b!1163242 (= e!661473 (ite (= k0!934 #b0000000000000000000000000000000000000000000000000000000000000000) (not lt!523983) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!1163243 () Bool)

(declare-fun res!771563 () Bool)

(assert (=> b!1163243 (=> (not res!771563) (not e!661479))))

(assert (=> b!1163243 (= res!771563 (= (select (arr!36187 _keys!1208) i!673) k0!934))))

(declare-fun b!1163244 () Bool)

(declare-fun call!56922 () Bool)

(assert (=> b!1163244 call!56922))

(declare-datatypes ((Unit!38282 0))(
  ( (Unit!38283) )
))
(declare-fun lt!523977 () Unit!38282)

(declare-fun call!56924 () Unit!38282)

(assert (=> b!1163244 (= lt!523977 call!56924)))

(declare-fun e!661471 () Unit!38282)

(assert (=> b!1163244 (= e!661471 lt!523977)))

(declare-fun call!56928 () ListLongMap!16709)

(declare-fun c!116343 () Bool)

(declare-fun bm!56918 () Bool)

(declare-fun lt!523989 () ListLongMap!16709)

(declare-fun c!116344 () Bool)

(declare-fun +!3691 (ListLongMap!16709 tuple2!18728) ListLongMap!16709)

(assert (=> bm!56918 (= call!56928 (+!3691 lt!523989 (ite (or c!116344 c!116343) (tuple2!18729 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!18729 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944))))))

(declare-fun b!1163245 () Bool)

(declare-fun res!771554 () Bool)

(assert (=> b!1163245 (=> (not res!771554) (not e!661479))))

(assert (=> b!1163245 (= res!771554 (and (= (size!36725 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!36724 _keys!1208) (size!36725 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1163246 () Bool)

(declare-fun e!661475 () Unit!38282)

(declare-fun Unit!38284 () Unit!38282)

(assert (=> b!1163246 (= e!661475 Unit!38284)))

(declare-fun b!1163247 () Bool)

(declare-fun lt!523984 () ListLongMap!16709)

(declare-fun contains!6848 (ListLongMap!16709 (_ BitVec 64)) Bool)

(assert (=> b!1163247 (contains!6848 (+!3691 lt!523984 (tuple2!18729 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944)) k0!934)))

(declare-fun lt!523993 () Unit!38282)

(declare-fun call!56925 () Unit!38282)

(assert (=> b!1163247 (= lt!523993 call!56925)))

(declare-fun call!56927 () Bool)

(assert (=> b!1163247 call!56927))

(assert (=> b!1163247 (= lt!523984 call!56928)))

(declare-fun lt!523981 () Unit!38282)

(declare-fun addStillContains!989 (ListLongMap!16709 (_ BitVec 64) V!43987 (_ BitVec 64)) Unit!38282)

(assert (=> b!1163247 (= lt!523981 (addStillContains!989 lt!523989 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944 k0!934))))

(declare-fun e!661480 () Unit!38282)

(assert (=> b!1163247 (= e!661480 lt!523993)))

(declare-fun b!1163248 () Bool)

(declare-fun e!661483 () Unit!38282)

(declare-fun lt!523974 () Unit!38282)

(assert (=> b!1163248 (= e!661483 lt!523974)))

(assert (=> b!1163248 (= lt!523974 call!56924)))

(assert (=> b!1163248 call!56922))

(declare-fun b!1163249 () Bool)

(declare-fun e!661474 () Bool)

(assert (=> b!1163249 (= e!661474 true)))

(declare-fun e!661478 () Bool)

(assert (=> b!1163249 e!661478))

(declare-fun res!771560 () Bool)

(assert (=> b!1163249 (=> (not res!771560) (not e!661478))))

(declare-fun lt!523987 () ListLongMap!16709)

(assert (=> b!1163249 (= res!771560 (= lt!523987 lt!523989))))

(declare-fun -!1436 (ListLongMap!16709 (_ BitVec 64)) ListLongMap!16709)

(assert (=> b!1163249 (= lt!523987 (-!1436 lt!523975 k0!934))))

(declare-fun lt!523992 () V!43987)

(assert (=> b!1163249 (= (-!1436 (+!3691 lt!523989 (tuple2!18729 (select (arr!36187 _keys!1208) from!1455) lt!523992)) (select (arr!36187 _keys!1208) from!1455)) lt!523989)))

(declare-fun lt!523988 () Unit!38282)

(declare-fun addThenRemoveForNewKeyIsSame!269 (ListLongMap!16709 (_ BitVec 64) V!43987) Unit!38282)

(assert (=> b!1163249 (= lt!523988 (addThenRemoveForNewKeyIsSame!269 lt!523989 (select (arr!36187 _keys!1208) from!1455) lt!523992))))

(declare-fun get!18495 (ValueCell!13863 V!43987) V!43987)

(assert (=> b!1163249 (= lt!523992 (get!18495 (select (arr!36188 _values!996) from!1455) lt!523994))))

(declare-fun lt!523985 () Unit!38282)

(assert (=> b!1163249 (= lt!523985 e!661475)))

(declare-fun c!116346 () Bool)

(assert (=> b!1163249 (= c!116346 (contains!6848 lt!523989 k0!934))))

(assert (=> b!1163249 (= lt!523989 (getCurrentListMapNoExtraKeys!4804 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun res!771551 () Bool)

(assert (=> start!99046 (=> (not res!771551) (not e!661479))))

(assert (=> start!99046 (= res!771551 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!36724 _keys!1208))))))

(assert (=> start!99046 e!661479))

(assert (=> start!99046 tp_is_empty!29145))

(declare-fun array_inv!27558 (array!75080) Bool)

(assert (=> start!99046 (array_inv!27558 _keys!1208)))

(assert (=> start!99046 true))

(assert (=> start!99046 tp!86557))

(declare-fun array_inv!27559 (array!75082) Bool)

(assert (=> start!99046 (and (array_inv!27559 _values!996) e!661477)))

(declare-fun call!56923 () ListLongMap!16709)

(declare-fun bm!56919 () Bool)

(assert (=> bm!56919 (= call!56923 (getCurrentListMapNoExtraKeys!4804 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1163250 () Bool)

(declare-fun e!661485 () Bool)

(declare-fun call!56926 () ListLongMap!16709)

(assert (=> b!1163250 (= e!661485 (= call!56926 call!56923))))

(declare-fun bm!56920 () Bool)

(assert (=> bm!56920 (= call!56924 call!56925)))

(declare-fun bm!56921 () Bool)

(declare-fun call!56921 () ListLongMap!16709)

(assert (=> bm!56921 (= call!56921 call!56928)))

(declare-fun bm!56922 () Bool)

(assert (=> bm!56922 (= call!56926 (getCurrentListMapNoExtraKeys!4804 lt!523991 lt!523979 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1163251 () Bool)

(declare-fun e!661476 () Bool)

(assert (=> b!1163251 (= e!661476 (not e!661484))))

(declare-fun res!771555 () Bool)

(assert (=> b!1163251 (=> res!771555 e!661484)))

(assert (=> b!1163251 (= res!771555 (bvsgt from!1455 i!673))))

(declare-fun arrayContainsKey!0 (array!75080 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1163251 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-fun lt!523978 () Unit!38282)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!75080 (_ BitVec 64) (_ BitVec 32)) Unit!38282)

(assert (=> b!1163251 (= lt!523978 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1163252 () Bool)

(declare-fun res!771558 () Bool)

(assert (=> b!1163252 (=> (not res!771558) (not e!661479))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1163252 (= res!771558 (validMask!0 mask!1564))))

(declare-fun bm!56923 () Bool)

(assert (=> bm!56923 (= call!56925 (addStillContains!989 (ite c!116344 lt!523984 lt!523989) (ite c!116344 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!116343 #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000)) (ite c!116344 minValue!944 (ite c!116343 zeroValue!944 minValue!944)) k0!934))))

(declare-fun b!1163253 () Bool)

(assert (=> b!1163253 (= e!661478 (= lt!523987 (getCurrentListMapNoExtraKeys!4804 lt!523991 lt!523979 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004)))))

(declare-fun b!1163254 () Bool)

(declare-fun e!661482 () Bool)

(assert (=> b!1163254 (= e!661482 tp_is_empty!29145)))

(declare-fun mapNonEmpty!45542 () Bool)

(declare-fun tp!86556 () Bool)

(assert (=> mapNonEmpty!45542 (= mapRes!45542 (and tp!86556 e!661482))))

(declare-fun mapRest!45542 () (Array (_ BitVec 32) ValueCell!13863))

(declare-fun mapKey!45542 () (_ BitVec 32))

(declare-fun mapValue!45542 () ValueCell!13863)

(assert (=> mapNonEmpty!45542 (= (arr!36188 _values!996) (store mapRest!45542 mapKey!45542 mapValue!45542))))

(declare-fun b!1163255 () Bool)

(assert (=> b!1163255 (= e!661485 (= call!56926 (-!1436 call!56923 k0!934)))))

(declare-fun b!1163256 () Bool)

(assert (=> b!1163256 (= e!661483 e!661471)))

(declare-fun c!116342 () Bool)

(assert (=> b!1163256 (= c!116342 (and (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!523983))))

(declare-fun mapIsEmpty!45542 () Bool)

(assert (=> mapIsEmpty!45542 mapRes!45542))

(declare-fun bm!56924 () Bool)

(assert (=> bm!56924 (= call!56922 call!56927)))

(declare-fun b!1163257 () Bool)

(assert (=> b!1163257 (= e!661479 e!661476)))

(declare-fun res!771559 () Bool)

(assert (=> b!1163257 (=> (not res!771559) (not e!661476))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!75080 (_ BitVec 32)) Bool)

(assert (=> b!1163257 (= res!771559 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!523991 mask!1564))))

(assert (=> b!1163257 (= lt!523991 (array!75081 (store (arr!36187 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!36724 _keys!1208)))))

(declare-fun b!1163258 () Bool)

(declare-fun res!771552 () Bool)

(assert (=> b!1163258 (=> (not res!771552) (not e!661479))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1163258 (= res!771552 (validKeyInArray!0 k0!934))))

(declare-fun b!1163259 () Bool)

(assert (=> b!1163259 (= e!661473 (arrayContainsKey!0 _keys!1208 k0!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun bm!56925 () Bool)

(assert (=> bm!56925 (= call!56927 (contains!6848 (ite c!116344 lt!523984 call!56921) k0!934))))

(declare-fun b!1163260 () Bool)

(declare-fun e!661481 () Bool)

(assert (=> b!1163260 (= e!661481 (arrayContainsKey!0 _keys!1208 k0!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun b!1163261 () Bool)

(assert (=> b!1163261 (= c!116343 (and (not lt!523983) (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(assert (=> b!1163261 (= e!661480 e!661483)))

(declare-fun b!1163262 () Bool)

(declare-fun res!771549 () Bool)

(assert (=> b!1163262 (=> (not res!771549) (not e!661479))))

(assert (=> b!1163262 (= res!771549 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1163263 () Bool)

(declare-fun res!771557 () Bool)

(assert (=> b!1163263 (=> (not res!771557) (not e!661479))))

(declare-datatypes ((List!25504 0))(
  ( (Nil!25501) (Cons!25500 (h!26709 (_ BitVec 64)) (t!37118 List!25504)) )
))
(declare-fun arrayNoDuplicates!0 (array!75080 (_ BitVec 32) List!25504) Bool)

(assert (=> b!1163263 (= res!771557 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!25501))))

(declare-fun b!1163264 () Bool)

(declare-fun res!771556 () Bool)

(assert (=> b!1163264 (=> (not res!771556) (not e!661476))))

(assert (=> b!1163264 (= res!771556 (arrayNoDuplicates!0 lt!523991 #b00000000000000000000000000000000 Nil!25501))))

(declare-fun b!1163265 () Bool)

(declare-fun Unit!38285 () Unit!38282)

(assert (=> b!1163265 (= e!661475 Unit!38285)))

(assert (=> b!1163265 (= lt!523983 (= (bvand extraKeys!923 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(assert (=> b!1163265 (= c!116344 (and (not lt!523983) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun lt!523986 () Unit!38282)

(assert (=> b!1163265 (= lt!523986 e!661480)))

(declare-fun lt!523995 () Unit!38282)

(declare-fun lemmaListMapContainsThenArrayContainsFrom!557 (array!75080 array!75082 (_ BitVec 32) (_ BitVec 32) V!43987 V!43987 (_ BitVec 64) (_ BitVec 32) Int) Unit!38282)

(assert (=> b!1163265 (= lt!523995 (lemmaListMapContainsThenArrayContainsFrom!557 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun c!116345 () Bool)

(assert (=> b!1163265 (= c!116345 (and (not (= k0!934 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!934 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun res!771562 () Bool)

(assert (=> b!1163265 (= res!771562 e!661473)))

(assert (=> b!1163265 (=> (not res!771562) (not e!661481))))

(assert (=> b!1163265 e!661481))

(declare-fun lt!523980 () Unit!38282)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!75080 (_ BitVec 32) (_ BitVec 32)) Unit!38282)

(assert (=> b!1163265 (= lt!523980 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1208 #b00000000000000000000000000000000 from!1455))))

(assert (=> b!1163265 (arrayNoDuplicates!0 _keys!1208 from!1455 Nil!25501)))

(declare-fun lt!523982 () Unit!38282)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!75080 (_ BitVec 64) (_ BitVec 32) List!25504) Unit!38282)

(assert (=> b!1163265 (= lt!523982 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!1208 k0!934 from!1455 Nil!25501))))

(assert (=> b!1163265 false))

(declare-fun b!1163266 () Bool)

(declare-fun Unit!38286 () Unit!38282)

(assert (=> b!1163266 (= e!661471 Unit!38286)))

(declare-fun b!1163267 () Bool)

(assert (=> b!1163267 (= e!661469 e!661474)))

(declare-fun res!771550 () Bool)

(assert (=> b!1163267 (=> res!771550 e!661474)))

(assert (=> b!1163267 (= res!771550 (not (= (select (arr!36187 _keys!1208) from!1455) k0!934)))))

(assert (=> b!1163267 e!661485))

(declare-fun c!116341 () Bool)

(assert (=> b!1163267 (= c!116341 (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673))))

(declare-fun lt!523976 () Unit!38282)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!660 (array!75080 array!75082 (_ BitVec 32) (_ BitVec 32) V!43987 V!43987 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!38282)

(assert (=> b!1163267 (= lt!523976 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!660 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(assert (= (and start!99046 res!771551) b!1163252))

(assert (= (and b!1163252 res!771558) b!1163245))

(assert (= (and b!1163245 res!771554) b!1163262))

(assert (= (and b!1163262 res!771549) b!1163263))

(assert (= (and b!1163263 res!771557) b!1163239))

(assert (= (and b!1163239 res!771553) b!1163258))

(assert (= (and b!1163258 res!771552) b!1163243))

(assert (= (and b!1163243 res!771563) b!1163257))

(assert (= (and b!1163257 res!771559) b!1163264))

(assert (= (and b!1163264 res!771556) b!1163251))

(assert (= (and b!1163251 (not res!771555)) b!1163238))

(assert (= (and b!1163238 (not res!771561)) b!1163267))

(assert (= (and b!1163267 c!116341) b!1163255))

(assert (= (and b!1163267 (not c!116341)) b!1163250))

(assert (= (or b!1163255 b!1163250) bm!56922))

(assert (= (or b!1163255 b!1163250) bm!56919))

(assert (= (and b!1163267 (not res!771550)) b!1163249))

(assert (= (and b!1163249 c!116346) b!1163265))

(assert (= (and b!1163249 (not c!116346)) b!1163246))

(assert (= (and b!1163265 c!116344) b!1163247))

(assert (= (and b!1163265 (not c!116344)) b!1163261))

(assert (= (and b!1163261 c!116343) b!1163248))

(assert (= (and b!1163261 (not c!116343)) b!1163256))

(assert (= (and b!1163256 c!116342) b!1163244))

(assert (= (and b!1163256 (not c!116342)) b!1163266))

(assert (= (or b!1163248 b!1163244) bm!56920))

(assert (= (or b!1163248 b!1163244) bm!56921))

(assert (= (or b!1163248 b!1163244) bm!56924))

(assert (= (or b!1163247 bm!56924) bm!56925))

(assert (= (or b!1163247 bm!56920) bm!56923))

(assert (= (or b!1163247 bm!56921) bm!56918))

(assert (= (and b!1163265 c!116345) b!1163259))

(assert (= (and b!1163265 (not c!116345)) b!1163242))

(assert (= (and b!1163265 res!771562) b!1163260))

(assert (= (and b!1163249 res!771560) b!1163253))

(assert (= (and b!1163241 condMapEmpty!45542) mapIsEmpty!45542))

(assert (= (and b!1163241 (not condMapEmpty!45542)) mapNonEmpty!45542))

(get-info :version)

(assert (= (and mapNonEmpty!45542 ((_ is ValueCellFull!13863) mapValue!45542)) b!1163254))

(assert (= (and b!1163241 ((_ is ValueCellFull!13863) mapDefault!45542)) b!1163240))

(assert (= start!99046 b!1163241))

(declare-fun b_lambda!19739 () Bool)

(assert (=> (not b_lambda!19739) (not b!1163238)))

(declare-fun t!37116 () Bool)

(declare-fun tb!9435 () Bool)

(assert (=> (and start!99046 (= defaultEntry!1004 defaultEntry!1004) t!37116) tb!9435))

(declare-fun result!19427 () Bool)

(assert (=> tb!9435 (= result!19427 tp_is_empty!29145)))

(assert (=> b!1163238 t!37116))

(declare-fun b_and!40095 () Bool)

(assert (= b_and!40093 (and (=> t!37116 result!19427) b_and!40095)))

(declare-fun m!1071871 () Bool)

(assert (=> b!1163255 m!1071871))

(declare-fun m!1071873 () Bool)

(assert (=> b!1163247 m!1071873))

(assert (=> b!1163247 m!1071873))

(declare-fun m!1071875 () Bool)

(assert (=> b!1163247 m!1071875))

(declare-fun m!1071877 () Bool)

(assert (=> b!1163247 m!1071877))

(declare-fun m!1071879 () Bool)

(assert (=> bm!56918 m!1071879))

(declare-fun m!1071881 () Bool)

(assert (=> b!1163263 m!1071881))

(declare-fun m!1071883 () Bool)

(assert (=> b!1163262 m!1071883))

(declare-fun m!1071885 () Bool)

(assert (=> b!1163260 m!1071885))

(declare-fun m!1071887 () Bool)

(assert (=> bm!56922 m!1071887))

(assert (=> b!1163253 m!1071887))

(declare-fun m!1071889 () Bool)

(assert (=> b!1163265 m!1071889))

(declare-fun m!1071891 () Bool)

(assert (=> b!1163265 m!1071891))

(declare-fun m!1071893 () Bool)

(assert (=> b!1163265 m!1071893))

(declare-fun m!1071895 () Bool)

(assert (=> b!1163265 m!1071895))

(assert (=> b!1163259 m!1071885))

(declare-fun m!1071897 () Bool)

(assert (=> b!1163243 m!1071897))

(declare-fun m!1071899 () Bool)

(assert (=> b!1163267 m!1071899))

(declare-fun m!1071901 () Bool)

(assert (=> b!1163267 m!1071901))

(declare-fun m!1071903 () Bool)

(assert (=> b!1163257 m!1071903))

(declare-fun m!1071905 () Bool)

(assert (=> b!1163257 m!1071905))

(declare-fun m!1071907 () Bool)

(assert (=> b!1163249 m!1071907))

(declare-fun m!1071909 () Bool)

(assert (=> b!1163249 m!1071909))

(declare-fun m!1071911 () Bool)

(assert (=> b!1163249 m!1071911))

(assert (=> b!1163249 m!1071909))

(declare-fun m!1071913 () Bool)

(assert (=> b!1163249 m!1071913))

(declare-fun m!1071915 () Bool)

(assert (=> b!1163249 m!1071915))

(assert (=> b!1163249 m!1071899))

(assert (=> b!1163249 m!1071915))

(assert (=> b!1163249 m!1071899))

(declare-fun m!1071917 () Bool)

(assert (=> b!1163249 m!1071917))

(declare-fun m!1071919 () Bool)

(assert (=> b!1163249 m!1071919))

(assert (=> b!1163249 m!1071899))

(declare-fun m!1071921 () Bool)

(assert (=> b!1163249 m!1071921))

(declare-fun m!1071923 () Bool)

(assert (=> mapNonEmpty!45542 m!1071923))

(declare-fun m!1071925 () Bool)

(assert (=> start!99046 m!1071925))

(declare-fun m!1071927 () Bool)

(assert (=> start!99046 m!1071927))

(assert (=> bm!56919 m!1071907))

(declare-fun m!1071929 () Bool)

(assert (=> bm!56925 m!1071929))

(declare-fun m!1071931 () Bool)

(assert (=> b!1163258 m!1071931))

(declare-fun m!1071933 () Bool)

(assert (=> b!1163238 m!1071933))

(declare-fun m!1071935 () Bool)

(assert (=> b!1163238 m!1071935))

(declare-fun m!1071937 () Bool)

(assert (=> b!1163238 m!1071937))

(declare-fun m!1071939 () Bool)

(assert (=> b!1163238 m!1071939))

(declare-fun m!1071941 () Bool)

(assert (=> b!1163251 m!1071941))

(declare-fun m!1071943 () Bool)

(assert (=> b!1163251 m!1071943))

(declare-fun m!1071945 () Bool)

(assert (=> b!1163252 m!1071945))

(declare-fun m!1071947 () Bool)

(assert (=> b!1163264 m!1071947))

(declare-fun m!1071949 () Bool)

(assert (=> bm!56923 m!1071949))

(check-sat (not b!1163259) b_and!40095 (not b!1163257) (not b!1163252) (not b!1163253) (not b_lambda!19739) (not b!1163247) (not bm!56919) (not b!1163251) (not bm!56925) (not b!1163260) (not b_next!24615) (not b!1163264) (not b!1163265) (not mapNonEmpty!45542) (not start!99046) (not b!1163263) (not b!1163255) (not b!1163267) tp_is_empty!29145 (not b!1163249) (not b!1163258) (not bm!56922) (not b!1163262) (not bm!56918) (not b!1163238) (not bm!56923))
(check-sat b_and!40095 (not b_next!24615))
