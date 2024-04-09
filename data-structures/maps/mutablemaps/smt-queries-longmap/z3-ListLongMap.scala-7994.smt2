; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!98842 () Bool)

(assert start!98842)

(declare-fun b_free!24411 () Bool)

(declare-fun b_next!24411 () Bool)

(assert (=> start!98842 (= b_free!24411 (not b_next!24411))))

(declare-fun tp!85945 () Bool)

(declare-fun b_and!39685 () Bool)

(assert (=> start!98842 (= tp!85945 b_and!39685)))

(declare-datatypes ((V!43715 0))(
  ( (V!43716 (val!14527 Int)) )
))
(declare-fun zeroValue!944 () V!43715)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-datatypes ((array!74678 0))(
  ( (array!74679 (arr!35986 (Array (_ BitVec 32) (_ BitVec 64))) (size!36523 (_ BitVec 32))) )
))
(declare-fun lt!517261 () array!74678)

(declare-datatypes ((tuple2!18534 0))(
  ( (tuple2!18535 (_1!9277 (_ BitVec 64)) (_2!9277 V!43715)) )
))
(declare-datatypes ((List!25320 0))(
  ( (Nil!25317) (Cons!25316 (h!26525 tuple2!18534) (t!36730 List!25320)) )
))
(declare-datatypes ((ListLongMap!16515 0))(
  ( (ListLongMap!16516 (toList!8273 List!25320)) )
))
(declare-fun lt!517256 () ListLongMap!16515)

(declare-fun defaultEntry!1004 () Int)

(declare-fun from!1455 () (_ BitVec 32))

(declare-datatypes ((ValueCell!13761 0))(
  ( (ValueCellFull!13761 (v!17165 V!43715)) (EmptyCell!13761) )
))
(declare-datatypes ((array!74680 0))(
  ( (array!74681 (arr!35987 (Array (_ BitVec 32) ValueCell!13761)) (size!36524 (_ BitVec 32))) )
))
(declare-fun lt!517262 () array!74680)

(declare-fun e!656282 () Bool)

(declare-fun b!1153854 () Bool)

(declare-fun minValue!944 () V!43715)

(declare-fun getCurrentListMapNoExtraKeys!4713 (array!74678 array!74680 (_ BitVec 32) (_ BitVec 32) V!43715 V!43715 (_ BitVec 32) Int) ListLongMap!16515)

(assert (=> b!1153854 (= e!656282 (= lt!517256 (getCurrentListMapNoExtraKeys!4713 lt!517261 lt!517262 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004)))))

(declare-fun b!1153855 () Bool)

(declare-fun e!656272 () Bool)

(assert (=> b!1153855 (= e!656272 true)))

(assert (=> b!1153855 e!656282))

(declare-fun res!766961 () Bool)

(assert (=> b!1153855 (=> (not res!766961) (not e!656282))))

(declare-fun lt!517250 () ListLongMap!16515)

(assert (=> b!1153855 (= res!766961 (= lt!517256 lt!517250))))

(declare-fun lt!517254 () ListLongMap!16515)

(declare-fun k0!934 () (_ BitVec 64))

(declare-fun -!1355 (ListLongMap!16515 (_ BitVec 64)) ListLongMap!16515)

(assert (=> b!1153855 (= lt!517256 (-!1355 lt!517254 k0!934))))

(declare-fun _keys!1208 () array!74678)

(declare-fun lt!517245 () V!43715)

(declare-fun +!3607 (ListLongMap!16515 tuple2!18534) ListLongMap!16515)

(assert (=> b!1153855 (= (-!1355 (+!3607 lt!517250 (tuple2!18535 (select (arr!35986 _keys!1208) from!1455) lt!517245)) (select (arr!35986 _keys!1208) from!1455)) lt!517250)))

(declare-datatypes ((Unit!37885 0))(
  ( (Unit!37886) )
))
(declare-fun lt!517244 () Unit!37885)

