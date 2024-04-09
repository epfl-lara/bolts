; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!98832 () Bool)

(assert start!98832)

(declare-fun b_free!24401 () Bool)

(declare-fun b_next!24401 () Bool)

(assert (=> start!98832 (= b_free!24401 (not b_next!24401))))

(declare-fun tp!85914 () Bool)

(declare-fun b_and!39665 () Bool)

(assert (=> start!98832 (= tp!85914 b_and!39665)))

(declare-fun b!1153394 () Bool)

(declare-fun e!656027 () Bool)

(declare-fun tp_is_empty!28931 () Bool)

(assert (=> b!1153394 (= e!656027 tp_is_empty!28931)))

(declare-fun mapNonEmpty!45221 () Bool)

(declare-fun mapRes!45221 () Bool)

(declare-fun tp!85915 () Bool)

(declare-fun e!656024 () Bool)

(assert (=> mapNonEmpty!45221 (= mapRes!45221 (and tp!85915 e!656024))))

(declare-datatypes ((V!43701 0))(
  ( (V!43702 (val!14522 Int)) )
))
(declare-datatypes ((ValueCell!13756 0))(
  ( (ValueCellFull!13756 (v!17160 V!43701)) (EmptyCell!13756) )
))
(declare-fun mapValue!45221 () ValueCell!13756)

(declare-fun mapRest!45221 () (Array (_ BitVec 32) ValueCell!13756))

