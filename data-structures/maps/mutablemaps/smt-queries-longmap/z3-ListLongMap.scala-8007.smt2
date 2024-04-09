; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!98920 () Bool)

(assert start!98920)

(declare-fun b_free!24489 () Bool)

(declare-fun b_next!24489 () Bool)

(assert (=> start!98920 (= b_free!24489 (not b_next!24489))))

(declare-fun tp!86179 () Bool)

(declare-fun b_and!39841 () Bool)

(assert (=> start!98920 (= tp!86179 b_and!39841)))

(declare-fun bm!55406 () Bool)

(declare-datatypes ((V!43819 0))(
  ( (V!43820 (val!14566 Int)) )
))
(declare-datatypes ((tuple2!18602 0))(
  ( (tuple2!18603 (_1!9311 (_ BitVec 64)) (_2!9311 V!43819)) )
))
(declare-datatypes ((List!25382 0))(
  ( (Nil!25379) (Cons!25378 (h!26587 tuple2!18602) (t!36870 List!25382)) )
))
(declare-datatypes ((ListLongMap!16583 0))(
  ( (ListLongMap!16584 (toList!8307 List!25382)) )
))
(declare-fun call!55414 () ListLongMap!16583)

(declare-fun call!55416 () ListLongMap!16583)

(assert (=> bm!55406 (= call!55414 call!55416)))

(declare-fun b!1157442 () Bool)

(declare-fun res!768719 () Bool)

(declare-fun e!658257 () Bool)

(assert (=> b!1157442 (=> (not res!768719) (not e!658257))))

(declare-fun i!673 () (_ BitVec 32))

(declare-datatypes ((array!74828 0))(
  ( (array!74829 (arr!36061 (Array (_ BitVec 32) (_ BitVec 64))) (size!36598 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!74828)

(assert (=> b!1157442 (= res!768719 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!36598 _keys!1208))))))

(declare-fun b!1157444 () Bool)

(declare-datatypes ((Unit!38019 0))(
  ( (Unit!38020) )
))
(declare-fun e!658268 () Unit!38019)

(declare-fun Unit!38021 () Unit!38019)

(assert (=> b!1157444 (= e!658268 Unit!38021)))

(declare-fun b!1157445 () Bool)

(declare-fun e!658259 () Bool)

(assert (=> b!1157445 (= e!658259 true)))

(declare-fun e!658267 () Bool)

(assert (=> b!1157445 e!658267))

(declare-fun res!768717 () Bool)

(assert (=> b!1157445 (=> (not res!768717) (not e!658267))))

(declare-fun lt!519831 () ListLongMap!16583)

(declare-fun lt!519823 () ListLongMap!16583)

(assert (=> b!1157445 (= res!768717 (= lt!519831 lt!519823))))

(declare-fun lt!519820 () ListLongMap!16583)

(declare-fun k0!934 () (_ BitVec 64))

(declare-fun -!1383 (ListLongMap!16583 (_ BitVec 64)) ListLongMap!16583)

(assert (=> b!1157445 (= lt!519831 (-!1383 lt!519820 k0!934))))

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun lt!519832 () V!43819)

(declare-fun +!3637 (ListLongMap!16583 tuple2!18602) ListLongMap!16583)

(assert (=> b!1157445 (= (-!1383 (+!3637 lt!519823 (tuple2!18603 (select (arr!36061 _keys!1208) from!1455) lt!519832)) (select (arr!36061 _keys!1208) from!1455)) lt!519823)))

(declare-fun lt!519826 () Unit!38019)

(declare-fun addThenRemoveForNewKeyIsSame!224 (ListLongMap!16583 (_ BitVec 64) V!43819) Unit!38019)

(assert (=> b!1157445 (= lt!519826 (addThenRemoveForNewKeyIsSame!224 lt!519823 (select (arr!36061 _keys!1208) from!1455) lt!519832))))

(declare-fun lt!519818 () V!43819)

