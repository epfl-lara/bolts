; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!101112 () Bool)

(assert start!101112)

(declare-fun b_free!26037 () Bool)

(declare-fun b_next!26037 () Bool)

(assert (=> start!101112 (= b_free!26037 (not b_next!26037))))

(declare-fun tp!91131 () Bool)

(declare-fun b_and!43183 () Bool)

(assert (=> start!101112 (= tp!91131 b_and!43183)))

(declare-fun b!1211485 () Bool)

(declare-fun e!688062 () Bool)

(declare-fun e!688064 () Bool)

(assert (=> b!1211485 (= e!688062 e!688064)))

(declare-fun res!804890 () Bool)

(assert (=> b!1211485 (=> res!804890 e!688064)))

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1211485 (= res!804890 (not (= from!1455 i!673)))))

(declare-datatypes ((V!46115 0))(
  ( (V!46116 (val!15427 Int)) )
))
(declare-fun zeroValue!944 () V!46115)

(declare-datatypes ((tuple2!19950 0))(
  ( (tuple2!19951 (_1!9985 (_ BitVec 64)) (_2!9985 V!46115)) )
))
(declare-datatypes ((List!26770 0))(
  ( (Nil!26767) (Cons!26766 (h!27975 tuple2!19950) (t!39794 List!26770)) )
))
(declare-datatypes ((ListLongMap!17931 0))(
  ( (ListLongMap!17932 (toList!8981 List!26770)) )
))
(declare-fun lt!550282 () ListLongMap!17931)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-datatypes ((ValueCell!14661 0))(
  ( (ValueCellFull!14661 (v!18080 V!46115)) (EmptyCell!14661) )
))
(declare-datatypes ((array!78240 0))(
  ( (array!78241 (arr!37752 (Array (_ BitVec 32) ValueCell!14661)) (size!38289 (_ BitVec 32))) )
))
(declare-fun lt!550277 () array!78240)

(declare-datatypes ((array!78242 0))(
  ( (array!78243 (arr!37753 (Array (_ BitVec 32) (_ BitVec 64))) (size!38290 (_ BitVec 32))) )
))
(declare-fun lt!550284 () array!78242)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-fun minValue!944 () V!46115)

(declare-fun getCurrentListMapNoExtraKeys!5386 (array!78242 array!78240 (_ BitVec 32) (_ BitVec 32) V!46115 V!46115 (_ BitVec 32) Int) ListLongMap!17931)

