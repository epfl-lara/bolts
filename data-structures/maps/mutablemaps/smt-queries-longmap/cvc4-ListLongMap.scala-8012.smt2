; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!98952 () Bool)

(assert start!98952)

(declare-fun b_free!24521 () Bool)

(declare-fun b_next!24521 () Bool)

(assert (=> start!98952 (= b_free!24521 (not b_next!24521))))

(declare-fun tp!86274 () Bool)

(declare-fun b_and!39905 () Bool)

(assert (=> start!98952 (= tp!86274 b_and!39905)))

(declare-fun b!1158914 () Bool)

(declare-fun e!659075 () Bool)

(assert (=> b!1158914 (= e!659075 true)))

(declare-fun e!659085 () Bool)

(assert (=> b!1158914 e!659085))

(declare-fun res!769437 () Bool)

(assert (=> b!1158914 (=> (not res!769437) (not e!659085))))

(declare-datatypes ((V!43861 0))(
  ( (V!43862 (val!14582 Int)) )
))
(declare-datatypes ((tuple2!18634 0))(
  ( (tuple2!18635 (_1!9327 (_ BitVec 64)) (_2!9327 V!43861)) )
))
(declare-datatypes ((List!25412 0))(
  ( (Nil!25409) (Cons!25408 (h!26617 tuple2!18634) (t!36932 List!25412)) )
))
(declare-datatypes ((ListLongMap!16615 0))(
  ( (ListLongMap!16616 (toList!8323 List!25412)) )
))
(declare-fun lt!520880 () ListLongMap!16615)

(declare-fun lt!520887 () ListLongMap!16615)

(assert (=> b!1158914 (= res!769437 (= lt!520880 lt!520887))))

(declare-fun lt!520885 () ListLongMap!16615)

(declare-fun k!934 () (_ BitVec 64))

(declare-fun -!1395 (ListLongMap!16615 (_ BitVec 64)) ListLongMap!16615)

(assert (=> b!1158914 (= lt!520880 (-!1395 lt!520885 k!934))))

