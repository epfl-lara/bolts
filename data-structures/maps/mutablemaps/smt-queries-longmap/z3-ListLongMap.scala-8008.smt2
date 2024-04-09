; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!98926 () Bool)

(assert start!98926)

(declare-fun b_free!24495 () Bool)

(declare-fun b_next!24495 () Bool)

(assert (=> start!98926 (= b_free!24495 (not b_next!24495))))

(declare-fun tp!86197 () Bool)

(declare-fun b_and!39853 () Bool)

(assert (=> start!98926 (= tp!86197 b_and!39853)))

(declare-fun b!1157718 () Bool)

(declare-datatypes ((Unit!38032 0))(
  ( (Unit!38033) )
))
(declare-fun e!658425 () Unit!38032)

(declare-fun lt!520014 () Unit!38032)

(assert (=> b!1157718 (= e!658425 lt!520014)))

(declare-fun call!55486 () Unit!38032)

(assert (=> b!1157718 (= lt!520014 call!55486)))

(declare-fun call!55481 () Bool)

(assert (=> b!1157718 call!55481))

(declare-fun b!1157719 () Bool)

(declare-fun e!658412 () Unit!38032)

(declare-fun Unit!38034 () Unit!38032)

(assert (=> b!1157719 (= e!658412 Unit!38034)))

(declare-fun b!1157720 () Bool)

(declare-fun e!658411 () Bool)

(declare-fun tp_is_empty!29025 () Bool)

(assert (=> b!1157720 (= e!658411 tp_is_empty!29025)))

(declare-fun bm!55478 () Bool)

(declare-fun call!55482 () Bool)

(assert (=> bm!55478 (= call!55481 call!55482)))

(declare-fun b!1157721 () Bool)

(declare-fun e!658422 () Bool)

(declare-fun e!658424 () Bool)

(assert (=> b!1157721 (= e!658422 e!658424)))

(declare-fun res!768861 () Bool)

(assert (=> b!1157721 (=> res!768861 e!658424)))

(declare-datatypes ((array!74840 0))(
  ( (array!74841 (arr!36067 (Array (_ BitVec 32) (_ BitVec 64))) (size!36604 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!74840)

(declare-fun k0!934 () (_ BitVec 64))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> b!1157721 (= res!768861 (not (= (select (arr!36067 _keys!1208) from!1455) k0!934)))))

(declare-fun e!658410 () Bool)

(assert (=> b!1157721 e!658410))

(declare-fun c!115262 () Bool)

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1157721 (= c!115262 (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673))))

