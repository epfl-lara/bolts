; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!98996 () Bool)

(assert start!98996)

(declare-fun b_free!24565 () Bool)

(declare-fun b_next!24565 () Bool)

(assert (=> start!98996 (= b_free!24565 (not b_next!24565))))

(declare-fun tp!86407 () Bool)

(declare-fun b_and!39993 () Bool)

(assert (=> start!98996 (= tp!86407 b_and!39993)))

(declare-fun b!1160938 () Bool)

(declare-datatypes ((Unit!38184 0))(
  ( (Unit!38185) )
))
(declare-fun e!660201 () Unit!38184)

(declare-fun lt!522331 () Unit!38184)

(assert (=> b!1160938 (= e!660201 lt!522331)))

(declare-fun call!56322 () Unit!38184)

(assert (=> b!1160938 (= lt!522331 call!56322)))

(declare-fun call!56321 () Bool)

(assert (=> b!1160938 call!56321))

(declare-fun b!1160939 () Bool)

(declare-fun e!660208 () Bool)

(declare-fun e!660202 () Bool)

(assert (=> b!1160939 (= e!660208 e!660202)))

(declare-fun res!770437 () Bool)

(assert (=> b!1160939 (=> (not res!770437) (not e!660202))))

(declare-datatypes ((array!74980 0))(
  ( (array!74981 (arr!36137 (Array (_ BitVec 32) (_ BitVec 64))) (size!36674 (_ BitVec 32))) )
))
(declare-fun lt!522328 () array!74980)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!74980 (_ BitVec 32)) Bool)

(assert (=> b!1160939 (= res!770437 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!522328 mask!1564))))

(declare-fun _keys!1208 () array!74980)

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1160939 (= lt!522328 (array!74981 (store (arr!36137 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!36674 _keys!1208)))))

(declare-fun b!1160940 () Bool)

(declare-fun res!770428 () Bool)

(assert (=> b!1160940 (=> (not res!770428) (not e!660208))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1160940 (= res!770428 (validMask!0 mask!1564))))

(declare-fun b!1160941 () Bool)

(declare-fun res!770432 () Bool)

(assert (=> b!1160941 (=> (not res!770432) (not e!660208))))

(assert (=> b!1160941 (= res!770432 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!36674 _keys!1208))))))

(declare-fun k!934 () (_ BitVec 64))

(declare-fun e!660206 () Bool)

