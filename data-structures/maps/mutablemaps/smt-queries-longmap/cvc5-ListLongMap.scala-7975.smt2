; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!98726 () Bool)

(assert start!98726)

(declare-fun b_free!24295 () Bool)

(declare-fun b_next!24295 () Bool)

(assert (=> start!98726 (= b_free!24295 (not b_next!24295))))

(declare-fun tp!85597 () Bool)

(declare-fun b_and!39453 () Bool)

(assert (=> start!98726 (= tp!85597 b_and!39453)))

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun e!653317 () Bool)

(declare-fun b!1148518 () Bool)

(declare-fun lt!513436 () Bool)

(declare-fun k!934 () (_ BitVec 64))

(assert (=> b!1148518 (= e!653317 (ite (= k!934 #b0000000000000000000000000000000000000000000000000000000000000000) (not lt!513436) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!1148519 () Bool)

(declare-fun e!653325 () Bool)

(declare-fun tp_is_empty!28825 () Bool)

(assert (=> b!1148519 (= e!653325 tp_is_empty!28825)))

(declare-fun bm!53078 () Bool)

(declare-fun call!53086 () Bool)

(declare-fun call!53083 () Bool)

(assert (=> bm!53078 (= call!53086 call!53083)))

(declare-datatypes ((V!43561 0))(
  ( (V!43562 (val!14469 Int)) )
))
(declare-fun zeroValue!944 () V!43561)

(declare-datatypes ((tuple2!18430 0))(
  ( (tuple2!18431 (_1!9225 (_ BitVec 64)) (_2!9225 V!43561)) )
))
(declare-datatypes ((List!25223 0))(
  ( (Nil!25220) (Cons!25219 (h!26428 tuple2!18430) (t!36517 List!25223)) )
))
(declare-datatypes ((ListLongMap!16411 0))(
  ( (ListLongMap!16412 (toList!8221 List!25223)) )
))
(declare-fun lt!513433 () ListLongMap!16411)

(declare-fun lt!513432 () ListLongMap!16411)

(declare-datatypes ((Unit!37663 0))(
  ( (Unit!37664) )
))
(declare-fun call!53088 () Unit!37663)

(declare-fun c!113464 () Bool)

(declare-fun minValue!944 () V!43561)

(declare-fun c!113466 () Bool)

(declare-fun bm!53079 () Bool)

(declare-fun addStillContains!859 (ListLongMap!16411 (_ BitVec 64) V!43561 (_ BitVec 64)) Unit!37663)

(assert (=> bm!53079 (= call!53088 (addStillContains!859 (ite c!113464 lt!513433 lt!513432) (ite c!113464 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!113466 #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000)) (ite c!113464 minValue!944 (ite c!113466 zeroValue!944 minValue!944)) k!934))))

(declare-fun b!1148520 () Bool)

(declare-fun e!653318 () Unit!37663)

(declare-fun Unit!37665 () Unit!37663)

(assert (=> b!1148520 (= e!653318 Unit!37665)))

(declare-fun bm!53080 () Bool)

(declare-fun call!53082 () ListLongMap!16411)

(declare-fun call!53081 () ListLongMap!16411)

(assert (=> bm!53080 (= call!53082 call!53081)))

(declare-fun b!1148521 () Bool)

(declare-fun res!764360 () Bool)

(declare-fun e!653324 () Bool)

(assert (=> b!1148521 (=> (not res!764360) (not e!653324))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1148521 (= res!764360 (validKeyInArray!0 k!934))))

(declare-fun b!1148522 () Bool)

(declare-fun e!653313 () Bool)

(declare-fun e!653319 () Bool)

(assert (=> b!1148522 (= e!653313 e!653319)))

(declare-fun res!764352 () Bool)

(assert (=> b!1148522 (=> res!764352 e!653319)))

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1148522 (= res!764352 (not (= from!1455 i!673)))))

(declare-datatypes ((array!74454 0))(
  ( (array!74455 (arr!35874 (Array (_ BitVec 32) (_ BitVec 64))) (size!36411 (_ BitVec 32))) )
))
(declare-fun lt!513441 () array!74454)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-fun lt!513431 () ListLongMap!16411)

(declare-datatypes ((ValueCell!13703 0))(
  ( (ValueCellFull!13703 (v!17107 V!43561)) (EmptyCell!13703) )
))
(declare-datatypes ((array!74456 0))(
  ( (array!74457 (arr!35875 (Array (_ BitVec 32) ValueCell!13703)) (size!36412 (_ BitVec 32))) )
))
(declare-fun lt!513434 () array!74456)

(declare-fun getCurrentListMapNoExtraKeys!4662 (array!74454 array!74456 (_ BitVec 32) (_ BitVec 32) V!43561 V!43561 (_ BitVec 32) Int) ListLongMap!16411)

(assert (=> b!1148522 (= lt!513431 (getCurrentListMapNoExtraKeys!4662 lt!513441 lt!513434 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun lt!513435 () V!43561)

(declare-fun _values!996 () array!74456)

(assert (=> b!1148522 (= lt!513434 (array!74457 (store (arr!35875 _values!996) i!673 (ValueCellFull!13703 lt!513435)) (size!36412 _values!996)))))

(declare-fun dynLambda!2693 (Int (_ BitVec 64)) V!43561)

(assert (=> b!1148522 (= lt!513435 (dynLambda!2693 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun _keys!1208 () array!74454)

(declare-fun lt!513430 () ListLongMap!16411)

(assert (=> b!1148522 (= lt!513430 (getCurrentListMapNoExtraKeys!4662 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1148523 () Bool)

(declare-fun res!764351 () Bool)

(assert (=> b!1148523 (=> (not res!764351) (not e!653324))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!74454 (_ BitVec 32)) Bool)

(assert (=> b!1148523 (= res!764351 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun res!764356 () Bool)

(assert (=> start!98726 (=> (not res!764356) (not e!653324))))

(assert (=> start!98726 (= res!764356 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!36411 _keys!1208))))))

(assert (=> start!98726 e!653324))

(assert (=> start!98726 tp_is_empty!28825))

(declare-fun array_inv!27356 (array!74454) Bool)

(assert (=> start!98726 (array_inv!27356 _keys!1208)))

(assert (=> start!98726 true))

(assert (=> start!98726 tp!85597))

(declare-fun e!653309 () Bool)

(declare-fun array_inv!27357 (array!74456) Bool)

(assert (=> start!98726 (and (array_inv!27357 _values!996) e!653309)))

(declare-fun mapNonEmpty!45062 () Bool)

(declare-fun mapRes!45062 () Bool)

(declare-fun tp!85596 () Bool)

(declare-fun e!653321 () Bool)

(assert (=> mapNonEmpty!45062 (= mapRes!45062 (and tp!85596 e!653321))))

(declare-fun mapRest!45062 () (Array (_ BitVec 32) ValueCell!13703))

(declare-fun mapValue!45062 () ValueCell!13703)

(declare-fun mapKey!45062 () (_ BitVec 32))

(assert (=> mapNonEmpty!45062 (= (arr!35875 _values!996) (store mapRest!45062 mapKey!45062 mapValue!45062))))

(declare-fun b!1148524 () Bool)

(declare-fun e!653315 () Unit!37663)

(declare-fun Unit!37666 () Unit!37663)

(assert (=> b!1148524 (= e!653315 Unit!37666)))

(declare-fun b!1148525 () Bool)

(declare-fun e!653316 () Bool)

(declare-fun call!53084 () ListLongMap!16411)

(declare-fun call!53085 () ListLongMap!16411)

(assert (=> b!1148525 (= e!653316 (= call!53084 call!53085))))

(declare-fun b!1148526 () Bool)

(declare-fun res!764359 () Bool)

(declare-fun e!653320 () Bool)

(assert (=> b!1148526 (=> (not res!764359) (not e!653320))))

(declare-datatypes ((List!25224 0))(
  ( (Nil!25221) (Cons!25220 (h!26429 (_ BitVec 64)) (t!36518 List!25224)) )
))
(declare-fun arrayNoDuplicates!0 (array!74454 (_ BitVec 32) List!25224) Bool)

(assert (=> b!1148526 (= res!764359 (arrayNoDuplicates!0 lt!513441 #b00000000000000000000000000000000 Nil!25221))))

(declare-fun b!1148527 () Bool)

(declare-fun res!764361 () Bool)

(assert (=> b!1148527 (=> (not res!764361) (not e!653324))))

(assert (=> b!1148527 (= res!764361 (= (select (arr!35874 _keys!1208) i!673) k!934))))

(declare-fun bm!53081 () Bool)

(assert (=> bm!53081 (= call!53084 (getCurrentListMapNoExtraKeys!4662 lt!513441 lt!513434 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1148528 () Bool)

(assert (=> b!1148528 (= e!653321 tp_is_empty!28825)))

(declare-fun b!1148529 () Bool)

(assert (=> b!1148529 call!53086))

(declare-fun lt!513447 () Unit!37663)

(declare-fun call!53087 () Unit!37663)

(assert (=> b!1148529 (= lt!513447 call!53087)))

(assert (=> b!1148529 (= e!653315 lt!513447)))

(declare-fun mapIsEmpty!45062 () Bool)

(assert (=> mapIsEmpty!45062 mapRes!45062))

(declare-fun b!1148530 () Bool)

(declare-fun contains!6717 (ListLongMap!16411 (_ BitVec 64)) Bool)

(assert (=> b!1148530 (contains!6717 call!53081 k!934)))

(declare-fun lt!513440 () Unit!37663)

(assert (=> b!1148530 (= lt!513440 call!53088)))

(assert (=> b!1148530 call!53083))

(declare-fun +!3560 (ListLongMap!16411 tuple2!18430) ListLongMap!16411)

(assert (=> b!1148530 (= lt!513433 (+!3560 lt!513432 (tuple2!18431 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944)))))

(declare-fun lt!513437 () Unit!37663)

(assert (=> b!1148530 (= lt!513437 (addStillContains!859 lt!513432 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944 k!934))))

(declare-fun e!653314 () Unit!37663)

(assert (=> b!1148530 (= e!653314 lt!513440)))

(declare-fun b!1148531 () Bool)

(declare-fun e!653322 () Bool)

(assert (=> b!1148531 (= e!653319 e!653322)))

(declare-fun res!764354 () Bool)

(assert (=> b!1148531 (=> res!764354 e!653322)))

(assert (=> b!1148531 (= res!764354 (not (= (select (arr!35874 _keys!1208) from!1455) k!934)))))

(assert (=> b!1148531 e!653316))

(declare-fun c!113461 () Bool)

(assert (=> b!1148531 (= c!113461 (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673))))

(declare-fun lt!513438 () Unit!37663)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!553 (array!74454 array!74456 (_ BitVec 32) (_ BitVec 32) V!43561 V!43561 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!37663)

(assert (=> b!1148531 (= lt!513438 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!553 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1148532 () Bool)

(declare-fun Unit!37667 () Unit!37663)

(assert (=> b!1148532 (= e!653318 Unit!37667)))

(assert (=> b!1148532 (= lt!513436 (= (bvand extraKeys!923 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(assert (=> b!1148532 (= c!113464 (and (not lt!513436) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun lt!513449 () Unit!37663)

(assert (=> b!1148532 (= lt!513449 e!653314)))

(declare-fun lt!513444 () Unit!37663)

(declare-fun lemmaListMapContainsThenArrayContainsFrom!445 (array!74454 array!74456 (_ BitVec 32) (_ BitVec 32) V!43561 V!43561 (_ BitVec 64) (_ BitVec 32) Int) Unit!37663)

(assert (=> b!1148532 (= lt!513444 (lemmaListMapContainsThenArrayContainsFrom!445 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun c!113462 () Bool)

(assert (=> b!1148532 (= c!113462 (and (not (= k!934 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!934 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun res!764357 () Bool)

(assert (=> b!1148532 (= res!764357 e!653317)))

(declare-fun e!653312 () Bool)

(assert (=> b!1148532 (=> (not res!764357) (not e!653312))))

(assert (=> b!1148532 e!653312))

(declare-fun lt!513443 () Unit!37663)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!74454 (_ BitVec 32) (_ BitVec 32)) Unit!37663)

(assert (=> b!1148532 (= lt!513443 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1208 #b00000000000000000000000000000000 from!1455))))

(assert (=> b!1148532 (arrayNoDuplicates!0 _keys!1208 from!1455 Nil!25221)))

(declare-fun lt!513442 () Unit!37663)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!74454 (_ BitVec 64) (_ BitVec 32) List!25224) Unit!37663)

(assert (=> b!1148532 (= lt!513442 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!1208 k!934 from!1455 Nil!25221))))

(assert (=> b!1148532 false))

(declare-fun bm!53082 () Bool)

(assert (=> bm!53082 (= call!53085 (getCurrentListMapNoExtraKeys!4662 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1148533 () Bool)

(assert (=> b!1148533 (= e!653320 (not e!653313))))

(declare-fun res!764355 () Bool)

(assert (=> b!1148533 (=> res!764355 e!653313)))

(assert (=> b!1148533 (= res!764355 (bvsgt from!1455 i!673))))

(declare-fun arrayContainsKey!0 (array!74454 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1148533 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-fun lt!513450 () Unit!37663)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!74454 (_ BitVec 64) (_ BitVec 32)) Unit!37663)

(assert (=> b!1148533 (= lt!513450 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun b!1148534 () Bool)

(declare-fun e!653323 () Unit!37663)

(assert (=> b!1148534 (= e!653323 e!653315)))

(declare-fun c!113465 () Bool)

(assert (=> b!1148534 (= c!113465 (and (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!513436))))

(declare-fun b!1148535 () Bool)

(assert (=> b!1148535 (= e!653312 (arrayContainsKey!0 _keys!1208 k!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun b!1148536 () Bool)

(assert (=> b!1148536 (= e!653322 true)))

(declare-fun e!653310 () Bool)

(assert (=> b!1148536 e!653310))

(declare-fun res!764349 () Bool)

(assert (=> b!1148536 (=> (not res!764349) (not e!653310))))

(declare-fun lt!513448 () V!43561)

(declare-fun -!1310 (ListLongMap!16411 (_ BitVec 64)) ListLongMap!16411)

(assert (=> b!1148536 (= res!764349 (= (-!1310 (+!3560 lt!513432 (tuple2!18431 (select (arr!35874 _keys!1208) from!1455) lt!513448)) (select (arr!35874 _keys!1208) from!1455)) lt!513432))))

(declare-fun lt!513439 () Unit!37663)

(declare-fun addThenRemoveForNewKeyIsSame!159 (ListLongMap!16411 (_ BitVec 64) V!43561) Unit!37663)

(assert (=> b!1148536 (= lt!513439 (addThenRemoveForNewKeyIsSame!159 lt!513432 (select (arr!35874 _keys!1208) from!1455) lt!513448))))

(declare-fun get!18279 (ValueCell!13703 V!43561) V!43561)

(assert (=> b!1148536 (= lt!513448 (get!18279 (select (arr!35875 _values!996) from!1455) lt!513435))))

(declare-fun lt!513446 () Unit!37663)

(assert (=> b!1148536 (= lt!513446 e!653318)))

(declare-fun c!113463 () Bool)

(assert (=> b!1148536 (= c!113463 (contains!6717 lt!513432 k!934))))

(assert (=> b!1148536 (= lt!513432 (getCurrentListMapNoExtraKeys!4662 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1148537 () Bool)

(declare-fun lt!513445 () Unit!37663)

(assert (=> b!1148537 (= e!653323 lt!513445)))

(assert (=> b!1148537 (= lt!513445 call!53087)))

(assert (=> b!1148537 call!53086))

(declare-fun bm!53083 () Bool)

(assert (=> bm!53083 (= call!53081 (+!3560 (ite c!113464 lt!513433 lt!513432) (ite c!113464 (tuple2!18431 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944) (ite c!113466 (tuple2!18431 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!18431 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944)))))))

(declare-fun b!1148538 () Bool)

(declare-fun res!764353 () Bool)

(assert (=> b!1148538 (=> (not res!764353) (not e!653324))))

(assert (=> b!1148538 (= res!764353 (and (= (size!36412 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!36411 _keys!1208) (size!36412 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun bm!53084 () Bool)

(assert (=> bm!53084 (= call!53083 (contains!6717 (ite c!113464 lt!513433 call!53082) k!934))))

(declare-fun b!1148539 () Bool)

(declare-fun res!764358 () Bool)

(assert (=> b!1148539 (=> (not res!764358) (not e!653324))))

(assert (=> b!1148539 (= res!764358 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!25221))))

(declare-fun b!1148540 () Bool)

(assert (=> b!1148540 (= e!653310 (= (-!1310 lt!513430 k!934) lt!513432))))

(declare-fun b!1148541 () Bool)

(assert (=> b!1148541 (= e!653309 (and e!653325 mapRes!45062))))

(declare-fun condMapEmpty!45062 () Bool)

(declare-fun mapDefault!45062 () ValueCell!13703)

