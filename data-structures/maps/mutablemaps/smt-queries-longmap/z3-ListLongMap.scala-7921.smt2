; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!98404 () Bool)

(assert start!98404)

(declare-fun b_free!23973 () Bool)

(declare-fun b_next!23973 () Bool)

(assert (=> start!98404 (= b_free!23973 (not b_next!23973))))

(declare-fun tp!84631 () Bool)

(declare-fun b_and!38809 () Bool)

(assert (=> start!98404 (= tp!84631 b_and!38809)))

(declare-fun bm!49214 () Bool)

(declare-datatypes ((Unit!37095 0))(
  ( (Unit!37096) )
))
(declare-fun call!49224 () Unit!37095)

(declare-fun call!49221 () Unit!37095)

(assert (=> bm!49214 (= call!49224 call!49221)))

(declare-fun b!1133885 () Bool)

(declare-fun e!645363 () Bool)

(declare-fun e!645358 () Bool)

(declare-fun mapRes!44579 () Bool)

(assert (=> b!1133885 (= e!645363 (and e!645358 mapRes!44579))))

(declare-fun condMapEmpty!44579 () Bool)

(declare-datatypes ((V!43131 0))(
  ( (V!43132 (val!14308 Int)) )
))
(declare-datatypes ((ValueCell!13542 0))(
  ( (ValueCellFull!13542 (v!16946 V!43131)) (EmptyCell!13542) )
))
(declare-datatypes ((array!73828 0))(
  ( (array!73829 (arr!35561 (Array (_ BitVec 32) ValueCell!13542)) (size!36098 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!73828)

(declare-fun mapDefault!44579 () ValueCell!13542)

(assert (=> b!1133885 (= condMapEmpty!44579 (= (arr!35561 _values!996) ((as const (Array (_ BitVec 32) ValueCell!13542)) mapDefault!44579)))))

(declare-fun b!1133886 () Bool)

(declare-fun e!645367 () Bool)

(declare-fun e!645354 () Bool)

(assert (=> b!1133886 (= e!645367 e!645354)))

(declare-fun res!757126 () Bool)

(assert (=> b!1133886 (=> res!757126 e!645354)))

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1133886 (= res!757126 (not (= from!1455 i!673)))))

(declare-fun zeroValue!944 () V!43131)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-datatypes ((tuple2!18138 0))(
  ( (tuple2!18139 (_1!9079 (_ BitVec 64)) (_2!9079 V!43131)) )
))
(declare-datatypes ((List!24950 0))(
  ( (Nil!24947) (Cons!24946 (h!26155 tuple2!18138) (t!35922 List!24950)) )
))
(declare-datatypes ((ListLongMap!16119 0))(
  ( (ListLongMap!16120 (toList!8075 List!24950)) )
))
(declare-fun lt!503907 () ListLongMap!16119)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-datatypes ((array!73830 0))(
  ( (array!73831 (arr!35562 (Array (_ BitVec 32) (_ BitVec 64))) (size!36099 (_ BitVec 32))) )
))
(declare-fun lt!503905 () array!73830)

(declare-fun minValue!944 () V!43131)

(declare-fun lt!503902 () array!73828)

(declare-fun getCurrentListMapNoExtraKeys!4524 (array!73830 array!73828 (_ BitVec 32) (_ BitVec 32) V!43131 V!43131 (_ BitVec 32) Int) ListLongMap!16119)

