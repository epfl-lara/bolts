; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!98754 () Bool)

(assert start!98754)

(declare-fun b_free!24323 () Bool)

(declare-fun b_next!24323 () Bool)

(assert (=> start!98754 (= b_free!24323 (not b_next!24323))))

(declare-fun tp!85681 () Bool)

(declare-fun b_and!39509 () Bool)

(assert (=> start!98754 (= tp!85681 b_and!39509)))

(declare-datatypes ((V!43597 0))(
  ( (V!43598 (val!14483 Int)) )
))
(declare-fun zeroValue!944 () V!43597)

(declare-fun c!113717 () Bool)

(declare-datatypes ((tuple2!18458 0))(
  ( (tuple2!18459 (_1!9239 (_ BitVec 64)) (_2!9239 V!43597)) )
))
(declare-datatypes ((List!25251 0))(
  ( (Nil!25248) (Cons!25247 (h!26456 tuple2!18458) (t!36573 List!25251)) )
))
(declare-datatypes ((ListLongMap!16439 0))(
  ( (ListLongMap!16440 (toList!8235 List!25251)) )
))
(declare-fun lt!514353 () ListLongMap!16439)

(declare-fun k!934 () (_ BitVec 64))

(declare-fun bm!53414 () Bool)

(declare-datatypes ((Unit!37725 0))(
  ( (Unit!37726) )
))
(declare-fun call!53422 () Unit!37725)

(declare-fun c!113715 () Bool)

(declare-fun minValue!944 () V!43597)

(declare-fun addStillContains!873 (ListLongMap!16439 (_ BitVec 64) V!43597 (_ BitVec 64)) Unit!37725)

