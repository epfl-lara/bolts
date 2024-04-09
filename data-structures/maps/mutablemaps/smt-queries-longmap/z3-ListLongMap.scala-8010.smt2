; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!98938 () Bool)

(assert start!98938)

(declare-fun b_free!24507 () Bool)

(declare-fun b_next!24507 () Bool)

(assert (=> start!98938 (= b_free!24507 (not b_next!24507))))

(declare-fun tp!86233 () Bool)

(declare-fun b_and!39877 () Bool)

(assert (=> start!98938 (= tp!86233 b_and!39877)))

(declare-fun b!1158270 () Bool)

(declare-datatypes ((V!43843 0))(
  ( (V!43844 (val!14575 Int)) )
))
(declare-datatypes ((tuple2!18620 0))(
  ( (tuple2!18621 (_1!9320 (_ BitVec 64)) (_2!9320 V!43843)) )
))
(declare-datatypes ((List!25399 0))(
  ( (Nil!25396) (Cons!25395 (h!26604 tuple2!18620) (t!36905 List!25399)) )
))
(declare-datatypes ((ListLongMap!16601 0))(
  ( (ListLongMap!16602 (toList!8316 List!25399)) )
))
(declare-fun lt!520431 () ListLongMap!16601)

(declare-fun minValue!944 () V!43843)

(declare-fun k0!934 () (_ BitVec 64))

(declare-fun contains!6800 (ListLongMap!16601 (_ BitVec 64)) Bool)

(declare-fun +!3644 (ListLongMap!16601 tuple2!18620) ListLongMap!16601)

(assert (=> b!1158270 (contains!6800 (+!3644 lt!520431 (tuple2!18621 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944)) k0!934)))

(declare-datatypes ((Unit!38056 0))(
  ( (Unit!38057) )
))
(declare-fun lt!520429 () Unit!38056)

(declare-fun addStillContains!940 (ListLongMap!16601 (_ BitVec 64) V!43843 (_ BitVec 64)) Unit!38056)

(assert (=> b!1158270 (= lt!520429 (addStillContains!940 lt!520431 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944 k0!934))))

(declare-fun call!55625 () Bool)

(assert (=> b!1158270 call!55625))

(declare-fun call!55629 () ListLongMap!16601)

(assert (=> b!1158270 (= lt!520431 call!55629)))

(declare-fun lt!520410 () Unit!38056)

(declare-fun call!55630 () Unit!38056)

(assert (=> b!1158270 (= lt!520410 call!55630)))

(declare-fun e!658728 () Unit!38056)

(assert (=> b!1158270 (= e!658728 lt!520429)))

(declare-fun bm!55622 () Bool)

(declare-fun call!55628 () ListLongMap!16601)

(assert (=> bm!55622 (= call!55628 call!55629)))

(declare-fun c!115369 () Bool)

(declare-fun bm!55623 () Bool)

(assert (=> bm!55623 (= call!55625 (contains!6800 (ite c!115369 lt!520431 call!55628) k0!934))))

(declare-fun mapIsEmpty!45380 () Bool)

(declare-fun mapRes!45380 () Bool)

(assert (=> mapIsEmpty!45380 mapRes!45380))

(declare-fun b!1158271 () Bool)

(declare-fun call!55632 () Bool)

(assert (=> b!1158271 call!55632))

(declare-fun lt!520418 () Unit!38056)

(declare-fun call!55626 () Unit!38056)

(assert (=> b!1158271 (= lt!520418 call!55626)))

(declare-fun e!658717 () Unit!38056)

(assert (=> b!1158271 (= e!658717 lt!520418)))

(declare-fun zeroValue!944 () V!43843)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-datatypes ((array!74864 0))(
  ( (array!74865 (arr!36079 (Array (_ BitVec 32) (_ BitVec 64))) (size!36616 (_ BitVec 32))) )
))
(declare-fun lt!520423 () array!74864)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-fun bm!55624 () Bool)

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun call!55627 () ListLongMap!16601)

