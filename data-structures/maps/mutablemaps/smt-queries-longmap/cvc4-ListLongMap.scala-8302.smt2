; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!101200 () Bool)

(assert start!101200)

(declare-fun b_free!26087 () Bool)

(declare-fun b_next!26087 () Bool)

(assert (=> start!101200 (= b_free!26087 (not b_next!26087))))

(declare-fun tp!91284 () Bool)

(declare-fun b_and!43301 () Bool)

(assert (=> start!101200 (= tp!91284 b_and!43301)))

(declare-fun b!1213952 () Bool)

(declare-fun res!806069 () Bool)

(declare-fun e!689453 () Bool)

(assert (=> b!1213952 (=> (not res!806069) (not e!689453))))

(declare-datatypes ((array!78342 0))(
  ( (array!78343 (arr!37802 (Array (_ BitVec 32) (_ BitVec 64))) (size!38339 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!78342)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!78342 (_ BitVec 32)) Bool)

(assert (=> b!1213952 (= res!806069 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1213953 () Bool)

(declare-fun e!689442 () Bool)

(assert (=> b!1213953 (= e!689453 e!689442)))

(declare-fun res!806067 () Bool)

(assert (=> b!1213953 (=> (not res!806067) (not e!689442))))

(declare-fun lt!552048 () array!78342)

(assert (=> b!1213953 (= res!806067 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!552048 mask!1564))))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1213953 (= lt!552048 (array!78343 (store (arr!37802 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!38339 _keys!1208)))))

(declare-fun bm!60522 () Bool)

(declare-fun call!60526 () Bool)

(declare-fun call!60527 () Bool)

(assert (=> bm!60522 (= call!60526 call!60527)))

(declare-fun b!1213954 () Bool)

(declare-datatypes ((Unit!40188 0))(
  ( (Unit!40189) )
))
(declare-fun e!689452 () Unit!40188)

(declare-fun Unit!40190 () Unit!40188)

(assert (=> b!1213954 (= e!689452 Unit!40190)))

(declare-fun e!689443 () Bool)

(declare-datatypes ((V!46181 0))(
  ( (V!46182 (val!15452 Int)) )
))
(declare-datatypes ((tuple2!19998 0))(
  ( (tuple2!19999 (_1!10009 (_ BitVec 64)) (_2!10009 V!46181)) )
))
(declare-datatypes ((List!26817 0))(
  ( (Nil!26814) (Cons!26813 (h!28022 tuple2!19998) (t!39891 List!26817)) )
))
(declare-datatypes ((ListLongMap!17979 0))(
  ( (ListLongMap!17980 (toList!9005 List!26817)) )
))
(declare-fun call!60528 () ListLongMap!17979)

(declare-fun k!934 () (_ BitVec 64))

(declare-fun call!60531 () ListLongMap!17979)

(declare-fun b!1213955 () Bool)

(declare-fun -!1899 (ListLongMap!17979 (_ BitVec 64)) ListLongMap!17979)

(assert (=> b!1213955 (= e!689443 (= call!60528 (-!1899 call!60531 k!934)))))

(declare-fun b!1213957 () Bool)

(assert (=> b!1213957 call!60526))

(declare-fun lt!552040 () Unit!40188)

(declare-fun call!60532 () Unit!40188)

(assert (=> b!1213957 (= lt!552040 call!60532)))

(assert (=> b!1213957 (= e!689452 lt!552040)))

(declare-fun b!1213958 () Bool)

(declare-fun res!806079 () Bool)

(assert (=> b!1213958 (=> (not res!806079) (not e!689453))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1213958 (= res!806079 (validKeyInArray!0 k!934))))

(declare-fun zeroValue!944 () V!46181)

(declare-fun lt!552053 () ListLongMap!17979)

(declare-fun bm!60523 () Bool)

(declare-fun c!119933 () Bool)

(declare-fun c!119936 () Bool)

(declare-fun call!60525 () Unit!40188)

(declare-fun minValue!944 () V!46181)

(declare-fun addStillContains!1087 (ListLongMap!17979 (_ BitVec 64) V!46181 (_ BitVec 64)) Unit!40188)

(assert (=> bm!60523 (= call!60525 (addStillContains!1087 lt!552053 (ite (or c!119933 c!119936) #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000) (ite (or c!119933 c!119936) zeroValue!944 minValue!944) k!934))))

(declare-fun b!1213959 () Bool)

(declare-fun e!689455 () Unit!40188)

(declare-fun lt!552033 () Unit!40188)

(assert (=> b!1213959 (= e!689455 lt!552033)))

(assert (=> b!1213959 (= lt!552033 call!60532)))

(assert (=> b!1213959 call!60526))

(declare-fun b!1213960 () Bool)

(declare-fun e!689450 () Bool)

(declare-fun e!689447 () Bool)

(assert (=> b!1213960 (= e!689450 e!689447)))

(declare-fun res!806078 () Bool)

(assert (=> b!1213960 (=> res!806078 e!689447)))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> b!1213960 (= res!806078 (not (= from!1455 i!673)))))

(declare-datatypes ((ValueCell!14686 0))(
  ( (ValueCellFull!14686 (v!18106 V!46181)) (EmptyCell!14686) )
))
(declare-datatypes ((array!78344 0))(
  ( (array!78345 (arr!37803 (Array (_ BitVec 32) ValueCell!14686)) (size!38340 (_ BitVec 32))) )
))
(declare-fun lt!552046 () array!78344)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-fun lt!552051 () ListLongMap!17979)

(declare-fun getCurrentListMapNoExtraKeys!5410 (array!78342 array!78344 (_ BitVec 32) (_ BitVec 32) V!46181 V!46181 (_ BitVec 32) Int) ListLongMap!17979)

(assert (=> b!1213960 (= lt!552051 (getCurrentListMapNoExtraKeys!5410 lt!552048 lt!552046 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun lt!552037 () V!46181)

(declare-fun _values!996 () array!78344)

(assert (=> b!1213960 (= lt!552046 (array!78345 (store (arr!37803 _values!996) i!673 (ValueCellFull!14686 lt!552037)) (size!38340 _values!996)))))

(declare-fun dynLambda!3319 (Int (_ BitVec 64)) V!46181)

(assert (=> b!1213960 (= lt!552037 (dynLambda!3319 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!552035 () ListLongMap!17979)

(assert (=> b!1213960 (= lt!552035 (getCurrentListMapNoExtraKeys!5410 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1213961 () Bool)

(declare-fun lt!552049 () Bool)

(assert (=> b!1213961 (= c!119936 (and (not lt!552049) (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun e!689444 () Unit!40188)

(assert (=> b!1213961 (= e!689444 e!689455)))

(declare-fun mapIsEmpty!48061 () Bool)

(declare-fun mapRes!48061 () Bool)

(assert (=> mapIsEmpty!48061 mapRes!48061))

(declare-fun b!1213962 () Bool)

(declare-fun e!689446 () Bool)

(assert (=> b!1213962 (= e!689446 true)))

(declare-fun e!689456 () Bool)

(assert (=> b!1213962 e!689456))

(declare-fun res!806075 () Bool)

(assert (=> b!1213962 (=> (not res!806075) (not e!689456))))

(declare-fun lt!552038 () ListLongMap!17979)

(assert (=> b!1213962 (= res!806075 (= lt!552038 lt!552053))))

(assert (=> b!1213962 (= lt!552038 (-!1899 lt!552035 k!934))))

(declare-fun lt!552042 () V!46181)

(declare-fun +!4030 (ListLongMap!17979 tuple2!19998) ListLongMap!17979)

(assert (=> b!1213962 (= (-!1899 (+!4030 lt!552053 (tuple2!19999 (select (arr!37802 _keys!1208) from!1455) lt!552042)) (select (arr!37802 _keys!1208) from!1455)) lt!552053)))

(declare-fun lt!552034 () Unit!40188)

(declare-fun addThenRemoveForNewKeyIsSame!297 (ListLongMap!17979 (_ BitVec 64) V!46181) Unit!40188)

(assert (=> b!1213962 (= lt!552034 (addThenRemoveForNewKeyIsSame!297 lt!552053 (select (arr!37802 _keys!1208) from!1455) lt!552042))))

(declare-fun get!19317 (ValueCell!14686 V!46181) V!46181)

(assert (=> b!1213962 (= lt!552042 (get!19317 (select (arr!37803 _values!996) from!1455) lt!552037))))

(declare-fun lt!552052 () Unit!40188)

(declare-fun e!689457 () Unit!40188)

(assert (=> b!1213962 (= lt!552052 e!689457)))

(declare-fun c!119934 () Bool)

(declare-fun contains!7019 (ListLongMap!17979 (_ BitVec 64)) Bool)

(assert (=> b!1213962 (= c!119934 (contains!7019 lt!552053 k!934))))

(assert (=> b!1213962 (= lt!552053 (getCurrentListMapNoExtraKeys!5410 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1213963 () Bool)

(declare-fun lt!552032 () ListLongMap!17979)

(assert (=> b!1213963 (contains!7019 (+!4030 lt!552032 (tuple2!19999 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944)) k!934)))

(declare-fun lt!552041 () Unit!40188)

(assert (=> b!1213963 (= lt!552041 (addStillContains!1087 lt!552032 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944 k!934))))

(assert (=> b!1213963 call!60527))

(declare-fun call!60530 () ListLongMap!17979)

(assert (=> b!1213963 (= lt!552032 call!60530)))

(declare-fun lt!552043 () Unit!40188)

(assert (=> b!1213963 (= lt!552043 call!60525)))

(assert (=> b!1213963 (= e!689444 lt!552041)))

(declare-fun bm!60524 () Bool)

(declare-fun call!60529 () ListLongMap!17979)

(assert (=> bm!60524 (= call!60529 call!60530)))

(declare-fun bm!60525 () Bool)

(assert (=> bm!60525 (= call!60528 (getCurrentListMapNoExtraKeys!5410 lt!552048 lt!552046 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1213964 () Bool)

(declare-fun e!689448 () Bool)

(declare-fun tp_is_empty!30791 () Bool)

(assert (=> b!1213964 (= e!689448 tp_is_empty!30791)))

(declare-fun b!1213965 () Bool)

(declare-fun res!806074 () Bool)

(assert (=> b!1213965 (=> (not res!806074) (not e!689442))))

(declare-datatypes ((List!26818 0))(
  ( (Nil!26815) (Cons!26814 (h!28023 (_ BitVec 64)) (t!39892 List!26818)) )
))
(declare-fun arrayNoDuplicates!0 (array!78342 (_ BitVec 32) List!26818) Bool)

(assert (=> b!1213965 (= res!806074 (arrayNoDuplicates!0 lt!552048 #b00000000000000000000000000000000 Nil!26815))))

(declare-fun b!1213966 () Bool)

(declare-fun Unit!40191 () Unit!40188)

(assert (=> b!1213966 (= e!689457 Unit!40191)))

(declare-fun bm!60526 () Bool)

(assert (=> bm!60526 (= call!60532 call!60525)))

(declare-fun e!689441 () Bool)

(declare-fun b!1213967 () Bool)

(assert (=> b!1213967 (= e!689441 (ite (= k!934 #b0000000000000000000000000000000000000000000000000000000000000000) (not lt!552049) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun mapNonEmpty!48061 () Bool)

(declare-fun tp!91283 () Bool)

(declare-fun e!689445 () Bool)

(assert (=> mapNonEmpty!48061 (= mapRes!48061 (and tp!91283 e!689445))))

(declare-fun mapKey!48061 () (_ BitVec 32))

(declare-fun mapValue!48061 () ValueCell!14686)

(declare-fun mapRest!48061 () (Array (_ BitVec 32) ValueCell!14686))

(assert (=> mapNonEmpty!48061 (= (arr!37803 _values!996) (store mapRest!48061 mapKey!48061 mapValue!48061))))

(declare-fun bm!60527 () Bool)

(assert (=> bm!60527 (= call!60531 (getCurrentListMapNoExtraKeys!5410 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1213968 () Bool)

(declare-fun res!806073 () Bool)

(assert (=> b!1213968 (=> (not res!806073) (not e!689453))))

(assert (=> b!1213968 (= res!806073 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!38339 _keys!1208))))))

(declare-fun b!1213969 () Bool)

(assert (=> b!1213969 (= e!689443 (= call!60528 call!60531))))

(declare-fun b!1213970 () Bool)

(declare-fun arrayContainsKey!0 (array!78342 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1213970 (= e!689441 (arrayContainsKey!0 _keys!1208 k!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun b!1213971 () Bool)

(declare-fun e!689451 () Bool)

(assert (=> b!1213971 (= e!689451 (arrayContainsKey!0 _keys!1208 k!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun b!1213956 () Bool)

(assert (=> b!1213956 (= e!689445 tp_is_empty!30791)))

(declare-fun res!806080 () Bool)

(assert (=> start!101200 (=> (not res!806080) (not e!689453))))

(assert (=> start!101200 (= res!806080 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!38339 _keys!1208))))))

(assert (=> start!101200 e!689453))

(assert (=> start!101200 tp_is_empty!30791))

(declare-fun array_inv!28692 (array!78342) Bool)

(assert (=> start!101200 (array_inv!28692 _keys!1208)))

(assert (=> start!101200 true))

(assert (=> start!101200 tp!91284))

(declare-fun e!689449 () Bool)

(declare-fun array_inv!28693 (array!78344) Bool)

(assert (=> start!101200 (and (array_inv!28693 _values!996) e!689449)))

(declare-fun b!1213972 () Bool)

(declare-fun res!806066 () Bool)

(assert (=> b!1213972 (=> (not res!806066) (not e!689453))))

(assert (=> b!1213972 (= res!806066 (and (= (size!38340 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!38339 _keys!1208) (size!38340 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1213973 () Bool)

(assert (=> b!1213973 (= e!689456 (= lt!552038 (getCurrentListMapNoExtraKeys!5410 lt!552048 lt!552046 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004)))))

(declare-fun b!1213974 () Bool)

(declare-fun Unit!40192 () Unit!40188)

(assert (=> b!1213974 (= e!689457 Unit!40192)))

(assert (=> b!1213974 (= lt!552049 (= (bvand extraKeys!923 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(assert (=> b!1213974 (= c!119933 (and (not lt!552049) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun lt!552047 () Unit!40188)

(assert (=> b!1213974 (= lt!552047 e!689444)))

(declare-fun lt!552036 () Unit!40188)

(declare-fun lemmaListMapContainsThenArrayContainsFrom!622 (array!78342 array!78344 (_ BitVec 32) (_ BitVec 32) V!46181 V!46181 (_ BitVec 64) (_ BitVec 32) Int) Unit!40188)

(assert (=> b!1213974 (= lt!552036 (lemmaListMapContainsThenArrayContainsFrom!622 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun c!119935 () Bool)

(assert (=> b!1213974 (= c!119935 (and (not (= k!934 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!934 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun res!806076 () Bool)

(assert (=> b!1213974 (= res!806076 e!689441)))

(assert (=> b!1213974 (=> (not res!806076) (not e!689451))))

(assert (=> b!1213974 e!689451))

(declare-fun lt!552050 () Unit!40188)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!78342 (_ BitVec 32) (_ BitVec 32)) Unit!40188)

(assert (=> b!1213974 (= lt!552050 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1208 #b00000000000000000000000000000000 from!1455))))

(assert (=> b!1213974 (arrayNoDuplicates!0 _keys!1208 from!1455 Nil!26815)))

(declare-fun lt!552039 () Unit!40188)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!78342 (_ BitVec 64) (_ BitVec 32) List!26818) Unit!40188)

(assert (=> b!1213974 (= lt!552039 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!1208 k!934 from!1455 Nil!26815))))

(assert (=> b!1213974 false))

(declare-fun b!1213975 () Bool)

(assert (=> b!1213975 (= e!689442 (not e!689450))))

(declare-fun res!806071 () Bool)

(assert (=> b!1213975 (=> res!806071 e!689450)))

(assert (=> b!1213975 (= res!806071 (bvsgt from!1455 i!673))))

(assert (=> b!1213975 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-fun lt!552044 () Unit!40188)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!78342 (_ BitVec 64) (_ BitVec 32)) Unit!40188)

(assert (=> b!1213975 (= lt!552044 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun bm!60528 () Bool)

(assert (=> bm!60528 (= call!60530 (+!4030 lt!552053 (ite (or c!119933 c!119936) (tuple2!19999 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!19999 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944))))))

(declare-fun b!1213976 () Bool)

(assert (=> b!1213976 (= e!689449 (and e!689448 mapRes!48061))))

(declare-fun condMapEmpty!48061 () Bool)

(declare-fun mapDefault!48061 () ValueCell!14686)

