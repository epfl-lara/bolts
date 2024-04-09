; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!99040 () Bool)

(assert start!99040)

(declare-fun b_free!24609 () Bool)

(declare-fun b_next!24609 () Bool)

(assert (=> start!99040 (= b_free!24609 (not b_next!24609))))

(declare-fun tp!86538 () Bool)

(declare-fun b_and!40081 () Bool)

(assert (=> start!99040 (= tp!86538 b_and!40081)))

(declare-fun b!1162962 () Bool)

(declare-fun e!661319 () Bool)

(declare-fun e!661322 () Bool)

(assert (=> b!1162962 (= e!661319 e!661322)))

(declare-fun res!771414 () Bool)

(assert (=> b!1162962 (=> res!771414 e!661322)))

(declare-datatypes ((array!75068 0))(
  ( (array!75069 (arr!36181 (Array (_ BitVec 32) (_ BitVec 64))) (size!36718 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!75068)

(declare-fun k0!934 () (_ BitVec 64))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> b!1162962 (= res!771414 (not (= (select (arr!36181 _keys!1208) from!1455) k0!934)))))

(declare-fun e!661328 () Bool)

(assert (=> b!1162962 e!661328))

(declare-fun c!116291 () Bool)

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1162962 (= c!116291 (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673))))

(declare-datatypes ((V!43979 0))(
  ( (V!43980 (val!14626 Int)) )
))
(declare-fun zeroValue!944 () V!43979)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-datatypes ((Unit!38271 0))(
  ( (Unit!38272) )
))
(declare-fun lt!523783 () Unit!38271)

