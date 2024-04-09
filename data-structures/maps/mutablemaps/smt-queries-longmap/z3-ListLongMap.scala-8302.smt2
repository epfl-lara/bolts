; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!101198 () Bool)

(assert start!101198)

(declare-fun b_free!26085 () Bool)

(declare-fun b_next!26085 () Bool)

(assert (=> start!101198 (= b_free!26085 (not b_next!26085))))

(declare-fun tp!91277 () Bool)

(declare-fun b_and!43297 () Bool)

(assert (=> start!101198 (= tp!91277 b_and!43297)))

(declare-fun b!1213860 () Bool)

(declare-datatypes ((Unit!40183 0))(
  ( (Unit!40184) )
))
(declare-fun e!689398 () Unit!40183)

(declare-fun Unit!40185 () Unit!40183)

(assert (=> b!1213860 (= e!689398 Unit!40185)))

(declare-fun lt!551972 () Bool)

(declare-fun extraKeys!923 () (_ BitVec 32))

(assert (=> b!1213860 (= lt!551972 (= (bvand extraKeys!923 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(declare-fun c!119918 () Bool)

(assert (=> b!1213860 (= c!119918 (and (not lt!551972) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun lt!551984 () Unit!40183)

(declare-fun e!689393 () Unit!40183)

(assert (=> b!1213860 (= lt!551984 e!689393)))

(declare-datatypes ((array!78338 0))(
  ( (array!78339 (arr!37800 (Array (_ BitVec 32) (_ BitVec 64))) (size!38337 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!78338)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun lt!551980 () Unit!40183)

(declare-fun defaultEntry!1004 () Int)

(declare-fun k0!934 () (_ BitVec 64))

(declare-fun from!1455 () (_ BitVec 32))

(declare-datatypes ((V!46179 0))(
  ( (V!46180 (val!15451 Int)) )
))
(declare-datatypes ((ValueCell!14685 0))(
  ( (ValueCellFull!14685 (v!18105 V!46179)) (EmptyCell!14685) )
))
(declare-datatypes ((array!78340 0))(
  ( (array!78341 (arr!37801 (Array (_ BitVec 32) ValueCell!14685)) (size!38338 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!78340)

(declare-fun minValue!944 () V!46179)

(declare-fun zeroValue!944 () V!46179)

(declare-fun lemmaListMapContainsThenArrayContainsFrom!621 (array!78338 array!78340 (_ BitVec 32) (_ BitVec 32) V!46179 V!46179 (_ BitVec 64) (_ BitVec 32) Int) Unit!40183)

(assert (=> b!1213860 (= lt!551980 (lemmaListMapContainsThenArrayContainsFrom!621 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun c!119916 () Bool)

(assert (=> b!1213860 (= c!119916 (and (not (= k0!934 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!934 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun res!806034 () Bool)

(declare-fun e!689397 () Bool)

(assert (=> b!1213860 (= res!806034 e!689397)))

(declare-fun e!689403 () Bool)

(assert (=> b!1213860 (=> (not res!806034) (not e!689403))))

(assert (=> b!1213860 e!689403))

(declare-fun lt!551973 () Unit!40183)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!78338 (_ BitVec 32) (_ BitVec 32)) Unit!40183)

(assert (=> b!1213860 (= lt!551973 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1208 #b00000000000000000000000000000000 from!1455))))

(declare-datatypes ((List!26815 0))(
  ( (Nil!26812) (Cons!26811 (h!28020 (_ BitVec 64)) (t!39887 List!26815)) )
))
(declare-fun arrayNoDuplicates!0 (array!78338 (_ BitVec 32) List!26815) Bool)

(assert (=> b!1213860 (arrayNoDuplicates!0 _keys!1208 from!1455 Nil!26812)))

(declare-fun lt!551970 () Unit!40183)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!78338 (_ BitVec 64) (_ BitVec 32) List!26815) Unit!40183)

(assert (=> b!1213860 (= lt!551970 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!1208 k0!934 from!1455 Nil!26812))))

(assert (=> b!1213860 false))

(declare-fun mapIsEmpty!48058 () Bool)

(declare-fun mapRes!48058 () Bool)

(assert (=> mapIsEmpty!48058 mapRes!48058))

(declare-fun b!1213861 () Bool)

(declare-fun arrayContainsKey!0 (array!78338 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1213861 (= e!689397 (arrayContainsKey!0 _keys!1208 k0!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun b!1213862 () Bool)

(declare-fun Unit!40186 () Unit!40183)

(assert (=> b!1213862 (= e!689398 Unit!40186)))

(declare-fun b!1213863 () Bool)

(declare-fun res!806035 () Bool)

(declare-fun e!689392 () Bool)

(assert (=> b!1213863 (=> (not res!806035) (not e!689392))))

(declare-fun lt!551979 () array!78338)

(assert (=> b!1213863 (= res!806035 (arrayNoDuplicates!0 lt!551979 #b00000000000000000000000000000000 Nil!26812))))

(declare-fun b!1213864 () Bool)

(declare-fun call!60506 () Bool)

(assert (=> b!1213864 call!60506))

(declare-fun lt!551983 () Unit!40183)

(declare-fun call!60501 () Unit!40183)

(assert (=> b!1213864 (= lt!551983 call!60501)))

(declare-fun e!689394 () Unit!40183)

(assert (=> b!1213864 (= e!689394 lt!551983)))

(declare-fun b!1213865 () Bool)

(declare-fun res!806025 () Bool)

(declare-fun e!689399 () Bool)

(assert (=> b!1213865 (=> (not res!806025) (not e!689399))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1213865 (= res!806025 (validKeyInArray!0 k0!934))))

(declare-fun b!1213866 () Bool)

(declare-fun e!689395 () Bool)

(declare-fun lt!551971 () array!78340)

(declare-datatypes ((tuple2!19996 0))(
  ( (tuple2!19997 (_1!10008 (_ BitVec 64)) (_2!10008 V!46179)) )
))
(declare-datatypes ((List!26816 0))(
  ( (Nil!26813) (Cons!26812 (h!28021 tuple2!19996) (t!39888 List!26816)) )
))
(declare-datatypes ((ListLongMap!17977 0))(
  ( (ListLongMap!17978 (toList!9004 List!26816)) )
))
(declare-fun lt!551966 () ListLongMap!17977)

(declare-fun getCurrentListMapNoExtraKeys!5409 (array!78338 array!78340 (_ BitVec 32) (_ BitVec 32) V!46179 V!46179 (_ BitVec 32) Int) ListLongMap!17977)

(assert (=> b!1213866 (= e!689395 (= lt!551966 (getCurrentListMapNoExtraKeys!5409 lt!551979 lt!551971 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004)))))

(declare-fun b!1213867 () Bool)

(declare-fun e!689401 () Bool)

(declare-fun tp_is_empty!30789 () Bool)

(assert (=> b!1213867 (= e!689401 tp_is_empty!30789)))

(declare-fun bm!60498 () Bool)

(declare-fun lt!551987 () ListLongMap!17977)

(declare-fun call!60508 () Bool)

(declare-fun call!60505 () ListLongMap!17977)

(declare-fun contains!7018 (ListLongMap!17977 (_ BitVec 64)) Bool)

(assert (=> bm!60498 (= call!60508 (contains!7018 (ite c!119918 lt!551987 call!60505) k0!934))))

(declare-fun b!1213868 () Bool)

(declare-fun e!689400 () Bool)

(declare-fun e!689404 () Bool)

(assert (=> b!1213868 (= e!689400 e!689404)))

(declare-fun res!806030 () Bool)

(assert (=> b!1213868 (=> res!806030 e!689404)))

(assert (=> b!1213868 (= res!806030 (not (= (select (arr!37800 _keys!1208) from!1455) k0!934)))))

(declare-fun e!689396 () Bool)

(assert (=> b!1213868 e!689396))

(declare-fun c!119917 () Bool)

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1213868 (= c!119917 (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673))))

(declare-fun lt!551985 () Unit!40183)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!1101 (array!78338 array!78340 (_ BitVec 32) (_ BitVec 32) V!46179 V!46179 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!40183)

(assert (=> b!1213868 (= lt!551985 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!1101 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1213869 () Bool)

(declare-fun e!689406 () Unit!40183)

(assert (=> b!1213869 (= e!689406 e!689394)))

(declare-fun c!119919 () Bool)

(assert (=> b!1213869 (= c!119919 (and (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!551972))))

(declare-fun b!1213870 () Bool)

(declare-fun res!806027 () Bool)

(assert (=> b!1213870 (=> (not res!806027) (not e!689399))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1213870 (= res!806027 (validMask!0 mask!1564))))

(declare-fun b!1213871 () Bool)

(declare-fun e!689391 () Bool)

(assert (=> b!1213871 (= e!689391 e!689400)))

(declare-fun res!806021 () Bool)

(assert (=> b!1213871 (=> res!806021 e!689400)))

(assert (=> b!1213871 (= res!806021 (not (= from!1455 i!673)))))

(declare-fun lt!551968 () ListLongMap!17977)

(assert (=> b!1213871 (= lt!551968 (getCurrentListMapNoExtraKeys!5409 lt!551979 lt!551971 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun lt!551978 () V!46179)

(assert (=> b!1213871 (= lt!551971 (array!78341 (store (arr!37801 _values!996) i!673 (ValueCellFull!14685 lt!551978)) (size!38338 _values!996)))))

(declare-fun dynLambda!3318 (Int (_ BitVec 64)) V!46179)

(assert (=> b!1213871 (= lt!551978 (dynLambda!3318 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!551981 () ListLongMap!17977)

(assert (=> b!1213871 (= lt!551981 (getCurrentListMapNoExtraKeys!5409 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1213872 () Bool)

(assert (=> b!1213872 (= e!689403 (arrayContainsKey!0 _keys!1208 k0!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun bm!60499 () Bool)

(declare-fun call!60502 () Unit!40183)

(assert (=> bm!60499 (= call!60501 call!60502)))

(declare-fun b!1213873 () Bool)

(declare-fun lt!551986 () Unit!40183)

(assert (=> b!1213873 (= e!689406 lt!551986)))

(assert (=> b!1213873 (= lt!551986 call!60501)))

(assert (=> b!1213873 call!60506))

(declare-fun bm!60500 () Bool)

(declare-fun call!60504 () ListLongMap!17977)

(declare-fun c!119915 () Bool)

(declare-fun lt!551975 () ListLongMap!17977)

(declare-fun +!4029 (ListLongMap!17977 tuple2!19996) ListLongMap!17977)

(assert (=> bm!60500 (= call!60504 (+!4029 (ite c!119918 lt!551987 lt!551975) (ite c!119918 (tuple2!19997 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944) (ite c!119915 (tuple2!19997 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!19997 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944)))))))

(declare-fun b!1213874 () Bool)

(declare-fun res!806024 () Bool)

(assert (=> b!1213874 (=> (not res!806024) (not e!689399))))

(assert (=> b!1213874 (= res!806024 (and (= (size!38338 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!38337 _keys!1208) (size!38338 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1213875 () Bool)

(declare-fun e!689390 () Bool)

(assert (=> b!1213875 (= e!689390 tp_is_empty!30789)))

(declare-fun b!1213876 () Bool)

(declare-fun e!689405 () Bool)

(assert (=> b!1213876 (= e!689405 (and e!689390 mapRes!48058))))

(declare-fun condMapEmpty!48058 () Bool)

(declare-fun mapDefault!48058 () ValueCell!14685)

(assert (=> b!1213876 (= condMapEmpty!48058 (= (arr!37801 _values!996) ((as const (Array (_ BitVec 32) ValueCell!14685)) mapDefault!48058)))))

(declare-fun bm!60501 () Bool)

(declare-fun addStillContains!1086 (ListLongMap!17977 (_ BitVec 64) V!46179 (_ BitVec 64)) Unit!40183)

(assert (=> bm!60501 (= call!60502 (addStillContains!1086 lt!551975 (ite (or c!119918 c!119915) #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000) (ite (or c!119918 c!119915) zeroValue!944 minValue!944) k0!934))))

(declare-fun bm!60502 () Bool)

(assert (=> bm!60502 (= call!60506 call!60508)))

(declare-fun b!1213877 () Bool)

(assert (=> b!1213877 (= e!689392 (not e!689391))))

(declare-fun res!806023 () Bool)

(assert (=> b!1213877 (=> res!806023 e!689391)))

(assert (=> b!1213877 (= res!806023 (bvsgt from!1455 i!673))))

(assert (=> b!1213877 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-fun lt!551969 () Unit!40183)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!78338 (_ BitVec 64) (_ BitVec 32)) Unit!40183)

(assert (=> b!1213877 (= lt!551969 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun res!806033 () Bool)

(assert (=> start!101198 (=> (not res!806033) (not e!689399))))

(assert (=> start!101198 (= res!806033 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!38337 _keys!1208))))))

(assert (=> start!101198 e!689399))

(assert (=> start!101198 tp_is_empty!30789))

(declare-fun array_inv!28690 (array!78338) Bool)

(assert (=> start!101198 (array_inv!28690 _keys!1208)))

(assert (=> start!101198 true))

(assert (=> start!101198 tp!91277))

(declare-fun array_inv!28691 (array!78340) Bool)

(assert (=> start!101198 (and (array_inv!28691 _values!996) e!689405)))

(declare-fun b!1213878 () Bool)

(declare-fun call!60507 () ListLongMap!17977)

(declare-fun call!60503 () ListLongMap!17977)

(assert (=> b!1213878 (= e!689396 (= call!60507 call!60503))))

(declare-fun b!1213879 () Bool)

(assert (=> b!1213879 (contains!7018 call!60504 k0!934)))

(declare-fun lt!551967 () Unit!40183)

(assert (=> b!1213879 (= lt!551967 (addStillContains!1086 lt!551987 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944 k0!934))))

(assert (=> b!1213879 call!60508))

(assert (=> b!1213879 (= lt!551987 (+!4029 lt!551975 (tuple2!19997 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944)))))

(declare-fun lt!551982 () Unit!40183)

(assert (=> b!1213879 (= lt!551982 call!60502)))

(assert (=> b!1213879 (= e!689393 lt!551967)))

(declare-fun b!1213880 () Bool)

(declare-fun Unit!40187 () Unit!40183)

(assert (=> b!1213880 (= e!689394 Unit!40187)))

(declare-fun b!1213881 () Bool)

(assert (=> b!1213881 (= e!689397 (ite (= k0!934 #b0000000000000000000000000000000000000000000000000000000000000000) (not lt!551972) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!1213882 () Bool)

(declare-fun -!1898 (ListLongMap!17977 (_ BitVec 64)) ListLongMap!17977)

(assert (=> b!1213882 (= e!689396 (= call!60507 (-!1898 call!60503 k0!934)))))

(declare-fun bm!60503 () Bool)

(assert (=> bm!60503 (= call!60503 (getCurrentListMapNoExtraKeys!5409 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun bm!60504 () Bool)

(assert (=> bm!60504 (= call!60505 call!60504)))

(declare-fun b!1213883 () Bool)

(assert (=> b!1213883 (= e!689399 e!689392)))

(declare-fun res!806026 () Bool)

(assert (=> b!1213883 (=> (not res!806026) (not e!689392))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!78338 (_ BitVec 32)) Bool)

(assert (=> b!1213883 (= res!806026 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!551979 mask!1564))))

(assert (=> b!1213883 (= lt!551979 (array!78339 (store (arr!37800 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!38337 _keys!1208)))))

(declare-fun bm!60505 () Bool)

(assert (=> bm!60505 (= call!60507 (getCurrentListMapNoExtraKeys!5409 lt!551979 lt!551971 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1213884 () Bool)

(assert (=> b!1213884 (= e!689404 true)))

(assert (=> b!1213884 e!689395))

(declare-fun res!806032 () Bool)

(assert (=> b!1213884 (=> (not res!806032) (not e!689395))))

(assert (=> b!1213884 (= res!806032 (= lt!551966 lt!551975))))

(assert (=> b!1213884 (= lt!551966 (-!1898 lt!551981 k0!934))))

(declare-fun lt!551977 () V!46179)

(assert (=> b!1213884 (= (-!1898 (+!4029 lt!551975 (tuple2!19997 (select (arr!37800 _keys!1208) from!1455) lt!551977)) (select (arr!37800 _keys!1208) from!1455)) lt!551975)))

(declare-fun lt!551976 () Unit!40183)

(declare-fun addThenRemoveForNewKeyIsSame!296 (ListLongMap!17977 (_ BitVec 64) V!46179) Unit!40183)

(assert (=> b!1213884 (= lt!551976 (addThenRemoveForNewKeyIsSame!296 lt!551975 (select (arr!37800 _keys!1208) from!1455) lt!551977))))

(declare-fun get!19316 (ValueCell!14685 V!46179) V!46179)

(assert (=> b!1213884 (= lt!551977 (get!19316 (select (arr!37801 _values!996) from!1455) lt!551978))))

(declare-fun lt!551974 () Unit!40183)

(assert (=> b!1213884 (= lt!551974 e!689398)))

(declare-fun c!119920 () Bool)

(assert (=> b!1213884 (= c!119920 (contains!7018 lt!551975 k0!934))))

(assert (=> b!1213884 (= lt!551975 (getCurrentListMapNoExtraKeys!5409 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1213885 () Bool)

(declare-fun res!806031 () Bool)

(assert (=> b!1213885 (=> (not res!806031) (not e!689399))))

(assert (=> b!1213885 (= res!806031 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!38337 _keys!1208))))))

(declare-fun b!1213886 () Bool)

(declare-fun res!806022 () Bool)

(assert (=> b!1213886 (=> (not res!806022) (not e!689399))))

(assert (=> b!1213886 (= res!806022 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!26812))))

(declare-fun b!1213887 () Bool)

(assert (=> b!1213887 (= c!119915 (and (not lt!551972) (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(assert (=> b!1213887 (= e!689393 e!689406)))

(declare-fun b!1213888 () Bool)

(declare-fun res!806028 () Bool)

(assert (=> b!1213888 (=> (not res!806028) (not e!689399))))

(assert (=> b!1213888 (= res!806028 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1213889 () Bool)

(declare-fun res!806029 () Bool)

(assert (=> b!1213889 (=> (not res!806029) (not e!689399))))

(assert (=> b!1213889 (= res!806029 (= (select (arr!37800 _keys!1208) i!673) k0!934))))

(declare-fun mapNonEmpty!48058 () Bool)

(declare-fun tp!91278 () Bool)

(assert (=> mapNonEmpty!48058 (= mapRes!48058 (and tp!91278 e!689401))))

(declare-fun mapKey!48058 () (_ BitVec 32))

(declare-fun mapValue!48058 () ValueCell!14685)

(declare-fun mapRest!48058 () (Array (_ BitVec 32) ValueCell!14685))

(assert (=> mapNonEmpty!48058 (= (arr!37801 _values!996) (store mapRest!48058 mapKey!48058 mapValue!48058))))

(assert (= (and start!101198 res!806033) b!1213870))

(assert (= (and b!1213870 res!806027) b!1213874))

(assert (= (and b!1213874 res!806024) b!1213888))

(assert (= (and b!1213888 res!806028) b!1213886))

(assert (= (and b!1213886 res!806022) b!1213885))

(assert (= (and b!1213885 res!806031) b!1213865))

(assert (= (and b!1213865 res!806025) b!1213889))

(assert (= (and b!1213889 res!806029) b!1213883))

(assert (= (and b!1213883 res!806026) b!1213863))

(assert (= (and b!1213863 res!806035) b!1213877))

(assert (= (and b!1213877 (not res!806023)) b!1213871))

(assert (= (and b!1213871 (not res!806021)) b!1213868))

(assert (= (and b!1213868 c!119917) b!1213882))

(assert (= (and b!1213868 (not c!119917)) b!1213878))

(assert (= (or b!1213882 b!1213878) bm!60505))

(assert (= (or b!1213882 b!1213878) bm!60503))

(assert (= (and b!1213868 (not res!806030)) b!1213884))

(assert (= (and b!1213884 c!119920) b!1213860))

(assert (= (and b!1213884 (not c!119920)) b!1213862))

(assert (= (and b!1213860 c!119918) b!1213879))

(assert (= (and b!1213860 (not c!119918)) b!1213887))

(assert (= (and b!1213887 c!119915) b!1213873))

(assert (= (and b!1213887 (not c!119915)) b!1213869))

(assert (= (and b!1213869 c!119919) b!1213864))

(assert (= (and b!1213869 (not c!119919)) b!1213880))

(assert (= (or b!1213873 b!1213864) bm!60499))

(assert (= (or b!1213873 b!1213864) bm!60504))

(assert (= (or b!1213873 b!1213864) bm!60502))

(assert (= (or b!1213879 bm!60502) bm!60498))

(assert (= (or b!1213879 bm!60499) bm!60501))

(assert (= (or b!1213879 bm!60504) bm!60500))

(assert (= (and b!1213860 c!119916) b!1213861))

(assert (= (and b!1213860 (not c!119916)) b!1213881))

(assert (= (and b!1213860 res!806034) b!1213872))

(assert (= (and b!1213884 res!806032) b!1213866))

(assert (= (and b!1213876 condMapEmpty!48058) mapIsEmpty!48058))

(assert (= (and b!1213876 (not condMapEmpty!48058)) mapNonEmpty!48058))

(get-info :version)

(assert (= (and mapNonEmpty!48058 ((_ is ValueCellFull!14685) mapValue!48058)) b!1213867))

(assert (= (and b!1213876 ((_ is ValueCellFull!14685) mapDefault!48058)) b!1213875))

(assert (= start!101198 b!1213876))

(declare-fun b_lambda!21771 () Bool)

(assert (=> (not b_lambda!21771) (not b!1213871)))

(declare-fun t!39886 () Bool)

(declare-fun tb!10893 () Bool)

(assert (=> (and start!101198 (= defaultEntry!1004 defaultEntry!1004) t!39886) tb!10893))

(declare-fun result!22375 () Bool)

(assert (=> tb!10893 (= result!22375 tp_is_empty!30789)))

(assert (=> b!1213871 t!39886))

(declare-fun b_and!43299 () Bool)

(assert (= b_and!43297 (and (=> t!39886 result!22375) b_and!43299)))

(declare-fun m!1119145 () Bool)

(assert (=> b!1213884 m!1119145))

(declare-fun m!1119147 () Bool)

(assert (=> b!1213884 m!1119147))

(declare-fun m!1119149 () Bool)

(assert (=> b!1213884 m!1119149))

(declare-fun m!1119151 () Bool)

(assert (=> b!1213884 m!1119151))

(declare-fun m!1119153 () Bool)

(assert (=> b!1213884 m!1119153))

(assert (=> b!1213884 m!1119145))

(assert (=> b!1213884 m!1119149))

(declare-fun m!1119155 () Bool)

(assert (=> b!1213884 m!1119155))

(assert (=> b!1213884 m!1119153))

(declare-fun m!1119157 () Bool)

(assert (=> b!1213884 m!1119157))

(declare-fun m!1119159 () Bool)

(assert (=> b!1213884 m!1119159))

(assert (=> b!1213884 m!1119149))

(declare-fun m!1119161 () Bool)

(assert (=> b!1213884 m!1119161))

(declare-fun m!1119163 () Bool)

(assert (=> b!1213870 m!1119163))

(declare-fun m!1119165 () Bool)

(assert (=> b!1213871 m!1119165))

(declare-fun m!1119167 () Bool)

(assert (=> b!1213871 m!1119167))

(declare-fun m!1119169 () Bool)

(assert (=> b!1213871 m!1119169))

(declare-fun m!1119171 () Bool)

(assert (=> b!1213871 m!1119171))

(declare-fun m!1119173 () Bool)

(assert (=> b!1213888 m!1119173))

(declare-fun m!1119175 () Bool)

(assert (=> b!1213861 m!1119175))

(declare-fun m!1119177 () Bool)

(assert (=> bm!60501 m!1119177))

(declare-fun m!1119179 () Bool)

(assert (=> b!1213883 m!1119179))

(declare-fun m!1119181 () Bool)

(assert (=> b!1213883 m!1119181))

(declare-fun m!1119183 () Bool)

(assert (=> b!1213886 m!1119183))

(declare-fun m!1119185 () Bool)

(assert (=> bm!60505 m!1119185))

(declare-fun m!1119187 () Bool)

(assert (=> b!1213860 m!1119187))

(declare-fun m!1119189 () Bool)

(assert (=> b!1213860 m!1119189))

(declare-fun m!1119191 () Bool)

(assert (=> b!1213860 m!1119191))

(declare-fun m!1119193 () Bool)

(assert (=> b!1213860 m!1119193))

(assert (=> b!1213868 m!1119149))

(declare-fun m!1119195 () Bool)

(assert (=> b!1213868 m!1119195))

(declare-fun m!1119197 () Bool)

(assert (=> bm!60500 m!1119197))

(declare-fun m!1119199 () Bool)

(assert (=> b!1213879 m!1119199))

(declare-fun m!1119201 () Bool)

(assert (=> b!1213879 m!1119201))

(declare-fun m!1119203 () Bool)

(assert (=> b!1213879 m!1119203))

(declare-fun m!1119205 () Bool)

(assert (=> bm!60498 m!1119205))

(declare-fun m!1119207 () Bool)

(assert (=> b!1213882 m!1119207))

(declare-fun m!1119209 () Bool)

(assert (=> start!101198 m!1119209))

(declare-fun m!1119211 () Bool)

(assert (=> start!101198 m!1119211))

(declare-fun m!1119213 () Bool)

(assert (=> b!1213863 m!1119213))

(declare-fun m!1119215 () Bool)

(assert (=> mapNonEmpty!48058 m!1119215))

(declare-fun m!1119217 () Bool)

(assert (=> b!1213877 m!1119217))

(declare-fun m!1119219 () Bool)

(assert (=> b!1213877 m!1119219))

(declare-fun m!1119221 () Bool)

(assert (=> b!1213889 m!1119221))

(assert (=> bm!60503 m!1119147))

(assert (=> b!1213866 m!1119185))

(declare-fun m!1119223 () Bool)

(assert (=> b!1213865 m!1119223))

(assert (=> b!1213872 m!1119175))

(check-sat (not b!1213886) (not bm!60500) (not b!1213865) (not b!1213882) tp_is_empty!30789 (not b!1213884) (not bm!60498) (not b_lambda!21771) (not b!1213866) (not b!1213883) (not b!1213877) (not bm!60503) (not bm!60501) (not b!1213870) (not b!1213861) (not bm!60505) b_and!43299 (not b_next!26085) (not b!1213879) (not b!1213863) (not b!1213871) (not start!101198) (not b!1213860) (not b!1213888) (not b!1213868) (not b!1213872) (not mapNonEmpty!48058))
(check-sat b_and!43299 (not b_next!26085))
