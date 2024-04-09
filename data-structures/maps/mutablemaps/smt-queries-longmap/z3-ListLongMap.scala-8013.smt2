; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!98956 () Bool)

(assert start!98956)

(declare-fun b_free!24525 () Bool)

(declare-fun b_next!24525 () Bool)

(assert (=> start!98956 (= b_free!24525 (not b_next!24525))))

(declare-fun tp!86286 () Bool)

(declare-fun b_and!39913 () Bool)

(assert (=> start!98956 (= tp!86286 b_and!39913)))

(declare-fun b!1159098 () Bool)

(declare-fun e!659182 () Bool)

(assert (=> b!1159098 (= e!659182 true)))

(declare-fun e!659174 () Bool)

(assert (=> b!1159098 e!659174))

(declare-fun res!769534 () Bool)

(assert (=> b!1159098 (=> (not res!769534) (not e!659174))))

(declare-datatypes ((V!43867 0))(
  ( (V!43868 (val!14584 Int)) )
))
(declare-datatypes ((tuple2!18638 0))(
  ( (tuple2!18639 (_1!9329 (_ BitVec 64)) (_2!9329 V!43867)) )
))
(declare-datatypes ((List!25416 0))(
  ( (Nil!25413) (Cons!25412 (h!26621 tuple2!18638) (t!36940 List!25416)) )
))
(declare-datatypes ((ListLongMap!16619 0))(
  ( (ListLongMap!16620 (toList!8325 List!25416)) )
))
(declare-fun lt!521010 () ListLongMap!16619)

(declare-fun lt!521015 () ListLongMap!16619)

(assert (=> b!1159098 (= res!769534 (= lt!521010 lt!521015))))

(declare-fun lt!521006 () ListLongMap!16619)

(declare-fun k0!934 () (_ BitVec 64))

(declare-fun -!1397 (ListLongMap!16619 (_ BitVec 64)) ListLongMap!16619)

(assert (=> b!1159098 (= lt!521010 (-!1397 lt!521006 k0!934))))

