; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!98524 () Bool)

(assert start!98524)

(declare-fun b_free!24093 () Bool)

(declare-fun b_next!24093 () Bool)

(assert (=> start!98524 (= b_free!24093 (not b_next!24093))))

(declare-fun tp!84990 () Bool)

(declare-fun b_and!39049 () Bool)

(assert (=> start!98524 (= tp!84990 b_and!39049)))

(declare-fun b!1139383 () Bool)

(declare-datatypes ((Unit!37289 0))(
  ( (Unit!37290) )
))
(declare-fun e!648318 () Unit!37289)

(declare-fun lt!507082 () Unit!37289)

(assert (=> b!1139383 (= e!648318 lt!507082)))

(declare-fun call!50663 () Unit!37289)

(assert (=> b!1139383 (= lt!507082 call!50663)))

(declare-fun call!50658 () Bool)

(assert (=> b!1139383 call!50658))

(declare-fun mapNonEmpty!44759 () Bool)

(declare-fun mapRes!44759 () Bool)

(declare-fun tp!84991 () Bool)

(declare-fun e!648327 () Bool)

(assert (=> mapNonEmpty!44759 (= mapRes!44759 (and tp!84991 e!648327))))

(declare-datatypes ((V!43291 0))(
  ( (V!43292 (val!14368 Int)) )
))
(declare-datatypes ((ValueCell!13602 0))(
  ( (ValueCellFull!13602 (v!17006 V!43291)) (EmptyCell!13602) )
))
(declare-fun mapRest!44759 () (Array (_ BitVec 32) ValueCell!13602))

(declare-fun mapKey!44759 () (_ BitVec 32))