(declare-datatypes ((ValueCell!13800 0))(
  ( (ValueCellFull!13800 (v!17204 V!43819)) (EmptyCell!13800) )
))
(declare-datatypes ((array!74830 0))(
  ( (array!74831 (arr!36062 (Array (_ BitVec 32) ValueCell!13800)) (size!36599 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!74830)

(declare-fun get!18408 (ValueCell!13800 V!43819) V!43819)

(assert (=> b!1157445 (= lt!519832 (get!18408 (select (arr!36062 _values!996) from!1455) lt!519818))))

(declare-fun lt!519827 () Unit!38019)

(declare-fun e!658269 () Unit!38019)

(assert (=> b!1157445 (= lt!519827 e!658269)))

(declare-fun c!115208 () Bool)

(declare-fun contains!6793 (ListLongMap!16583 (_ BitVec 64)) Bool)

(assert (=> b!1157445 (= c!115208 (contains!6793 lt!519823 k0!934))))

(declare-fun zeroValue!944 () V!43819)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-fun minValue!944 () V!43819)

(declare-fun getCurrentListMapNoExtraKeys!4744 (array!74828 array!74830 (_ BitVec 32) (_ BitVec 32) V!43819 V!43819 (_ BitVec 32) Int) ListLongMap!16583)

(assert (=> b!1157445 (= lt!519823 (getCurrentListMapNoExtraKeys!4744 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1157446 () Bool)

(declare-fun lt!519821 () ListLongMap!16583)

(assert (=> b!1157446 (contains!6793 (+!3637 lt!519821 (tuple2!18603 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944)) k0!934)))

(declare-fun lt!519817 () Unit!38019)

(declare-fun call!55410 () Unit!38019)

(assert (=> b!1157446 (= lt!519817 call!55410)))

(declare-fun call!55409 () Bool)

(assert (=> b!1157446 call!55409))

(assert (=> b!1157446 (= lt!519821 call!55416)))

(declare-fun lt!519816 () Unit!38019)

(declare-fun addStillContains!932 (ListLongMap!16583 (_ BitVec 64) V!43819 (_ BitVec 64)) Unit!38019)

(assert (=> b!1157446 (= lt!519816 (addStillContains!932 lt!519823 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944 k0!934))))

(declare-fun e!658262 () Unit!38019)

(assert (=> b!1157446 (= e!658262 lt!519817)))

(declare-fun bm!55407 () Bool)

(declare-fun call!55415 () Bool)

(assert (=> bm!55407 (= call!55415 call!55409)))

(declare-fun b!1157447 () Bool)

(declare-fun res!768721 () Bool)

(assert (=> b!1157447 (=> (not res!768721) (not e!658257))))

(assert (=> b!1157447 (= res!768721 (= (select (arr!36061 _keys!1208) i!673) k0!934))))

(declare-fun b!1157448 () Bool)

(declare-fun e!658256 () Bool)

(declare-fun arrayContainsKey!0 (array!74828 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1157448 (= e!658256 (arrayContainsKey!0 _keys!1208 k0!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun b!1157449 () Bool)

(declare-fun res!768726 () Bool)

(declare-fun e!658270 () Bool)

(assert (=> b!1157449 (=> (not res!768726) (not e!658270))))

(declare-fun lt!519822 () array!74828)

(declare-datatypes ((List!25383 0))(
  ( (Nil!25380) (Cons!25379 (h!26588 (_ BitVec 64)) (t!36871 List!25383)) )
))
(declare-fun arrayNoDuplicates!0 (array!74828 (_ BitVec 32) List!25383) Bool)

(assert (=> b!1157449 (= res!768726 (arrayNoDuplicates!0 lt!519822 #b00000000000000000000000000000000 Nil!25380))))

(declare-fun b!1157450 () Bool)

(declare-fun e!658272 () Bool)

(declare-fun tp_is_empty!29019 () Bool)

(assert (=> b!1157450 (= e!658272 tp_is_empty!29019)))

(declare-fun b!1157451 () Bool)

(declare-fun res!768718 () Bool)

(assert (=> b!1157451 (=> (not res!768718) (not e!658257))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!74828 (_ BitVec 32)) Bool)

(assert (=> b!1157451 (= res!768718 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1157452 () Bool)

(declare-fun e!658266 () Bool)

(declare-fun e!658264 () Bool)

(assert (=> b!1157452 (= e!658266 e!658264)))

(declare-fun res!768724 () Bool)

(assert (=> b!1157452 (=> res!768724 e!658264)))

(assert (=> b!1157452 (= res!768724 (not (= from!1455 i!673)))))

(declare-fun lt!519824 () ListLongMap!16583)

(declare-fun lt!519836 () array!74830)

(assert (=> b!1157452 (= lt!519824 (getCurrentListMapNoExtraKeys!4744 lt!519822 lt!519836 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(assert (=> b!1157452 (= lt!519836 (array!74831 (store (arr!36062 _values!996) i!673 (ValueCellFull!13800 lt!519818)) (size!36599 _values!996)))))

(declare-fun dynLambda!2754 (Int (_ BitVec 64)) V!43819)

(assert (=> b!1157452 (= lt!519818 (dynLambda!2754 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1157452 (= lt!519820 (getCurrentListMapNoExtraKeys!4744 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1157453 () Bool)

(declare-fun e!658271 () Bool)

(declare-fun e!658265 () Bool)

(declare-fun mapRes!45353 () Bool)

(assert (=> b!1157453 (= e!658271 (and e!658265 mapRes!45353))))

(declare-fun condMapEmpty!45353 () Bool)

(declare-fun mapDefault!45353 () ValueCell!13800)

(assert (=> b!1157453 (= condMapEmpty!45353 (= (arr!36062 _values!996) ((as const (Array (_ BitVec 32) ValueCell!13800)) mapDefault!45353)))))

(declare-fun b!1157454 () Bool)

(assert (=> b!1157454 (= e!658264 e!658259)))

(declare-fun res!768716 () Bool)

(assert (=> b!1157454 (=> res!768716 e!658259)))

(assert (=> b!1157454 (= res!768716 (not (= (select (arr!36061 _keys!1208) from!1455) k0!934)))))

(declare-fun e!658258 () Bool)

(assert (=> b!1157454 e!658258))

(declare-fun c!115207 () Bool)

(assert (=> b!1157454 (= c!115207 (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673))))

(declare-fun lt!519828 () Unit!38019)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!610 (array!74828 array!74830 (_ BitVec 32) (_ BitVec 32) V!43819 V!43819 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!38019)

(assert (=> b!1157454 (= lt!519828 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!610 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun mapNonEmpty!45353 () Bool)

(declare-fun tp!86178 () Bool)

(assert (=> mapNonEmpty!45353 (= mapRes!45353 (and tp!86178 e!658272))))

(declare-fun mapValue!45353 () ValueCell!13800)

(declare-fun mapRest!45353 () (Array (_ BitVec 32) ValueCell!13800))

(declare-fun mapKey!45353 () (_ BitVec 32))

(assert (=> mapNonEmpty!45353 (= (arr!36062 _values!996) (store mapRest!45353 mapKey!45353 mapValue!45353))))

(declare-fun e!658261 () Bool)

(declare-fun b!1157455 () Bool)

(assert (=> b!1157455 (= e!658261 (arrayContainsKey!0 _keys!1208 k0!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun b!1157456 () Bool)

(declare-fun res!768728 () Bool)

(assert (=> b!1157456 (=> (not res!768728) (not e!658257))))

(assert (=> b!1157456 (= res!768728 (and (= (size!36599 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!36598 _keys!1208) (size!36599 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1157457 () Bool)

(declare-fun e!658260 () Unit!38019)

(declare-fun lt!519825 () Unit!38019)

(assert (=> b!1157457 (= e!658260 lt!519825)))

(declare-fun call!55413 () Unit!38019)

(assert (=> b!1157457 (= lt!519825 call!55413)))

(assert (=> b!1157457 call!55415))

(declare-fun c!115212 () Bool)

(declare-fun bm!55408 () Bool)

(declare-fun c!115211 () Bool)

(assert (=> bm!55408 (= call!55410 (addStillContains!932 (ite c!115211 lt!519821 lt!519823) (ite c!115211 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!115212 #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000)) (ite c!115211 minValue!944 (ite c!115212 zeroValue!944 minValue!944)) k0!934))))

(declare-fun b!1157458 () Bool)

(declare-fun lt!519819 () Bool)

(assert (=> b!1157458 (= e!658256 (ite (= k0!934 #b0000000000000000000000000000000000000000000000000000000000000000) (not lt!519819) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!1157459 () Bool)

(declare-fun Unit!38022 () Unit!38019)

(assert (=> b!1157459 (= e!658269 Unit!38022)))

(declare-fun b!1157460 () Bool)

(declare-fun call!55411 () ListLongMap!16583)

(declare-fun call!55412 () ListLongMap!16583)

(assert (=> b!1157460 (= e!658258 (= call!55411 call!55412))))

(declare-fun bm!55409 () Bool)

(assert (=> bm!55409 (= call!55416 (+!3637 lt!519823 (ite (or c!115211 c!115212) (tuple2!18603 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!18603 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944))))))

(declare-fun mapIsEmpty!45353 () Bool)

(assert (=> mapIsEmpty!45353 mapRes!45353))

(declare-fun b!1157443 () Bool)

(assert (=> b!1157443 (= e!658258 (= call!55411 (-!1383 call!55412 k0!934)))))

(declare-fun res!768727 () Bool)

(assert (=> start!98920 (=> (not res!768727) (not e!658257))))

(assert (=> start!98920 (= res!768727 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!36598 _keys!1208))))))

(assert (=> start!98920 e!658257))

(assert (=> start!98920 tp_is_empty!29019))

(declare-fun array_inv!27468 (array!74828) Bool)

(assert (=> start!98920 (array_inv!27468 _keys!1208)))

(assert (=> start!98920 true))

(assert (=> start!98920 tp!86179))

(declare-fun array_inv!27469 (array!74830) Bool)

(assert (=> start!98920 (and (array_inv!27469 _values!996) e!658271)))

(declare-fun b!1157461 () Bool)

(assert (=> b!1157461 (= e!658257 e!658270)))

(declare-fun res!768715 () Bool)

(assert (=> b!1157461 (=> (not res!768715) (not e!658270))))

(assert (=> b!1157461 (= res!768715 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!519822 mask!1564))))

(assert (=> b!1157461 (= lt!519822 (array!74829 (store (arr!36061 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!36598 _keys!1208)))))

(declare-fun b!1157462 () Bool)

(declare-fun res!768720 () Bool)

(assert (=> b!1157462 (=> (not res!768720) (not e!658257))))

(assert (=> b!1157462 (= res!768720 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!25380))))

(declare-fun b!1157463 () Bool)

(assert (=> b!1157463 (= e!658260 e!658268)))

(declare-fun c!115209 () Bool)

(assert (=> b!1157463 (= c!115209 (and (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!519819))))

(declare-fun b!1157464 () Bool)

(assert (=> b!1157464 (= e!658267 (= lt!519831 (getCurrentListMapNoExtraKeys!4744 lt!519822 lt!519836 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004)))))

(declare-fun b!1157465 () Bool)

(declare-fun res!768714 () Bool)

(assert (=> b!1157465 (=> (not res!768714) (not e!658257))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1157465 (= res!768714 (validKeyInArray!0 k0!934))))

(declare-fun b!1157466 () Bool)

(assert (=> b!1157466 (= e!658265 tp_is_empty!29019)))

(declare-fun bm!55410 () Bool)

(assert (=> bm!55410 (= call!55409 (contains!6793 (ite c!115211 lt!519821 call!55414) k0!934))))

(declare-fun bm!55411 () Bool)

(assert (=> bm!55411 (= call!55413 call!55410)))

(declare-fun b!1157467 () Bool)

(assert (=> b!1157467 (= e!658270 (not e!658266))))

(declare-fun res!768723 () Bool)

(assert (=> b!1157467 (=> res!768723 e!658266)))

(assert (=> b!1157467 (= res!768723 (bvsgt from!1455 i!673))))

(assert (=> b!1157467 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-fun lt!519829 () Unit!38019)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!74828 (_ BitVec 64) (_ BitVec 32)) Unit!38019)

(assert (=> b!1157467 (= lt!519829 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun bm!55412 () Bool)

(assert (=> bm!55412 (= call!55411 (getCurrentListMapNoExtraKeys!4744 lt!519822 lt!519836 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun bm!55413 () Bool)

(assert (=> bm!55413 (= call!55412 (getCurrentListMapNoExtraKeys!4744 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1157468 () Bool)

(declare-fun res!768725 () Bool)

(assert (=> b!1157468 (=> (not res!768725) (not e!658257))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1157468 (= res!768725 (validMask!0 mask!1564))))

(declare-fun b!1157469 () Bool)

(assert (=> b!1157469 (= c!115212 (and (not lt!519819) (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(assert (=> b!1157469 (= e!658262 e!658260)))

(declare-fun b!1157470 () Bool)

(declare-fun Unit!38023 () Unit!38019)

(assert (=> b!1157470 (= e!658269 Unit!38023)))

(assert (=> b!1157470 (= lt!519819 (= (bvand extraKeys!923 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(assert (=> b!1157470 (= c!115211 (and (not lt!519819) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun lt!519835 () Unit!38019)

(assert (=> b!1157470 (= lt!519835 e!658262)))

(declare-fun lt!519833 () Unit!38019)

(declare-fun lemmaListMapContainsThenArrayContainsFrom!509 (array!74828 array!74830 (_ BitVec 32) (_ BitVec 32) V!43819 V!43819 (_ BitVec 64) (_ BitVec 32) Int) Unit!38019)

(assert (=> b!1157470 (= lt!519833 (lemmaListMapContainsThenArrayContainsFrom!509 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun c!115210 () Bool)

(assert (=> b!1157470 (= c!115210 (and (not (= k0!934 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!934 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun res!768722 () Bool)

(assert (=> b!1157470 (= res!768722 e!658256)))

(assert (=> b!1157470 (=> (not res!768722) (not e!658261))))

(assert (=> b!1157470 e!658261))

(declare-fun lt!519834 () Unit!38019)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!74828 (_ BitVec 32) (_ BitVec 32)) Unit!38019)

(assert (=> b!1157470 (= lt!519834 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1208 #b00000000000000000000000000000000 from!1455))))

(assert (=> b!1157470 (arrayNoDuplicates!0 _keys!1208 from!1455 Nil!25380)))

(declare-fun lt!519830 () Unit!38019)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!74828 (_ BitVec 64) (_ BitVec 32) List!25383) Unit!38019)

(assert (=> b!1157470 (= lt!519830 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!1208 k0!934 from!1455 Nil!25380))))

(assert (=> b!1157470 false))

(declare-fun b!1157471 () Bool)

(assert (=> b!1157471 call!55415))

(declare-fun lt!519837 () Unit!38019)

(assert (=> b!1157471 (= lt!519837 call!55413)))

(assert (=> b!1157471 (= e!658268 lt!519837)))

(assert (= (and start!98920 res!768727) b!1157468))

(assert (= (and b!1157468 res!768725) b!1157456))

(assert (= (and b!1157456 res!768728) b!1157451))

(assert (= (and b!1157451 res!768718) b!1157462))

(assert (= (and b!1157462 res!768720) b!1157442))

(assert (= (and b!1157442 res!768719) b!1157465))

(assert (= (and b!1157465 res!768714) b!1157447))

(assert (= (and b!1157447 res!768721) b!1157461))

(assert (= (and b!1157461 res!768715) b!1157449))

(assert (= (and b!1157449 res!768726) b!1157467))

(assert (= (and b!1157467 (not res!768723)) b!1157452))

(assert (= (and b!1157452 (not res!768724)) b!1157454))

(assert (= (and b!1157454 c!115207) b!1157443))

(assert (= (and b!1157454 (not c!115207)) b!1157460))

(assert (= (or b!1157443 b!1157460) bm!55412))

(assert (= (or b!1157443 b!1157460) bm!55413))

(assert (= (and b!1157454 (not res!768716)) b!1157445))

(assert (= (and b!1157445 c!115208) b!1157470))

(assert (= (and b!1157445 (not c!115208)) b!1157459))

(assert (= (and b!1157470 c!115211) b!1157446))

(assert (= (and b!1157470 (not c!115211)) b!1157469))

(assert (= (and b!1157469 c!115212) b!1157457))

(assert (= (and b!1157469 (not c!115212)) b!1157463))

(assert (= (and b!1157463 c!115209) b!1157471))

(assert (= (and b!1157463 (not c!115209)) b!1157444))

(assert (= (or b!1157457 b!1157471) bm!55411))

(assert (= (or b!1157457 b!1157471) bm!55406))

(assert (= (or b!1157457 b!1157471) bm!55407))

(assert (= (or b!1157446 bm!55407) bm!55410))

(assert (= (or b!1157446 bm!55411) bm!55408))

(assert (= (or b!1157446 bm!55406) bm!55409))

(assert (= (and b!1157470 c!115210) b!1157448))

(assert (= (and b!1157470 (not c!115210)) b!1157458))

(assert (= (and b!1157470 res!768722) b!1157455))

(assert (= (and b!1157445 res!768717) b!1157464))

(assert (= (and b!1157453 condMapEmpty!45353) mapIsEmpty!45353))

(assert (= (and b!1157453 (not condMapEmpty!45353)) mapNonEmpty!45353))

(get-info :version)

(assert (= (and mapNonEmpty!45353 ((_ is ValueCellFull!13800) mapValue!45353)) b!1157450))

(assert (= (and b!1157453 ((_ is ValueCellFull!13800) mapDefault!45353)) b!1157466))

(assert (= start!98920 b!1157453))

(declare-fun b_lambda!19613 () Bool)

(assert (=> (not b_lambda!19613) (not b!1157452)))

(declare-fun t!36869 () Bool)

(declare-fun tb!9309 () Bool)

(assert (=> (and start!98920 (= defaultEntry!1004 defaultEntry!1004) t!36869) tb!9309))

(declare-fun result!19175 () Bool)

(assert (=> tb!9309 (= result!19175 tp_is_empty!29019)))

(assert (=> b!1157452 t!36869))

(declare-fun b_and!39843 () Bool)

(assert (= b_and!39841 (and (=> t!36869 result!19175) b_and!39843)))

(declare-fun m!1066823 () Bool)

(assert (=> b!1157470 m!1066823))

(declare-fun m!1066825 () Bool)

(assert (=> b!1157470 m!1066825))

(declare-fun m!1066827 () Bool)

(assert (=> b!1157470 m!1066827))

(declare-fun m!1066829 () Bool)

(assert (=> b!1157470 m!1066829))

(declare-fun m!1066831 () Bool)

(assert (=> b!1157468 m!1066831))

(declare-fun m!1066833 () Bool)

(assert (=> b!1157443 m!1066833))

(declare-fun m!1066835 () Bool)

(assert (=> b!1157464 m!1066835))

(declare-fun m!1066837 () Bool)

(assert (=> b!1157448 m!1066837))

(declare-fun m!1066839 () Bool)

(assert (=> b!1157452 m!1066839))

(declare-fun m!1066841 () Bool)

(assert (=> b!1157452 m!1066841))

(declare-fun m!1066843 () Bool)

(assert (=> b!1157452 m!1066843))

(declare-fun m!1066845 () Bool)

(assert (=> b!1157452 m!1066845))

(declare-fun m!1066847 () Bool)

(assert (=> b!1157445 m!1066847))

(declare-fun m!1066849 () Bool)

(assert (=> b!1157445 m!1066849))

(declare-fun m!1066851 () Bool)

(assert (=> b!1157445 m!1066851))

(declare-fun m!1066853 () Bool)

(assert (=> b!1157445 m!1066853))

(declare-fun m!1066855 () Bool)

(assert (=> b!1157445 m!1066855))

(declare-fun m!1066857 () Bool)

(assert (=> b!1157445 m!1066857))

(declare-fun m!1066859 () Bool)

(assert (=> b!1157445 m!1066859))

(assert (=> b!1157445 m!1066853))

(declare-fun m!1066861 () Bool)

(assert (=> b!1157445 m!1066861))

(assert (=> b!1157445 m!1066851))

(assert (=> b!1157445 m!1066857))

(declare-fun m!1066863 () Bool)

(assert (=> b!1157445 m!1066863))

(assert (=> b!1157445 m!1066853))

(declare-fun m!1066865 () Bool)

(assert (=> b!1157467 m!1066865))

(declare-fun m!1066867 () Bool)

(assert (=> b!1157467 m!1066867))

(declare-fun m!1066869 () Bool)

(assert (=> bm!55409 m!1066869))

(declare-fun m!1066871 () Bool)

(assert (=> b!1157446 m!1066871))

(assert (=> b!1157446 m!1066871))

(declare-fun m!1066873 () Bool)

(assert (=> b!1157446 m!1066873))

(declare-fun m!1066875 () Bool)

(assert (=> b!1157446 m!1066875))

(assert (=> bm!55412 m!1066835))

(declare-fun m!1066877 () Bool)

(assert (=> b!1157449 m!1066877))

(assert (=> bm!55413 m!1066847))

(declare-fun m!1066879 () Bool)

(assert (=> start!98920 m!1066879))

(declare-fun m!1066881 () Bool)

(assert (=> start!98920 m!1066881))

(declare-fun m!1066883 () Bool)

(assert (=> b!1157465 m!1066883))

(declare-fun m!1066885 () Bool)

(assert (=> bm!55410 m!1066885))

(declare-fun m!1066887 () Bool)

(assert (=> b!1157451 m!1066887))

(declare-fun m!1066889 () Bool)

(assert (=> b!1157447 m!1066889))

(assert (=> b!1157454 m!1066853))

(declare-fun m!1066891 () Bool)

(assert (=> b!1157454 m!1066891))

(declare-fun m!1066893 () Bool)

(assert (=> bm!55408 m!1066893))

(declare-fun m!1066895 () Bool)

(assert (=> mapNonEmpty!45353 m!1066895))

(declare-fun m!1066897 () Bool)

(assert (=> b!1157461 m!1066897))

(declare-fun m!1066899 () Bool)

(assert (=> b!1157461 m!1066899))

(declare-fun m!1066901 () Bool)

(assert (=> b!1157462 m!1066901))

(assert (=> b!1157455 m!1066837))

(check-sat (not start!98920) (not b!1157455) (not b!1157449) (not b!1157451) (not b_next!24489) (not b!1157467) (not b!1157462) tp_is_empty!29019 (not b!1157443) (not b_lambda!19613) (not bm!55413) (not b!1157470) (not b!1157468) (not b!1157445) (not bm!55410) (not bm!55409) (not b!1157446) (not b!1157452) (not b!1157454) (not b!1157461) b_and!39843 (not b!1157465) (not bm!55412) (not bm!55408) (not b!1157464) (not b!1157448) (not mapNonEmpty!45353))
(check-sat b_and!39843 (not b_next!24489))
