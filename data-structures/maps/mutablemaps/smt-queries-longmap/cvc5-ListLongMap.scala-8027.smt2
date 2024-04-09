; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!99038 () Bool)

(assert start!99038)

(declare-fun b_free!24607 () Bool)

(declare-fun b_next!24607 () Bool)

(assert (=> start!99038 (= b_free!24607 (not b_next!24607))))

(declare-fun tp!86533 () Bool)

(declare-fun b_and!40077 () Bool)

(assert (=> start!99038 (= tp!86533 b_and!40077)))

(declare-fun mapIsEmpty!45530 () Bool)

(declare-fun mapRes!45530 () Bool)

(assert (=> mapIsEmpty!45530 mapRes!45530))

(declare-fun e!661271 () Bool)

(declare-datatypes ((array!75064 0))(
  ( (array!75065 (arr!36179 (Array (_ BitVec 32) (_ BitVec 64))) (size!36716 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!75064)

(declare-fun k!934 () (_ BitVec 64))

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun b!1162870 () Bool)

(declare-fun arrayContainsKey!0 (array!75064 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1162870 (= e!661271 (arrayContainsKey!0 _keys!1208 k!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun b!1162871 () Bool)

(declare-fun e!661281 () Bool)

(assert (=> b!1162871 (= e!661281 (arrayContainsKey!0 _keys!1208 k!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun lt!523727 () Bool)

(declare-fun b!1162872 () Bool)

(declare-fun extraKeys!923 () (_ BitVec 32))

(assert (=> b!1162872 (= e!661281 (ite (= k!934 #b0000000000000000000000000000000000000000000000000000000000000000) (not lt!523727) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun c!116269 () Bool)

(declare-datatypes ((V!43977 0))(
  ( (V!43978 (val!14625 Int)) )
))
(declare-fun minValue!944 () V!43977)

(declare-datatypes ((tuple2!18720 0))(
  ( (tuple2!18721 (_1!9370 (_ BitVec 64)) (_2!9370 V!43977)) )
))
(declare-datatypes ((List!25496 0))(
  ( (Nil!25493) (Cons!25492 (h!26701 tuple2!18720) (t!37102 List!25496)) )
))
(declare-datatypes ((ListLongMap!16701 0))(
  ( (ListLongMap!16702 (toList!8366 List!25496)) )
))
(declare-fun call!56831 () ListLongMap!16701)

(declare-fun zeroValue!944 () V!43977)

(declare-fun bm!56822 () Bool)

(declare-fun lt!523724 () ListLongMap!16701)

(declare-fun c!116274 () Bool)

(declare-fun +!3687 (ListLongMap!16701 tuple2!18720) ListLongMap!16701)

(assert (=> bm!56822 (= call!56831 (+!3687 lt!523724 (ite (or c!116269 c!116274) (tuple2!18721 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!18721 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944))))))

(declare-fun b!1162873 () Bool)

(declare-fun res!771372 () Bool)

(declare-fun e!661280 () Bool)

(assert (=> b!1162873 (=> (not res!771372) (not e!661280))))

(declare-datatypes ((List!25497 0))(
  ( (Nil!25494) (Cons!25493 (h!26702 (_ BitVec 64)) (t!37103 List!25497)) )
))
(declare-fun arrayNoDuplicates!0 (array!75064 (_ BitVec 32) List!25497) Bool)

(assert (=> b!1162873 (= res!771372 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!25494))))

(declare-fun b!1162874 () Bool)

(declare-fun res!771373 () Bool)

(assert (=> b!1162874 (=> (not res!771373) (not e!661280))))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1162874 (= res!771373 (validMask!0 mask!1564))))

(declare-fun b!1162875 () Bool)

(declare-fun res!771379 () Bool)

(declare-fun e!661275 () Bool)

(assert (=> b!1162875 (=> (not res!771379) (not e!661275))))

(declare-fun lt!523710 () array!75064)

(assert (=> b!1162875 (= res!771379 (arrayNoDuplicates!0 lt!523710 #b00000000000000000000000000000000 Nil!25494))))

(declare-fun b!1162876 () Bool)

(declare-fun lt!523713 () ListLongMap!16701)

(declare-fun contains!6844 (ListLongMap!16701 (_ BitVec 64)) Bool)

(assert (=> b!1162876 (contains!6844 (+!3687 lt!523713 (tuple2!18721 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944)) k!934)))

(declare-datatypes ((Unit!38267 0))(
  ( (Unit!38268) )
))
(declare-fun lt!523717 () Unit!38267)

(declare-fun call!56828 () Unit!38267)

(assert (=> b!1162876 (= lt!523717 call!56828)))

(declare-fun call!56825 () Bool)

(assert (=> b!1162876 call!56825))

(assert (=> b!1162876 (= lt!523713 call!56831)))

(declare-fun lt!523722 () Unit!38267)

(declare-fun addStillContains!985 (ListLongMap!16701 (_ BitVec 64) V!43977 (_ BitVec 64)) Unit!38267)

(assert (=> b!1162876 (= lt!523722 (addStillContains!985 lt!523724 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944 k!934))))

(declare-fun e!661267 () Unit!38267)

(assert (=> b!1162876 (= e!661267 lt!523717)))

(declare-fun b!1162877 () Bool)

(declare-fun res!771382 () Bool)

(assert (=> b!1162877 (=> (not res!771382) (not e!661280))))

(declare-datatypes ((ValueCell!13859 0))(
  ( (ValueCellFull!13859 (v!17263 V!43977)) (EmptyCell!13859) )
))
(declare-datatypes ((array!75066 0))(
  ( (array!75067 (arr!36180 (Array (_ BitVec 32) ValueCell!13859)) (size!36717 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!75066)

(assert (=> b!1162877 (= res!771382 (and (= (size!36717 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!36716 _keys!1208) (size!36717 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1162878 () Bool)

(declare-fun e!661276 () Unit!38267)

(declare-fun e!661270 () Unit!38267)

(assert (=> b!1162878 (= e!661276 e!661270)))

(declare-fun c!116273 () Bool)

(assert (=> b!1162878 (= c!116273 (and (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!523727))))

(declare-fun b!1162879 () Bool)

(declare-fun e!661279 () Bool)

(declare-fun e!661265 () Bool)

(assert (=> b!1162879 (= e!661279 e!661265)))

(declare-fun res!771369 () Bool)

(assert (=> b!1162879 (=> res!771369 e!661265)))

(assert (=> b!1162879 (= res!771369 (not (= (select (arr!36179 _keys!1208) from!1455) k!934)))))

(declare-fun e!661277 () Bool)

(assert (=> b!1162879 e!661277))

(declare-fun c!116270 () Bool)

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1162879 (= c!116270 (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673))))

(declare-fun lt!523726 () Unit!38267)

(declare-fun defaultEntry!1004 () Int)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!656 (array!75064 array!75066 (_ BitVec 32) (_ BitVec 32) V!43977 V!43977 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!38267)

(assert (=> b!1162879 (= lt!523726 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!656 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun bm!56823 () Bool)

(assert (=> bm!56823 (= call!56828 (addStillContains!985 (ite c!116269 lt!523713 lt!523724) (ite c!116269 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!116274 #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000)) (ite c!116269 minValue!944 (ite c!116274 zeroValue!944 minValue!944)) k!934))))

(declare-fun b!1162880 () Bool)

(declare-fun e!661272 () Bool)

(assert (=> b!1162880 (= e!661275 (not e!661272))))

(declare-fun res!771375 () Bool)

(assert (=> b!1162880 (=> res!771375 e!661272)))

(assert (=> b!1162880 (= res!771375 (bvsgt from!1455 i!673))))

(assert (=> b!1162880 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-fun lt!523719 () Unit!38267)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!75064 (_ BitVec 64) (_ BitVec 32)) Unit!38267)

(assert (=> b!1162880 (= lt!523719 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun b!1162881 () Bool)

(declare-fun res!771383 () Bool)

(assert (=> b!1162881 (=> (not res!771383) (not e!661280))))

(assert (=> b!1162881 (= res!771383 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!36716 _keys!1208))))))

(declare-fun b!1162882 () Bool)

(declare-fun res!771371 () Bool)

(assert (=> b!1162882 (=> (not res!771371) (not e!661280))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1162882 (= res!771371 (validKeyInArray!0 k!934))))

(declare-fun bm!56824 () Bool)

(declare-fun call!56827 () Bool)

(assert (=> bm!56824 (= call!56827 call!56825)))

(declare-fun b!1162883 () Bool)

(declare-fun call!56829 () ListLongMap!16701)

(declare-fun call!56832 () ListLongMap!16701)

(assert (=> b!1162883 (= e!661277 (= call!56829 call!56832))))

(declare-fun b!1162884 () Bool)

(declare-fun res!771381 () Bool)

(assert (=> b!1162884 (=> (not res!771381) (not e!661280))))

(assert (=> b!1162884 (= res!771381 (= (select (arr!36179 _keys!1208) i!673) k!934))))

(declare-fun b!1162885 () Bool)

(assert (=> b!1162885 (= e!661272 e!661279)))

(declare-fun res!771374 () Bool)

(assert (=> b!1162885 (=> res!771374 e!661279)))

(assert (=> b!1162885 (= res!771374 (not (= from!1455 i!673)))))

(declare-fun lt!523718 () ListLongMap!16701)

(declare-fun lt!523712 () array!75066)

(declare-fun getCurrentListMapNoExtraKeys!4800 (array!75064 array!75066 (_ BitVec 32) (_ BitVec 32) V!43977 V!43977 (_ BitVec 32) Int) ListLongMap!16701)

(assert (=> b!1162885 (= lt!523718 (getCurrentListMapNoExtraKeys!4800 lt!523710 lt!523712 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun lt!523716 () V!43977)

(assert (=> b!1162885 (= lt!523712 (array!75067 (store (arr!36180 _values!996) i!673 (ValueCellFull!13859 lt!523716)) (size!36717 _values!996)))))

(declare-fun dynLambda!2798 (Int (_ BitVec 64)) V!43977)

(assert (=> b!1162885 (= lt!523716 (dynLambda!2798 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!523728 () ListLongMap!16701)

(assert (=> b!1162885 (= lt!523728 (getCurrentListMapNoExtraKeys!4800 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun bm!56825 () Bool)

(declare-fun call!56830 () Unit!38267)

(assert (=> bm!56825 (= call!56830 call!56828)))

(declare-fun bm!56826 () Bool)

(declare-fun call!56826 () ListLongMap!16701)

(assert (=> bm!56826 (= call!56826 call!56831)))

(declare-fun b!1162886 () Bool)

(declare-fun e!661268 () Unit!38267)

(declare-fun Unit!38269 () Unit!38267)

(assert (=> b!1162886 (= e!661268 Unit!38269)))

(declare-fun b!1162887 () Bool)

(declare-fun lt!523731 () Unit!38267)

(assert (=> b!1162887 (= e!661276 lt!523731)))

(assert (=> b!1162887 (= lt!523731 call!56830)))

(assert (=> b!1162887 call!56827))

(declare-fun b!1162888 () Bool)

(assert (=> b!1162888 (= e!661280 e!661275)))

(declare-fun res!771376 () Bool)

(assert (=> b!1162888 (=> (not res!771376) (not e!661275))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!75064 (_ BitVec 32)) Bool)

(assert (=> b!1162888 (= res!771376 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!523710 mask!1564))))

(assert (=> b!1162888 (= lt!523710 (array!75065 (store (arr!36179 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!36716 _keys!1208)))))

(declare-fun bm!56827 () Bool)

(assert (=> bm!56827 (= call!56832 (getCurrentListMapNoExtraKeys!4800 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1162889 () Bool)

(assert (=> b!1162889 call!56827))

(declare-fun lt!523730 () Unit!38267)

(assert (=> b!1162889 (= lt!523730 call!56830)))

(assert (=> b!1162889 (= e!661270 lt!523730)))

(declare-fun b!1162890 () Bool)

(declare-fun e!661266 () Bool)

(declare-fun tp_is_empty!29137 () Bool)

(assert (=> b!1162890 (= e!661266 tp_is_empty!29137)))

(declare-fun bm!56828 () Bool)

(assert (=> bm!56828 (= call!56829 (getCurrentListMapNoExtraKeys!4800 lt!523710 lt!523712 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1162891 () Bool)

(declare-fun Unit!38270 () Unit!38267)

(assert (=> b!1162891 (= e!661268 Unit!38270)))

(assert (=> b!1162891 (= lt!523727 (= (bvand extraKeys!923 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(assert (=> b!1162891 (= c!116269 (and (not lt!523727) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun lt!523725 () Unit!38267)

(assert (=> b!1162891 (= lt!523725 e!661267)))

(declare-fun lt!523714 () Unit!38267)

(declare-fun lemmaListMapContainsThenArrayContainsFrom!554 (array!75064 array!75066 (_ BitVec 32) (_ BitVec 32) V!43977 V!43977 (_ BitVec 64) (_ BitVec 32) Int) Unit!38267)

(assert (=> b!1162891 (= lt!523714 (lemmaListMapContainsThenArrayContainsFrom!554 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun c!116272 () Bool)

(assert (=> b!1162891 (= c!116272 (and (not (= k!934 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!934 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun res!771380 () Bool)

(assert (=> b!1162891 (= res!771380 e!661281)))

(assert (=> b!1162891 (=> (not res!771380) (not e!661271))))

(assert (=> b!1162891 e!661271))

(declare-fun lt!523729 () Unit!38267)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!75064 (_ BitVec 32) (_ BitVec 32)) Unit!38267)

(assert (=> b!1162891 (= lt!523729 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1208 #b00000000000000000000000000000000 from!1455))))

(assert (=> b!1162891 (arrayNoDuplicates!0 _keys!1208 from!1455 Nil!25494)))

(declare-fun lt!523715 () Unit!38267)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!75064 (_ BitVec 64) (_ BitVec 32) List!25497) Unit!38267)

(assert (=> b!1162891 (= lt!523715 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!1208 k!934 from!1455 Nil!25494))))

(assert (=> b!1162891 false))

(declare-fun b!1162892 () Bool)

(declare-fun e!661278 () Bool)

(assert (=> b!1162892 (= e!661278 tp_is_empty!29137)))

(declare-fun b!1162893 () Bool)

(declare-fun e!661274 () Bool)

(assert (=> b!1162893 (= e!661274 (and e!661278 mapRes!45530))))

(declare-fun condMapEmpty!45530 () Bool)

(declare-fun mapDefault!45530 () ValueCell!13859)

