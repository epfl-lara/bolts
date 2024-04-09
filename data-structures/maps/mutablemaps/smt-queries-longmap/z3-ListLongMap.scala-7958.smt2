; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!98626 () Bool)

(assert start!98626)

(declare-fun b_free!24195 () Bool)

(declare-fun b_next!24195 () Bool)

(assert (=> start!98626 (= b_free!24195 (not b_next!24195))))

(declare-fun tp!85296 () Bool)

(declare-fun b_and!39253 () Bool)

(assert (=> start!98626 (= tp!85296 b_and!39253)))

(declare-datatypes ((V!43427 0))(
  ( (V!43428 (val!14419 Int)) )
))
(declare-fun zeroValue!944 () V!43427)

(declare-fun bm!51878 () Bool)

(declare-fun k0!934 () (_ BitVec 64))

(declare-fun c!112566 () Bool)

(declare-datatypes ((tuple2!18340 0))(
  ( (tuple2!18341 (_1!9180 (_ BitVec 64)) (_2!9180 V!43427)) )
))
(declare-datatypes ((List!25139 0))(
  ( (Nil!25136) (Cons!25135 (h!26344 tuple2!18340) (t!36333 List!25139)) )
))
(declare-datatypes ((ListLongMap!16321 0))(
  ( (ListLongMap!16322 (toList!8176 List!25139)) )
))
(declare-fun lt!510288 () ListLongMap!16321)

(declare-fun minValue!944 () V!43427)

(declare-fun c!112562 () Bool)

(declare-fun lt!510281 () ListLongMap!16321)

(declare-datatypes ((Unit!37473 0))(
  ( (Unit!37474) )
))
(declare-fun call!51888 () Unit!37473)

(declare-fun addStillContains!817 (ListLongMap!16321 (_ BitVec 64) V!43427 (_ BitVec 64)) Unit!37473)