(declare-datatypes ((V!43827 0))(
  ( (V!43828 (val!14569 Int)) )
))
(declare-fun zeroValue!944 () V!43827)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-datatypes ((ValueCell!13803 0))(
  ( (ValueCellFull!13803 (v!17207 V!43827)) (EmptyCell!13803) )
))
(declare-datatypes ((array!74842 0))(
  ( (array!74843 (arr!36068 (Array (_ BitVec 32) ValueCell!13803)) (size!36605 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!74842)

(declare-fun minValue!944 () V!43827)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun lt!520024 () Unit!38032)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!612 (array!74840 array!74842 (_ BitVec 32) (_ BitVec 32) V!43827 V!43827 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!38032)

(assert (=> b!1157721 (= lt!520024 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!612 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1157722 () Bool)

(declare-fun res!768852 () Bool)

(declare-fun e!658421 () Bool)

(assert (=> b!1157722 (=> (not res!768852) (not e!658421))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!74840 (_ BitVec 32)) Bool)

(assert (=> b!1157722 (= res!768852 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun lt!520031 () array!74842)

(declare-fun bm!55479 () Bool)

(declare-fun lt!520022 () array!74840)

(declare-datatypes ((tuple2!18608 0))(
  ( (tuple2!18609 (_1!9314 (_ BitVec 64)) (_2!9314 V!43827)) )
))
(declare-datatypes ((List!25388 0))(
  ( (Nil!25385) (Cons!25384 (h!26593 tuple2!18608) (t!36882 List!25388)) )
))
(declare-datatypes ((ListLongMap!16589 0))(
  ( (ListLongMap!16590 (toList!8310 List!25388)) )
))
(declare-fun call!55488 () ListLongMap!16589)

(declare-fun getCurrentListMapNoExtraKeys!4747 (array!74840 array!74842 (_ BitVec 32) (_ BitVec 32) V!43827 V!43827 (_ BitVec 32) Int) ListLongMap!16589)

(assert (=> bm!55479 (= call!55488 (getCurrentListMapNoExtraKeys!4747 lt!520022 lt!520031 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1157723 () Bool)

(declare-fun call!55487 () ListLongMap!16589)

(assert (=> b!1157723 (= e!658410 (= call!55488 call!55487))))

(declare-fun b!1157724 () Bool)

(declare-fun res!768851 () Bool)

(assert (=> b!1157724 (=> (not res!768851) (not e!658421))))

(assert (=> b!1157724 (= res!768851 (and (= (size!36605 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!36604 _keys!1208) (size!36605 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1157725 () Bool)

(assert (=> b!1157725 (= e!658424 true)))

(declare-fun e!658409 () Bool)

(assert (=> b!1157725 e!658409))

(declare-fun res!768858 () Bool)

(assert (=> b!1157725 (=> (not res!768858) (not e!658409))))

(declare-fun lt!520030 () ListLongMap!16589)

(declare-fun lt!520028 () ListLongMap!16589)

(assert (=> b!1157725 (= res!768858 (= lt!520030 lt!520028))))

(declare-fun lt!520018 () ListLongMap!16589)

(declare-fun -!1385 (ListLongMap!16589 (_ BitVec 64)) ListLongMap!16589)

(assert (=> b!1157725 (= lt!520030 (-!1385 lt!520018 k0!934))))

(declare-fun lt!520021 () V!43827)

(declare-fun +!3639 (ListLongMap!16589 tuple2!18608) ListLongMap!16589)

(assert (=> b!1157725 (= (-!1385 (+!3639 lt!520028 (tuple2!18609 (select (arr!36067 _keys!1208) from!1455) lt!520021)) (select (arr!36067 _keys!1208) from!1455)) lt!520028)))

(declare-fun lt!520033 () Unit!38032)

(declare-fun addThenRemoveForNewKeyIsSame!226 (ListLongMap!16589 (_ BitVec 64) V!43827) Unit!38032)

(assert (=> b!1157725 (= lt!520033 (addThenRemoveForNewKeyIsSame!226 lt!520028 (select (arr!36067 _keys!1208) from!1455) lt!520021))))

(declare-fun lt!520023 () V!43827)

(declare-fun get!18412 (ValueCell!13803 V!43827) V!43827)

(assert (=> b!1157725 (= lt!520021 (get!18412 (select (arr!36068 _values!996) from!1455) lt!520023))))

(declare-fun lt!520016 () Unit!38032)

(declare-fun e!658420 () Unit!38032)

(assert (=> b!1157725 (= lt!520016 e!658420)))

(declare-fun c!115263 () Bool)

(declare-fun contains!6795 (ListLongMap!16589 (_ BitVec 64)) Bool)

(assert (=> b!1157725 (= c!115263 (contains!6795 lt!520028 k0!934))))

(assert (=> b!1157725 (= lt!520028 (getCurrentListMapNoExtraKeys!4747 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun call!55484 () ListLongMap!16589)

(declare-fun c!115266 () Bool)

(declare-fun lt!520034 () ListLongMap!16589)

(declare-fun bm!55480 () Bool)

(assert (=> bm!55480 (= call!55482 (contains!6795 (ite c!115266 lt!520034 call!55484) k0!934))))

(declare-fun b!1157726 () Bool)

(assert (=> b!1157726 (= e!658425 e!658412)))

(declare-fun c!115264 () Bool)

(declare-fun lt!520015 () Bool)

(assert (=> b!1157726 (= c!115264 (and (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!520015))))

(declare-fun e!658423 () Bool)

(declare-fun b!1157727 () Bool)

(declare-fun arrayContainsKey!0 (array!74840 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1157727 (= e!658423 (arrayContainsKey!0 _keys!1208 k0!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun b!1157728 () Bool)

(declare-fun res!768860 () Bool)

(assert (=> b!1157728 (=> (not res!768860) (not e!658421))))

(declare-datatypes ((List!25389 0))(
  ( (Nil!25386) (Cons!25385 (h!26594 (_ BitVec 64)) (t!36883 List!25389)) )
))
(declare-fun arrayNoDuplicates!0 (array!74840 (_ BitVec 32) List!25389) Bool)

(assert (=> b!1157728 (= res!768860 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!25386))))

(declare-fun b!1157729 () Bool)

(declare-fun res!768850 () Bool)

(assert (=> b!1157729 (=> (not res!768850) (not e!658421))))

(assert (=> b!1157729 (= res!768850 (= (select (arr!36067 _keys!1208) i!673) k0!934))))

(declare-fun b!1157730 () Bool)

(declare-fun res!768853 () Bool)

(assert (=> b!1157730 (=> (not res!768853) (not e!658421))))

(assert (=> b!1157730 (= res!768853 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!36604 _keys!1208))))))

(declare-fun b!1157731 () Bool)

(declare-fun call!55483 () ListLongMap!16589)

(assert (=> b!1157731 (contains!6795 call!55483 k0!934)))

(declare-fun lt!520019 () Unit!38032)

(declare-fun call!55485 () Unit!38032)

(assert (=> b!1157731 (= lt!520019 call!55485)))

(assert (=> b!1157731 call!55482))

(assert (=> b!1157731 (= lt!520034 (+!3639 lt!520028 (tuple2!18609 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944)))))

(declare-fun lt!520026 () Unit!38032)

(declare-fun addStillContains!934 (ListLongMap!16589 (_ BitVec 64) V!43827 (_ BitVec 64)) Unit!38032)

(assert (=> b!1157731 (= lt!520026 (addStillContains!934 lt!520028 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944 k0!934))))

(declare-fun e!658413 () Unit!38032)

(assert (=> b!1157731 (= e!658413 lt!520019)))

(declare-fun b!1157732 () Bool)

(declare-fun Unit!38035 () Unit!38032)

(assert (=> b!1157732 (= e!658420 Unit!38035)))

(declare-fun b!1157733 () Bool)

(declare-fun e!658415 () Bool)

(assert (=> b!1157733 (= e!658415 tp_is_empty!29025)))

(declare-fun bm!55481 () Bool)

(assert (=> bm!55481 (= call!55486 call!55485)))

(declare-fun b!1157734 () Bool)

(declare-fun e!658419 () Bool)

(assert (=> b!1157734 (= e!658421 e!658419)))

(declare-fun res!768855 () Bool)

(assert (=> b!1157734 (=> (not res!768855) (not e!658419))))

(assert (=> b!1157734 (= res!768855 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!520022 mask!1564))))

(assert (=> b!1157734 (= lt!520022 (array!74841 (store (arr!36067 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!36604 _keys!1208)))))

(declare-fun b!1157735 () Bool)

(declare-fun res!768863 () Bool)

(assert (=> b!1157735 (=> (not res!768863) (not e!658421))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1157735 (= res!768863 (validMask!0 mask!1564))))

(declare-fun b!1157736 () Bool)

(assert (=> b!1157736 (= e!658409 (= lt!520030 (getCurrentListMapNoExtraKeys!4747 lt!520022 lt!520031 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004)))))

(declare-fun b!1157737 () Bool)

(assert (=> b!1157737 (= e!658410 (= call!55488 (-!1385 call!55487 k0!934)))))

(declare-fun b!1157738 () Bool)

(declare-fun res!768862 () Bool)

(assert (=> b!1157738 (=> (not res!768862) (not e!658419))))

(assert (=> b!1157738 (= res!768862 (arrayNoDuplicates!0 lt!520022 #b00000000000000000000000000000000 Nil!25386))))

(declare-fun bm!55482 () Bool)

(declare-fun c!115265 () Bool)

(assert (=> bm!55482 (= call!55483 (+!3639 (ite c!115266 lt!520034 lt!520028) (ite c!115266 (tuple2!18609 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944) (ite c!115265 (tuple2!18609 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!18609 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944)))))))

(declare-fun b!1157739 () Bool)

(declare-fun e!658418 () Bool)

(assert (=> b!1157739 (= e!658418 (arrayContainsKey!0 _keys!1208 k0!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun b!1157740 () Bool)

(declare-fun Unit!38036 () Unit!38032)

(assert (=> b!1157740 (= e!658420 Unit!38036)))

(assert (=> b!1157740 (= lt!520015 (= (bvand extraKeys!923 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(assert (=> b!1157740 (= c!115266 (and (not lt!520015) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun lt!520032 () Unit!38032)

(assert (=> b!1157740 (= lt!520032 e!658413)))

(declare-fun lt!520017 () Unit!38032)

(declare-fun lemmaListMapContainsThenArrayContainsFrom!511 (array!74840 array!74842 (_ BitVec 32) (_ BitVec 32) V!43827 V!43827 (_ BitVec 64) (_ BitVec 32) Int) Unit!38032)

(assert (=> b!1157740 (= lt!520017 (lemmaListMapContainsThenArrayContainsFrom!511 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun c!115261 () Bool)

(assert (=> b!1157740 (= c!115261 (and (not (= k0!934 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!934 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun res!768854 () Bool)

(assert (=> b!1157740 (= res!768854 e!658423)))

(assert (=> b!1157740 (=> (not res!768854) (not e!658418))))

(assert (=> b!1157740 e!658418))

(declare-fun lt!520029 () Unit!38032)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!74840 (_ BitVec 32) (_ BitVec 32)) Unit!38032)

(assert (=> b!1157740 (= lt!520029 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1208 #b00000000000000000000000000000000 from!1455))))

(assert (=> b!1157740 (arrayNoDuplicates!0 _keys!1208 from!1455 Nil!25386)))

(declare-fun lt!520020 () Unit!38032)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!74840 (_ BitVec 64) (_ BitVec 32) List!25389) Unit!38032)

(assert (=> b!1157740 (= lt!520020 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!1208 k0!934 from!1455 Nil!25386))))

(assert (=> b!1157740 false))

(declare-fun bm!55483 () Bool)

(assert (=> bm!55483 (= call!55487 (getCurrentListMapNoExtraKeys!4747 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1157741 () Bool)

(declare-fun res!768857 () Bool)

(assert (=> b!1157741 (=> (not res!768857) (not e!658421))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1157741 (= res!768857 (validKeyInArray!0 k0!934))))

(declare-fun mapNonEmpty!45362 () Bool)

(declare-fun mapRes!45362 () Bool)

(declare-fun tp!86196 () Bool)

(assert (=> mapNonEmpty!45362 (= mapRes!45362 (and tp!86196 e!658415))))

(declare-fun mapKey!45362 () (_ BitVec 32))

(declare-fun mapRest!45362 () (Array (_ BitVec 32) ValueCell!13803))

(declare-fun mapValue!45362 () ValueCell!13803)

(assert (=> mapNonEmpty!45362 (= (arr!36068 _values!996) (store mapRest!45362 mapKey!45362 mapValue!45362))))

(declare-fun b!1157742 () Bool)

(declare-fun e!658414 () Bool)

(assert (=> b!1157742 (= e!658419 (not e!658414))))

(declare-fun res!768849 () Bool)

(assert (=> b!1157742 (=> res!768849 e!658414)))

(assert (=> b!1157742 (= res!768849 (bvsgt from!1455 i!673))))

(assert (=> b!1157742 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-fun lt!520035 () Unit!38032)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!74840 (_ BitVec 64) (_ BitVec 32)) Unit!38032)

(assert (=> b!1157742 (= lt!520035 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1157743 () Bool)

(assert (=> b!1157743 (= e!658423 (ite (= k0!934 #b0000000000000000000000000000000000000000000000000000000000000000) (not lt!520015) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!1157744 () Bool)

(assert (=> b!1157744 (= c!115265 (and (not lt!520015) (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(assert (=> b!1157744 (= e!658413 e!658425)))

(declare-fun b!1157745 () Bool)

(declare-fun e!658416 () Bool)

(assert (=> b!1157745 (= e!658416 (and e!658411 mapRes!45362))))

(declare-fun condMapEmpty!45362 () Bool)

(declare-fun mapDefault!45362 () ValueCell!13803)

(assert (=> b!1157745 (= condMapEmpty!45362 (= (arr!36068 _values!996) ((as const (Array (_ BitVec 32) ValueCell!13803)) mapDefault!45362)))))

(declare-fun b!1157746 () Bool)

(assert (=> b!1157746 call!55481))

(declare-fun lt!520027 () Unit!38032)

(assert (=> b!1157746 (= lt!520027 call!55486)))

(assert (=> b!1157746 (= e!658412 lt!520027)))

(declare-fun b!1157747 () Bool)

(assert (=> b!1157747 (= e!658414 e!658422)))

(declare-fun res!768856 () Bool)

(assert (=> b!1157747 (=> res!768856 e!658422)))

(assert (=> b!1157747 (= res!768856 (not (= from!1455 i!673)))))

(declare-fun lt!520025 () ListLongMap!16589)

(assert (=> b!1157747 (= lt!520025 (getCurrentListMapNoExtraKeys!4747 lt!520022 lt!520031 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(assert (=> b!1157747 (= lt!520031 (array!74843 (store (arr!36068 _values!996) i!673 (ValueCellFull!13803 lt!520023)) (size!36605 _values!996)))))

(declare-fun dynLambda!2755 (Int (_ BitVec 64)) V!43827)

(assert (=> b!1157747 (= lt!520023 (dynLambda!2755 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1157747 (= lt!520018 (getCurrentListMapNoExtraKeys!4747 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun bm!55485 () Bool)

(assert (=> bm!55485 (= call!55484 call!55483)))

(declare-fun mapIsEmpty!45362 () Bool)

(assert (=> mapIsEmpty!45362 mapRes!45362))

(declare-fun bm!55484 () Bool)

(assert (=> bm!55484 (= call!55485 (addStillContains!934 (ite c!115266 lt!520034 lt!520028) (ite c!115266 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!115265 #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000)) (ite c!115266 minValue!944 (ite c!115265 zeroValue!944 minValue!944)) k0!934))))

(declare-fun res!768859 () Bool)

(assert (=> start!98926 (=> (not res!768859) (not e!658421))))

(assert (=> start!98926 (= res!768859 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!36604 _keys!1208))))))

(assert (=> start!98926 e!658421))

(assert (=> start!98926 tp_is_empty!29025))

(declare-fun array_inv!27470 (array!74840) Bool)

(assert (=> start!98926 (array_inv!27470 _keys!1208)))

(assert (=> start!98926 true))

(assert (=> start!98926 tp!86197))

(declare-fun array_inv!27471 (array!74842) Bool)

(assert (=> start!98926 (and (array_inv!27471 _values!996) e!658416)))

(assert (= (and start!98926 res!768859) b!1157735))

(assert (= (and b!1157735 res!768863) b!1157724))

(assert (= (and b!1157724 res!768851) b!1157722))

(assert (= (and b!1157722 res!768852) b!1157728))

(assert (= (and b!1157728 res!768860) b!1157730))

(assert (= (and b!1157730 res!768853) b!1157741))

(assert (= (and b!1157741 res!768857) b!1157729))

(assert (= (and b!1157729 res!768850) b!1157734))

(assert (= (and b!1157734 res!768855) b!1157738))

(assert (= (and b!1157738 res!768862) b!1157742))

(assert (= (and b!1157742 (not res!768849)) b!1157747))

(assert (= (and b!1157747 (not res!768856)) b!1157721))

(assert (= (and b!1157721 c!115262) b!1157737))

(assert (= (and b!1157721 (not c!115262)) b!1157723))

(assert (= (or b!1157737 b!1157723) bm!55479))

(assert (= (or b!1157737 b!1157723) bm!55483))

(assert (= (and b!1157721 (not res!768861)) b!1157725))

(assert (= (and b!1157725 c!115263) b!1157740))

(assert (= (and b!1157725 (not c!115263)) b!1157732))

(assert (= (and b!1157740 c!115266) b!1157731))

(assert (= (and b!1157740 (not c!115266)) b!1157744))

(assert (= (and b!1157744 c!115265) b!1157718))

(assert (= (and b!1157744 (not c!115265)) b!1157726))

(assert (= (and b!1157726 c!115264) b!1157746))

(assert (= (and b!1157726 (not c!115264)) b!1157719))

(assert (= (or b!1157718 b!1157746) bm!55481))

(assert (= (or b!1157718 b!1157746) bm!55485))

(assert (= (or b!1157718 b!1157746) bm!55478))

(assert (= (or b!1157731 bm!55478) bm!55480))

(assert (= (or b!1157731 bm!55481) bm!55484))

(assert (= (or b!1157731 bm!55485) bm!55482))

(assert (= (and b!1157740 c!115261) b!1157727))

(assert (= (and b!1157740 (not c!115261)) b!1157743))

(assert (= (and b!1157740 res!768854) b!1157739))

(assert (= (and b!1157725 res!768858) b!1157736))

(assert (= (and b!1157745 condMapEmpty!45362) mapIsEmpty!45362))

(assert (= (and b!1157745 (not condMapEmpty!45362)) mapNonEmpty!45362))

(get-info :version)

(assert (= (and mapNonEmpty!45362 ((_ is ValueCellFull!13803) mapValue!45362)) b!1157733))

(assert (= (and b!1157745 ((_ is ValueCellFull!13803) mapDefault!45362)) b!1157720))

(assert (= start!98926 b!1157745))

(declare-fun b_lambda!19619 () Bool)

(assert (=> (not b_lambda!19619) (not b!1157747)))

(declare-fun t!36881 () Bool)

(declare-fun tb!9315 () Bool)

(assert (=> (and start!98926 (= defaultEntry!1004 defaultEntry!1004) t!36881) tb!9315))

(declare-fun result!19187 () Bool)

(assert (=> tb!9315 (= result!19187 tp_is_empty!29025)))

(assert (=> b!1157747 t!36881))

(declare-fun b_and!39855 () Bool)

(assert (= b_and!39853 (and (=> t!36881 result!19187) b_and!39855)))

(declare-fun m!1067063 () Bool)

(assert (=> b!1157742 m!1067063))

(declare-fun m!1067065 () Bool)

(assert (=> b!1157742 m!1067065))

(declare-fun m!1067067 () Bool)

(assert (=> b!1157738 m!1067067))

(declare-fun m!1067069 () Bool)

(assert (=> bm!55483 m!1067069))

(declare-fun m!1067071 () Bool)

(assert (=> b!1157729 m!1067071))

(declare-fun m!1067073 () Bool)

(assert (=> b!1157735 m!1067073))

(declare-fun m!1067075 () Bool)

(assert (=> b!1157736 m!1067075))

(declare-fun m!1067077 () Bool)

(assert (=> b!1157740 m!1067077))

(declare-fun m!1067079 () Bool)

(assert (=> b!1157740 m!1067079))

(declare-fun m!1067081 () Bool)

(assert (=> b!1157740 m!1067081))

(declare-fun m!1067083 () Bool)

(assert (=> b!1157740 m!1067083))

(declare-fun m!1067085 () Bool)

(assert (=> b!1157741 m!1067085))

(declare-fun m!1067087 () Bool)

(assert (=> b!1157734 m!1067087))

(declare-fun m!1067089 () Bool)

(assert (=> b!1157734 m!1067089))

(declare-fun m!1067091 () Bool)

(assert (=> b!1157727 m!1067091))

(assert (=> bm!55479 m!1067075))

(assert (=> b!1157725 m!1067069))

(declare-fun m!1067093 () Bool)

(assert (=> b!1157725 m!1067093))

(declare-fun m!1067095 () Bool)

(assert (=> b!1157725 m!1067095))

(declare-fun m!1067097 () Bool)

(assert (=> b!1157725 m!1067097))

(declare-fun m!1067099 () Bool)

(assert (=> b!1157725 m!1067099))

(declare-fun m!1067101 () Bool)

(assert (=> b!1157725 m!1067101))

(assert (=> b!1157725 m!1067093))

(declare-fun m!1067103 () Bool)

(assert (=> b!1157725 m!1067103))

(declare-fun m!1067105 () Bool)

(assert (=> b!1157725 m!1067105))

(assert (=> b!1157725 m!1067097))

(assert (=> b!1157725 m!1067099))

(declare-fun m!1067107 () Bool)

(assert (=> b!1157725 m!1067107))

(assert (=> b!1157725 m!1067099))

(declare-fun m!1067109 () Bool)

(assert (=> mapNonEmpty!45362 m!1067109))

(declare-fun m!1067111 () Bool)

(assert (=> b!1157728 m!1067111))

(declare-fun m!1067113 () Bool)

(assert (=> b!1157731 m!1067113))

(declare-fun m!1067115 () Bool)

(assert (=> b!1157731 m!1067115))

(declare-fun m!1067117 () Bool)

(assert (=> b!1157731 m!1067117))

(declare-fun m!1067119 () Bool)

(assert (=> bm!55480 m!1067119))

(declare-fun m!1067121 () Bool)

(assert (=> start!98926 m!1067121))

(declare-fun m!1067123 () Bool)

(assert (=> start!98926 m!1067123))

(assert (=> b!1157739 m!1067091))

(declare-fun m!1067125 () Bool)

(assert (=> b!1157722 m!1067125))

(declare-fun m!1067127 () Bool)

(assert (=> b!1157747 m!1067127))

(declare-fun m!1067129 () Bool)

(assert (=> b!1157747 m!1067129))

(declare-fun m!1067131 () Bool)

(assert (=> b!1157747 m!1067131))

(declare-fun m!1067133 () Bool)

(assert (=> b!1157747 m!1067133))

(assert (=> b!1157721 m!1067099))

(declare-fun m!1067135 () Bool)

(assert (=> b!1157721 m!1067135))

(declare-fun m!1067137 () Bool)

(assert (=> bm!55484 m!1067137))

(declare-fun m!1067139 () Bool)

(assert (=> b!1157737 m!1067139))

(declare-fun m!1067141 () Bool)

(assert (=> bm!55482 m!1067141))

(check-sat (not bm!55482) (not bm!55479) (not b!1157722) (not b!1157736) (not b!1157737) (not b!1157727) (not b!1157735) (not b!1157742) (not b!1157747) (not b!1157725) (not start!98926) (not b!1157731) (not b_lambda!19619) (not mapNonEmpty!45362) (not b!1157728) (not bm!55480) (not b!1157734) (not bm!55484) (not bm!55483) (not b!1157721) (not b_next!24495) (not b!1157739) tp_is_empty!29025 (not b!1157741) (not b!1157738) (not b!1157740) b_and!39855)
(check-sat b_and!39855 (not b_next!24495))
