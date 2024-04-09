; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!98602 () Bool)

(assert start!98602)

(declare-fun b_free!24171 () Bool)

(declare-fun b_next!24171 () Bool)

(assert (=> start!98602 (= b_free!24171 (not b_next!24171))))

(declare-fun tp!85224 () Bool)

(declare-fun b_and!39205 () Bool)

(assert (=> start!98602 (= tp!85224 b_and!39205)))

(declare-fun b!1142854 () Bool)

(declare-fun e!650201 () Bool)

(declare-fun e!650198 () Bool)

(declare-fun mapRes!44876 () Bool)

(assert (=> b!1142854 (= e!650201 (and e!650198 mapRes!44876))))

(declare-fun condMapEmpty!44876 () Bool)

(declare-datatypes ((V!43395 0))(
  ( (V!43396 (val!14407 Int)) )
))
(declare-datatypes ((ValueCell!13641 0))(
  ( (ValueCellFull!13641 (v!17045 V!43395)) (EmptyCell!13641) )
))
(declare-datatypes ((array!74212 0))(
  ( (array!74213 (arr!35753 (Array (_ BitVec 32) ValueCell!13641)) (size!36290 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!74212)

(declare-fun mapDefault!44876 () ValueCell!13641)

(assert (=> b!1142854 (= condMapEmpty!44876 (= (arr!35753 _values!996) ((as const (Array (_ BitVec 32) ValueCell!13641)) mapDefault!44876)))))

(declare-fun b!1142855 () Bool)

(declare-datatypes ((Unit!37423 0))(
  ( (Unit!37424) )
))
(declare-fun e!650195 () Unit!37423)

(declare-fun Unit!37425 () Unit!37423)

(assert (=> b!1142855 (= e!650195 Unit!37425)))

(declare-fun b!1142856 () Bool)

(declare-fun res!761600 () Bool)

(declare-fun e!650196 () Bool)

(assert (=> b!1142856 (=> (not res!761600) (not e!650196))))

(declare-fun k0!934 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1142856 (= res!761600 (validKeyInArray!0 k0!934))))

(declare-fun b!1142857 () Bool)

(declare-fun tp_is_empty!28701 () Bool)

(assert (=> b!1142857 (= e!650198 tp_is_empty!28701)))

(declare-fun b!1142858 () Bool)

(declare-fun e!650202 () Unit!37423)

(declare-fun Unit!37426 () Unit!37423)

(assert (=> b!1142858 (= e!650202 Unit!37426)))

(declare-fun lt!509527 () Bool)

(declare-fun extraKeys!923 () (_ BitVec 32))

(assert (=> b!1142858 (= lt!509527 (= (bvand extraKeys!923 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(declare-fun c!112345 () Bool)

(assert (=> b!1142858 (= c!112345 (and (not lt!509527) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun lt!509534 () Unit!37423)

(declare-fun e!650189 () Unit!37423)

(assert (=> b!1142858 (= lt!509534 e!650189)))

(declare-fun zeroValue!944 () V!43395)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun minValue!944 () V!43395)

(declare-fun lt!509530 () Unit!37423)

(declare-datatypes ((array!74214 0))(
  ( (array!74215 (arr!35754 (Array (_ BitVec 32) (_ BitVec 64))) (size!36291 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!74214)

(declare-fun lemmaListMapContainsThenArrayContainsFrom!403 (array!74214 array!74212 (_ BitVec 32) (_ BitVec 32) V!43395 V!43395 (_ BitVec 64) (_ BitVec 32) Int) Unit!37423)

(assert (=> b!1142858 (= lt!509530 (lemmaListMapContainsThenArrayContainsFrom!403 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun c!112349 () Bool)

(assert (=> b!1142858 (= c!112349 (and (not (= k0!934 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!934 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun res!761608 () Bool)

(declare-fun e!650197 () Bool)

(assert (=> b!1142858 (= res!761608 e!650197)))

(declare-fun e!650192 () Bool)

(assert (=> b!1142858 (=> (not res!761608) (not e!650192))))

(assert (=> b!1142858 e!650192))

(declare-fun lt!509544 () Unit!37423)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!74214 (_ BitVec 32) (_ BitVec 32)) Unit!37423)

(assert (=> b!1142858 (= lt!509544 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1208 #b00000000000000000000000000000000 from!1455))))

(declare-datatypes ((List!25119 0))(
  ( (Nil!25116) (Cons!25115 (h!26324 (_ BitVec 64)) (t!36289 List!25119)) )
))
(declare-fun arrayNoDuplicates!0 (array!74214 (_ BitVec 32) List!25119) Bool)

(assert (=> b!1142858 (arrayNoDuplicates!0 _keys!1208 from!1455 Nil!25116)))

(declare-fun lt!509537 () Unit!37423)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!74214 (_ BitVec 64) (_ BitVec 32) List!25119) Unit!37423)

(assert (=> b!1142858 (= lt!509537 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!1208 k0!934 from!1455 Nil!25116))))

(assert (=> b!1142858 false))

(declare-fun b!1142859 () Bool)

(declare-fun Unit!37427 () Unit!37423)

(assert (=> b!1142859 (= e!650202 Unit!37427)))

(declare-fun call!51593 () Bool)

(declare-datatypes ((tuple2!18320 0))(
  ( (tuple2!18321 (_1!9170 (_ BitVec 64)) (_2!9170 V!43395)) )
))
(declare-datatypes ((List!25120 0))(
  ( (Nil!25117) (Cons!25116 (h!26325 tuple2!18320) (t!36290 List!25120)) )
))
(declare-datatypes ((ListLongMap!16301 0))(
  ( (ListLongMap!16302 (toList!8166 List!25120)) )
))
(declare-fun call!51598 () ListLongMap!16301)

(declare-fun lt!509541 () ListLongMap!16301)

(declare-fun bm!51591 () Bool)

(declare-fun contains!6669 (ListLongMap!16301 (_ BitVec 64)) Bool)

(assert (=> bm!51591 (= call!51593 (contains!6669 (ite c!112345 lt!509541 call!51598) k0!934))))

(declare-fun b!1142860 () Bool)

(declare-fun e!650194 () Bool)

(declare-fun e!650199 () Bool)

(assert (=> b!1142860 (= e!650194 e!650199)))

(declare-fun res!761606 () Bool)

(assert (=> b!1142860 (=> res!761606 e!650199)))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1142860 (= res!761606 (not (= from!1455 i!673)))))

(declare-fun lt!509533 () ListLongMap!16301)

(declare-fun lt!509542 () array!74212)

(declare-fun lt!509538 () array!74214)

(declare-fun getCurrentListMapNoExtraKeys!4609 (array!74214 array!74212 (_ BitVec 32) (_ BitVec 32) V!43395 V!43395 (_ BitVec 32) Int) ListLongMap!16301)

(assert (=> b!1142860 (= lt!509533 (getCurrentListMapNoExtraKeys!4609 lt!509538 lt!509542 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun lt!509535 () V!43395)

(assert (=> b!1142860 (= lt!509542 (array!74213 (store (arr!35753 _values!996) i!673 (ValueCellFull!13641 lt!509535)) (size!36290 _values!996)))))

(declare-fun dynLambda!2657 (Int (_ BitVec 64)) V!43395)

(assert (=> b!1142860 (= lt!509535 (dynLambda!2657 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!509526 () ListLongMap!16301)

(assert (=> b!1142860 (= lt!509526 (getCurrentListMapNoExtraKeys!4609 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1142861 () Bool)

(declare-fun e!650190 () Bool)

(assert (=> b!1142861 (= e!650190 (not e!650194))))

(declare-fun res!761607 () Bool)

(assert (=> b!1142861 (=> res!761607 e!650194)))

(assert (=> b!1142861 (= res!761607 (bvsgt from!1455 i!673))))

(declare-fun arrayContainsKey!0 (array!74214 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1142861 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-fun lt!509531 () Unit!37423)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!74214 (_ BitVec 64) (_ BitVec 32)) Unit!37423)

(assert (=> b!1142861 (= lt!509531 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun bm!51592 () Bool)

(declare-fun call!51599 () ListLongMap!16301)

(assert (=> bm!51592 (= call!51598 call!51599)))

(declare-fun b!1142862 () Bool)

(declare-fun e!650188 () Bool)

(assert (=> b!1142862 (= e!650199 e!650188)))

(declare-fun res!761610 () Bool)

(assert (=> b!1142862 (=> res!761610 e!650188)))

(assert (=> b!1142862 (= res!761610 (not (= (select (arr!35754 _keys!1208) from!1455) k0!934)))))

(declare-fun e!650200 () Bool)

(assert (=> b!1142862 e!650200))

(declare-fun c!112350 () Bool)

(assert (=> b!1142862 (= c!112350 (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673))))

(declare-fun lt!509540 () Unit!37423)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!515 (array!74214 array!74212 (_ BitVec 32) (_ BitVec 32) V!43395 V!43395 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!37423)

(assert (=> b!1142862 (= lt!509540 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!515 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1142863 () Bool)

(declare-fun res!761604 () Bool)

(assert (=> b!1142863 (=> (not res!761604) (not e!650196))))

(assert (=> b!1142863 (= res!761604 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!36291 _keys!1208))))))

(declare-fun b!1142864 () Bool)

(declare-fun res!761603 () Bool)

(assert (=> b!1142864 (=> (not res!761603) (not e!650196))))

(assert (=> b!1142864 (= res!761603 (and (= (size!36290 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!36291 _keys!1208) (size!36290 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!44876 () Bool)

(assert (=> mapIsEmpty!44876 mapRes!44876))

(declare-fun b!1142865 () Bool)

(declare-fun res!761599 () Bool)

(assert (=> b!1142865 (=> (not res!761599) (not e!650190))))

(assert (=> b!1142865 (= res!761599 (arrayNoDuplicates!0 lt!509538 #b00000000000000000000000000000000 Nil!25116))))

(declare-fun b!1142866 () Bool)

(assert (=> b!1142866 (= e!650192 (arrayContainsKey!0 _keys!1208 k0!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun b!1142867 () Bool)

(declare-fun call!51597 () Bool)

(assert (=> b!1142867 call!51597))

(declare-fun lt!509524 () Unit!37423)

(declare-fun call!51600 () Unit!37423)

(assert (=> b!1142867 (= lt!509524 call!51600)))

(assert (=> b!1142867 (= e!650195 lt!509524)))

(declare-fun b!1142868 () Bool)

(declare-fun res!761602 () Bool)

(assert (=> b!1142868 (=> (not res!761602) (not e!650196))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!74214 (_ BitVec 32)) Bool)

(assert (=> b!1142868 (= res!761602 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun call!51596 () ListLongMap!16301)

(declare-fun bm!51593 () Bool)

(assert (=> bm!51593 (= call!51596 (getCurrentListMapNoExtraKeys!4609 lt!509538 lt!509542 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1142869 () Bool)

(declare-fun res!761609 () Bool)

(assert (=> b!1142869 (=> (not res!761609) (not e!650196))))

(assert (=> b!1142869 (= res!761609 (= (select (arr!35754 _keys!1208) i!673) k0!934))))

(declare-fun mapNonEmpty!44876 () Bool)

(declare-fun tp!85225 () Bool)

(declare-fun e!650191 () Bool)

(assert (=> mapNonEmpty!44876 (= mapRes!44876 (and tp!85225 e!650191))))

(declare-fun mapRest!44876 () (Array (_ BitVec 32) ValueCell!13641))

(declare-fun mapKey!44876 () (_ BitVec 32))

(declare-fun mapValue!44876 () ValueCell!13641)

(assert (=> mapNonEmpty!44876 (= (arr!35753 _values!996) (store mapRest!44876 mapKey!44876 mapValue!44876))))

(declare-fun bm!51594 () Bool)

(declare-fun call!51595 () Unit!37423)

(assert (=> bm!51594 (= call!51600 call!51595)))

(declare-fun bm!51595 () Bool)

(declare-fun c!112346 () Bool)

(declare-fun lt!509525 () ListLongMap!16301)

(declare-fun +!3510 (ListLongMap!16301 tuple2!18320) ListLongMap!16301)

(assert (=> bm!51595 (= call!51599 (+!3510 lt!509525 (ite (or c!112345 c!112346) (tuple2!18321 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!18321 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944))))))

(declare-fun b!1142870 () Bool)

(declare-fun e!650193 () Unit!37423)

(declare-fun lt!509543 () Unit!37423)

(assert (=> b!1142870 (= e!650193 lt!509543)))

(assert (=> b!1142870 (= lt!509543 call!51600)))

(assert (=> b!1142870 call!51597))

(declare-fun b!1142871 () Bool)

(declare-fun res!761605 () Bool)

(assert (=> b!1142871 (=> (not res!761605) (not e!650196))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1142871 (= res!761605 (validMask!0 mask!1564))))

(declare-fun bm!51596 () Bool)

(declare-fun call!51594 () ListLongMap!16301)

(assert (=> bm!51596 (= call!51594 (getCurrentListMapNoExtraKeys!4609 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun bm!51590 () Bool)

(assert (=> bm!51590 (= call!51597 call!51593)))

(declare-fun res!761612 () Bool)

(assert (=> start!98602 (=> (not res!761612) (not e!650196))))

(assert (=> start!98602 (= res!761612 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!36291 _keys!1208))))))

(assert (=> start!98602 e!650196))

(assert (=> start!98602 tp_is_empty!28701))

(declare-fun array_inv!27272 (array!74214) Bool)

(assert (=> start!98602 (array_inv!27272 _keys!1208)))

(assert (=> start!98602 true))

(assert (=> start!98602 tp!85224))

(declare-fun array_inv!27273 (array!74212) Bool)

(assert (=> start!98602 (and (array_inv!27273 _values!996) e!650201)))

(declare-fun b!1142872 () Bool)

(assert (=> b!1142872 (= c!112346 (and (not lt!509527) (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(assert (=> b!1142872 (= e!650189 e!650193)))

(declare-fun b!1142873 () Bool)

(assert (=> b!1142873 (= e!650191 tp_is_empty!28701)))

(declare-fun b!1142874 () Bool)

(assert (=> b!1142874 (= e!650200 (= call!51596 call!51594))))

(declare-fun bm!51597 () Bool)

(declare-fun addStillContains!808 (ListLongMap!16301 (_ BitVec 64) V!43395 (_ BitVec 64)) Unit!37423)

(assert (=> bm!51597 (= call!51595 (addStillContains!808 lt!509525 (ite (or c!112345 c!112346) #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000) (ite (or c!112345 c!112346) zeroValue!944 minValue!944) k0!934))))

(declare-fun b!1142875 () Bool)

(declare-fun res!761611 () Bool)

(assert (=> b!1142875 (=> (not res!761611) (not e!650196))))

(assert (=> b!1142875 (= res!761611 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!25116))))

(declare-fun b!1142876 () Bool)

(assert (=> b!1142876 (= e!650197 (ite (= k0!934 #b0000000000000000000000000000000000000000000000000000000000000000) (not lt!509527) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!1142877 () Bool)

(declare-fun -!1260 (ListLongMap!16301 (_ BitVec 64)) ListLongMap!16301)

(assert (=> b!1142877 (= e!650200 (= call!51596 (-!1260 call!51594 k0!934)))))

(declare-fun b!1142878 () Bool)

(assert (=> b!1142878 (= e!650197 (arrayContainsKey!0 _keys!1208 k0!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun b!1142879 () Bool)

(assert (=> b!1142879 (= e!650196 e!650190)))

(declare-fun res!761601 () Bool)

(assert (=> b!1142879 (=> (not res!761601) (not e!650190))))

(assert (=> b!1142879 (= res!761601 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!509538 mask!1564))))

(assert (=> b!1142879 (= lt!509538 (array!74215 (store (arr!35754 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!36291 _keys!1208)))))

(declare-fun b!1142880 () Bool)

(assert (=> b!1142880 (= e!650193 e!650195)))

(declare-fun c!112347 () Bool)

(assert (=> b!1142880 (= c!112347 (and (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!509527))))

(declare-fun b!1142881 () Bool)

(assert (=> b!1142881 (contains!6669 (+!3510 lt!509541 (tuple2!18321 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944)) k0!934)))

(declare-fun lt!509529 () Unit!37423)

(assert (=> b!1142881 (= lt!509529 (addStillContains!808 lt!509541 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944 k0!934))))

(assert (=> b!1142881 call!51593))

(assert (=> b!1142881 (= lt!509541 call!51599)))

(declare-fun lt!509536 () Unit!37423)

(assert (=> b!1142881 (= lt!509536 call!51595)))

(assert (=> b!1142881 (= e!650189 lt!509529)))

(declare-fun b!1142882 () Bool)

(assert (=> b!1142882 (= e!650188 true)))

(declare-fun lt!509528 () V!43395)

(assert (=> b!1142882 (= (-!1260 (+!3510 lt!509525 (tuple2!18321 (select (arr!35754 _keys!1208) from!1455) lt!509528)) (select (arr!35754 _keys!1208) from!1455)) lt!509525)))

(declare-fun lt!509532 () Unit!37423)

(declare-fun addThenRemoveForNewKeyIsSame!115 (ListLongMap!16301 (_ BitVec 64) V!43395) Unit!37423)

(assert (=> b!1142882 (= lt!509532 (addThenRemoveForNewKeyIsSame!115 lt!509525 (select (arr!35754 _keys!1208) from!1455) lt!509528))))

(declare-fun get!18193 (ValueCell!13641 V!43395) V!43395)

(assert (=> b!1142882 (= lt!509528 (get!18193 (select (arr!35753 _values!996) from!1455) lt!509535))))

(declare-fun lt!509539 () Unit!37423)

(assert (=> b!1142882 (= lt!509539 e!650202)))

(declare-fun c!112348 () Bool)

(assert (=> b!1142882 (= c!112348 (contains!6669 lt!509525 k0!934))))

(assert (=> b!1142882 (= lt!509525 (getCurrentListMapNoExtraKeys!4609 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(assert (= (and start!98602 res!761612) b!1142871))

(assert (= (and b!1142871 res!761605) b!1142864))

(assert (= (and b!1142864 res!761603) b!1142868))

(assert (= (and b!1142868 res!761602) b!1142875))

(assert (= (and b!1142875 res!761611) b!1142863))

(assert (= (and b!1142863 res!761604) b!1142856))

(assert (= (and b!1142856 res!761600) b!1142869))

(assert (= (and b!1142869 res!761609) b!1142879))

(assert (= (and b!1142879 res!761601) b!1142865))

(assert (= (and b!1142865 res!761599) b!1142861))

(assert (= (and b!1142861 (not res!761607)) b!1142860))

(assert (= (and b!1142860 (not res!761606)) b!1142862))

(assert (= (and b!1142862 c!112350) b!1142877))

(assert (= (and b!1142862 (not c!112350)) b!1142874))

(assert (= (or b!1142877 b!1142874) bm!51596))

(assert (= (or b!1142877 b!1142874) bm!51593))

(assert (= (and b!1142862 (not res!761610)) b!1142882))

(assert (= (and b!1142882 c!112348) b!1142858))

(assert (= (and b!1142882 (not c!112348)) b!1142859))

(assert (= (and b!1142858 c!112345) b!1142881))

(assert (= (and b!1142858 (not c!112345)) b!1142872))

(assert (= (and b!1142872 c!112346) b!1142870))

(assert (= (and b!1142872 (not c!112346)) b!1142880))

(assert (= (and b!1142880 c!112347) b!1142867))

(assert (= (and b!1142880 (not c!112347)) b!1142855))

(assert (= (or b!1142870 b!1142867) bm!51594))

(assert (= (or b!1142870 b!1142867) bm!51592))

(assert (= (or b!1142870 b!1142867) bm!51590))

(assert (= (or b!1142881 bm!51590) bm!51591))

(assert (= (or b!1142881 bm!51594) bm!51597))

(assert (= (or b!1142881 bm!51592) bm!51595))

(assert (= (and b!1142858 c!112349) b!1142878))

(assert (= (and b!1142858 (not c!112349)) b!1142876))

(assert (= (and b!1142858 res!761608) b!1142866))

(assert (= (and b!1142854 condMapEmpty!44876) mapIsEmpty!44876))

(assert (= (and b!1142854 (not condMapEmpty!44876)) mapNonEmpty!44876))

(get-info :version)

(assert (= (and mapNonEmpty!44876 ((_ is ValueCellFull!13641) mapValue!44876)) b!1142873))

(assert (= (and b!1142854 ((_ is ValueCellFull!13641) mapDefault!44876)) b!1142857))

(assert (= start!98602 b!1142854))

(declare-fun b_lambda!19295 () Bool)

(assert (=> (not b_lambda!19295) (not b!1142860)))

(declare-fun t!36288 () Bool)

(declare-fun tb!8991 () Bool)

(assert (=> (and start!98602 (= defaultEntry!1004 defaultEntry!1004) t!36288) tb!8991))

(declare-fun result!18539 () Bool)

(assert (=> tb!8991 (= result!18539 tp_is_empty!28701)))

(assert (=> b!1142860 t!36288))

(declare-fun b_and!39207 () Bool)

(assert (= b_and!39205 (and (=> t!36288 result!18539) b_and!39207)))

(declare-fun m!1054115 () Bool)

(assert (=> bm!51595 m!1054115))

(declare-fun m!1054117 () Bool)

(assert (=> b!1142862 m!1054117))

(declare-fun m!1054119 () Bool)

(assert (=> b!1142862 m!1054119))

(declare-fun m!1054121 () Bool)

(assert (=> mapNonEmpty!44876 m!1054121))

(declare-fun m!1054123 () Bool)

(assert (=> bm!51597 m!1054123))

(declare-fun m!1054125 () Bool)

(assert (=> b!1142879 m!1054125))

(declare-fun m!1054127 () Bool)

(assert (=> b!1142879 m!1054127))

(declare-fun m!1054129 () Bool)

(assert (=> b!1142875 m!1054129))

(declare-fun m!1054131 () Bool)

(assert (=> start!98602 m!1054131))

(declare-fun m!1054133 () Bool)

(assert (=> start!98602 m!1054133))

(declare-fun m!1054135 () Bool)

(assert (=> b!1142858 m!1054135))

(declare-fun m!1054137 () Bool)

(assert (=> b!1142858 m!1054137))

(declare-fun m!1054139 () Bool)

(assert (=> b!1142858 m!1054139))

(declare-fun m!1054141 () Bool)

(assert (=> b!1142858 m!1054141))

(declare-fun m!1054143 () Bool)

(assert (=> b!1142856 m!1054143))

(declare-fun m!1054145 () Bool)

(assert (=> b!1142860 m!1054145))

(declare-fun m!1054147 () Bool)

(assert (=> b!1142860 m!1054147))

(declare-fun m!1054149 () Bool)

(assert (=> b!1142860 m!1054149))

(declare-fun m!1054151 () Bool)

(assert (=> b!1142860 m!1054151))

(declare-fun m!1054153 () Bool)

(assert (=> b!1142871 m!1054153))

(declare-fun m!1054155 () Bool)

(assert (=> bm!51591 m!1054155))

(declare-fun m!1054157 () Bool)

(assert (=> b!1142878 m!1054157))

(declare-fun m!1054159 () Bool)

(assert (=> b!1142877 m!1054159))

(declare-fun m!1054161 () Bool)

(assert (=> b!1142861 m!1054161))

(declare-fun m!1054163 () Bool)

(assert (=> b!1142861 m!1054163))

(declare-fun m!1054165 () Bool)

(assert (=> b!1142868 m!1054165))

(declare-fun m!1054167 () Bool)

(assert (=> b!1142869 m!1054167))

(declare-fun m!1054169 () Bool)

(assert (=> b!1142881 m!1054169))

(assert (=> b!1142881 m!1054169))

(declare-fun m!1054171 () Bool)

(assert (=> b!1142881 m!1054171))

(declare-fun m!1054173 () Bool)

(assert (=> b!1142881 m!1054173))

(declare-fun m!1054175 () Bool)

(assert (=> b!1142882 m!1054175))

(declare-fun m!1054177 () Bool)

(assert (=> b!1142882 m!1054177))

(declare-fun m!1054179 () Bool)

(assert (=> b!1142882 m!1054179))

(assert (=> b!1142882 m!1054117))

(declare-fun m!1054181 () Bool)

(assert (=> b!1142882 m!1054181))

(assert (=> b!1142882 m!1054175))

(declare-fun m!1054183 () Bool)

(assert (=> b!1142882 m!1054183))

(assert (=> b!1142882 m!1054117))

(declare-fun m!1054185 () Bool)

(assert (=> b!1142882 m!1054185))

(assert (=> b!1142882 m!1054177))

(assert (=> b!1142882 m!1054117))

(declare-fun m!1054187 () Bool)

(assert (=> b!1142882 m!1054187))

(declare-fun m!1054189 () Bool)

(assert (=> b!1142865 m!1054189))

(assert (=> b!1142866 m!1054157))

(declare-fun m!1054191 () Bool)

(assert (=> bm!51593 m!1054191))

(assert (=> bm!51596 m!1054185))

(check-sat (not start!98602) (not b!1142871) (not b!1142865) b_and!39207 tp_is_empty!28701 (not bm!51595) (not b!1142878) (not b!1142875) (not b_next!24171) (not b!1142856) (not bm!51596) (not bm!51593) (not b!1142881) (not bm!51597) (not b!1142868) (not b!1142860) (not b!1142882) (not b!1142861) (not b_lambda!19295) (not mapNonEmpty!44876) (not b!1142877) (not b!1142879) (not b!1142858) (not b!1142866) (not bm!51591) (not b!1142862))
(check-sat b_and!39207 (not b_next!24171))
