; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!98986 () Bool)

(assert start!98986)

(declare-fun b_free!24555 () Bool)

(declare-fun b_next!24555 () Bool)

(assert (=> start!98986 (= b_free!24555 (not b_next!24555))))

(declare-fun tp!86376 () Bool)

(declare-fun b_and!39973 () Bool)

(assert (=> start!98986 (= tp!86376 b_and!39973)))

(declare-fun b!1160478 () Bool)

(declare-datatypes ((Unit!38159 0))(
  ( (Unit!38160) )
))
(declare-fun e!659950 () Unit!38159)

(declare-fun Unit!38161 () Unit!38159)

(assert (=> b!1160478 (= e!659950 Unit!38161)))

(declare-fun b!1160479 () Bool)

(declare-fun res!770213 () Bool)

(declare-fun e!659952 () Bool)

(assert (=> b!1160479 (=> (not res!770213) (not e!659952))))

(declare-fun i!673 () (_ BitVec 32))

(declare-datatypes ((array!74960 0))(
  ( (array!74961 (arr!36127 (Array (_ BitVec 32) (_ BitVec 64))) (size!36664 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!74960)

(assert (=> b!1160479 (= res!770213 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!36664 _keys!1208))))))

(declare-fun b!1160480 () Bool)

(declare-fun e!659941 () Unit!38159)

(declare-fun lt!521999 () Unit!38159)

(assert (=> b!1160480 (= e!659941 lt!521999)))

(declare-fun call!56201 () Unit!38159)

(assert (=> b!1160480 (= lt!521999 call!56201)))

(declare-fun call!56205 () Bool)

(assert (=> b!1160480 call!56205))

(declare-fun b!1160481 () Bool)

(declare-fun res!770211 () Bool)

(assert (=> b!1160481 (=> (not res!770211) (not e!659952))))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!74960 (_ BitVec 32)) Bool)

