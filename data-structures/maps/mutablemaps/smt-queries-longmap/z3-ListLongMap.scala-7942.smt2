; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!98530 () Bool)

(assert start!98530)

(declare-fun b_free!24099 () Bool)

(declare-fun b_next!24099 () Bool)

(assert (=> start!98530 (= b_free!24099 (not b_next!24099))))

(declare-fun tp!85008 () Bool)

(declare-fun b_and!39061 () Bool)

(assert (=> start!98530 (= tp!85008 b_and!39061)))

(declare-fun mapIsEmpty!44768 () Bool)

(declare-fun mapRes!44768 () Bool)

(assert (=> mapIsEmpty!44768 mapRes!44768))

(declare-fun b!1139650 () Bool)

(declare-datatypes ((Unit!37301 0))(
  ( (Unit!37302) )
))
(declare-fun e!648467 () Unit!37301)

(declare-fun Unit!37303 () Unit!37301)

(assert (=> b!1139650 (= e!648467 Unit!37303)))

(declare-fun lt!507261 () Bool)

(declare-fun extraKeys!923 () (_ BitVec 32))

(assert (=> b!1139650 (= lt!507261 (= (bvand extraKeys!923 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(declare-fun c!111702 () Bool)

(assert (=> b!1139650 (= c!111702 (and (not lt!507261) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun lt!507273 () Unit!37301)

(declare-fun e!648459 () Unit!37301)

(assert (=> b!1139650 (= lt!507273 e!648459)))

(declare-datatypes ((V!43299 0))(
  ( (V!43300 (val!14371 Int)) )
))
(declare-fun zeroValue!944 () V!43299)

(declare-datatypes ((array!74076 0))(
  ( (array!74077 (arr!35685 (Array (_ BitVec 32) (_ BitVec 64))) (size!36222 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!74076)

(declare-fun lt!507260 () Unit!37301)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-fun k0!934 () (_ BitVec 64))

(declare-fun from!1455 () (_ BitVec 32))

(declare-datatypes ((ValueCell!13605 0))(
  ( (ValueCellFull!13605 (v!17009 V!43299)) (EmptyCell!13605) )
))
(declare-datatypes ((array!74078 0))(
  ( (array!74079 (arr!35686 (Array (_ BitVec 32) ValueCell!13605)) (size!36223 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!74078)

(declare-fun minValue!944 () V!43299)

(declare-fun lemmaListMapContainsThenArrayContainsFrom!385 (array!74076 array!74078 (_ BitVec 32) (_ BitVec 32) V!43299 V!43299 (_ BitVec 64) (_ BitVec 32) Int) Unit!37301)

(assert (=> b!1139650 (= lt!507260 (lemmaListMapContainsThenArrayContainsFrom!385 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun c!111700 () Bool)

(assert (=> b!1139650 (= c!111700 (and (not (= k0!934 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!934 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun res!760089 () Bool)

(declare-fun e!648473 () Bool)

(assert (=> b!1139650 (= res!760089 e!648473)))

(declare-fun e!648463 () Bool)

(assert (=> b!1139650 (=> (not res!760089) (not e!648463))))

(assert (=> b!1139650 e!648463))

(declare-fun lt!507259 () Unit!37301)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!74076 (_ BitVec 32) (_ BitVec 32)) Unit!37301)

(assert (=> b!1139650 (= lt!507259 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1208 #b00000000000000000000000000000000 from!1455))))

(declare-datatypes ((List!25059 0))(
  ( (Nil!25056) (Cons!25055 (h!26264 (_ BitVec 64)) (t!36157 List!25059)) )
))
(declare-fun arrayNoDuplicates!0 (array!74076 (_ BitVec 32) List!25059) Bool)

(assert (=> b!1139650 (arrayNoDuplicates!0 _keys!1208 from!1455 Nil!25056)))

(declare-fun lt!507264 () Unit!37301)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!74076 (_ BitVec 64) (_ BitVec 32) List!25059) Unit!37301)

(assert (=> b!1139650 (= lt!507264 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!1208 k0!934 from!1455 Nil!25056))))

(assert (=> b!1139650 false))

(declare-fun c!111697 () Bool)

(declare-fun call!50730 () Unit!37301)

(declare-datatypes ((tuple2!18256 0))(
  ( (tuple2!18257 (_1!9138 (_ BitVec 64)) (_2!9138 V!43299)) )
))
(declare-datatypes ((List!25060 0))(
  ( (Nil!25057) (Cons!25056 (h!26265 tuple2!18256) (t!36158 List!25060)) )
))
(declare-datatypes ((ListLongMap!16237 0))(
  ( (ListLongMap!16238 (toList!8134 List!25060)) )
))
(declare-fun lt!507263 () ListLongMap!16237)

(declare-fun bm!50726 () Bool)

(declare-fun addStillContains!784 (ListLongMap!16237 (_ BitVec 64) V!43299 (_ BitVec 64)) Unit!37301)

(assert (=> bm!50726 (= call!50730 (addStillContains!784 lt!507263 (ite (or c!111702 c!111697) #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000) (ite (or c!111702 c!111697) zeroValue!944 minValue!944) k0!934))))

(declare-fun lt!507271 () array!74078)

(declare-fun lt!507276 () array!74076)

(declare-fun bm!50727 () Bool)

(declare-fun call!50735 () ListLongMap!16237)

(declare-fun getCurrentListMapNoExtraKeys!4581 (array!74076 array!74078 (_ BitVec 32) (_ BitVec 32) V!43299 V!43299 (_ BitVec 32) Int) ListLongMap!16237)

(assert (=> bm!50727 (= call!50735 (getCurrentListMapNoExtraKeys!4581 lt!507276 lt!507271 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1139651 () Bool)

(declare-fun res!760094 () Bool)

(declare-fun e!648471 () Bool)

(assert (=> b!1139651 (=> (not res!760094) (not e!648471))))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1139651 (= res!760094 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!36222 _keys!1208))))))

(declare-fun b!1139652 () Bool)

(declare-fun res!760099 () Bool)

(assert (=> b!1139652 (=> (not res!760099) (not e!648471))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!74076 (_ BitVec 32)) Bool)

(assert (=> b!1139652 (= res!760099 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1139653 () Bool)

(declare-fun e!648469 () Bool)

(assert (=> b!1139653 (= e!648471 e!648469)))

(declare-fun res!760088 () Bool)

(assert (=> b!1139653 (=> (not res!760088) (not e!648469))))

(assert (=> b!1139653 (= res!760088 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!507276 mask!1564))))

(assert (=> b!1139653 (= lt!507276 (array!74077 (store (arr!35685 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!36222 _keys!1208)))))

(declare-fun b!1139654 () Bool)

(declare-fun res!760100 () Bool)

(assert (=> b!1139654 (=> (not res!760100) (not e!648471))))

(assert (=> b!1139654 (= res!760100 (and (= (size!36223 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!36222 _keys!1208) (size!36223 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun bm!50728 () Bool)

(declare-fun call!50733 () ListLongMap!16237)

(declare-fun +!3483 (ListLongMap!16237 tuple2!18256) ListLongMap!16237)

(assert (=> bm!50728 (= call!50733 (+!3483 lt!507263 (ite (or c!111702 c!111697) (tuple2!18257 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!18257 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944))))))

(declare-fun bm!50729 () Bool)

(declare-fun call!50734 () Bool)

(declare-fun call!50729 () Bool)

(assert (=> bm!50729 (= call!50734 call!50729)))

(declare-fun b!1139655 () Bool)

(declare-fun e!648462 () Unit!37301)

(declare-fun Unit!37304 () Unit!37301)

(assert (=> b!1139655 (= e!648462 Unit!37304)))

(declare-fun b!1139656 () Bool)

(assert (=> b!1139656 call!50734))

(declare-fun lt!507274 () Unit!37301)

(declare-fun call!50736 () Unit!37301)

(assert (=> b!1139656 (= lt!507274 call!50736)))

(assert (=> b!1139656 (= e!648462 lt!507274)))

(declare-fun b!1139657 () Bool)

(declare-fun e!648472 () Bool)

(declare-fun e!648470 () Bool)

(assert (=> b!1139657 (= e!648472 e!648470)))

(declare-fun res!760096 () Bool)

(assert (=> b!1139657 (=> res!760096 e!648470)))

(assert (=> b!1139657 (= res!760096 (not (= (select (arr!35685 _keys!1208) from!1455) k0!934)))))

(declare-fun e!648464 () Bool)

(assert (=> b!1139657 e!648464))

(declare-fun c!111699 () Bool)

(assert (=> b!1139657 (= c!111699 (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673))))

(declare-fun lt!507272 () Unit!37301)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!493 (array!74076 array!74078 (_ BitVec 32) (_ BitVec 32) V!43299 V!43299 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!37301)

(assert (=> b!1139657 (= lt!507272 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!493 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1139658 () Bool)

(declare-fun call!50732 () ListLongMap!16237)

(declare-fun -!1235 (ListLongMap!16237 (_ BitVec 64)) ListLongMap!16237)

(assert (=> b!1139658 (= e!648464 (= call!50735 (-!1235 call!50732 k0!934)))))

(declare-fun b!1139659 () Bool)

(declare-fun res!760093 () Bool)

(assert (=> b!1139659 (=> (not res!760093) (not e!648471))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1139659 (= res!760093 (validMask!0 mask!1564))))

(declare-fun b!1139660 () Bool)

(declare-fun Unit!37305 () Unit!37301)

(assert (=> b!1139660 (= e!648467 Unit!37305)))

(declare-fun b!1139661 () Bool)

(assert (=> b!1139661 (= e!648473 (ite (= k0!934 #b0000000000000000000000000000000000000000000000000000000000000000) (not lt!507261) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!1139662 () Bool)

(declare-fun e!648465 () Bool)

(assert (=> b!1139662 (= e!648469 (not e!648465))))

(declare-fun res!760092 () Bool)

(assert (=> b!1139662 (=> res!760092 e!648465)))

(assert (=> b!1139662 (= res!760092 (bvsgt from!1455 i!673))))

(declare-fun arrayContainsKey!0 (array!74076 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1139662 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-fun lt!507256 () Unit!37301)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!74076 (_ BitVec 64) (_ BitVec 32)) Unit!37301)

(assert (=> b!1139662 (= lt!507256 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1139663 () Bool)

(declare-fun res!760097 () Bool)

(assert (=> b!1139663 (=> (not res!760097) (not e!648471))))

(assert (=> b!1139663 (= res!760097 (= (select (arr!35685 _keys!1208) i!673) k0!934))))

(declare-fun b!1139664 () Bool)

(assert (=> b!1139664 (= e!648463 (arrayContainsKey!0 _keys!1208 k0!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun call!50731 () ListLongMap!16237)

(declare-fun bm!50730 () Bool)

(declare-fun lt!507265 () ListLongMap!16237)

(declare-fun contains!6643 (ListLongMap!16237 (_ BitVec 64)) Bool)

(assert (=> bm!50730 (= call!50729 (contains!6643 (ite c!111702 lt!507265 call!50731) k0!934))))

(declare-fun b!1139665 () Bool)

(assert (=> b!1139665 (= e!648464 (= call!50735 call!50732))))

(declare-fun b!1139666 () Bool)

(declare-fun e!648460 () Bool)

(declare-fun tp_is_empty!28629 () Bool)

(assert (=> b!1139666 (= e!648460 tp_is_empty!28629)))

(declare-fun b!1139667 () Bool)

(declare-fun res!760090 () Bool)

(assert (=> b!1139667 (=> (not res!760090) (not e!648471))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1139667 (= res!760090 (validKeyInArray!0 k0!934))))

(declare-fun b!1139668 () Bool)

(declare-fun e!648461 () Bool)

(assert (=> b!1139668 (= e!648461 tp_is_empty!28629)))

(declare-fun b!1139669 () Bool)

(declare-fun res!760091 () Bool)

(assert (=> b!1139669 (=> (not res!760091) (not e!648469))))

(assert (=> b!1139669 (= res!760091 (arrayNoDuplicates!0 lt!507276 #b00000000000000000000000000000000 Nil!25056))))

(declare-fun b!1139670 () Bool)

(assert (=> b!1139670 (contains!6643 (+!3483 lt!507265 (tuple2!18257 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944)) k0!934)))

(declare-fun lt!507257 () Unit!37301)

(assert (=> b!1139670 (= lt!507257 (addStillContains!784 lt!507265 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944 k0!934))))

(assert (=> b!1139670 call!50729))

(assert (=> b!1139670 (= lt!507265 call!50733)))

(declare-fun lt!507266 () Unit!37301)

(assert (=> b!1139670 (= lt!507266 call!50730)))

(assert (=> b!1139670 (= e!648459 lt!507257)))

(declare-fun b!1139671 () Bool)

(assert (=> b!1139671 (= e!648465 e!648472)))

(declare-fun res!760095 () Bool)

(assert (=> b!1139671 (=> res!760095 e!648472)))

(assert (=> b!1139671 (= res!760095 (not (= from!1455 i!673)))))

(declare-fun lt!507258 () ListLongMap!16237)

(assert (=> b!1139671 (= lt!507258 (getCurrentListMapNoExtraKeys!4581 lt!507276 lt!507271 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun lt!507269 () V!43299)

(assert (=> b!1139671 (= lt!507271 (array!74079 (store (arr!35686 _values!996) i!673 (ValueCellFull!13605 lt!507269)) (size!36223 _values!996)))))

(declare-fun dynLambda!2636 (Int (_ BitVec 64)) V!43299)

(assert (=> b!1139671 (= lt!507269 (dynLambda!2636 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!507262 () ListLongMap!16237)

(assert (=> b!1139671 (= lt!507262 (getCurrentListMapNoExtraKeys!4581 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun bm!50731 () Bool)

(assert (=> bm!50731 (= call!50736 call!50730)))

(declare-fun bm!50732 () Bool)

(assert (=> bm!50732 (= call!50731 call!50733)))

(declare-fun b!1139672 () Bool)

(declare-fun e!648474 () Bool)

(assert (=> b!1139672 (= e!648474 (and e!648461 mapRes!44768))))

(declare-fun condMapEmpty!44768 () Bool)

(declare-fun mapDefault!44768 () ValueCell!13605)

(assert (=> b!1139672 (= condMapEmpty!44768 (= (arr!35686 _values!996) ((as const (Array (_ BitVec 32) ValueCell!13605)) mapDefault!44768)))))

(declare-fun b!1139673 () Bool)

(declare-fun e!648466 () Unit!37301)

(declare-fun lt!507267 () Unit!37301)

(assert (=> b!1139673 (= e!648466 lt!507267)))

(assert (=> b!1139673 (= lt!507267 call!50736)))

(assert (=> b!1139673 call!50734))

(declare-fun bm!50733 () Bool)

(assert (=> bm!50733 (= call!50732 (getCurrentListMapNoExtraKeys!4581 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun mapNonEmpty!44768 () Bool)

(declare-fun tp!85009 () Bool)

(assert (=> mapNonEmpty!44768 (= mapRes!44768 (and tp!85009 e!648460))))

(declare-fun mapValue!44768 () ValueCell!13605)

(declare-fun mapKey!44768 () (_ BitVec 32))

(declare-fun mapRest!44768 () (Array (_ BitVec 32) ValueCell!13605))

(assert (=> mapNonEmpty!44768 (= (arr!35686 _values!996) (store mapRest!44768 mapKey!44768 mapValue!44768))))

(declare-fun b!1139674 () Bool)

(declare-fun res!760098 () Bool)

(assert (=> b!1139674 (=> (not res!760098) (not e!648471))))

(assert (=> b!1139674 (= res!760098 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!25056))))

(declare-fun b!1139675 () Bool)

(assert (=> b!1139675 (= c!111697 (and (not lt!507261) (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(assert (=> b!1139675 (= e!648459 e!648466)))

(declare-fun res!760087 () Bool)

(assert (=> start!98530 (=> (not res!760087) (not e!648471))))

(assert (=> start!98530 (= res!760087 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!36222 _keys!1208))))))

(assert (=> start!98530 e!648471))

(assert (=> start!98530 tp_is_empty!28629))

(declare-fun array_inv!27232 (array!74076) Bool)

(assert (=> start!98530 (array_inv!27232 _keys!1208)))

(assert (=> start!98530 true))

(assert (=> start!98530 tp!85008))

(declare-fun array_inv!27233 (array!74078) Bool)

(assert (=> start!98530 (and (array_inv!27233 _values!996) e!648474)))

(declare-fun b!1139676 () Bool)

(assert (=> b!1139676 (= e!648470 true)))

(declare-fun lt!507268 () V!43299)

(assert (=> b!1139676 (= (-!1235 (+!3483 lt!507263 (tuple2!18257 (select (arr!35685 _keys!1208) from!1455) lt!507268)) (select (arr!35685 _keys!1208) from!1455)) lt!507263)))

(declare-fun lt!507270 () Unit!37301)

(declare-fun addThenRemoveForNewKeyIsSame!91 (ListLongMap!16237 (_ BitVec 64) V!43299) Unit!37301)

(assert (=> b!1139676 (= lt!507270 (addThenRemoveForNewKeyIsSame!91 lt!507263 (select (arr!35685 _keys!1208) from!1455) lt!507268))))

(declare-fun get!18145 (ValueCell!13605 V!43299) V!43299)

(assert (=> b!1139676 (= lt!507268 (get!18145 (select (arr!35686 _values!996) from!1455) lt!507269))))

(declare-fun lt!507275 () Unit!37301)

(assert (=> b!1139676 (= lt!507275 e!648467)))

(declare-fun c!111698 () Bool)

(assert (=> b!1139676 (= c!111698 (contains!6643 lt!507263 k0!934))))

(assert (=> b!1139676 (= lt!507263 (getCurrentListMapNoExtraKeys!4581 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1139677 () Bool)

(assert (=> b!1139677 (= e!648466 e!648462)))

(declare-fun c!111701 () Bool)

(assert (=> b!1139677 (= c!111701 (and (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!507261))))

(declare-fun b!1139678 () Bool)

(assert (=> b!1139678 (= e!648473 (arrayContainsKey!0 _keys!1208 k0!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(assert (= (and start!98530 res!760087) b!1139659))

(assert (= (and b!1139659 res!760093) b!1139654))

(assert (= (and b!1139654 res!760100) b!1139652))

(assert (= (and b!1139652 res!760099) b!1139674))

(assert (= (and b!1139674 res!760098) b!1139651))

(assert (= (and b!1139651 res!760094) b!1139667))

(assert (= (and b!1139667 res!760090) b!1139663))

(assert (= (and b!1139663 res!760097) b!1139653))

(assert (= (and b!1139653 res!760088) b!1139669))

(assert (= (and b!1139669 res!760091) b!1139662))

(assert (= (and b!1139662 (not res!760092)) b!1139671))

(assert (= (and b!1139671 (not res!760095)) b!1139657))

(assert (= (and b!1139657 c!111699) b!1139658))

(assert (= (and b!1139657 (not c!111699)) b!1139665))

(assert (= (or b!1139658 b!1139665) bm!50727))

(assert (= (or b!1139658 b!1139665) bm!50733))

(assert (= (and b!1139657 (not res!760096)) b!1139676))

(assert (= (and b!1139676 c!111698) b!1139650))

(assert (= (and b!1139676 (not c!111698)) b!1139660))

(assert (= (and b!1139650 c!111702) b!1139670))

(assert (= (and b!1139650 (not c!111702)) b!1139675))

(assert (= (and b!1139675 c!111697) b!1139673))

(assert (= (and b!1139675 (not c!111697)) b!1139677))

(assert (= (and b!1139677 c!111701) b!1139656))

(assert (= (and b!1139677 (not c!111701)) b!1139655))

(assert (= (or b!1139673 b!1139656) bm!50731))

(assert (= (or b!1139673 b!1139656) bm!50732))

(assert (= (or b!1139673 b!1139656) bm!50729))

(assert (= (or b!1139670 bm!50729) bm!50730))

(assert (= (or b!1139670 bm!50731) bm!50726))

(assert (= (or b!1139670 bm!50732) bm!50728))

(assert (= (and b!1139650 c!111700) b!1139678))

(assert (= (and b!1139650 (not c!111700)) b!1139661))

(assert (= (and b!1139650 res!760089) b!1139664))

(assert (= (and b!1139672 condMapEmpty!44768) mapIsEmpty!44768))

(assert (= (and b!1139672 (not condMapEmpty!44768)) mapNonEmpty!44768))

(get-info :version)

(assert (= (and mapNonEmpty!44768 ((_ is ValueCellFull!13605) mapValue!44768)) b!1139666))

(assert (= (and b!1139672 ((_ is ValueCellFull!13605) mapDefault!44768)) b!1139668))

(assert (= start!98530 b!1139672))

(declare-fun b_lambda!19223 () Bool)

(assert (=> (not b_lambda!19223) (not b!1139671)))

(declare-fun t!36156 () Bool)

(declare-fun tb!8919 () Bool)

(assert (=> (and start!98530 (= defaultEntry!1004 defaultEntry!1004) t!36156) tb!8919))

(declare-fun result!18395 () Bool)

(assert (=> tb!8919 (= result!18395 tp_is_empty!28629)))

(assert (=> b!1139671 t!36156))

(declare-fun b_and!39063 () Bool)

(assert (= b_and!39061 (and (=> t!36156 result!18395) b_and!39063)))

(declare-fun m!1051305 () Bool)

(assert (=> b!1139652 m!1051305))

(declare-fun m!1051307 () Bool)

(assert (=> b!1139670 m!1051307))

(assert (=> b!1139670 m!1051307))

(declare-fun m!1051309 () Bool)

(assert (=> b!1139670 m!1051309))

(declare-fun m!1051311 () Bool)

(assert (=> b!1139670 m!1051311))

(declare-fun m!1051313 () Bool)

(assert (=> mapNonEmpty!44768 m!1051313))

(declare-fun m!1051315 () Bool)

(assert (=> b!1139669 m!1051315))

(declare-fun m!1051317 () Bool)

(assert (=> b!1139657 m!1051317))

(declare-fun m!1051319 () Bool)

(assert (=> b!1139657 m!1051319))

(declare-fun m!1051321 () Bool)

(assert (=> b!1139678 m!1051321))

(declare-fun m!1051323 () Bool)

(assert (=> b!1139663 m!1051323))

(declare-fun m!1051325 () Bool)

(assert (=> b!1139658 m!1051325))

(assert (=> b!1139664 m!1051321))

(declare-fun m!1051327 () Bool)

(assert (=> b!1139662 m!1051327))

(declare-fun m!1051329 () Bool)

(assert (=> b!1139662 m!1051329))

(declare-fun m!1051331 () Bool)

(assert (=> b!1139674 m!1051331))

(declare-fun m!1051333 () Bool)

(assert (=> bm!50730 m!1051333))

(declare-fun m!1051335 () Bool)

(assert (=> bm!50733 m!1051335))

(declare-fun m!1051337 () Bool)

(assert (=> b!1139671 m!1051337))

(declare-fun m!1051339 () Bool)

(assert (=> b!1139671 m!1051339))

(declare-fun m!1051341 () Bool)

(assert (=> b!1139671 m!1051341))

(declare-fun m!1051343 () Bool)

(assert (=> b!1139671 m!1051343))

(declare-fun m!1051345 () Bool)

(assert (=> b!1139650 m!1051345))

(declare-fun m!1051347 () Bool)

(assert (=> b!1139650 m!1051347))

(declare-fun m!1051349 () Bool)

(assert (=> b!1139650 m!1051349))

(declare-fun m!1051351 () Bool)

(assert (=> b!1139650 m!1051351))

(declare-fun m!1051353 () Bool)

(assert (=> bm!50726 m!1051353))

(declare-fun m!1051355 () Bool)

(assert (=> start!98530 m!1051355))

(declare-fun m!1051357 () Bool)

(assert (=> start!98530 m!1051357))

(assert (=> b!1139676 m!1051335))

(declare-fun m!1051359 () Bool)

(assert (=> b!1139676 m!1051359))

(declare-fun m!1051361 () Bool)

(assert (=> b!1139676 m!1051361))

(declare-fun m!1051363 () Bool)

(assert (=> b!1139676 m!1051363))

(assert (=> b!1139676 m!1051359))

(declare-fun m!1051365 () Bool)

(assert (=> b!1139676 m!1051365))

(assert (=> b!1139676 m!1051317))

(declare-fun m!1051367 () Bool)

(assert (=> b!1139676 m!1051367))

(assert (=> b!1139676 m!1051363))

(assert (=> b!1139676 m!1051317))

(declare-fun m!1051369 () Bool)

(assert (=> b!1139676 m!1051369))

(assert (=> b!1139676 m!1051317))

(declare-fun m!1051371 () Bool)

(assert (=> bm!50728 m!1051371))

(declare-fun m!1051373 () Bool)

(assert (=> b!1139667 m!1051373))

(declare-fun m!1051375 () Bool)

(assert (=> b!1139653 m!1051375))

(declare-fun m!1051377 () Bool)

(assert (=> b!1139653 m!1051377))

(declare-fun m!1051379 () Bool)

(assert (=> bm!50727 m!1051379))

(declare-fun m!1051381 () Bool)

(assert (=> b!1139659 m!1051381))

(check-sat (not b!1139662) (not mapNonEmpty!44768) (not b!1139674) (not b!1139657) (not b!1139671) b_and!39063 (not b!1139659) (not b!1139658) (not start!98530) (not bm!50728) (not bm!50726) (not b!1139667) (not bm!50727) (not bm!50730) (not b!1139653) (not b!1139652) (not b!1139669) (not b!1139670) tp_is_empty!28629 (not bm!50733) (not b_lambda!19223) (not b!1139676) (not b_next!24099) (not b!1139664) (not b!1139650) (not b!1139678))
(check-sat b_and!39063 (not b_next!24099))
