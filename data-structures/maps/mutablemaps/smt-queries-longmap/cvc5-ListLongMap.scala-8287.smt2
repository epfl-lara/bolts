; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!101030 () Bool)

(assert start!101030)

(declare-fun b_free!25993 () Bool)

(declare-fun b_next!25993 () Bool)

(assert (=> start!101030 (= b_free!25993 (not b_next!25993))))

(declare-fun tp!90996 () Bool)

(declare-fun b_and!43077 () Bool)

(assert (=> start!101030 (= tp!90996 b_and!43077)))

(declare-fun b!1209332 () Bool)

(declare-datatypes ((Unit!40004 0))(
  ( (Unit!40005) )
))
(declare-fun e!686872 () Unit!40004)

(declare-fun e!686876 () Unit!40004)

(assert (=> b!1209332 (= e!686872 e!686876)))

(declare-fun c!119011 () Bool)

(declare-fun lt!548918 () Bool)

(declare-fun extraKeys!923 () (_ BitVec 32))

(assert (=> b!1209332 (= c!119011 (and (not lt!548918) (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1209333 () Bool)

(declare-fun c!119012 () Bool)

(assert (=> b!1209333 (= c!119012 (and (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!548918))))

(declare-fun e!686873 () Unit!40004)

(assert (=> b!1209333 (= e!686876 e!686873)))

(declare-fun b!1209334 () Bool)

(declare-fun res!803846 () Bool)

(declare-fun e!686884 () Bool)

(assert (=> b!1209334 (=> (not res!803846) (not e!686884))))

(declare-fun i!673 () (_ BitVec 32))

(declare-datatypes ((array!78154 0))(
  ( (array!78155 (arr!37710 (Array (_ BitVec 32) (_ BitVec 64))) (size!38247 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!78154)

(assert (=> b!1209334 (= res!803846 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!38247 _keys!1208))))))

(declare-fun b!1209335 () Bool)

(declare-fun res!803839 () Bool)

(assert (=> b!1209335 (=> (not res!803839) (not e!686884))))

(declare-fun k!934 () (_ BitVec 64))

(assert (=> b!1209335 (= res!803839 (= (select (arr!37710 _keys!1208) i!673) k!934))))

(declare-datatypes ((V!46057 0))(
  ( (V!46058 (val!15405 Int)) )
))
(declare-datatypes ((tuple2!19912 0))(
  ( (tuple2!19913 (_1!9966 (_ BitVec 64)) (_2!9966 V!46057)) )
))
(declare-datatypes ((List!26733 0))(
  ( (Nil!26730) (Cons!26729 (h!27938 tuple2!19912) (t!39713 List!26733)) )
))
(declare-datatypes ((ListLongMap!17893 0))(
  ( (ListLongMap!17894 (toList!8962 List!26733)) )
))
(declare-fun call!59357 () ListLongMap!17893)

(declare-fun bm!59352 () Bool)

(declare-fun call!59360 () Bool)

(declare-fun c!119013 () Bool)

(declare-fun lt!548909 () ListLongMap!17893)

(declare-fun contains!6974 (ListLongMap!17893 (_ BitVec 64)) Bool)

(assert (=> bm!59352 (= call!59360 (contains!6974 (ite c!119013 lt!548909 call!59357) k!934))))

(declare-fun b!1209336 () Bool)

(declare-fun Unit!40006 () Unit!40004)

(assert (=> b!1209336 (= e!686873 Unit!40006)))

(declare-fun bm!59353 () Bool)

(declare-fun call!59356 () ListLongMap!17893)

(assert (=> bm!59353 (= call!59357 call!59356)))

(declare-fun e!686868 () Bool)

(declare-fun b!1209337 () Bool)

(assert (=> b!1209337 (= e!686868 (ite (= k!934 #b0000000000000000000000000000000000000000000000000000000000000000) (not lt!548918) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!1209338 () Bool)

(declare-fun e!686869 () Bool)

(declare-fun e!686871 () Bool)

(assert (=> b!1209338 (= e!686869 e!686871)))

(declare-fun res!803831 () Bool)

(assert (=> b!1209338 (=> res!803831 e!686871)))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> b!1209338 (= res!803831 (not (= from!1455 i!673)))))

(declare-fun zeroValue!944 () V!46057)

(declare-fun defaultEntry!1004 () Int)

(declare-fun lt!548908 () ListLongMap!17893)

(declare-datatypes ((ValueCell!14639 0))(
  ( (ValueCellFull!14639 (v!18057 V!46057)) (EmptyCell!14639) )
))
(declare-datatypes ((array!78156 0))(
  ( (array!78157 (arr!37711 (Array (_ BitVec 32) ValueCell!14639)) (size!38248 (_ BitVec 32))) )
))
(declare-fun lt!548910 () array!78156)

(declare-fun minValue!944 () V!46057)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun lt!548911 () array!78154)

(declare-fun getCurrentListMapNoExtraKeys!5369 (array!78154 array!78156 (_ BitVec 32) (_ BitVec 32) V!46057 V!46057 (_ BitVec 32) Int) ListLongMap!17893)

(assert (=> b!1209338 (= lt!548908 (getCurrentListMapNoExtraKeys!5369 lt!548911 lt!548910 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun _values!996 () array!78156)

(declare-fun dynLambda!3286 (Int (_ BitVec 64)) V!46057)

(assert (=> b!1209338 (= lt!548910 (array!78157 (store (arr!37711 _values!996) i!673 (ValueCellFull!14639 (dynLambda!3286 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!38248 _values!996)))))

(declare-fun lt!548907 () ListLongMap!17893)

(assert (=> b!1209338 (= lt!548907 (getCurrentListMapNoExtraKeys!5369 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun e!686879 () Bool)

(declare-fun call!59359 () ListLongMap!17893)

(declare-fun call!59355 () ListLongMap!17893)

(declare-fun b!1209339 () Bool)

(declare-fun -!1866 (ListLongMap!17893 (_ BitVec 64)) ListLongMap!17893)

(assert (=> b!1209339 (= e!686879 (= call!59359 (-!1866 call!59355 k!934)))))

(declare-fun bm!59354 () Bool)

(declare-fun c!119010 () Bool)

(assert (=> bm!59354 (= call!59359 (getCurrentListMapNoExtraKeys!5369 (ite c!119010 lt!548911 _keys!1208) (ite c!119010 lt!548910 _values!996) mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1209340 () Bool)

(declare-fun e!686875 () Bool)

(declare-fun e!686881 () Bool)

(assert (=> b!1209340 (= e!686875 e!686881)))

(declare-fun res!803836 () Bool)

(assert (=> b!1209340 (=> res!803836 e!686881)))

(declare-fun lt!548919 () ListLongMap!17893)

(assert (=> b!1209340 (= res!803836 (not (contains!6974 lt!548919 k!934)))))

(assert (=> b!1209340 (= lt!548919 (getCurrentListMapNoExtraKeys!5369 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1209341 () Bool)

(declare-fun e!686877 () Bool)

(declare-fun tp_is_empty!30697 () Bool)

(assert (=> b!1209341 (= e!686877 tp_is_empty!30697)))

(declare-fun b!1209342 () Bool)

(declare-fun res!803844 () Bool)

(assert (=> b!1209342 (=> (not res!803844) (not e!686884))))

(assert (=> b!1209342 (= res!803844 (and (= (size!38248 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!38247 _keys!1208) (size!38248 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!47914 () Bool)

(declare-fun mapRes!47914 () Bool)

(declare-fun tp!90995 () Bool)

(declare-fun e!686882 () Bool)

(assert (=> mapNonEmpty!47914 (= mapRes!47914 (and tp!90995 e!686882))))

(declare-fun mapValue!47914 () ValueCell!14639)

(declare-fun mapKey!47914 () (_ BitVec 32))

(declare-fun mapRest!47914 () (Array (_ BitVec 32) ValueCell!14639))

(assert (=> mapNonEmpty!47914 (= (arr!37711 _values!996) (store mapRest!47914 mapKey!47914 mapValue!47914))))

(declare-fun b!1209343 () Bool)

(declare-fun e!686874 () Bool)

(assert (=> b!1209343 (= e!686874 true)))

(declare-fun lt!548906 () Bool)

(declare-datatypes ((List!26734 0))(
  ( (Nil!26731) (Cons!26730 (h!27939 (_ BitVec 64)) (t!39714 List!26734)) )
))
(declare-fun contains!6975 (List!26734 (_ BitVec 64)) Bool)

(assert (=> b!1209343 (= lt!548906 (contains!6975 Nil!26731 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1209344 () Bool)

(declare-fun e!686870 () Bool)

(assert (=> b!1209344 (= e!686870 (not e!686869))))

(declare-fun res!803830 () Bool)

(assert (=> b!1209344 (=> res!803830 e!686869)))

(assert (=> b!1209344 (= res!803830 (bvsgt from!1455 i!673))))

(declare-fun arrayContainsKey!0 (array!78154 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1209344 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-fun lt!548917 () Unit!40004)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!78154 (_ BitVec 64) (_ BitVec 32)) Unit!40004)

(assert (=> b!1209344 (= lt!548917 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun b!1209345 () Bool)

(assert (=> b!1209345 (= e!686881 e!686874)))

(declare-fun res!803829 () Bool)

(assert (=> b!1209345 (=> res!803829 e!686874)))

(assert (=> b!1209345 (= res!803829 (or (bvsge (size!38247 _keys!1208) #b01111111111111111111111111111111) (bvsge (bvadd #b00000000000000000000000000000001 from!1455) (size!38247 _keys!1208)) (bvsge from!1455 (size!38247 _keys!1208))))))

(declare-fun arrayNoDuplicates!0 (array!78154 (_ BitVec 32) List!26734) Bool)

(assert (=> b!1209345 (arrayNoDuplicates!0 _keys!1208 from!1455 Nil!26731)))

(declare-fun lt!548905 () Unit!40004)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!78154 (_ BitVec 32) (_ BitVec 32)) Unit!40004)

(assert (=> b!1209345 (= lt!548905 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1208 #b00000000000000000000000000000000 from!1455))))

(declare-fun e!686883 () Bool)

(assert (=> b!1209345 e!686883))

(declare-fun res!803840 () Bool)

(assert (=> b!1209345 (=> (not res!803840) (not e!686883))))

(assert (=> b!1209345 (= res!803840 e!686868)))

(declare-fun c!119009 () Bool)

(assert (=> b!1209345 (= c!119009 (and (not (= k!934 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!934 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun lt!548912 () Unit!40004)

(declare-fun lemmaListMapContainsThenArrayContainsFrom!591 (array!78154 array!78156 (_ BitVec 32) (_ BitVec 32) V!46057 V!46057 (_ BitVec 64) (_ BitVec 32) Int) Unit!40004)

(assert (=> b!1209345 (= lt!548912 (lemmaListMapContainsThenArrayContainsFrom!591 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun lt!548903 () Unit!40004)

(assert (=> b!1209345 (= lt!548903 e!686872)))

(assert (=> b!1209345 (= c!119013 (and (not lt!548918) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> b!1209345 (= lt!548918 (= (bvand extraKeys!923 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(declare-fun b!1209346 () Bool)

(declare-fun res!803834 () Bool)

(assert (=> b!1209346 (=> (not res!803834) (not e!686884))))

(assert (=> b!1209346 (= res!803834 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!26731))))

(declare-fun b!1209347 () Bool)

(declare-fun res!803845 () Bool)

(assert (=> b!1209347 (=> (not res!803845) (not e!686870))))

(assert (=> b!1209347 (= res!803845 (arrayNoDuplicates!0 lt!548911 #b00000000000000000000000000000000 Nil!26731))))

(declare-fun mapIsEmpty!47914 () Bool)

(assert (=> mapIsEmpty!47914 mapRes!47914))

(declare-fun res!803841 () Bool)

(assert (=> start!101030 (=> (not res!803841) (not e!686884))))

(assert (=> start!101030 (= res!803841 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!38247 _keys!1208))))))

(assert (=> start!101030 e!686884))

(assert (=> start!101030 tp_is_empty!30697))

(declare-fun array_inv!28630 (array!78154) Bool)

(assert (=> start!101030 (array_inv!28630 _keys!1208)))

(assert (=> start!101030 true))

(assert (=> start!101030 tp!90996))

(declare-fun e!686878 () Bool)

(declare-fun array_inv!28631 (array!78156) Bool)

(assert (=> start!101030 (and (array_inv!28631 _values!996) e!686878)))

(declare-fun b!1209348 () Bool)

(declare-fun res!803843 () Bool)

(assert (=> b!1209348 (=> res!803843 e!686874)))

(declare-fun noDuplicate!1651 (List!26734) Bool)

(assert (=> b!1209348 (= res!803843 (not (noDuplicate!1651 Nil!26731)))))

(declare-fun b!1209349 () Bool)

(assert (=> b!1209349 (= e!686883 (arrayContainsKey!0 _keys!1208 k!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun b!1209350 () Bool)

(declare-fun res!803832 () Bool)

(assert (=> b!1209350 (=> res!803832 e!686874)))

(assert (=> b!1209350 (= res!803832 (contains!6975 Nil!26731 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun bm!59355 () Bool)

(declare-fun call!59358 () Unit!40004)

(declare-fun call!59361 () Unit!40004)

(assert (=> bm!59355 (= call!59358 call!59361)))

(declare-fun bm!59356 () Bool)

(declare-fun addStillContains!1054 (ListLongMap!17893 (_ BitVec 64) V!46057 (_ BitVec 64)) Unit!40004)

(assert (=> bm!59356 (= call!59361 (addStillContains!1054 (ite c!119013 lt!548909 lt!548919) (ite c!119013 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!119011 #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000)) (ite c!119013 minValue!944 (ite c!119011 zeroValue!944 minValue!944)) k!934))))

(declare-fun b!1209351 () Bool)

(declare-fun res!803842 () Bool)

(assert (=> b!1209351 (=> (not res!803842) (not e!686884))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1209351 (= res!803842 (validKeyInArray!0 k!934))))

(declare-fun b!1209352 () Bool)

(declare-fun lt!548913 () Unit!40004)

(assert (=> b!1209352 (= e!686873 lt!548913)))

(assert (=> b!1209352 (= lt!548913 call!59358)))

(declare-fun call!59362 () Bool)

(assert (=> b!1209352 call!59362))

(declare-fun b!1209353 () Bool)

(assert (=> b!1209353 (= e!686884 e!686870)))

(declare-fun res!803835 () Bool)

(assert (=> b!1209353 (=> (not res!803835) (not e!686870))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!78154 (_ BitVec 32)) Bool)

(assert (=> b!1209353 (= res!803835 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!548911 mask!1564))))

(assert (=> b!1209353 (= lt!548911 (array!78155 (store (arr!37710 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!38247 _keys!1208)))))

(declare-fun b!1209354 () Bool)

(declare-fun res!803837 () Bool)

(assert (=> b!1209354 (=> (not res!803837) (not e!686884))))

(assert (=> b!1209354 (= res!803837 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1209355 () Bool)

(assert (=> b!1209355 (= e!686868 (arrayContainsKey!0 _keys!1208 k!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun b!1209356 () Bool)

(assert (=> b!1209356 (= e!686882 tp_is_empty!30697)))

(declare-fun b!1209357 () Bool)

(assert (=> b!1209357 (= e!686871 e!686875)))

(declare-fun res!803838 () Bool)

(assert (=> b!1209357 (=> res!803838 e!686875)))

(assert (=> b!1209357 (= res!803838 (not (= (select (arr!37710 _keys!1208) from!1455) k!934)))))

(assert (=> b!1209357 e!686879))

(assert (=> b!1209357 (= c!119010 (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673))))

(declare-fun lt!548904 () Unit!40004)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!1071 (array!78154 array!78156 (_ BitVec 32) (_ BitVec 32) V!46057 V!46057 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!40004)

(assert (=> b!1209357 (= lt!548904 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!1071 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1209358 () Bool)

(declare-fun res!803833 () Bool)

(assert (=> b!1209358 (=> (not res!803833) (not e!686884))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1209358 (= res!803833 (validMask!0 mask!1564))))

(declare-fun bm!59357 () Bool)

(assert (=> bm!59357 (= call!59362 call!59360)))

(declare-fun b!1209359 () Bool)

(declare-fun lt!548916 () Unit!40004)

(assert (=> b!1209359 (= e!686872 lt!548916)))

(declare-fun lt!548915 () Unit!40004)

(assert (=> b!1209359 (= lt!548915 (addStillContains!1054 lt!548919 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944 k!934))))

(assert (=> b!1209359 (= lt!548909 call!59356)))

(assert (=> b!1209359 call!59360))

(assert (=> b!1209359 (= lt!548916 call!59361)))

(declare-fun +!3989 (ListLongMap!17893 tuple2!19912) ListLongMap!17893)

(assert (=> b!1209359 (contains!6974 (+!3989 lt!548909 (tuple2!19913 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944)) k!934)))

(declare-fun b!1209360 () Bool)

(assert (=> b!1209360 (= e!686878 (and e!686877 mapRes!47914))))

(declare-fun condMapEmpty!47914 () Bool)

(declare-fun mapDefault!47914 () ValueCell!14639)