(declare-datatypes ((ValueCell!13809 0))(
  ( (ValueCellFull!13809 (v!17213 V!43843)) (EmptyCell!13809) )
))
(declare-datatypes ((array!74866 0))(
  ( (array!74867 (arr!36080 (Array (_ BitVec 32) ValueCell!13809)) (size!36617 (_ BitVec 32))) )
))
(declare-fun lt!520420 () array!74866)

(declare-fun getCurrentListMapNoExtraKeys!4753 (array!74864 array!74866 (_ BitVec 32) (_ BitVec 32) V!43843 V!43843 (_ BitVec 32) Int) ListLongMap!16601)

(assert (=> bm!55624 (= call!55627 (getCurrentListMapNoExtraKeys!4753 lt!520423 lt!520420 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1158272 () Bool)

(declare-fun e!658726 () Bool)

(declare-fun lt!520426 () Bool)

(assert (=> b!1158272 (= e!658726 (ite (= k0!934 #b0000000000000000000000000000000000000000000000000000000000000000) (not lt!520426) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!1158273 () Bool)

(declare-fun e!658721 () Bool)

(declare-fun tp_is_empty!29037 () Bool)

(assert (=> b!1158273 (= e!658721 tp_is_empty!29037)))

(declare-fun b!1158274 () Bool)

(declare-fun Unit!38058 () Unit!38056)

(assert (=> b!1158274 (= e!658717 Unit!38058)))

(declare-fun b!1158275 () Bool)

(declare-fun res!769124 () Bool)

(declare-fun e!658731 () Bool)

(assert (=> b!1158275 (=> (not res!769124) (not e!658731))))

(declare-fun _keys!1208 () array!74864)

(declare-datatypes ((List!25400 0))(
  ( (Nil!25397) (Cons!25396 (h!26605 (_ BitVec 64)) (t!36906 List!25400)) )
))
(declare-fun arrayNoDuplicates!0 (array!74864 (_ BitVec 32) List!25400) Bool)

(assert (=> b!1158275 (= res!769124 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!25397))))

(declare-fun b!1158276 () Bool)

(declare-fun e!658725 () Bool)

(declare-fun call!55631 () ListLongMap!16601)

(assert (=> b!1158276 (= e!658725 (= call!55627 call!55631))))

(declare-fun b!1158277 () Bool)

(declare-fun e!658720 () Bool)

(declare-fun e!658718 () Bool)

(assert (=> b!1158277 (= e!658720 e!658718)))

(declare-fun res!769131 () Bool)

(assert (=> b!1158277 (=> res!769131 e!658718)))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1158277 (= res!769131 (not (= from!1455 i!673)))))

(declare-fun lt!520412 () ListLongMap!16601)

(assert (=> b!1158277 (= lt!520412 (getCurrentListMapNoExtraKeys!4753 lt!520423 lt!520420 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun lt!520425 () V!43843)

(declare-fun _values!996 () array!74866)

(assert (=> b!1158277 (= lt!520420 (array!74867 (store (arr!36080 _values!996) i!673 (ValueCellFull!13809 lt!520425)) (size!36617 _values!996)))))

(declare-fun dynLambda!2759 (Int (_ BitVec 64)) V!43843)

(assert (=> b!1158277 (= lt!520425 (dynLambda!2759 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!520428 () ListLongMap!16601)

(assert (=> b!1158277 (= lt!520428 (getCurrentListMapNoExtraKeys!4753 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1158278 () Bool)

(declare-fun e!658730 () Unit!38056)

(declare-fun lt!520422 () Unit!38056)

(assert (=> b!1158278 (= e!658730 lt!520422)))

(assert (=> b!1158278 (= lt!520422 call!55626)))

(assert (=> b!1158278 call!55632))

(declare-fun b!1158279 () Bool)

(declare-fun c!115370 () Bool)

(assert (=> b!1158279 (= c!115370 (and (not lt!520426) (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(assert (=> b!1158279 (= e!658728 e!658730)))

(declare-fun bm!55625 () Bool)

(assert (=> bm!55625 (= call!55631 (getCurrentListMapNoExtraKeys!4753 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun bm!55626 () Bool)

(assert (=> bm!55626 (= call!55626 call!55630)))

(declare-fun b!1158280 () Bool)

(declare-fun res!769120 () Bool)

(assert (=> b!1158280 (=> (not res!769120) (not e!658731))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1158280 (= res!769120 (validKeyInArray!0 k0!934))))

(declare-fun b!1158281 () Bool)

(declare-fun -!1390 (ListLongMap!16601 (_ BitVec 64)) ListLongMap!16601)

(assert (=> b!1158281 (= e!658725 (= call!55627 (-!1390 call!55631 k0!934)))))

(declare-fun b!1158282 () Bool)

(declare-fun e!658719 () Bool)

(assert (=> b!1158282 (= e!658719 (not e!658720))))

(declare-fun res!769133 () Bool)

(assert (=> b!1158282 (=> res!769133 e!658720)))

(assert (=> b!1158282 (= res!769133 (bvsgt from!1455 i!673))))

(declare-fun arrayContainsKey!0 (array!74864 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1158282 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-fun lt!520427 () Unit!38056)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!74864 (_ BitVec 64) (_ BitVec 32)) Unit!38056)

(assert (=> b!1158282 (= lt!520427 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun e!658716 () Bool)

(declare-fun b!1158283 () Bool)

(assert (=> b!1158283 (= e!658716 (arrayContainsKey!0 _keys!1208 k0!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun res!769128 () Bool)

(assert (=> start!98938 (=> (not res!769128) (not e!658731))))

(assert (=> start!98938 (= res!769128 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!36616 _keys!1208))))))

(assert (=> start!98938 e!658731))

(assert (=> start!98938 tp_is_empty!29037))

(declare-fun array_inv!27478 (array!74864) Bool)

(assert (=> start!98938 (array_inv!27478 _keys!1208)))

(assert (=> start!98938 true))

(assert (=> start!98938 tp!86233))

(declare-fun e!658723 () Bool)

(declare-fun array_inv!27479 (array!74866) Bool)

(assert (=> start!98938 (and (array_inv!27479 _values!996) e!658723)))

(declare-fun b!1158284 () Bool)

(declare-fun res!769132 () Bool)

(assert (=> b!1158284 (=> (not res!769132) (not e!658719))))

(assert (=> b!1158284 (= res!769132 (arrayNoDuplicates!0 lt!520423 #b00000000000000000000000000000000 Nil!25397))))

(declare-fun lt!520421 () ListLongMap!16601)

(declare-fun e!658715 () Bool)

(declare-fun b!1158285 () Bool)

(assert (=> b!1158285 (= e!658715 (= lt!520421 (getCurrentListMapNoExtraKeys!4753 lt!520423 lt!520420 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004)))))

(declare-fun mapNonEmpty!45380 () Bool)

(declare-fun tp!86232 () Bool)

(assert (=> mapNonEmpty!45380 (= mapRes!45380 (and tp!86232 e!658721))))

(declare-fun mapValue!45380 () ValueCell!13809)

(declare-fun mapRest!45380 () (Array (_ BitVec 32) ValueCell!13809))

(declare-fun mapKey!45380 () (_ BitVec 32))

(assert (=> mapNonEmpty!45380 (= (arr!36080 _values!996) (store mapRest!45380 mapKey!45380 mapValue!45380))))

(declare-fun lt!520413 () ListLongMap!16601)

(declare-fun bm!55627 () Bool)

(assert (=> bm!55627 (= call!55630 (addStillContains!940 lt!520413 (ite (or c!115369 c!115370) #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000) (ite (or c!115369 c!115370) zeroValue!944 minValue!944) k0!934))))

(declare-fun b!1158286 () Bool)

(declare-fun res!769130 () Bool)

(assert (=> b!1158286 (=> (not res!769130) (not e!658731))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1158286 (= res!769130 (validMask!0 mask!1564))))

(declare-fun b!1158287 () Bool)

(assert (=> b!1158287 (= e!658726 (arrayContainsKey!0 _keys!1208 k0!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun b!1158288 () Bool)

(declare-fun res!769129 () Bool)

(assert (=> b!1158288 (=> (not res!769129) (not e!658731))))

(assert (=> b!1158288 (= res!769129 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!36616 _keys!1208))))))

(declare-fun b!1158289 () Bool)

(declare-fun e!658724 () Bool)

(assert (=> b!1158289 (= e!658718 e!658724)))

(declare-fun res!769123 () Bool)

(assert (=> b!1158289 (=> res!769123 e!658724)))

(assert (=> b!1158289 (= res!769123 (not (= (select (arr!36079 _keys!1208) from!1455) k0!934)))))

(assert (=> b!1158289 e!658725))

(declare-fun c!115374 () Bool)

(assert (=> b!1158289 (= c!115374 (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673))))

(declare-fun lt!520416 () Unit!38056)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!617 (array!74864 array!74866 (_ BitVec 32) (_ BitVec 32) V!43843 V!43843 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!38056)

(assert (=> b!1158289 (= lt!520416 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!617 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1158290 () Bool)

(assert (=> b!1158290 (= e!658730 e!658717)))

(declare-fun c!115373 () Bool)

(assert (=> b!1158290 (= c!115373 (and (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!520426))))

(declare-fun b!1158291 () Bool)

(declare-fun res!769125 () Bool)

(assert (=> b!1158291 (=> (not res!769125) (not e!658731))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!74864 (_ BitVec 32)) Bool)

(assert (=> b!1158291 (= res!769125 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1158292 () Bool)

(declare-fun res!769121 () Bool)

(assert (=> b!1158292 (=> (not res!769121) (not e!658731))))

(assert (=> b!1158292 (= res!769121 (and (= (size!36617 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!36616 _keys!1208) (size!36617 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1158293 () Bool)

(declare-fun e!658727 () Bool)

(assert (=> b!1158293 (= e!658723 (and e!658727 mapRes!45380))))

(declare-fun condMapEmpty!45380 () Bool)

(declare-fun mapDefault!45380 () ValueCell!13809)

(assert (=> b!1158293 (= condMapEmpty!45380 (= (arr!36080 _values!996) ((as const (Array (_ BitVec 32) ValueCell!13809)) mapDefault!45380)))))

(declare-fun bm!55628 () Bool)

(assert (=> bm!55628 (= call!55629 (+!3644 lt!520413 (ite (or c!115369 c!115370) (tuple2!18621 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!18621 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944))))))

(declare-fun b!1158294 () Bool)

(assert (=> b!1158294 (= e!658727 tp_is_empty!29037)))

(declare-fun b!1158295 () Bool)

(declare-fun e!658722 () Unit!38056)

(declare-fun Unit!38059 () Unit!38056)

(assert (=> b!1158295 (= e!658722 Unit!38059)))

(assert (=> b!1158295 (= lt!520426 (= (bvand extraKeys!923 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(assert (=> b!1158295 (= c!115369 (and (not lt!520426) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun lt!520417 () Unit!38056)

(assert (=> b!1158295 (= lt!520417 e!658728)))

(declare-fun lt!520424 () Unit!38056)

(declare-fun lemmaListMapContainsThenArrayContainsFrom!516 (array!74864 array!74866 (_ BitVec 32) (_ BitVec 32) V!43843 V!43843 (_ BitVec 64) (_ BitVec 32) Int) Unit!38056)

(assert (=> b!1158295 (= lt!520424 (lemmaListMapContainsThenArrayContainsFrom!516 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun c!115372 () Bool)

(assert (=> b!1158295 (= c!115372 (and (not (= k0!934 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!934 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun res!769122 () Bool)

(assert (=> b!1158295 (= res!769122 e!658726)))

(assert (=> b!1158295 (=> (not res!769122) (not e!658716))))

(assert (=> b!1158295 e!658716))

(declare-fun lt!520411 () Unit!38056)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!74864 (_ BitVec 32) (_ BitVec 32)) Unit!38056)

(assert (=> b!1158295 (= lt!520411 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1208 #b00000000000000000000000000000000 from!1455))))

(assert (=> b!1158295 (arrayNoDuplicates!0 _keys!1208 from!1455 Nil!25397)))

(declare-fun lt!520414 () Unit!38056)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!74864 (_ BitVec 64) (_ BitVec 32) List!25400) Unit!38056)

(assert (=> b!1158295 (= lt!520414 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!1208 k0!934 from!1455 Nil!25397))))

(assert (=> b!1158295 false))

(declare-fun bm!55629 () Bool)

(assert (=> bm!55629 (= call!55632 call!55625)))

(declare-fun b!1158296 () Bool)

(declare-fun res!769119 () Bool)

(assert (=> b!1158296 (=> (not res!769119) (not e!658731))))

(assert (=> b!1158296 (= res!769119 (= (select (arr!36079 _keys!1208) i!673) k0!934))))

(declare-fun b!1158297 () Bool)

(assert (=> b!1158297 (= e!658731 e!658719)))

(declare-fun res!769127 () Bool)

(assert (=> b!1158297 (=> (not res!769127) (not e!658719))))

(assert (=> b!1158297 (= res!769127 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!520423 mask!1564))))

(assert (=> b!1158297 (= lt!520423 (array!74865 (store (arr!36079 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!36616 _keys!1208)))))

(declare-fun b!1158298 () Bool)

(assert (=> b!1158298 (= e!658724 true)))

(assert (=> b!1158298 e!658715))

(declare-fun res!769126 () Bool)

(assert (=> b!1158298 (=> (not res!769126) (not e!658715))))

(assert (=> b!1158298 (= res!769126 (= lt!520421 lt!520413))))

(assert (=> b!1158298 (= lt!520421 (-!1390 lt!520428 k0!934))))

(declare-fun lt!520430 () V!43843)

(assert (=> b!1158298 (= (-!1390 (+!3644 lt!520413 (tuple2!18621 (select (arr!36079 _keys!1208) from!1455) lt!520430)) (select (arr!36079 _keys!1208) from!1455)) lt!520413)))

(declare-fun lt!520419 () Unit!38056)

(declare-fun addThenRemoveForNewKeyIsSame!230 (ListLongMap!16601 (_ BitVec 64) V!43843) Unit!38056)

(assert (=> b!1158298 (= lt!520419 (addThenRemoveForNewKeyIsSame!230 lt!520413 (select (arr!36079 _keys!1208) from!1455) lt!520430))))

(declare-fun get!18420 (ValueCell!13809 V!43843) V!43843)

(assert (=> b!1158298 (= lt!520430 (get!18420 (select (arr!36080 _values!996) from!1455) lt!520425))))

(declare-fun lt!520415 () Unit!38056)

(assert (=> b!1158298 (= lt!520415 e!658722)))

(declare-fun c!115371 () Bool)

(assert (=> b!1158298 (= c!115371 (contains!6800 lt!520413 k0!934))))

(assert (=> b!1158298 (= lt!520413 (getCurrentListMapNoExtraKeys!4753 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1158299 () Bool)

(declare-fun Unit!38060 () Unit!38056)

(assert (=> b!1158299 (= e!658722 Unit!38060)))

(assert (= (and start!98938 res!769128) b!1158286))

(assert (= (and b!1158286 res!769130) b!1158292))

(assert (= (and b!1158292 res!769121) b!1158291))

(assert (= (and b!1158291 res!769125) b!1158275))

(assert (= (and b!1158275 res!769124) b!1158288))

(assert (= (and b!1158288 res!769129) b!1158280))

(assert (= (and b!1158280 res!769120) b!1158296))

(assert (= (and b!1158296 res!769119) b!1158297))

(assert (= (and b!1158297 res!769127) b!1158284))

(assert (= (and b!1158284 res!769132) b!1158282))

(assert (= (and b!1158282 (not res!769133)) b!1158277))

(assert (= (and b!1158277 (not res!769131)) b!1158289))

(assert (= (and b!1158289 c!115374) b!1158281))

(assert (= (and b!1158289 (not c!115374)) b!1158276))

(assert (= (or b!1158281 b!1158276) bm!55624))

(assert (= (or b!1158281 b!1158276) bm!55625))

(assert (= (and b!1158289 (not res!769123)) b!1158298))

(assert (= (and b!1158298 c!115371) b!1158295))

(assert (= (and b!1158298 (not c!115371)) b!1158299))

(assert (= (and b!1158295 c!115369) b!1158270))

(assert (= (and b!1158295 (not c!115369)) b!1158279))

(assert (= (and b!1158279 c!115370) b!1158278))

(assert (= (and b!1158279 (not c!115370)) b!1158290))

(assert (= (and b!1158290 c!115373) b!1158271))

(assert (= (and b!1158290 (not c!115373)) b!1158274))

(assert (= (or b!1158278 b!1158271) bm!55626))

(assert (= (or b!1158278 b!1158271) bm!55622))

(assert (= (or b!1158278 b!1158271) bm!55629))

(assert (= (or b!1158270 bm!55629) bm!55623))

(assert (= (or b!1158270 bm!55626) bm!55627))

(assert (= (or b!1158270 bm!55622) bm!55628))

(assert (= (and b!1158295 c!115372) b!1158287))

(assert (= (and b!1158295 (not c!115372)) b!1158272))

(assert (= (and b!1158295 res!769122) b!1158283))

(assert (= (and b!1158298 res!769126) b!1158285))

(assert (= (and b!1158293 condMapEmpty!45380) mapIsEmpty!45380))

(assert (= (and b!1158293 (not condMapEmpty!45380)) mapNonEmpty!45380))

(get-info :version)

(assert (= (and mapNonEmpty!45380 ((_ is ValueCellFull!13809) mapValue!45380)) b!1158273))

(assert (= (and b!1158293 ((_ is ValueCellFull!13809) mapDefault!45380)) b!1158294))

(assert (= start!98938 b!1158293))

(declare-fun b_lambda!19631 () Bool)

(assert (=> (not b_lambda!19631) (not b!1158277)))

(declare-fun t!36904 () Bool)

(declare-fun tb!9327 () Bool)

(assert (=> (and start!98938 (= defaultEntry!1004 defaultEntry!1004) t!36904) tb!9327))

(declare-fun result!19211 () Bool)

(assert (=> tb!9327 (= result!19211 tp_is_empty!29037)))

(assert (=> b!1158277 t!36904))

(declare-fun b_and!39879 () Bool)

(assert (= b_and!39877 (and (=> t!36904 result!19211) b_and!39879)))

(declare-fun m!1067543 () Bool)

(assert (=> b!1158275 m!1067543))

(declare-fun m!1067545 () Bool)

(assert (=> bm!55624 m!1067545))

(declare-fun m!1067547 () Bool)

(assert (=> b!1158270 m!1067547))

(assert (=> b!1158270 m!1067547))

(declare-fun m!1067549 () Bool)

(assert (=> b!1158270 m!1067549))

(declare-fun m!1067551 () Bool)

(assert (=> b!1158270 m!1067551))

(declare-fun m!1067553 () Bool)

(assert (=> bm!55623 m!1067553))

(declare-fun m!1067555 () Bool)

(assert (=> b!1158284 m!1067555))

(declare-fun m!1067557 () Bool)

(assert (=> b!1158296 m!1067557))

(declare-fun m!1067559 () Bool)

(assert (=> b!1158295 m!1067559))

(declare-fun m!1067561 () Bool)

(assert (=> b!1158295 m!1067561))

(declare-fun m!1067563 () Bool)

(assert (=> b!1158295 m!1067563))

(declare-fun m!1067565 () Bool)

(assert (=> b!1158295 m!1067565))

(declare-fun m!1067567 () Bool)

(assert (=> b!1158280 m!1067567))

(declare-fun m!1067569 () Bool)

(assert (=> mapNonEmpty!45380 m!1067569))

(declare-fun m!1067571 () Bool)

(assert (=> b!1158283 m!1067571))

(declare-fun m!1067573 () Bool)

(assert (=> b!1158277 m!1067573))

(declare-fun m!1067575 () Bool)

(assert (=> b!1158277 m!1067575))

(declare-fun m!1067577 () Bool)

(assert (=> b!1158277 m!1067577))

(declare-fun m!1067579 () Bool)

(assert (=> b!1158277 m!1067579))

(declare-fun m!1067581 () Bool)

(assert (=> bm!55628 m!1067581))

(declare-fun m!1067583 () Bool)

(assert (=> b!1158282 m!1067583))

(declare-fun m!1067585 () Bool)

(assert (=> b!1158282 m!1067585))

(declare-fun m!1067587 () Bool)

(assert (=> b!1158286 m!1067587))

(declare-fun m!1067589 () Bool)

(assert (=> b!1158298 m!1067589))

(declare-fun m!1067591 () Bool)

(assert (=> b!1158298 m!1067591))

(declare-fun m!1067593 () Bool)

(assert (=> b!1158298 m!1067593))

(assert (=> b!1158298 m!1067591))

(declare-fun m!1067595 () Bool)

(assert (=> b!1158298 m!1067595))

(declare-fun m!1067597 () Bool)

(assert (=> b!1158298 m!1067597))

(assert (=> b!1158298 m!1067595))

(declare-fun m!1067599 () Bool)

(assert (=> b!1158298 m!1067599))

(declare-fun m!1067601 () Bool)

(assert (=> b!1158298 m!1067601))

(assert (=> b!1158298 m!1067599))

(declare-fun m!1067603 () Bool)

(assert (=> b!1158298 m!1067603))

(declare-fun m!1067605 () Bool)

(assert (=> b!1158298 m!1067605))

(assert (=> b!1158298 m!1067599))

(assert (=> b!1158285 m!1067545))

(declare-fun m!1067607 () Bool)

(assert (=> start!98938 m!1067607))

(declare-fun m!1067609 () Bool)

(assert (=> start!98938 m!1067609))

(declare-fun m!1067611 () Bool)

(assert (=> bm!55627 m!1067611))

(assert (=> b!1158287 m!1067571))

(declare-fun m!1067613 () Bool)

(assert (=> b!1158297 m!1067613))

(declare-fun m!1067615 () Bool)

(assert (=> b!1158297 m!1067615))

(declare-fun m!1067617 () Bool)

(assert (=> b!1158291 m!1067617))

(assert (=> bm!55625 m!1067589))

(assert (=> b!1158289 m!1067599))

(declare-fun m!1067619 () Bool)

(assert (=> b!1158289 m!1067619))

(declare-fun m!1067621 () Bool)

(assert (=> b!1158281 m!1067621))

(check-sat (not b_lambda!19631) tp_is_empty!29037 (not b!1158295) (not bm!55623) (not b!1158277) (not b!1158283) (not start!98938) (not b!1158289) (not b!1158291) (not b!1158275) (not b!1158282) (not b!1158298) (not bm!55624) (not b!1158280) (not bm!55628) (not b!1158284) (not bm!55627) (not b_next!24507) b_and!39879 (not b!1158297) (not b!1158286) (not b!1158285) (not bm!55625) (not b!1158270) (not b!1158287) (not mapNonEmpty!45380) (not b!1158281))
(check-sat b_and!39879 (not b_next!24507))
