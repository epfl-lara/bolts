; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!98960 () Bool)

(assert start!98960)

(declare-fun b_free!24529 () Bool)

(declare-fun b_next!24529 () Bool)

(assert (=> start!98960 (= b_free!24529 (not b_next!24529))))

(declare-fun tp!86299 () Bool)

(declare-fun b_and!39921 () Bool)

(assert (=> start!98960 (= tp!86299 b_and!39921)))

(declare-fun b!1159282 () Bool)

(declare-fun res!769628 () Bool)

(declare-fun e!659288 () Bool)

(assert (=> b!1159282 (=> (not res!769628) (not e!659288))))

(declare-fun k!934 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1159282 (= res!769628 (validKeyInArray!0 k!934))))

(declare-fun b!1159283 () Bool)

(declare-fun e!659277 () Bool)

(declare-fun e!659282 () Bool)

(assert (=> b!1159283 (= e!659277 (not e!659282))))

(declare-fun res!769617 () Bool)

(assert (=> b!1159283 (=> res!769617 e!659282)))

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1159283 (= res!769617 (bvsgt from!1455 i!673))))

(declare-datatypes ((array!74908 0))(
  ( (array!74909 (arr!36101 (Array (_ BitVec 32) (_ BitVec 64))) (size!36638 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!74908)

(declare-fun arrayContainsKey!0 (array!74908 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1159283 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!38098 0))(
  ( (Unit!38099) )
))
(declare-fun lt!521148 () Unit!38098)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!74908 (_ BitVec 64) (_ BitVec 32)) Unit!38098)

(assert (=> b!1159283 (= lt!521148 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun b!1159284 () Bool)

(declare-fun e!659287 () Bool)

(declare-datatypes ((V!43873 0))(
  ( (V!43874 (val!14586 Int)) )
))
(declare-datatypes ((tuple2!18642 0))(
  ( (tuple2!18643 (_1!9331 (_ BitVec 64)) (_2!9331 V!43873)) )
))
(declare-datatypes ((List!25420 0))(
  ( (Nil!25417) (Cons!25416 (h!26625 tuple2!18642) (t!36948 List!25420)) )
))
(declare-datatypes ((ListLongMap!16623 0))(
  ( (ListLongMap!16624 (toList!8327 List!25420)) )
))
(declare-fun call!55891 () ListLongMap!16623)

(declare-fun call!55896 () ListLongMap!16623)

(declare-fun -!1399 (ListLongMap!16623 (_ BitVec 64)) ListLongMap!16623)

(assert (=> b!1159284 (= e!659287 (= call!55891 (-!1399 call!55896 k!934)))))

(declare-fun b!1159285 () Bool)

(declare-fun res!769626 () Bool)

(assert (=> b!1159285 (=> (not res!769626) (not e!659277))))

(declare-fun lt!521136 () array!74908)

(declare-datatypes ((List!25421 0))(
  ( (Nil!25418) (Cons!25417 (h!26626 (_ BitVec 64)) (t!36949 List!25421)) )
))
(declare-fun arrayNoDuplicates!0 (array!74908 (_ BitVec 32) List!25421) Bool)

(assert (=> b!1159285 (= res!769626 (arrayNoDuplicates!0 lt!521136 #b00000000000000000000000000000000 Nil!25418))))

(declare-fun b!1159286 () Bool)

(declare-fun res!769619 () Bool)

(assert (=> b!1159286 (=> (not res!769619) (not e!659288))))

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-datatypes ((ValueCell!13820 0))(
  ( (ValueCellFull!13820 (v!17224 V!43873)) (EmptyCell!13820) )
))
(declare-datatypes ((array!74910 0))(
  ( (array!74911 (arr!36102 (Array (_ BitVec 32) ValueCell!13820)) (size!36639 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!74910)

(assert (=> b!1159286 (= res!769619 (and (= (size!36639 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!36638 _keys!1208) (size!36639 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun zeroValue!944 () V!43873)

(declare-fun defaultEntry!1004 () Int)

(declare-fun bm!55886 () Bool)

(declare-fun minValue!944 () V!43873)

(declare-fun getCurrentListMapNoExtraKeys!4763 (array!74908 array!74910 (_ BitVec 32) (_ BitVec 32) V!43873 V!43873 (_ BitVec 32) Int) ListLongMap!16623)

(assert (=> bm!55886 (= call!55896 (getCurrentListMapNoExtraKeys!4763 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1159287 () Bool)

(declare-fun e!659290 () Unit!38098)

(declare-fun Unit!38100 () Unit!38098)

(assert (=> b!1159287 (= e!659290 Unit!38100)))

(declare-fun lt!521156 () Bool)

(assert (=> b!1159287 (= lt!521156 (= (bvand extraKeys!923 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(declare-fun c!115570 () Bool)

(assert (=> b!1159287 (= c!115570 (and (not lt!521156) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun lt!521137 () Unit!38098)

(declare-fun e!659278 () Unit!38098)

(assert (=> b!1159287 (= lt!521137 e!659278)))

(declare-fun lt!521138 () Unit!38098)

(declare-fun lemmaListMapContainsThenArrayContainsFrom!524 (array!74908 array!74910 (_ BitVec 32) (_ BitVec 32) V!43873 V!43873 (_ BitVec 64) (_ BitVec 32) Int) Unit!38098)

(assert (=> b!1159287 (= lt!521138 (lemmaListMapContainsThenArrayContainsFrom!524 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun c!115571 () Bool)

(assert (=> b!1159287 (= c!115571 (and (not (= k!934 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!934 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun res!769623 () Bool)

(declare-fun e!659284 () Bool)

(assert (=> b!1159287 (= res!769623 e!659284)))

(declare-fun e!659285 () Bool)

(assert (=> b!1159287 (=> (not res!769623) (not e!659285))))

(assert (=> b!1159287 e!659285))

(declare-fun lt!521142 () Unit!38098)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!74908 (_ BitVec 32) (_ BitVec 32)) Unit!38098)

(assert (=> b!1159287 (= lt!521142 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1208 #b00000000000000000000000000000000 from!1455))))

(assert (=> b!1159287 (arrayNoDuplicates!0 _keys!1208 from!1455 Nil!25418)))

(declare-fun lt!521145 () Unit!38098)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!74908 (_ BitVec 64) (_ BitVec 32) List!25421) Unit!38098)

(assert (=> b!1159287 (= lt!521145 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!1208 k!934 from!1455 Nil!25418))))

(assert (=> b!1159287 false))

(declare-fun b!1159288 () Bool)

(declare-fun call!55889 () ListLongMap!16623)

(declare-fun contains!6809 (ListLongMap!16623 (_ BitVec 64)) Bool)

(assert (=> b!1159288 (contains!6809 call!55889 k!934)))

(declare-fun lt!521139 () Unit!38098)

(declare-fun lt!521141 () ListLongMap!16623)

(declare-fun addStillContains!950 (ListLongMap!16623 (_ BitVec 64) V!43873 (_ BitVec 64)) Unit!38098)

(assert (=> b!1159288 (= lt!521139 (addStillContains!950 lt!521141 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944 k!934))))

(declare-fun call!55894 () Bool)

(assert (=> b!1159288 call!55894))

(declare-fun lt!521143 () ListLongMap!16623)

(declare-fun +!3653 (ListLongMap!16623 tuple2!18642) ListLongMap!16623)

(assert (=> b!1159288 (= lt!521141 (+!3653 lt!521143 (tuple2!18643 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944)))))

(declare-fun lt!521149 () Unit!38098)

(declare-fun call!55890 () Unit!38098)

(assert (=> b!1159288 (= lt!521149 call!55890)))

(assert (=> b!1159288 (= e!659278 lt!521139)))

(declare-fun b!1159289 () Bool)

(declare-fun e!659286 () Bool)

(assert (=> b!1159289 (= e!659282 e!659286)))

(declare-fun res!769615 () Bool)

(assert (=> b!1159289 (=> res!769615 e!659286)))

(assert (=> b!1159289 (= res!769615 (not (= from!1455 i!673)))))

(declare-fun lt!521144 () array!74910)

(declare-fun lt!521151 () ListLongMap!16623)

(assert (=> b!1159289 (= lt!521151 (getCurrentListMapNoExtraKeys!4763 lt!521136 lt!521144 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun lt!521155 () V!43873)

(assert (=> b!1159289 (= lt!521144 (array!74911 (store (arr!36102 _values!996) i!673 (ValueCellFull!13820 lt!521155)) (size!36639 _values!996)))))

(declare-fun dynLambda!2767 (Int (_ BitVec 64)) V!43873)

(assert (=> b!1159289 (= lt!521155 (dynLambda!2767 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!521153 () ListLongMap!16623)

(assert (=> b!1159289 (= lt!521153 (getCurrentListMapNoExtraKeys!4763 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun call!55892 () ListLongMap!16623)

(declare-fun bm!55887 () Bool)

(assert (=> bm!55887 (= call!55894 (contains!6809 (ite c!115570 lt!521141 call!55892) k!934))))

(declare-fun b!1159290 () Bool)

(declare-fun e!659291 () Bool)

(declare-fun tp_is_empty!29059 () Bool)

(assert (=> b!1159290 (= e!659291 tp_is_empty!29059)))

(declare-fun bm!55888 () Bool)

(declare-fun call!55895 () Bool)

(assert (=> bm!55888 (= call!55895 call!55894)))

(declare-fun b!1159291 () Bool)

(assert (=> b!1159291 (= e!659288 e!659277)))

(declare-fun res!769620 () Bool)

(assert (=> b!1159291 (=> (not res!769620) (not e!659277))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!74908 (_ BitVec 32)) Bool)

(assert (=> b!1159291 (= res!769620 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!521136 mask!1564))))

(assert (=> b!1159291 (= lt!521136 (array!74909 (store (arr!36101 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!36638 _keys!1208)))))

(declare-fun bm!55889 () Bool)

(assert (=> bm!55889 (= call!55892 call!55889)))

(declare-fun b!1159292 () Bool)

(declare-fun c!115568 () Bool)

(assert (=> b!1159292 (= c!115568 (and (not lt!521156) (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun e!659283 () Unit!38098)

(assert (=> b!1159292 (= e!659278 e!659283)))

(declare-fun b!1159293 () Bool)

(assert (=> b!1159293 (= e!659284 (ite (= k!934 #b0000000000000000000000000000000000000000000000000000000000000000) (not lt!521156) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!1159294 () Bool)

(assert (=> b!1159294 (= e!659285 (arrayContainsKey!0 _keys!1208 k!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun b!1159295 () Bool)

(declare-fun e!659279 () Unit!38098)

(declare-fun Unit!38101 () Unit!38098)

(assert (=> b!1159295 (= e!659279 Unit!38101)))

(declare-fun bm!55890 () Bool)

(declare-fun call!55893 () Unit!38098)

(assert (=> bm!55890 (= call!55893 call!55890)))

(declare-fun b!1159296 () Bool)

(assert (=> b!1159296 call!55895))

(declare-fun lt!521146 () Unit!38098)

(assert (=> b!1159296 (= lt!521146 call!55893)))

(assert (=> b!1159296 (= e!659279 lt!521146)))

(declare-fun b!1159297 () Bool)

(declare-fun e!659292 () Bool)

(declare-fun mapRes!45413 () Bool)

(assert (=> b!1159297 (= e!659292 (and e!659291 mapRes!45413))))

(declare-fun condMapEmpty!45413 () Bool)

(declare-fun mapDefault!45413 () ValueCell!13820)

