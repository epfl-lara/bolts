; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!98940 () Bool)

(assert start!98940)

(declare-fun b_free!24509 () Bool)

(declare-fun b_next!24509 () Bool)

(assert (=> start!98940 (= b_free!24509 (not b_next!24509))))

(declare-fun tp!86239 () Bool)

(declare-fun b_and!39881 () Bool)

(assert (=> start!98940 (= tp!86239 b_and!39881)))

(declare-fun b!1158362 () Bool)

(declare-fun e!658772 () Bool)

(declare-fun e!658775 () Bool)

(assert (=> b!1158362 (= e!658772 (not e!658775))))

(declare-fun res!769164 () Bool)

(assert (=> b!1158362 (=> res!769164 e!658775)))

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1158362 (= res!769164 (bvsgt from!1455 i!673))))

(declare-datatypes ((array!74868 0))(
  ( (array!74869 (arr!36081 (Array (_ BitVec 32) (_ BitVec 64))) (size!36618 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!74868)

(declare-fun k!934 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!74868 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1158362 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!38061 0))(
  ( (Unit!38062) )
))
(declare-fun lt!520492 () Unit!38061)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!74868 (_ BitVec 64) (_ BitVec 32)) Unit!38061)

(assert (=> b!1158362 (= lt!520492 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun bm!55646 () Bool)

(declare-fun call!55652 () Unit!38061)

(declare-fun call!55653 () Unit!38061)

(assert (=> bm!55646 (= call!55652 call!55653)))

(declare-fun b!1158363 () Bool)

(declare-fun res!769178 () Bool)

(declare-fun e!658774 () Bool)

(assert (=> b!1158363 (=> (not res!769178) (not e!658774))))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!74868 (_ BitVec 32)) Bool)