(declare-datatypes ((array!74892 0))(
  ( (array!74893 (arr!36093 (Array (_ BitVec 32) (_ BitVec 64))) (size!36630 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!74892)

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun lt!520882 () V!43861)

(declare-fun +!3649 (ListLongMap!16615 tuple2!18634) ListLongMap!16615)

(assert (=> b!1158914 (= (-!1395 (+!3649 lt!520887 (tuple2!18635 (select (arr!36093 _keys!1208) from!1455) lt!520882)) (select (arr!36093 _keys!1208) from!1455)) lt!520887)))

(declare-datatypes ((Unit!38080 0))(
  ( (Unit!38081) )
))
(declare-fun lt!520889 () Unit!38080)

(declare-fun addThenRemoveForNewKeyIsSame!234 (ListLongMap!16615 (_ BitVec 64) V!43861) Unit!38080)

(assert (=> b!1158914 (= lt!520889 (addThenRemoveForNewKeyIsSame!234 lt!520887 (select (arr!36093 _keys!1208) from!1455) lt!520882))))

(declare-datatypes ((ValueCell!13816 0))(
  ( (ValueCellFull!13816 (v!17220 V!43861)) (EmptyCell!13816) )
))
(declare-datatypes ((array!74894 0))(
  ( (array!74895 (arr!36094 (Array (_ BitVec 32) ValueCell!13816)) (size!36631 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!74894)

(declare-fun lt!520874 () V!43861)

(declare-fun get!18428 (ValueCell!13816 V!43861) V!43861)

(assert (=> b!1158914 (= lt!520882 (get!18428 (select (arr!36094 _values!996) from!1455) lt!520874))))

(declare-fun lt!520877 () Unit!38080)

(declare-fun e!659088 () Unit!38080)

(assert (=> b!1158914 (= lt!520877 e!659088)))

(declare-fun c!115495 () Bool)

(declare-fun contains!6805 (ListLongMap!16615 (_ BitVec 64)) Bool)

(assert (=> b!1158914 (= c!115495 (contains!6805 lt!520887 k!934))))

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-fun minValue!944 () V!43861)

(declare-fun zeroValue!944 () V!43861)

(declare-fun getCurrentListMapNoExtraKeys!4759 (array!74892 array!74894 (_ BitVec 32) (_ BitVec 32) V!43861 V!43861 (_ BitVec 32) Int) ListLongMap!16615)

(assert (=> b!1158914 (= lt!520887 (getCurrentListMapNoExtraKeys!4759 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1158915 () Bool)

(declare-fun e!659083 () Unit!38080)

(declare-fun lt!520893 () Unit!38080)

(assert (=> b!1158915 (= e!659083 lt!520893)))

(declare-fun call!55800 () Unit!38080)

(assert (=> b!1158915 (= lt!520893 call!55800)))

(declare-fun call!55796 () Bool)

(assert (=> b!1158915 call!55796))

(declare-fun b!1158916 () Bool)

(declare-fun e!659076 () Bool)

(declare-fun tp_is_empty!29051 () Bool)

(assert (=> b!1158916 (= e!659076 tp_is_empty!29051)))

(declare-fun c!115500 () Bool)

(declare-fun call!55794 () Unit!38080)

(declare-fun c!115498 () Bool)

(declare-fun bm!55790 () Bool)

(declare-fun addStillContains!946 (ListLongMap!16615 (_ BitVec 64) V!43861 (_ BitVec 64)) Unit!38080)

(assert (=> bm!55790 (= call!55794 (addStillContains!946 lt!520887 (ite (or c!115500 c!115498) #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000) (ite (or c!115500 c!115498) zeroValue!944 minValue!944) k!934))))

(declare-fun mapNonEmpty!45401 () Bool)

(declare-fun mapRes!45401 () Bool)

(declare-fun tp!86275 () Bool)

(declare-fun e!659087 () Bool)

(assert (=> mapNonEmpty!45401 (= mapRes!45401 (and tp!86275 e!659087))))

(declare-fun mapValue!45401 () ValueCell!13816)

(declare-fun mapRest!45401 () (Array (_ BitVec 32) ValueCell!13816))

(declare-fun mapKey!45401 () (_ BitVec 32))

(assert (=> mapNonEmpty!45401 (= (arr!36094 _values!996) (store mapRest!45401 mapKey!45401 mapValue!45401))))

(declare-fun b!1158917 () Bool)

(declare-fun res!769440 () Bool)

(declare-fun e!659080 () Bool)

(assert (=> b!1158917 (=> (not res!769440) (not e!659080))))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1158917 (= res!769440 (= (select (arr!36093 _keys!1208) i!673) k!934))))

(declare-fun b!1158918 () Bool)

(declare-fun Unit!38082 () Unit!38080)

(assert (=> b!1158918 (= e!659088 Unit!38082)))

(declare-fun lt!520883 () Bool)

(assert (=> b!1158918 (= lt!520883 (= (bvand extraKeys!923 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(assert (=> b!1158918 (= c!115500 (and (not lt!520883) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun lt!520879 () Unit!38080)

(declare-fun e!659072 () Unit!38080)

(assert (=> b!1158918 (= lt!520879 e!659072)))

(declare-fun lt!520886 () Unit!38080)

(declare-fun lemmaListMapContainsThenArrayContainsFrom!520 (array!74892 array!74894 (_ BitVec 32) (_ BitVec 32) V!43861 V!43861 (_ BitVec 64) (_ BitVec 32) Int) Unit!38080)

(assert (=> b!1158918 (= lt!520886 (lemmaListMapContainsThenArrayContainsFrom!520 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun c!115497 () Bool)

(assert (=> b!1158918 (= c!115497 (and (not (= k!934 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!934 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun res!769438 () Bool)

(declare-fun e!659084 () Bool)

(assert (=> b!1158918 (= res!769438 e!659084)))

(declare-fun e!659078 () Bool)

(assert (=> b!1158918 (=> (not res!769438) (not e!659078))))

(assert (=> b!1158918 e!659078))

(declare-fun lt!520873 () Unit!38080)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!74892 (_ BitVec 32) (_ BitVec 32)) Unit!38080)

(assert (=> b!1158918 (= lt!520873 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1208 #b00000000000000000000000000000000 from!1455))))

(declare-datatypes ((List!25413 0))(
  ( (Nil!25410) (Cons!25409 (h!26618 (_ BitVec 64)) (t!36933 List!25413)) )
))
(declare-fun arrayNoDuplicates!0 (array!74892 (_ BitVec 32) List!25413) Bool)

(assert (=> b!1158918 (arrayNoDuplicates!0 _keys!1208 from!1455 Nil!25410)))

(declare-fun lt!520890 () Unit!38080)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!74892 (_ BitVec 64) (_ BitVec 32) List!25413) Unit!38080)

(assert (=> b!1158918 (= lt!520890 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!1208 k!934 from!1455 Nil!25410))))

(assert (=> b!1158918 false))

(declare-fun b!1158919 () Bool)

(declare-fun e!659081 () Unit!38080)

(declare-fun Unit!38083 () Unit!38080)

(assert (=> b!1158919 (= e!659081 Unit!38083)))

(declare-fun bm!55791 () Bool)

(declare-fun call!55793 () ListLongMap!16615)

(assert (=> bm!55791 (= call!55793 (getCurrentListMapNoExtraKeys!4759 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1158920 () Bool)

(declare-fun res!769435 () Bool)

(assert (=> b!1158920 (=> (not res!769435) (not e!659080))))

(assert (=> b!1158920 (= res!769435 (and (= (size!36631 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!36630 _keys!1208) (size!36631 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun bm!55792 () Bool)

(declare-fun lt!520878 () ListLongMap!16615)

(declare-fun call!55797 () ListLongMap!16615)

(assert (=> bm!55792 (= call!55797 (+!3649 (ite c!115500 lt!520878 lt!520887) (ite c!115500 (tuple2!18635 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944) (ite c!115498 (tuple2!18635 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!18635 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944)))))))

(declare-fun b!1158921 () Bool)

(assert (=> b!1158921 (= e!659084 (ite (= k!934 #b0000000000000000000000000000000000000000000000000000000000000000) (not lt!520883) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun bm!55793 () Bool)

(declare-fun call!55799 () ListLongMap!16615)

(assert (=> bm!55793 (= call!55799 call!55797)))

(declare-fun b!1158923 () Bool)

(declare-fun res!769444 () Bool)

(assert (=> b!1158923 (=> (not res!769444) (not e!659080))))

(assert (=> b!1158923 (= res!769444 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!25410))))

(declare-fun bm!55794 () Bool)

(assert (=> bm!55794 (= call!55800 call!55794)))

(declare-fun b!1158924 () Bool)

(declare-fun res!769434 () Bool)

(assert (=> b!1158924 (=> (not res!769434) (not e!659080))))

(assert (=> b!1158924 (= res!769434 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!36630 _keys!1208))))))

(declare-fun b!1158925 () Bool)

(declare-fun Unit!38084 () Unit!38080)

(assert (=> b!1158925 (= e!659088 Unit!38084)))

(declare-fun mapIsEmpty!45401 () Bool)

(assert (=> mapIsEmpty!45401 mapRes!45401))

(declare-fun b!1158926 () Bool)

(declare-fun res!769442 () Bool)

(assert (=> b!1158926 (=> (not res!769442) (not e!659080))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1158926 (= res!769442 (validMask!0 mask!1564))))

(declare-fun b!1158927 () Bool)

(assert (=> b!1158927 (= c!115498 (and (not lt!520883) (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(assert (=> b!1158927 (= e!659072 e!659083)))

(declare-fun b!1158928 () Bool)

(declare-fun res!769441 () Bool)

(assert (=> b!1158928 (=> (not res!769441) (not e!659080))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1158928 (= res!769441 (validKeyInArray!0 k!934))))

(declare-fun b!1158929 () Bool)

(declare-fun res!769446 () Bool)

(declare-fun e!659074 () Bool)

(assert (=> b!1158929 (=> (not res!769446) (not e!659074))))

(declare-fun lt!520888 () array!74892)

(assert (=> b!1158929 (= res!769446 (arrayNoDuplicates!0 lt!520888 #b00000000000000000000000000000000 Nil!25410))))

(declare-fun b!1158930 () Bool)

(assert (=> b!1158930 (contains!6805 call!55797 k!934)))

(declare-fun lt!520884 () Unit!38080)

(assert (=> b!1158930 (= lt!520884 (addStillContains!946 lt!520878 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944 k!934))))

(declare-fun call!55795 () Bool)

(assert (=> b!1158930 call!55795))

(assert (=> b!1158930 (= lt!520878 (+!3649 lt!520887 (tuple2!18635 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944)))))

(declare-fun lt!520881 () Unit!38080)

(assert (=> b!1158930 (= lt!520881 call!55794)))

(assert (=> b!1158930 (= e!659072 lt!520884)))

(declare-fun lt!520872 () array!74894)

(declare-fun call!55798 () ListLongMap!16615)

(declare-fun bm!55795 () Bool)

(assert (=> bm!55795 (= call!55798 (getCurrentListMapNoExtraKeys!4759 lt!520888 lt!520872 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1158931 () Bool)

(declare-fun e!659073 () Bool)

(declare-fun e!659079 () Bool)

(assert (=> b!1158931 (= e!659073 e!659079)))

(declare-fun res!769436 () Bool)

(assert (=> b!1158931 (=> res!769436 e!659079)))

(assert (=> b!1158931 (= res!769436 (not (= from!1455 i!673)))))

(declare-fun lt!520876 () ListLongMap!16615)

(assert (=> b!1158931 (= lt!520876 (getCurrentListMapNoExtraKeys!4759 lt!520888 lt!520872 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(assert (=> b!1158931 (= lt!520872 (array!74895 (store (arr!36094 _values!996) i!673 (ValueCellFull!13816 lt!520874)) (size!36631 _values!996)))))

(declare-fun dynLambda!2763 (Int (_ BitVec 64)) V!43861)

(assert (=> b!1158931 (= lt!520874 (dynLambda!2763 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1158931 (= lt!520885 (getCurrentListMapNoExtraKeys!4759 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1158932 () Bool)

(assert (=> b!1158932 (= e!659074 (not e!659073))))

(declare-fun res!769443 () Bool)

(assert (=> b!1158932 (=> res!769443 e!659073)))

(assert (=> b!1158932 (= res!769443 (bvsgt from!1455 i!673))))

(declare-fun arrayContainsKey!0 (array!74892 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1158932 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-fun lt!520891 () Unit!38080)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!74892 (_ BitVec 64) (_ BitVec 32)) Unit!38080)

(assert (=> b!1158932 (= lt!520891 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun b!1158933 () Bool)

(declare-fun e!659086 () Bool)

(assert (=> b!1158933 (= e!659086 (and e!659076 mapRes!45401))))

(declare-fun condMapEmpty!45401 () Bool)

(declare-fun mapDefault!45401 () ValueCell!13816)

