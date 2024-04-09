; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!98482 () Bool)

(assert start!98482)

(declare-fun b_free!24051 () Bool)

(declare-fun b_next!24051 () Bool)

(assert (=> start!98482 (= b_free!24051 (not b_next!24051))))

(declare-fun tp!84864 () Bool)

(declare-fun b_and!38965 () Bool)

(assert (=> start!98482 (= tp!84864 b_and!38965)))

(declare-fun b!1137514 () Bool)

(declare-datatypes ((Unit!37209 0))(
  ( (Unit!37210) )
))
(declare-fun e!647321 () Unit!37209)

(declare-fun Unit!37211 () Unit!37209)

(assert (=> b!1137514 (= e!647321 Unit!37211)))

(declare-fun e!647319 () Bool)

(declare-fun k0!934 () (_ BitVec 64))

(declare-datatypes ((V!43235 0))(
  ( (V!43236 (val!14347 Int)) )
))
(declare-datatypes ((tuple2!18210 0))(
  ( (tuple2!18211 (_1!9115 (_ BitVec 64)) (_2!9115 V!43235)) )
))
(declare-datatypes ((List!25018 0))(
  ( (Nil!25015) (Cons!25014 (h!26223 tuple2!18210) (t!36068 List!25018)) )
))
(declare-datatypes ((ListLongMap!16191 0))(
  ( (ListLongMap!16192 (toList!8111 List!25018)) )
))
(declare-fun call!50160 () ListLongMap!16191)

(declare-fun call!50155 () ListLongMap!16191)

(declare-fun b!1137515 () Bool)

(declare-fun -!1219 (ListLongMap!16191 (_ BitVec 64)) ListLongMap!16191)

(assert (=> b!1137515 (= e!647319 (= call!50155 (-!1219 call!50160 k0!934)))))

(declare-fun mapNonEmpty!44696 () Bool)

(declare-fun mapRes!44696 () Bool)

(declare-fun tp!84865 () Bool)

(declare-fun e!647310 () Bool)

(assert (=> mapNonEmpty!44696 (= mapRes!44696 (and tp!84865 e!647310))))

(declare-fun mapKey!44696 () (_ BitVec 32))

(declare-datatypes ((ValueCell!13581 0))(
  ( (ValueCellFull!13581 (v!16985 V!43235)) (EmptyCell!13581) )
))
(declare-fun mapValue!44696 () ValueCell!13581)