(declare-datatypes ((ValueCell!13860 0))(
  ( (ValueCellFull!13860 (v!17264 V!43979)) (EmptyCell!13860) )
))
(declare-datatypes ((array!75070 0))(
  ( (array!75071 (arr!36182 (Array (_ BitVec 32) ValueCell!13860)) (size!36719 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!75070)

(declare-fun minValue!944 () V!43979)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!657 (array!75068 array!75070 (_ BitVec 32) (_ BitVec 32) V!43979 V!43979 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!38271)

(assert (=> b!1162962 (= lt!523783 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!657 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1162963 () Bool)

(declare-fun e!661326 () Bool)

(declare-fun tp_is_empty!29139 () Bool)

(assert (=> b!1162963 (= e!661326 tp_is_empty!29139)))

(declare-fun mapNonEmpty!45533 () Bool)

(declare-fun mapRes!45533 () Bool)

(declare-fun tp!86539 () Bool)

(assert (=> mapNonEmpty!45533 (= mapRes!45533 (and tp!86539 e!661326))))

(declare-fun mapKey!45533 () (_ BitVec 32))

(declare-fun mapRest!45533 () (Array (_ BitVec 32) ValueCell!13860))

(declare-fun mapValue!45533 () ValueCell!13860)

(assert (=> mapNonEmpty!45533 (= (arr!36182 _values!996) (store mapRest!45533 mapKey!45533 mapValue!45533))))

(declare-fun b!1162964 () Bool)

(declare-datatypes ((tuple2!18722 0))(
  ( (tuple2!18723 (_1!9371 (_ BitVec 64)) (_2!9371 V!43979)) )
))
(declare-datatypes ((List!25498 0))(
  ( (Nil!25495) (Cons!25494 (h!26703 tuple2!18722) (t!37106 List!25498)) )
))
(declare-datatypes ((ListLongMap!16703 0))(
  ( (ListLongMap!16704 (toList!8367 List!25498)) )
))
(declare-fun call!56849 () ListLongMap!16703)

(declare-fun contains!6845 (ListLongMap!16703 (_ BitVec 64)) Bool)

(assert (=> b!1162964 (contains!6845 call!56849 k0!934)))

(declare-fun lt!523791 () Unit!38271)

(declare-fun call!56850 () Unit!38271)

(assert (=> b!1162964 (= lt!523791 call!56850)))

(declare-fun call!56853 () Bool)

(assert (=> b!1162964 call!56853))

(declare-fun lt!523788 () ListLongMap!16703)

(declare-fun lt!523794 () ListLongMap!16703)

(declare-fun +!3688 (ListLongMap!16703 tuple2!18722) ListLongMap!16703)

(assert (=> b!1162964 (= lt!523788 (+!3688 lt!523794 (tuple2!18723 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944)))))

(declare-fun lt!523796 () Unit!38271)

(declare-fun addStillContains!986 (ListLongMap!16703 (_ BitVec 64) V!43979 (_ BitVec 64)) Unit!38271)

(assert (=> b!1162964 (= lt!523796 (addStillContains!986 lt!523794 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944 k0!934))))

(declare-fun e!661316 () Unit!38271)

(assert (=> b!1162964 (= e!661316 lt!523791)))

(declare-fun bm!56846 () Bool)

(declare-fun call!56851 () ListLongMap!16703)

(assert (=> bm!56846 (= call!56851 call!56849)))

(declare-fun b!1162965 () Bool)

(declare-fun res!771422 () Bool)

(declare-fun e!661317 () Bool)

(assert (=> b!1162965 (=> (not res!771422) (not e!661317))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1162965 (= res!771422 (validMask!0 mask!1564))))

(declare-fun b!1162966 () Bool)

(declare-fun e!661323 () Bool)

(declare-fun e!661332 () Bool)

(assert (=> b!1162966 (= e!661323 (and e!661332 mapRes!45533))))

(declare-fun condMapEmpty!45533 () Bool)

(declare-fun mapDefault!45533 () ValueCell!13860)

(assert (=> b!1162966 (= condMapEmpty!45533 (= (arr!36182 _values!996) ((as const (Array (_ BitVec 32) ValueCell!13860)) mapDefault!45533)))))

(declare-fun b!1162967 () Bool)

(declare-fun e!661325 () Unit!38271)

(declare-fun Unit!38273 () Unit!38271)

(assert (=> b!1162967 (= e!661325 Unit!38273)))

(declare-fun b!1162968 () Bool)

(declare-fun res!771426 () Bool)

(declare-fun e!661330 () Bool)

(assert (=> b!1162968 (=> (not res!771426) (not e!661330))))

(declare-fun lt!523793 () array!75068)

(declare-datatypes ((List!25499 0))(
  ( (Nil!25496) (Cons!25495 (h!26704 (_ BitVec 64)) (t!37107 List!25499)) )
))
(declare-fun arrayNoDuplicates!0 (array!75068 (_ BitVec 32) List!25499) Bool)

(assert (=> b!1162968 (= res!771426 (arrayNoDuplicates!0 lt!523793 #b00000000000000000000000000000000 Nil!25496))))

(declare-fun b!1162969 () Bool)

(assert (=> b!1162969 (= e!661317 e!661330)))

(declare-fun res!771418 () Bool)

(assert (=> b!1162969 (=> (not res!771418) (not e!661330))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!75068 (_ BitVec 32)) Bool)

(assert (=> b!1162969 (= res!771418 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!523793 mask!1564))))

(assert (=> b!1162969 (= lt!523793 (array!75069 (store (arr!36181 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!36718 _keys!1208)))))

(declare-fun b!1162970 () Bool)

(declare-fun e!661321 () Unit!38271)

(declare-fun lt!523789 () Unit!38271)

(assert (=> b!1162970 (= e!661321 lt!523789)))

(declare-fun call!56852 () Unit!38271)

(assert (=> b!1162970 (= lt!523789 call!56852)))

(declare-fun call!56856 () Bool)

(assert (=> b!1162970 call!56856))

(declare-fun b!1162971 () Bool)

(declare-fun call!56854 () ListLongMap!16703)

(declare-fun call!56855 () ListLongMap!16703)

(assert (=> b!1162971 (= e!661328 (= call!56854 call!56855))))

(declare-fun b!1162972 () Bool)

(assert (=> b!1162972 (= e!661322 true)))

(declare-fun e!661331 () Bool)

(assert (=> b!1162972 e!661331))

(declare-fun res!771421 () Bool)

(assert (=> b!1162972 (=> (not res!771421) (not e!661331))))

(declare-fun lt!523790 () ListLongMap!16703)

(assert (=> b!1162972 (= res!771421 (= lt!523790 lt!523794))))

(declare-fun lt!523779 () ListLongMap!16703)

(declare-fun -!1434 (ListLongMap!16703 (_ BitVec 64)) ListLongMap!16703)

(assert (=> b!1162972 (= lt!523790 (-!1434 lt!523779 k0!934))))

(declare-fun lt!523786 () V!43979)

(assert (=> b!1162972 (= (-!1434 (+!3688 lt!523794 (tuple2!18723 (select (arr!36181 _keys!1208) from!1455) lt!523786)) (select (arr!36181 _keys!1208) from!1455)) lt!523794)))

(declare-fun lt!523787 () Unit!38271)

(declare-fun addThenRemoveForNewKeyIsSame!267 (ListLongMap!16703 (_ BitVec 64) V!43979) Unit!38271)

(assert (=> b!1162972 (= lt!523787 (addThenRemoveForNewKeyIsSame!267 lt!523794 (select (arr!36181 _keys!1208) from!1455) lt!523786))))

(declare-fun lt!523780 () V!43979)

(declare-fun get!18491 (ValueCell!13860 V!43979) V!43979)

(assert (=> b!1162972 (= lt!523786 (get!18491 (select (arr!36182 _values!996) from!1455) lt!523780))))

(declare-fun lt!523778 () Unit!38271)

(assert (=> b!1162972 (= lt!523778 e!661325)))

(declare-fun c!116289 () Bool)

(assert (=> b!1162972 (= c!116289 (contains!6845 lt!523794 k0!934))))

(declare-fun getCurrentListMapNoExtraKeys!4801 (array!75068 array!75070 (_ BitVec 32) (_ BitVec 32) V!43979 V!43979 (_ BitVec 32) Int) ListLongMap!16703)

(assert (=> b!1162972 (= lt!523794 (getCurrentListMapNoExtraKeys!4801 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1162973 () Bool)

(declare-fun e!661320 () Bool)

(assert (=> b!1162973 (= e!661320 e!661319)))

(declare-fun res!771416 () Bool)

(assert (=> b!1162973 (=> res!771416 e!661319)))

(assert (=> b!1162973 (= res!771416 (not (= from!1455 i!673)))))

(declare-fun lt!523797 () array!75070)

(declare-fun lt!523784 () ListLongMap!16703)

(assert (=> b!1162973 (= lt!523784 (getCurrentListMapNoExtraKeys!4801 lt!523793 lt!523797 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(assert (=> b!1162973 (= lt!523797 (array!75071 (store (arr!36182 _values!996) i!673 (ValueCellFull!13860 lt!523780)) (size!36719 _values!996)))))

(declare-fun dynLambda!2799 (Int (_ BitVec 64)) V!43979)

(assert (=> b!1162973 (= lt!523780 (dynLambda!2799 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1162973 (= lt!523779 (getCurrentListMapNoExtraKeys!4801 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1162974 () Bool)

(declare-fun res!771427 () Bool)

(assert (=> b!1162974 (=> (not res!771427) (not e!661317))))

(assert (=> b!1162974 (= res!771427 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!36718 _keys!1208))))))

(declare-fun b!1162975 () Bool)

(assert (=> b!1162975 call!56856))

(declare-fun lt!523781 () Unit!38271)

(assert (=> b!1162975 (= lt!523781 call!56852)))

(declare-fun e!661329 () Unit!38271)

(assert (=> b!1162975 (= e!661329 lt!523781)))

(declare-fun bm!56847 () Bool)

(declare-fun c!116292 () Bool)

(assert (=> bm!56847 (= call!56853 (contains!6845 (ite c!116292 lt!523788 call!56851) k0!934))))

(declare-fun b!1162976 () Bool)

(declare-fun Unit!38274 () Unit!38271)

(assert (=> b!1162976 (= e!661329 Unit!38274)))

(declare-fun b!1162977 () Bool)

(assert (=> b!1162977 (= e!661321 e!661329)))

(declare-fun c!116288 () Bool)

(declare-fun lt!523776 () Bool)

(assert (=> b!1162977 (= c!116288 (and (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!523776))))

(declare-fun b!1162978 () Bool)

(declare-fun res!771425 () Bool)

(assert (=> b!1162978 (=> (not res!771425) (not e!661317))))

(assert (=> b!1162978 (= res!771425 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!25496))))

(declare-fun b!1162979 () Bool)

(assert (=> b!1162979 (= e!661332 tp_is_empty!29139)))

(declare-fun mapIsEmpty!45533 () Bool)

(assert (=> mapIsEmpty!45533 mapRes!45533))

(declare-fun res!771424 () Bool)

(assert (=> start!99040 (=> (not res!771424) (not e!661317))))

(assert (=> start!99040 (= res!771424 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!36718 _keys!1208))))))

(assert (=> start!99040 e!661317))

(assert (=> start!99040 tp_is_empty!29139))

(declare-fun array_inv!27556 (array!75068) Bool)

(assert (=> start!99040 (array_inv!27556 _keys!1208)))

(assert (=> start!99040 true))

(assert (=> start!99040 tp!86538))

(declare-fun array_inv!27557 (array!75070) Bool)

(assert (=> start!99040 (and (array_inv!27557 _values!996) e!661323)))

(declare-fun b!1162980 () Bool)

(declare-fun e!661324 () Bool)

(declare-fun arrayContainsKey!0 (array!75068 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1162980 (= e!661324 (arrayContainsKey!0 _keys!1208 k0!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun b!1162981 () Bool)

(assert (=> b!1162981 (= e!661330 (not e!661320))))

(declare-fun res!771419 () Bool)

(assert (=> b!1162981 (=> res!771419 e!661320)))

(assert (=> b!1162981 (= res!771419 (bvsgt from!1455 i!673))))

(assert (=> b!1162981 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-fun lt!523782 () Unit!38271)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!75068 (_ BitVec 64) (_ BitVec 32)) Unit!38271)

(assert (=> b!1162981 (= lt!523782 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun e!661318 () Bool)

(declare-fun b!1162982 () Bool)

(assert (=> b!1162982 (= e!661318 (ite (= k0!934 #b0000000000000000000000000000000000000000000000000000000000000000) (not lt!523776) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun bm!56848 () Bool)

(assert (=> bm!56848 (= call!56854 (getCurrentListMapNoExtraKeys!4801 lt!523793 lt!523797 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun bm!56849 () Bool)

(assert (=> bm!56849 (= call!56855 (getCurrentListMapNoExtraKeys!4801 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1162983 () Bool)

(declare-fun c!116290 () Bool)

(assert (=> b!1162983 (= c!116290 (and (not lt!523776) (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(assert (=> b!1162983 (= e!661316 e!661321)))

(declare-fun b!1162984 () Bool)

(assert (=> b!1162984 (= e!661328 (= call!56854 (-!1434 call!56855 k0!934)))))

(declare-fun b!1162985 () Bool)

(declare-fun res!771420 () Bool)

(assert (=> b!1162985 (=> (not res!771420) (not e!661317))))

(assert (=> b!1162985 (= res!771420 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1162986 () Bool)

(assert (=> b!1162986 (= e!661318 (arrayContainsKey!0 _keys!1208 k0!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun b!1162987 () Bool)

(declare-fun res!771415 () Bool)

(assert (=> b!1162987 (=> (not res!771415) (not e!661317))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1162987 (= res!771415 (validKeyInArray!0 k0!934))))

(declare-fun b!1162988 () Bool)

(declare-fun Unit!38275 () Unit!38271)

(assert (=> b!1162988 (= e!661325 Unit!38275)))

(assert (=> b!1162988 (= lt!523776 (= (bvand extraKeys!923 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(assert (=> b!1162988 (= c!116292 (and (not lt!523776) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun lt!523785 () Unit!38271)

(assert (=> b!1162988 (= lt!523785 e!661316)))

(declare-fun lt!523777 () Unit!38271)

(declare-fun lemmaListMapContainsThenArrayContainsFrom!555 (array!75068 array!75070 (_ BitVec 32) (_ BitVec 32) V!43979 V!43979 (_ BitVec 64) (_ BitVec 32) Int) Unit!38271)

(assert (=> b!1162988 (= lt!523777 (lemmaListMapContainsThenArrayContainsFrom!555 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun c!116287 () Bool)

(assert (=> b!1162988 (= c!116287 (and (not (= k0!934 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!934 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun res!771423 () Bool)

(assert (=> b!1162988 (= res!771423 e!661318)))

(assert (=> b!1162988 (=> (not res!771423) (not e!661324))))

(assert (=> b!1162988 e!661324))

(declare-fun lt!523795 () Unit!38271)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!75068 (_ BitVec 32) (_ BitVec 32)) Unit!38271)

(assert (=> b!1162988 (= lt!523795 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1208 #b00000000000000000000000000000000 from!1455))))

(assert (=> b!1162988 (arrayNoDuplicates!0 _keys!1208 from!1455 Nil!25496)))

(declare-fun lt!523792 () Unit!38271)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!75068 (_ BitVec 64) (_ BitVec 32) List!25499) Unit!38271)

(assert (=> b!1162988 (= lt!523792 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!1208 k0!934 from!1455 Nil!25496))))

(assert (=> b!1162988 false))

(declare-fun b!1162989 () Bool)

(assert (=> b!1162989 (= e!661331 (= lt!523790 (getCurrentListMapNoExtraKeys!4801 lt!523793 lt!523797 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004)))))

(declare-fun bm!56850 () Bool)

(assert (=> bm!56850 (= call!56849 (+!3688 (ite c!116292 lt!523788 lt!523794) (ite c!116292 (tuple2!18723 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944) (ite c!116290 (tuple2!18723 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!18723 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944)))))))

(declare-fun bm!56851 () Bool)

(assert (=> bm!56851 (= call!56852 call!56850)))

(declare-fun b!1162990 () Bool)

(declare-fun res!771417 () Bool)

(assert (=> b!1162990 (=> (not res!771417) (not e!661317))))

(assert (=> b!1162990 (= res!771417 (= (select (arr!36181 _keys!1208) i!673) k0!934))))

(declare-fun b!1162991 () Bool)

(declare-fun res!771428 () Bool)

(assert (=> b!1162991 (=> (not res!771428) (not e!661317))))

(assert (=> b!1162991 (= res!771428 (and (= (size!36719 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!36718 _keys!1208) (size!36719 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun bm!56852 () Bool)

(assert (=> bm!56852 (= call!56856 call!56853)))

(declare-fun bm!56853 () Bool)

(assert (=> bm!56853 (= call!56850 (addStillContains!986 (ite c!116292 lt!523788 lt!523794) (ite c!116292 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!116290 #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000)) (ite c!116292 minValue!944 (ite c!116290 zeroValue!944 minValue!944)) k0!934))))

(assert (= (and start!99040 res!771424) b!1162965))

(assert (= (and b!1162965 res!771422) b!1162991))

(assert (= (and b!1162991 res!771428) b!1162985))

(assert (= (and b!1162985 res!771420) b!1162978))

(assert (= (and b!1162978 res!771425) b!1162974))

(assert (= (and b!1162974 res!771427) b!1162987))

(assert (= (and b!1162987 res!771415) b!1162990))

(assert (= (and b!1162990 res!771417) b!1162969))

(assert (= (and b!1162969 res!771418) b!1162968))

(assert (= (and b!1162968 res!771426) b!1162981))

(assert (= (and b!1162981 (not res!771419)) b!1162973))

(assert (= (and b!1162973 (not res!771416)) b!1162962))

(assert (= (and b!1162962 c!116291) b!1162984))

(assert (= (and b!1162962 (not c!116291)) b!1162971))

(assert (= (or b!1162984 b!1162971) bm!56848))

(assert (= (or b!1162984 b!1162971) bm!56849))

(assert (= (and b!1162962 (not res!771414)) b!1162972))

(assert (= (and b!1162972 c!116289) b!1162988))

(assert (= (and b!1162972 (not c!116289)) b!1162967))

(assert (= (and b!1162988 c!116292) b!1162964))

(assert (= (and b!1162988 (not c!116292)) b!1162983))

(assert (= (and b!1162983 c!116290) b!1162970))

(assert (= (and b!1162983 (not c!116290)) b!1162977))

(assert (= (and b!1162977 c!116288) b!1162975))

(assert (= (and b!1162977 (not c!116288)) b!1162976))

(assert (= (or b!1162970 b!1162975) bm!56851))

(assert (= (or b!1162970 b!1162975) bm!56846))

(assert (= (or b!1162970 b!1162975) bm!56852))

(assert (= (or b!1162964 bm!56852) bm!56847))

(assert (= (or b!1162964 bm!56851) bm!56853))

(assert (= (or b!1162964 bm!56846) bm!56850))

(assert (= (and b!1162988 c!116287) b!1162986))

(assert (= (and b!1162988 (not c!116287)) b!1162982))

(assert (= (and b!1162988 res!771423) b!1162980))

(assert (= (and b!1162972 res!771421) b!1162989))

(assert (= (and b!1162966 condMapEmpty!45533) mapIsEmpty!45533))

(assert (= (and b!1162966 (not condMapEmpty!45533)) mapNonEmpty!45533))

(get-info :version)

(assert (= (and mapNonEmpty!45533 ((_ is ValueCellFull!13860) mapValue!45533)) b!1162963))

(assert (= (and b!1162966 ((_ is ValueCellFull!13860) mapDefault!45533)) b!1162979))

(assert (= start!99040 b!1162966))

(declare-fun b_lambda!19733 () Bool)

(assert (=> (not b_lambda!19733) (not b!1162973)))

(declare-fun t!37105 () Bool)

(declare-fun tb!9429 () Bool)

(assert (=> (and start!99040 (= defaultEntry!1004 defaultEntry!1004) t!37105) tb!9429))

(declare-fun result!19415 () Bool)

(assert (=> tb!9429 (= result!19415 tp_is_empty!29139)))

(assert (=> b!1162973 t!37105))

(declare-fun b_and!40083 () Bool)

(assert (= b_and!40081 (and (=> t!37105 result!19415) b_and!40083)))

(declare-fun m!1071627 () Bool)

(assert (=> b!1162981 m!1071627))

(declare-fun m!1071629 () Bool)

(assert (=> b!1162981 m!1071629))

(declare-fun m!1071631 () Bool)

(assert (=> bm!56850 m!1071631))

(declare-fun m!1071633 () Bool)

(assert (=> start!99040 m!1071633))

(declare-fun m!1071635 () Bool)

(assert (=> start!99040 m!1071635))

(declare-fun m!1071637 () Bool)

(assert (=> bm!56848 m!1071637))

(declare-fun m!1071639 () Bool)

(assert (=> b!1162978 m!1071639))

(declare-fun m!1071641 () Bool)

(assert (=> b!1162962 m!1071641))

(declare-fun m!1071643 () Bool)

(assert (=> b!1162962 m!1071643))

(declare-fun m!1071645 () Bool)

(assert (=> b!1162972 m!1071645))

(declare-fun m!1071647 () Bool)

(assert (=> b!1162972 m!1071647))

(assert (=> b!1162972 m!1071647))

(declare-fun m!1071649 () Bool)

(assert (=> b!1162972 m!1071649))

(declare-fun m!1071651 () Bool)

(assert (=> b!1162972 m!1071651))

(assert (=> b!1162972 m!1071651))

(assert (=> b!1162972 m!1071641))

(declare-fun m!1071653 () Bool)

(assert (=> b!1162972 m!1071653))

(declare-fun m!1071655 () Bool)

(assert (=> b!1162972 m!1071655))

(assert (=> b!1162972 m!1071641))

(declare-fun m!1071657 () Bool)

(assert (=> b!1162972 m!1071657))

(declare-fun m!1071659 () Bool)

(assert (=> b!1162972 m!1071659))

(assert (=> b!1162972 m!1071641))

(declare-fun m!1071661 () Bool)

(assert (=> b!1162984 m!1071661))

(declare-fun m!1071663 () Bool)

(assert (=> b!1162980 m!1071663))

(declare-fun m!1071665 () Bool)

(assert (=> b!1162973 m!1071665))

(declare-fun m!1071667 () Bool)

(assert (=> b!1162973 m!1071667))

(declare-fun m!1071669 () Bool)

(assert (=> b!1162973 m!1071669))

(declare-fun m!1071671 () Bool)

(assert (=> b!1162973 m!1071671))

(declare-fun m!1071673 () Bool)

(assert (=> b!1162987 m!1071673))

(assert (=> b!1162989 m!1071637))

(assert (=> b!1162986 m!1071663))

(assert (=> bm!56849 m!1071645))

(declare-fun m!1071675 () Bool)

(assert (=> b!1162968 m!1071675))

(declare-fun m!1071677 () Bool)

(assert (=> b!1162985 m!1071677))

(declare-fun m!1071679 () Bool)

(assert (=> b!1162969 m!1071679))

(declare-fun m!1071681 () Bool)

(assert (=> b!1162969 m!1071681))

(declare-fun m!1071683 () Bool)

(assert (=> b!1162964 m!1071683))

(declare-fun m!1071685 () Bool)

(assert (=> b!1162964 m!1071685))

(declare-fun m!1071687 () Bool)

(assert (=> b!1162964 m!1071687))

(declare-fun m!1071689 () Bool)

(assert (=> bm!56847 m!1071689))

(declare-fun m!1071691 () Bool)

(assert (=> bm!56853 m!1071691))

(declare-fun m!1071693 () Bool)

(assert (=> mapNonEmpty!45533 m!1071693))

(declare-fun m!1071695 () Bool)

(assert (=> b!1162965 m!1071695))

(declare-fun m!1071697 () Bool)

(assert (=> b!1162988 m!1071697))

(declare-fun m!1071699 () Bool)

(assert (=> b!1162988 m!1071699))

(declare-fun m!1071701 () Bool)

(assert (=> b!1162988 m!1071701))

(declare-fun m!1071703 () Bool)

(assert (=> b!1162988 m!1071703))

(declare-fun m!1071705 () Bool)

(assert (=> b!1162990 m!1071705))

(check-sat (not b_lambda!19733) (not bm!56849) (not b!1162962) (not b!1162987) (not b!1162988) (not b_next!24609) (not b!1162973) (not b!1162965) (not b!1162986) (not b!1162989) (not bm!56848) (not bm!56850) (not b!1162984) (not b!1162981) (not mapNonEmpty!45533) (not b!1162968) tp_is_empty!29139 (not b!1162985) (not bm!56847) (not bm!56853) (not b!1162978) (not b!1162980) b_and!40083 (not b!1162964) (not b!1162969) (not start!99040) (not b!1162972))
(check-sat b_and!40083 (not b_next!24609))