(assert (=> b!1211485 (= lt!550282 (getCurrentListMapNoExtraKeys!5386 lt!550284 lt!550277 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun _values!996 () array!78240)

(declare-fun lt!550268 () V!46115)

(assert (=> b!1211485 (= lt!550277 (array!78241 (store (arr!37752 _values!996) i!673 (ValueCellFull!14661 lt!550268)) (size!38289 _values!996)))))

(declare-fun dynLambda!3301 (Int (_ BitVec 64)) V!46115)

(assert (=> b!1211485 (= lt!550268 (dynLambda!3301 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun _keys!1208 () array!78242)

(declare-fun lt!550283 () ListLongMap!17931)

(assert (=> b!1211485 (= lt!550283 (getCurrentListMapNoExtraKeys!5386 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1211486 () Bool)

(declare-fun res!804884 () Bool)

(declare-fun e!688072 () Bool)

(assert (=> b!1211486 (=> (not res!804884) (not e!688072))))

(declare-datatypes ((List!26771 0))(
  ( (Nil!26768) (Cons!26767 (h!27976 (_ BitVec 64)) (t!39795 List!26771)) )
))
(declare-fun arrayNoDuplicates!0 (array!78242 (_ BitVec 32) List!26771) Bool)

(assert (=> b!1211486 (= res!804884 (arrayNoDuplicates!0 lt!550284 #b00000000000000000000000000000000 Nil!26768))))

(declare-fun lt!550285 () ListLongMap!17931)

(declare-fun bm!59901 () Bool)

(declare-fun k0!934 () (_ BitVec 64))

(declare-fun c!119438 () Bool)

(declare-fun c!119437 () Bool)

(declare-datatypes ((Unit!40084 0))(
  ( (Unit!40085) )
))
(declare-fun call!59911 () Unit!40084)

(declare-fun addStillContains!1069 (ListLongMap!17931 (_ BitVec 64) V!46115 (_ BitVec 64)) Unit!40084)

(assert (=> bm!59901 (= call!59911 (addStillContains!1069 lt!550285 (ite (or c!119437 c!119438) #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000) (ite (or c!119437 c!119438) zeroValue!944 minValue!944) k0!934))))

(declare-fun mapIsEmpty!47983 () Bool)

(declare-fun mapRes!47983 () Bool)

(assert (=> mapIsEmpty!47983 mapRes!47983))

(declare-fun bm!59902 () Bool)

(declare-fun call!59907 () Unit!40084)

(assert (=> bm!59902 (= call!59907 call!59911)))

(declare-fun b!1211487 () Bool)

(declare-fun e!688061 () Unit!40084)

(declare-fun lt!550267 () Unit!40084)

(assert (=> b!1211487 (= e!688061 lt!550267)))

(assert (=> b!1211487 (= lt!550267 call!59907)))

(declare-fun call!59904 () Bool)

(assert (=> b!1211487 call!59904))

(declare-fun b!1211488 () Bool)

(assert (=> b!1211488 (= e!688072 (not e!688062))))

(declare-fun res!804887 () Bool)

(assert (=> b!1211488 (=> res!804887 e!688062)))

(assert (=> b!1211488 (= res!804887 (bvsgt from!1455 i!673))))

(declare-fun arrayContainsKey!0 (array!78242 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1211488 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-fun lt!550270 () Unit!40084)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!78242 (_ BitVec 64) (_ BitVec 32)) Unit!40084)

(assert (=> b!1211488 (= lt!550270 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1211489 () Bool)

(declare-fun res!804881 () Bool)

(declare-fun e!688060 () Bool)

(assert (=> b!1211489 (=> (not res!804881) (not e!688060))))

(assert (=> b!1211489 (= res!804881 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!26768))))

(declare-fun b!1211490 () Bool)

(declare-fun res!804877 () Bool)

(assert (=> b!1211490 (=> (not res!804877) (not e!688060))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1211490 (= res!804877 (validMask!0 mask!1564))))

(declare-fun b!1211491 () Bool)

(declare-fun res!804886 () Bool)

(assert (=> b!1211491 (=> (not res!804886) (not e!688060))))

(assert (=> b!1211491 (= res!804886 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!38290 _keys!1208))))))

(declare-fun b!1211492 () Bool)

(assert (=> b!1211492 (= e!688060 e!688072)))

(declare-fun res!804878 () Bool)

(assert (=> b!1211492 (=> (not res!804878) (not e!688072))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!78242 (_ BitVec 32)) Bool)

(assert (=> b!1211492 (= res!804878 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!550284 mask!1564))))

(assert (=> b!1211492 (= lt!550284 (array!78243 (store (arr!37753 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!38290 _keys!1208)))))

(declare-fun b!1211493 () Bool)

(declare-fun e!688066 () Bool)

(assert (=> b!1211493 (= e!688066 (bvslt i!673 (size!38289 _values!996)))))

(declare-fun e!688068 () Bool)

(assert (=> b!1211493 e!688068))

(declare-fun res!804880 () Bool)

(assert (=> b!1211493 (=> (not res!804880) (not e!688068))))

(declare-fun lt!550280 () V!46115)

(declare-fun -!1879 (ListLongMap!17931 (_ BitVec 64)) ListLongMap!17931)

(declare-fun +!4008 (ListLongMap!17931 tuple2!19950) ListLongMap!17931)

(assert (=> b!1211493 (= res!804880 (= (-!1879 (+!4008 lt!550285 (tuple2!19951 (select (arr!37753 _keys!1208) from!1455) lt!550280)) (select (arr!37753 _keys!1208) from!1455)) lt!550285))))

(declare-fun lt!550276 () Unit!40084)

(declare-fun addThenRemoveForNewKeyIsSame!280 (ListLongMap!17931 (_ BitVec 64) V!46115) Unit!40084)

(assert (=> b!1211493 (= lt!550276 (addThenRemoveForNewKeyIsSame!280 lt!550285 (select (arr!37753 _keys!1208) from!1455) lt!550280))))

(declare-fun get!19282 (ValueCell!14661 V!46115) V!46115)

(assert (=> b!1211493 (= lt!550280 (get!19282 (select (arr!37752 _values!996) from!1455) lt!550268))))

(declare-fun lt!550278 () Unit!40084)

(declare-fun e!688076 () Unit!40084)

(assert (=> b!1211493 (= lt!550278 e!688076)))

(declare-fun c!119441 () Bool)

(declare-fun contains!6996 (ListLongMap!17931 (_ BitVec 64)) Bool)

(assert (=> b!1211493 (= c!119441 (contains!6996 lt!550285 k0!934))))

(assert (=> b!1211493 (= lt!550285 (getCurrentListMapNoExtraKeys!5386 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun mapNonEmpty!47983 () Bool)

(declare-fun tp!91130 () Bool)

(declare-fun e!688069 () Bool)

(assert (=> mapNonEmpty!47983 (= mapRes!47983 (and tp!91130 e!688069))))

(declare-fun mapValue!47983 () ValueCell!14661)

(declare-fun mapKey!47983 () (_ BitVec 32))

(declare-fun mapRest!47983 () (Array (_ BitVec 32) ValueCell!14661))

(assert (=> mapNonEmpty!47983 (= (arr!37752 _values!996) (store mapRest!47983 mapKey!47983 mapValue!47983))))

(declare-fun b!1211494 () Bool)

(declare-fun e!688070 () Unit!40084)

(assert (=> b!1211494 (= e!688061 e!688070)))

(declare-fun c!119439 () Bool)

(declare-fun lt!550275 () Bool)

(assert (=> b!1211494 (= c!119439 (and (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!550275))))

(declare-fun e!688074 () Bool)

(declare-fun b!1211495 () Bool)

(declare-fun call!59906 () ListLongMap!17931)

(declare-fun call!59908 () ListLongMap!17931)

(assert (=> b!1211495 (= e!688074 (= call!59906 (-!1879 call!59908 k0!934)))))

(declare-fun b!1211496 () Bool)

(assert (=> b!1211496 (= e!688064 e!688066)))

(declare-fun res!804883 () Bool)

(assert (=> b!1211496 (=> res!804883 e!688066)))

(assert (=> b!1211496 (= res!804883 (not (= (select (arr!37753 _keys!1208) from!1455) k0!934)))))

(assert (=> b!1211496 e!688074))

(declare-fun c!119440 () Bool)

(assert (=> b!1211496 (= c!119440 (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673))))

(declare-fun lt!550269 () Unit!40084)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!1087 (array!78242 array!78240 (_ BitVec 32) (_ BitVec 32) V!46115 V!46115 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!40084)

(assert (=> b!1211496 (= lt!550269 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!1087 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1211497 () Bool)

(declare-fun res!804888 () Bool)

(assert (=> b!1211497 (=> (not res!804888) (not e!688060))))

(assert (=> b!1211497 (= res!804888 (and (= (size!38289 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!38290 _keys!1208) (size!38289 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1211498 () Bool)

(declare-fun Unit!40086 () Unit!40084)

(assert (=> b!1211498 (= e!688076 Unit!40086)))

(assert (=> b!1211498 (= lt!550275 (= (bvand extraKeys!923 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(assert (=> b!1211498 (= c!119437 (and (not lt!550275) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun lt!550266 () Unit!40084)

(declare-fun e!688065 () Unit!40084)

(assert (=> b!1211498 (= lt!550266 e!688065)))

(declare-fun lt!550279 () Unit!40084)

(declare-fun lemmaListMapContainsThenArrayContainsFrom!606 (array!78242 array!78240 (_ BitVec 32) (_ BitVec 32) V!46115 V!46115 (_ BitVec 64) (_ BitVec 32) Int) Unit!40084)

(assert (=> b!1211498 (= lt!550279 (lemmaListMapContainsThenArrayContainsFrom!606 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun c!119436 () Bool)

(assert (=> b!1211498 (= c!119436 (and (not (= k0!934 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!934 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun res!804891 () Bool)

(declare-fun e!688067 () Bool)

(assert (=> b!1211498 (= res!804891 e!688067)))

(declare-fun e!688073 () Bool)

(assert (=> b!1211498 (=> (not res!804891) (not e!688073))))

(assert (=> b!1211498 e!688073))

(declare-fun lt!550274 () Unit!40084)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!78242 (_ BitVec 32) (_ BitVec 32)) Unit!40084)

(assert (=> b!1211498 (= lt!550274 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1208 #b00000000000000000000000000000000 from!1455))))

(assert (=> b!1211498 (arrayNoDuplicates!0 _keys!1208 from!1455 Nil!26768)))

(declare-fun lt!550272 () Unit!40084)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!78242 (_ BitVec 64) (_ BitVec 32) List!26771) Unit!40084)

(assert (=> b!1211498 (= lt!550272 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!1208 k0!934 from!1455 Nil!26768))))

(assert (=> b!1211498 false))

(declare-fun b!1211499 () Bool)

(assert (=> b!1211499 call!59904))

(declare-fun lt!550271 () Unit!40084)

(assert (=> b!1211499 (= lt!550271 call!59907)))

(assert (=> b!1211499 (= e!688070 lt!550271)))

(declare-fun b!1211500 () Bool)

(assert (=> b!1211500 (= e!688074 (= call!59906 call!59908))))

(declare-fun bm!59903 () Bool)

(assert (=> bm!59903 (= call!59908 (getCurrentListMapNoExtraKeys!5386 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1211501 () Bool)

(assert (=> b!1211501 (= e!688067 (ite (= k0!934 #b0000000000000000000000000000000000000000000000000000000000000000) (not lt!550275) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun bm!59904 () Bool)

(declare-fun call!59909 () Bool)

(assert (=> bm!59904 (= call!59904 call!59909)))

(declare-fun b!1211502 () Bool)

(declare-fun res!804889 () Bool)

(assert (=> b!1211502 (=> (not res!804889) (not e!688060))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1211502 (= res!804889 (validKeyInArray!0 k0!934))))

(declare-fun res!804885 () Bool)

(assert (=> start!101112 (=> (not res!804885) (not e!688060))))

(assert (=> start!101112 (= res!804885 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!38290 _keys!1208))))))

(assert (=> start!101112 e!688060))

(declare-fun tp_is_empty!30741 () Bool)

(assert (=> start!101112 tp_is_empty!30741))

(declare-fun array_inv!28654 (array!78242) Bool)

(assert (=> start!101112 (array_inv!28654 _keys!1208)))

(assert (=> start!101112 true))

(assert (=> start!101112 tp!91131))

(declare-fun e!688063 () Bool)

(declare-fun array_inv!28655 (array!78240) Bool)

(assert (=> start!101112 (and (array_inv!28655 _values!996) e!688063)))

(declare-fun b!1211503 () Bool)

(declare-fun e!688071 () Bool)

(assert (=> b!1211503 (= e!688063 (and e!688071 mapRes!47983))))

(declare-fun condMapEmpty!47983 () Bool)

(declare-fun mapDefault!47983 () ValueCell!14661)

(assert (=> b!1211503 (= condMapEmpty!47983 (= (arr!37752 _values!996) ((as const (Array (_ BitVec 32) ValueCell!14661)) mapDefault!47983)))))

(declare-fun b!1211504 () Bool)

(declare-fun Unit!40087 () Unit!40084)

(assert (=> b!1211504 (= e!688070 Unit!40087)))

(declare-fun b!1211505 () Bool)

(assert (=> b!1211505 (= e!688073 (arrayContainsKey!0 _keys!1208 k0!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun b!1211506 () Bool)

(assert (=> b!1211506 (= c!119438 (and (not lt!550275) (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(assert (=> b!1211506 (= e!688065 e!688061)))

(declare-fun b!1211507 () Bool)

(declare-fun res!804882 () Bool)

(assert (=> b!1211507 (=> (not res!804882) (not e!688060))))

(assert (=> b!1211507 (= res!804882 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun bm!59905 () Bool)

(declare-fun call!59905 () ListLongMap!17931)

(declare-fun call!59910 () ListLongMap!17931)

(assert (=> bm!59905 (= call!59905 call!59910)))

(declare-fun lt!550281 () ListLongMap!17931)

(declare-fun bm!59906 () Bool)

(assert (=> bm!59906 (= call!59910 (+!4008 (ite c!119437 lt!550281 lt!550285) (ite c!119437 (tuple2!19951 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944) (ite c!119438 (tuple2!19951 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!19951 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944)))))))

(declare-fun b!1211508 () Bool)

(assert (=> b!1211508 (= e!688067 (arrayContainsKey!0 _keys!1208 k0!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun bm!59907 () Bool)

(assert (=> bm!59907 (= call!59909 (contains!6996 (ite c!119437 lt!550281 call!59905) k0!934))))

(declare-fun b!1211509 () Bool)

(assert (=> b!1211509 (contains!6996 call!59910 k0!934)))

(declare-fun lt!550273 () Unit!40084)

(assert (=> b!1211509 (= lt!550273 (addStillContains!1069 lt!550281 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944 k0!934))))

(assert (=> b!1211509 call!59909))

(assert (=> b!1211509 (= lt!550281 (+!4008 lt!550285 (tuple2!19951 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944)))))

(declare-fun lt!550265 () Unit!40084)

(assert (=> b!1211509 (= lt!550265 call!59911)))

(assert (=> b!1211509 (= e!688065 lt!550273)))

(declare-fun b!1211510 () Bool)

(assert (=> b!1211510 (= e!688069 tp_is_empty!30741)))

(declare-fun b!1211511 () Bool)

(declare-fun res!804879 () Bool)

(assert (=> b!1211511 (=> (not res!804879) (not e!688060))))

(assert (=> b!1211511 (= res!804879 (= (select (arr!37753 _keys!1208) i!673) k0!934))))

(declare-fun bm!59908 () Bool)

(assert (=> bm!59908 (= call!59906 (getCurrentListMapNoExtraKeys!5386 lt!550284 lt!550277 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1211512 () Bool)

(assert (=> b!1211512 (= e!688068 (= (-!1879 lt!550283 k0!934) lt!550285))))

(declare-fun b!1211513 () Bool)

(assert (=> b!1211513 (= e!688071 tp_is_empty!30741)))

(declare-fun b!1211514 () Bool)

(declare-fun Unit!40088 () Unit!40084)

(assert (=> b!1211514 (= e!688076 Unit!40088)))

(assert (= (and start!101112 res!804885) b!1211490))

(assert (= (and b!1211490 res!804877) b!1211497))

(assert (= (and b!1211497 res!804888) b!1211507))

(assert (= (and b!1211507 res!804882) b!1211489))

(assert (= (and b!1211489 res!804881) b!1211491))

(assert (= (and b!1211491 res!804886) b!1211502))

(assert (= (and b!1211502 res!804889) b!1211511))

(assert (= (and b!1211511 res!804879) b!1211492))

(assert (= (and b!1211492 res!804878) b!1211486))

(assert (= (and b!1211486 res!804884) b!1211488))

(assert (= (and b!1211488 (not res!804887)) b!1211485))

(assert (= (and b!1211485 (not res!804890)) b!1211496))

(assert (= (and b!1211496 c!119440) b!1211495))

(assert (= (and b!1211496 (not c!119440)) b!1211500))

(assert (= (or b!1211495 b!1211500) bm!59908))

(assert (= (or b!1211495 b!1211500) bm!59903))

(assert (= (and b!1211496 (not res!804883)) b!1211493))

(assert (= (and b!1211493 c!119441) b!1211498))

(assert (= (and b!1211493 (not c!119441)) b!1211514))

(assert (= (and b!1211498 c!119437) b!1211509))

(assert (= (and b!1211498 (not c!119437)) b!1211506))

(assert (= (and b!1211506 c!119438) b!1211487))

(assert (= (and b!1211506 (not c!119438)) b!1211494))

(assert (= (and b!1211494 c!119439) b!1211499))

(assert (= (and b!1211494 (not c!119439)) b!1211504))

(assert (= (or b!1211487 b!1211499) bm!59902))

(assert (= (or b!1211487 b!1211499) bm!59905))

(assert (= (or b!1211487 b!1211499) bm!59904))

(assert (= (or b!1211509 bm!59904) bm!59907))

(assert (= (or b!1211509 bm!59902) bm!59901))

(assert (= (or b!1211509 bm!59905) bm!59906))

(assert (= (and b!1211498 c!119436) b!1211508))

(assert (= (and b!1211498 (not c!119436)) b!1211501))

(assert (= (and b!1211498 res!804891) b!1211505))

(assert (= (and b!1211493 res!804880) b!1211512))

(assert (= (and b!1211503 condMapEmpty!47983) mapIsEmpty!47983))

(assert (= (and b!1211503 (not condMapEmpty!47983)) mapNonEmpty!47983))

(get-info :version)

(assert (= (and mapNonEmpty!47983 ((_ is ValueCellFull!14661) mapValue!47983)) b!1211510))

(assert (= (and b!1211503 ((_ is ValueCellFull!14661) mapDefault!47983)) b!1211513))

(assert (= start!101112 b!1211503))

(declare-fun b_lambda!21685 () Bool)

(assert (=> (not b_lambda!21685) (not b!1211485)))

(declare-fun t!39793 () Bool)

(declare-fun tb!10845 () Bool)

(assert (=> (and start!101112 (= defaultEntry!1004 defaultEntry!1004) t!39793) tb!10845))

(declare-fun result!22277 () Bool)

(assert (=> tb!10845 (= result!22277 tp_is_empty!30741)))

(assert (=> b!1211485 t!39793))

(declare-fun b_and!43185 () Bool)

(assert (= b_and!43183 (and (=> t!39793 result!22277) b_and!43185)))

(declare-fun m!1116965 () Bool)

(assert (=> b!1211498 m!1116965))

(declare-fun m!1116967 () Bool)

(assert (=> b!1211498 m!1116967))

(declare-fun m!1116969 () Bool)

(assert (=> b!1211498 m!1116969))

(declare-fun m!1116971 () Bool)

(assert (=> b!1211498 m!1116971))

(declare-fun m!1116973 () Bool)

(assert (=> b!1211507 m!1116973))

(declare-fun m!1116975 () Bool)

(assert (=> start!101112 m!1116975))

(declare-fun m!1116977 () Bool)

(assert (=> start!101112 m!1116977))

(declare-fun m!1116979 () Bool)

(assert (=> b!1211488 m!1116979))

(declare-fun m!1116981 () Bool)

(assert (=> b!1211488 m!1116981))

(declare-fun m!1116983 () Bool)

(assert (=> bm!59901 m!1116983))

(declare-fun m!1116985 () Bool)

(assert (=> b!1211509 m!1116985))

(declare-fun m!1116987 () Bool)

(assert (=> b!1211509 m!1116987))

(declare-fun m!1116989 () Bool)

(assert (=> b!1211509 m!1116989))

(declare-fun m!1116991 () Bool)

(assert (=> b!1211493 m!1116991))

(declare-fun m!1116993 () Bool)

(assert (=> b!1211493 m!1116993))

(declare-fun m!1116995 () Bool)

(assert (=> b!1211493 m!1116995))

(assert (=> b!1211493 m!1116993))

(declare-fun m!1116997 () Bool)

(assert (=> b!1211493 m!1116997))

(assert (=> b!1211493 m!1116995))

(declare-fun m!1116999 () Bool)

(assert (=> b!1211493 m!1116999))

(declare-fun m!1117001 () Bool)

(assert (=> b!1211493 m!1117001))

(assert (=> b!1211493 m!1116999))

(assert (=> b!1211493 m!1116999))

(declare-fun m!1117003 () Bool)

(assert (=> b!1211493 m!1117003))

(declare-fun m!1117005 () Bool)

(assert (=> b!1211493 m!1117005))

(declare-fun m!1117007 () Bool)

(assert (=> b!1211511 m!1117007))

(declare-fun m!1117009 () Bool)

(assert (=> b!1211485 m!1117009))

(declare-fun m!1117011 () Bool)

(assert (=> b!1211485 m!1117011))

(declare-fun m!1117013 () Bool)

(assert (=> b!1211485 m!1117013))

(declare-fun m!1117015 () Bool)

(assert (=> b!1211485 m!1117015))

(declare-fun m!1117017 () Bool)

(assert (=> b!1211489 m!1117017))

(declare-fun m!1117019 () Bool)

(assert (=> mapNonEmpty!47983 m!1117019))

(declare-fun m!1117021 () Bool)

(assert (=> b!1211502 m!1117021))

(declare-fun m!1117023 () Bool)

(assert (=> b!1211492 m!1117023))

(declare-fun m!1117025 () Bool)

(assert (=> b!1211492 m!1117025))

(declare-fun m!1117027 () Bool)

(assert (=> b!1211505 m!1117027))

(declare-fun m!1117029 () Bool)

(assert (=> b!1211486 m!1117029))

(declare-fun m!1117031 () Bool)

(assert (=> b!1211495 m!1117031))

(assert (=> b!1211496 m!1116999))

(declare-fun m!1117033 () Bool)

(assert (=> b!1211496 m!1117033))

(declare-fun m!1117035 () Bool)

(assert (=> bm!59906 m!1117035))

(declare-fun m!1117037 () Bool)

(assert (=> b!1211512 m!1117037))

(assert (=> bm!59903 m!1116991))

(declare-fun m!1117039 () Bool)

(assert (=> b!1211490 m!1117039))

(declare-fun m!1117041 () Bool)

(assert (=> bm!59908 m!1117041))

(declare-fun m!1117043 () Bool)

(assert (=> bm!59907 m!1117043))

(assert (=> b!1211508 m!1117027))

(check-sat (not bm!59907) (not b!1211507) (not b!1211508) (not b!1211488) (not bm!59901) (not b!1211490) (not b!1211512) (not b!1211498) (not b!1211509) b_and!43185 (not b!1211485) (not b!1211489) (not b!1211495) (not b!1211496) (not bm!59906) (not b_next!26037) (not b!1211486) tp_is_empty!30741 (not bm!59903) (not mapNonEmpty!47983) (not b!1211502) (not start!101112) (not b!1211492) (not bm!59908) (not b!1211493) (not b_lambda!21685) (not b!1211505))
(check-sat b_and!43185 (not b_next!26037))
