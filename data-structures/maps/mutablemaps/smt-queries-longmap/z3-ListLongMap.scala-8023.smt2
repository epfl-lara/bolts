; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!99016 () Bool)

(assert start!99016)

(declare-fun b_free!24585 () Bool)

(declare-fun b_next!24585 () Bool)

(assert (=> start!99016 (= b_free!24585 (not b_next!24585))))

(declare-fun tp!86466 () Bool)

(declare-fun b_and!40033 () Bool)

(assert (=> start!99016 (= tp!86466 b_and!40033)))

(declare-fun bm!56558 () Bool)

(declare-datatypes ((Unit!38219 0))(
  ( (Unit!38220) )
))
(declare-fun call!56566 () Unit!38219)

(declare-fun call!56561 () Unit!38219)

(assert (=> bm!56558 (= call!56566 call!56561)))

(declare-fun b!1161858 () Bool)

(declare-datatypes ((array!75020 0))(
  ( (array!75021 (arr!36157 (Array (_ BitVec 32) (_ BitVec 64))) (size!36694 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!75020)

(declare-fun e!660707 () Bool)

(declare-fun k0!934 () (_ BitVec 64))

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun arrayContainsKey!0 (array!75020 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1161858 (= e!660707 (arrayContainsKey!0 _keys!1208 k0!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun b!1161859 () Bool)

(declare-fun e!660712 () Bool)

(declare-fun e!660720 () Bool)

(declare-fun mapRes!45497 () Bool)

(assert (=> b!1161859 (= e!660712 (and e!660720 mapRes!45497))))

(declare-fun condMapEmpty!45497 () Bool)

(declare-datatypes ((V!43947 0))(
  ( (V!43948 (val!14614 Int)) )
))
(declare-datatypes ((ValueCell!13848 0))(
  ( (ValueCellFull!13848 (v!17252 V!43947)) (EmptyCell!13848) )
))
(declare-datatypes ((array!75022 0))(
  ( (array!75023 (arr!36158 (Array (_ BitVec 32) ValueCell!13848)) (size!36695 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!75022)

(declare-fun mapDefault!45497 () ValueCell!13848)

(assert (=> b!1161859 (= condMapEmpty!45497 (= (arr!36158 _values!996) ((as const (Array (_ BitVec 32) ValueCell!13848)) mapDefault!45497)))))

(declare-fun e!660710 () Bool)

(declare-fun b!1161860 () Bool)

(assert (=> b!1161860 (= e!660710 (arrayContainsKey!0 _keys!1208 k0!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun b!1161861 () Bool)

(declare-fun e!660706 () Unit!38219)

(declare-fun Unit!38221 () Unit!38219)

(assert (=> b!1161861 (= e!660706 Unit!38221)))

(declare-fun b!1161862 () Bool)

(declare-fun e!660716 () Unit!38219)

(declare-fun Unit!38222 () Unit!38219)

(assert (=> b!1161862 (= e!660716 Unit!38222)))

(declare-fun zeroValue!944 () V!43947)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-fun lt!522990 () array!75020)

(declare-datatypes ((tuple2!18698 0))(
  ( (tuple2!18699 (_1!9359 (_ BitVec 64)) (_2!9359 V!43947)) )
))
(declare-datatypes ((List!25474 0))(
  ( (Nil!25471) (Cons!25470 (h!26679 tuple2!18698) (t!37058 List!25474)) )
))
(declare-datatypes ((ListLongMap!16679 0))(
  ( (ListLongMap!16680 (toList!8355 List!25474)) )
))
(declare-fun call!56563 () ListLongMap!16679)

(declare-fun lt!523005 () array!75022)

(declare-fun minValue!944 () V!43947)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun bm!56559 () Bool)

(declare-fun getCurrentListMapNoExtraKeys!4790 (array!75020 array!75022 (_ BitVec 32) (_ BitVec 32) V!43947 V!43947 (_ BitVec 32) Int) ListLongMap!16679)

(assert (=> bm!56559 (= call!56563 (getCurrentListMapNoExtraKeys!4790 lt!522990 lt!523005 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1161863 () Bool)

(declare-fun res!770875 () Bool)

(declare-fun e!660711 () Bool)

(assert (=> b!1161863 (=> (not res!770875) (not e!660711))))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1161863 (= res!770875 (= (select (arr!36157 _keys!1208) i!673) k0!934))))

(declare-fun b!1161864 () Bool)

(declare-fun e!660717 () Bool)

(declare-fun lt!522998 () ListLongMap!16679)

(assert (=> b!1161864 (= e!660717 (= lt!522998 (getCurrentListMapNoExtraKeys!4790 lt!522990 lt!523005 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004)))))

(declare-fun b!1161865 () Bool)

(declare-fun e!660719 () Bool)

(declare-fun e!660705 () Bool)

(assert (=> b!1161865 (= e!660719 e!660705)))

(declare-fun res!770883 () Bool)

(assert (=> b!1161865 (=> res!770883 e!660705)))

(assert (=> b!1161865 (= res!770883 (not (= from!1455 i!673)))))

(declare-fun lt!522984 () ListLongMap!16679)

(assert (=> b!1161865 (= lt!522984 (getCurrentListMapNoExtraKeys!4790 lt!522990 lt!523005 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun lt!523000 () V!43947)

(assert (=> b!1161865 (= lt!523005 (array!75023 (store (arr!36158 _values!996) i!673 (ValueCellFull!13848 lt!523000)) (size!36695 _values!996)))))

(declare-fun dynLambda!2790 (Int (_ BitVec 64)) V!43947)

(assert (=> b!1161865 (= lt!523000 (dynLambda!2790 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!522986 () ListLongMap!16679)

(assert (=> b!1161865 (= lt!522986 (getCurrentListMapNoExtraKeys!4790 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun call!56562 () ListLongMap!16679)

(declare-fun bm!56560 () Bool)

(assert (=> bm!56560 (= call!56562 (getCurrentListMapNoExtraKeys!4790 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1161866 () Bool)

(declare-fun e!660714 () Bool)

(assert (=> b!1161866 (= e!660705 e!660714)))

(declare-fun res!770888 () Bool)

(assert (=> b!1161866 (=> res!770888 e!660714)))

(assert (=> b!1161866 (= res!770888 (not (= (select (arr!36157 _keys!1208) from!1455) k0!934)))))

(declare-fun e!660718 () Bool)

(assert (=> b!1161866 e!660718))

(declare-fun c!116073 () Bool)

(assert (=> b!1161866 (= c!116073 (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673))))

(declare-fun lt!522999 () Unit!38219)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!646 (array!75020 array!75022 (_ BitVec 32) (_ BitVec 32) V!43947 V!43947 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!38219)

(assert (=> b!1161866 (= lt!522999 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!646 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun c!116075 () Bool)

(declare-fun call!56567 () ListLongMap!16679)

(declare-fun c!116074 () Bool)

(declare-fun lt!522991 () ListLongMap!16679)

(declare-fun bm!56561 () Bool)

(declare-fun lt!523002 () ListLongMap!16679)

(declare-fun +!3677 (ListLongMap!16679 tuple2!18698) ListLongMap!16679)

(assert (=> bm!56561 (= call!56567 (+!3677 (ite c!116074 lt!523002 lt!522991) (ite c!116074 (tuple2!18699 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944) (ite c!116075 (tuple2!18699 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!18699 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944)))))))

(declare-fun b!1161867 () Bool)

(declare-fun call!56565 () Bool)

(assert (=> b!1161867 call!56565))

(declare-fun lt!522993 () Unit!38219)

(assert (=> b!1161867 (= lt!522993 call!56566)))

(assert (=> b!1161867 (= e!660716 lt!522993)))

(declare-fun lt!522996 () Bool)

(declare-fun b!1161868 () Bool)

(assert (=> b!1161868 (= e!660710 (ite (= k0!934 #b0000000000000000000000000000000000000000000000000000000000000000) (not lt!522996) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!1161869 () Bool)

(declare-fun contains!6834 (ListLongMap!16679 (_ BitVec 64)) Bool)

(assert (=> b!1161869 (contains!6834 call!56567 k0!934)))

(declare-fun lt!522988 () Unit!38219)

(assert (=> b!1161869 (= lt!522988 call!56561)))

(declare-fun call!56568 () Bool)

(assert (=> b!1161869 call!56568))

(assert (=> b!1161869 (= lt!523002 (+!3677 lt!522991 (tuple2!18699 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944)))))

(declare-fun lt!522997 () Unit!38219)

(declare-fun addStillContains!975 (ListLongMap!16679 (_ BitVec 64) V!43947 (_ BitVec 64)) Unit!38219)

(assert (=> b!1161869 (= lt!522997 (addStillContains!975 lt!522991 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944 k0!934))))

(declare-fun e!660704 () Unit!38219)

(assert (=> b!1161869 (= e!660704 lt!522988)))

(declare-fun mapIsEmpty!45497 () Bool)

(assert (=> mapIsEmpty!45497 mapRes!45497))

(declare-fun b!1161870 () Bool)

(declare-fun e!660709 () Unit!38219)

(assert (=> b!1161870 (= e!660709 e!660716)))

(declare-fun c!116071 () Bool)

(assert (=> b!1161870 (= c!116071 (and (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!522996))))

(declare-fun res!770886 () Bool)

(assert (=> start!99016 (=> (not res!770886) (not e!660711))))

(assert (=> start!99016 (= res!770886 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!36694 _keys!1208))))))

(assert (=> start!99016 e!660711))

(declare-fun tp_is_empty!29115 () Bool)

(assert (=> start!99016 tp_is_empty!29115))

(declare-fun array_inv!27536 (array!75020) Bool)

(assert (=> start!99016 (array_inv!27536 _keys!1208)))

(assert (=> start!99016 true))

(assert (=> start!99016 tp!86466))

(declare-fun array_inv!27537 (array!75022) Bool)

(assert (=> start!99016 (and (array_inv!27537 _values!996) e!660712)))

(declare-fun b!1161871 () Bool)

(declare-fun e!660715 () Bool)

(assert (=> b!1161871 (= e!660715 (not e!660719))))

(declare-fun res!770887 () Bool)

(assert (=> b!1161871 (=> res!770887 e!660719)))

(assert (=> b!1161871 (= res!770887 (bvsgt from!1455 i!673))))

(assert (=> b!1161871 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-fun lt!523004 () Unit!38219)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!75020 (_ BitVec 64) (_ BitVec 32)) Unit!38219)

(assert (=> b!1161871 (= lt!523004 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun call!56564 () ListLongMap!16679)

(declare-fun bm!56562 () Bool)

(assert (=> bm!56562 (= call!56568 (contains!6834 (ite c!116074 lt!523002 call!56564) k0!934))))

(declare-fun bm!56563 () Bool)

(assert (=> bm!56563 (= call!56564 call!56567)))

(declare-fun b!1161872 () Bool)

(declare-fun -!1424 (ListLongMap!16679 (_ BitVec 64)) ListLongMap!16679)

(assert (=> b!1161872 (= e!660718 (= call!56563 (-!1424 call!56562 k0!934)))))

(declare-fun b!1161873 () Bool)

(declare-fun res!770874 () Bool)

(assert (=> b!1161873 (=> (not res!770874) (not e!660711))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!75020 (_ BitVec 32)) Bool)

(assert (=> b!1161873 (= res!770874 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1161874 () Bool)

(assert (=> b!1161874 (= e!660720 tp_is_empty!29115)))

(declare-fun mapNonEmpty!45497 () Bool)

(declare-fun tp!86467 () Bool)

(declare-fun e!660713 () Bool)

(assert (=> mapNonEmpty!45497 (= mapRes!45497 (and tp!86467 e!660713))))

(declare-fun mapRest!45497 () (Array (_ BitVec 32) ValueCell!13848))

(declare-fun mapKey!45497 () (_ BitVec 32))

(declare-fun mapValue!45497 () ValueCell!13848)

(assert (=> mapNonEmpty!45497 (= (arr!36158 _values!996) (store mapRest!45497 mapKey!45497 mapValue!45497))))

(declare-fun b!1161875 () Bool)

(assert (=> b!1161875 (= c!116075 (and (not lt!522996) (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(assert (=> b!1161875 (= e!660704 e!660709)))

(declare-fun b!1161876 () Bool)

(assert (=> b!1161876 (= e!660713 tp_is_empty!29115)))

(declare-fun b!1161877 () Bool)

(declare-fun res!770877 () Bool)

(assert (=> b!1161877 (=> (not res!770877) (not e!660715))))

(declare-datatypes ((List!25475 0))(
  ( (Nil!25472) (Cons!25471 (h!26680 (_ BitVec 64)) (t!37059 List!25475)) )
))
(declare-fun arrayNoDuplicates!0 (array!75020 (_ BitVec 32) List!25475) Bool)

(assert (=> b!1161877 (= res!770877 (arrayNoDuplicates!0 lt!522990 #b00000000000000000000000000000000 Nil!25472))))

(declare-fun bm!56564 () Bool)

(assert (=> bm!56564 (= call!56565 call!56568)))

(declare-fun b!1161878 () Bool)

(assert (=> b!1161878 (= e!660711 e!660715)))

(declare-fun res!770876 () Bool)

(assert (=> b!1161878 (=> (not res!770876) (not e!660715))))

(assert (=> b!1161878 (= res!770876 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!522990 mask!1564))))

(assert (=> b!1161878 (= lt!522990 (array!75021 (store (arr!36157 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!36694 _keys!1208)))))

(declare-fun b!1161879 () Bool)

(declare-fun Unit!38223 () Unit!38219)

(assert (=> b!1161879 (= e!660706 Unit!38223)))

(assert (=> b!1161879 (= lt!522996 (= (bvand extraKeys!923 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(assert (=> b!1161879 (= c!116074 (and (not lt!522996) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun lt!522985 () Unit!38219)

(assert (=> b!1161879 (= lt!522985 e!660704)))

(declare-fun lt!522987 () Unit!38219)

(declare-fun lemmaListMapContainsThenArrayContainsFrom!545 (array!75020 array!75022 (_ BitVec 32) (_ BitVec 32) V!43947 V!43947 (_ BitVec 64) (_ BitVec 32) Int) Unit!38219)

(assert (=> b!1161879 (= lt!522987 (lemmaListMapContainsThenArrayContainsFrom!545 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun c!116072 () Bool)

(assert (=> b!1161879 (= c!116072 (and (not (= k0!934 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!934 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun res!770880 () Bool)

(assert (=> b!1161879 (= res!770880 e!660710)))

(assert (=> b!1161879 (=> (not res!770880) (not e!660707))))

(assert (=> b!1161879 e!660707))

(declare-fun lt!522992 () Unit!38219)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!75020 (_ BitVec 32) (_ BitVec 32)) Unit!38219)

(assert (=> b!1161879 (= lt!522992 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1208 #b00000000000000000000000000000000 from!1455))))

(assert (=> b!1161879 (arrayNoDuplicates!0 _keys!1208 from!1455 Nil!25472)))

(declare-fun lt!522994 () Unit!38219)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!75020 (_ BitVec 64) (_ BitVec 32) List!25475) Unit!38219)

(assert (=> b!1161879 (= lt!522994 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!1208 k0!934 from!1455 Nil!25472))))

(assert (=> b!1161879 false))

(declare-fun b!1161880 () Bool)

(declare-fun res!770885 () Bool)

(assert (=> b!1161880 (=> (not res!770885) (not e!660711))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1161880 (= res!770885 (validKeyInArray!0 k0!934))))

(declare-fun bm!56565 () Bool)

(assert (=> bm!56565 (= call!56561 (addStillContains!975 (ite c!116074 lt!523002 lt!522991) (ite c!116074 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!116075 #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000)) (ite c!116074 minValue!944 (ite c!116075 zeroValue!944 minValue!944)) k0!934))))

(declare-fun b!1161881 () Bool)

(declare-fun lt!523001 () Unit!38219)

(assert (=> b!1161881 (= e!660709 lt!523001)))

(assert (=> b!1161881 (= lt!523001 call!56566)))

(assert (=> b!1161881 call!56565))

(declare-fun b!1161882 () Bool)

(declare-fun res!770882 () Bool)

(assert (=> b!1161882 (=> (not res!770882) (not e!660711))))

(assert (=> b!1161882 (= res!770882 (and (= (size!36695 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!36694 _keys!1208) (size!36695 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1161883 () Bool)

(declare-fun res!770879 () Bool)

(assert (=> b!1161883 (=> (not res!770879) (not e!660711))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1161883 (= res!770879 (validMask!0 mask!1564))))

(declare-fun b!1161884 () Bool)

(declare-fun res!770881 () Bool)

(assert (=> b!1161884 (=> (not res!770881) (not e!660711))))

(assert (=> b!1161884 (= res!770881 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!36694 _keys!1208))))))

(declare-fun b!1161885 () Bool)

(assert (=> b!1161885 (= e!660714 true)))

(assert (=> b!1161885 e!660717))

(declare-fun res!770878 () Bool)

(assert (=> b!1161885 (=> (not res!770878) (not e!660717))))

(assert (=> b!1161885 (= res!770878 (= lt!522998 lt!522991))))

(assert (=> b!1161885 (= lt!522998 (-!1424 lt!522986 k0!934))))

(declare-fun lt!523003 () V!43947)

(assert (=> b!1161885 (= (-!1424 (+!3677 lt!522991 (tuple2!18699 (select (arr!36157 _keys!1208) from!1455) lt!523003)) (select (arr!36157 _keys!1208) from!1455)) lt!522991)))

(declare-fun lt!522995 () Unit!38219)

(declare-fun addThenRemoveForNewKeyIsSame!260 (ListLongMap!16679 (_ BitVec 64) V!43947) Unit!38219)

(assert (=> b!1161885 (= lt!522995 (addThenRemoveForNewKeyIsSame!260 lt!522991 (select (arr!36157 _keys!1208) from!1455) lt!523003))))

(declare-fun get!18476 (ValueCell!13848 V!43947) V!43947)

(assert (=> b!1161885 (= lt!523003 (get!18476 (select (arr!36158 _values!996) from!1455) lt!523000))))

(declare-fun lt!522989 () Unit!38219)

(assert (=> b!1161885 (= lt!522989 e!660706)))

(declare-fun c!116076 () Bool)

(assert (=> b!1161885 (= c!116076 (contains!6834 lt!522991 k0!934))))

(assert (=> b!1161885 (= lt!522991 (getCurrentListMapNoExtraKeys!4790 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1161886 () Bool)

(assert (=> b!1161886 (= e!660718 (= call!56563 call!56562))))

(declare-fun b!1161887 () Bool)

(declare-fun res!770884 () Bool)

(assert (=> b!1161887 (=> (not res!770884) (not e!660711))))

(assert (=> b!1161887 (= res!770884 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!25472))))

(assert (= (and start!99016 res!770886) b!1161883))

(assert (= (and b!1161883 res!770879) b!1161882))

(assert (= (and b!1161882 res!770882) b!1161873))

(assert (= (and b!1161873 res!770874) b!1161887))

(assert (= (and b!1161887 res!770884) b!1161884))

(assert (= (and b!1161884 res!770881) b!1161880))

(assert (= (and b!1161880 res!770885) b!1161863))

(assert (= (and b!1161863 res!770875) b!1161878))

(assert (= (and b!1161878 res!770876) b!1161877))

(assert (= (and b!1161877 res!770877) b!1161871))

(assert (= (and b!1161871 (not res!770887)) b!1161865))

(assert (= (and b!1161865 (not res!770883)) b!1161866))

(assert (= (and b!1161866 c!116073) b!1161872))

(assert (= (and b!1161866 (not c!116073)) b!1161886))

(assert (= (or b!1161872 b!1161886) bm!56559))

(assert (= (or b!1161872 b!1161886) bm!56560))

(assert (= (and b!1161866 (not res!770888)) b!1161885))

(assert (= (and b!1161885 c!116076) b!1161879))

(assert (= (and b!1161885 (not c!116076)) b!1161861))

(assert (= (and b!1161879 c!116074) b!1161869))

(assert (= (and b!1161879 (not c!116074)) b!1161875))

(assert (= (and b!1161875 c!116075) b!1161881))

(assert (= (and b!1161875 (not c!116075)) b!1161870))

(assert (= (and b!1161870 c!116071) b!1161867))

(assert (= (and b!1161870 (not c!116071)) b!1161862))

(assert (= (or b!1161881 b!1161867) bm!56558))

(assert (= (or b!1161881 b!1161867) bm!56563))

(assert (= (or b!1161881 b!1161867) bm!56564))

(assert (= (or b!1161869 bm!56564) bm!56562))

(assert (= (or b!1161869 bm!56558) bm!56565))

(assert (= (or b!1161869 bm!56563) bm!56561))

(assert (= (and b!1161879 c!116072) b!1161860))

(assert (= (and b!1161879 (not c!116072)) b!1161868))

(assert (= (and b!1161879 res!770880) b!1161858))

(assert (= (and b!1161885 res!770878) b!1161864))

(assert (= (and b!1161859 condMapEmpty!45497) mapIsEmpty!45497))

(assert (= (and b!1161859 (not condMapEmpty!45497)) mapNonEmpty!45497))

(get-info :version)

(assert (= (and mapNonEmpty!45497 ((_ is ValueCellFull!13848) mapValue!45497)) b!1161876))

(assert (= (and b!1161859 ((_ is ValueCellFull!13848) mapDefault!45497)) b!1161874))

(assert (= start!99016 b!1161859))

(declare-fun b_lambda!19709 () Bool)

(assert (=> (not b_lambda!19709) (not b!1161865)))

(declare-fun t!37057 () Bool)

(declare-fun tb!9405 () Bool)

(assert (=> (and start!99016 (= defaultEntry!1004 defaultEntry!1004) t!37057) tb!9405))

(declare-fun result!19367 () Bool)

(assert (=> tb!9405 (= result!19367 tp_is_empty!29115)))

(assert (=> b!1161865 t!37057))

(declare-fun b_and!40035 () Bool)

(assert (= b_and!40033 (and (=> t!37057 result!19367) b_and!40035)))

(declare-fun m!1070667 () Bool)

(assert (=> b!1161860 m!1070667))

(declare-fun m!1070669 () Bool)

(assert (=> b!1161869 m!1070669))

(declare-fun m!1070671 () Bool)

(assert (=> b!1161869 m!1070671))

(declare-fun m!1070673 () Bool)

(assert (=> b!1161869 m!1070673))

(declare-fun m!1070675 () Bool)

(assert (=> b!1161866 m!1070675))

(declare-fun m!1070677 () Bool)

(assert (=> b!1161866 m!1070677))

(declare-fun m!1070679 () Bool)

(assert (=> b!1161880 m!1070679))

(declare-fun m!1070681 () Bool)

(assert (=> start!99016 m!1070681))

(declare-fun m!1070683 () Bool)

(assert (=> start!99016 m!1070683))

(declare-fun m!1070685 () Bool)

(assert (=> b!1161873 m!1070685))

(declare-fun m!1070687 () Bool)

(assert (=> b!1161863 m!1070687))

(declare-fun m!1070689 () Bool)

(assert (=> b!1161878 m!1070689))

(declare-fun m!1070691 () Bool)

(assert (=> b!1161878 m!1070691))

(declare-fun m!1070693 () Bool)

(assert (=> b!1161872 m!1070693))

(declare-fun m!1070695 () Bool)

(assert (=> bm!56562 m!1070695))

(declare-fun m!1070697 () Bool)

(assert (=> b!1161877 m!1070697))

(declare-fun m!1070699 () Bool)

(assert (=> bm!56561 m!1070699))

(declare-fun m!1070701 () Bool)

(assert (=> b!1161883 m!1070701))

(declare-fun m!1070703 () Bool)

(assert (=> b!1161887 m!1070703))

(declare-fun m!1070705 () Bool)

(assert (=> b!1161865 m!1070705))

(declare-fun m!1070707 () Bool)

(assert (=> b!1161865 m!1070707))

(declare-fun m!1070709 () Bool)

(assert (=> b!1161865 m!1070709))

(declare-fun m!1070711 () Bool)

(assert (=> b!1161865 m!1070711))

(declare-fun m!1070713 () Bool)

(assert (=> bm!56560 m!1070713))

(declare-fun m!1070715 () Bool)

(assert (=> b!1161864 m!1070715))

(declare-fun m!1070717 () Bool)

(assert (=> b!1161879 m!1070717))

(declare-fun m!1070719 () Bool)

(assert (=> b!1161879 m!1070719))

(declare-fun m!1070721 () Bool)

(assert (=> b!1161879 m!1070721))

(declare-fun m!1070723 () Bool)

(assert (=> b!1161879 m!1070723))

(assert (=> b!1161858 m!1070667))

(declare-fun m!1070725 () Bool)

(assert (=> bm!56565 m!1070725))

(assert (=> bm!56559 m!1070715))

(declare-fun m!1070727 () Bool)

(assert (=> b!1161871 m!1070727))

(declare-fun m!1070729 () Bool)

(assert (=> b!1161871 m!1070729))

(declare-fun m!1070731 () Bool)

(assert (=> b!1161885 m!1070731))

(declare-fun m!1070733 () Bool)

(assert (=> b!1161885 m!1070733))

(assert (=> b!1161885 m!1070675))

(declare-fun m!1070735 () Bool)

(assert (=> b!1161885 m!1070735))

(declare-fun m!1070737 () Bool)

(assert (=> b!1161885 m!1070737))

(declare-fun m!1070739 () Bool)

(assert (=> b!1161885 m!1070739))

(assert (=> b!1161885 m!1070731))

(declare-fun m!1070741 () Bool)

(assert (=> b!1161885 m!1070741))

(assert (=> b!1161885 m!1070675))

(assert (=> b!1161885 m!1070713))

(assert (=> b!1161885 m!1070737))

(assert (=> b!1161885 m!1070675))

(declare-fun m!1070743 () Bool)

(assert (=> b!1161885 m!1070743))

(declare-fun m!1070745 () Bool)

(assert (=> mapNonEmpty!45497 m!1070745))

(check-sat (not b_next!24585) b_and!40035 (not b!1161860) (not bm!56559) (not b!1161858) (not b!1161871) (not b!1161873) (not mapNonEmpty!45497) (not bm!56561) (not start!99016) (not b!1161885) (not b!1161880) (not b!1161865) (not b!1161866) (not b!1161872) (not b!1161864) (not bm!56565) (not b!1161887) (not b_lambda!19709) (not b!1161879) (not b!1161869) tp_is_empty!29115 (not b!1161883) (not bm!56560) (not bm!56562) (not b!1161878) (not b!1161877))
(check-sat b_and!40035 (not b_next!24585))