(declare-datatypes ((array!73980 0))(
  ( (array!73981 (arr!35637 (Array (_ BitVec 32) ValueCell!13581)) (size!36174 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!73980)

(declare-fun mapRest!44696 () (Array (_ BitVec 32) ValueCell!13581))

(assert (=> mapNonEmpty!44696 (= (arr!35637 _values!996) (store mapRest!44696 mapKey!44696 mapValue!44696))))

(declare-fun b!1137516 () Bool)

(declare-fun tp_is_empty!28581 () Bool)

(assert (=> b!1137516 (= e!647310 tp_is_empty!28581)))

(declare-fun b!1137517 () Bool)

(declare-fun res!759088 () Bool)

(declare-fun e!647322 () Bool)

(assert (=> b!1137517 (=> (not res!759088) (not e!647322))))

(declare-fun i!673 () (_ BitVec 32))

(declare-datatypes ((array!73982 0))(
  ( (array!73983 (arr!35638 (Array (_ BitVec 32) (_ BitVec 64))) (size!36175 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!73982)

(assert (=> b!1137517 (= res!759088 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!36175 _keys!1208))))))

(declare-fun b!1137518 () Bool)

(declare-fun e!647311 () Bool)

(declare-fun e!647315 () Bool)

(assert (=> b!1137518 (= e!647311 e!647315)))

(declare-fun res!759080 () Bool)

(assert (=> b!1137518 (=> res!759080 e!647315)))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> b!1137518 (= res!759080 (not (= from!1455 i!673)))))

(declare-fun zeroValue!944 () V!43235)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-fun lt!505921 () ListLongMap!16191)

(declare-fun lt!505909 () array!73980)

(declare-fun minValue!944 () V!43235)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun lt!505915 () array!73982)

(declare-fun getCurrentListMapNoExtraKeys!4559 (array!73982 array!73980 (_ BitVec 32) (_ BitVec 32) V!43235 V!43235 (_ BitVec 32) Int) ListLongMap!16191)

(assert (=> b!1137518 (= lt!505921 (getCurrentListMapNoExtraKeys!4559 lt!505915 lt!505909 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun dynLambda!2620 (Int (_ BitVec 64)) V!43235)

(assert (=> b!1137518 (= lt!505909 (array!73981 (store (arr!35637 _values!996) i!673 (ValueCellFull!13581 (dynLambda!2620 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!36174 _values!996)))))

(declare-fun lt!505922 () ListLongMap!16191)

(assert (=> b!1137518 (= lt!505922 (getCurrentListMapNoExtraKeys!4559 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun bm!50150 () Bool)

(declare-fun call!50159 () ListLongMap!16191)

(declare-fun call!50156 () ListLongMap!16191)

(assert (=> bm!50150 (= call!50159 call!50156)))

(declare-fun c!111265 () Bool)

(declare-fun bm!50151 () Bool)

(declare-fun lt!505920 () ListLongMap!16191)

(declare-fun c!111270 () Bool)

(declare-fun +!3463 (ListLongMap!16191 tuple2!18210) ListLongMap!16191)

(assert (=> bm!50151 (= call!50156 (+!3463 lt!505920 (ite (or c!111270 c!111265) (tuple2!18211 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!18211 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944))))))

(declare-fun b!1137519 () Bool)

(declare-fun res!759084 () Bool)

(assert (=> b!1137519 (=> (not res!759084) (not e!647322))))

(assert (=> b!1137519 (= res!759084 (and (= (size!36174 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!36175 _keys!1208) (size!36174 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1137520 () Bool)

(declare-fun res!759082 () Bool)

(assert (=> b!1137520 (=> (not res!759082) (not e!647322))))

(assert (=> b!1137520 (= res!759082 (= (select (arr!35638 _keys!1208) i!673) k0!934))))

(declare-fun b!1137521 () Bool)

(declare-fun e!647314 () Bool)

(assert (=> b!1137521 (= e!647315 e!647314)))

(declare-fun res!759086 () Bool)

(assert (=> b!1137521 (=> res!759086 e!647314)))

(assert (=> b!1137521 (= res!759086 (not (= (select (arr!35638 _keys!1208) from!1455) k0!934)))))

(assert (=> b!1137521 e!647319))

(declare-fun c!111266 () Bool)

(assert (=> b!1137521 (= c!111266 (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673))))

(declare-fun lt!505918 () Unit!37209)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!476 (array!73982 array!73980 (_ BitVec 32) (_ BitVec 32) V!43235 V!43235 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!37209)

(assert (=> b!1137521 (= lt!505918 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!476 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1137522 () Bool)

(declare-fun e!647318 () Bool)

(assert (=> b!1137522 (= e!647322 e!647318)))

(declare-fun res!759091 () Bool)

(assert (=> b!1137522 (=> (not res!759091) (not e!647318))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!73982 (_ BitVec 32)) Bool)

(assert (=> b!1137522 (= res!759091 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!505915 mask!1564))))

(assert (=> b!1137522 (= lt!505915 (array!73983 (store (arr!35638 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!36175 _keys!1208)))))

(declare-fun res!759090 () Bool)

(assert (=> start!98482 (=> (not res!759090) (not e!647322))))

(assert (=> start!98482 (= res!759090 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!36175 _keys!1208))))))

(assert (=> start!98482 e!647322))

(assert (=> start!98482 tp_is_empty!28581))

(declare-fun array_inv!27196 (array!73982) Bool)

(assert (=> start!98482 (array_inv!27196 _keys!1208)))

(assert (=> start!98482 true))

(assert (=> start!98482 tp!84864))

(declare-fun e!647307 () Bool)

(declare-fun array_inv!27197 (array!73980) Bool)

(assert (=> start!98482 (and (array_inv!27197 _values!996) e!647307)))

(declare-fun b!1137523 () Bool)

(declare-fun e!647320 () Bool)

(assert (=> b!1137523 (= e!647307 (and e!647320 mapRes!44696))))

(declare-fun condMapEmpty!44696 () Bool)

(declare-fun mapDefault!44696 () ValueCell!13581)

(assert (=> b!1137523 (= condMapEmpty!44696 (= (arr!35637 _values!996) ((as const (Array (_ BitVec 32) ValueCell!13581)) mapDefault!44696)))))

(declare-fun e!647308 () Bool)

(declare-fun b!1137524 () Bool)

(declare-fun arrayContainsKey!0 (array!73982 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1137524 (= e!647308 (arrayContainsKey!0 _keys!1208 k0!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun b!1137525 () Bool)

(declare-fun e!647317 () Unit!37209)

(declare-fun Unit!37212 () Unit!37209)

(assert (=> b!1137525 (= e!647317 Unit!37212)))

(declare-fun lt!505919 () Bool)

(assert (=> b!1137525 (= lt!505919 (= (bvand extraKeys!923 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(assert (=> b!1137525 (= c!111270 (and (not lt!505919) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun lt!505916 () Unit!37209)

(declare-fun e!647312 () Unit!37209)

(assert (=> b!1137525 (= lt!505916 e!647312)))

(declare-fun lt!505924 () Unit!37209)

(declare-fun lemmaListMapContainsThenArrayContainsFrom!369 (array!73982 array!73980 (_ BitVec 32) (_ BitVec 32) V!43235 V!43235 (_ BitVec 64) (_ BitVec 32) Int) Unit!37209)

(assert (=> b!1137525 (= lt!505924 (lemmaListMapContainsThenArrayContainsFrom!369 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun c!111269 () Bool)

(assert (=> b!1137525 (= c!111269 (and (not (= k0!934 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!934 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun res!759087 () Bool)

(assert (=> b!1137525 (= res!759087 e!647308)))

(declare-fun e!647316 () Bool)

(assert (=> b!1137525 (=> (not res!759087) (not e!647316))))

(assert (=> b!1137525 e!647316))

(declare-fun lt!505911 () Unit!37209)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!73982 (_ BitVec 32) (_ BitVec 32)) Unit!37209)

(assert (=> b!1137525 (= lt!505911 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1208 #b00000000000000000000000000000000 from!1455))))

(declare-datatypes ((List!25019 0))(
  ( (Nil!25016) (Cons!25015 (h!26224 (_ BitVec 64)) (t!36069 List!25019)) )
))
(declare-fun arrayNoDuplicates!0 (array!73982 (_ BitVec 32) List!25019) Bool)

(assert (=> b!1137525 (arrayNoDuplicates!0 _keys!1208 from!1455 Nil!25016)))

(declare-fun lt!505910 () Unit!37209)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!73982 (_ BitVec 64) (_ BitVec 32) List!25019) Unit!37209)

(assert (=> b!1137525 (= lt!505910 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!1208 k0!934 from!1455 Nil!25016))))

(assert (=> b!1137525 false))

(declare-fun b!1137526 () Bool)

(assert (=> b!1137526 (= e!647320 tp_is_empty!28581)))

(declare-fun bm!50152 () Bool)

(declare-fun lt!505914 () ListLongMap!16191)

(declare-fun call!50158 () Bool)

(declare-fun contains!6622 (ListLongMap!16191 (_ BitVec 64)) Bool)

(assert (=> bm!50152 (= call!50158 (contains!6622 (ite c!111270 lt!505914 call!50159) k0!934))))

(declare-fun mapIsEmpty!44696 () Bool)

(assert (=> mapIsEmpty!44696 mapRes!44696))

(declare-fun b!1137527 () Bool)

(declare-fun res!759092 () Bool)

(assert (=> b!1137527 (=> (not res!759092) (not e!647322))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1137527 (= res!759092 (validMask!0 mask!1564))))

(declare-fun b!1137528 () Bool)

(declare-fun e!647309 () Unit!37209)

(declare-fun lt!505925 () Unit!37209)

(assert (=> b!1137528 (= e!647309 lt!505925)))

(declare-fun call!50153 () Unit!37209)

(assert (=> b!1137528 (= lt!505925 call!50153)))

(declare-fun call!50154 () Bool)

(assert (=> b!1137528 call!50154))

(declare-fun b!1137529 () Bool)

(assert (=> b!1137529 (= e!647319 (= call!50155 call!50160))))

(declare-fun bm!50153 () Bool)

(assert (=> bm!50153 (= call!50155 (getCurrentListMapNoExtraKeys!4559 lt!505915 lt!505909 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1137530 () Bool)

(assert (=> b!1137530 (= e!647318 (not e!647311))))

(declare-fun res!759083 () Bool)

(assert (=> b!1137530 (=> res!759083 e!647311)))

(assert (=> b!1137530 (= res!759083 (bvsgt from!1455 i!673))))

(assert (=> b!1137530 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-fun lt!505913 () Unit!37209)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!73982 (_ BitVec 64) (_ BitVec 32)) Unit!37209)

(assert (=> b!1137530 (= lt!505913 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1137531 () Bool)

(declare-fun res!759079 () Bool)

(assert (=> b!1137531 (=> (not res!759079) (not e!647322))))

(assert (=> b!1137531 (= res!759079 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!25016))))

(declare-fun b!1137532 () Bool)

(assert (=> b!1137532 (= e!647308 (ite (= k0!934 #b0000000000000000000000000000000000000000000000000000000000000000) (not lt!505919) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!1137533 () Bool)

(assert (=> b!1137533 call!50154))

(declare-fun lt!505912 () Unit!37209)

(assert (=> b!1137533 (= lt!505912 call!50153)))

(assert (=> b!1137533 (= e!647321 lt!505912)))

(declare-fun b!1137534 () Bool)

(declare-fun res!759085 () Bool)

(assert (=> b!1137534 (=> (not res!759085) (not e!647322))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1137534 (= res!759085 (validKeyInArray!0 k0!934))))

(declare-fun bm!50154 () Bool)

(declare-fun call!50157 () Unit!37209)

(declare-fun addStillContains!764 (ListLongMap!16191 (_ BitVec 64) V!43235 (_ BitVec 64)) Unit!37209)

(assert (=> bm!50154 (= call!50157 (addStillContains!764 (ite c!111270 lt!505914 lt!505920) (ite c!111270 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!111265 #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000)) (ite c!111270 minValue!944 (ite c!111265 zeroValue!944 minValue!944)) k0!934))))

(declare-fun b!1137535 () Bool)

(declare-fun res!759089 () Bool)

(assert (=> b!1137535 (=> (not res!759089) (not e!647322))))

(assert (=> b!1137535 (= res!759089 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun bm!50155 () Bool)

(assert (=> bm!50155 (= call!50153 call!50157)))

(declare-fun b!1137536 () Bool)

(assert (=> b!1137536 (contains!6622 (+!3463 lt!505914 (tuple2!18211 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944)) k0!934)))

(declare-fun lt!505923 () Unit!37209)

(assert (=> b!1137536 (= lt!505923 call!50157)))

(assert (=> b!1137536 call!50158))

(assert (=> b!1137536 (= lt!505914 call!50156)))

(declare-fun lt!505917 () Unit!37209)

(assert (=> b!1137536 (= lt!505917 (addStillContains!764 lt!505920 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944 k0!934))))

(assert (=> b!1137536 (= e!647312 lt!505923)))

(declare-fun b!1137537 () Bool)

(assert (=> b!1137537 (= e!647309 e!647321)))

(declare-fun c!111268 () Bool)

(assert (=> b!1137537 (= c!111268 (and (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!505919))))

(declare-fun b!1137538 () Bool)

(assert (=> b!1137538 (= e!647314 true)))

(declare-fun lt!505926 () Unit!37209)

(assert (=> b!1137538 (= lt!505926 e!647317)))

(declare-fun c!111267 () Bool)

(assert (=> b!1137538 (= c!111267 (contains!6622 lt!505920 k0!934))))

(assert (=> b!1137538 (= lt!505920 (getCurrentListMapNoExtraKeys!4559 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1137539 () Bool)

(declare-fun Unit!37213 () Unit!37209)

(assert (=> b!1137539 (= e!647317 Unit!37213)))

(declare-fun b!1137540 () Bool)

(declare-fun res!759081 () Bool)

(assert (=> b!1137540 (=> (not res!759081) (not e!647318))))

(assert (=> b!1137540 (= res!759081 (arrayNoDuplicates!0 lt!505915 #b00000000000000000000000000000000 Nil!25016))))

(declare-fun b!1137541 () Bool)

(assert (=> b!1137541 (= c!111265 (and (not lt!505919) (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(assert (=> b!1137541 (= e!647312 e!647309)))

(declare-fun bm!50156 () Bool)

(assert (=> bm!50156 (= call!50154 call!50158)))

(declare-fun b!1137542 () Bool)

(assert (=> b!1137542 (= e!647316 (arrayContainsKey!0 _keys!1208 k0!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun bm!50157 () Bool)

(assert (=> bm!50157 (= call!50160 (getCurrentListMapNoExtraKeys!4559 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(assert (= (and start!98482 res!759090) b!1137527))

(assert (= (and b!1137527 res!759092) b!1137519))

(assert (= (and b!1137519 res!759084) b!1137535))

(assert (= (and b!1137535 res!759089) b!1137531))

(assert (= (and b!1137531 res!759079) b!1137517))

(assert (= (and b!1137517 res!759088) b!1137534))

(assert (= (and b!1137534 res!759085) b!1137520))

(assert (= (and b!1137520 res!759082) b!1137522))

(assert (= (and b!1137522 res!759091) b!1137540))

(assert (= (and b!1137540 res!759081) b!1137530))

(assert (= (and b!1137530 (not res!759083)) b!1137518))

(assert (= (and b!1137518 (not res!759080)) b!1137521))

(assert (= (and b!1137521 c!111266) b!1137515))

(assert (= (and b!1137521 (not c!111266)) b!1137529))

(assert (= (or b!1137515 b!1137529) bm!50153))

(assert (= (or b!1137515 b!1137529) bm!50157))

(assert (= (and b!1137521 (not res!759086)) b!1137538))

(assert (= (and b!1137538 c!111267) b!1137525))

(assert (= (and b!1137538 (not c!111267)) b!1137539))

(assert (= (and b!1137525 c!111270) b!1137536))

(assert (= (and b!1137525 (not c!111270)) b!1137541))

(assert (= (and b!1137541 c!111265) b!1137528))

(assert (= (and b!1137541 (not c!111265)) b!1137537))

(assert (= (and b!1137537 c!111268) b!1137533))

(assert (= (and b!1137537 (not c!111268)) b!1137514))

(assert (= (or b!1137528 b!1137533) bm!50155))

(assert (= (or b!1137528 b!1137533) bm!50150))

(assert (= (or b!1137528 b!1137533) bm!50156))

(assert (= (or b!1137536 bm!50156) bm!50152))

(assert (= (or b!1137536 bm!50155) bm!50154))

(assert (= (or b!1137536 bm!50150) bm!50151))

(assert (= (and b!1137525 c!111269) b!1137524))

(assert (= (and b!1137525 (not c!111269)) b!1137532))

(assert (= (and b!1137525 res!759087) b!1137542))

(assert (= (and b!1137523 condMapEmpty!44696) mapIsEmpty!44696))

(assert (= (and b!1137523 (not condMapEmpty!44696)) mapNonEmpty!44696))

(get-info :version)

(assert (= (and mapNonEmpty!44696 ((_ is ValueCellFull!13581) mapValue!44696)) b!1137516))

(assert (= (and b!1137523 ((_ is ValueCellFull!13581) mapDefault!44696)) b!1137526))

(assert (= start!98482 b!1137523))

(declare-fun b_lambda!19175 () Bool)

(assert (=> (not b_lambda!19175) (not b!1137518)))

(declare-fun t!36067 () Bool)

(declare-fun tb!8871 () Bool)

(assert (=> (and start!98482 (= defaultEntry!1004 defaultEntry!1004) t!36067) tb!8871))

(declare-fun result!18299 () Bool)

(assert (=> tb!8871 (= result!18299 tp_is_empty!28581)))

(assert (=> b!1137518 t!36067))

(declare-fun b_and!38967 () Bool)

(assert (= b_and!38965 (and (=> t!36067 result!18299) b_and!38967)))

(declare-fun m!1049627 () Bool)

(assert (=> b!1137518 m!1049627))

(declare-fun m!1049629 () Bool)

(assert (=> b!1137518 m!1049629))

(declare-fun m!1049631 () Bool)

(assert (=> b!1137518 m!1049631))

(declare-fun m!1049633 () Bool)

(assert (=> b!1137518 m!1049633))

(declare-fun m!1049635 () Bool)

(assert (=> b!1137522 m!1049635))

(declare-fun m!1049637 () Bool)

(assert (=> b!1137522 m!1049637))

(declare-fun m!1049639 () Bool)

(assert (=> bm!50153 m!1049639))

(declare-fun m!1049641 () Bool)

(assert (=> bm!50154 m!1049641))

(declare-fun m!1049643 () Bool)

(assert (=> bm!50151 m!1049643))

(declare-fun m!1049645 () Bool)

(assert (=> b!1137530 m!1049645))

(declare-fun m!1049647 () Bool)

(assert (=> b!1137530 m!1049647))

(declare-fun m!1049649 () Bool)

(assert (=> b!1137524 m!1049649))

(declare-fun m!1049651 () Bool)

(assert (=> bm!50157 m!1049651))

(declare-fun m!1049653 () Bool)

(assert (=> b!1137527 m!1049653))

(declare-fun m!1049655 () Bool)

(assert (=> mapNonEmpty!44696 m!1049655))

(assert (=> b!1137542 m!1049649))

(declare-fun m!1049657 () Bool)

(assert (=> b!1137531 m!1049657))

(declare-fun m!1049659 () Bool)

(assert (=> b!1137525 m!1049659))

(declare-fun m!1049661 () Bool)

(assert (=> b!1137525 m!1049661))

(declare-fun m!1049663 () Bool)

(assert (=> b!1137525 m!1049663))

(declare-fun m!1049665 () Bool)

(assert (=> b!1137525 m!1049665))

(declare-fun m!1049667 () Bool)

(assert (=> b!1137538 m!1049667))

(assert (=> b!1137538 m!1049651))

(declare-fun m!1049669 () Bool)

(assert (=> b!1137536 m!1049669))

(assert (=> b!1137536 m!1049669))

(declare-fun m!1049671 () Bool)

(assert (=> b!1137536 m!1049671))

(declare-fun m!1049673 () Bool)

(assert (=> b!1137536 m!1049673))

(declare-fun m!1049675 () Bool)

(assert (=> b!1137520 m!1049675))

(declare-fun m!1049677 () Bool)

(assert (=> b!1137540 m!1049677))

(declare-fun m!1049679 () Bool)

(assert (=> bm!50152 m!1049679))

(declare-fun m!1049681 () Bool)

(assert (=> b!1137515 m!1049681))

(declare-fun m!1049683 () Bool)

(assert (=> b!1137535 m!1049683))

(declare-fun m!1049685 () Bool)

(assert (=> start!98482 m!1049685))

(declare-fun m!1049687 () Bool)

(assert (=> start!98482 m!1049687))

(declare-fun m!1049689 () Bool)

(assert (=> b!1137521 m!1049689))

(declare-fun m!1049691 () Bool)

(assert (=> b!1137521 m!1049691))

(declare-fun m!1049693 () Bool)

(assert (=> b!1137534 m!1049693))

(check-sat b_and!38967 (not b!1137538) (not bm!50154) (not b!1137525) (not mapNonEmpty!44696) (not b_lambda!19175) (not bm!50152) (not b!1137534) (not start!98482) (not bm!50151) (not b_next!24051) (not bm!50157) (not b!1137540) (not bm!50153) tp_is_empty!28581 (not b!1137535) (not b!1137518) (not b!1137536) (not b!1137542) (not b!1137524) (not b!1137531) (not b!1137521) (not b!1137530) (not b!1137527) (not b!1137522) (not b!1137515))
(check-sat b_and!38967 (not b_next!24051))