(declare-datatypes ((array!74900 0))(
  ( (array!74901 (arr!36097 (Array (_ BitVec 32) (_ BitVec 64))) (size!36634 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!74900)

(declare-fun lt!521023 () V!43867)

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun +!3651 (ListLongMap!16619 tuple2!18638) ListLongMap!16619)

(assert (=> b!1159098 (= (-!1397 (+!3651 lt!521015 (tuple2!18639 (select (arr!36097 _keys!1208) from!1455) lt!521023)) (select (arr!36097 _keys!1208) from!1455)) lt!521015)))

(declare-datatypes ((Unit!38090 0))(
  ( (Unit!38091) )
))
(declare-fun lt!521022 () Unit!38090)

(declare-fun addThenRemoveForNewKeyIsSame!236 (ListLongMap!16619 (_ BitVec 64) V!43867) Unit!38090)

(assert (=> b!1159098 (= lt!521022 (addThenRemoveForNewKeyIsSame!236 lt!521015 (select (arr!36097 _keys!1208) from!1455) lt!521023))))

(declare-fun lt!521018 () V!43867)

(declare-datatypes ((ValueCell!13818 0))(
  ( (ValueCellFull!13818 (v!17222 V!43867)) (EmptyCell!13818) )
))
(declare-datatypes ((array!74902 0))(
  ( (array!74903 (arr!36098 (Array (_ BitVec 32) ValueCell!13818)) (size!36635 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!74902)

(declare-fun get!18432 (ValueCell!13818 V!43867) V!43867)

(assert (=> b!1159098 (= lt!521023 (get!18432 (select (arr!36098 _values!996) from!1455) lt!521018))))

(declare-fun lt!521019 () Unit!38090)

(declare-fun e!659186 () Unit!38090)

(assert (=> b!1159098 (= lt!521019 e!659186)))

(declare-fun c!115531 () Bool)

(declare-fun contains!6807 (ListLongMap!16619 (_ BitVec 64)) Bool)

(assert (=> b!1159098 (= c!115531 (contains!6807 lt!521015 k0!934))))

(declare-fun zeroValue!944 () V!43867)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-fun minValue!944 () V!43867)

(declare-fun getCurrentListMapNoExtraKeys!4761 (array!74900 array!74902 (_ BitVec 32) (_ BitVec 32) V!43867 V!43867 (_ BitVec 32) Int) ListLongMap!16619)

(assert (=> b!1159098 (= lt!521015 (getCurrentListMapNoExtraKeys!4761 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun c!115535 () Bool)

(declare-fun c!115534 () Bool)

(declare-fun call!55844 () Unit!38090)

(declare-fun bm!55838 () Bool)

(declare-fun addStillContains!948 (ListLongMap!16619 (_ BitVec 64) V!43867 (_ BitVec 64)) Unit!38090)

(assert (=> bm!55838 (= call!55844 (addStillContains!948 lt!521015 (ite (or c!115535 c!115534) #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000) (ite (or c!115535 c!115534) zeroValue!944 minValue!944) k0!934))))

(declare-fun b!1159100 () Bool)

(declare-fun e!659184 () Bool)

(declare-fun tp_is_empty!29055 () Bool)

(assert (=> b!1159100 (= e!659184 tp_is_empty!29055)))

(declare-fun b!1159101 () Bool)

(declare-fun e!659185 () Unit!38090)

(declare-fun lt!521017 () Unit!38090)

(assert (=> b!1159101 (= e!659185 lt!521017)))

(declare-fun call!55845 () Unit!38090)

(assert (=> b!1159101 (= lt!521017 call!55845)))

(declare-fun call!55841 () Bool)

(assert (=> b!1159101 call!55841))

(declare-fun b!1159102 () Bool)

(declare-fun Unit!38092 () Unit!38090)

(assert (=> b!1159102 (= e!659186 Unit!38092)))

(declare-fun mapIsEmpty!45407 () Bool)

(declare-fun mapRes!45407 () Bool)

(assert (=> mapIsEmpty!45407 mapRes!45407))

(declare-fun b!1159103 () Bool)

(declare-fun e!659187 () Bool)

(declare-fun call!55848 () ListLongMap!16619)

(declare-fun call!55847 () ListLongMap!16619)

(assert (=> b!1159103 (= e!659187 (= call!55848 (-!1397 call!55847 k0!934)))))

(declare-fun b!1159104 () Bool)

(declare-fun res!769536 () Bool)

(declare-fun e!659179 () Bool)

(assert (=> b!1159104 (=> (not res!769536) (not e!659179))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!74900 (_ BitVec 32)) Bool)

(assert (=> b!1159104 (= res!769536 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1159105 () Bool)

(declare-fun res!769538 () Bool)

(assert (=> b!1159105 (=> (not res!769538) (not e!659179))))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1159105 (= res!769538 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!36634 _keys!1208))))))

(declare-fun lt!521012 () Bool)

(declare-fun b!1159106 () Bool)

(declare-fun e!659183 () Bool)

(assert (=> b!1159106 (= e!659183 (ite (= k0!934 #b0000000000000000000000000000000000000000000000000000000000000000) (not lt!521012) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!1159099 () Bool)

(declare-fun e!659190 () Bool)

(assert (=> b!1159099 (= e!659179 e!659190)))

(declare-fun res!769533 () Bool)

(assert (=> b!1159099 (=> (not res!769533) (not e!659190))))

(declare-fun lt!521021 () array!74900)

(assert (=> b!1159099 (= res!769533 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!521021 mask!1564))))

(assert (=> b!1159099 (= lt!521021 (array!74901 (store (arr!36097 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!36634 _keys!1208)))))

(declare-fun res!769530 () Bool)

(assert (=> start!98956 (=> (not res!769530) (not e!659179))))

(assert (=> start!98956 (= res!769530 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!36634 _keys!1208))))))

(assert (=> start!98956 e!659179))

(assert (=> start!98956 tp_is_empty!29055))

(declare-fun array_inv!27488 (array!74900) Bool)

(assert (=> start!98956 (array_inv!27488 _keys!1208)))

(assert (=> start!98956 true))

(assert (=> start!98956 tp!86286))

(declare-fun e!659178 () Bool)

(declare-fun array_inv!27489 (array!74902) Bool)

(assert (=> start!98956 (and (array_inv!27489 _values!996) e!659178)))

(declare-fun b!1159107 () Bool)

(declare-fun e!659176 () Unit!38090)

(declare-fun Unit!38093 () Unit!38090)

(assert (=> b!1159107 (= e!659176 Unit!38093)))

(declare-fun b!1159108 () Bool)

(assert (=> b!1159108 (= c!115534 (and (not lt!521012) (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun e!659180 () Unit!38090)

(assert (=> b!1159108 (= e!659180 e!659185)))

(declare-fun bm!55839 () Bool)

(assert (=> bm!55839 (= call!55845 call!55844)))

(declare-fun b!1159109 () Bool)

(declare-fun lt!521024 () ListLongMap!16619)

(assert (=> b!1159109 (contains!6807 (+!3651 lt!521024 (tuple2!18639 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944)) k0!934)))

(declare-fun lt!521008 () Unit!38090)

(assert (=> b!1159109 (= lt!521008 (addStillContains!948 lt!521024 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944 k0!934))))

(declare-fun call!55846 () Bool)

(assert (=> b!1159109 call!55846))

(declare-fun call!55842 () ListLongMap!16619)

(assert (=> b!1159109 (= lt!521024 call!55842)))

(declare-fun lt!521016 () Unit!38090)

(assert (=> b!1159109 (= lt!521016 call!55844)))

(assert (=> b!1159109 (= e!659180 lt!521008)))

(declare-fun bm!55840 () Bool)

(assert (=> bm!55840 (= call!55842 (+!3651 lt!521015 (ite (or c!115535 c!115534) (tuple2!18639 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!18639 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944))))))

(declare-fun b!1159110 () Bool)

(assert (=> b!1159110 (= e!659187 (= call!55848 call!55847))))

(declare-fun b!1159111 () Bool)

(declare-fun e!659189 () Bool)

(assert (=> b!1159111 (= e!659190 (not e!659189))))

(declare-fun res!769528 () Bool)

(assert (=> b!1159111 (=> res!769528 e!659189)))

(assert (=> b!1159111 (= res!769528 (bvsgt from!1455 i!673))))

(declare-fun arrayContainsKey!0 (array!74900 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1159111 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-fun lt!521013 () Unit!38090)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!74900 (_ BitVec 64) (_ BitVec 32)) Unit!38090)

(assert (=> b!1159111 (= lt!521013 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun e!659177 () Bool)

(declare-fun b!1159112 () Bool)

(assert (=> b!1159112 (= e!659177 (arrayContainsKey!0 _keys!1208 k0!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun b!1159113 () Bool)

(declare-fun res!769532 () Bool)

(assert (=> b!1159113 (=> (not res!769532) (not e!659179))))

(assert (=> b!1159113 (= res!769532 (= (select (arr!36097 _keys!1208) i!673) k0!934))))

(declare-fun mapNonEmpty!45407 () Bool)

(declare-fun tp!86287 () Bool)

(assert (=> mapNonEmpty!45407 (= mapRes!45407 (and tp!86287 e!659184))))

(declare-fun mapRest!45407 () (Array (_ BitVec 32) ValueCell!13818))

(declare-fun mapKey!45407 () (_ BitVec 32))

(declare-fun mapValue!45407 () ValueCell!13818)

(assert (=> mapNonEmpty!45407 (= (arr!36098 _values!996) (store mapRest!45407 mapKey!45407 mapValue!45407))))

(declare-fun b!1159114 () Bool)

(declare-fun e!659188 () Bool)

(assert (=> b!1159114 (= e!659178 (and e!659188 mapRes!45407))))

(declare-fun condMapEmpty!45407 () Bool)

(declare-fun mapDefault!45407 () ValueCell!13818)

(assert (=> b!1159114 (= condMapEmpty!45407 (= (arr!36098 _values!996) ((as const (Array (_ BitVec 32) ValueCell!13818)) mapDefault!45407)))))

(declare-fun b!1159115 () Bool)

(declare-fun res!769526 () Bool)

(assert (=> b!1159115 (=> (not res!769526) (not e!659179))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1159115 (= res!769526 (validKeyInArray!0 k0!934))))

(declare-fun b!1159116 () Bool)

(declare-fun e!659175 () Bool)

(assert (=> b!1159116 (= e!659189 e!659175)))

(declare-fun res!769525 () Bool)

(assert (=> b!1159116 (=> res!769525 e!659175)))

(assert (=> b!1159116 (= res!769525 (not (= from!1455 i!673)))))

(declare-fun lt!521014 () ListLongMap!16619)

(declare-fun lt!521011 () array!74902)

(assert (=> b!1159116 (= lt!521014 (getCurrentListMapNoExtraKeys!4761 lt!521021 lt!521011 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(assert (=> b!1159116 (= lt!521011 (array!74903 (store (arr!36098 _values!996) i!673 (ValueCellFull!13818 lt!521018)) (size!36635 _values!996)))))

(declare-fun dynLambda!2765 (Int (_ BitVec 64)) V!43867)

(assert (=> b!1159116 (= lt!521018 (dynLambda!2765 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1159116 (= lt!521006 (getCurrentListMapNoExtraKeys!4761 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1159117 () Bool)

(assert (=> b!1159117 call!55841))

(declare-fun lt!521025 () Unit!38090)

(assert (=> b!1159117 (= lt!521025 call!55845)))

(assert (=> b!1159117 (= e!659176 lt!521025)))

(declare-fun bm!55841 () Bool)

(declare-fun call!55843 () ListLongMap!16619)

(assert (=> bm!55841 (= call!55843 call!55842)))

(declare-fun b!1159118 () Bool)

(assert (=> b!1159118 (= e!659183 (arrayContainsKey!0 _keys!1208 k0!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun b!1159119 () Bool)

(assert (=> b!1159119 (= e!659174 (= lt!521010 (getCurrentListMapNoExtraKeys!4761 lt!521021 lt!521011 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004)))))

(declare-fun b!1159120 () Bool)

(assert (=> b!1159120 (= e!659175 e!659182)))

(declare-fun res!769529 () Bool)

(assert (=> b!1159120 (=> res!769529 e!659182)))

(assert (=> b!1159120 (= res!769529 (not (= (select (arr!36097 _keys!1208) from!1455) k0!934)))))

(assert (=> b!1159120 e!659187))

(declare-fun c!115533 () Bool)

(assert (=> b!1159120 (= c!115533 (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673))))

(declare-fun lt!521004 () Unit!38090)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!623 (array!74900 array!74902 (_ BitVec 32) (_ BitVec 32) V!43867 V!43867 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!38090)

(assert (=> b!1159120 (= lt!521004 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!623 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1159121 () Bool)

(declare-fun res!769531 () Bool)

(assert (=> b!1159121 (=> (not res!769531) (not e!659190))))

(declare-datatypes ((List!25417 0))(
  ( (Nil!25414) (Cons!25413 (h!26622 (_ BitVec 64)) (t!36941 List!25417)) )
))
(declare-fun arrayNoDuplicates!0 (array!74900 (_ BitVec 32) List!25417) Bool)

(assert (=> b!1159121 (= res!769531 (arrayNoDuplicates!0 lt!521021 #b00000000000000000000000000000000 Nil!25414))))

(declare-fun bm!55842 () Bool)

(assert (=> bm!55842 (= call!55848 (getCurrentListMapNoExtraKeys!4761 lt!521021 lt!521011 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1159122 () Bool)

(declare-fun Unit!38094 () Unit!38090)

(assert (=> b!1159122 (= e!659186 Unit!38094)))

(assert (=> b!1159122 (= lt!521012 (= (bvand extraKeys!923 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(assert (=> b!1159122 (= c!115535 (and (not lt!521012) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun lt!521020 () Unit!38090)

(assert (=> b!1159122 (= lt!521020 e!659180)))

(declare-fun lt!521007 () Unit!38090)

(declare-fun lemmaListMapContainsThenArrayContainsFrom!522 (array!74900 array!74902 (_ BitVec 32) (_ BitVec 32) V!43867 V!43867 (_ BitVec 64) (_ BitVec 32) Int) Unit!38090)

(assert (=> b!1159122 (= lt!521007 (lemmaListMapContainsThenArrayContainsFrom!522 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun c!115532 () Bool)

(assert (=> b!1159122 (= c!115532 (and (not (= k0!934 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!934 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun res!769524 () Bool)

(assert (=> b!1159122 (= res!769524 e!659183)))

(assert (=> b!1159122 (=> (not res!769524) (not e!659177))))

(assert (=> b!1159122 e!659177))

(declare-fun lt!521005 () Unit!38090)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!74900 (_ BitVec 32) (_ BitVec 32)) Unit!38090)

(assert (=> b!1159122 (= lt!521005 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1208 #b00000000000000000000000000000000 from!1455))))

(assert (=> b!1159122 (arrayNoDuplicates!0 _keys!1208 from!1455 Nil!25414)))

(declare-fun lt!521009 () Unit!38090)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!74900 (_ BitVec 64) (_ BitVec 32) List!25417) Unit!38090)

(assert (=> b!1159122 (= lt!521009 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!1208 k0!934 from!1455 Nil!25414))))

(assert (=> b!1159122 false))

(declare-fun bm!55843 () Bool)

(assert (=> bm!55843 (= call!55847 (getCurrentListMapNoExtraKeys!4761 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1159123 () Bool)

(declare-fun res!769535 () Bool)

(assert (=> b!1159123 (=> (not res!769535) (not e!659179))))

(assert (=> b!1159123 (= res!769535 (and (= (size!36635 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!36634 _keys!1208) (size!36635 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun bm!55844 () Bool)

(assert (=> bm!55844 (= call!55841 call!55846)))

(declare-fun b!1159124 () Bool)

(declare-fun res!769527 () Bool)

(assert (=> b!1159124 (=> (not res!769527) (not e!659179))))

(assert (=> b!1159124 (= res!769527 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!25414))))

(declare-fun b!1159125 () Bool)

(assert (=> b!1159125 (= e!659188 tp_is_empty!29055)))

(declare-fun bm!55845 () Bool)

(assert (=> bm!55845 (= call!55846 (contains!6807 (ite c!115535 lt!521024 call!55843) k0!934))))

(declare-fun b!1159126 () Bool)

(assert (=> b!1159126 (= e!659185 e!659176)))

(declare-fun c!115536 () Bool)

(assert (=> b!1159126 (= c!115536 (and (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!521012))))

(declare-fun b!1159127 () Bool)

(declare-fun res!769537 () Bool)

(assert (=> b!1159127 (=> (not res!769537) (not e!659179))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1159127 (= res!769537 (validMask!0 mask!1564))))

(assert (= (and start!98956 res!769530) b!1159127))

(assert (= (and b!1159127 res!769537) b!1159123))

(assert (= (and b!1159123 res!769535) b!1159104))

(assert (= (and b!1159104 res!769536) b!1159124))

(assert (= (and b!1159124 res!769527) b!1159105))

(assert (= (and b!1159105 res!769538) b!1159115))

(assert (= (and b!1159115 res!769526) b!1159113))

(assert (= (and b!1159113 res!769532) b!1159099))

(assert (= (and b!1159099 res!769533) b!1159121))

(assert (= (and b!1159121 res!769531) b!1159111))

(assert (= (and b!1159111 (not res!769528)) b!1159116))

(assert (= (and b!1159116 (not res!769525)) b!1159120))

(assert (= (and b!1159120 c!115533) b!1159103))

(assert (= (and b!1159120 (not c!115533)) b!1159110))

(assert (= (or b!1159103 b!1159110) bm!55842))

(assert (= (or b!1159103 b!1159110) bm!55843))

(assert (= (and b!1159120 (not res!769529)) b!1159098))

(assert (= (and b!1159098 c!115531) b!1159122))

(assert (= (and b!1159098 (not c!115531)) b!1159102))

(assert (= (and b!1159122 c!115535) b!1159109))

(assert (= (and b!1159122 (not c!115535)) b!1159108))

(assert (= (and b!1159108 c!115534) b!1159101))

(assert (= (and b!1159108 (not c!115534)) b!1159126))

(assert (= (and b!1159126 c!115536) b!1159117))

(assert (= (and b!1159126 (not c!115536)) b!1159107))

(assert (= (or b!1159101 b!1159117) bm!55839))

(assert (= (or b!1159101 b!1159117) bm!55841))

(assert (= (or b!1159101 b!1159117) bm!55844))

(assert (= (or b!1159109 bm!55844) bm!55845))

(assert (= (or b!1159109 bm!55839) bm!55838))

(assert (= (or b!1159109 bm!55841) bm!55840))

(assert (= (and b!1159122 c!115532) b!1159118))

(assert (= (and b!1159122 (not c!115532)) b!1159106))

(assert (= (and b!1159122 res!769524) b!1159112))

(assert (= (and b!1159098 res!769534) b!1159119))

(assert (= (and b!1159114 condMapEmpty!45407) mapIsEmpty!45407))

(assert (= (and b!1159114 (not condMapEmpty!45407)) mapNonEmpty!45407))

(get-info :version)

(assert (= (and mapNonEmpty!45407 ((_ is ValueCellFull!13818) mapValue!45407)) b!1159100))

(assert (= (and b!1159114 ((_ is ValueCellFull!13818) mapDefault!45407)) b!1159125))

(assert (= start!98956 b!1159114))

(declare-fun b_lambda!19649 () Bool)

(assert (=> (not b_lambda!19649) (not b!1159116)))

(declare-fun t!36939 () Bool)

(declare-fun tb!9345 () Bool)

(assert (=> (and start!98956 (= defaultEntry!1004 defaultEntry!1004) t!36939) tb!9345))

(declare-fun result!19247 () Bool)

(assert (=> tb!9345 (= result!19247 tp_is_empty!29055)))

(assert (=> b!1159116 t!36939))

(declare-fun b_and!39915 () Bool)

(assert (= b_and!39913 (and (=> t!36939 result!19247) b_and!39915)))

(declare-fun m!1068263 () Bool)

(assert (=> b!1159098 m!1068263))

(declare-fun m!1068265 () Bool)

(assert (=> b!1159098 m!1068265))

(declare-fun m!1068267 () Bool)

(assert (=> b!1159098 m!1068267))

(declare-fun m!1068269 () Bool)

(assert (=> b!1159098 m!1068269))

(declare-fun m!1068271 () Bool)

(assert (=> b!1159098 m!1068271))

(assert (=> b!1159098 m!1068271))

(declare-fun m!1068273 () Bool)

(assert (=> b!1159098 m!1068273))

(assert (=> b!1159098 m!1068265))

(declare-fun m!1068275 () Bool)

(assert (=> b!1159098 m!1068275))

(declare-fun m!1068277 () Bool)

(assert (=> b!1159098 m!1068277))

(assert (=> b!1159098 m!1068267))

(declare-fun m!1068279 () Bool)

(assert (=> b!1159098 m!1068279))

(assert (=> b!1159098 m!1068267))

(declare-fun m!1068281 () Bool)

(assert (=> b!1159103 m!1068281))

(declare-fun m!1068283 () Bool)

(assert (=> bm!55838 m!1068283))

(declare-fun m!1068285 () Bool)

(assert (=> b!1159116 m!1068285))

(declare-fun m!1068287 () Bool)

(assert (=> b!1159116 m!1068287))

(declare-fun m!1068289 () Bool)

(assert (=> b!1159116 m!1068289))

(declare-fun m!1068291 () Bool)

(assert (=> b!1159116 m!1068291))

(declare-fun m!1068293 () Bool)

(assert (=> mapNonEmpty!45407 m!1068293))

(declare-fun m!1068295 () Bool)

(assert (=> b!1159112 m!1068295))

(assert (=> bm!55843 m!1068263))

(declare-fun m!1068297 () Bool)

(assert (=> b!1159109 m!1068297))

(assert (=> b!1159109 m!1068297))

(declare-fun m!1068299 () Bool)

(assert (=> b!1159109 m!1068299))

(declare-fun m!1068301 () Bool)

(assert (=> b!1159109 m!1068301))

(declare-fun m!1068303 () Bool)

(assert (=> start!98956 m!1068303))

(declare-fun m!1068305 () Bool)

(assert (=> start!98956 m!1068305))

(declare-fun m!1068307 () Bool)

(assert (=> bm!55842 m!1068307))

(declare-fun m!1068309 () Bool)

(assert (=> bm!55840 m!1068309))

(declare-fun m!1068311 () Bool)

(assert (=> b!1159104 m!1068311))

(declare-fun m!1068313 () Bool)

(assert (=> b!1159115 m!1068313))

(declare-fun m!1068315 () Bool)

(assert (=> b!1159127 m!1068315))

(declare-fun m!1068317 () Bool)

(assert (=> b!1159124 m!1068317))

(declare-fun m!1068319 () Bool)

(assert (=> b!1159111 m!1068319))

(declare-fun m!1068321 () Bool)

(assert (=> b!1159111 m!1068321))

(declare-fun m!1068323 () Bool)

(assert (=> b!1159113 m!1068323))

(declare-fun m!1068325 () Bool)

(assert (=> b!1159122 m!1068325))

(declare-fun m!1068327 () Bool)

(assert (=> b!1159122 m!1068327))

(declare-fun m!1068329 () Bool)

(assert (=> b!1159122 m!1068329))

(declare-fun m!1068331 () Bool)

(assert (=> b!1159122 m!1068331))

(assert (=> b!1159120 m!1068267))

(declare-fun m!1068333 () Bool)

(assert (=> b!1159120 m!1068333))

(assert (=> b!1159119 m!1068307))

(declare-fun m!1068335 () Bool)

(assert (=> b!1159099 m!1068335))

(declare-fun m!1068337 () Bool)

(assert (=> b!1159099 m!1068337))

(declare-fun m!1068339 () Bool)

(assert (=> bm!55845 m!1068339))

(assert (=> b!1159118 m!1068295))

(declare-fun m!1068341 () Bool)

(assert (=> b!1159121 m!1068341))

(check-sat (not b!1159124) b_and!39915 (not b!1159115) (not b_next!24525) (not bm!55843) (not b!1159099) (not b!1159109) (not bm!55840) (not bm!55842) (not start!98956) tp_is_empty!29055 (not b!1159122) (not b!1159120) (not bm!55838) (not b!1159111) (not b!1159127) (not b_lambda!19649) (not b!1159098) (not b!1159118) (not b!1159121) (not mapNonEmpty!45407) (not b!1159103) (not b!1159116) (not bm!55845) (not b!1159112) (not b!1159104) (not b!1159119))
(check-sat b_and!39915 (not b_next!24525))