(assert (=> bm!53414 (= call!53422 (addStillContains!873 lt!514353 (ite (or c!113715 c!113717) #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000) (ite (or c!113715 c!113717) zeroValue!944 minValue!944) k!934))))

(declare-fun b!1149806 () Bool)

(declare-fun e!654039 () Bool)

(declare-fun e!654035 () Bool)

(assert (=> b!1149806 (= e!654039 (not e!654035))))

(declare-fun res!764986 () Bool)

(assert (=> b!1149806 (=> res!764986 e!654035)))

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1149806 (= res!764986 (bvsgt from!1455 i!673))))

(declare-datatypes ((array!74510 0))(
  ( (array!74511 (arr!35902 (Array (_ BitVec 32) (_ BitVec 64))) (size!36439 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!74510)

(declare-fun arrayContainsKey!0 (array!74510 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1149806 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-fun lt!514340 () Unit!37725)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!74510 (_ BitVec 64) (_ BitVec 32)) Unit!37725)

(assert (=> b!1149806 (= lt!514340 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun e!654029 () Bool)

(declare-fun call!53423 () ListLongMap!16439)

(declare-fun call!53421 () ListLongMap!16439)

(declare-fun b!1149807 () Bool)

(declare-fun -!1322 (ListLongMap!16439 (_ BitVec 64)) ListLongMap!16439)

(assert (=> b!1149807 (= e!654029 (= call!53421 (-!1322 call!53423 k!934)))))

(declare-fun mapNonEmpty!45104 () Bool)

(declare-fun mapRes!45104 () Bool)

(declare-fun tp!85680 () Bool)

(declare-fun e!654026 () Bool)

(assert (=> mapNonEmpty!45104 (= mapRes!45104 (and tp!85680 e!654026))))

(declare-datatypes ((ValueCell!13717 0))(
  ( (ValueCellFull!13717 (v!17121 V!43597)) (EmptyCell!13717) )
))
(declare-datatypes ((array!74512 0))(
  ( (array!74513 (arr!35903 (Array (_ BitVec 32) ValueCell!13717)) (size!36440 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!74512)

(declare-fun mapRest!45104 () (Array (_ BitVec 32) ValueCell!13717))

(declare-fun mapValue!45104 () ValueCell!13717)

(declare-fun mapKey!45104 () (_ BitVec 32))

(assert (=> mapNonEmpty!45104 (= (arr!35903 _values!996) (store mapRest!45104 mapKey!45104 mapValue!45104))))

(declare-fun b!1149808 () Bool)

(declare-fun res!764982 () Bool)

(declare-fun e!654036 () Bool)

(assert (=> b!1149808 (=> (not res!764982) (not e!654036))))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1149808 (= res!764982 (validMask!0 mask!1564))))

(declare-fun b!1149809 () Bool)

(declare-fun e!654031 () Bool)

(assert (=> b!1149809 (= e!654031 true)))

(declare-fun e!654034 () Bool)

(assert (=> b!1149809 e!654034))

(declare-fun res!764981 () Bool)

(assert (=> b!1149809 (=> (not res!764981) (not e!654034))))

(declare-fun lt!514345 () ListLongMap!16439)

(assert (=> b!1149809 (= res!764981 (= lt!514345 lt!514353))))

(declare-fun lt!514351 () ListLongMap!16439)

(assert (=> b!1149809 (= lt!514345 (-!1322 lt!514351 k!934))))

(declare-fun lt!514338 () V!43597)

(declare-fun +!3572 (ListLongMap!16439 tuple2!18458) ListLongMap!16439)

(assert (=> b!1149809 (= (-!1322 (+!3572 lt!514353 (tuple2!18459 (select (arr!35902 _keys!1208) from!1455) lt!514338)) (select (arr!35902 _keys!1208) from!1455)) lt!514353)))

(declare-fun lt!514356 () Unit!37725)

(declare-fun addThenRemoveForNewKeyIsSame!171 (ListLongMap!16439 (_ BitVec 64) V!43597) Unit!37725)

(assert (=> b!1149809 (= lt!514356 (addThenRemoveForNewKeyIsSame!171 lt!514353 (select (arr!35902 _keys!1208) from!1455) lt!514338))))

(declare-fun lt!514346 () V!43597)

(declare-fun get!18299 (ValueCell!13717 V!43597) V!43597)

(assert (=> b!1149809 (= lt!514338 (get!18299 (select (arr!35903 _values!996) from!1455) lt!514346))))

(declare-fun lt!514341 () Unit!37725)

(declare-fun e!654037 () Unit!37725)

(assert (=> b!1149809 (= lt!514341 e!654037)))

(declare-fun c!113716 () Bool)

(declare-fun contains!6730 (ListLongMap!16439 (_ BitVec 64)) Bool)

(assert (=> b!1149809 (= c!113716 (contains!6730 lt!514353 k!934))))

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-fun getCurrentListMapNoExtraKeys!4676 (array!74510 array!74512 (_ BitVec 32) (_ BitVec 32) V!43597 V!43597 (_ BitVec 32) Int) ListLongMap!16439)

(assert (=> b!1149809 (= lt!514353 (getCurrentListMapNoExtraKeys!4676 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1149810 () Bool)

(declare-fun res!764984 () Bool)

(assert (=> b!1149810 (=> (not res!764984) (not e!654036))))

(assert (=> b!1149810 (= res!764984 (= (select (arr!35902 _keys!1208) i!673) k!934))))

(declare-fun b!1149811 () Bool)

(declare-fun Unit!37727 () Unit!37725)

(assert (=> b!1149811 (= e!654037 Unit!37727)))

(declare-fun lt!514339 () Bool)

(assert (=> b!1149811 (= lt!514339 (= (bvand extraKeys!923 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(assert (=> b!1149811 (= c!113715 (and (not lt!514339) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun lt!514349 () Unit!37725)

(declare-fun e!654024 () Unit!37725)

(assert (=> b!1149811 (= lt!514349 e!654024)))

(declare-fun lt!514354 () Unit!37725)

(declare-fun lemmaListMapContainsThenArrayContainsFrom!458 (array!74510 array!74512 (_ BitVec 32) (_ BitVec 32) V!43597 V!43597 (_ BitVec 64) (_ BitVec 32) Int) Unit!37725)

(assert (=> b!1149811 (= lt!514354 (lemmaListMapContainsThenArrayContainsFrom!458 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun c!113718 () Bool)

(assert (=> b!1149811 (= c!113718 (and (not (= k!934 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!934 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun res!764989 () Bool)

(declare-fun e!654023 () Bool)

(assert (=> b!1149811 (= res!764989 e!654023)))

(declare-fun e!654027 () Bool)

(assert (=> b!1149811 (=> (not res!764989) (not e!654027))))

(assert (=> b!1149811 e!654027))

(declare-fun lt!514352 () Unit!37725)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!74510 (_ BitVec 32) (_ BitVec 32)) Unit!37725)

(assert (=> b!1149811 (= lt!514352 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1208 #b00000000000000000000000000000000 from!1455))))

(declare-datatypes ((List!25252 0))(
  ( (Nil!25249) (Cons!25248 (h!26457 (_ BitVec 64)) (t!36574 List!25252)) )
))
(declare-fun arrayNoDuplicates!0 (array!74510 (_ BitVec 32) List!25252) Bool)

(assert (=> b!1149811 (arrayNoDuplicates!0 _keys!1208 from!1455 Nil!25249)))

(declare-fun lt!514358 () Unit!37725)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!74510 (_ BitVec 64) (_ BitVec 32) List!25252) Unit!37725)

(assert (=> b!1149811 (= lt!514358 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!1208 k!934 from!1455 Nil!25249))))

(assert (=> b!1149811 false))

(declare-fun b!1149812 () Bool)

(declare-fun res!764980 () Bool)

(assert (=> b!1149812 (=> (not res!764980) (not e!654039))))

(declare-fun lt!514342 () array!74510)

(assert (=> b!1149812 (= res!764980 (arrayNoDuplicates!0 lt!514342 #b00000000000000000000000000000000 Nil!25249))))

(declare-fun bm!53415 () Bool)

(declare-fun call!53418 () ListLongMap!16439)

(assert (=> bm!53415 (= call!53418 (+!3572 lt!514353 (ite (or c!113715 c!113717) (tuple2!18459 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!18459 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944))))))

(declare-fun bm!53416 () Bool)

(declare-fun call!53424 () ListLongMap!16439)

(assert (=> bm!53416 (= call!53424 call!53418)))

(declare-fun lt!514355 () array!74512)

(declare-fun bm!53417 () Bool)

(assert (=> bm!53417 (= call!53421 (getCurrentListMapNoExtraKeys!4676 lt!514342 lt!514355 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1149813 () Bool)

(assert (=> b!1149813 (= e!654034 (= lt!514345 (getCurrentListMapNoExtraKeys!4676 lt!514342 lt!514355 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004)))))

(declare-fun b!1149814 () Bool)

(assert (=> b!1149814 (= e!654023 (arrayContainsKey!0 _keys!1208 k!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun b!1149815 () Bool)

(declare-fun lt!514344 () ListLongMap!16439)

(assert (=> b!1149815 (contains!6730 (+!3572 lt!514344 (tuple2!18459 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944)) k!934)))

(declare-fun lt!514359 () Unit!37725)

(assert (=> b!1149815 (= lt!514359 (addStillContains!873 lt!514344 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944 k!934))))

(declare-fun call!53420 () Bool)

(assert (=> b!1149815 call!53420))

(assert (=> b!1149815 (= lt!514344 call!53418)))

(declare-fun lt!514347 () Unit!37725)

(assert (=> b!1149815 (= lt!514347 call!53422)))

(assert (=> b!1149815 (= e!654024 lt!514359)))

(declare-fun res!764993 () Bool)

(assert (=> start!98754 (=> (not res!764993) (not e!654036))))

(assert (=> start!98754 (= res!764993 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!36439 _keys!1208))))))

(assert (=> start!98754 e!654036))

(declare-fun tp_is_empty!28853 () Bool)

(assert (=> start!98754 tp_is_empty!28853))

(declare-fun array_inv!27376 (array!74510) Bool)

(assert (=> start!98754 (array_inv!27376 _keys!1208)))

(assert (=> start!98754 true))

(assert (=> start!98754 tp!85681))

(declare-fun e!654028 () Bool)

(declare-fun array_inv!27377 (array!74512) Bool)

(assert (=> start!98754 (and (array_inv!27377 _values!996) e!654028)))

(declare-fun bm!53418 () Bool)

(declare-fun call!53419 () Bool)

(assert (=> bm!53418 (= call!53419 call!53420)))

(declare-fun b!1149816 () Bool)

(assert (=> b!1149816 (= e!654023 (ite (= k!934 #b0000000000000000000000000000000000000000000000000000000000000000) (not lt!514339) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!1149817 () Bool)

(assert (=> b!1149817 (= e!654027 (arrayContainsKey!0 _keys!1208 k!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun b!1149818 () Bool)

(declare-fun res!764979 () Bool)

(assert (=> b!1149818 (=> (not res!764979) (not e!654036))))

(assert (=> b!1149818 (= res!764979 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!36439 _keys!1208))))))

(declare-fun b!1149819 () Bool)

(declare-fun e!654025 () Unit!37725)

(declare-fun e!654038 () Unit!37725)

(assert (=> b!1149819 (= e!654025 e!654038)))

(declare-fun c!113714 () Bool)

(assert (=> b!1149819 (= c!113714 (and (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!514339))))

(declare-fun b!1149820 () Bool)

(declare-fun e!654033 () Bool)

(assert (=> b!1149820 (= e!654033 e!654031)))

(declare-fun res!764988 () Bool)

(assert (=> b!1149820 (=> res!764988 e!654031)))

(assert (=> b!1149820 (= res!764988 (not (= (select (arr!35902 _keys!1208) from!1455) k!934)))))

(assert (=> b!1149820 e!654029))

(declare-fun c!113713 () Bool)

(assert (=> b!1149820 (= c!113713 (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673))))

(declare-fun lt!514350 () Unit!37725)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!562 (array!74510 array!74512 (_ BitVec 32) (_ BitVec 32) V!43597 V!43597 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!37725)

(assert (=> b!1149820 (= lt!514350 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!562 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1149821 () Bool)

(declare-fun res!764987 () Bool)

(assert (=> b!1149821 (=> (not res!764987) (not e!654036))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!74510 (_ BitVec 32)) Bool)

(assert (=> b!1149821 (= res!764987 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun bm!53419 () Bool)

(assert (=> bm!53419 (= call!53423 (getCurrentListMapNoExtraKeys!4676 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun bm!53420 () Bool)

(assert (=> bm!53420 (= call!53420 (contains!6730 (ite c!113715 lt!514344 call!53424) k!934))))

(declare-fun b!1149822 () Bool)

(declare-fun Unit!37728 () Unit!37725)

(assert (=> b!1149822 (= e!654038 Unit!37728)))

(declare-fun b!1149823 () Bool)

(declare-fun res!764992 () Bool)

(assert (=> b!1149823 (=> (not res!764992) (not e!654036))))

(assert (=> b!1149823 (= res!764992 (and (= (size!36440 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!36439 _keys!1208) (size!36440 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1149824 () Bool)

(declare-fun res!764990 () Bool)

(assert (=> b!1149824 (=> (not res!764990) (not e!654036))))

(assert (=> b!1149824 (= res!764990 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!25249))))

(declare-fun b!1149825 () Bool)

(assert (=> b!1149825 (= e!654029 (= call!53421 call!53423))))

(declare-fun b!1149826 () Bool)

(assert (=> b!1149826 (= e!654026 tp_is_empty!28853)))

(declare-fun b!1149827 () Bool)

(assert (=> b!1149827 (= e!654035 e!654033)))

(declare-fun res!764991 () Bool)

(assert (=> b!1149827 (=> res!764991 e!654033)))

(assert (=> b!1149827 (= res!764991 (not (= from!1455 i!673)))))

(declare-fun lt!514348 () ListLongMap!16439)

(assert (=> b!1149827 (= lt!514348 (getCurrentListMapNoExtraKeys!4676 lt!514342 lt!514355 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(assert (=> b!1149827 (= lt!514355 (array!74513 (store (arr!35903 _values!996) i!673 (ValueCellFull!13717 lt!514346)) (size!36440 _values!996)))))

(declare-fun dynLambda!2706 (Int (_ BitVec 64)) V!43597)

(assert (=> b!1149827 (= lt!514346 (dynLambda!2706 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1149827 (= lt!514351 (getCurrentListMapNoExtraKeys!4676 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1149828 () Bool)

(declare-fun res!764983 () Bool)

(assert (=> b!1149828 (=> (not res!764983) (not e!654036))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1149828 (= res!764983 (validKeyInArray!0 k!934))))

(declare-fun b!1149829 () Bool)

(assert (=> b!1149829 (= c!113717 (and (not lt!514339) (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(assert (=> b!1149829 (= e!654024 e!654025)))

(declare-fun bm!53421 () Bool)

(declare-fun call!53417 () Unit!37725)

(assert (=> bm!53421 (= call!53417 call!53422)))

(declare-fun mapIsEmpty!45104 () Bool)

(assert (=> mapIsEmpty!45104 mapRes!45104))

(declare-fun b!1149830 () Bool)

(declare-fun Unit!37729 () Unit!37725)

(assert (=> b!1149830 (= e!654037 Unit!37729)))

(declare-fun b!1149831 () Bool)

(assert (=> b!1149831 (= e!654036 e!654039)))

(declare-fun res!764985 () Bool)

(assert (=> b!1149831 (=> (not res!764985) (not e!654039))))

(assert (=> b!1149831 (= res!764985 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!514342 mask!1564))))

(assert (=> b!1149831 (= lt!514342 (array!74511 (store (arr!35902 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!36439 _keys!1208)))))

(declare-fun b!1149832 () Bool)

(assert (=> b!1149832 call!53419))

(declare-fun lt!514357 () Unit!37725)

(assert (=> b!1149832 (= lt!514357 call!53417)))

(assert (=> b!1149832 (= e!654038 lt!514357)))

(declare-fun b!1149833 () Bool)

(declare-fun e!654030 () Bool)

(assert (=> b!1149833 (= e!654028 (and e!654030 mapRes!45104))))

(declare-fun condMapEmpty!45104 () Bool)

(declare-fun mapDefault!45104 () ValueCell!13717)