(assert (=> b!1160481 (= res!770211 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1160482 () Bool)

(declare-fun k0!934 () (_ BitVec 64))

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun e!659945 () Bool)

(declare-fun arrayContainsKey!0 (array!74960 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1160482 (= e!659945 (arrayContainsKey!0 _keys!1208 k0!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun b!1160483 () Bool)

(declare-fun e!659939 () Unit!38159)

(declare-fun Unit!38162 () Unit!38159)

(assert (=> b!1160483 (= e!659939 Unit!38162)))

(declare-fun b!1160484 () Bool)

(declare-fun res!770212 () Bool)

(assert (=> b!1160484 (=> (not res!770212) (not e!659952))))

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-datatypes ((V!43907 0))(
  ( (V!43908 (val!14599 Int)) )
))
(declare-datatypes ((ValueCell!13833 0))(
  ( (ValueCellFull!13833 (v!17237 V!43907)) (EmptyCell!13833) )
))
(declare-datatypes ((array!74962 0))(
  ( (array!74963 (arr!36128 (Array (_ BitVec 32) ValueCell!13833)) (size!36665 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!74962)

(assert (=> b!1160484 (= res!770212 (and (= (size!36665 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!36664 _keys!1208) (size!36665 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1160485 () Bool)

(declare-fun e!659940 () Bool)

(assert (=> b!1160485 (= e!659940 true)))

(declare-fun e!659943 () Bool)

(assert (=> b!1160485 e!659943))

(declare-fun res!770202 () Bool)

(assert (=> b!1160485 (=> (not res!770202) (not e!659943))))

(declare-datatypes ((tuple2!18668 0))(
  ( (tuple2!18669 (_1!9344 (_ BitVec 64)) (_2!9344 V!43907)) )
))
(declare-datatypes ((List!25446 0))(
  ( (Nil!25443) (Cons!25442 (h!26651 tuple2!18668) (t!37000 List!25446)) )
))
(declare-datatypes ((ListLongMap!16649 0))(
  ( (ListLongMap!16650 (toList!8340 List!25446)) )
))
(declare-fun lt!521994 () ListLongMap!16649)

(declare-fun lt!521997 () ListLongMap!16649)

(assert (=> b!1160485 (= res!770202 (= lt!521994 lt!521997))))

(declare-fun lt!522010 () ListLongMap!16649)

(declare-fun -!1412 (ListLongMap!16649 (_ BitVec 64)) ListLongMap!16649)

(assert (=> b!1160485 (= lt!521994 (-!1412 lt!522010 k0!934))))

(declare-fun lt!521998 () V!43907)

(declare-fun +!3665 (ListLongMap!16649 tuple2!18668) ListLongMap!16649)

(assert (=> b!1160485 (= (-!1412 (+!3665 lt!521997 (tuple2!18669 (select (arr!36127 _keys!1208) from!1455) lt!521998)) (select (arr!36127 _keys!1208) from!1455)) lt!521997)))

(declare-fun lt!521996 () Unit!38159)

(declare-fun addThenRemoveForNewKeyIsSame!249 (ListLongMap!16649 (_ BitVec 64) V!43907) Unit!38159)

(assert (=> b!1160485 (= lt!521996 (addThenRemoveForNewKeyIsSame!249 lt!521997 (select (arr!36127 _keys!1208) from!1455) lt!521998))))

(declare-fun lt!522001 () V!43907)

(declare-fun get!18455 (ValueCell!13833 V!43907) V!43907)

(assert (=> b!1160485 (= lt!521998 (get!18455 (select (arr!36128 _values!996) from!1455) lt!522001))))

(declare-fun lt!522003 () Unit!38159)

(assert (=> b!1160485 (= lt!522003 e!659939)))

(declare-fun c!115805 () Bool)

(declare-fun contains!6821 (ListLongMap!16649 (_ BitVec 64)) Bool)

(assert (=> b!1160485 (= c!115805 (contains!6821 lt!521997 k0!934))))

(declare-fun zeroValue!944 () V!43907)

(declare-fun defaultEntry!1004 () Int)

(declare-fun minValue!944 () V!43907)

(declare-fun getCurrentListMapNoExtraKeys!4776 (array!74960 array!74962 (_ BitVec 32) (_ BitVec 32) V!43907 V!43907 (_ BitVec 32) Int) ListLongMap!16649)

(assert (=> b!1160485 (= lt!521997 (getCurrentListMapNoExtraKeys!4776 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun bm!56199 () Bool)

(declare-fun call!56207 () ListLongMap!16649)

(declare-fun lt!522014 () array!74960)

(declare-fun lt!522000 () array!74962)

(assert (=> bm!56199 (= call!56207 (getCurrentListMapNoExtraKeys!4776 lt!522014 lt!522000 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1160486 () Bool)

(declare-fun e!659946 () Bool)

(declare-fun e!659955 () Bool)

(declare-fun mapRes!45452 () Bool)

(assert (=> b!1160486 (= e!659946 (and e!659955 mapRes!45452))))

(declare-fun condMapEmpty!45452 () Bool)

(declare-fun mapDefault!45452 () ValueCell!13833)

(assert (=> b!1160486 (= condMapEmpty!45452 (= (arr!36128 _values!996) ((as const (Array (_ BitVec 32) ValueCell!13833)) mapDefault!45452)))))

(declare-fun b!1160487 () Bool)

(declare-fun res!770200 () Bool)

(assert (=> b!1160487 (=> (not res!770200) (not e!659952))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1160487 (= res!770200 (validKeyInArray!0 k0!934))))

(declare-fun mapNonEmpty!45452 () Bool)

(declare-fun tp!86377 () Bool)

(declare-fun e!659949 () Bool)

(assert (=> mapNonEmpty!45452 (= mapRes!45452 (and tp!86377 e!659949))))

(declare-fun mapKey!45452 () (_ BitVec 32))

(declare-fun mapValue!45452 () ValueCell!13833)

(declare-fun mapRest!45452 () (Array (_ BitVec 32) ValueCell!13833))

(assert (=> mapNonEmpty!45452 (= (arr!36128 _values!996) (store mapRest!45452 mapKey!45452 mapValue!45452))))

(declare-fun b!1160488 () Bool)

(declare-fun res!770207 () Bool)

(assert (=> b!1160488 (=> (not res!770207) (not e!659952))))

(assert (=> b!1160488 (= res!770207 (= (select (arr!36127 _keys!1208) i!673) k0!934))))

(declare-fun bm!56200 () Bool)

(declare-fun call!56204 () ListLongMap!16649)

(declare-fun call!56206 () ListLongMap!16649)

(assert (=> bm!56200 (= call!56204 call!56206)))

(declare-fun mapIsEmpty!45452 () Bool)

(assert (=> mapIsEmpty!45452 mapRes!45452))

(declare-fun b!1160489 () Bool)

(assert (=> b!1160489 (= e!659941 e!659950)))

(declare-fun c!115804 () Bool)

(declare-fun lt!522002 () Bool)

(assert (=> b!1160489 (= c!115804 (and (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!522002))))

(declare-fun b!1160490 () Bool)

(declare-fun Unit!38163 () Unit!38159)

(assert (=> b!1160490 (= e!659939 Unit!38163)))

(assert (=> b!1160490 (= lt!522002 (= (bvand extraKeys!923 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(declare-fun c!115803 () Bool)

(assert (=> b!1160490 (= c!115803 (and (not lt!522002) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun lt!522009 () Unit!38159)

(declare-fun e!659944 () Unit!38159)

(assert (=> b!1160490 (= lt!522009 e!659944)))

(declare-fun lt!522015 () Unit!38159)

(declare-fun lemmaListMapContainsThenArrayContainsFrom!536 (array!74960 array!74962 (_ BitVec 32) (_ BitVec 32) V!43907 V!43907 (_ BitVec 64) (_ BitVec 32) Int) Unit!38159)

(assert (=> b!1160490 (= lt!522015 (lemmaListMapContainsThenArrayContainsFrom!536 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun c!115802 () Bool)

(assert (=> b!1160490 (= c!115802 (and (not (= k0!934 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!934 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun res!770199 () Bool)

(declare-fun e!659954 () Bool)

(assert (=> b!1160490 (= res!770199 e!659954)))

(assert (=> b!1160490 (=> (not res!770199) (not e!659945))))

(assert (=> b!1160490 e!659945))

(declare-fun lt!522004 () Unit!38159)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!74960 (_ BitVec 32) (_ BitVec 32)) Unit!38159)

(assert (=> b!1160490 (= lt!522004 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1208 #b00000000000000000000000000000000 from!1455))))

(declare-datatypes ((List!25447 0))(
  ( (Nil!25444) (Cons!25443 (h!26652 (_ BitVec 64)) (t!37001 List!25447)) )
))
(declare-fun arrayNoDuplicates!0 (array!74960 (_ BitVec 32) List!25447) Bool)

(assert (=> b!1160490 (arrayNoDuplicates!0 _keys!1208 from!1455 Nil!25444)))

(declare-fun lt!522006 () Unit!38159)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!74960 (_ BitVec 64) (_ BitVec 32) List!25447) Unit!38159)

(assert (=> b!1160490 (= lt!522006 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!1208 k0!934 from!1455 Nil!25444))))

(assert (=> b!1160490 false))

(declare-fun b!1160491 () Bool)

(declare-fun res!770201 () Bool)

(assert (=> b!1160491 (=> (not res!770201) (not e!659952))))

(assert (=> b!1160491 (= res!770201 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!25444))))

(declare-fun b!1160492 () Bool)

(declare-fun e!659953 () Bool)

(assert (=> b!1160492 (= e!659953 e!659940)))

(declare-fun res!770204 () Bool)

(assert (=> b!1160492 (=> res!770204 e!659940)))

(assert (=> b!1160492 (= res!770204 (not (= (select (arr!36127 _keys!1208) from!1455) k0!934)))))

(declare-fun e!659942 () Bool)

(assert (=> b!1160492 e!659942))

(declare-fun c!115801 () Bool)

(assert (=> b!1160492 (= c!115801 (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673))))

(declare-fun lt!522013 () Unit!38159)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!635 (array!74960 array!74962 (_ BitVec 32) (_ BitVec 32) V!43907 V!43907 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!38159)

(assert (=> b!1160492 (= lt!522013 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!635 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1160493 () Bool)

(declare-fun call!56208 () ListLongMap!16649)

(assert (=> b!1160493 (= e!659942 (= call!56207 (-!1412 call!56208 k0!934)))))

(declare-fun b!1160494 () Bool)

(assert (=> b!1160494 (= e!659954 (arrayContainsKey!0 _keys!1208 k0!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun b!1160495 () Bool)

(assert (=> b!1160495 call!56205))

(declare-fun lt!522005 () Unit!38159)

(assert (=> b!1160495 (= lt!522005 call!56201)))

(assert (=> b!1160495 (= e!659950 lt!522005)))

(declare-fun b!1160496 () Bool)

(declare-fun e!659948 () Bool)

(declare-fun e!659947 () Bool)

(assert (=> b!1160496 (= e!659948 (not e!659947))))

(declare-fun res!770203 () Bool)

(assert (=> b!1160496 (=> res!770203 e!659947)))

(assert (=> b!1160496 (= res!770203 (bvsgt from!1455 i!673))))

(assert (=> b!1160496 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-fun lt!522008 () Unit!38159)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!74960 (_ BitVec 64) (_ BitVec 32)) Unit!38159)

(assert (=> b!1160496 (= lt!522008 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1160497 () Bool)

(declare-fun c!115806 () Bool)

(assert (=> b!1160497 (= c!115806 (and (not lt!522002) (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(assert (=> b!1160497 (= e!659944 e!659941)))

(declare-fun b!1160498 () Bool)

(declare-fun lt!522012 () ListLongMap!16649)

(assert (=> b!1160498 (contains!6821 (+!3665 lt!522012 (tuple2!18669 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944)) k0!934)))

(declare-fun lt!522007 () Unit!38159)

(declare-fun call!56202 () Unit!38159)

(assert (=> b!1160498 (= lt!522007 call!56202)))

(declare-fun call!56203 () Bool)

(assert (=> b!1160498 call!56203))

(assert (=> b!1160498 (= lt!522012 call!56206)))

(declare-fun lt!522011 () Unit!38159)

(declare-fun addStillContains!962 (ListLongMap!16649 (_ BitVec 64) V!43907 (_ BitVec 64)) Unit!38159)

(assert (=> b!1160498 (= lt!522011 (addStillContains!962 lt!521997 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944 k0!934))))

(assert (=> b!1160498 (= e!659944 lt!522007)))

(declare-fun b!1160499 () Bool)

(declare-fun tp_is_empty!29085 () Bool)

(assert (=> b!1160499 (= e!659955 tp_is_empty!29085)))

(declare-fun b!1160500 () Bool)

(declare-fun res!770206 () Bool)

(assert (=> b!1160500 (=> (not res!770206) (not e!659952))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1160500 (= res!770206 (validMask!0 mask!1564))))

(declare-fun b!1160501 () Bool)

(assert (=> b!1160501 (= e!659942 (= call!56207 call!56208))))

(declare-fun res!770205 () Bool)

(assert (=> start!98986 (=> (not res!770205) (not e!659952))))

(assert (=> start!98986 (= res!770205 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!36664 _keys!1208))))))

(assert (=> start!98986 e!659952))

(assert (=> start!98986 tp_is_empty!29085))

(declare-fun array_inv!27514 (array!74960) Bool)

(assert (=> start!98986 (array_inv!27514 _keys!1208)))

(assert (=> start!98986 true))

(assert (=> start!98986 tp!86376))

(declare-fun array_inv!27515 (array!74962) Bool)

(assert (=> start!98986 (and (array_inv!27515 _values!996) e!659946)))

(declare-fun bm!56198 () Bool)

(assert (=> bm!56198 (= call!56205 call!56203)))

(declare-fun b!1160502 () Bool)

(assert (=> b!1160502 (= e!659954 (ite (= k0!934 #b0000000000000000000000000000000000000000000000000000000000000000) (not lt!522002) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!1160503 () Bool)

(assert (=> b!1160503 (= e!659949 tp_is_empty!29085)))

(declare-fun bm!56201 () Bool)

(assert (=> bm!56201 (= call!56203 (contains!6821 (ite c!115803 lt!522012 call!56204) k0!934))))

(declare-fun b!1160504 () Bool)

(assert (=> b!1160504 (= e!659947 e!659953)))

(declare-fun res!770208 () Bool)

(assert (=> b!1160504 (=> res!770208 e!659953)))

(assert (=> b!1160504 (= res!770208 (not (= from!1455 i!673)))))

(declare-fun lt!521995 () ListLongMap!16649)

(assert (=> b!1160504 (= lt!521995 (getCurrentListMapNoExtraKeys!4776 lt!522014 lt!522000 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(assert (=> b!1160504 (= lt!522000 (array!74963 (store (arr!36128 _values!996) i!673 (ValueCellFull!13833 lt!522001)) (size!36665 _values!996)))))

(declare-fun dynLambda!2778 (Int (_ BitVec 64)) V!43907)

(assert (=> b!1160504 (= lt!522001 (dynLambda!2778 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1160504 (= lt!522010 (getCurrentListMapNoExtraKeys!4776 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun bm!56202 () Bool)

(assert (=> bm!56202 (= call!56201 call!56202)))

(declare-fun b!1160505 () Bool)

(assert (=> b!1160505 (= e!659952 e!659948)))

(declare-fun res!770209 () Bool)

(assert (=> b!1160505 (=> (not res!770209) (not e!659948))))

(assert (=> b!1160505 (= res!770209 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!522014 mask!1564))))

(assert (=> b!1160505 (= lt!522014 (array!74961 (store (arr!36127 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!36664 _keys!1208)))))

(declare-fun bm!56203 () Bool)

(assert (=> bm!56203 (= call!56206 (+!3665 lt!521997 (ite (or c!115803 c!115806) (tuple2!18669 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!18669 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944))))))

(declare-fun b!1160506 () Bool)

(assert (=> b!1160506 (= e!659943 (= lt!521994 (getCurrentListMapNoExtraKeys!4776 lt!522014 lt!522000 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004)))))

(declare-fun bm!56204 () Bool)

(assert (=> bm!56204 (= call!56202 (addStillContains!962 (ite c!115803 lt!522012 lt!521997) (ite c!115803 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!115806 #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000)) (ite c!115803 minValue!944 (ite c!115806 zeroValue!944 minValue!944)) k0!934))))

(declare-fun bm!56205 () Bool)

(assert (=> bm!56205 (= call!56208 (getCurrentListMapNoExtraKeys!4776 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1160507 () Bool)

(declare-fun res!770210 () Bool)

(assert (=> b!1160507 (=> (not res!770210) (not e!659948))))

(assert (=> b!1160507 (= res!770210 (arrayNoDuplicates!0 lt!522014 #b00000000000000000000000000000000 Nil!25444))))

(assert (= (and start!98986 res!770205) b!1160500))

(assert (= (and b!1160500 res!770206) b!1160484))

(assert (= (and b!1160484 res!770212) b!1160481))

(assert (= (and b!1160481 res!770211) b!1160491))

(assert (= (and b!1160491 res!770201) b!1160479))

(assert (= (and b!1160479 res!770213) b!1160487))

(assert (= (and b!1160487 res!770200) b!1160488))

(assert (= (and b!1160488 res!770207) b!1160505))

(assert (= (and b!1160505 res!770209) b!1160507))

(assert (= (and b!1160507 res!770210) b!1160496))

(assert (= (and b!1160496 (not res!770203)) b!1160504))

(assert (= (and b!1160504 (not res!770208)) b!1160492))

(assert (= (and b!1160492 c!115801) b!1160493))

(assert (= (and b!1160492 (not c!115801)) b!1160501))

(assert (= (or b!1160493 b!1160501) bm!56199))

(assert (= (or b!1160493 b!1160501) bm!56205))

(assert (= (and b!1160492 (not res!770204)) b!1160485))

(assert (= (and b!1160485 c!115805) b!1160490))

(assert (= (and b!1160485 (not c!115805)) b!1160483))

(assert (= (and b!1160490 c!115803) b!1160498))

(assert (= (and b!1160490 (not c!115803)) b!1160497))

(assert (= (and b!1160497 c!115806) b!1160480))

(assert (= (and b!1160497 (not c!115806)) b!1160489))

(assert (= (and b!1160489 c!115804) b!1160495))

(assert (= (and b!1160489 (not c!115804)) b!1160478))

(assert (= (or b!1160480 b!1160495) bm!56202))

(assert (= (or b!1160480 b!1160495) bm!56200))

(assert (= (or b!1160480 b!1160495) bm!56198))

(assert (= (or b!1160498 bm!56198) bm!56201))

(assert (= (or b!1160498 bm!56202) bm!56204))

(assert (= (or b!1160498 bm!56200) bm!56203))

(assert (= (and b!1160490 c!115802) b!1160494))

(assert (= (and b!1160490 (not c!115802)) b!1160502))

(assert (= (and b!1160490 res!770199) b!1160482))

(assert (= (and b!1160485 res!770202) b!1160506))

(assert (= (and b!1160486 condMapEmpty!45452) mapIsEmpty!45452))

(assert (= (and b!1160486 (not condMapEmpty!45452)) mapNonEmpty!45452))

(get-info :version)

(assert (= (and mapNonEmpty!45452 ((_ is ValueCellFull!13833) mapValue!45452)) b!1160503))

(assert (= (and b!1160486 ((_ is ValueCellFull!13833) mapDefault!45452)) b!1160499))

(assert (= start!98986 b!1160486))

(declare-fun b_lambda!19679 () Bool)

(assert (=> (not b_lambda!19679) (not b!1160504)))

(declare-fun t!36999 () Bool)

(declare-fun tb!9375 () Bool)

(assert (=> (and start!98986 (= defaultEntry!1004 defaultEntry!1004) t!36999) tb!9375))

(declare-fun result!19307 () Bool)

(assert (=> tb!9375 (= result!19307 tp_is_empty!29085)))

(assert (=> b!1160504 t!36999))

(declare-fun b_and!39975 () Bool)

(assert (= b_and!39973 (and (=> t!36999 result!19307) b_and!39975)))

(declare-fun m!1069463 () Bool)

(assert (=> b!1160496 m!1069463))

(declare-fun m!1069465 () Bool)

(assert (=> b!1160496 m!1069465))

(declare-fun m!1069467 () Bool)

(assert (=> start!98986 m!1069467))

(declare-fun m!1069469 () Bool)

(assert (=> start!98986 m!1069469))

(declare-fun m!1069471 () Bool)

(assert (=> b!1160485 m!1069471))

(declare-fun m!1069473 () Bool)

(assert (=> b!1160485 m!1069473))

(declare-fun m!1069475 () Bool)

(assert (=> b!1160485 m!1069475))

(declare-fun m!1069477 () Bool)

(assert (=> b!1160485 m!1069477))

(declare-fun m!1069479 () Bool)

(assert (=> b!1160485 m!1069479))

(assert (=> b!1160485 m!1069473))

(declare-fun m!1069481 () Bool)

(assert (=> b!1160485 m!1069481))

(declare-fun m!1069483 () Bool)

(assert (=> b!1160485 m!1069483))

(assert (=> b!1160485 m!1069483))

(declare-fun m!1069485 () Bool)

(assert (=> b!1160485 m!1069485))

(assert (=> b!1160485 m!1069479))

(assert (=> b!1160485 m!1069483))

(declare-fun m!1069487 () Bool)

(assert (=> b!1160485 m!1069487))

(declare-fun m!1069489 () Bool)

(assert (=> mapNonEmpty!45452 m!1069489))

(declare-fun m!1069491 () Bool)

(assert (=> b!1160490 m!1069491))

(declare-fun m!1069493 () Bool)

(assert (=> b!1160490 m!1069493))

(declare-fun m!1069495 () Bool)

(assert (=> b!1160490 m!1069495))

(declare-fun m!1069497 () Bool)

(assert (=> b!1160490 m!1069497))

(declare-fun m!1069499 () Bool)

(assert (=> b!1160487 m!1069499))

(declare-fun m!1069501 () Bool)

(assert (=> b!1160491 m!1069501))

(declare-fun m!1069503 () Bool)

(assert (=> bm!56199 m!1069503))

(declare-fun m!1069505 () Bool)

(assert (=> b!1160482 m!1069505))

(assert (=> b!1160506 m!1069503))

(declare-fun m!1069507 () Bool)

(assert (=> b!1160507 m!1069507))

(declare-fun m!1069509 () Bool)

(assert (=> b!1160481 m!1069509))

(declare-fun m!1069511 () Bool)

(assert (=> b!1160504 m!1069511))

(declare-fun m!1069513 () Bool)

(assert (=> b!1160504 m!1069513))

(declare-fun m!1069515 () Bool)

(assert (=> b!1160504 m!1069515))

(declare-fun m!1069517 () Bool)

(assert (=> b!1160504 m!1069517))

(declare-fun m!1069519 () Bool)

(assert (=> b!1160493 m!1069519))

(declare-fun m!1069521 () Bool)

(assert (=> b!1160505 m!1069521))

(declare-fun m!1069523 () Bool)

(assert (=> b!1160505 m!1069523))

(assert (=> b!1160492 m!1069483))

(declare-fun m!1069525 () Bool)

(assert (=> b!1160492 m!1069525))

(declare-fun m!1069527 () Bool)

(assert (=> b!1160500 m!1069527))

(declare-fun m!1069529 () Bool)

(assert (=> b!1160498 m!1069529))

(assert (=> b!1160498 m!1069529))

(declare-fun m!1069531 () Bool)

(assert (=> b!1160498 m!1069531))

(declare-fun m!1069533 () Bool)

(assert (=> b!1160498 m!1069533))

(declare-fun m!1069535 () Bool)

(assert (=> b!1160488 m!1069535))

(assert (=> b!1160494 m!1069505))

(declare-fun m!1069537 () Bool)

(assert (=> bm!56203 m!1069537))

(assert (=> bm!56205 m!1069471))

(declare-fun m!1069539 () Bool)

(assert (=> bm!56204 m!1069539))

(declare-fun m!1069541 () Bool)

(assert (=> bm!56201 m!1069541))

(check-sat (not b!1160493) (not b_next!24555) (not bm!56205) tp_is_empty!29085 (not bm!56204) (not b!1160506) (not b_lambda!19679) (not b!1160485) (not b!1160507) (not b!1160492) (not mapNonEmpty!45452) (not b!1160498) (not bm!56201) (not b!1160491) (not b!1160504) (not b!1160494) (not b!1160496) (not b!1160487) (not b!1160482) (not b!1160505) (not start!98986) (not b!1160481) (not b!1160490) b_and!39975 (not bm!56203) (not b!1160500) (not bm!56199))
(check-sat b_and!39975 (not b_next!24555))