(declare-datatypes ((array!74660 0))(
  ( (array!74661 (arr!35977 (Array (_ BitVec 32) ValueCell!13756)) (size!36514 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!74660)

(declare-fun mapKey!45221 () (_ BitVec 32))

(assert (=> mapNonEmpty!45221 (= (arr!35977 _values!996) (store mapRest!45221 mapKey!45221 mapValue!45221))))

(declare-fun b!1153395 () Bool)

(declare-fun e!656028 () Bool)

(declare-fun e!656012 () Bool)

(assert (=> b!1153395 (= e!656028 e!656012)))

(declare-fun res!766747 () Bool)

(assert (=> b!1153395 (=> res!766747 e!656012)))

(declare-datatypes ((array!74662 0))(
  ( (array!74663 (arr!35978 (Array (_ BitVec 32) (_ BitVec 64))) (size!36515 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!74662)

(declare-fun k!934 () (_ BitVec 64))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> b!1153395 (= res!766747 (not (= (select (arr!35978 _keys!1208) from!1455) k!934)))))

(declare-fun e!656023 () Bool)

(assert (=> b!1153395 e!656023))

(declare-fun c!114419 () Bool)

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1153395 (= c!114419 (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673))))

(declare-fun zeroValue!944 () V!43701)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-fun minValue!944 () V!43701)

(declare-datatypes ((Unit!37869 0))(
  ( (Unit!37870) )
))
(declare-fun lt!516922 () Unit!37869)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!583 (array!74662 array!74660 (_ BitVec 32) (_ BitVec 32) V!43701 V!43701 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!37869)

(assert (=> b!1153395 (= lt!516922 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!583 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun c!114420 () Bool)

(declare-datatypes ((tuple2!18526 0))(
  ( (tuple2!18527 (_1!9273 (_ BitVec 64)) (_2!9273 V!43701)) )
))
(declare-datatypes ((List!25313 0))(
  ( (Nil!25310) (Cons!25309 (h!26518 tuple2!18526) (t!36713 List!25313)) )
))
(declare-datatypes ((ListLongMap!16507 0))(
  ( (ListLongMap!16508 (toList!8269 List!25313)) )
))
(declare-fun call!54354 () ListLongMap!16507)

(declare-fun c!114416 () Bool)

(declare-fun bm!54350 () Bool)

(declare-fun lt!516921 () ListLongMap!16507)

(declare-fun +!3604 (ListLongMap!16507 tuple2!18526) ListLongMap!16507)

(assert (=> bm!54350 (= call!54354 (+!3604 lt!516921 (ite (or c!114416 c!114420) (tuple2!18527 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!18527 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944))))))

(declare-fun b!1153396 () Bool)

(declare-fun call!54359 () Bool)

(assert (=> b!1153396 call!54359))

(declare-fun lt!516917 () Unit!37869)

(declare-fun call!54355 () Unit!37869)

(assert (=> b!1153396 (= lt!516917 call!54355)))

(declare-fun e!656026 () Unit!37869)

(assert (=> b!1153396 (= e!656026 lt!516917)))

(declare-fun b!1153397 () Bool)

(declare-fun Unit!37871 () Unit!37869)

(assert (=> b!1153397 (= e!656026 Unit!37871)))

(declare-fun e!656021 () Bool)

(declare-fun b!1153398 () Bool)

(declare-fun arrayContainsKey!0 (array!74662 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1153398 (= e!656021 (arrayContainsKey!0 _keys!1208 k!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun bm!54351 () Bool)

(declare-fun call!54360 () Unit!37869)

(assert (=> bm!54351 (= call!54355 call!54360)))

(declare-fun bm!54352 () Bool)

(declare-fun call!54358 () ListLongMap!16507)

(assert (=> bm!54352 (= call!54358 call!54354)))

(declare-fun b!1153400 () Bool)

(declare-fun e!656013 () Unit!37869)

(declare-fun Unit!37872 () Unit!37869)

(assert (=> b!1153400 (= e!656013 Unit!37872)))

(declare-fun lt!516933 () Bool)

(assert (=> b!1153400 (= lt!516933 (= (bvand extraKeys!923 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(assert (=> b!1153400 (= c!114416 (and (not lt!516933) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun lt!516912 () Unit!37869)

(declare-fun e!656019 () Unit!37869)

(assert (=> b!1153400 (= lt!516912 e!656019)))

(declare-fun lt!516919 () Unit!37869)

(declare-fun lemmaListMapContainsThenArrayContainsFrom!483 (array!74662 array!74660 (_ BitVec 32) (_ BitVec 32) V!43701 V!43701 (_ BitVec 64) (_ BitVec 32) Int) Unit!37869)

(assert (=> b!1153400 (= lt!516919 (lemmaListMapContainsThenArrayContainsFrom!483 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun c!114415 () Bool)

(assert (=> b!1153400 (= c!114415 (and (not (= k!934 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!934 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun res!766745 () Bool)

(assert (=> b!1153400 (= res!766745 e!656021)))

(declare-fun e!656018 () Bool)

(assert (=> b!1153400 (=> (not res!766745) (not e!656018))))

(assert (=> b!1153400 e!656018))

(declare-fun lt!516916 () Unit!37869)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!74662 (_ BitVec 32) (_ BitVec 32)) Unit!37869)

(assert (=> b!1153400 (= lt!516916 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1208 #b00000000000000000000000000000000 from!1455))))

(declare-datatypes ((List!25314 0))(
  ( (Nil!25311) (Cons!25310 (h!26519 (_ BitVec 64)) (t!36714 List!25314)) )
))
(declare-fun arrayNoDuplicates!0 (array!74662 (_ BitVec 32) List!25314) Bool)

(assert (=> b!1153400 (arrayNoDuplicates!0 _keys!1208 from!1455 Nil!25311)))

(declare-fun lt!516931 () Unit!37869)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!74662 (_ BitVec 64) (_ BitVec 32) List!25314) Unit!37869)

(assert (=> b!1153400 (= lt!516931 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!1208 k!934 from!1455 Nil!25311))))

(assert (=> b!1153400 false))

(declare-fun b!1153401 () Bool)

(declare-fun res!766748 () Bool)

(declare-fun e!656022 () Bool)

(assert (=> b!1153401 (=> (not res!766748) (not e!656022))))

(assert (=> b!1153401 (= res!766748 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!36515 _keys!1208))))))

(declare-fun bm!54353 () Bool)

(declare-fun call!54353 () ListLongMap!16507)

(declare-fun getCurrentListMapNoExtraKeys!4709 (array!74662 array!74660 (_ BitVec 32) (_ BitVec 32) V!43701 V!43701 (_ BitVec 32) Int) ListLongMap!16507)

(assert (=> bm!54353 (= call!54353 (getCurrentListMapNoExtraKeys!4709 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun bm!54354 () Bool)

(declare-fun lt!516932 () ListLongMap!16507)

(declare-fun addStillContains!901 (ListLongMap!16507 (_ BitVec 64) V!43701 (_ BitVec 64)) Unit!37869)

(assert (=> bm!54354 (= call!54360 (addStillContains!901 (ite c!114416 lt!516932 lt!516921) (ite c!114416 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!114420 #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000)) (ite c!114416 minValue!944 (ite c!114420 zeroValue!944 minValue!944)) k!934))))

(declare-fun b!1153402 () Bool)

(declare-fun res!766741 () Bool)

(assert (=> b!1153402 (=> (not res!766741) (not e!656022))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1153402 (= res!766741 (validMask!0 mask!1564))))

(declare-fun b!1153403 () Bool)

(declare-fun e!656020 () Bool)

(declare-fun e!656025 () Bool)

(assert (=> b!1153403 (= e!656020 (not e!656025))))

(declare-fun res!766738 () Bool)

(assert (=> b!1153403 (=> res!766738 e!656025)))

(assert (=> b!1153403 (= res!766738 (bvsgt from!1455 i!673))))

(assert (=> b!1153403 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-fun lt!516913 () Unit!37869)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!74662 (_ BitVec 64) (_ BitVec 32)) Unit!37869)

(assert (=> b!1153403 (= lt!516913 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun b!1153404 () Bool)

(declare-fun res!766743 () Bool)

(assert (=> b!1153404 (=> (not res!766743) (not e!656022))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1153404 (= res!766743 (validKeyInArray!0 k!934))))

(declare-fun b!1153405 () Bool)

(declare-fun e!656015 () Unit!37869)

(assert (=> b!1153405 (= e!656015 e!656026)))

(declare-fun c!114417 () Bool)

(assert (=> b!1153405 (= c!114417 (and (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!516933))))

(declare-fun b!1153406 () Bool)

(assert (=> b!1153406 (= e!656018 (arrayContainsKey!0 _keys!1208 k!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun b!1153407 () Bool)

(declare-fun res!766736 () Bool)

(assert (=> b!1153407 (=> (not res!766736) (not e!656022))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!74662 (_ BitVec 32)) Bool)

(assert (=> b!1153407 (= res!766736 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1153408 () Bool)

(declare-fun call!54357 () ListLongMap!16507)

(declare-fun -!1351 (ListLongMap!16507 (_ BitVec 64)) ListLongMap!16507)

(assert (=> b!1153408 (= e!656023 (= call!54357 (-!1351 call!54353 k!934)))))

(declare-fun call!54356 () Bool)

(declare-fun bm!54355 () Bool)

(declare-fun contains!6761 (ListLongMap!16507 (_ BitVec 64)) Bool)

(assert (=> bm!54355 (= call!54356 (contains!6761 (ite c!114416 lt!516932 call!54358) k!934))))

(declare-fun b!1153409 () Bool)

(assert (=> b!1153409 (= e!656022 e!656020)))

(declare-fun res!766742 () Bool)

(assert (=> b!1153409 (=> (not res!766742) (not e!656020))))

(declare-fun lt!516928 () array!74662)

(assert (=> b!1153409 (= res!766742 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!516928 mask!1564))))

(assert (=> b!1153409 (= lt!516928 (array!74663 (store (arr!35978 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!36515 _keys!1208)))))

(declare-fun lt!516924 () array!74660)

(declare-fun bm!54356 () Bool)

(assert (=> bm!54356 (= call!54357 (getCurrentListMapNoExtraKeys!4709 lt!516928 lt!516924 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1153410 () Bool)

(declare-fun res!766744 () Bool)

(assert (=> b!1153410 (=> (not res!766744) (not e!656022))))

(assert (=> b!1153410 (= res!766744 (= (select (arr!35978 _keys!1208) i!673) k!934))))

(declare-fun b!1153411 () Bool)

(assert (=> b!1153411 (= e!656012 true)))

(declare-fun e!656016 () Bool)

(assert (=> b!1153411 e!656016))

(declare-fun res!766739 () Bool)

(assert (=> b!1153411 (=> (not res!766739) (not e!656016))))

(declare-fun lt!516920 () ListLongMap!16507)

(assert (=> b!1153411 (= res!766739 (= lt!516920 lt!516921))))

(declare-fun lt!516915 () ListLongMap!16507)

(assert (=> b!1153411 (= lt!516920 (-!1351 lt!516915 k!934))))

(declare-fun lt!516930 () V!43701)

(assert (=> b!1153411 (= (-!1351 (+!3604 lt!516921 (tuple2!18527 (select (arr!35978 _keys!1208) from!1455) lt!516930)) (select (arr!35978 _keys!1208) from!1455)) lt!516921)))

(declare-fun lt!516929 () Unit!37869)

(declare-fun addThenRemoveForNewKeyIsSame!196 (ListLongMap!16507 (_ BitVec 64) V!43701) Unit!37869)

(assert (=> b!1153411 (= lt!516929 (addThenRemoveForNewKeyIsSame!196 lt!516921 (select (arr!35978 _keys!1208) from!1455) lt!516930))))

(declare-fun lt!516918 () V!43701)

(declare-fun get!18350 (ValueCell!13756 V!43701) V!43701)

(assert (=> b!1153411 (= lt!516930 (get!18350 (select (arr!35977 _values!996) from!1455) lt!516918))))

(declare-fun lt!516925 () Unit!37869)

(assert (=> b!1153411 (= lt!516925 e!656013)))

(declare-fun c!114418 () Bool)

(assert (=> b!1153411 (= c!114418 (contains!6761 lt!516921 k!934))))

(assert (=> b!1153411 (= lt!516921 (getCurrentListMapNoExtraKeys!4709 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1153412 () Bool)

(assert (=> b!1153412 (= e!656024 tp_is_empty!28931)))

(declare-fun b!1153413 () Bool)

(assert (=> b!1153413 (= e!656016 (= lt!516920 (getCurrentListMapNoExtraKeys!4709 lt!516928 lt!516924 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004)))))

(declare-fun b!1153414 () Bool)

(declare-fun lt!516926 () Unit!37869)

(assert (=> b!1153414 (= e!656015 lt!516926)))

(assert (=> b!1153414 (= lt!516926 call!54355)))

(assert (=> b!1153414 call!54359))

(declare-fun res!766735 () Bool)

(assert (=> start!98832 (=> (not res!766735) (not e!656022))))

(assert (=> start!98832 (= res!766735 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!36515 _keys!1208))))))

(assert (=> start!98832 e!656022))

(assert (=> start!98832 tp_is_empty!28931))

(declare-fun array_inv!27418 (array!74662) Bool)

(assert (=> start!98832 (array_inv!27418 _keys!1208)))

(assert (=> start!98832 true))

(assert (=> start!98832 tp!85914))

(declare-fun e!656017 () Bool)

(declare-fun array_inv!27419 (array!74660) Bool)

(assert (=> start!98832 (and (array_inv!27419 _values!996) e!656017)))

(declare-fun b!1153399 () Bool)

(assert (=> b!1153399 (= e!656021 (ite (= k!934 #b0000000000000000000000000000000000000000000000000000000000000000) (not lt!516933) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!1153415 () Bool)

(assert (=> b!1153415 (= c!114420 (and (not lt!516933) (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(assert (=> b!1153415 (= e!656019 e!656015)))

(declare-fun b!1153416 () Bool)

(declare-fun Unit!37873 () Unit!37869)

(assert (=> b!1153416 (= e!656013 Unit!37873)))

(declare-fun mapIsEmpty!45221 () Bool)

(assert (=> mapIsEmpty!45221 mapRes!45221))

(declare-fun bm!54357 () Bool)

(assert (=> bm!54357 (= call!54359 call!54356)))

(declare-fun b!1153417 () Bool)

(declare-fun res!766740 () Bool)

(assert (=> b!1153417 (=> (not res!766740) (not e!656020))))

(assert (=> b!1153417 (= res!766740 (arrayNoDuplicates!0 lt!516928 #b00000000000000000000000000000000 Nil!25311))))

(declare-fun b!1153418 () Bool)

(declare-fun res!766734 () Bool)

(assert (=> b!1153418 (=> (not res!766734) (not e!656022))))

(assert (=> b!1153418 (= res!766734 (and (= (size!36514 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!36515 _keys!1208) (size!36514 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1153419 () Bool)

(assert (=> b!1153419 (= e!656023 (= call!54357 call!54353))))

(declare-fun b!1153420 () Bool)

(assert (=> b!1153420 (= e!656025 e!656028)))

(declare-fun res!766746 () Bool)

(assert (=> b!1153420 (=> res!766746 e!656028)))

(assert (=> b!1153420 (= res!766746 (not (= from!1455 i!673)))))

(declare-fun lt!516923 () ListLongMap!16507)

(assert (=> b!1153420 (= lt!516923 (getCurrentListMapNoExtraKeys!4709 lt!516928 lt!516924 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(assert (=> b!1153420 (= lt!516924 (array!74661 (store (arr!35977 _values!996) i!673 (ValueCellFull!13756 lt!516918)) (size!36514 _values!996)))))

(declare-fun dynLambda!2730 (Int (_ BitVec 64)) V!43701)

(assert (=> b!1153420 (= lt!516918 (dynLambda!2730 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1153420 (= lt!516915 (getCurrentListMapNoExtraKeys!4709 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1153421 () Bool)

(declare-fun res!766737 () Bool)

(assert (=> b!1153421 (=> (not res!766737) (not e!656022))))

(assert (=> b!1153421 (= res!766737 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!25311))))

(declare-fun b!1153422 () Bool)

(assert (=> b!1153422 (contains!6761 (+!3604 lt!516932 (tuple2!18527 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944)) k!934)))

(declare-fun lt!516914 () Unit!37869)

(assert (=> b!1153422 (= lt!516914 call!54360)))

(assert (=> b!1153422 call!54356))

(assert (=> b!1153422 (= lt!516932 call!54354)))

(declare-fun lt!516927 () Unit!37869)

(assert (=> b!1153422 (= lt!516927 (addStillContains!901 lt!516921 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944 k!934))))

(assert (=> b!1153422 (= e!656019 lt!516914)))

(declare-fun b!1153423 () Bool)

(assert (=> b!1153423 (= e!656017 (and e!656027 mapRes!45221))))

(declare-fun condMapEmpty!45221 () Bool)

(declare-fun mapDefault!45221 () ValueCell!13756)