(assert (=> bm!51878 (= call!51888 (addStillContains!817 (ite c!112566 lt!510288 lt!510281) (ite c!112566 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!112562 #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000)) (ite c!112566 minValue!944 (ite c!112562 zeroValue!944 minValue!944)) k0!934))))

(declare-datatypes ((array!74258 0))(
  ( (array!74259 (arr!35776 (Array (_ BitVec 32) (_ BitVec 64))) (size!36313 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!74258)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-fun from!1455 () (_ BitVec 32))

(declare-datatypes ((ValueCell!13653 0))(
  ( (ValueCellFull!13653 (v!17057 V!43427)) (EmptyCell!13653) )
))
(declare-datatypes ((array!74260 0))(
  ( (array!74261 (arr!35777 (Array (_ BitVec 32) ValueCell!13653)) (size!36314 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!74260)

(declare-fun call!51886 () ListLongMap!16321)

(declare-fun bm!51879 () Bool)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun getCurrentListMapNoExtraKeys!4618 (array!74258 array!74260 (_ BitVec 32) (_ BitVec 32) V!43427 V!43427 (_ BitVec 32) Int) ListLongMap!16321)

(assert (=> bm!51879 (= call!51886 (getCurrentListMapNoExtraKeys!4618 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun bm!51880 () Bool)

(declare-fun call!51883 () ListLongMap!16321)

(declare-fun call!51882 () ListLongMap!16321)

(assert (=> bm!51880 (= call!51883 call!51882)))

(declare-fun mapIsEmpty!44912 () Bool)

(declare-fun mapRes!44912 () Bool)

(assert (=> mapIsEmpty!44912 mapRes!44912))

(declare-fun b!1143922 () Bool)

(declare-fun call!51885 () Bool)

(assert (=> b!1143922 call!51885))

(declare-fun lt!510287 () Unit!37473)

(declare-fun call!51884 () Unit!37473)

(assert (=> b!1143922 (= lt!510287 call!51884)))

(declare-fun e!650764 () Unit!37473)

(assert (=> b!1143922 (= e!650764 lt!510287)))

(declare-fun b!1143923 () Bool)

(declare-fun res!762116 () Bool)

(declare-fun e!650773 () Bool)

(assert (=> b!1143923 (=> (not res!762116) (not e!650773))))

(declare-datatypes ((List!25140 0))(
  ( (Nil!25137) (Cons!25136 (h!26345 (_ BitVec 64)) (t!36334 List!25140)) )
))
(declare-fun arrayNoDuplicates!0 (array!74258 (_ BitVec 32) List!25140) Bool)

(assert (=> b!1143923 (= res!762116 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!25137))))

(declare-fun b!1143924 () Bool)

(declare-fun e!650771 () Bool)

(assert (=> b!1143924 (= e!650771 (and (bvsge (bvadd #b00000000000000000000000000000001 from!1455) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 from!1455) (size!36313 _keys!1208))))))

(declare-fun lt!510290 () V!43427)

(declare-fun -!1269 (ListLongMap!16321 (_ BitVec 64)) ListLongMap!16321)

(declare-fun +!3520 (ListLongMap!16321 tuple2!18340) ListLongMap!16321)

(assert (=> b!1143924 (= (-!1269 (+!3520 lt!510281 (tuple2!18341 (select (arr!35776 _keys!1208) from!1455) lt!510290)) (select (arr!35776 _keys!1208) from!1455)) lt!510281)))

(declare-fun lt!510296 () Unit!37473)

(declare-fun addThenRemoveForNewKeyIsSame!124 (ListLongMap!16321 (_ BitVec 64) V!43427) Unit!37473)

(assert (=> b!1143924 (= lt!510296 (addThenRemoveForNewKeyIsSame!124 lt!510281 (select (arr!35776 _keys!1208) from!1455) lt!510290))))

(declare-fun lt!510295 () V!43427)

(declare-fun get!18210 (ValueCell!13653 V!43427) V!43427)

(assert (=> b!1143924 (= lt!510290 (get!18210 (select (arr!35777 _values!996) from!1455) lt!510295))))

(declare-fun lt!510286 () Unit!37473)

(declare-fun e!650774 () Unit!37473)

(assert (=> b!1143924 (= lt!510286 e!650774)))

(declare-fun c!112561 () Bool)

(declare-fun contains!6678 (ListLongMap!16321 (_ BitVec 64)) Bool)

(assert (=> b!1143924 (= c!112561 (contains!6678 lt!510281 k0!934))))

(assert (=> b!1143924 (= lt!510281 (getCurrentListMapNoExtraKeys!4618 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1143925 () Bool)

(declare-fun res!762105 () Bool)

(assert (=> b!1143925 (=> (not res!762105) (not e!650773))))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1143925 (= res!762105 (= (select (arr!35776 _keys!1208) i!673) k0!934))))

(declare-fun b!1143926 () Bool)

(declare-fun res!762106 () Bool)

(assert (=> b!1143926 (=> (not res!762106) (not e!650773))))

(assert (=> b!1143926 (= res!762106 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!36313 _keys!1208))))))

(declare-fun b!1143927 () Bool)

(declare-fun Unit!37475 () Unit!37473)

(assert (=> b!1143927 (= e!650774 Unit!37475)))

(declare-fun lt!510300 () Bool)

(assert (=> b!1143927 (= lt!510300 (= (bvand extraKeys!923 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(assert (=> b!1143927 (= c!112566 (and (not lt!510300) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun lt!510293 () Unit!37473)

(declare-fun e!650775 () Unit!37473)

(assert (=> b!1143927 (= lt!510293 e!650775)))

(declare-fun lt!510282 () Unit!37473)

(declare-fun lemmaListMapContainsThenArrayContainsFrom!412 (array!74258 array!74260 (_ BitVec 32) (_ BitVec 32) V!43427 V!43427 (_ BitVec 64) (_ BitVec 32) Int) Unit!37473)

(assert (=> b!1143927 (= lt!510282 (lemmaListMapContainsThenArrayContainsFrom!412 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun c!112564 () Bool)

(assert (=> b!1143927 (= c!112564 (and (not (= k0!934 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!934 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun res!762107 () Bool)

(declare-fun e!650776 () Bool)

(assert (=> b!1143927 (= res!762107 e!650776)))

(declare-fun e!650772 () Bool)

(assert (=> b!1143927 (=> (not res!762107) (not e!650772))))

(assert (=> b!1143927 e!650772))

(declare-fun lt!510283 () Unit!37473)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!74258 (_ BitVec 32) (_ BitVec 32)) Unit!37473)

(assert (=> b!1143927 (= lt!510283 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1208 #b00000000000000000000000000000000 from!1455))))

(assert (=> b!1143927 (arrayNoDuplicates!0 _keys!1208 from!1455 Nil!25137)))

(declare-fun lt!510285 () Unit!37473)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!74258 (_ BitVec 64) (_ BitVec 32) List!25140) Unit!37473)

(assert (=> b!1143927 (= lt!510285 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!1208 k0!934 from!1455 Nil!25137))))

(assert (=> b!1143927 false))

(declare-fun b!1143929 () Bool)

(declare-fun e!650768 () Bool)

(declare-fun e!650765 () Bool)

(assert (=> b!1143929 (= e!650768 e!650765)))

(declare-fun res!762113 () Bool)

(assert (=> b!1143929 (=> res!762113 e!650765)))

(assert (=> b!1143929 (= res!762113 (not (= from!1455 i!673)))))

(declare-fun lt!510292 () array!74260)

(declare-fun lt!510291 () array!74258)

(declare-fun lt!510294 () ListLongMap!16321)

(assert (=> b!1143929 (= lt!510294 (getCurrentListMapNoExtraKeys!4618 lt!510291 lt!510292 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(assert (=> b!1143929 (= lt!510292 (array!74261 (store (arr!35777 _values!996) i!673 (ValueCellFull!13653 lt!510295)) (size!36314 _values!996)))))

(declare-fun dynLambda!2663 (Int (_ BitVec 64)) V!43427)

(assert (=> b!1143929 (= lt!510295 (dynLambda!2663 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!510289 () ListLongMap!16321)

(assert (=> b!1143929 (= lt!510289 (getCurrentListMapNoExtraKeys!4618 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1143930 () Bool)

(declare-fun e!650763 () Bool)

(assert (=> b!1143930 (= e!650773 e!650763)))

(declare-fun res!762110 () Bool)

(assert (=> b!1143930 (=> (not res!762110) (not e!650763))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!74258 (_ BitVec 32)) Bool)

(assert (=> b!1143930 (= res!762110 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!510291 mask!1564))))

(assert (=> b!1143930 (= lt!510291 (array!74259 (store (arr!35776 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!36313 _keys!1208)))))

(declare-fun b!1143931 () Bool)

(declare-fun e!650767 () Bool)

(declare-fun e!650766 () Bool)

(assert (=> b!1143931 (= e!650767 (and e!650766 mapRes!44912))))

(declare-fun condMapEmpty!44912 () Bool)

(declare-fun mapDefault!44912 () ValueCell!13653)

(assert (=> b!1143931 (= condMapEmpty!44912 (= (arr!35777 _values!996) ((as const (Array (_ BitVec 32) ValueCell!13653)) mapDefault!44912)))))

(declare-fun b!1143932 () Bool)

(declare-fun e!650778 () Bool)

(declare-fun call!51887 () ListLongMap!16321)

(assert (=> b!1143932 (= e!650778 (= call!51887 (-!1269 call!51886 k0!934)))))

(declare-fun b!1143933 () Bool)

(declare-fun Unit!37476 () Unit!37473)

(assert (=> b!1143933 (= e!650764 Unit!37476)))

(declare-fun b!1143934 () Bool)

(declare-fun e!650770 () Unit!37473)

(assert (=> b!1143934 (= e!650770 e!650764)))

(declare-fun c!112563 () Bool)

(assert (=> b!1143934 (= c!112563 (and (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!510300))))

(declare-fun bm!51881 () Bool)

(assert (=> bm!51881 (= call!51887 (getCurrentListMapNoExtraKeys!4618 lt!510291 lt!510292 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1143935 () Bool)

(declare-fun Unit!37477 () Unit!37473)

(assert (=> b!1143935 (= e!650774 Unit!37477)))

(declare-fun b!1143936 () Bool)

(assert (=> b!1143936 (= e!650778 (= call!51887 call!51886))))

(declare-fun b!1143937 () Bool)

(declare-fun lt!510280 () Unit!37473)

(assert (=> b!1143937 (= e!650770 lt!510280)))

(assert (=> b!1143937 (= lt!510280 call!51884)))

(assert (=> b!1143937 call!51885))

(declare-fun b!1143938 () Bool)

(assert (=> b!1143938 (= e!650776 (ite (= k0!934 #b0000000000000000000000000000000000000000000000000000000000000000) (not lt!510300) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!1143939 () Bool)

(assert (=> b!1143939 (= e!650763 (not e!650768))))

(declare-fun res!762114 () Bool)

(assert (=> b!1143939 (=> res!762114 e!650768)))

(assert (=> b!1143939 (= res!762114 (bvsgt from!1455 i!673))))

(declare-fun arrayContainsKey!0 (array!74258 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1143939 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-fun lt!510284 () Unit!37473)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!74258 (_ BitVec 64) (_ BitVec 32)) Unit!37473)

(assert (=> b!1143939 (= lt!510284 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1143940 () Bool)

(declare-fun res!762108 () Bool)

(assert (=> b!1143940 (=> (not res!762108) (not e!650773))))

(assert (=> b!1143940 (= res!762108 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun bm!51882 () Bool)

(assert (=> bm!51882 (= call!51882 (+!3520 (ite c!112566 lt!510288 lt!510281) (ite c!112566 (tuple2!18341 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944) (ite c!112562 (tuple2!18341 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!18341 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944)))))))

(declare-fun mapNonEmpty!44912 () Bool)

(declare-fun tp!85297 () Bool)

(declare-fun e!650777 () Bool)

(assert (=> mapNonEmpty!44912 (= mapRes!44912 (and tp!85297 e!650777))))

(declare-fun mapValue!44912 () ValueCell!13653)

(declare-fun mapRest!44912 () (Array (_ BitVec 32) ValueCell!13653))

(declare-fun mapKey!44912 () (_ BitVec 32))

(assert (=> mapNonEmpty!44912 (= (arr!35777 _values!996) (store mapRest!44912 mapKey!44912 mapValue!44912))))

(declare-fun bm!51883 () Bool)

(assert (=> bm!51883 (= call!51884 call!51888)))

(declare-fun res!762115 () Bool)

(assert (=> start!98626 (=> (not res!762115) (not e!650773))))

(assert (=> start!98626 (= res!762115 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!36313 _keys!1208))))))

(assert (=> start!98626 e!650773))

(declare-fun tp_is_empty!28725 () Bool)

(assert (=> start!98626 tp_is_empty!28725))

(declare-fun array_inv!27290 (array!74258) Bool)

(assert (=> start!98626 (array_inv!27290 _keys!1208)))

(assert (=> start!98626 true))

(assert (=> start!98626 tp!85296))

(declare-fun array_inv!27291 (array!74260) Bool)

(assert (=> start!98626 (and (array_inv!27291 _values!996) e!650767)))

(declare-fun b!1143928 () Bool)

(assert (=> b!1143928 (= c!112562 (and (not lt!510300) (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(assert (=> b!1143928 (= e!650775 e!650770)))

(declare-fun b!1143941 () Bool)

(declare-fun res!762111 () Bool)

(assert (=> b!1143941 (=> (not res!762111) (not e!650773))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1143941 (= res!762111 (validMask!0 mask!1564))))

(declare-fun b!1143942 () Bool)

(declare-fun res!762103 () Bool)

(assert (=> b!1143942 (=> (not res!762103) (not e!650773))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1143942 (= res!762103 (validKeyInArray!0 k0!934))))

(declare-fun b!1143943 () Bool)

(declare-fun res!762104 () Bool)

(assert (=> b!1143943 (=> (not res!762104) (not e!650773))))

(assert (=> b!1143943 (= res!762104 (and (= (size!36314 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!36313 _keys!1208) (size!36314 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun bm!51884 () Bool)

(declare-fun call!51881 () Bool)

(assert (=> bm!51884 (= call!51881 (contains!6678 (ite c!112566 lt!510288 call!51883) k0!934))))

(declare-fun b!1143944 () Bool)

(assert (=> b!1143944 (= e!650765 e!650771)))

(declare-fun res!762112 () Bool)

(assert (=> b!1143944 (=> res!762112 e!650771)))

(assert (=> b!1143944 (= res!762112 (not (= (select (arr!35776 _keys!1208) from!1455) k0!934)))))

(assert (=> b!1143944 e!650778))

(declare-fun c!112565 () Bool)

(assert (=> b!1143944 (= c!112565 (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673))))

(declare-fun lt!510298 () Unit!37473)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!524 (array!74258 array!74260 (_ BitVec 32) (_ BitVec 32) V!43427 V!43427 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!37473)

(assert (=> b!1143944 (= lt!510298 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!524 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1143945 () Bool)

(assert (=> b!1143945 (= e!650766 tp_is_empty!28725)))

(declare-fun b!1143946 () Bool)

(assert (=> b!1143946 (= e!650776 (arrayContainsKey!0 _keys!1208 k0!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun b!1143947 () Bool)

(assert (=> b!1143947 (contains!6678 call!51882 k0!934)))

(declare-fun lt!510299 () Unit!37473)

(assert (=> b!1143947 (= lt!510299 call!51888)))

(assert (=> b!1143947 call!51881))

(assert (=> b!1143947 (= lt!510288 (+!3520 lt!510281 (tuple2!18341 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944)))))

(declare-fun lt!510297 () Unit!37473)

(assert (=> b!1143947 (= lt!510297 (addStillContains!817 lt!510281 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944 k0!934))))

(assert (=> b!1143947 (= e!650775 lt!510299)))

(declare-fun b!1143948 () Bool)

(declare-fun res!762109 () Bool)

(assert (=> b!1143948 (=> (not res!762109) (not e!650763))))

(assert (=> b!1143948 (= res!762109 (arrayNoDuplicates!0 lt!510291 #b00000000000000000000000000000000 Nil!25137))))

(declare-fun b!1143949 () Bool)

(assert (=> b!1143949 (= e!650772 (arrayContainsKey!0 _keys!1208 k0!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun b!1143950 () Bool)

(assert (=> b!1143950 (= e!650777 tp_is_empty!28725)))

(declare-fun bm!51885 () Bool)

(assert (=> bm!51885 (= call!51885 call!51881)))

(assert (= (and start!98626 res!762115) b!1143941))

(assert (= (and b!1143941 res!762111) b!1143943))

(assert (= (and b!1143943 res!762104) b!1143940))

(assert (= (and b!1143940 res!762108) b!1143923))

(assert (= (and b!1143923 res!762116) b!1143926))

(assert (= (and b!1143926 res!762106) b!1143942))

(assert (= (and b!1143942 res!762103) b!1143925))

(assert (= (and b!1143925 res!762105) b!1143930))

(assert (= (and b!1143930 res!762110) b!1143948))

(assert (= (and b!1143948 res!762109) b!1143939))

(assert (= (and b!1143939 (not res!762114)) b!1143929))

(assert (= (and b!1143929 (not res!762113)) b!1143944))

(assert (= (and b!1143944 c!112565) b!1143932))

(assert (= (and b!1143944 (not c!112565)) b!1143936))

(assert (= (or b!1143932 b!1143936) bm!51881))

(assert (= (or b!1143932 b!1143936) bm!51879))

(assert (= (and b!1143944 (not res!762112)) b!1143924))

(assert (= (and b!1143924 c!112561) b!1143927))

(assert (= (and b!1143924 (not c!112561)) b!1143935))

(assert (= (and b!1143927 c!112566) b!1143947))

(assert (= (and b!1143927 (not c!112566)) b!1143928))

(assert (= (and b!1143928 c!112562) b!1143937))

(assert (= (and b!1143928 (not c!112562)) b!1143934))

(assert (= (and b!1143934 c!112563) b!1143922))

(assert (= (and b!1143934 (not c!112563)) b!1143933))

(assert (= (or b!1143937 b!1143922) bm!51883))

(assert (= (or b!1143937 b!1143922) bm!51880))

(assert (= (or b!1143937 b!1143922) bm!51885))

(assert (= (or b!1143947 bm!51885) bm!51884))

(assert (= (or b!1143947 bm!51883) bm!51878))

(assert (= (or b!1143947 bm!51880) bm!51882))

(assert (= (and b!1143927 c!112564) b!1143946))

(assert (= (and b!1143927 (not c!112564)) b!1143938))

(assert (= (and b!1143927 res!762107) b!1143949))

(assert (= (and b!1143931 condMapEmpty!44912) mapIsEmpty!44912))

(assert (= (and b!1143931 (not condMapEmpty!44912)) mapNonEmpty!44912))

(get-info :version)

(assert (= (and mapNonEmpty!44912 ((_ is ValueCellFull!13653) mapValue!44912)) b!1143950))

(assert (= (and b!1143931 ((_ is ValueCellFull!13653) mapDefault!44912)) b!1143945))

(assert (= start!98626 b!1143931))

(declare-fun b_lambda!19319 () Bool)

(assert (=> (not b_lambda!19319) (not b!1143929)))

(declare-fun t!36332 () Bool)

(declare-fun tb!9015 () Bool)

(assert (=> (and start!98626 (= defaultEntry!1004 defaultEntry!1004) t!36332) tb!9015))

(declare-fun result!18587 () Bool)

(assert (=> tb!9015 (= result!18587 tp_is_empty!28725)))

(assert (=> b!1143929 t!36332))

(declare-fun b_and!39255 () Bool)

(assert (= b_and!39253 (and (=> t!36332 result!18587) b_and!39255)))

(declare-fun m!1055053 () Bool)

(assert (=> b!1143947 m!1055053))

(declare-fun m!1055055 () Bool)

(assert (=> b!1143947 m!1055055))

(declare-fun m!1055057 () Bool)

(assert (=> b!1143947 m!1055057))

(declare-fun m!1055059 () Bool)

(assert (=> b!1143948 m!1055059))

(declare-fun m!1055061 () Bool)

(assert (=> bm!51882 m!1055061))

(declare-fun m!1055063 () Bool)

(assert (=> b!1143930 m!1055063))

(declare-fun m!1055065 () Bool)

(assert (=> b!1143930 m!1055065))

(declare-fun m!1055067 () Bool)

(assert (=> start!98626 m!1055067))

(declare-fun m!1055069 () Bool)

(assert (=> start!98626 m!1055069))

(declare-fun m!1055071 () Bool)

(assert (=> b!1143923 m!1055071))

(declare-fun m!1055073 () Bool)

(assert (=> b!1143940 m!1055073))

(declare-fun m!1055075 () Bool)

(assert (=> b!1143929 m!1055075))

(declare-fun m!1055077 () Bool)

(assert (=> b!1143929 m!1055077))

(declare-fun m!1055079 () Bool)

(assert (=> b!1143929 m!1055079))

(declare-fun m!1055081 () Bool)

(assert (=> b!1143929 m!1055081))

(declare-fun m!1055083 () Bool)

(assert (=> b!1143925 m!1055083))

(declare-fun m!1055085 () Bool)

(assert (=> b!1143944 m!1055085))

(declare-fun m!1055087 () Bool)

(assert (=> b!1143944 m!1055087))

(declare-fun m!1055089 () Bool)

(assert (=> bm!51879 m!1055089))

(declare-fun m!1055091 () Bool)

(assert (=> bm!51884 m!1055091))

(declare-fun m!1055093 () Bool)

(assert (=> b!1143949 m!1055093))

(declare-fun m!1055095 () Bool)

(assert (=> bm!51878 m!1055095))

(assert (=> b!1143946 m!1055093))

(declare-fun m!1055097 () Bool)

(assert (=> mapNonEmpty!44912 m!1055097))

(declare-fun m!1055099 () Bool)

(assert (=> b!1143939 m!1055099))

(declare-fun m!1055101 () Bool)

(assert (=> b!1143939 m!1055101))

(declare-fun m!1055103 () Bool)

(assert (=> b!1143932 m!1055103))

(declare-fun m!1055105 () Bool)

(assert (=> bm!51881 m!1055105))

(declare-fun m!1055107 () Bool)

(assert (=> b!1143927 m!1055107))

(declare-fun m!1055109 () Bool)

(assert (=> b!1143927 m!1055109))

(declare-fun m!1055111 () Bool)

(assert (=> b!1143927 m!1055111))

(declare-fun m!1055113 () Bool)

(assert (=> b!1143927 m!1055113))

(declare-fun m!1055115 () Bool)

(assert (=> b!1143941 m!1055115))

(assert (=> b!1143924 m!1055089))

(declare-fun m!1055117 () Bool)

(assert (=> b!1143924 m!1055117))

(assert (=> b!1143924 m!1055085))

(declare-fun m!1055119 () Bool)

(assert (=> b!1143924 m!1055119))

(declare-fun m!1055121 () Bool)

(assert (=> b!1143924 m!1055121))

(assert (=> b!1143924 m!1055085))

(declare-fun m!1055123 () Bool)

(assert (=> b!1143924 m!1055123))

(assert (=> b!1143924 m!1055121))

(declare-fun m!1055125 () Bool)

(assert (=> b!1143924 m!1055125))

(assert (=> b!1143924 m!1055117))

(assert (=> b!1143924 m!1055085))

(declare-fun m!1055127 () Bool)

(assert (=> b!1143924 m!1055127))

(declare-fun m!1055129 () Bool)

(assert (=> b!1143942 m!1055129))

(check-sat (not b!1143941) (not mapNonEmpty!44912) (not b!1143942) (not b!1143940) (not start!98626) (not b!1143924) (not bm!51882) (not bm!51879) tp_is_empty!28725 (not bm!51881) (not b!1143930) b_and!39255 (not b!1143949) (not b!1143929) (not b!1143947) (not b!1143927) (not b_next!24195) (not b!1143923) (not b_lambda!19319) (not b!1143946) (not bm!51884) (not b!1143948) (not bm!51878) (not b!1143932) (not b!1143939) (not b!1143944))
(check-sat b_and!39255 (not b_next!24195))
