; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!98654 () Bool)

(assert start!98654)

(declare-fun b_free!24223 () Bool)

(declare-fun b_next!24223 () Bool)

(assert (=> start!98654 (= b_free!24223 (not b_next!24223))))

(declare-fun tp!85380 () Bool)

(declare-fun b_and!39309 () Bool)

(assert (=> start!98654 (= tp!85380 b_and!39309)))

(declare-fun bm!52214 () Bool)

(declare-fun call!52220 () Bool)

(declare-fun call!52219 () Bool)

(assert (=> bm!52214 (= call!52220 call!52219)))

(declare-fun b!1145206 () Bool)

(declare-fun e!651473 () Bool)

(declare-fun tp_is_empty!28753 () Bool)

(assert (=> b!1145206 (= e!651473 tp_is_empty!28753)))

(declare-datatypes ((V!43465 0))(
  ( (V!43466 (val!14433 Int)) )
))
(declare-datatypes ((tuple2!18362 0))(
  ( (tuple2!18363 (_1!9191 (_ BitVec 64)) (_2!9191 V!43465)) )
))
(declare-datatypes ((List!25161 0))(
  ( (Nil!25158) (Cons!25157 (h!26366 tuple2!18362) (t!36383 List!25161)) )
))
(declare-datatypes ((ListLongMap!16343 0))(
  ( (ListLongMap!16344 (toList!8187 List!25161)) )
))
(declare-fun lt!511182 () ListLongMap!16343)

(declare-fun lt!511170 () ListLongMap!16343)

(declare-fun k!934 () (_ BitVec 64))

(declare-fun b!1145207 () Bool)

(declare-fun e!651477 () Bool)

(declare-fun -!1279 (ListLongMap!16343 (_ BitVec 64)) ListLongMap!16343)

(assert (=> b!1145207 (= e!651477 (= (-!1279 lt!511182 k!934) lt!511170))))

(declare-fun b!1145208 () Bool)

(declare-fun res!762734 () Bool)

(declare-fun e!651476 () Bool)

(assert (=> b!1145208 (=> (not res!762734) (not e!651476))))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1145208 (= res!762734 (validMask!0 mask!1564))))

(declare-fun b!1145209 () Bool)

(declare-fun e!651485 () Bool)

(assert (=> b!1145209 (= e!651485 true)))

(assert (=> b!1145209 e!651477))

(declare-fun res!762737 () Bool)

(assert (=> b!1145209 (=> (not res!762737) (not e!651477))))