(declare-datatypes ((array!74064 0))(
  ( (array!74065 (arr!35679 (Array (_ BitVec 32) ValueCell!13602)) (size!36216 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!74064)

(declare-fun mapValue!44759 () ValueCell!13602)

(assert (=> mapNonEmpty!44759 (= (arr!35679 _values!996) (store mapRest!44759 mapKey!44759 mapValue!44759))))

(declare-fun b!1139384 () Bool)

(declare-fun e!648315 () Bool)

(declare-datatypes ((tuple2!18250 0))(
  ( (tuple2!18251 (_1!9135 (_ BitVec 64)) (_2!9135 V!43291)) )
))
(declare-datatypes ((List!25053 0))(
  ( (Nil!25050) (Cons!25049 (h!26258 tuple2!18250) (t!36145 List!25053)) )
))
(declare-datatypes ((ListLongMap!16231 0))(
  ( (ListLongMap!16232 (toList!8131 List!25053)) )
))
(declare-fun call!50662 () ListLongMap!16231)

(declare-fun call!50659 () ListLongMap!16231)

(assert (=> b!1139384 (= e!648315 (= call!50662 call!50659))))

(declare-datatypes ((array!74066 0))(
  ( (array!74067 (arr!35680 (Array (_ BitVec 32) (_ BitVec 64))) (size!36217 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!74066)

(declare-fun b!1139385 () Bool)

(declare-fun e!648325 () Bool)

(declare-fun k0!934 () (_ BitVec 64))

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun arrayContainsKey!0 (array!74066 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1139385 (= e!648325 (arrayContainsKey!0 _keys!1208 k0!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun bm!50654 () Bool)

(declare-fun call!50661 () ListLongMap!16231)

(declare-fun call!50660 () ListLongMap!16231)

(assert (=> bm!50654 (= call!50661 call!50660)))

(declare-fun res!759963 () Bool)

(declare-fun e!648330 () Bool)

(assert (=> start!98524 (=> (not res!759963) (not e!648330))))

(assert (=> start!98524 (= res!759963 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!36217 _keys!1208))))))

(assert (=> start!98524 e!648330))

(declare-fun tp_is_empty!28623 () Bool)

(assert (=> start!98524 tp_is_empty!28623))

(declare-fun array_inv!27228 (array!74066) Bool)

(assert (=> start!98524 (array_inv!27228 _keys!1208)))

(assert (=> start!98524 true))

(assert (=> start!98524 tp!84990))

(declare-fun e!648326 () Bool)

(declare-fun array_inv!27229 (array!74064) Bool)

(assert (=> start!98524 (and (array_inv!27229 _values!996) e!648326)))

(declare-fun b!1139386 () Bool)

(declare-fun e!648316 () Bool)

(assert (=> b!1139386 (= e!648316 tp_is_empty!28623)))

(declare-fun b!1139387 () Bool)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun lt!507074 () Bool)

(assert (=> b!1139387 (= e!648325 (ite (= k0!934 #b0000000000000000000000000000000000000000000000000000000000000000) (not lt!507074) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!1139388 () Bool)

(declare-fun res!759966 () Bool)

(assert (=> b!1139388 (=> (not res!759966) (not e!648330))))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!74066 (_ BitVec 32)) Bool)

(assert (=> b!1139388 (= res!759966 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1139389 () Bool)

(declare-fun e!648320 () Unit!37289)

(assert (=> b!1139389 (= e!648318 e!648320)))

(declare-fun c!111647 () Bool)

(assert (=> b!1139389 (= c!111647 (and (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!507074))))

(declare-fun b!1139390 () Bool)

(declare-fun e!648321 () Bool)

(declare-fun e!648324 () Bool)

(assert (=> b!1139390 (= e!648321 (not e!648324))))

(declare-fun res!759964 () Bool)

(assert (=> b!1139390 (=> res!759964 e!648324)))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1139390 (= res!759964 (bvsgt from!1455 i!673))))

(assert (=> b!1139390 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-fun lt!507076 () Unit!37289)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!74066 (_ BitVec 64) (_ BitVec 32)) Unit!37289)

(assert (=> b!1139390 (= lt!507076 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1139391 () Bool)

(assert (=> b!1139391 (= e!648327 tp_is_empty!28623)))

(declare-fun b!1139392 () Bool)

(declare-fun res!759965 () Bool)

(assert (=> b!1139392 (=> (not res!759965) (not e!648330))))

(declare-datatypes ((List!25054 0))(
  ( (Nil!25051) (Cons!25050 (h!26259 (_ BitVec 64)) (t!36146 List!25054)) )
))
(declare-fun arrayNoDuplicates!0 (array!74066 (_ BitVec 32) List!25054) Bool)

(assert (=> b!1139392 (= res!759965 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!25051))))

(declare-fun bm!50655 () Bool)

(declare-fun call!50657 () Bool)

(assert (=> bm!50655 (= call!50658 call!50657)))

(declare-fun b!1139393 () Bool)

(declare-fun Unit!37291 () Unit!37289)

(assert (=> b!1139393 (= e!648320 Unit!37291)))

(declare-fun b!1139394 () Bool)

(assert (=> b!1139394 (= e!648330 e!648321)))

(declare-fun res!759974 () Bool)

(assert (=> b!1139394 (=> (not res!759974) (not e!648321))))

(declare-fun lt!507079 () array!74066)

(assert (=> b!1139394 (= res!759974 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!507079 mask!1564))))

(assert (=> b!1139394 (= lt!507079 (array!74067 (store (arr!35680 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!36217 _keys!1208)))))

(declare-fun b!1139395 () Bool)

(declare-fun res!759962 () Bool)

(assert (=> b!1139395 (=> (not res!759962) (not e!648330))))

(assert (=> b!1139395 (= res!759962 (and (= (size!36216 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!36217 _keys!1208) (size!36216 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun defaultEntry!1004 () Int)

(declare-fun bm!50656 () Bool)

(declare-fun minValue!944 () V!43291)

(declare-fun lt!507068 () array!74064)

(declare-fun zeroValue!944 () V!43291)

(declare-fun getCurrentListMapNoExtraKeys!4578 (array!74066 array!74064 (_ BitVec 32) (_ BitVec 32) V!43291 V!43291 (_ BitVec 32) Int) ListLongMap!16231)

(assert (=> bm!50656 (= call!50662 (getCurrentListMapNoExtraKeys!4578 lt!507079 lt!507068 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1139396 () Bool)

(declare-fun e!648317 () Unit!37289)

(declare-fun Unit!37292 () Unit!37289)

(assert (=> b!1139396 (= e!648317 Unit!37292)))

(assert (=> b!1139396 (= lt!507074 (= (bvand extraKeys!923 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(declare-fun c!111644 () Bool)

(assert (=> b!1139396 (= c!111644 (and (not lt!507074) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun lt!507069 () Unit!37289)

(declare-fun e!648323 () Unit!37289)

(assert (=> b!1139396 (= lt!507069 e!648323)))

(declare-fun lt!507073 () Unit!37289)

(declare-fun lemmaListMapContainsThenArrayContainsFrom!383 (array!74066 array!74064 (_ BitVec 32) (_ BitVec 32) V!43291 V!43291 (_ BitVec 64) (_ BitVec 32) Int) Unit!37289)

(assert (=> b!1139396 (= lt!507073 (lemmaListMapContainsThenArrayContainsFrom!383 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun c!111645 () Bool)

(assert (=> b!1139396 (= c!111645 (and (not (= k0!934 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!934 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun res!759967 () Bool)

(assert (=> b!1139396 (= res!759967 e!648325)))

(declare-fun e!648322 () Bool)

(assert (=> b!1139396 (=> (not res!759967) (not e!648322))))

(assert (=> b!1139396 e!648322))

(declare-fun lt!507084 () Unit!37289)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!74066 (_ BitVec 32) (_ BitVec 32)) Unit!37289)

(assert (=> b!1139396 (= lt!507084 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1208 #b00000000000000000000000000000000 from!1455))))

(assert (=> b!1139396 (arrayNoDuplicates!0 _keys!1208 from!1455 Nil!25051)))

(declare-fun lt!507085 () Unit!37289)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!74066 (_ BitVec 64) (_ BitVec 32) List!25054) Unit!37289)

(assert (=> b!1139396 (= lt!507085 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!1208 k0!934 from!1455 Nil!25051))))

(assert (=> b!1139396 false))

(declare-fun b!1139397 () Bool)

(assert (=> b!1139397 (= e!648326 (and e!648316 mapRes!44759))))

(declare-fun condMapEmpty!44759 () Bool)

(declare-fun mapDefault!44759 () ValueCell!13602)

(assert (=> b!1139397 (= condMapEmpty!44759 (= (arr!35679 _values!996) ((as const (Array (_ BitVec 32) ValueCell!13602)) mapDefault!44759)))))

(declare-fun c!111643 () Bool)

(declare-fun bm!50657 () Bool)

(declare-fun lt!507086 () ListLongMap!16231)

(declare-fun call!50664 () Unit!37289)

(declare-fun lt!507075 () ListLongMap!16231)

(declare-fun addStillContains!781 (ListLongMap!16231 (_ BitVec 64) V!43291 (_ BitVec 64)) Unit!37289)

(assert (=> bm!50657 (= call!50664 (addStillContains!781 (ite c!111644 lt!507086 lt!507075) (ite c!111644 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!111643 #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000)) (ite c!111644 minValue!944 (ite c!111643 zeroValue!944 minValue!944)) k0!934))))

(declare-fun b!1139398 () Bool)

(declare-fun res!759973 () Bool)

(assert (=> b!1139398 (=> (not res!759973) (not e!648330))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1139398 (= res!759973 (validMask!0 mask!1564))))

(declare-fun b!1139399 () Bool)

(declare-fun Unit!37293 () Unit!37289)

(assert (=> b!1139399 (= e!648317 Unit!37293)))

(declare-fun b!1139400 () Bool)

(declare-fun res!759970 () Bool)

(assert (=> b!1139400 (=> (not res!759970) (not e!648330))))

(assert (=> b!1139400 (= res!759970 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!36217 _keys!1208))))))

(declare-fun b!1139401 () Bool)

(declare-fun -!1233 (ListLongMap!16231 (_ BitVec 64)) ListLongMap!16231)

(assert (=> b!1139401 (= e!648315 (= call!50662 (-!1233 call!50659 k0!934)))))

(declare-fun b!1139402 () Bool)

(declare-fun res!759961 () Bool)

(assert (=> b!1139402 (=> (not res!759961) (not e!648321))))

(assert (=> b!1139402 (= res!759961 (arrayNoDuplicates!0 lt!507079 #b00000000000000000000000000000000 Nil!25051))))

(declare-fun b!1139403 () Bool)

(declare-fun contains!6640 (ListLongMap!16231 (_ BitVec 64)) Bool)

(declare-fun +!3480 (ListLongMap!16231 tuple2!18250) ListLongMap!16231)

(assert (=> b!1139403 (contains!6640 (+!3480 lt!507086 (tuple2!18251 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944)) k0!934)))

(declare-fun lt!507087 () Unit!37289)

(assert (=> b!1139403 (= lt!507087 call!50664)))

(assert (=> b!1139403 call!50657))

(assert (=> b!1139403 (= lt!507086 call!50660)))

(declare-fun lt!507067 () Unit!37289)

(assert (=> b!1139403 (= lt!507067 (addStillContains!781 lt!507075 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944 k0!934))))

(assert (=> b!1139403 (= e!648323 lt!507087)))

(declare-fun b!1139404 () Bool)

(declare-fun e!648328 () Bool)

(assert (=> b!1139404 (= e!648328 true)))

(declare-fun lt!507078 () V!43291)

(assert (=> b!1139404 (= (-!1233 (+!3480 lt!507075 (tuple2!18251 (select (arr!35680 _keys!1208) from!1455) lt!507078)) (select (arr!35680 _keys!1208) from!1455)) lt!507075)))

(declare-fun lt!507083 () Unit!37289)

(declare-fun addThenRemoveForNewKeyIsSame!89 (ListLongMap!16231 (_ BitVec 64) V!43291) Unit!37289)

(assert (=> b!1139404 (= lt!507083 (addThenRemoveForNewKeyIsSame!89 lt!507075 (select (arr!35680 _keys!1208) from!1455) lt!507078))))

(declare-fun lt!507080 () V!43291)

(declare-fun get!18141 (ValueCell!13602 V!43291) V!43291)

(assert (=> b!1139404 (= lt!507078 (get!18141 (select (arr!35679 _values!996) from!1455) lt!507080))))

(declare-fun lt!507071 () Unit!37289)

(assert (=> b!1139404 (= lt!507071 e!648317)))

(declare-fun c!111648 () Bool)

(assert (=> b!1139404 (= c!111648 (contains!6640 lt!507075 k0!934))))

(assert (=> b!1139404 (= lt!507075 (getCurrentListMapNoExtraKeys!4578 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1139405 () Bool)

(declare-fun e!648319 () Bool)

(assert (=> b!1139405 (= e!648319 e!648328)))

(declare-fun res!759971 () Bool)

(assert (=> b!1139405 (=> res!759971 e!648328)))

(assert (=> b!1139405 (= res!759971 (not (= (select (arr!35680 _keys!1208) from!1455) k0!934)))))

(assert (=> b!1139405 e!648315))

(declare-fun c!111646 () Bool)

(assert (=> b!1139405 (= c!111646 (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673))))

(declare-fun lt!507081 () Unit!37289)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!490 (array!74066 array!74064 (_ BitVec 32) (_ BitVec 32) V!43291 V!43291 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!37289)

(assert (=> b!1139405 (= lt!507081 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!490 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1139406 () Bool)

(declare-fun res!759972 () Bool)

(assert (=> b!1139406 (=> (not res!759972) (not e!648330))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1139406 (= res!759972 (validKeyInArray!0 k0!934))))

(declare-fun bm!50658 () Bool)

(assert (=> bm!50658 (= call!50663 call!50664)))

(declare-fun bm!50659 () Bool)

(assert (=> bm!50659 (= call!50659 (getCurrentListMapNoExtraKeys!4578 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1139407 () Bool)

(assert (=> b!1139407 (= e!648322 (arrayContainsKey!0 _keys!1208 k0!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun b!1139408 () Bool)

(assert (=> b!1139408 call!50658))

(declare-fun lt!507077 () Unit!37289)

(assert (=> b!1139408 (= lt!507077 call!50663)))

(assert (=> b!1139408 (= e!648320 lt!507077)))

(declare-fun b!1139409 () Bool)

(assert (=> b!1139409 (= e!648324 e!648319)))

(declare-fun res!759969 () Bool)

(assert (=> b!1139409 (=> res!759969 e!648319)))

(assert (=> b!1139409 (= res!759969 (not (= from!1455 i!673)))))

(declare-fun lt!507072 () ListLongMap!16231)

(assert (=> b!1139409 (= lt!507072 (getCurrentListMapNoExtraKeys!4578 lt!507079 lt!507068 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(assert (=> b!1139409 (= lt!507068 (array!74065 (store (arr!35679 _values!996) i!673 (ValueCellFull!13602 lt!507080)) (size!36216 _values!996)))))

(declare-fun dynLambda!2634 (Int (_ BitVec 64)) V!43291)

(assert (=> b!1139409 (= lt!507080 (dynLambda!2634 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!507070 () ListLongMap!16231)

(assert (=> b!1139409 (= lt!507070 (getCurrentListMapNoExtraKeys!4578 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun bm!50660 () Bool)

(assert (=> bm!50660 (= call!50657 (contains!6640 (ite c!111644 lt!507086 call!50661) k0!934))))

(declare-fun b!1139410 () Bool)

(assert (=> b!1139410 (= c!111643 (and (not lt!507074) (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(assert (=> b!1139410 (= e!648323 e!648318)))

(declare-fun bm!50661 () Bool)

(assert (=> bm!50661 (= call!50660 (+!3480 lt!507075 (ite (or c!111644 c!111643) (tuple2!18251 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!18251 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944))))))

(declare-fun b!1139411 () Bool)

(declare-fun res!759968 () Bool)

(assert (=> b!1139411 (=> (not res!759968) (not e!648330))))

(assert (=> b!1139411 (= res!759968 (= (select (arr!35680 _keys!1208) i!673) k0!934))))

(declare-fun mapIsEmpty!44759 () Bool)

(assert (=> mapIsEmpty!44759 mapRes!44759))

(assert (= (and start!98524 res!759963) b!1139398))

(assert (= (and b!1139398 res!759973) b!1139395))

(assert (= (and b!1139395 res!759962) b!1139388))

(assert (= (and b!1139388 res!759966) b!1139392))

(assert (= (and b!1139392 res!759965) b!1139400))

(assert (= (and b!1139400 res!759970) b!1139406))

(assert (= (and b!1139406 res!759972) b!1139411))

(assert (= (and b!1139411 res!759968) b!1139394))

(assert (= (and b!1139394 res!759974) b!1139402))

(assert (= (and b!1139402 res!759961) b!1139390))

(assert (= (and b!1139390 (not res!759964)) b!1139409))

(assert (= (and b!1139409 (not res!759969)) b!1139405))

(assert (= (and b!1139405 c!111646) b!1139401))

(assert (= (and b!1139405 (not c!111646)) b!1139384))

(assert (= (or b!1139401 b!1139384) bm!50656))

(assert (= (or b!1139401 b!1139384) bm!50659))

(assert (= (and b!1139405 (not res!759971)) b!1139404))

(assert (= (and b!1139404 c!111648) b!1139396))

(assert (= (and b!1139404 (not c!111648)) b!1139399))

(assert (= (and b!1139396 c!111644) b!1139403))

(assert (= (and b!1139396 (not c!111644)) b!1139410))

(assert (= (and b!1139410 c!111643) b!1139383))

(assert (= (and b!1139410 (not c!111643)) b!1139389))

(assert (= (and b!1139389 c!111647) b!1139408))

(assert (= (and b!1139389 (not c!111647)) b!1139393))

(assert (= (or b!1139383 b!1139408) bm!50658))

(assert (= (or b!1139383 b!1139408) bm!50654))

(assert (= (or b!1139383 b!1139408) bm!50655))

(assert (= (or b!1139403 bm!50655) bm!50660))

(assert (= (or b!1139403 bm!50658) bm!50657))

(assert (= (or b!1139403 bm!50654) bm!50661))

(assert (= (and b!1139396 c!111645) b!1139385))

(assert (= (and b!1139396 (not c!111645)) b!1139387))

(assert (= (and b!1139396 res!759967) b!1139407))

(assert (= (and b!1139397 condMapEmpty!44759) mapIsEmpty!44759))

(assert (= (and b!1139397 (not condMapEmpty!44759)) mapNonEmpty!44759))

(get-info :version)

(assert (= (and mapNonEmpty!44759 ((_ is ValueCellFull!13602) mapValue!44759)) b!1139391))

(assert (= (and b!1139397 ((_ is ValueCellFull!13602) mapDefault!44759)) b!1139386))

(assert (= start!98524 b!1139397))

(declare-fun b_lambda!19217 () Bool)

(assert (=> (not b_lambda!19217) (not b!1139409)))

(declare-fun t!36144 () Bool)

(declare-fun tb!8913 () Bool)

(assert (=> (and start!98524 (= defaultEntry!1004 defaultEntry!1004) t!36144) tb!8913))

(declare-fun result!18383 () Bool)

(assert (=> tb!8913 (= result!18383 tp_is_empty!28623)))

(assert (=> b!1139409 t!36144))

(declare-fun b_and!39051 () Bool)

(assert (= b_and!39049 (and (=> t!36144 result!18383) b_and!39051)))

(declare-fun m!1051071 () Bool)

(assert (=> b!1139398 m!1051071))

(declare-fun m!1051073 () Bool)

(assert (=> b!1139404 m!1051073))

(declare-fun m!1051075 () Bool)

(assert (=> b!1139404 m!1051075))

(declare-fun m!1051077 () Bool)

(assert (=> b!1139404 m!1051077))

(declare-fun m!1051079 () Bool)

(assert (=> b!1139404 m!1051079))

(declare-fun m!1051081 () Bool)

(assert (=> b!1139404 m!1051081))

(declare-fun m!1051083 () Bool)

(assert (=> b!1139404 m!1051083))

(assert (=> b!1139404 m!1051079))

(assert (=> b!1139404 m!1051081))

(assert (=> b!1139404 m!1051081))

(declare-fun m!1051085 () Bool)

(assert (=> b!1139404 m!1051085))

(assert (=> b!1139404 m!1051075))

(declare-fun m!1051087 () Bool)

(assert (=> b!1139404 m!1051087))

(declare-fun m!1051089 () Bool)

(assert (=> bm!50656 m!1051089))

(declare-fun m!1051091 () Bool)

(assert (=> b!1139396 m!1051091))

(declare-fun m!1051093 () Bool)

(assert (=> b!1139396 m!1051093))

(declare-fun m!1051095 () Bool)

(assert (=> b!1139396 m!1051095))

(declare-fun m!1051097 () Bool)

(assert (=> b!1139396 m!1051097))

(declare-fun m!1051099 () Bool)

(assert (=> bm!50660 m!1051099))

(declare-fun m!1051101 () Bool)

(assert (=> b!1139401 m!1051101))

(declare-fun m!1051103 () Bool)

(assert (=> b!1139407 m!1051103))

(declare-fun m!1051105 () Bool)

(assert (=> start!98524 m!1051105))

(declare-fun m!1051107 () Bool)

(assert (=> start!98524 m!1051107))

(declare-fun m!1051109 () Bool)

(assert (=> b!1139411 m!1051109))

(assert (=> b!1139405 m!1051081))

(declare-fun m!1051111 () Bool)

(assert (=> b!1139405 m!1051111))

(declare-fun m!1051113 () Bool)

(assert (=> b!1139406 m!1051113))

(declare-fun m!1051115 () Bool)

(assert (=> b!1139409 m!1051115))

(declare-fun m!1051117 () Bool)

(assert (=> b!1139409 m!1051117))

(declare-fun m!1051119 () Bool)

(assert (=> b!1139409 m!1051119))

(declare-fun m!1051121 () Bool)

(assert (=> b!1139409 m!1051121))

(declare-fun m!1051123 () Bool)

(assert (=> b!1139403 m!1051123))

(assert (=> b!1139403 m!1051123))

(declare-fun m!1051125 () Bool)

(assert (=> b!1139403 m!1051125))

(declare-fun m!1051127 () Bool)

(assert (=> b!1139403 m!1051127))

(declare-fun m!1051129 () Bool)

(assert (=> b!1139388 m!1051129))

(declare-fun m!1051131 () Bool)

(assert (=> b!1139402 m!1051131))

(assert (=> bm!50659 m!1051073))

(declare-fun m!1051133 () Bool)

(assert (=> b!1139394 m!1051133))

(declare-fun m!1051135 () Bool)

(assert (=> b!1139394 m!1051135))

(declare-fun m!1051137 () Bool)

(assert (=> b!1139392 m!1051137))

(declare-fun m!1051139 () Bool)

(assert (=> bm!50661 m!1051139))

(declare-fun m!1051141 () Bool)

(assert (=> bm!50657 m!1051141))

(declare-fun m!1051143 () Bool)

(assert (=> b!1139390 m!1051143))

(declare-fun m!1051145 () Bool)

(assert (=> b!1139390 m!1051145))

(assert (=> b!1139385 m!1051103))

(declare-fun m!1051147 () Bool)

(assert (=> mapNonEmpty!44759 m!1051147))

(check-sat (not mapNonEmpty!44759) (not b!1139402) (not start!98524) (not bm!50661) (not b!1139396) (not b!1139405) (not b!1139390) tp_is_empty!28623 (not b!1139388) (not bm!50657) (not b!1139406) (not b!1139398) (not b_next!24093) (not bm!50659) (not b_lambda!19217) (not b!1139407) (not b!1139401) (not b!1139385) (not b!1139403) (not bm!50660) (not b!1139404) (not b!1139394) (not b!1139409) b_and!39051 (not bm!50656) (not b!1139392))
(check-sat b_and!39051 (not b_next!24093))