(declare-fun b!1160942 () Bool)

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun arrayContainsKey!0 (array!74980 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1160942 (= e!660206 (arrayContainsKey!0 _keys!1208 k!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun b!1160943 () Bool)

(declare-fun res!770427 () Bool)

(assert (=> b!1160943 (=> (not res!770427) (not e!660208))))

(assert (=> b!1160943 (= res!770427 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun res!770435 () Bool)

(assert (=> start!98996 (=> (not res!770435) (not e!660208))))

(assert (=> start!98996 (= res!770435 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!36674 _keys!1208))))))

(assert (=> start!98996 e!660208))

(declare-fun tp_is_empty!29095 () Bool)

(assert (=> start!98996 tp_is_empty!29095))

(declare-fun array_inv!27524 (array!74980) Bool)

(assert (=> start!98996 (array_inv!27524 _keys!1208)))

(assert (=> start!98996 true))

(assert (=> start!98996 tp!86407))

(declare-datatypes ((V!43921 0))(
  ( (V!43922 (val!14604 Int)) )
))
(declare-datatypes ((ValueCell!13838 0))(
  ( (ValueCellFull!13838 (v!17242 V!43921)) (EmptyCell!13838) )
))
(declare-datatypes ((array!74982 0))(
  ( (array!74983 (arr!36138 (Array (_ BitVec 32) ValueCell!13838)) (size!36675 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!74982)

(declare-fun e!660209 () Bool)

(declare-fun array_inv!27525 (array!74982) Bool)

(assert (=> start!98996 (and (array_inv!27525 _values!996) e!660209)))

(declare-fun b!1160944 () Bool)

(declare-fun c!115891 () Bool)

(declare-fun lt!522329 () Bool)

(declare-fun extraKeys!923 () (_ BitVec 32))

(assert (=> b!1160944 (= c!115891 (and (not lt!522329) (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun e!660199 () Unit!38184)

(assert (=> b!1160944 (= e!660199 e!660201)))

(declare-fun b!1160945 () Bool)

(declare-datatypes ((tuple2!18678 0))(
  ( (tuple2!18679 (_1!9349 (_ BitVec 64)) (_2!9349 V!43921)) )
))
(declare-datatypes ((List!25456 0))(
  ( (Nil!25453) (Cons!25452 (h!26661 tuple2!18678) (t!37020 List!25456)) )
))
(declare-datatypes ((ListLongMap!16659 0))(
  ( (ListLongMap!16660 (toList!8345 List!25456)) )
))
(declare-fun lt!522327 () ListLongMap!16659)

(declare-fun minValue!944 () V!43921)

(declare-fun contains!6826 (ListLongMap!16659 (_ BitVec 64)) Bool)

(declare-fun +!3670 (ListLongMap!16659 tuple2!18678) ListLongMap!16659)

(assert (=> b!1160945 (contains!6826 (+!3670 lt!522327 (tuple2!18679 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944)) k!934)))

(declare-fun lt!522344 () Unit!38184)

(declare-fun addStillContains!967 (ListLongMap!16659 (_ BitVec 64) V!43921 (_ BitVec 64)) Unit!38184)

(assert (=> b!1160945 (= lt!522344 (addStillContains!967 lt!522327 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944 k!934))))

(declare-fun call!56324 () Bool)

(assert (=> b!1160945 call!56324))

(declare-fun call!56323 () ListLongMap!16659)

(assert (=> b!1160945 (= lt!522327 call!56323)))

(declare-fun lt!522324 () Unit!38184)

(declare-fun call!56325 () Unit!38184)

(assert (=> b!1160945 (= lt!522324 call!56325)))

(assert (=> b!1160945 (= e!660199 lt!522344)))

(declare-fun zeroValue!944 () V!43921)

(declare-fun bm!56318 () Bool)

(declare-fun defaultEntry!1004 () Int)

(declare-fun call!56327 () ListLongMap!16659)

(declare-fun lt!522345 () array!74982)

(declare-fun getCurrentListMapNoExtraKeys!4781 (array!74980 array!74982 (_ BitVec 32) (_ BitVec 32) V!43921 V!43921 (_ BitVec 32) Int) ListLongMap!16659)

(assert (=> bm!56318 (= call!56327 (getCurrentListMapNoExtraKeys!4781 lt!522328 lt!522345 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1160946 () Bool)

(declare-fun e!660210 () Bool)

(declare-fun e!660205 () Bool)

(assert (=> b!1160946 (= e!660210 e!660205)))

(declare-fun res!770429 () Bool)

(assert (=> b!1160946 (=> res!770429 e!660205)))

(assert (=> b!1160946 (= res!770429 (not (= (select (arr!36137 _keys!1208) from!1455) k!934)))))

(declare-fun e!660204 () Bool)

(assert (=> b!1160946 e!660204))

(declare-fun c!115894 () Bool)

(assert (=> b!1160946 (= c!115894 (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673))))

(declare-fun lt!522330 () Unit!38184)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!640 (array!74980 array!74982 (_ BitVec 32) (_ BitVec 32) V!43921 V!43921 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!38184)

(assert (=> b!1160946 (= lt!522330 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!640 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1160947 () Bool)

(declare-fun e!660195 () Bool)

(assert (=> b!1160947 (= e!660202 (not e!660195))))

(declare-fun res!770424 () Bool)

(assert (=> b!1160947 (=> res!770424 e!660195)))

(assert (=> b!1160947 (= res!770424 (bvsgt from!1455 i!673))))

(assert (=> b!1160947 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-fun lt!522334 () Unit!38184)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!74980 (_ BitVec 64) (_ BitVec 32)) Unit!38184)

(assert (=> b!1160947 (= lt!522334 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun b!1160948 () Bool)

(assert (=> b!1160948 (= e!660195 e!660210)))

(declare-fun res!770438 () Bool)

(assert (=> b!1160948 (=> res!770438 e!660210)))

(assert (=> b!1160948 (= res!770438 (not (= from!1455 i!673)))))

(declare-fun lt!522337 () ListLongMap!16659)

(assert (=> b!1160948 (= lt!522337 (getCurrentListMapNoExtraKeys!4781 lt!522328 lt!522345 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun lt!522341 () V!43921)

(assert (=> b!1160948 (= lt!522345 (array!74983 (store (arr!36138 _values!996) i!673 (ValueCellFull!13838 lt!522341)) (size!36675 _values!996)))))

(declare-fun dynLambda!2783 (Int (_ BitVec 64)) V!43921)

(assert (=> b!1160948 (= lt!522341 (dynLambda!2783 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!522335 () ListLongMap!16659)

(assert (=> b!1160948 (= lt!522335 (getCurrentListMapNoExtraKeys!4781 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun call!56328 () ListLongMap!16659)

(declare-fun bm!56319 () Bool)

(assert (=> bm!56319 (= call!56328 (getCurrentListMapNoExtraKeys!4781 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun bm!56320 () Bool)

(declare-fun c!115895 () Bool)

(declare-fun call!56326 () ListLongMap!16659)

(assert (=> bm!56320 (= call!56324 (contains!6826 (ite c!115895 lt!522327 call!56326) k!934))))

(declare-fun b!1160949 () Bool)

(declare-fun res!770431 () Bool)

(assert (=> b!1160949 (=> (not res!770431) (not e!660208))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1160949 (= res!770431 (validKeyInArray!0 k!934))))

(declare-fun b!1160950 () Bool)

(declare-fun e!660196 () Unit!38184)

(declare-fun Unit!38186 () Unit!38184)

(assert (=> b!1160950 (= e!660196 Unit!38186)))

(declare-fun mapNonEmpty!45467 () Bool)

(declare-fun mapRes!45467 () Bool)

(declare-fun tp!86406 () Bool)

(declare-fun e!660203 () Bool)

(assert (=> mapNonEmpty!45467 (= mapRes!45467 (and tp!86406 e!660203))))

(declare-fun mapValue!45467 () ValueCell!13838)

(declare-fun mapRest!45467 () (Array (_ BitVec 32) ValueCell!13838))

(declare-fun mapKey!45467 () (_ BitVec 32))

(assert (=> mapNonEmpty!45467 (= (arr!36138 _values!996) (store mapRest!45467 mapKey!45467 mapValue!45467))))

(declare-fun b!1160951 () Bool)

(declare-fun e!660200 () Unit!38184)

(declare-fun Unit!38187 () Unit!38184)

(assert (=> b!1160951 (= e!660200 Unit!38187)))

(declare-fun b!1160952 () Bool)

(assert (=> b!1160952 (= e!660205 true)))

(declare-fun e!660197 () Bool)

(assert (=> b!1160952 e!660197))

(declare-fun res!770430 () Bool)

(assert (=> b!1160952 (=> (not res!770430) (not e!660197))))

(declare-fun lt!522343 () ListLongMap!16659)

(declare-fun lt!522332 () ListLongMap!16659)

(assert (=> b!1160952 (= res!770430 (= lt!522343 lt!522332))))

(declare-fun -!1417 (ListLongMap!16659 (_ BitVec 64)) ListLongMap!16659)

(assert (=> b!1160952 (= lt!522343 (-!1417 lt!522335 k!934))))

(declare-fun lt!522325 () V!43921)

(assert (=> b!1160952 (= (-!1417 (+!3670 lt!522332 (tuple2!18679 (select (arr!36137 _keys!1208) from!1455) lt!522325)) (select (arr!36137 _keys!1208) from!1455)) lt!522332)))

(declare-fun lt!522339 () Unit!38184)

(declare-fun addThenRemoveForNewKeyIsSame!254 (ListLongMap!16659 (_ BitVec 64) V!43921) Unit!38184)

(assert (=> b!1160952 (= lt!522339 (addThenRemoveForNewKeyIsSame!254 lt!522332 (select (arr!36137 _keys!1208) from!1455) lt!522325))))

(declare-fun get!18464 (ValueCell!13838 V!43921) V!43921)

(assert (=> b!1160952 (= lt!522325 (get!18464 (select (arr!36138 _values!996) from!1455) lt!522341))))

(declare-fun lt!522338 () Unit!38184)

(assert (=> b!1160952 (= lt!522338 e!660200)))

(declare-fun c!115893 () Bool)

(assert (=> b!1160952 (= c!115893 (contains!6826 lt!522332 k!934))))

(assert (=> b!1160952 (= lt!522332 (getCurrentListMapNoExtraKeys!4781 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1160953 () Bool)

(declare-fun e!660198 () Bool)

(assert (=> b!1160953 (= e!660198 (ite (= k!934 #b0000000000000000000000000000000000000000000000000000000000000000) (not lt!522329) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun bm!56321 () Bool)

(assert (=> bm!56321 (= call!56326 call!56323)))

(declare-fun b!1160954 () Bool)

(declare-fun res!770433 () Bool)

(assert (=> b!1160954 (=> (not res!770433) (not e!660208))))

(assert (=> b!1160954 (= res!770433 (and (= (size!36675 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!36674 _keys!1208) (size!36675 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun bm!56322 () Bool)

(assert (=> bm!56322 (= call!56325 (addStillContains!967 lt!522332 (ite (or c!115895 c!115891) #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000) (ite (or c!115895 c!115891) zeroValue!944 minValue!944) k!934))))

(declare-fun b!1160955 () Bool)

(assert (=> b!1160955 (= e!660204 (= call!56327 (-!1417 call!56328 k!934)))))

(declare-fun b!1160956 () Bool)

(declare-fun res!770434 () Bool)

(assert (=> b!1160956 (=> (not res!770434) (not e!660208))))

(declare-datatypes ((List!25457 0))(
  ( (Nil!25454) (Cons!25453 (h!26662 (_ BitVec 64)) (t!37021 List!25457)) )
))
(declare-fun arrayNoDuplicates!0 (array!74980 (_ BitVec 32) List!25457) Bool)

(assert (=> b!1160956 (= res!770434 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!25454))))

(declare-fun b!1160957 () Bool)

(assert (=> b!1160957 call!56321))

(declare-fun lt!522336 () Unit!38184)

(assert (=> b!1160957 (= lt!522336 call!56322)))

(assert (=> b!1160957 (= e!660196 lt!522336)))

(declare-fun bm!56323 () Bool)

(assert (=> bm!56323 (= call!56323 (+!3670 lt!522332 (ite (or c!115895 c!115891) (tuple2!18679 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!18679 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944))))))

(declare-fun b!1160958 () Bool)

(declare-fun res!770436 () Bool)

(assert (=> b!1160958 (=> (not res!770436) (not e!660202))))

(assert (=> b!1160958 (= res!770436 (arrayNoDuplicates!0 lt!522328 #b00000000000000000000000000000000 Nil!25454))))

(declare-fun b!1160959 () Bool)

(declare-fun e!660207 () Bool)

(assert (=> b!1160959 (= e!660209 (and e!660207 mapRes!45467))))

(declare-fun condMapEmpty!45467 () Bool)

(declare-fun mapDefault!45467 () ValueCell!13838)