(declare-datatypes ((array!74312 0))(
  ( (array!74313 (arr!35803 (Array (_ BitVec 32) (_ BitVec 64))) (size!36340 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!74312)

(declare-fun lt!511164 () V!43465)

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun +!3530 (ListLongMap!16343 tuple2!18362) ListLongMap!16343)

(assert (=> b!1145209 (= res!762737 (= (-!1279 (+!3530 lt!511170 (tuple2!18363 (select (arr!35803 _keys!1208) from!1455) lt!511164)) (select (arr!35803 _keys!1208) from!1455)) lt!511170))))

(declare-datatypes ((Unit!37525 0))(
  ( (Unit!37526) )
))
(declare-fun lt!511179 () Unit!37525)

(declare-fun addThenRemoveForNewKeyIsSame!134 (ListLongMap!16343 (_ BitVec 64) V!43465) Unit!37525)

(assert (=> b!1145209 (= lt!511179 (addThenRemoveForNewKeyIsSame!134 lt!511170 (select (arr!35803 _keys!1208) from!1455) lt!511164))))

(declare-fun lt!511171 () V!43465)

(declare-datatypes ((ValueCell!13667 0))(
  ( (ValueCellFull!13667 (v!17071 V!43465)) (EmptyCell!13667) )
))
(declare-datatypes ((array!74314 0))(
  ( (array!74315 (arr!35804 (Array (_ BitVec 32) ValueCell!13667)) (size!36341 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!74314)

(declare-fun get!18230 (ValueCell!13667 V!43465) V!43465)

(assert (=> b!1145209 (= lt!511164 (get!18230 (select (arr!35804 _values!996) from!1455) lt!511171))))

(declare-fun lt!511181 () Unit!37525)

(declare-fun e!651486 () Unit!37525)

(assert (=> b!1145209 (= lt!511181 e!651486)))

(declare-fun c!112816 () Bool)

(declare-fun contains!6688 (ListLongMap!16343 (_ BitVec 64)) Bool)

(assert (=> b!1145209 (= c!112816 (contains!6688 lt!511170 k!934))))

(declare-fun zeroValue!944 () V!43465)

(declare-fun defaultEntry!1004 () Int)

(declare-fun minValue!944 () V!43465)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun getCurrentListMapNoExtraKeys!4629 (array!74312 array!74314 (_ BitVec 32) (_ BitVec 32) V!43465 V!43465 (_ BitVec 32) Int) ListLongMap!16343)

(assert (=> b!1145209 (= lt!511170 (getCurrentListMapNoExtraKeys!4629 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1145210 () Bool)

(declare-fun e!651479 () Bool)

(declare-fun e!651483 () Bool)

(assert (=> b!1145210 (= e!651479 (not e!651483))))

(declare-fun res!762732 () Bool)

(assert (=> b!1145210 (=> res!762732 e!651483)))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1145210 (= res!762732 (bvsgt from!1455 i!673))))

(declare-fun arrayContainsKey!0 (array!74312 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1145210 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-fun lt!511174 () Unit!37525)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!74312 (_ BitVec 64) (_ BitVec 32)) Unit!37525)

(assert (=> b!1145210 (= lt!511174 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun b!1145211 () Bool)

(declare-fun res!762730 () Bool)

(assert (=> b!1145211 (=> (not res!762730) (not e!651476))))

(assert (=> b!1145211 (= res!762730 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!36340 _keys!1208))))))

(declare-fun b!1145212 () Bool)

(declare-fun e!651482 () Unit!37525)

(declare-fun lt!511163 () Unit!37525)

(assert (=> b!1145212 (= e!651482 lt!511163)))

(declare-fun call!52222 () Unit!37525)

(assert (=> b!1145212 (= lt!511163 call!52222)))

(assert (=> b!1145212 call!52220))

(declare-fun bm!52216 () Bool)

(declare-fun call!52217 () ListLongMap!16343)

(declare-fun call!52218 () ListLongMap!16343)

(assert (=> bm!52216 (= call!52217 call!52218)))

(declare-fun b!1145213 () Bool)

(declare-fun e!651478 () Bool)

(assert (=> b!1145213 (= e!651478 (arrayContainsKey!0 _keys!1208 k!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun b!1145214 () Bool)

(declare-fun lt!511168 () ListLongMap!16343)

(assert (=> b!1145214 (contains!6688 (+!3530 lt!511168 (tuple2!18363 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944)) k!934)))

(declare-fun lt!511173 () Unit!37525)

(declare-fun addStillContains!828 (ListLongMap!16343 (_ BitVec 64) V!43465 (_ BitVec 64)) Unit!37525)

(assert (=> b!1145214 (= lt!511173 (addStillContains!828 lt!511168 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944 k!934))))

(assert (=> b!1145214 call!52219))

(assert (=> b!1145214 (= lt!511168 call!52218)))

(declare-fun lt!511176 () Unit!37525)

(declare-fun call!52224 () Unit!37525)

(assert (=> b!1145214 (= lt!511176 call!52224)))

(declare-fun e!651474 () Unit!37525)

(assert (=> b!1145214 (= e!651474 lt!511173)))

(declare-fun b!1145215 () Bool)

(declare-fun e!651475 () Unit!37525)

(declare-fun Unit!37527 () Unit!37525)

(assert (=> b!1145215 (= e!651475 Unit!37527)))

(declare-fun b!1145216 () Bool)

(declare-fun e!651489 () Bool)

(assert (=> b!1145216 (= e!651489 tp_is_empty!28753)))

(declare-fun b!1145217 () Bool)

(assert (=> b!1145217 call!52220))

(declare-fun lt!511166 () Unit!37525)

(assert (=> b!1145217 (= lt!511166 call!52222)))

(assert (=> b!1145217 (= e!651475 lt!511166)))

(declare-fun b!1145218 () Bool)

(declare-fun Unit!37528 () Unit!37525)

(assert (=> b!1145218 (= e!651486 Unit!37528)))

(declare-fun lt!511162 () Bool)

(assert (=> b!1145218 (= lt!511162 (= (bvand extraKeys!923 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(declare-fun c!112818 () Bool)

(assert (=> b!1145218 (= c!112818 (and (not lt!511162) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun lt!511167 () Unit!37525)

(assert (=> b!1145218 (= lt!511167 e!651474)))

(declare-fun lt!511180 () Unit!37525)

(declare-fun lemmaListMapContainsThenArrayContainsFrom!422 (array!74312 array!74314 (_ BitVec 32) (_ BitVec 32) V!43465 V!43465 (_ BitVec 64) (_ BitVec 32) Int) Unit!37525)

(assert (=> b!1145218 (= lt!511180 (lemmaListMapContainsThenArrayContainsFrom!422 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun c!112817 () Bool)

(assert (=> b!1145218 (= c!112817 (and (not (= k!934 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!934 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun res!762729 () Bool)

(assert (=> b!1145218 (= res!762729 e!651478)))

(declare-fun e!651487 () Bool)

(assert (=> b!1145218 (=> (not res!762729) (not e!651487))))

(assert (=> b!1145218 e!651487))

(declare-fun lt!511175 () Unit!37525)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!74312 (_ BitVec 32) (_ BitVec 32)) Unit!37525)

(assert (=> b!1145218 (= lt!511175 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1208 #b00000000000000000000000000000000 from!1455))))

(declare-datatypes ((List!25162 0))(
  ( (Nil!25159) (Cons!25158 (h!26367 (_ BitVec 64)) (t!36384 List!25162)) )
))
(declare-fun arrayNoDuplicates!0 (array!74312 (_ BitVec 32) List!25162) Bool)

(assert (=> b!1145218 (arrayNoDuplicates!0 _keys!1208 from!1455 Nil!25159)))

(declare-fun lt!511177 () Unit!37525)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!74312 (_ BitVec 64) (_ BitVec 32) List!25162) Unit!37525)

(assert (=> b!1145218 (= lt!511177 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!1208 k!934 from!1455 Nil!25159))))

(assert (=> b!1145218 false))

(declare-fun b!1145219 () Bool)

(declare-fun res!762735 () Bool)

(assert (=> b!1145219 (=> (not res!762735) (not e!651476))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1145219 (= res!762735 (validKeyInArray!0 k!934))))

(declare-fun mapIsEmpty!44954 () Bool)

(declare-fun mapRes!44954 () Bool)

(assert (=> mapIsEmpty!44954 mapRes!44954))

(declare-fun b!1145220 () Bool)

(assert (=> b!1145220 (= e!651476 e!651479)))

(declare-fun res!762736 () Bool)

(assert (=> b!1145220 (=> (not res!762736) (not e!651479))))

(declare-fun lt!511165 () array!74312)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!74312 (_ BitVec 32)) Bool)

(assert (=> b!1145220 (= res!762736 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!511165 mask!1564))))

(assert (=> b!1145220 (= lt!511165 (array!74313 (store (arr!35803 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!36340 _keys!1208)))))

(declare-fun res!762739 () Bool)

(assert (=> start!98654 (=> (not res!762739) (not e!651476))))

(assert (=> start!98654 (= res!762739 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!36340 _keys!1208))))))

(assert (=> start!98654 e!651476))

(assert (=> start!98654 tp_is_empty!28753))

(declare-fun array_inv!27312 (array!74312) Bool)

(assert (=> start!98654 (array_inv!27312 _keys!1208)))

(assert (=> start!98654 true))

(assert (=> start!98654 tp!85380))

(declare-fun e!651480 () Bool)

(declare-fun array_inv!27313 (array!74314) Bool)

(assert (=> start!98654 (and (array_inv!27313 _values!996) e!651480)))

(declare-fun bm!52215 () Bool)

(assert (=> bm!52215 (= call!52222 call!52224)))

(declare-fun b!1145221 () Bool)

(declare-fun res!762741 () Bool)

(assert (=> b!1145221 (=> (not res!762741) (not e!651479))))

(assert (=> b!1145221 (= res!762741 (arrayNoDuplicates!0 lt!511165 #b00000000000000000000000000000000 Nil!25159))))

(declare-fun b!1145222 () Bool)

(declare-fun e!651484 () Bool)

(assert (=> b!1145222 (= e!651483 e!651484)))

(declare-fun res!762740 () Bool)

(assert (=> b!1145222 (=> res!762740 e!651484)))

(assert (=> b!1145222 (= res!762740 (not (= from!1455 i!673)))))

(declare-fun lt!511178 () array!74314)

(declare-fun lt!511172 () ListLongMap!16343)

(assert (=> b!1145222 (= lt!511172 (getCurrentListMapNoExtraKeys!4629 lt!511165 lt!511178 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(assert (=> b!1145222 (= lt!511178 (array!74315 (store (arr!35804 _values!996) i!673 (ValueCellFull!13667 lt!511171)) (size!36341 _values!996)))))

(declare-fun dynLambda!2673 (Int (_ BitVec 64)) V!43465)

(assert (=> b!1145222 (= lt!511171 (dynLambda!2673 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1145222 (= lt!511182 (getCurrentListMapNoExtraKeys!4629 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun bm!52217 () Bool)

(declare-fun c!112814 () Bool)

(assert (=> bm!52217 (= call!52218 (+!3530 lt!511170 (ite (or c!112818 c!112814) (tuple2!18363 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!18363 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944))))))

(declare-fun b!1145223 () Bool)

(declare-fun e!651481 () Bool)

(declare-fun call!52221 () ListLongMap!16343)

(declare-fun call!52223 () ListLongMap!16343)

(assert (=> b!1145223 (= e!651481 (= call!52221 call!52223))))

(declare-fun b!1145224 () Bool)

(assert (=> b!1145224 (= c!112814 (and (not lt!511162) (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(assert (=> b!1145224 (= e!651474 e!651482)))

(declare-fun b!1145225 () Bool)

(assert (=> b!1145225 (= e!651481 (= call!52221 (-!1279 call!52223 k!934)))))

(declare-fun mapNonEmpty!44954 () Bool)

(declare-fun tp!85381 () Bool)

(assert (=> mapNonEmpty!44954 (= mapRes!44954 (and tp!85381 e!651473))))

(declare-fun mapRest!44954 () (Array (_ BitVec 32) ValueCell!13667))

(declare-fun mapValue!44954 () ValueCell!13667)

(declare-fun mapKey!44954 () (_ BitVec 32))

(assert (=> mapNonEmpty!44954 (= (arr!35804 _values!996) (store mapRest!44954 mapKey!44954 mapValue!44954))))

(declare-fun bm!52218 () Bool)

(assert (=> bm!52218 (= call!52223 (getCurrentListMapNoExtraKeys!4629 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1145226 () Bool)

(assert (=> b!1145226 (= e!651484 e!651485)))

(declare-fun res!762733 () Bool)

(assert (=> b!1145226 (=> res!762733 e!651485)))

(assert (=> b!1145226 (= res!762733 (not (= (select (arr!35803 _keys!1208) from!1455) k!934)))))

(assert (=> b!1145226 e!651481))

(declare-fun c!112813 () Bool)

(assert (=> b!1145226 (= c!112813 (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673))))

(declare-fun lt!511169 () Unit!37525)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!532 (array!74312 array!74314 (_ BitVec 32) (_ BitVec 32) V!43465 V!43465 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!37525)

(assert (=> b!1145226 (= lt!511169 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!532 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1145227 () Bool)

(declare-fun Unit!37529 () Unit!37525)

(assert (=> b!1145227 (= e!651486 Unit!37529)))

(declare-fun b!1145228 () Bool)

(declare-fun res!762731 () Bool)

(assert (=> b!1145228 (=> (not res!762731) (not e!651476))))

(assert (=> b!1145228 (= res!762731 (= (select (arr!35803 _keys!1208) i!673) k!934))))

(declare-fun b!1145229 () Bool)

(declare-fun res!762742 () Bool)

(assert (=> b!1145229 (=> (not res!762742) (not e!651476))))

(assert (=> b!1145229 (= res!762742 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!25159))))

(declare-fun bm!52219 () Bool)

(assert (=> bm!52219 (= call!52221 (getCurrentListMapNoExtraKeys!4629 lt!511165 lt!511178 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun bm!52220 () Bool)

(assert (=> bm!52220 (= call!52219 (contains!6688 (ite c!112818 lt!511168 call!52217) k!934))))

(declare-fun b!1145230 () Bool)

(assert (=> b!1145230 (= e!651480 (and e!651489 mapRes!44954))))

(declare-fun condMapEmpty!44954 () Bool)

(declare-fun mapDefault!44954 () ValueCell!13667)

