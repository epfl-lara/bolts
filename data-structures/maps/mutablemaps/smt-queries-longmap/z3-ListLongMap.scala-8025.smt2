; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!99028 () Bool)

(assert start!99028)

(declare-fun b_free!24597 () Bool)

(declare-fun b_next!24597 () Bool)

(assert (=> start!99028 (= b_free!24597 (not b_next!24597))))

(declare-fun tp!86503 () Bool)

(declare-fun b_and!40057 () Bool)

(assert (=> start!99028 (= tp!86503 b_and!40057)))

(declare-fun b!1162410 () Bool)

(declare-datatypes ((Unit!38246 0))(
  ( (Unit!38247) )
))
(declare-fun e!661012 () Unit!38246)

(declare-fun Unit!38248 () Unit!38246)

(assert (=> b!1162410 (= e!661012 Unit!38248)))

(declare-fun lt!523397 () Bool)

(declare-fun extraKeys!923 () (_ BitVec 32))

(assert (=> b!1162410 (= lt!523397 (= (bvand extraKeys!923 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(declare-fun c!116181 () Bool)

(assert (=> b!1162410 (= c!116181 (and (not lt!523397) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun lt!523383 () Unit!38246)

(declare-fun e!661014 () Unit!38246)

(assert (=> b!1162410 (= lt!523383 e!661014)))

(declare-datatypes ((V!43963 0))(
  ( (V!43964 (val!14620 Int)) )
))
(declare-fun zeroValue!944 () V!43963)

(declare-datatypes ((array!75044 0))(
  ( (array!75045 (arr!36169 (Array (_ BitVec 32) (_ BitVec 64))) (size!36706 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!75044)

(declare-fun lt!523396 () Unit!38246)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun k0!934 () (_ BitVec 64))

(declare-fun from!1455 () (_ BitVec 32))

(declare-datatypes ((ValueCell!13854 0))(
  ( (ValueCellFull!13854 (v!17258 V!43963)) (EmptyCell!13854) )
))
(declare-datatypes ((array!75046 0))(
  ( (array!75047 (arr!36170 (Array (_ BitVec 32) ValueCell!13854)) (size!36707 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!75046)

(declare-fun minValue!944 () V!43963)

(declare-fun defaultEntry!1004 () Int)

(declare-fun lemmaListMapContainsThenArrayContainsFrom!550 (array!75044 array!75046 (_ BitVec 32) (_ BitVec 32) V!43963 V!43963 (_ BitVec 64) (_ BitVec 32) Int) Unit!38246)

(assert (=> b!1162410 (= lt!523396 (lemmaListMapContainsThenArrayContainsFrom!550 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun c!116179 () Bool)

(assert (=> b!1162410 (= c!116179 (and (not (= k0!934 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!934 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun res!771150 () Bool)

(declare-fun e!661017 () Bool)

(assert (=> b!1162410 (= res!771150 e!661017)))

(declare-fun e!661015 () Bool)

(assert (=> b!1162410 (=> (not res!771150) (not e!661015))))

(assert (=> b!1162410 e!661015))

(declare-fun lt!523398 () Unit!38246)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!75044 (_ BitVec 32) (_ BitVec 32)) Unit!38246)

(assert (=> b!1162410 (= lt!523398 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1208 #b00000000000000000000000000000000 from!1455))))

(declare-datatypes ((List!25486 0))(
  ( (Nil!25483) (Cons!25482 (h!26691 (_ BitVec 64)) (t!37082 List!25486)) )
))
(declare-fun arrayNoDuplicates!0 (array!75044 (_ BitVec 32) List!25486) Bool)

(assert (=> b!1162410 (arrayNoDuplicates!0 _keys!1208 from!1455 Nil!25483)))

(declare-fun lt!523392 () Unit!38246)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!75044 (_ BitVec 64) (_ BitVec 32) List!25486) Unit!38246)

(assert (=> b!1162410 (= lt!523392 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!1208 k0!934 from!1455 Nil!25483))))

(assert (=> b!1162410 false))

(declare-fun b!1162411 () Bool)

(declare-fun e!661010 () Bool)

(declare-fun e!661026 () Bool)

(assert (=> b!1162411 (= e!661010 e!661026)))

(declare-fun res!771148 () Bool)

(assert (=> b!1162411 (=> (not res!771148) (not e!661026))))

(declare-fun lt!523393 () array!75044)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!75044 (_ BitVec 32)) Bool)

(assert (=> b!1162411 (= res!771148 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!523393 mask!1564))))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1162411 (= lt!523393 (array!75045 (store (arr!36169 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!36706 _keys!1208)))))

(declare-fun b!1162412 () Bool)

(declare-fun res!771147 () Bool)

(assert (=> b!1162412 (=> (not res!771147) (not e!661010))))

(assert (=> b!1162412 (= res!771147 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!36706 _keys!1208))))))

(declare-fun b!1162413 () Bool)

(declare-fun e!661011 () Unit!38246)

(declare-fun Unit!38249 () Unit!38246)

(assert (=> b!1162413 (= e!661011 Unit!38249)))

(declare-fun b!1162414 () Bool)

(declare-fun e!661025 () Bool)

(declare-fun e!661013 () Bool)

(assert (=> b!1162414 (= e!661025 e!661013)))

(declare-fun res!771152 () Bool)

(assert (=> b!1162414 (=> res!771152 e!661013)))

(assert (=> b!1162414 (= res!771152 (not (= (select (arr!36169 _keys!1208) from!1455) k0!934)))))

(declare-fun e!661016 () Bool)

(assert (=> b!1162414 e!661016))

(declare-fun c!116180 () Bool)

(assert (=> b!1162414 (= c!116180 (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673))))

(declare-fun lt!523381 () Unit!38246)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!651 (array!75044 array!75046 (_ BitVec 32) (_ BitVec 32) V!43963 V!43963 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!38246)

(assert (=> b!1162414 (= lt!523381 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!651 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun bm!56702 () Bool)

(declare-datatypes ((tuple2!18710 0))(
  ( (tuple2!18711 (_1!9365 (_ BitVec 64)) (_2!9365 V!43963)) )
))
(declare-datatypes ((List!25487 0))(
  ( (Nil!25484) (Cons!25483 (h!26692 tuple2!18710) (t!37083 List!25487)) )
))
(declare-datatypes ((ListLongMap!16691 0))(
  ( (ListLongMap!16692 (toList!8361 List!25487)) )
))
(declare-fun call!56708 () ListLongMap!16691)

(declare-fun call!56712 () ListLongMap!16691)

(assert (=> bm!56702 (= call!56708 call!56712)))

(declare-fun call!56711 () ListLongMap!16691)

(declare-fun b!1162415 () Bool)

(declare-fun call!56709 () ListLongMap!16691)

(declare-fun -!1429 (ListLongMap!16691 (_ BitVec 64)) ListLongMap!16691)

(assert (=> b!1162415 (= e!661016 (= call!56709 (-!1429 call!56711 k0!934)))))

(declare-fun bm!56703 () Bool)

(declare-fun call!56705 () Unit!38246)

(declare-fun call!56707 () Unit!38246)

(assert (=> bm!56703 (= call!56705 call!56707)))

(declare-fun b!1162416 () Bool)

(declare-fun res!771144 () Bool)

(assert (=> b!1162416 (=> (not res!771144) (not e!661010))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1162416 (= res!771144 (validMask!0 mask!1564))))

(declare-fun b!1162417 () Bool)

(declare-fun e!661024 () Bool)

(declare-fun tp_is_empty!29127 () Bool)

(assert (=> b!1162417 (= e!661024 tp_is_empty!29127)))

(declare-fun lt!523395 () ListLongMap!16691)

(declare-fun bm!56704 () Bool)

(declare-fun c!116183 () Bool)

(declare-fun +!3682 (ListLongMap!16691 tuple2!18710) ListLongMap!16691)

(assert (=> bm!56704 (= call!56712 (+!3682 lt!523395 (ite (or c!116181 c!116183) (tuple2!18711 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!18711 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944))))))

(declare-fun b!1162418 () Bool)

(declare-fun res!771151 () Bool)

(assert (=> b!1162418 (=> (not res!771151) (not e!661010))))

(assert (=> b!1162418 (= res!771151 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!25483))))

(declare-fun b!1162419 () Bool)

(assert (=> b!1162419 (= e!661016 (= call!56709 call!56711))))

(declare-fun b!1162420 () Bool)

(assert (=> b!1162420 (= c!116183 (and (not lt!523397) (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun e!661021 () Unit!38246)

(assert (=> b!1162420 (= e!661014 e!661021)))

(declare-fun bm!56705 () Bool)

(declare-fun call!56710 () Bool)

(declare-fun call!56706 () Bool)

(assert (=> bm!56705 (= call!56710 call!56706)))

(declare-fun b!1162421 () Bool)

(declare-fun e!661018 () Bool)

(assert (=> b!1162421 (= e!661026 (not e!661018))))

(declare-fun res!771145 () Bool)

(assert (=> b!1162421 (=> res!771145 e!661018)))

(assert (=> b!1162421 (= res!771145 (bvsgt from!1455 i!673))))

(declare-fun arrayContainsKey!0 (array!75044 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1162421 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-fun lt!523387 () Unit!38246)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!75044 (_ BitVec 64) (_ BitVec 32)) Unit!38246)

(assert (=> b!1162421 (= lt!523387 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun bm!56706 () Bool)

(declare-fun lt!523391 () ListLongMap!16691)

(declare-fun contains!6839 (ListLongMap!16691 (_ BitVec 64)) Bool)

(assert (=> bm!56706 (= call!56706 (contains!6839 (ite c!116181 lt!523391 call!56708) k0!934))))

(declare-fun b!1162422 () Bool)

(declare-fun lt!523400 () Unit!38246)

(assert (=> b!1162422 (= e!661021 lt!523400)))

(assert (=> b!1162422 (= lt!523400 call!56705)))

(assert (=> b!1162422 call!56710))

(declare-fun b!1162423 () Bool)

(assert (=> b!1162423 (contains!6839 (+!3682 lt!523391 (tuple2!18711 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944)) k0!934)))

(declare-fun lt!523382 () Unit!38246)

(declare-fun addStillContains!980 (ListLongMap!16691 (_ BitVec 64) V!43963 (_ BitVec 64)) Unit!38246)

(assert (=> b!1162423 (= lt!523382 (addStillContains!980 lt!523391 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944 k0!934))))

(assert (=> b!1162423 call!56706))

(assert (=> b!1162423 (= lt!523391 call!56712)))

(declare-fun lt!523384 () Unit!38246)

(assert (=> b!1162423 (= lt!523384 call!56707)))

(assert (=> b!1162423 (= e!661014 lt!523382)))

(declare-fun b!1162424 () Bool)

(declare-fun res!771156 () Bool)

(assert (=> b!1162424 (=> (not res!771156) (not e!661010))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1162424 (= res!771156 (validKeyInArray!0 k0!934))))

(declare-fun b!1162425 () Bool)

(declare-fun res!771155 () Bool)

(assert (=> b!1162425 (=> (not res!771155) (not e!661010))))

(assert (=> b!1162425 (= res!771155 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1162426 () Bool)

(assert (=> b!1162426 (= e!661013 true)))

(declare-fun e!661023 () Bool)

(assert (=> b!1162426 e!661023))

(declare-fun res!771153 () Bool)

(assert (=> b!1162426 (=> (not res!771153) (not e!661023))))

(declare-fun lt!523380 () ListLongMap!16691)

(assert (=> b!1162426 (= res!771153 (= lt!523380 lt!523395))))

(declare-fun lt!523401 () ListLongMap!16691)

(assert (=> b!1162426 (= lt!523380 (-!1429 lt!523401 k0!934))))

(declare-fun lt!523399 () V!43963)

(assert (=> b!1162426 (= (-!1429 (+!3682 lt!523395 (tuple2!18711 (select (arr!36169 _keys!1208) from!1455) lt!523399)) (select (arr!36169 _keys!1208) from!1455)) lt!523395)))

(declare-fun lt!523389 () Unit!38246)

(declare-fun addThenRemoveForNewKeyIsSame!263 (ListLongMap!16691 (_ BitVec 64) V!43963) Unit!38246)

(assert (=> b!1162426 (= lt!523389 (addThenRemoveForNewKeyIsSame!263 lt!523395 (select (arr!36169 _keys!1208) from!1455) lt!523399))))

(declare-fun lt!523385 () V!43963)

(declare-fun get!18483 (ValueCell!13854 V!43963) V!43963)

(assert (=> b!1162426 (= lt!523399 (get!18483 (select (arr!36170 _values!996) from!1455) lt!523385))))

(declare-fun lt!523390 () Unit!38246)

(assert (=> b!1162426 (= lt!523390 e!661012)))

(declare-fun c!116182 () Bool)

(assert (=> b!1162426 (= c!116182 (contains!6839 lt!523395 k0!934))))

(declare-fun getCurrentListMapNoExtraKeys!4795 (array!75044 array!75046 (_ BitVec 32) (_ BitVec 32) V!43963 V!43963 (_ BitVec 32) Int) ListLongMap!16691)

(assert (=> b!1162426 (= lt!523395 (getCurrentListMapNoExtraKeys!4795 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1162427 () Bool)

(declare-fun Unit!38250 () Unit!38246)

(assert (=> b!1162427 (= e!661012 Unit!38250)))

(declare-fun bm!56707 () Bool)

(assert (=> bm!56707 (= call!56707 (addStillContains!980 lt!523395 (ite (or c!116181 c!116183) #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000) (ite (or c!116181 c!116183) zeroValue!944 minValue!944) k0!934))))

(declare-fun b!1162428 () Bool)

(assert (=> b!1162428 (= e!661017 (ite (= k0!934 #b0000000000000000000000000000000000000000000000000000000000000000) (not lt!523397) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun mapNonEmpty!45515 () Bool)

(declare-fun mapRes!45515 () Bool)

(declare-fun tp!86502 () Bool)

(declare-fun e!661020 () Bool)

(assert (=> mapNonEmpty!45515 (= mapRes!45515 (and tp!86502 e!661020))))

(declare-fun mapKey!45515 () (_ BitVec 32))

(declare-fun mapValue!45515 () ValueCell!13854)

(declare-fun mapRest!45515 () (Array (_ BitVec 32) ValueCell!13854))

(assert (=> mapNonEmpty!45515 (= (arr!36170 _values!996) (store mapRest!45515 mapKey!45515 mapValue!45515))))

(declare-fun b!1162429 () Bool)

(declare-fun res!771158 () Bool)

(assert (=> b!1162429 (=> (not res!771158) (not e!661026))))

(assert (=> b!1162429 (= res!771158 (arrayNoDuplicates!0 lt!523393 #b00000000000000000000000000000000 Nil!25483))))

(declare-fun b!1162430 () Bool)

(assert (=> b!1162430 (= e!661017 (arrayContainsKey!0 _keys!1208 k0!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun lt!523388 () array!75046)

(declare-fun b!1162431 () Bool)

(assert (=> b!1162431 (= e!661023 (= lt!523380 (getCurrentListMapNoExtraKeys!4795 lt!523393 lt!523388 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004)))))

(declare-fun b!1162432 () Bool)

(assert (=> b!1162432 call!56710))

(declare-fun lt!523394 () Unit!38246)

(assert (=> b!1162432 (= lt!523394 call!56705)))

(assert (=> b!1162432 (= e!661011 lt!523394)))

(declare-fun bm!56708 () Bool)

(assert (=> bm!56708 (= call!56711 (getCurrentListMapNoExtraKeys!4795 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1162433 () Bool)

(declare-fun res!771157 () Bool)

(assert (=> b!1162433 (=> (not res!771157) (not e!661010))))

(assert (=> b!1162433 (= res!771157 (= (select (arr!36169 _keys!1208) i!673) k0!934))))

(declare-fun b!1162434 () Bool)

(declare-fun res!771146 () Bool)

(assert (=> b!1162434 (=> (not res!771146) (not e!661010))))

(assert (=> b!1162434 (= res!771146 (and (= (size!36707 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!36706 _keys!1208) (size!36707 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!45515 () Bool)

(assert (=> mapIsEmpty!45515 mapRes!45515))

(declare-fun b!1162435 () Bool)

(assert (=> b!1162435 (= e!661021 e!661011)))

(declare-fun c!116184 () Bool)

(assert (=> b!1162435 (= c!116184 (and (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!523397))))

(declare-fun b!1162436 () Bool)

(assert (=> b!1162436 (= e!661018 e!661025)))

(declare-fun res!771154 () Bool)

(assert (=> b!1162436 (=> res!771154 e!661025)))

(assert (=> b!1162436 (= res!771154 (not (= from!1455 i!673)))))

(declare-fun lt!523386 () ListLongMap!16691)

(assert (=> b!1162436 (= lt!523386 (getCurrentListMapNoExtraKeys!4795 lt!523393 lt!523388 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(assert (=> b!1162436 (= lt!523388 (array!75047 (store (arr!36170 _values!996) i!673 (ValueCellFull!13854 lt!523385)) (size!36707 _values!996)))))

(declare-fun dynLambda!2793 (Int (_ BitVec 64)) V!43963)

(assert (=> b!1162436 (= lt!523385 (dynLambda!2793 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1162436 (= lt!523401 (getCurrentListMapNoExtraKeys!4795 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1162437 () Bool)

(assert (=> b!1162437 (= e!661015 (arrayContainsKey!0 _keys!1208 k0!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun b!1162438 () Bool)

(assert (=> b!1162438 (= e!661020 tp_is_empty!29127)))

(declare-fun res!771149 () Bool)

(assert (=> start!99028 (=> (not res!771149) (not e!661010))))

(assert (=> start!99028 (= res!771149 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!36706 _keys!1208))))))

(assert (=> start!99028 e!661010))

(assert (=> start!99028 tp_is_empty!29127))

(declare-fun array_inv!27548 (array!75044) Bool)

(assert (=> start!99028 (array_inv!27548 _keys!1208)))

(assert (=> start!99028 true))

(assert (=> start!99028 tp!86503))

(declare-fun e!661019 () Bool)

(declare-fun array_inv!27549 (array!75046) Bool)

(assert (=> start!99028 (and (array_inv!27549 _values!996) e!661019)))

(declare-fun bm!56709 () Bool)

(assert (=> bm!56709 (= call!56709 (getCurrentListMapNoExtraKeys!4795 lt!523393 lt!523388 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1162439 () Bool)

(assert (=> b!1162439 (= e!661019 (and e!661024 mapRes!45515))))

(declare-fun condMapEmpty!45515 () Bool)

(declare-fun mapDefault!45515 () ValueCell!13854)

(assert (=> b!1162439 (= condMapEmpty!45515 (= (arr!36170 _values!996) ((as const (Array (_ BitVec 32) ValueCell!13854)) mapDefault!45515)))))

(assert (= (and start!99028 res!771149) b!1162416))

(assert (= (and b!1162416 res!771144) b!1162434))

(assert (= (and b!1162434 res!771146) b!1162425))

(assert (= (and b!1162425 res!771155) b!1162418))

(assert (= (and b!1162418 res!771151) b!1162412))

(assert (= (and b!1162412 res!771147) b!1162424))

(assert (= (and b!1162424 res!771156) b!1162433))

(assert (= (and b!1162433 res!771157) b!1162411))

(assert (= (and b!1162411 res!771148) b!1162429))

(assert (= (and b!1162429 res!771158) b!1162421))

(assert (= (and b!1162421 (not res!771145)) b!1162436))

(assert (= (and b!1162436 (not res!771154)) b!1162414))

(assert (= (and b!1162414 c!116180) b!1162415))

(assert (= (and b!1162414 (not c!116180)) b!1162419))

(assert (= (or b!1162415 b!1162419) bm!56708))

(assert (= (or b!1162415 b!1162419) bm!56709))

(assert (= (and b!1162414 (not res!771152)) b!1162426))

(assert (= (and b!1162426 c!116182) b!1162410))

(assert (= (and b!1162426 (not c!116182)) b!1162427))

(assert (= (and b!1162410 c!116181) b!1162423))

(assert (= (and b!1162410 (not c!116181)) b!1162420))

(assert (= (and b!1162420 c!116183) b!1162422))

(assert (= (and b!1162420 (not c!116183)) b!1162435))

(assert (= (and b!1162435 c!116184) b!1162432))

(assert (= (and b!1162435 (not c!116184)) b!1162413))

(assert (= (or b!1162422 b!1162432) bm!56703))

(assert (= (or b!1162422 b!1162432) bm!56702))

(assert (= (or b!1162422 b!1162432) bm!56705))

(assert (= (or b!1162423 bm!56705) bm!56706))

(assert (= (or b!1162423 bm!56703) bm!56707))

(assert (= (or b!1162423 bm!56702) bm!56704))

(assert (= (and b!1162410 c!116179) b!1162430))

(assert (= (and b!1162410 (not c!116179)) b!1162428))

(assert (= (and b!1162410 res!771150) b!1162437))

(assert (= (and b!1162426 res!771153) b!1162431))

(assert (= (and b!1162439 condMapEmpty!45515) mapIsEmpty!45515))

(assert (= (and b!1162439 (not condMapEmpty!45515)) mapNonEmpty!45515))

(get-info :version)

(assert (= (and mapNonEmpty!45515 ((_ is ValueCellFull!13854) mapValue!45515)) b!1162438))

(assert (= (and b!1162439 ((_ is ValueCellFull!13854) mapDefault!45515)) b!1162417))

(assert (= start!99028 b!1162439))

(declare-fun b_lambda!19721 () Bool)

(assert (=> (not b_lambda!19721) (not b!1162436)))

(declare-fun t!37081 () Bool)

(declare-fun tb!9417 () Bool)

(assert (=> (and start!99028 (= defaultEntry!1004 defaultEntry!1004) t!37081) tb!9417))

(declare-fun result!19391 () Bool)

(assert (=> tb!9417 (= result!19391 tp_is_empty!29127)))

(assert (=> b!1162436 t!37081))

(declare-fun b_and!40059 () Bool)

(assert (= b_and!40057 (and (=> t!37081 result!19391) b_and!40059)))

(declare-fun m!1071147 () Bool)

(assert (=> b!1162436 m!1071147))

(declare-fun m!1071149 () Bool)

(assert (=> b!1162436 m!1071149))

(declare-fun m!1071151 () Bool)

(assert (=> b!1162436 m!1071151))

(declare-fun m!1071153 () Bool)

(assert (=> b!1162436 m!1071153))

(declare-fun m!1071155 () Bool)

(assert (=> b!1162418 m!1071155))

(declare-fun m!1071157 () Bool)

(assert (=> b!1162411 m!1071157))

(declare-fun m!1071159 () Bool)

(assert (=> b!1162411 m!1071159))

(declare-fun m!1071161 () Bool)

(assert (=> b!1162423 m!1071161))

(assert (=> b!1162423 m!1071161))

(declare-fun m!1071163 () Bool)

(assert (=> b!1162423 m!1071163))

(declare-fun m!1071165 () Bool)

(assert (=> b!1162423 m!1071165))

(declare-fun m!1071167 () Bool)

(assert (=> b!1162410 m!1071167))

(declare-fun m!1071169 () Bool)

(assert (=> b!1162410 m!1071169))

(declare-fun m!1071171 () Bool)

(assert (=> b!1162410 m!1071171))

(declare-fun m!1071173 () Bool)

(assert (=> b!1162410 m!1071173))

(declare-fun m!1071175 () Bool)

(assert (=> bm!56704 m!1071175))

(declare-fun m!1071177 () Bool)

(assert (=> b!1162424 m!1071177))

(declare-fun m!1071179 () Bool)

(assert (=> b!1162429 m!1071179))

(declare-fun m!1071181 () Bool)

(assert (=> bm!56709 m!1071181))

(declare-fun m!1071183 () Bool)

(assert (=> b!1162430 m!1071183))

(declare-fun m!1071185 () Bool)

(assert (=> b!1162421 m!1071185))

(declare-fun m!1071187 () Bool)

(assert (=> b!1162421 m!1071187))

(assert (=> b!1162431 m!1071181))

(assert (=> b!1162437 m!1071183))

(declare-fun m!1071189 () Bool)

(assert (=> b!1162414 m!1071189))

(declare-fun m!1071191 () Bool)

(assert (=> b!1162414 m!1071191))

(declare-fun m!1071193 () Bool)

(assert (=> bm!56706 m!1071193))

(declare-fun m!1071195 () Bool)

(assert (=> b!1162433 m!1071195))

(declare-fun m!1071197 () Bool)

(assert (=> mapNonEmpty!45515 m!1071197))

(declare-fun m!1071199 () Bool)

(assert (=> b!1162426 m!1071199))

(declare-fun m!1071201 () Bool)

(assert (=> b!1162426 m!1071201))

(assert (=> b!1162426 m!1071189))

(declare-fun m!1071203 () Bool)

(assert (=> b!1162426 m!1071203))

(declare-fun m!1071205 () Bool)

(assert (=> b!1162426 m!1071205))

(assert (=> b!1162426 m!1071189))

(declare-fun m!1071207 () Bool)

(assert (=> b!1162426 m!1071207))

(assert (=> b!1162426 m!1071199))

(assert (=> b!1162426 m!1071189))

(declare-fun m!1071209 () Bool)

(assert (=> b!1162426 m!1071209))

(declare-fun m!1071211 () Bool)

(assert (=> b!1162426 m!1071211))

(assert (=> b!1162426 m!1071211))

(declare-fun m!1071213 () Bool)

(assert (=> b!1162426 m!1071213))

(declare-fun m!1071215 () Bool)

(assert (=> b!1162425 m!1071215))

(declare-fun m!1071217 () Bool)

(assert (=> b!1162415 m!1071217))

(declare-fun m!1071219 () Bool)

(assert (=> b!1162416 m!1071219))

(assert (=> bm!56708 m!1071207))

(declare-fun m!1071221 () Bool)

(assert (=> start!99028 m!1071221))

(declare-fun m!1071223 () Bool)

(assert (=> start!99028 m!1071223))

(declare-fun m!1071225 () Bool)

(assert (=> bm!56707 m!1071225))

(check-sat (not bm!56706) tp_is_empty!29127 (not bm!56707) (not b!1162415) (not bm!56709) (not b!1162426) (not b!1162411) (not b!1162423) (not b!1162429) (not b!1162418) (not mapNonEmpty!45515) (not b!1162414) (not b!1162425) (not b!1162430) (not b!1162436) (not b!1162410) (not start!99028) (not b!1162416) (not b!1162421) (not b!1162437) (not b!1162424) b_and!40059 (not b_lambda!19721) (not bm!56708) (not b_next!24597) (not bm!56704) (not b!1162431))
(check-sat b_and!40059 (not b_next!24597))
