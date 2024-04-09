; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!98964 () Bool)

(assert start!98964)

(declare-fun b_free!24533 () Bool)

(declare-fun b_next!24533 () Bool)

(assert (=> start!98964 (= b_free!24533 (not b_next!24533))))

(declare-fun tp!86310 () Bool)

(declare-fun b_and!39929 () Bool)

(assert (=> start!98964 (= tp!86310 b_and!39929)))

(declare-fun b!1159466 () Bool)

(declare-fun e!659388 () Bool)

(declare-fun tp_is_empty!29063 () Bool)

(assert (=> b!1159466 (= e!659388 tp_is_empty!29063)))

(declare-fun b!1159467 () Bool)

(declare-fun res!769709 () Bool)

(declare-fun e!659383 () Bool)

(assert (=> b!1159467 (=> (not res!769709) (not e!659383))))

(declare-datatypes ((array!74916 0))(
  ( (array!74917 (arr!36105 (Array (_ BitVec 32) (_ BitVec 64))) (size!36642 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!74916)

(declare-fun i!673 () (_ BitVec 32))

(declare-fun k!934 () (_ BitVec 64))

(assert (=> b!1159467 (= res!769709 (= (select (arr!36105 _keys!1208) i!673) k!934))))

(declare-fun b!1159468 () Bool)

(declare-fun e!659385 () Bool)

(assert (=> b!1159468 (= e!659383 e!659385)))

(declare-fun res!769708 () Bool)

(assert (=> b!1159468 (=> (not res!769708) (not e!659385))))

(declare-fun lt!521285 () array!74916)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!74916 (_ BitVec 32)) Bool)

(assert (=> b!1159468 (= res!769708 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!521285 mask!1564))))

(assert (=> b!1159468 (= lt!521285 (array!74917 (store (arr!36105 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!36642 _keys!1208)))))

(declare-datatypes ((V!43877 0))(
  ( (V!43878 (val!14588 Int)) )
))
(declare-fun zeroValue!944 () V!43877)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-datatypes ((tuple2!18646 0))(
  ( (tuple2!18647 (_1!9333 (_ BitVec 64)) (_2!9333 V!43877)) )
))
(declare-datatypes ((List!25424 0))(
  ( (Nil!25421) (Cons!25420 (h!26629 tuple2!18646) (t!36956 List!25424)) )
))
(declare-datatypes ((ListLongMap!16627 0))(
  ( (ListLongMap!16628 (toList!8329 List!25424)) )
))
(declare-fun call!55943 () ListLongMap!16627)

(declare-fun from!1455 () (_ BitVec 32))

(declare-datatypes ((ValueCell!13822 0))(
  ( (ValueCellFull!13822 (v!17226 V!43877)) (EmptyCell!13822) )
))
(declare-datatypes ((array!74918 0))(
  ( (array!74919 (arr!36106 (Array (_ BitVec 32) ValueCell!13822)) (size!36643 (_ BitVec 32))) )
))
(declare-fun lt!521289 () array!74918)

(declare-fun defaultEntry!1004 () Int)

(declare-fun bm!55934 () Bool)

(declare-fun minValue!944 () V!43877)

(declare-fun getCurrentListMapNoExtraKeys!4765 (array!74916 array!74918 (_ BitVec 32) (_ BitVec 32) V!43877 V!43877 (_ BitVec 32) Int) ListLongMap!16627)

(assert (=> bm!55934 (= call!55943 (getCurrentListMapNoExtraKeys!4765 lt!521285 lt!521289 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun e!659378 () Bool)

(declare-fun b!1159469 () Bool)

(declare-fun arrayContainsKey!0 (array!74916 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1159469 (= e!659378 (arrayContainsKey!0 _keys!1208 k!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun call!55938 () ListLongMap!16627)

(declare-fun bm!55935 () Bool)

(declare-fun _values!996 () array!74918)

(assert (=> bm!55935 (= call!55938 (getCurrentListMapNoExtraKeys!4765 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1159470 () Bool)

(declare-fun res!769705 () Bool)

(assert (=> b!1159470 (=> (not res!769705) (not e!659383))))

(assert (=> b!1159470 (= res!769705 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!36642 _keys!1208))))))

(declare-fun b!1159471 () Bool)

(declare-fun e!659384 () Bool)

(declare-fun lt!521269 () ListLongMap!16627)

(assert (=> b!1159471 (= e!659384 (= lt!521269 (getCurrentListMapNoExtraKeys!4765 lt!521285 lt!521289 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004)))))

(declare-fun b!1159472 () Bool)

(declare-datatypes ((Unit!38107 0))(
  ( (Unit!38108) )
))
(declare-fun e!659379 () Unit!38107)

(declare-fun lt!521284 () Unit!38107)

(assert (=> b!1159472 (= e!659379 lt!521284)))

(declare-fun call!55939 () Unit!38107)

(assert (=> b!1159472 (= lt!521284 call!55939)))

(declare-fun call!55944 () Bool)

(assert (=> b!1159472 call!55944))

(declare-fun bm!55936 () Bool)

(declare-fun call!55940 () Bool)

(assert (=> bm!55936 (= call!55944 call!55940)))

(declare-fun b!1159473 () Bool)

(declare-fun e!659393 () Bool)

(assert (=> b!1159473 (= e!659385 (not e!659393))))

(declare-fun res!769704 () Bool)

(assert (=> b!1159473 (=> res!769704 e!659393)))

(assert (=> b!1159473 (= res!769704 (bvsgt from!1455 i!673))))

(assert (=> b!1159473 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-fun lt!521277 () Unit!38107)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!74916 (_ BitVec 64) (_ BitVec 32)) Unit!38107)

(assert (=> b!1159473 (= lt!521277 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun b!1159474 () Bool)

(declare-fun e!659381 () Unit!38107)

(declare-fun Unit!38109 () Unit!38107)

(assert (=> b!1159474 (= e!659381 Unit!38109)))

(declare-fun lt!521287 () Bool)

(assert (=> b!1159474 (= lt!521287 (= (bvand extraKeys!923 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(declare-fun c!115603 () Bool)

(assert (=> b!1159474 (= c!115603 (and (not lt!521287) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun lt!521268 () Unit!38107)

(declare-fun e!659386 () Unit!38107)

(assert (=> b!1159474 (= lt!521268 e!659386)))

(declare-fun lt!521286 () Unit!38107)

(declare-fun lemmaListMapContainsThenArrayContainsFrom!526 (array!74916 array!74918 (_ BitVec 32) (_ BitVec 32) V!43877 V!43877 (_ BitVec 64) (_ BitVec 32) Int) Unit!38107)

(assert (=> b!1159474 (= lt!521286 (lemmaListMapContainsThenArrayContainsFrom!526 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun c!115605 () Bool)

(assert (=> b!1159474 (= c!115605 (and (not (= k!934 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!934 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun res!769717 () Bool)

(assert (=> b!1159474 (= res!769717 e!659378)))

(declare-fun e!659387 () Bool)

(assert (=> b!1159474 (=> (not res!769717) (not e!659387))))

(assert (=> b!1159474 e!659387))

(declare-fun lt!521275 () Unit!38107)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!74916 (_ BitVec 32) (_ BitVec 32)) Unit!38107)

(assert (=> b!1159474 (= lt!521275 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1208 #b00000000000000000000000000000000 from!1455))))

(declare-datatypes ((List!25425 0))(
  ( (Nil!25422) (Cons!25421 (h!26630 (_ BitVec 64)) (t!36957 List!25425)) )
))
(declare-fun arrayNoDuplicates!0 (array!74916 (_ BitVec 32) List!25425) Bool)

(assert (=> b!1159474 (arrayNoDuplicates!0 _keys!1208 from!1455 Nil!25422)))

(declare-fun lt!521273 () Unit!38107)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!74916 (_ BitVec 64) (_ BitVec 32) List!25425) Unit!38107)

(assert (=> b!1159474 (= lt!521273 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!1208 k!934 from!1455 Nil!25422))))

(assert (=> b!1159474 false))

(declare-fun b!1159475 () Bool)

(declare-fun res!769716 () Bool)

(assert (=> b!1159475 (=> (not res!769716) (not e!659383))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1159475 (= res!769716 (validKeyInArray!0 k!934))))

(declare-fun b!1159476 () Bool)

(declare-fun e!659392 () Bool)

(assert (=> b!1159476 (= e!659392 true)))

(assert (=> b!1159476 e!659384))

(declare-fun res!769718 () Bool)

(assert (=> b!1159476 (=> (not res!769718) (not e!659384))))

(declare-fun lt!521270 () ListLongMap!16627)

(assert (=> b!1159476 (= res!769718 (= lt!521269 lt!521270))))

(declare-fun lt!521282 () ListLongMap!16627)

(declare-fun -!1401 (ListLongMap!16627 (_ BitVec 64)) ListLongMap!16627)

(assert (=> b!1159476 (= lt!521269 (-!1401 lt!521282 k!934))))

(declare-fun lt!521283 () V!43877)

(declare-fun +!3655 (ListLongMap!16627 tuple2!18646) ListLongMap!16627)

(assert (=> b!1159476 (= (-!1401 (+!3655 lt!521270 (tuple2!18647 (select (arr!36105 _keys!1208) from!1455) lt!521283)) (select (arr!36105 _keys!1208) from!1455)) lt!521270)))

(declare-fun lt!521281 () Unit!38107)

(declare-fun addThenRemoveForNewKeyIsSame!239 (ListLongMap!16627 (_ BitVec 64) V!43877) Unit!38107)

(assert (=> b!1159476 (= lt!521281 (addThenRemoveForNewKeyIsSame!239 lt!521270 (select (arr!36105 _keys!1208) from!1455) lt!521283))))

(declare-fun lt!521272 () V!43877)

(declare-fun get!18437 (ValueCell!13822 V!43877) V!43877)

(assert (=> b!1159476 (= lt!521283 (get!18437 (select (arr!36106 _values!996) from!1455) lt!521272))))

(declare-fun lt!521280 () Unit!38107)

(assert (=> b!1159476 (= lt!521280 e!659381)))

(declare-fun c!115607 () Bool)

(declare-fun contains!6811 (ListLongMap!16627 (_ BitVec 64)) Bool)

(assert (=> b!1159476 (= c!115607 (contains!6811 lt!521270 k!934))))

(assert (=> b!1159476 (= lt!521270 (getCurrentListMapNoExtraKeys!4765 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1159477 () Bool)

(declare-fun e!659391 () Bool)

(assert (=> b!1159477 (= e!659393 e!659391)))

(declare-fun res!769713 () Bool)

(assert (=> b!1159477 (=> res!769713 e!659391)))

(assert (=> b!1159477 (= res!769713 (not (= from!1455 i!673)))))

(declare-fun lt!521278 () ListLongMap!16627)

(assert (=> b!1159477 (= lt!521278 (getCurrentListMapNoExtraKeys!4765 lt!521285 lt!521289 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(assert (=> b!1159477 (= lt!521289 (array!74919 (store (arr!36106 _values!996) i!673 (ValueCellFull!13822 lt!521272)) (size!36643 _values!996)))))

(declare-fun dynLambda!2769 (Int (_ BitVec 64)) V!43877)

(assert (=> b!1159477 (= lt!521272 (dynLambda!2769 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1159477 (= lt!521282 (getCurrentListMapNoExtraKeys!4765 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1159478 () Bool)

(declare-fun e!659389 () Unit!38107)

(declare-fun Unit!38110 () Unit!38107)

(assert (=> b!1159478 (= e!659389 Unit!38110)))

(declare-fun bm!55937 () Bool)

(declare-fun call!55942 () ListLongMap!16627)

(declare-fun call!55941 () ListLongMap!16627)

(assert (=> bm!55937 (= call!55942 call!55941)))

(declare-fun b!1159479 () Bool)

(declare-fun e!659390 () Bool)

(assert (=> b!1159479 (= e!659390 (= call!55943 (-!1401 call!55938 k!934)))))

(declare-fun b!1159480 () Bool)

(assert (=> b!1159480 call!55944))

(declare-fun lt!521288 () Unit!38107)

(assert (=> b!1159480 (= lt!521288 call!55939)))

(assert (=> b!1159480 (= e!659389 lt!521288)))

(declare-fun mapNonEmpty!45419 () Bool)

(declare-fun mapRes!45419 () Bool)

(declare-fun tp!86311 () Bool)

(declare-fun e!659382 () Bool)

(assert (=> mapNonEmpty!45419 (= mapRes!45419 (and tp!86311 e!659382))))

(declare-fun mapValue!45419 () ValueCell!13822)

(declare-fun mapRest!45419 () (Array (_ BitVec 32) ValueCell!13822))

(declare-fun mapKey!45419 () (_ BitVec 32))

(assert (=> mapNonEmpty!45419 (= (arr!36106 _values!996) (store mapRest!45419 mapKey!45419 mapValue!45419))))

(declare-fun res!769711 () Bool)

(assert (=> start!98964 (=> (not res!769711) (not e!659383))))

(assert (=> start!98964 (= res!769711 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!36642 _keys!1208))))))

(assert (=> start!98964 e!659383))

(assert (=> start!98964 tp_is_empty!29063))

(declare-fun array_inv!27494 (array!74916) Bool)

(assert (=> start!98964 (array_inv!27494 _keys!1208)))

(assert (=> start!98964 true))

(assert (=> start!98964 tp!86310))

(declare-fun e!659380 () Bool)

(declare-fun array_inv!27495 (array!74918) Bool)

(assert (=> start!98964 (and (array_inv!27495 _values!996) e!659380)))

(declare-fun b!1159481 () Bool)

(declare-fun res!769712 () Bool)

(assert (=> b!1159481 (=> (not res!769712) (not e!659383))))

(assert (=> b!1159481 (= res!769712 (and (= (size!36643 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!36642 _keys!1208) (size!36643 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1159482 () Bool)

(declare-fun Unit!38111 () Unit!38107)

(assert (=> b!1159482 (= e!659381 Unit!38111)))

(declare-fun mapIsEmpty!45419 () Bool)

(assert (=> mapIsEmpty!45419 mapRes!45419))

(declare-fun b!1159483 () Bool)

(assert (=> b!1159483 (= e!659387 (arrayContainsKey!0 _keys!1208 k!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun c!115608 () Bool)

(declare-fun lt!521274 () ListLongMap!16627)

(declare-fun call!55937 () Unit!38107)

(declare-fun bm!55938 () Bool)

(declare-fun addStillContains!952 (ListLongMap!16627 (_ BitVec 64) V!43877 (_ BitVec 64)) Unit!38107)

(assert (=> bm!55938 (= call!55937 (addStillContains!952 (ite c!115603 lt!521274 lt!521270) (ite c!115603 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!115608 #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000)) (ite c!115603 minValue!944 (ite c!115608 zeroValue!944 minValue!944)) k!934))))

(declare-fun b!1159484 () Bool)

(assert (=> b!1159484 (= c!115608 (and (not lt!521287) (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(assert (=> b!1159484 (= e!659386 e!659379)))

(declare-fun b!1159485 () Bool)

(assert (=> b!1159485 (= e!659390 (= call!55943 call!55938))))

(declare-fun b!1159486 () Bool)

(assert (=> b!1159486 (= e!659391 e!659392)))

(declare-fun res!769710 () Bool)

(assert (=> b!1159486 (=> res!769710 e!659392)))

(assert (=> b!1159486 (= res!769710 (not (= (select (arr!36105 _keys!1208) from!1455) k!934)))))

(assert (=> b!1159486 e!659390))

(declare-fun c!115604 () Bool)

(assert (=> b!1159486 (= c!115604 (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673))))

(declare-fun lt!521271 () Unit!38107)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!626 (array!74916 array!74918 (_ BitVec 32) (_ BitVec 32) V!43877 V!43877 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!38107)

(assert (=> b!1159486 (= lt!521271 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!626 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1159487 () Bool)

(assert (=> b!1159487 (= e!659380 (and e!659388 mapRes!45419))))

(declare-fun condMapEmpty!45419 () Bool)

(declare-fun mapDefault!45419 () ValueCell!13822)