(assert (=> b!1158363 (= res!769178 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1158364 () Bool)

(assert (=> b!1158364 (= e!658774 e!658772)))

(declare-fun res!769173 () Bool)

(assert (=> b!1158364 (=> (not res!769173) (not e!658772))))

(declare-fun lt!520488 () array!74868)

(assert (=> b!1158364 (= res!769173 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!520488 mask!1564))))

(assert (=> b!1158364 (= lt!520488 (array!74869 (store (arr!36081 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!36618 _keys!1208)))))

(declare-fun b!1158365 () Bool)

(declare-fun e!658771 () Unit!38061)

(declare-fun Unit!38063 () Unit!38061)

(assert (=> b!1158365 (= e!658771 Unit!38063)))

(declare-fun lt!520477 () Bool)

(declare-fun extraKeys!923 () (_ BitVec 32))

(assert (=> b!1158365 (= lt!520477 (= (bvand extraKeys!923 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(declare-fun c!115389 () Bool)

(assert (=> b!1158365 (= c!115389 (and (not lt!520477) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun lt!520487 () Unit!38061)

(declare-fun e!658770 () Unit!38061)

(assert (=> b!1158365 (= lt!520487 e!658770)))

(declare-datatypes ((V!43845 0))(
  ( (V!43846 (val!14576 Int)) )
))
(declare-fun zeroValue!944 () V!43845)

(declare-fun defaultEntry!1004 () Int)

(declare-fun minValue!944 () V!43845)

(declare-fun lt!520476 () Unit!38061)

(declare-datatypes ((ValueCell!13810 0))(
  ( (ValueCellFull!13810 (v!17214 V!43845)) (EmptyCell!13810) )
))
(declare-datatypes ((array!74870 0))(
  ( (array!74871 (arr!36082 (Array (_ BitVec 32) ValueCell!13810)) (size!36619 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!74870)

(declare-fun lemmaListMapContainsThenArrayContainsFrom!517 (array!74868 array!74870 (_ BitVec 32) (_ BitVec 32) V!43845 V!43845 (_ BitVec 64) (_ BitVec 32) Int) Unit!38061)

(assert (=> b!1158365 (= lt!520476 (lemmaListMapContainsThenArrayContainsFrom!517 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun c!115388 () Bool)

(assert (=> b!1158365 (= c!115388 (and (not (= k!934 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!934 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun res!769177 () Bool)

(declare-fun e!658778 () Bool)

(assert (=> b!1158365 (= res!769177 e!658778)))

(declare-fun e!658768 () Bool)

(assert (=> b!1158365 (=> (not res!769177) (not e!658768))))

(assert (=> b!1158365 e!658768))

(declare-fun lt!520489 () Unit!38061)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!74868 (_ BitVec 32) (_ BitVec 32)) Unit!38061)

(assert (=> b!1158365 (= lt!520489 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1208 #b00000000000000000000000000000000 from!1455))))

(declare-datatypes ((List!25401 0))(
  ( (Nil!25398) (Cons!25397 (h!26606 (_ BitVec 64)) (t!36909 List!25401)) )
))
(declare-fun arrayNoDuplicates!0 (array!74868 (_ BitVec 32) List!25401) Bool)

(assert (=> b!1158365 (arrayNoDuplicates!0 _keys!1208 from!1455 Nil!25398)))

(declare-fun lt!520478 () Unit!38061)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!74868 (_ BitVec 64) (_ BitVec 32) List!25401) Unit!38061)

(assert (=> b!1158365 (= lt!520478 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!1208 k!934 from!1455 Nil!25398))))

(assert (=> b!1158365 false))

(declare-fun mapIsEmpty!45383 () Bool)

(declare-fun mapRes!45383 () Bool)

(assert (=> mapIsEmpty!45383 mapRes!45383))

(declare-datatypes ((tuple2!18622 0))(
  ( (tuple2!18623 (_1!9321 (_ BitVec 64)) (_2!9321 V!43845)) )
))
(declare-datatypes ((List!25402 0))(
  ( (Nil!25399) (Cons!25398 (h!26607 tuple2!18622) (t!36910 List!25402)) )
))
(declare-datatypes ((ListLongMap!16603 0))(
  ( (ListLongMap!16604 (toList!8317 List!25402)) )
))
(declare-fun call!55654 () ListLongMap!16603)

(declare-fun b!1158366 () Bool)

(declare-fun call!55649 () ListLongMap!16603)

(declare-fun e!658777 () Bool)

(declare-fun -!1391 (ListLongMap!16603 (_ BitVec 64)) ListLongMap!16603)

(assert (=> b!1158366 (= e!658777 (= call!55654 (-!1391 call!55649 k!934)))))

(declare-fun bm!55647 () Bool)

(declare-fun lt!520495 () array!74870)

(declare-fun getCurrentListMapNoExtraKeys!4754 (array!74868 array!74870 (_ BitVec 32) (_ BitVec 32) V!43845 V!43845 (_ BitVec 32) Int) ListLongMap!16603)

(assert (=> bm!55647 (= call!55654 (getCurrentListMapNoExtraKeys!4754 lt!520488 lt!520495 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1158368 () Bool)

(declare-fun res!769165 () Bool)

(assert (=> b!1158368 (=> (not res!769165) (not e!658774))))

(assert (=> b!1158368 (= res!769165 (= (select (arr!36081 _keys!1208) i!673) k!934))))

(declare-fun b!1158369 () Bool)

(declare-fun res!769170 () Bool)

(assert (=> b!1158369 (=> (not res!769170) (not e!658772))))

(assert (=> b!1158369 (= res!769170 (arrayNoDuplicates!0 lt!520488 #b00000000000000000000000000000000 Nil!25398))))

(declare-fun b!1158370 () Bool)

(declare-fun e!658766 () Bool)

(assert (=> b!1158370 (= e!658766 true)))

(declare-fun e!658773 () Bool)

(assert (=> b!1158370 e!658773))

(declare-fun res!769175 () Bool)

(assert (=> b!1158370 (=> (not res!769175) (not e!658773))))

(declare-fun lt!520490 () ListLongMap!16603)

(declare-fun lt!520482 () ListLongMap!16603)

(assert (=> b!1158370 (= res!769175 (= lt!520490 lt!520482))))

(declare-fun lt!520494 () ListLongMap!16603)

(assert (=> b!1158370 (= lt!520490 (-!1391 lt!520494 k!934))))

(declare-fun lt!520480 () V!43845)

(declare-fun +!3645 (ListLongMap!16603 tuple2!18622) ListLongMap!16603)

(assert (=> b!1158370 (= (-!1391 (+!3645 lt!520482 (tuple2!18623 (select (arr!36081 _keys!1208) from!1455) lt!520480)) (select (arr!36081 _keys!1208) from!1455)) lt!520482)))

(declare-fun lt!520479 () Unit!38061)

(declare-fun addThenRemoveForNewKeyIsSame!231 (ListLongMap!16603 (_ BitVec 64) V!43845) Unit!38061)

(assert (=> b!1158370 (= lt!520479 (addThenRemoveForNewKeyIsSame!231 lt!520482 (select (arr!36081 _keys!1208) from!1455) lt!520480))))

(declare-fun lt!520497 () V!43845)

(declare-fun get!18421 (ValueCell!13810 V!43845) V!43845)

(assert (=> b!1158370 (= lt!520480 (get!18421 (select (arr!36082 _values!996) from!1455) lt!520497))))

(declare-fun lt!520493 () Unit!38061)

(assert (=> b!1158370 (= lt!520493 e!658771)))

(declare-fun c!115392 () Bool)

(declare-fun contains!6801 (ListLongMap!16603 (_ BitVec 64)) Bool)

(assert (=> b!1158370 (= c!115392 (contains!6801 lt!520482 k!934))))

(assert (=> b!1158370 (= lt!520482 (getCurrentListMapNoExtraKeys!4754 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun call!55656 () Bool)

(declare-fun call!55651 () ListLongMap!16603)

(declare-fun bm!55648 () Bool)

(declare-fun lt!520485 () ListLongMap!16603)

(assert (=> bm!55648 (= call!55656 (contains!6801 (ite c!115389 lt!520485 call!55651) k!934))))

(declare-fun b!1158371 () Bool)

(declare-fun call!55655 () ListLongMap!16603)

(assert (=> b!1158371 (contains!6801 call!55655 k!934)))

(declare-fun lt!520481 () Unit!38061)

(declare-fun addStillContains!941 (ListLongMap!16603 (_ BitVec 64) V!43845 (_ BitVec 64)) Unit!38061)

(assert (=> b!1158371 (= lt!520481 (addStillContains!941 lt!520485 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944 k!934))))

(assert (=> b!1158371 call!55656))

(assert (=> b!1158371 (= lt!520485 (+!3645 lt!520482 (tuple2!18623 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944)))))

(declare-fun lt!520483 () Unit!38061)

(assert (=> b!1158371 (= lt!520483 call!55653)))

(assert (=> b!1158371 (= e!658770 lt!520481)))

(declare-fun b!1158372 () Bool)

(declare-fun e!658782 () Bool)

(assert (=> b!1158372 (= e!658782 e!658766)))

(declare-fun res!769169 () Bool)

(assert (=> b!1158372 (=> res!769169 e!658766)))

(assert (=> b!1158372 (= res!769169 (not (= (select (arr!36081 _keys!1208) from!1455) k!934)))))

(assert (=> b!1158372 e!658777))

(declare-fun c!115390 () Bool)

(assert (=> b!1158372 (= c!115390 (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673))))

(declare-fun lt!520491 () Unit!38061)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!618 (array!74868 array!74870 (_ BitVec 32) (_ BitVec 32) V!43845 V!43845 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!38061)

(assert (=> b!1158372 (= lt!520491 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!618 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1158373 () Bool)

(declare-fun res!769168 () Bool)

(assert (=> b!1158373 (=> (not res!769168) (not e!658774))))

(assert (=> b!1158373 (= res!769168 (and (= (size!36619 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!36618 _keys!1208) (size!36619 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1158374 () Bool)

(declare-fun e!658779 () Unit!38061)

(declare-fun e!658769 () Unit!38061)

(assert (=> b!1158374 (= e!658779 e!658769)))

(declare-fun c!115387 () Bool)

(assert (=> b!1158374 (= c!115387 (and (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!520477))))

(declare-fun b!1158375 () Bool)

(declare-fun c!115391 () Bool)

(assert (=> b!1158375 (= c!115391 (and (not lt!520477) (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(assert (=> b!1158375 (= e!658770 e!658779)))

(declare-fun b!1158376 () Bool)

(assert (=> b!1158376 (= e!658773 (= lt!520490 (getCurrentListMapNoExtraKeys!4754 lt!520488 lt!520495 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004)))))

(declare-fun b!1158377 () Bool)

(declare-fun lt!520486 () Unit!38061)

(assert (=> b!1158377 (= e!658779 lt!520486)))

(assert (=> b!1158377 (= lt!520486 call!55652)))

(declare-fun call!55650 () Bool)

(assert (=> b!1158377 call!55650))

(declare-fun mapNonEmpty!45383 () Bool)

(declare-fun tp!86238 () Bool)

(declare-fun e!658767 () Bool)

(assert (=> mapNonEmpty!45383 (= mapRes!45383 (and tp!86238 e!658767))))

(declare-fun mapRest!45383 () (Array (_ BitVec 32) ValueCell!13810))

(declare-fun mapValue!45383 () ValueCell!13810)

(declare-fun mapKey!45383 () (_ BitVec 32))

(assert (=> mapNonEmpty!45383 (= (arr!36082 _values!996) (store mapRest!45383 mapKey!45383 mapValue!45383))))

(declare-fun bm!55649 () Bool)

(assert (=> bm!55649 (= call!55653 (addStillContains!941 lt!520482 (ite (or c!115389 c!115391) #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000) (ite (or c!115389 c!115391) zeroValue!944 minValue!944) k!934))))

(declare-fun bm!55650 () Bool)

(assert (=> bm!55650 (= call!55650 call!55656)))

(declare-fun bm!55651 () Bool)

(assert (=> bm!55651 (= call!55651 call!55655)))

(declare-fun b!1158378 () Bool)

(assert (=> b!1158378 (= e!658768 (arrayContainsKey!0 _keys!1208 k!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun b!1158379 () Bool)

(declare-fun res!769166 () Bool)

(assert (=> b!1158379 (=> (not res!769166) (not e!658774))))

(assert (=> b!1158379 (= res!769166 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!36618 _keys!1208))))))

(declare-fun b!1158380 () Bool)

(assert (=> b!1158380 (= e!658777 (= call!55654 call!55649))))

(declare-fun b!1158381 () Bool)

(declare-fun res!769167 () Bool)

(assert (=> b!1158381 (=> (not res!769167) (not e!658774))))

(assert (=> b!1158381 (= res!769167 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!25398))))

(declare-fun bm!55652 () Bool)

(assert (=> bm!55652 (= call!55649 (getCurrentListMapNoExtraKeys!4754 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1158382 () Bool)

(declare-fun tp_is_empty!29039 () Bool)

(assert (=> b!1158382 (= e!658767 tp_is_empty!29039)))

(declare-fun bm!55653 () Bool)

(assert (=> bm!55653 (= call!55655 (+!3645 (ite c!115389 lt!520485 lt!520482) (ite c!115389 (tuple2!18623 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944) (ite c!115391 (tuple2!18623 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!18623 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944)))))))

(declare-fun b!1158383 () Bool)

(assert (=> b!1158383 (= e!658778 (arrayContainsKey!0 _keys!1208 k!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun b!1158384 () Bool)

(assert (=> b!1158384 (= e!658775 e!658782)))

(declare-fun res!769174 () Bool)

(assert (=> b!1158384 (=> res!769174 e!658782)))

(assert (=> b!1158384 (= res!769174 (not (= from!1455 i!673)))))

(declare-fun lt!520484 () ListLongMap!16603)

(assert (=> b!1158384 (= lt!520484 (getCurrentListMapNoExtraKeys!4754 lt!520488 lt!520495 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(assert (=> b!1158384 (= lt!520495 (array!74871 (store (arr!36082 _values!996) i!673 (ValueCellFull!13810 lt!520497)) (size!36619 _values!996)))))

(declare-fun dynLambda!2760 (Int (_ BitVec 64)) V!43845)

(assert (=> b!1158384 (= lt!520497 (dynLambda!2760 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1158384 (= lt!520494 (getCurrentListMapNoExtraKeys!4754 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1158385 () Bool)

(declare-fun res!769176 () Bool)

(assert (=> b!1158385 (=> (not res!769176) (not e!658774))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1158385 (= res!769176 (validKeyInArray!0 k!934))))

(declare-fun b!1158367 () Bool)

(assert (=> b!1158367 call!55650))

(declare-fun lt!520496 () Unit!38061)

(assert (=> b!1158367 (= lt!520496 call!55652)))

(assert (=> b!1158367 (= e!658769 lt!520496)))

(declare-fun res!769172 () Bool)

(assert (=> start!98940 (=> (not res!769172) (not e!658774))))

(assert (=> start!98940 (= res!769172 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!36618 _keys!1208))))))

(assert (=> start!98940 e!658774))

(assert (=> start!98940 tp_is_empty!29039))

(declare-fun array_inv!27480 (array!74868) Bool)

(assert (=> start!98940 (array_inv!27480 _keys!1208)))

(assert (=> start!98940 true))

(assert (=> start!98940 tp!86239))

(declare-fun e!658780 () Bool)

(declare-fun array_inv!27481 (array!74870) Bool)

(assert (=> start!98940 (and (array_inv!27481 _values!996) e!658780)))

(declare-fun b!1158386 () Bool)

(declare-fun e!658776 () Bool)

(assert (=> b!1158386 (= e!658780 (and e!658776 mapRes!45383))))

(declare-fun condMapEmpty!45383 () Bool)

(declare-fun mapDefault!45383 () ValueCell!13810)

