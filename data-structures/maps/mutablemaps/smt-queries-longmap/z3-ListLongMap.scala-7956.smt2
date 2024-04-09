; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!98614 () Bool)

(assert start!98614)

(declare-fun b_free!24183 () Bool)

(declare-fun b_next!24183 () Bool)

(assert (=> start!98614 (= b_free!24183 (not b_next!24183))))

(declare-fun tp!85261 () Bool)

(declare-fun b_and!39229 () Bool)

(assert (=> start!98614 (= tp!85261 b_and!39229)))

(declare-fun b!1143388 () Bool)

(declare-datatypes ((Unit!37448 0))(
  ( (Unit!37449) )
))
(declare-fun e!650488 () Unit!37448)

(declare-fun Unit!37450 () Unit!37448)

(assert (=> b!1143388 (= e!650488 Unit!37450)))

(declare-fun lt!509902 () Bool)

(declare-fun extraKeys!923 () (_ BitVec 32))

(assert (=> b!1143388 (= lt!509902 (= (bvand extraKeys!923 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(declare-fun c!112457 () Bool)

(assert (=> b!1143388 (= c!112457 (and (not lt!509902) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun lt!509920 () Unit!37448)

(declare-fun e!650481 () Unit!37448)

(assert (=> b!1143388 (= lt!509920 e!650481)))

(declare-datatypes ((V!43411 0))(
  ( (V!43412 (val!14413 Int)) )
))
(declare-fun zeroValue!944 () V!43411)

(declare-datatypes ((array!74236 0))(
  ( (array!74237 (arr!35765 (Array (_ BitVec 32) (_ BitVec 64))) (size!36302 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!74236)

(declare-fun lt!509913 () Unit!37448)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-fun k0!934 () (_ BitVec 64))

(declare-fun from!1455 () (_ BitVec 32))

(declare-datatypes ((ValueCell!13647 0))(
  ( (ValueCellFull!13647 (v!17051 V!43411)) (EmptyCell!13647) )
))
(declare-datatypes ((array!74238 0))(
  ( (array!74239 (arr!35766 (Array (_ BitVec 32) ValueCell!13647)) (size!36303 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!74238)

(declare-fun minValue!944 () V!43411)

(declare-fun lemmaListMapContainsThenArrayContainsFrom!408 (array!74236 array!74238 (_ BitVec 32) (_ BitVec 32) V!43411 V!43411 (_ BitVec 64) (_ BitVec 32) Int) Unit!37448)

(assert (=> b!1143388 (= lt!509913 (lemmaListMapContainsThenArrayContainsFrom!408 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun c!112453 () Bool)

(assert (=> b!1143388 (= c!112453 (and (not (= k0!934 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!934 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun res!761863 () Bool)

(declare-fun e!650486 () Bool)

(assert (=> b!1143388 (= res!761863 e!650486)))

(declare-fun e!650490 () Bool)

(assert (=> b!1143388 (=> (not res!761863) (not e!650490))))

(assert (=> b!1143388 e!650490))

(declare-fun lt!509906 () Unit!37448)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!74236 (_ BitVec 32) (_ BitVec 32)) Unit!37448)

(assert (=> b!1143388 (= lt!509906 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1208 #b00000000000000000000000000000000 from!1455))))

(declare-datatypes ((List!25130 0))(
  ( (Nil!25127) (Cons!25126 (h!26335 (_ BitVec 64)) (t!36312 List!25130)) )
))
(declare-fun arrayNoDuplicates!0 (array!74236 (_ BitVec 32) List!25130) Bool)

(assert (=> b!1143388 (arrayNoDuplicates!0 _keys!1208 from!1455 Nil!25127)))

(declare-fun lt!509911 () Unit!37448)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!74236 (_ BitVec 64) (_ BitVec 32) List!25130) Unit!37448)

(assert (=> b!1143388 (= lt!509911 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!1208 k0!934 from!1455 Nil!25127))))

(assert (=> b!1143388 false))

(declare-fun b!1143389 () Bool)

(declare-fun e!650479 () Bool)

(declare-datatypes ((tuple2!18332 0))(
  ( (tuple2!18333 (_1!9176 (_ BitVec 64)) (_2!9176 V!43411)) )
))
(declare-datatypes ((List!25131 0))(
  ( (Nil!25128) (Cons!25127 (h!26336 tuple2!18332) (t!36313 List!25131)) )
))
(declare-datatypes ((ListLongMap!16313 0))(
  ( (ListLongMap!16314 (toList!8172 List!25131)) )
))
(declare-fun call!51744 () ListLongMap!16313)

(declare-fun call!51737 () ListLongMap!16313)

(assert (=> b!1143389 (= e!650479 (= call!51744 call!51737))))

(declare-fun b!1143390 () Bool)

(declare-fun e!650476 () Bool)

(declare-fun e!650483 () Bool)

(assert (=> b!1143390 (= e!650476 (not e!650483))))

(declare-fun res!761854 () Bool)

(assert (=> b!1143390 (=> res!761854 e!650483)))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1143390 (= res!761854 (bvsgt from!1455 i!673))))

(declare-fun arrayContainsKey!0 (array!74236 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1143390 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-fun lt!509903 () Unit!37448)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!74236 (_ BitVec 64) (_ BitVec 32)) Unit!37448)

(assert (=> b!1143390 (= lt!509903 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1143391 () Bool)

(declare-fun e!650485 () Unit!37448)

(declare-fun e!650484 () Unit!37448)

(assert (=> b!1143391 (= e!650485 e!650484)))

(declare-fun c!112456 () Bool)

(assert (=> b!1143391 (= c!112456 (and (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!509902))))

(declare-fun b!1143393 () Bool)

(declare-fun e!650489 () Bool)

(assert (=> b!1143393 (= e!650489 true)))

(declare-fun lt!509909 () V!43411)

(declare-fun lt!509908 () ListLongMap!16313)

(declare-fun -!1265 (ListLongMap!16313 (_ BitVec 64)) ListLongMap!16313)

(declare-fun +!3516 (ListLongMap!16313 tuple2!18332) ListLongMap!16313)

(assert (=> b!1143393 (= (-!1265 (+!3516 lt!509908 (tuple2!18333 (select (arr!35765 _keys!1208) from!1455) lt!509909)) (select (arr!35765 _keys!1208) from!1455)) lt!509908)))

(declare-fun lt!509921 () Unit!37448)

(declare-fun addThenRemoveForNewKeyIsSame!120 (ListLongMap!16313 (_ BitVec 64) V!43411) Unit!37448)

(assert (=> b!1143393 (= lt!509921 (addThenRemoveForNewKeyIsSame!120 lt!509908 (select (arr!35765 _keys!1208) from!1455) lt!509909))))

(declare-fun lt!509904 () V!43411)

(declare-fun get!18202 (ValueCell!13647 V!43411) V!43411)

(assert (=> b!1143393 (= lt!509909 (get!18202 (select (arr!35766 _values!996) from!1455) lt!509904))))

(declare-fun lt!509919 () Unit!37448)

(assert (=> b!1143393 (= lt!509919 e!650488)))

(declare-fun c!112454 () Bool)

(declare-fun contains!6674 (ListLongMap!16313 (_ BitVec 64)) Bool)

(assert (=> b!1143393 (= c!112454 (contains!6674 lt!509908 k0!934))))

(declare-fun getCurrentListMapNoExtraKeys!4614 (array!74236 array!74238 (_ BitVec 32) (_ BitVec 32) V!43411 V!43411 (_ BitVec 32) Int) ListLongMap!16313)

(assert (=> b!1143393 (= lt!509908 (getCurrentListMapNoExtraKeys!4614 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1143394 () Bool)

(assert (=> b!1143394 (= e!650479 (= call!51737 (-!1265 call!51744 k0!934)))))

(declare-fun b!1143395 () Bool)

(declare-fun lt!509916 () Unit!37448)

(assert (=> b!1143395 (= e!650485 lt!509916)))

(declare-fun call!51739 () Unit!37448)

(assert (=> b!1143395 (= lt!509916 call!51739)))

(declare-fun call!51742 () Bool)

(assert (=> b!1143395 call!51742))

(declare-fun b!1143396 () Bool)

(declare-fun res!761851 () Bool)

(declare-fun e!650482 () Bool)

(assert (=> b!1143396 (=> (not res!761851) (not e!650482))))

(assert (=> b!1143396 (= res!761851 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!25127))))

(declare-fun bm!51734 () Bool)

(declare-fun call!51740 () ListLongMap!16313)

(declare-fun call!51743 () ListLongMap!16313)

(assert (=> bm!51734 (= call!51740 call!51743)))

(declare-fun b!1143397 () Bool)

(declare-fun res!761860 () Bool)

(assert (=> b!1143397 (=> (not res!761860) (not e!650482))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1143397 (= res!761860 (validKeyInArray!0 k0!934))))

(declare-fun b!1143398 () Bool)

(declare-fun res!761862 () Bool)

(assert (=> b!1143398 (=> (not res!761862) (not e!650482))))

(assert (=> b!1143398 (= res!761862 (= (select (arr!35765 _keys!1208) i!673) k0!934))))

(declare-fun b!1143399 () Bool)

(assert (=> b!1143399 (= e!650482 e!650476)))

(declare-fun res!761856 () Bool)

(assert (=> b!1143399 (=> (not res!761856) (not e!650476))))

(declare-fun lt!509914 () array!74236)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!74236 (_ BitVec 32)) Bool)

(assert (=> b!1143399 (= res!761856 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!509914 mask!1564))))

(assert (=> b!1143399 (= lt!509914 (array!74237 (store (arr!35765 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!36302 _keys!1208)))))

(declare-fun b!1143400 () Bool)

(declare-fun Unit!37451 () Unit!37448)

(assert (=> b!1143400 (= e!650484 Unit!37451)))

(declare-fun b!1143401 () Bool)

(declare-fun e!650478 () Bool)

(declare-fun e!650475 () Bool)

(declare-fun mapRes!44894 () Bool)

(assert (=> b!1143401 (= e!650478 (and e!650475 mapRes!44894))))

(declare-fun condMapEmpty!44894 () Bool)

(declare-fun mapDefault!44894 () ValueCell!13647)

(assert (=> b!1143401 (= condMapEmpty!44894 (= (arr!35766 _values!996) ((as const (Array (_ BitVec 32) ValueCell!13647)) mapDefault!44894)))))

(declare-fun b!1143402 () Bool)

(declare-fun e!650487 () Bool)

(declare-fun tp_is_empty!28713 () Bool)

(assert (=> b!1143402 (= e!650487 tp_is_empty!28713)))

(declare-fun bm!51735 () Bool)

(declare-fun call!51738 () Bool)

(assert (=> bm!51735 (= call!51742 call!51738)))

(declare-fun b!1143403 () Bool)

(declare-fun res!761852 () Bool)

(assert (=> b!1143403 (=> (not res!761852) (not e!650482))))

(assert (=> b!1143403 (= res!761852 (and (= (size!36303 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!36302 _keys!1208) (size!36303 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1143404 () Bool)

(declare-fun res!761864 () Bool)

(assert (=> b!1143404 (=> (not res!761864) (not e!650476))))

(assert (=> b!1143404 (= res!761864 (arrayNoDuplicates!0 lt!509914 #b00000000000000000000000000000000 Nil!25127))))

(declare-fun b!1143405 () Bool)

(assert (=> b!1143405 call!51742))

(declare-fun lt!509915 () Unit!37448)

(assert (=> b!1143405 (= lt!509915 call!51739)))

(assert (=> b!1143405 (= e!650484 lt!509915)))

(declare-fun b!1143406 () Bool)

(declare-fun Unit!37452 () Unit!37448)

(assert (=> b!1143406 (= e!650488 Unit!37452)))

(declare-fun b!1143407 () Bool)

(declare-fun res!761858 () Bool)

(assert (=> b!1143407 (=> (not res!761858) (not e!650482))))

(assert (=> b!1143407 (= res!761858 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1143408 () Bool)

(declare-fun res!761857 () Bool)

(assert (=> b!1143408 (=> (not res!761857) (not e!650482))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1143408 (= res!761857 (validMask!0 mask!1564))))

(declare-fun call!51741 () Unit!37448)

(declare-fun bm!51736 () Bool)

(declare-fun c!112455 () Bool)

(declare-fun addStillContains!813 (ListLongMap!16313 (_ BitVec 64) V!43411 (_ BitVec 64)) Unit!37448)

(assert (=> bm!51736 (= call!51741 (addStillContains!813 lt!509908 (ite (or c!112457 c!112455) #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000) (ite (or c!112457 c!112455) zeroValue!944 minValue!944) k0!934))))

(declare-fun b!1143392 () Bool)

(assert (=> b!1143392 (= e!650490 (arrayContainsKey!0 _keys!1208 k0!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun res!761859 () Bool)

(assert (=> start!98614 (=> (not res!761859) (not e!650482))))

(assert (=> start!98614 (= res!761859 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!36302 _keys!1208))))))

(assert (=> start!98614 e!650482))

(assert (=> start!98614 tp_is_empty!28713))

(declare-fun array_inv!27282 (array!74236) Bool)

(assert (=> start!98614 (array_inv!27282 _keys!1208)))

(assert (=> start!98614 true))

(assert (=> start!98614 tp!85261))

(declare-fun array_inv!27283 (array!74238) Bool)

(assert (=> start!98614 (and (array_inv!27283 _values!996) e!650478)))

(declare-fun b!1143409 () Bool)

(assert (=> b!1143409 (= e!650486 (arrayContainsKey!0 _keys!1208 k0!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun b!1143410 () Bool)

(assert (=> b!1143410 (contains!6674 call!51743 k0!934)))

(declare-fun lt!509907 () Unit!37448)

(declare-fun lt!509912 () ListLongMap!16313)

(assert (=> b!1143410 (= lt!509907 (addStillContains!813 lt!509912 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944 k0!934))))

(assert (=> b!1143410 call!51738))

(assert (=> b!1143410 (= lt!509912 (+!3516 lt!509908 (tuple2!18333 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944)))))

(declare-fun lt!509905 () Unit!37448)

(assert (=> b!1143410 (= lt!509905 call!51741)))

(assert (=> b!1143410 (= e!650481 lt!509907)))

(declare-fun mapNonEmpty!44894 () Bool)

(declare-fun tp!85260 () Bool)

(assert (=> mapNonEmpty!44894 (= mapRes!44894 (and tp!85260 e!650487))))

(declare-fun mapValue!44894 () ValueCell!13647)

(declare-fun mapRest!44894 () (Array (_ BitVec 32) ValueCell!13647))

(declare-fun mapKey!44894 () (_ BitVec 32))

(assert (=> mapNonEmpty!44894 (= (arr!35766 _values!996) (store mapRest!44894 mapKey!44894 mapValue!44894))))

(declare-fun lt!509918 () array!74238)

(declare-fun bm!51737 () Bool)

(declare-fun c!112458 () Bool)

(assert (=> bm!51737 (= call!51744 (getCurrentListMapNoExtraKeys!4614 (ite c!112458 _keys!1208 lt!509914) (ite c!112458 _values!996 lt!509918) mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1143411 () Bool)

(assert (=> b!1143411 (= e!650475 tp_is_empty!28713)))

(declare-fun b!1143412 () Bool)

(assert (=> b!1143412 (= c!112455 (and (not lt!509902) (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(assert (=> b!1143412 (= e!650481 e!650485)))

(declare-fun b!1143413 () Bool)

(assert (=> b!1143413 (= e!650486 (ite (= k0!934 #b0000000000000000000000000000000000000000000000000000000000000000) (not lt!509902) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun bm!51738 () Bool)

(assert (=> bm!51738 (= call!51738 (contains!6674 (ite c!112457 lt!509912 call!51740) k0!934))))

(declare-fun b!1143414 () Bool)

(declare-fun res!761861 () Bool)

(assert (=> b!1143414 (=> (not res!761861) (not e!650482))))

(assert (=> b!1143414 (= res!761861 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!36302 _keys!1208))))))

(declare-fun bm!51739 () Bool)

(assert (=> bm!51739 (= call!51743 (+!3516 (ite c!112457 lt!509912 lt!509908) (ite c!112457 (tuple2!18333 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944) (ite c!112455 (tuple2!18333 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!18333 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944)))))))

(declare-fun bm!51740 () Bool)

(assert (=> bm!51740 (= call!51737 (getCurrentListMapNoExtraKeys!4614 (ite c!112458 lt!509914 _keys!1208) (ite c!112458 lt!509918 _values!996) mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun bm!51741 () Bool)

(assert (=> bm!51741 (= call!51739 call!51741)))

(declare-fun b!1143415 () Bool)

(declare-fun e!650480 () Bool)

(assert (=> b!1143415 (= e!650480 e!650489)))

(declare-fun res!761853 () Bool)

(assert (=> b!1143415 (=> res!761853 e!650489)))

(assert (=> b!1143415 (= res!761853 (not (= (select (arr!35765 _keys!1208) from!1455) k0!934)))))

(assert (=> b!1143415 e!650479))

(assert (=> b!1143415 (= c!112458 (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673))))

(declare-fun lt!509922 () Unit!37448)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!520 (array!74236 array!74238 (_ BitVec 32) (_ BitVec 32) V!43411 V!43411 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!37448)

(assert (=> b!1143415 (= lt!509922 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!520 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1143416 () Bool)

(assert (=> b!1143416 (= e!650483 e!650480)))

(declare-fun res!761855 () Bool)

(assert (=> b!1143416 (=> res!761855 e!650480)))

(assert (=> b!1143416 (= res!761855 (not (= from!1455 i!673)))))

(declare-fun lt!509910 () ListLongMap!16313)

(assert (=> b!1143416 (= lt!509910 (getCurrentListMapNoExtraKeys!4614 lt!509914 lt!509918 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(assert (=> b!1143416 (= lt!509918 (array!74239 (store (arr!35766 _values!996) i!673 (ValueCellFull!13647 lt!509904)) (size!36303 _values!996)))))

(declare-fun dynLambda!2660 (Int (_ BitVec 64)) V!43411)

(assert (=> b!1143416 (= lt!509904 (dynLambda!2660 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!509917 () ListLongMap!16313)

(assert (=> b!1143416 (= lt!509917 (getCurrentListMapNoExtraKeys!4614 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun mapIsEmpty!44894 () Bool)

(assert (=> mapIsEmpty!44894 mapRes!44894))

(assert (= (and start!98614 res!761859) b!1143408))

(assert (= (and b!1143408 res!761857) b!1143403))

(assert (= (and b!1143403 res!761852) b!1143407))

(assert (= (and b!1143407 res!761858) b!1143396))

(assert (= (and b!1143396 res!761851) b!1143414))

(assert (= (and b!1143414 res!761861) b!1143397))

(assert (= (and b!1143397 res!761860) b!1143398))

(assert (= (and b!1143398 res!761862) b!1143399))

(assert (= (and b!1143399 res!761856) b!1143404))

(assert (= (and b!1143404 res!761864) b!1143390))

(assert (= (and b!1143390 (not res!761854)) b!1143416))

(assert (= (and b!1143416 (not res!761855)) b!1143415))

(assert (= (and b!1143415 c!112458) b!1143394))

(assert (= (and b!1143415 (not c!112458)) b!1143389))

(assert (= (or b!1143394 b!1143389) bm!51737))

(assert (= (or b!1143394 b!1143389) bm!51740))

(assert (= (and b!1143415 (not res!761853)) b!1143393))

(assert (= (and b!1143393 c!112454) b!1143388))

(assert (= (and b!1143393 (not c!112454)) b!1143406))

(assert (= (and b!1143388 c!112457) b!1143410))

(assert (= (and b!1143388 (not c!112457)) b!1143412))

(assert (= (and b!1143412 c!112455) b!1143395))

(assert (= (and b!1143412 (not c!112455)) b!1143391))

(assert (= (and b!1143391 c!112456) b!1143405))

(assert (= (and b!1143391 (not c!112456)) b!1143400))

(assert (= (or b!1143395 b!1143405) bm!51741))

(assert (= (or b!1143395 b!1143405) bm!51734))

(assert (= (or b!1143395 b!1143405) bm!51735))

(assert (= (or b!1143410 bm!51735) bm!51738))

(assert (= (or b!1143410 bm!51741) bm!51736))

(assert (= (or b!1143410 bm!51734) bm!51739))

(assert (= (and b!1143388 c!112453) b!1143409))

(assert (= (and b!1143388 (not c!112453)) b!1143413))

(assert (= (and b!1143388 res!761863) b!1143392))

(assert (= (and b!1143401 condMapEmpty!44894) mapIsEmpty!44894))

(assert (= (and b!1143401 (not condMapEmpty!44894)) mapNonEmpty!44894))

(get-info :version)

(assert (= (and mapNonEmpty!44894 ((_ is ValueCellFull!13647) mapValue!44894)) b!1143402))

(assert (= (and b!1143401 ((_ is ValueCellFull!13647) mapDefault!44894)) b!1143411))

(assert (= start!98614 b!1143401))

(declare-fun b_lambda!19307 () Bool)

(assert (=> (not b_lambda!19307) (not b!1143416)))

(declare-fun t!36311 () Bool)

(declare-fun tb!9003 () Bool)

(assert (=> (and start!98614 (= defaultEntry!1004 defaultEntry!1004) t!36311) tb!9003))

(declare-fun result!18563 () Bool)

(assert (=> tb!9003 (= result!18563 tp_is_empty!28713)))

(assert (=> b!1143416 t!36311))

(declare-fun b_and!39231 () Bool)

(assert (= b_and!39229 (and (=> t!36311 result!18563) b_and!39231)))

(declare-fun m!1054583 () Bool)

(assert (=> mapNonEmpty!44894 m!1054583))

(declare-fun m!1054585 () Bool)

(assert (=> b!1143398 m!1054585))

(declare-fun m!1054587 () Bool)

(assert (=> bm!51739 m!1054587))

(declare-fun m!1054589 () Bool)

(assert (=> b!1143397 m!1054589))

(declare-fun m!1054591 () Bool)

(assert (=> bm!51738 m!1054591))

(declare-fun m!1054593 () Bool)

(assert (=> b!1143390 m!1054593))

(declare-fun m!1054595 () Bool)

(assert (=> b!1143390 m!1054595))

(declare-fun m!1054597 () Bool)

(assert (=> b!1143392 m!1054597))

(declare-fun m!1054599 () Bool)

(assert (=> b!1143416 m!1054599))

(declare-fun m!1054601 () Bool)

(assert (=> b!1143416 m!1054601))

(declare-fun m!1054603 () Bool)

(assert (=> b!1143416 m!1054603))

(declare-fun m!1054605 () Bool)

(assert (=> b!1143416 m!1054605))

(declare-fun m!1054607 () Bool)

(assert (=> bm!51740 m!1054607))

(declare-fun m!1054609 () Bool)

(assert (=> bm!51736 m!1054609))

(declare-fun m!1054611 () Bool)

(assert (=> b!1143394 m!1054611))

(declare-fun m!1054613 () Bool)

(assert (=> b!1143388 m!1054613))

(declare-fun m!1054615 () Bool)

(assert (=> b!1143388 m!1054615))

(declare-fun m!1054617 () Bool)

(assert (=> b!1143388 m!1054617))

(declare-fun m!1054619 () Bool)

(assert (=> b!1143388 m!1054619))

(declare-fun m!1054621 () Bool)

(assert (=> b!1143404 m!1054621))

(assert (=> b!1143409 m!1054597))

(declare-fun m!1054623 () Bool)

(assert (=> b!1143410 m!1054623))

(declare-fun m!1054625 () Bool)

(assert (=> b!1143410 m!1054625))

(declare-fun m!1054627 () Bool)

(assert (=> b!1143410 m!1054627))

(declare-fun m!1054629 () Bool)

(assert (=> b!1143396 m!1054629))

(declare-fun m!1054631 () Bool)

(assert (=> b!1143415 m!1054631))

(declare-fun m!1054633 () Bool)

(assert (=> b!1143415 m!1054633))

(declare-fun m!1054635 () Bool)

(assert (=> b!1143408 m!1054635))

(declare-fun m!1054637 () Bool)

(assert (=> b!1143393 m!1054637))

(declare-fun m!1054639 () Bool)

(assert (=> b!1143393 m!1054639))

(declare-fun m!1054641 () Bool)

(assert (=> b!1143393 m!1054641))

(declare-fun m!1054643 () Bool)

(assert (=> b!1143393 m!1054643))

(assert (=> b!1143393 m!1054643))

(assert (=> b!1143393 m!1054631))

(declare-fun m!1054645 () Bool)

(assert (=> b!1143393 m!1054645))

(assert (=> b!1143393 m!1054639))

(declare-fun m!1054647 () Bool)

(assert (=> b!1143393 m!1054647))

(assert (=> b!1143393 m!1054631))

(declare-fun m!1054649 () Bool)

(assert (=> b!1143393 m!1054649))

(assert (=> b!1143393 m!1054631))

(declare-fun m!1054651 () Bool)

(assert (=> bm!51737 m!1054651))

(declare-fun m!1054653 () Bool)

(assert (=> b!1143407 m!1054653))

(declare-fun m!1054655 () Bool)

(assert (=> start!98614 m!1054655))

(declare-fun m!1054657 () Bool)

(assert (=> start!98614 m!1054657))

(declare-fun m!1054659 () Bool)

(assert (=> b!1143399 m!1054659))

(declare-fun m!1054661 () Bool)

(assert (=> b!1143399 m!1054661))

(check-sat (not start!98614) tp_is_empty!28713 (not b!1143416) (not bm!51737) (not b_lambda!19307) (not b!1143392) (not b!1143397) (not b!1143408) (not b!1143409) (not b!1143390) (not b!1143396) (not b!1143394) b_and!39231 (not b!1143415) (not mapNonEmpty!44894) (not b!1143404) (not b!1143407) (not bm!51739) (not b!1143393) (not b!1143399) (not b!1143410) (not bm!51736) (not bm!51738) (not b!1143388) (not b_next!24183) (not bm!51740))
(check-sat b_and!39231 (not b_next!24183))