(declare-fun addThenRemoveForNewKeyIsSame!199 (ListLongMap!16515 (_ BitVec 64) V!43715) Unit!37885)

(assert (=> b!1153855 (= lt!517244 (addThenRemoveForNewKeyIsSame!199 lt!517250 (select (arr!35986 _keys!1208) from!1455) lt!517245))))

(declare-fun lt!517255 () V!43715)

(declare-fun _values!996 () array!74680)

(declare-fun get!18357 (ValueCell!13761 V!43715) V!43715)

(assert (=> b!1153855 (= lt!517245 (get!18357 (select (arr!35987 _values!996) from!1455) lt!517255))))

(declare-fun lt!517242 () Unit!37885)

(declare-fun e!656277 () Unit!37885)

(assert (=> b!1153855 (= lt!517242 e!656277)))

(declare-fun c!114505 () Bool)

(declare-fun contains!6764 (ListLongMap!16515 (_ BitVec 64)) Bool)

(assert (=> b!1153855 (= c!114505 (contains!6764 lt!517250 k0!934))))

(assert (=> b!1153855 (= lt!517250 (getCurrentListMapNoExtraKeys!4713 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun e!656271 () Bool)

(declare-fun b!1153857 () Bool)

(declare-fun arrayContainsKey!0 (array!74678 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1153857 (= e!656271 (arrayContainsKey!0 _keys!1208 k0!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun b!1153858 () Bool)

(declare-fun e!656275 () Bool)

(declare-fun e!656281 () Bool)

(assert (=> b!1153858 (= e!656275 e!656281)))

(declare-fun res!766965 () Bool)

(assert (=> b!1153858 (=> (not res!766965) (not e!656281))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!74678 (_ BitVec 32)) Bool)

(assert (=> b!1153858 (= res!766965 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!517261 mask!1564))))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1153858 (= lt!517261 (array!74679 (store (arr!35986 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!36523 _keys!1208)))))

(declare-fun e!656279 () Bool)

(declare-fun b!1153859 () Bool)

(declare-fun call!54479 () ListLongMap!16515)

(declare-fun call!54474 () ListLongMap!16515)

(assert (=> b!1153859 (= e!656279 (= call!54474 (-!1355 call!54479 k0!934)))))

(declare-fun b!1153860 () Bool)

(declare-fun res!766970 () Bool)

(assert (=> b!1153860 (=> (not res!766970) (not e!656281))))

(declare-datatypes ((List!25321 0))(
  ( (Nil!25318) (Cons!25317 (h!26526 (_ BitVec 64)) (t!36731 List!25321)) )
))
(declare-fun arrayNoDuplicates!0 (array!74678 (_ BitVec 32) List!25321) Bool)

(assert (=> b!1153860 (= res!766970 (arrayNoDuplicates!0 lt!517261 #b00000000000000000000000000000000 Nil!25318))))

(declare-fun bm!54470 () Bool)

(assert (=> bm!54470 (= call!54479 (getCurrentListMapNoExtraKeys!4713 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1153861 () Bool)

(declare-fun res!766968 () Bool)

(assert (=> b!1153861 (=> (not res!766968) (not e!656275))))

(assert (=> b!1153861 (= res!766968 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!25318))))

(declare-fun b!1153862 () Bool)

(declare-fun e!656270 () Bool)

(declare-fun tp_is_empty!28941 () Bool)

(assert (=> b!1153862 (= e!656270 tp_is_empty!28941)))

(declare-fun b!1153863 () Bool)

(declare-fun res!766972 () Bool)

(assert (=> b!1153863 (=> (not res!766972) (not e!656275))))

(assert (=> b!1153863 (= res!766972 (= (select (arr!35986 _keys!1208) i!673) k0!934))))

(declare-fun b!1153864 () Bool)

(declare-fun e!656267 () Bool)

(declare-fun e!656276 () Bool)

(declare-fun mapRes!45236 () Bool)

(assert (=> b!1153864 (= e!656267 (and e!656276 mapRes!45236))))

(declare-fun condMapEmpty!45236 () Bool)

(declare-fun mapDefault!45236 () ValueCell!13761)

(assert (=> b!1153864 (= condMapEmpty!45236 (= (arr!35987 _values!996) ((as const (Array (_ BitVec 32) ValueCell!13761)) mapDefault!45236)))))

(declare-fun bm!54471 () Bool)

(declare-fun call!54473 () Bool)

(declare-fun call!54477 () Bool)

(assert (=> bm!54471 (= call!54473 call!54477)))

(declare-fun b!1153865 () Bool)

(declare-fun res!766959 () Bool)

(assert (=> b!1153865 (=> (not res!766959) (not e!656275))))

(assert (=> b!1153865 (= res!766959 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!36523 _keys!1208))))))

(declare-fun b!1153866 () Bool)

(declare-fun e!656283 () Bool)

(assert (=> b!1153866 (= e!656283 e!656272)))

(declare-fun res!766967 () Bool)

(assert (=> b!1153866 (=> res!766967 e!656272)))

(assert (=> b!1153866 (= res!766967 (not (= (select (arr!35986 _keys!1208) from!1455) k0!934)))))

(assert (=> b!1153866 e!656279))

(declare-fun c!114507 () Bool)

(assert (=> b!1153866 (= c!114507 (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673))))

(declare-fun lt!517263 () Unit!37885)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!587 (array!74678 array!74680 (_ BitVec 32) (_ BitVec 32) V!43715 V!43715 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!37885)

(assert (=> b!1153866 (= lt!517263 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!587 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun bm!54472 () Bool)

(declare-fun call!54480 () ListLongMap!16515)

(declare-fun c!114509 () Bool)

(declare-fun c!114506 () Bool)

(declare-fun lt!517259 () ListLongMap!16515)

(assert (=> bm!54472 (= call!54480 (+!3607 (ite c!114506 lt!517259 lt!517250) (ite c!114506 (tuple2!18535 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944) (ite c!114509 (tuple2!18535 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!18535 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944)))))))

(declare-fun mapNonEmpty!45236 () Bool)

(declare-fun tp!85944 () Bool)

(assert (=> mapNonEmpty!45236 (= mapRes!45236 (and tp!85944 e!656270))))

(declare-fun mapValue!45236 () ValueCell!13761)

(declare-fun mapKey!45236 () (_ BitVec 32))

(declare-fun mapRest!45236 () (Array (_ BitVec 32) ValueCell!13761))

(assert (=> mapNonEmpty!45236 (= (arr!35987 _values!996) (store mapRest!45236 mapKey!45236 mapValue!45236))))

(declare-fun b!1153856 () Bool)

(assert (=> b!1153856 call!54473))

(declare-fun lt!517249 () Unit!37885)

(declare-fun call!54476 () Unit!37885)

(assert (=> b!1153856 (= lt!517249 call!54476)))

(declare-fun e!656273 () Unit!37885)

(assert (=> b!1153856 (= e!656273 lt!517249)))

(declare-fun res!766969 () Bool)

(assert (=> start!98842 (=> (not res!766969) (not e!656275))))

(assert (=> start!98842 (= res!766969 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!36523 _keys!1208))))))

(assert (=> start!98842 e!656275))

(assert (=> start!98842 tp_is_empty!28941))

(declare-fun array_inv!27424 (array!74678) Bool)

(assert (=> start!98842 (array_inv!27424 _keys!1208)))

(assert (=> start!98842 true))

(assert (=> start!98842 tp!85945))

(declare-fun array_inv!27425 (array!74680) Bool)

(assert (=> start!98842 (and (array_inv!27425 _values!996) e!656267)))

(declare-fun b!1153867 () Bool)

(declare-fun lt!517252 () Bool)

(assert (=> b!1153867 (= e!656271 (ite (= k0!934 #b0000000000000000000000000000000000000000000000000000000000000000) (not lt!517252) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!1153868 () Bool)

(assert (=> b!1153868 (= e!656279 (= call!54474 call!54479))))

(declare-fun b!1153869 () Bool)

(declare-fun e!656280 () Bool)

(assert (=> b!1153869 (= e!656280 (arrayContainsKey!0 _keys!1208 k0!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun b!1153870 () Bool)

(declare-fun res!766964 () Bool)

(assert (=> b!1153870 (=> (not res!766964) (not e!656275))))

(assert (=> b!1153870 (= res!766964 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1153871 () Bool)

(declare-fun e!656274 () Bool)

(assert (=> b!1153871 (= e!656281 (not e!656274))))

(declare-fun res!766966 () Bool)

(assert (=> b!1153871 (=> res!766966 e!656274)))

(assert (=> b!1153871 (= res!766966 (bvsgt from!1455 i!673))))

(assert (=> b!1153871 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-fun lt!517246 () Unit!37885)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!74678 (_ BitVec 64) (_ BitVec 32)) Unit!37885)

(assert (=> b!1153871 (= lt!517246 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1153872 () Bool)

(assert (=> b!1153872 (contains!6764 call!54480 k0!934)))

(declare-fun lt!517253 () Unit!37885)

(declare-fun addStillContains!905 (ListLongMap!16515 (_ BitVec 64) V!43715 (_ BitVec 64)) Unit!37885)

(assert (=> b!1153872 (= lt!517253 (addStillContains!905 lt!517259 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944 k0!934))))

(assert (=> b!1153872 call!54477))

(assert (=> b!1153872 (= lt!517259 (+!3607 lt!517250 (tuple2!18535 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944)))))

(declare-fun lt!517257 () Unit!37885)

(declare-fun call!54478 () Unit!37885)

(assert (=> b!1153872 (= lt!517257 call!54478)))

(declare-fun e!656269 () Unit!37885)

(assert (=> b!1153872 (= e!656269 lt!517253)))

(declare-fun b!1153873 () Bool)

(assert (=> b!1153873 (= c!114509 (and (not lt!517252) (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun e!656278 () Unit!37885)

(assert (=> b!1153873 (= e!656269 e!656278)))

(declare-fun bm!54473 () Bool)

(assert (=> bm!54473 (= call!54476 call!54478)))

(declare-fun b!1153874 () Bool)

(assert (=> b!1153874 (= e!656276 tp_is_empty!28941)))

(declare-fun b!1153875 () Bool)

(declare-fun res!766973 () Bool)

(assert (=> b!1153875 (=> (not res!766973) (not e!656275))))

(assert (=> b!1153875 (= res!766973 (and (= (size!36524 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!36523 _keys!1208) (size!36524 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1153876 () Bool)

(declare-fun Unit!37887 () Unit!37885)

(assert (=> b!1153876 (= e!656273 Unit!37887)))

(declare-fun b!1153877 () Bool)

(declare-fun Unit!37888 () Unit!37885)

(assert (=> b!1153877 (= e!656277 Unit!37888)))

(declare-fun b!1153878 () Bool)

(declare-fun res!766960 () Bool)

(assert (=> b!1153878 (=> (not res!766960) (not e!656275))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1153878 (= res!766960 (validKeyInArray!0 k0!934))))

(declare-fun bm!54474 () Bool)

(assert (=> bm!54474 (= call!54474 (getCurrentListMapNoExtraKeys!4713 lt!517261 lt!517262 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun call!54475 () ListLongMap!16515)

(declare-fun bm!54475 () Bool)

(assert (=> bm!54475 (= call!54477 (contains!6764 (ite c!114506 lt!517259 call!54475) k0!934))))

(declare-fun mapIsEmpty!45236 () Bool)

(assert (=> mapIsEmpty!45236 mapRes!45236))

(declare-fun b!1153879 () Bool)

(assert (=> b!1153879 (= e!656278 e!656273)))

(declare-fun c!114508 () Bool)

(assert (=> b!1153879 (= c!114508 (and (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!517252))))

(declare-fun b!1153880 () Bool)

(assert (=> b!1153880 (= e!656274 e!656283)))

(declare-fun res!766962 () Bool)

(assert (=> b!1153880 (=> res!766962 e!656283)))

(assert (=> b!1153880 (= res!766962 (not (= from!1455 i!673)))))

(declare-fun lt!517251 () ListLongMap!16515)

(assert (=> b!1153880 (= lt!517251 (getCurrentListMapNoExtraKeys!4713 lt!517261 lt!517262 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(assert (=> b!1153880 (= lt!517262 (array!74681 (store (arr!35987 _values!996) i!673 (ValueCellFull!13761 lt!517255)) (size!36524 _values!996)))))

(declare-fun dynLambda!2732 (Int (_ BitVec 64)) V!43715)

(assert (=> b!1153880 (= lt!517255 (dynLambda!2732 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1153880 (= lt!517254 (getCurrentListMapNoExtraKeys!4713 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1153881 () Bool)

(declare-fun res!766963 () Bool)

(assert (=> b!1153881 (=> (not res!766963) (not e!656275))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1153881 (= res!766963 (validMask!0 mask!1564))))

(declare-fun b!1153882 () Bool)

(declare-fun lt!517243 () Unit!37885)

(assert (=> b!1153882 (= e!656278 lt!517243)))

(assert (=> b!1153882 (= lt!517243 call!54476)))

(assert (=> b!1153882 call!54473))

(declare-fun bm!54476 () Bool)

(assert (=> bm!54476 (= call!54475 call!54480)))

(declare-fun b!1153883 () Bool)

(declare-fun Unit!37889 () Unit!37885)

(assert (=> b!1153883 (= e!656277 Unit!37889)))

(assert (=> b!1153883 (= lt!517252 (= (bvand extraKeys!923 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(assert (=> b!1153883 (= c!114506 (and (not lt!517252) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun lt!517248 () Unit!37885)

(assert (=> b!1153883 (= lt!517248 e!656269)))

(declare-fun lt!517260 () Unit!37885)

(declare-fun lemmaListMapContainsThenArrayContainsFrom!486 (array!74678 array!74680 (_ BitVec 32) (_ BitVec 32) V!43715 V!43715 (_ BitVec 64) (_ BitVec 32) Int) Unit!37885)

(assert (=> b!1153883 (= lt!517260 (lemmaListMapContainsThenArrayContainsFrom!486 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun c!114510 () Bool)

(assert (=> b!1153883 (= c!114510 (and (not (= k0!934 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!934 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun res!766971 () Bool)

(assert (=> b!1153883 (= res!766971 e!656271)))

(assert (=> b!1153883 (=> (not res!766971) (not e!656280))))

(assert (=> b!1153883 e!656280))

(declare-fun lt!517247 () Unit!37885)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!74678 (_ BitVec 32) (_ BitVec 32)) Unit!37885)

(assert (=> b!1153883 (= lt!517247 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1208 #b00000000000000000000000000000000 from!1455))))

(assert (=> b!1153883 (arrayNoDuplicates!0 _keys!1208 from!1455 Nil!25318)))

(declare-fun lt!517258 () Unit!37885)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!74678 (_ BitVec 64) (_ BitVec 32) List!25321) Unit!37885)

(assert (=> b!1153883 (= lt!517258 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!1208 k0!934 from!1455 Nil!25318))))

(assert (=> b!1153883 false))

(declare-fun bm!54477 () Bool)

(assert (=> bm!54477 (= call!54478 (addStillContains!905 lt!517250 (ite (or c!114506 c!114509) #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000) (ite (or c!114506 c!114509) zeroValue!944 minValue!944) k0!934))))

(assert (= (and start!98842 res!766969) b!1153881))

(assert (= (and b!1153881 res!766963) b!1153875))

(assert (= (and b!1153875 res!766973) b!1153870))

(assert (= (and b!1153870 res!766964) b!1153861))

(assert (= (and b!1153861 res!766968) b!1153865))

(assert (= (and b!1153865 res!766959) b!1153878))

(assert (= (and b!1153878 res!766960) b!1153863))

(assert (= (and b!1153863 res!766972) b!1153858))

(assert (= (and b!1153858 res!766965) b!1153860))

(assert (= (and b!1153860 res!766970) b!1153871))

(assert (= (and b!1153871 (not res!766966)) b!1153880))

(assert (= (and b!1153880 (not res!766962)) b!1153866))

(assert (= (and b!1153866 c!114507) b!1153859))

(assert (= (and b!1153866 (not c!114507)) b!1153868))

(assert (= (or b!1153859 b!1153868) bm!54474))

(assert (= (or b!1153859 b!1153868) bm!54470))

(assert (= (and b!1153866 (not res!766967)) b!1153855))

(assert (= (and b!1153855 c!114505) b!1153883))

(assert (= (and b!1153855 (not c!114505)) b!1153877))

(assert (= (and b!1153883 c!114506) b!1153872))

(assert (= (and b!1153883 (not c!114506)) b!1153873))

(assert (= (and b!1153873 c!114509) b!1153882))

(assert (= (and b!1153873 (not c!114509)) b!1153879))

(assert (= (and b!1153879 c!114508) b!1153856))

(assert (= (and b!1153879 (not c!114508)) b!1153876))

(assert (= (or b!1153882 b!1153856) bm!54473))

(assert (= (or b!1153882 b!1153856) bm!54476))

(assert (= (or b!1153882 b!1153856) bm!54471))

(assert (= (or b!1153872 bm!54471) bm!54475))

(assert (= (or b!1153872 bm!54473) bm!54477))

(assert (= (or b!1153872 bm!54476) bm!54472))

(assert (= (and b!1153883 c!114510) b!1153857))

(assert (= (and b!1153883 (not c!114510)) b!1153867))

(assert (= (and b!1153883 res!766971) b!1153869))

(assert (= (and b!1153855 res!766961) b!1153854))

(assert (= (and b!1153864 condMapEmpty!45236) mapIsEmpty!45236))

(assert (= (and b!1153864 (not condMapEmpty!45236)) mapNonEmpty!45236))

(get-info :version)

(assert (= (and mapNonEmpty!45236 ((_ is ValueCellFull!13761) mapValue!45236)) b!1153862))

(assert (= (and b!1153864 ((_ is ValueCellFull!13761) mapDefault!45236)) b!1153874))

(assert (= start!98842 b!1153864))

(declare-fun b_lambda!19535 () Bool)

(assert (=> (not b_lambda!19535) (not b!1153880)))

(declare-fun t!36729 () Bool)

(declare-fun tb!9231 () Bool)

(assert (=> (and start!98842 (= defaultEntry!1004 defaultEntry!1004) t!36729) tb!9231))

(declare-fun result!19019 () Bool)

(assert (=> tb!9231 (= result!19019 tp_is_empty!28941)))

(assert (=> b!1153880 t!36729))

(declare-fun b_and!39687 () Bool)

(assert (= b_and!39685 (and (=> t!36729 result!19019) b_and!39687)))

(declare-fun m!1063699 () Bool)

(assert (=> b!1153859 m!1063699))

(declare-fun m!1063701 () Bool)

(assert (=> b!1153880 m!1063701))

(declare-fun m!1063703 () Bool)

(assert (=> b!1153880 m!1063703))

(declare-fun m!1063705 () Bool)

(assert (=> b!1153880 m!1063705))

(declare-fun m!1063707 () Bool)

(assert (=> b!1153880 m!1063707))

(declare-fun m!1063709 () Bool)

(assert (=> b!1153863 m!1063709))

(declare-fun m!1063711 () Bool)

(assert (=> b!1153854 m!1063711))

(declare-fun m!1063713 () Bool)

(assert (=> b!1153860 m!1063713))

(declare-fun m!1063715 () Bool)

(assert (=> bm!54477 m!1063715))

(declare-fun m!1063717 () Bool)

(assert (=> b!1153861 m!1063717))

(declare-fun m!1063719 () Bool)

(assert (=> b!1153857 m!1063719))

(declare-fun m!1063721 () Bool)

(assert (=> b!1153881 m!1063721))

(declare-fun m!1063723 () Bool)

(assert (=> b!1153870 m!1063723))

(assert (=> bm!54474 m!1063711))

(declare-fun m!1063725 () Bool)

(assert (=> start!98842 m!1063725))

(declare-fun m!1063727 () Bool)

(assert (=> start!98842 m!1063727))

(declare-fun m!1063729 () Bool)

(assert (=> b!1153858 m!1063729))

(declare-fun m!1063731 () Bool)

(assert (=> b!1153858 m!1063731))

(declare-fun m!1063733 () Bool)

(assert (=> b!1153855 m!1063733))

(declare-fun m!1063735 () Bool)

(assert (=> b!1153855 m!1063735))

(declare-fun m!1063737 () Bool)

(assert (=> b!1153855 m!1063737))

(declare-fun m!1063739 () Bool)

(assert (=> b!1153855 m!1063739))

(declare-fun m!1063741 () Bool)

(assert (=> b!1153855 m!1063741))

(declare-fun m!1063743 () Bool)

(assert (=> b!1153855 m!1063743))

(assert (=> b!1153855 m!1063735))

(declare-fun m!1063745 () Bool)

(assert (=> b!1153855 m!1063745))

(assert (=> b!1153855 m!1063741))

(declare-fun m!1063747 () Bool)

(assert (=> b!1153855 m!1063747))

(assert (=> b!1153855 m!1063741))

(assert (=> b!1153855 m!1063739))

(declare-fun m!1063749 () Bool)

(assert (=> b!1153855 m!1063749))

(assert (=> bm!54470 m!1063733))

(declare-fun m!1063751 () Bool)

(assert (=> bm!54472 m!1063751))

(declare-fun m!1063753 () Bool)

(assert (=> b!1153871 m!1063753))

(declare-fun m!1063755 () Bool)

(assert (=> b!1153871 m!1063755))

(declare-fun m!1063757 () Bool)

(assert (=> b!1153872 m!1063757))

(declare-fun m!1063759 () Bool)

(assert (=> b!1153872 m!1063759))

(declare-fun m!1063761 () Bool)

(assert (=> b!1153872 m!1063761))

(declare-fun m!1063763 () Bool)

(assert (=> b!1153878 m!1063763))

(declare-fun m!1063765 () Bool)

(assert (=> b!1153883 m!1063765))

(declare-fun m!1063767 () Bool)

(assert (=> b!1153883 m!1063767))

(declare-fun m!1063769 () Bool)

(assert (=> b!1153883 m!1063769))

(declare-fun m!1063771 () Bool)

(assert (=> b!1153883 m!1063771))

(assert (=> b!1153869 m!1063719))

(assert (=> b!1153866 m!1063741))

(declare-fun m!1063773 () Bool)

(assert (=> b!1153866 m!1063773))

(declare-fun m!1063775 () Bool)

(assert (=> mapNonEmpty!45236 m!1063775))

(declare-fun m!1063777 () Bool)

(assert (=> bm!54475 m!1063777))

(check-sat (not bm!54470) (not b!1153860) (not b!1153855) (not b!1153854) (not b!1153881) (not mapNonEmpty!45236) (not b!1153872) (not b!1153870) (not start!98842) (not bm!54472) (not b_next!24411) b_and!39687 (not b!1153858) (not bm!54477) tp_is_empty!28941 (not bm!54475) (not b!1153880) (not b_lambda!19535) (not b!1153869) (not bm!54474) (not b!1153861) (not b!1153857) (not b!1153866) (not b!1153883) (not b!1153878) (not b!1153871) (not b!1153859))
(check-sat b_and!39687 (not b_next!24411))