(assert (=> b!1133886 (= lt!503907 (getCurrentListMapNoExtraKeys!4524 lt!503905 lt!503902 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun dynLambda!2592 (Int (_ BitVec 64)) V!43131)

(assert (=> b!1133886 (= lt!503902 (array!73829 (store (arr!35561 _values!996) i!673 (ValueCellFull!13542 (dynLambda!2592 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!36098 _values!996)))))

(declare-fun _keys!1208 () array!73830)

(declare-fun lt!503906 () ListLongMap!16119)

(assert (=> b!1133886 (= lt!503906 (getCurrentListMapNoExtraKeys!4524 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1133887 () Bool)

(declare-fun e!645369 () Bool)

(declare-fun e!645366 () Bool)

(assert (=> b!1133887 (= e!645369 e!645366)))

(declare-fun res!757116 () Bool)

(assert (=> b!1133887 (=> res!757116 e!645366)))

(declare-fun lt!503909 () ListLongMap!16119)

(declare-fun k0!934 () (_ BitVec 64))

(declare-fun contains!6566 (ListLongMap!16119 (_ BitVec 64)) Bool)

(assert (=> b!1133887 (= res!757116 (not (contains!6566 lt!503909 k0!934)))))

(assert (=> b!1133887 (= lt!503909 (getCurrentListMapNoExtraKeys!4524 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1133888 () Bool)

(declare-fun res!757127 () Bool)

(declare-fun e!645365 () Bool)

(assert (=> b!1133888 (=> (not res!757127) (not e!645365))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!73830 (_ BitVec 32)) Bool)

(assert (=> b!1133888 (= res!757127 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun bm!49215 () Bool)

(declare-fun call!49219 () ListLongMap!16119)

(assert (=> bm!49215 (= call!49219 (getCurrentListMapNoExtraKeys!4524 lt!503905 lt!503902 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun call!49218 () ListLongMap!16119)

(declare-fun b!1133889 () Bool)

(declare-fun e!645360 () Bool)

(declare-fun -!1192 (ListLongMap!16119 (_ BitVec 64)) ListLongMap!16119)

(assert (=> b!1133889 (= e!645360 (= call!49219 (-!1192 call!49218 k0!934)))))

(declare-fun c!110651 () Bool)

(declare-fun bm!49216 () Bool)

(declare-fun c!110650 () Bool)

(declare-fun addStillContains!733 (ListLongMap!16119 (_ BitVec 64) V!43131 (_ BitVec 64)) Unit!37095)

(assert (=> bm!49216 (= call!49221 (addStillContains!733 lt!503909 (ite (or c!110650 c!110651) #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000) (ite (or c!110650 c!110651) zeroValue!944 minValue!944) k0!934))))

(declare-fun mapIsEmpty!44579 () Bool)

(assert (=> mapIsEmpty!44579 mapRes!44579))

(declare-fun b!1133890 () Bool)

(declare-fun e!645362 () Unit!37095)

(declare-fun e!645355 () Unit!37095)

(assert (=> b!1133890 (= e!645362 e!645355)))

(declare-fun lt!503898 () Bool)

(assert (=> b!1133890 (= c!110651 (and (not lt!503898) (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun call!49220 () ListLongMap!16119)

(declare-fun bm!49217 () Bool)

(declare-fun +!3434 (ListLongMap!16119 tuple2!18138) ListLongMap!16119)

(assert (=> bm!49217 (= call!49220 (+!3434 lt!503909 (ite (or c!110650 c!110651) (tuple2!18139 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!18139 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944))))))

(declare-fun b!1133891 () Bool)

(declare-fun e!645368 () Bool)

(assert (=> b!1133891 (= e!645365 e!645368)))

(declare-fun res!757122 () Bool)

(assert (=> b!1133891 (=> (not res!757122) (not e!645368))))

(assert (=> b!1133891 (= res!757122 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!503905 mask!1564))))

(assert (=> b!1133891 (= lt!503905 (array!73831 (store (arr!35562 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!36099 _keys!1208)))))

(declare-fun b!1133892 () Bool)

(declare-fun e!645356 () Unit!37095)

(declare-fun lt!503901 () Unit!37095)

(assert (=> b!1133892 (= e!645356 lt!503901)))

(assert (=> b!1133892 (= lt!503901 call!49224)))

(declare-fun call!49223 () Bool)

(assert (=> b!1133892 call!49223))

(declare-fun b!1133893 () Bool)

(declare-fun Unit!37097 () Unit!37095)

(assert (=> b!1133893 (= e!645356 Unit!37097)))

(declare-fun b!1133894 () Bool)

(declare-fun res!757114 () Bool)

(assert (=> b!1133894 (=> (not res!757114) (not e!645365))))

(assert (=> b!1133894 (= res!757114 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!36099 _keys!1208))))))

(declare-fun b!1133895 () Bool)

(declare-fun res!757125 () Bool)

(assert (=> b!1133895 (=> (not res!757125) (not e!645365))))

(declare-datatypes ((List!24951 0))(
  ( (Nil!24948) (Cons!24947 (h!26156 (_ BitVec 64)) (t!35923 List!24951)) )
))
(declare-fun arrayNoDuplicates!0 (array!73830 (_ BitVec 32) List!24951) Bool)

(assert (=> b!1133895 (= res!757125 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!24948))))

(declare-fun b!1133896 () Bool)

(declare-fun res!757113 () Bool)

(assert (=> b!1133896 (=> (not res!757113) (not e!645365))))

(assert (=> b!1133896 (= res!757113 (and (= (size!36098 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!36099 _keys!1208) (size!36098 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!44579 () Bool)

(declare-fun tp!84630 () Bool)

(declare-fun e!645357 () Bool)

(assert (=> mapNonEmpty!44579 (= mapRes!44579 (and tp!84630 e!645357))))

(declare-fun mapValue!44579 () ValueCell!13542)

(declare-fun mapRest!44579 () (Array (_ BitVec 32) ValueCell!13542))

(declare-fun mapKey!44579 () (_ BitVec 32))

(assert (=> mapNonEmpty!44579 (= (arr!35561 _values!996) (store mapRest!44579 mapKey!44579 mapValue!44579))))

(declare-fun b!1133897 () Bool)

(declare-fun res!757118 () Bool)

(assert (=> b!1133897 (=> (not res!757118) (not e!645365))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1133897 (= res!757118 (validKeyInArray!0 k0!934))))

(declare-fun b!1133898 () Bool)

(declare-fun tp_is_empty!28503 () Bool)

(assert (=> b!1133898 (= e!645358 tp_is_empty!28503)))

(declare-fun e!645361 () Bool)

(declare-fun b!1133899 () Bool)

(declare-fun arrayContainsKey!0 (array!73830 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1133899 (= e!645361 (arrayContainsKey!0 _keys!1208 k0!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun b!1133900 () Bool)

(declare-fun res!757117 () Bool)

(assert (=> b!1133900 (=> (not res!757117) (not e!645365))))

(assert (=> b!1133900 (= res!757117 (= (select (arr!35562 _keys!1208) i!673) k0!934))))

(declare-fun b!1133901 () Bool)

(declare-fun c!110649 () Bool)

(assert (=> b!1133901 (= c!110649 (and (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!503898))))

(assert (=> b!1133901 (= e!645355 e!645356)))

(declare-fun e!645364 () Bool)

(declare-fun b!1133902 () Bool)

(assert (=> b!1133902 (= e!645364 (arrayContainsKey!0 _keys!1208 k0!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun b!1133903 () Bool)

(assert (=> b!1133903 (= e!645361 (ite (= k0!934 #b0000000000000000000000000000000000000000000000000000000000000000) (not lt!503898) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun bm!49218 () Bool)

(declare-fun call!49217 () ListLongMap!16119)

(declare-fun lt!503903 () ListLongMap!16119)

(declare-fun call!49222 () Bool)

(assert (=> bm!49218 (= call!49222 (contains!6566 (ite c!110650 lt!503903 call!49217) k0!934))))

(declare-fun bm!49219 () Bool)

(assert (=> bm!49219 (= call!49218 (getCurrentListMapNoExtraKeys!4524 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1133904 () Bool)

(assert (=> b!1133904 (= e!645357 tp_is_empty!28503)))

(declare-fun b!1133905 () Bool)

(assert (=> b!1133905 (= e!645366 true)))

(assert (=> b!1133905 e!645364))

(declare-fun res!757115 () Bool)

(assert (=> b!1133905 (=> (not res!757115) (not e!645364))))

(assert (=> b!1133905 (= res!757115 e!645361)))

(declare-fun c!110648 () Bool)

(assert (=> b!1133905 (= c!110648 (and (not (= k0!934 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!934 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun lt!503910 () Unit!37095)

(declare-fun lemmaListMapContainsThenArrayContainsFrom!343 (array!73830 array!73828 (_ BitVec 32) (_ BitVec 32) V!43131 V!43131 (_ BitVec 64) (_ BitVec 32) Int) Unit!37095)

(assert (=> b!1133905 (= lt!503910 (lemmaListMapContainsThenArrayContainsFrom!343 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun lt!503900 () Unit!37095)

(assert (=> b!1133905 (= lt!503900 e!645362)))

(assert (=> b!1133905 (= c!110650 (and (not lt!503898) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> b!1133905 (= lt!503898 (= (bvand extraKeys!923 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(declare-fun res!757123 () Bool)

(assert (=> start!98404 (=> (not res!757123) (not e!645365))))

(assert (=> start!98404 (= res!757123 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!36099 _keys!1208))))))

(assert (=> start!98404 e!645365))

(assert (=> start!98404 tp_is_empty!28503))

(declare-fun array_inv!27140 (array!73830) Bool)

(assert (=> start!98404 (array_inv!27140 _keys!1208)))

(assert (=> start!98404 true))

(assert (=> start!98404 tp!84631))

(declare-fun array_inv!27141 (array!73828) Bool)

(assert (=> start!98404 (and (array_inv!27141 _values!996) e!645363)))

(declare-fun b!1133906 () Bool)

(assert (=> b!1133906 (= e!645360 (= call!49219 call!49218))))

(declare-fun b!1133907 () Bool)

(assert (=> b!1133907 (= e!645354 e!645369)))

(declare-fun res!757121 () Bool)

(assert (=> b!1133907 (=> res!757121 e!645369)))

(assert (=> b!1133907 (= res!757121 (not (= (select (arr!35562 _keys!1208) from!1455) k0!934)))))

(assert (=> b!1133907 e!645360))

(declare-fun c!110652 () Bool)

(assert (=> b!1133907 (= c!110652 (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673))))

(declare-fun lt!503904 () Unit!37095)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!450 (array!73830 array!73828 (_ BitVec 32) (_ BitVec 32) V!43131 V!43131 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!37095)

(assert (=> b!1133907 (= lt!503904 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!450 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1133908 () Bool)

(declare-fun lt!503897 () Unit!37095)

(assert (=> b!1133908 (= e!645362 lt!503897)))

(declare-fun lt!503896 () Unit!37095)

(assert (=> b!1133908 (= lt!503896 call!49221)))

(assert (=> b!1133908 (= lt!503903 call!49220)))

(assert (=> b!1133908 call!49222))

(assert (=> b!1133908 (= lt!503897 (addStillContains!733 lt!503903 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944 k0!934))))

(assert (=> b!1133908 (contains!6566 (+!3434 lt!503903 (tuple2!18139 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944)) k0!934)))

(declare-fun b!1133909 () Bool)

(declare-fun res!757124 () Bool)

(assert (=> b!1133909 (=> (not res!757124) (not e!645365))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1133909 (= res!757124 (validMask!0 mask!1564))))

(declare-fun bm!49220 () Bool)

(assert (=> bm!49220 (= call!49223 call!49222)))

(declare-fun bm!49221 () Bool)

(assert (=> bm!49221 (= call!49217 call!49220)))

(declare-fun b!1133910 () Bool)

(assert (=> b!1133910 (= e!645368 (not e!645367))))

(declare-fun res!757120 () Bool)

(assert (=> b!1133910 (=> res!757120 e!645367)))

(assert (=> b!1133910 (= res!757120 (bvsgt from!1455 i!673))))

(assert (=> b!1133910 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-fun lt!503899 () Unit!37095)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!73830 (_ BitVec 64) (_ BitVec 32)) Unit!37095)

(assert (=> b!1133910 (= lt!503899 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1133911 () Bool)

(assert (=> b!1133911 call!49223))

(declare-fun lt!503908 () Unit!37095)

(assert (=> b!1133911 (= lt!503908 call!49224)))

(assert (=> b!1133911 (= e!645355 lt!503908)))

(declare-fun b!1133912 () Bool)

(declare-fun res!757119 () Bool)

(assert (=> b!1133912 (=> (not res!757119) (not e!645368))))

(assert (=> b!1133912 (= res!757119 (arrayNoDuplicates!0 lt!503905 #b00000000000000000000000000000000 Nil!24948))))

(assert (= (and start!98404 res!757123) b!1133909))

(assert (= (and b!1133909 res!757124) b!1133896))

(assert (= (and b!1133896 res!757113) b!1133888))

(assert (= (and b!1133888 res!757127) b!1133895))

(assert (= (and b!1133895 res!757125) b!1133894))

(assert (= (and b!1133894 res!757114) b!1133897))

(assert (= (and b!1133897 res!757118) b!1133900))

(assert (= (and b!1133900 res!757117) b!1133891))

(assert (= (and b!1133891 res!757122) b!1133912))

(assert (= (and b!1133912 res!757119) b!1133910))

(assert (= (and b!1133910 (not res!757120)) b!1133886))

(assert (= (and b!1133886 (not res!757126)) b!1133907))

(assert (= (and b!1133907 c!110652) b!1133889))

(assert (= (and b!1133907 (not c!110652)) b!1133906))

(assert (= (or b!1133889 b!1133906) bm!49215))

(assert (= (or b!1133889 b!1133906) bm!49219))

(assert (= (and b!1133907 (not res!757121)) b!1133887))

(assert (= (and b!1133887 (not res!757116)) b!1133905))

(assert (= (and b!1133905 c!110650) b!1133908))

(assert (= (and b!1133905 (not c!110650)) b!1133890))

(assert (= (and b!1133890 c!110651) b!1133911))

(assert (= (and b!1133890 (not c!110651)) b!1133901))

(assert (= (and b!1133901 c!110649) b!1133892))

(assert (= (and b!1133901 (not c!110649)) b!1133893))

(assert (= (or b!1133911 b!1133892) bm!49214))

(assert (= (or b!1133911 b!1133892) bm!49221))

(assert (= (or b!1133911 b!1133892) bm!49220))

(assert (= (or b!1133908 bm!49220) bm!49218))

(assert (= (or b!1133908 bm!49214) bm!49216))

(assert (= (or b!1133908 bm!49221) bm!49217))

(assert (= (and b!1133905 c!110648) b!1133899))

(assert (= (and b!1133905 (not c!110648)) b!1133903))

(assert (= (and b!1133905 res!757115) b!1133902))

(assert (= (and b!1133885 condMapEmpty!44579) mapIsEmpty!44579))

(assert (= (and b!1133885 (not condMapEmpty!44579)) mapNonEmpty!44579))

(get-info :version)

(assert (= (and mapNonEmpty!44579 ((_ is ValueCellFull!13542) mapValue!44579)) b!1133904))

(assert (= (and b!1133885 ((_ is ValueCellFull!13542) mapDefault!44579)) b!1133898))

(assert (= start!98404 b!1133885))

(declare-fun b_lambda!19097 () Bool)

(assert (=> (not b_lambda!19097) (not b!1133886)))

(declare-fun t!35921 () Bool)

(declare-fun tb!8793 () Bool)

(assert (=> (and start!98404 (= defaultEntry!1004 defaultEntry!1004) t!35921) tb!8793))

(declare-fun result!18143 () Bool)

(assert (=> tb!8793 (= result!18143 tp_is_empty!28503)))

(assert (=> b!1133886 t!35921))

(declare-fun b_and!38811 () Bool)

(assert (= b_and!38809 (and (=> t!35921 result!18143) b_and!38811)))

(declare-fun m!1046879 () Bool)

(assert (=> b!1133905 m!1046879))

(declare-fun m!1046881 () Bool)

(assert (=> b!1133897 m!1046881))

(declare-fun m!1046883 () Bool)

(assert (=> mapNonEmpty!44579 m!1046883))

(declare-fun m!1046885 () Bool)

(assert (=> b!1133907 m!1046885))

(declare-fun m!1046887 () Bool)

(assert (=> b!1133907 m!1046887))

(declare-fun m!1046889 () Bool)

(assert (=> bm!49217 m!1046889))

(declare-fun m!1046891 () Bool)

(assert (=> bm!49215 m!1046891))

(declare-fun m!1046893 () Bool)

(assert (=> b!1133910 m!1046893))

(declare-fun m!1046895 () Bool)

(assert (=> b!1133910 m!1046895))

(declare-fun m!1046897 () Bool)

(assert (=> start!98404 m!1046897))

(declare-fun m!1046899 () Bool)

(assert (=> start!98404 m!1046899))

(declare-fun m!1046901 () Bool)

(assert (=> b!1133888 m!1046901))

(declare-fun m!1046903 () Bool)

(assert (=> bm!49218 m!1046903))

(declare-fun m!1046905 () Bool)

(assert (=> b!1133889 m!1046905))

(declare-fun m!1046907 () Bool)

(assert (=> b!1133900 m!1046907))

(declare-fun m!1046909 () Bool)

(assert (=> b!1133909 m!1046909))

(declare-fun m!1046911 () Bool)

(assert (=> b!1133887 m!1046911))

(declare-fun m!1046913 () Bool)

(assert (=> b!1133887 m!1046913))

(declare-fun m!1046915 () Bool)

(assert (=> b!1133912 m!1046915))

(declare-fun m!1046917 () Bool)

(assert (=> b!1133899 m!1046917))

(assert (=> bm!49219 m!1046913))

(declare-fun m!1046919 () Bool)

(assert (=> bm!49216 m!1046919))

(declare-fun m!1046921 () Bool)

(assert (=> b!1133895 m!1046921))

(declare-fun m!1046923 () Bool)

(assert (=> b!1133886 m!1046923))

(declare-fun m!1046925 () Bool)

(assert (=> b!1133886 m!1046925))

(declare-fun m!1046927 () Bool)

(assert (=> b!1133886 m!1046927))

(declare-fun m!1046929 () Bool)

(assert (=> b!1133886 m!1046929))

(assert (=> b!1133902 m!1046917))

(declare-fun m!1046931 () Bool)

(assert (=> b!1133891 m!1046931))

(declare-fun m!1046933 () Bool)

(assert (=> b!1133891 m!1046933))

(declare-fun m!1046935 () Bool)

(assert (=> b!1133908 m!1046935))

(declare-fun m!1046937 () Bool)

(assert (=> b!1133908 m!1046937))

(assert (=> b!1133908 m!1046937))

(declare-fun m!1046939 () Bool)

(assert (=> b!1133908 m!1046939))

(check-sat (not b!1133886) (not bm!49215) tp_is_empty!28503 (not b!1133912) (not b!1133889) (not b!1133905) (not b!1133910) b_and!38811 (not bm!49219) (not b!1133907) (not b!1133908) (not b!1133902) (not start!98404) (not mapNonEmpty!44579) (not b!1133887) (not bm!49218) (not b!1133909) (not b!1133897) (not b_next!23973) (not bm!49217) (not b!1133888) (not bm!49216) (not b_lambda!19097) (not b!1133899) (not b!1133895) (not b!1133891))
(check-sat b_and!38811 (not b_next!23973))
