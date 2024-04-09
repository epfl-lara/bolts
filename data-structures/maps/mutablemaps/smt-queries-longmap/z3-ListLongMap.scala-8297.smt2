; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!101130 () Bool)

(assert start!101130)

(declare-fun b_free!26055 () Bool)

(declare-fun b_next!26055 () Bool)

(assert (=> start!101130 (= b_free!26055 (not b_next!26055))))

(declare-fun tp!91185 () Bool)

(declare-fun b_and!43219 () Bool)

(assert (=> start!101130 (= tp!91185 b_and!43219)))

(declare-fun b!1212304 () Bool)

(declare-datatypes ((Unit!40120 0))(
  ( (Unit!40121) )
))
(declare-fun e!688513 () Unit!40120)

(declare-fun e!688521 () Unit!40120)

(assert (=> b!1212304 (= e!688513 e!688521)))

(declare-fun c!119601 () Bool)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun lt!550864 () Bool)

(assert (=> b!1212304 (= c!119601 (and (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!550864))))

(declare-datatypes ((V!46139 0))(
  ( (V!46140 (val!15436 Int)) )
))
(declare-fun zeroValue!944 () V!46139)

(declare-datatypes ((array!78276 0))(
  ( (array!78277 (arr!37770 (Array (_ BitVec 32) (_ BitVec 64))) (size!38307 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!78276)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-datatypes ((tuple2!19968 0))(
  ( (tuple2!19969 (_1!9994 (_ BitVec 64)) (_2!9994 V!46139)) )
))
(declare-datatypes ((List!26788 0))(
  ( (Nil!26785) (Cons!26784 (h!27993 tuple2!19968) (t!39830 List!26788)) )
))
(declare-datatypes ((ListLongMap!17949 0))(
  ( (ListLongMap!17950 (toList!8990 List!26788)) )
))
(declare-fun call!60124 () ListLongMap!17949)

(declare-fun from!1455 () (_ BitVec 32))

(declare-datatypes ((ValueCell!14670 0))(
  ( (ValueCellFull!14670 (v!18089 V!46139)) (EmptyCell!14670) )
))
(declare-datatypes ((array!78278 0))(
  ( (array!78279 (arr!37771 (Array (_ BitVec 32) ValueCell!14670)) (size!38308 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!78278)

(declare-fun bm!60117 () Bool)

(declare-fun minValue!944 () V!46139)

(declare-fun getCurrentListMapNoExtraKeys!5395 (array!78276 array!78278 (_ BitVec 32) (_ BitVec 32) V!46139 V!46139 (_ BitVec 32) Int) ListLongMap!17949)

(assert (=> bm!60117 (= call!60124 (getCurrentListMapNoExtraKeys!5395 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun lt!550869 () array!78278)

(declare-fun call!60127 () ListLongMap!17949)

(declare-fun lt!550856 () array!78276)

(declare-fun bm!60118 () Bool)

(assert (=> bm!60118 (= call!60127 (getCurrentListMapNoExtraKeys!5395 lt!550856 lt!550869 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1212305 () Bool)

(declare-fun e!688525 () Bool)

(declare-fun tp_is_empty!30759 () Bool)

(assert (=> b!1212305 (= e!688525 tp_is_empty!30759)))

(declare-fun call!60126 () ListLongMap!17949)

(declare-fun c!119603 () Bool)

(declare-fun k0!934 () (_ BitVec 64))

(declare-fun call!60120 () Bool)

(declare-fun bm!60119 () Bool)

(declare-fun lt!550874 () ListLongMap!17949)

(declare-fun contains!7005 (ListLongMap!17949 (_ BitVec 64)) Bool)

(assert (=> bm!60119 (= call!60120 (contains!7005 (ite c!119603 lt!550874 call!60126) k0!934))))

(declare-fun b!1212306 () Bool)

(declare-fun e!688511 () Unit!40120)

(declare-fun Unit!40122 () Unit!40120)

(assert (=> b!1212306 (= e!688511 Unit!40122)))

(assert (=> b!1212306 (= lt!550864 (= (bvand extraKeys!923 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(assert (=> b!1212306 (= c!119603 (and (not lt!550864) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun lt!550855 () Unit!40120)

(declare-fun e!688526 () Unit!40120)

(assert (=> b!1212306 (= lt!550855 e!688526)))

(declare-fun lt!550865 () Unit!40120)

(declare-fun lemmaListMapContainsThenArrayContainsFrom!612 (array!78276 array!78278 (_ BitVec 32) (_ BitVec 32) V!46139 V!46139 (_ BitVec 64) (_ BitVec 32) Int) Unit!40120)

(assert (=> b!1212306 (= lt!550865 (lemmaListMapContainsThenArrayContainsFrom!612 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun c!119600 () Bool)

(assert (=> b!1212306 (= c!119600 (and (not (= k0!934 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!934 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun res!805277 () Bool)

(declare-fun e!688523 () Bool)

(assert (=> b!1212306 (= res!805277 e!688523)))

(declare-fun e!688524 () Bool)

(assert (=> b!1212306 (=> (not res!805277) (not e!688524))))

(assert (=> b!1212306 e!688524))

(declare-fun lt!550875 () Unit!40120)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!78276 (_ BitVec 32) (_ BitVec 32)) Unit!40120)

(assert (=> b!1212306 (= lt!550875 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1208 #b00000000000000000000000000000000 from!1455))))

(declare-datatypes ((List!26789 0))(
  ( (Nil!26786) (Cons!26785 (h!27994 (_ BitVec 64)) (t!39831 List!26789)) )
))
(declare-fun arrayNoDuplicates!0 (array!78276 (_ BitVec 32) List!26789) Bool)

(assert (=> b!1212306 (arrayNoDuplicates!0 _keys!1208 from!1455 Nil!26786)))

(declare-fun lt!550863 () Unit!40120)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!78276 (_ BitVec 64) (_ BitVec 32) List!26789) Unit!40120)

(assert (=> b!1212306 (= lt!550863 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!1208 k0!934 from!1455 Nil!26786))))

(assert (=> b!1212306 false))

(declare-fun b!1212307 () Bool)

(declare-fun res!805285 () Bool)

(declare-fun e!688522 () Bool)

(assert (=> b!1212307 (=> (not res!805285) (not e!688522))))

(assert (=> b!1212307 (= res!805285 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!26786))))

(declare-fun bm!60120 () Bool)

(declare-fun call!60122 () ListLongMap!17949)

(assert (=> bm!60120 (= call!60126 call!60122)))

(declare-fun b!1212308 () Bool)

(declare-fun res!805279 () Bool)

(assert (=> b!1212308 (=> (not res!805279) (not e!688522))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1212308 (= res!805279 (validMask!0 mask!1564))))

(declare-fun b!1212309 () Bool)

(declare-fun arrayContainsKey!0 (array!78276 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1212309 (= e!688524 (arrayContainsKey!0 _keys!1208 k0!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun b!1212310 () Bool)

(declare-fun e!688510 () Bool)

(declare-fun e!688517 () Bool)

(assert (=> b!1212310 (= e!688510 (not e!688517))))

(declare-fun res!805283 () Bool)

(assert (=> b!1212310 (=> res!805283 e!688517)))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1212310 (= res!805283 (bvsgt from!1455 i!673))))

(assert (=> b!1212310 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-fun lt!550866 () Unit!40120)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!78276 (_ BitVec 64) (_ BitVec 32)) Unit!40120)

(assert (=> b!1212310 (= lt!550866 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun bm!60121 () Bool)

(declare-fun c!119598 () Bool)

(declare-fun call!60121 () Unit!40120)

(declare-fun lt!550876 () ListLongMap!17949)

(declare-fun addStillContains!1076 (ListLongMap!17949 (_ BitVec 64) V!46139 (_ BitVec 64)) Unit!40120)

(assert (=> bm!60121 (= call!60121 (addStillContains!1076 lt!550876 (ite (or c!119603 c!119598) #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000) (ite (or c!119603 c!119598) zeroValue!944 minValue!944) k0!934))))

(declare-fun b!1212311 () Bool)

(declare-fun e!688518 () Bool)

(assert (=> b!1212311 (= e!688517 e!688518)))

(declare-fun res!805280 () Bool)

(assert (=> b!1212311 (=> res!805280 e!688518)))

(assert (=> b!1212311 (= res!805280 (not (= from!1455 i!673)))))

(declare-fun lt!550860 () ListLongMap!17949)

(assert (=> b!1212311 (= lt!550860 (getCurrentListMapNoExtraKeys!5395 lt!550856 lt!550869 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun lt!550870 () V!46139)

(assert (=> b!1212311 (= lt!550869 (array!78279 (store (arr!37771 _values!996) i!673 (ValueCellFull!14670 lt!550870)) (size!38308 _values!996)))))

(declare-fun dynLambda!3307 (Int (_ BitVec 64)) V!46139)

(assert (=> b!1212311 (= lt!550870 (dynLambda!3307 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!550862 () ListLongMap!17949)

(assert (=> b!1212311 (= lt!550862 (getCurrentListMapNoExtraKeys!5395 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1212312 () Bool)

(declare-fun call!60125 () Bool)

(assert (=> b!1212312 call!60125))

(declare-fun lt!550858 () Unit!40120)

(declare-fun call!60123 () Unit!40120)

(assert (=> b!1212312 (= lt!550858 call!60123)))

(assert (=> b!1212312 (= e!688521 lt!550858)))

(declare-fun b!1212313 () Bool)

(declare-fun Unit!40123 () Unit!40120)

(assert (=> b!1212313 (= e!688521 Unit!40123)))

(declare-fun b!1212314 () Bool)

(assert (=> b!1212314 (= e!688523 (arrayContainsKey!0 _keys!1208 k0!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun b!1212315 () Bool)

(declare-fun res!805276 () Bool)

(assert (=> b!1212315 (=> (not res!805276) (not e!688522))))

(assert (=> b!1212315 (= res!805276 (and (= (size!38308 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!38307 _keys!1208) (size!38308 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun lt!550872 () ListLongMap!17949)

(declare-fun e!688512 () Bool)

(declare-fun b!1212316 () Bool)

(assert (=> b!1212316 (= e!688512 (= lt!550872 (getCurrentListMapNoExtraKeys!5395 lt!550856 lt!550869 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004)))))

(declare-fun res!805273 () Bool)

(assert (=> start!101130 (=> (not res!805273) (not e!688522))))

(assert (=> start!101130 (= res!805273 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!38307 _keys!1208))))))

(assert (=> start!101130 e!688522))

(assert (=> start!101130 tp_is_empty!30759))

(declare-fun array_inv!28668 (array!78276) Bool)

(assert (=> start!101130 (array_inv!28668 _keys!1208)))

(assert (=> start!101130 true))

(assert (=> start!101130 tp!91185))

(declare-fun e!688520 () Bool)

(declare-fun array_inv!28669 (array!78278) Bool)

(assert (=> start!101130 (and (array_inv!28669 _values!996) e!688520)))

(declare-fun b!1212317 () Bool)

(declare-fun e!688519 () Bool)

(assert (=> b!1212317 (= e!688519 tp_is_empty!30759)))

(declare-fun bm!60122 () Bool)

(assert (=> bm!60122 (= call!60125 call!60120)))

(declare-fun b!1212318 () Bool)

(declare-fun e!688514 () Bool)

(assert (=> b!1212318 (= e!688514 (= call!60127 call!60124))))

(declare-fun b!1212319 () Bool)

(declare-fun mapRes!48010 () Bool)

(assert (=> b!1212319 (= e!688520 (and e!688519 mapRes!48010))))

(declare-fun condMapEmpty!48010 () Bool)

(declare-fun mapDefault!48010 () ValueCell!14670)

(assert (=> b!1212319 (= condMapEmpty!48010 (= (arr!37771 _values!996) ((as const (Array (_ BitVec 32) ValueCell!14670)) mapDefault!48010)))))

(declare-fun b!1212320 () Bool)

(declare-fun +!4017 (ListLongMap!17949 tuple2!19968) ListLongMap!17949)

(assert (=> b!1212320 (contains!7005 (+!4017 lt!550874 (tuple2!19969 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944)) k0!934)))

(declare-fun lt!550867 () Unit!40120)

(assert (=> b!1212320 (= lt!550867 (addStillContains!1076 lt!550874 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944 k0!934))))

(assert (=> b!1212320 call!60120))

(assert (=> b!1212320 (= lt!550874 call!60122)))

(declare-fun lt!550873 () Unit!40120)

(assert (=> b!1212320 (= lt!550873 call!60121)))

(assert (=> b!1212320 (= e!688526 lt!550867)))

(declare-fun b!1212321 () Bool)

(declare-fun res!805281 () Bool)

(assert (=> b!1212321 (=> (not res!805281) (not e!688522))))

(assert (=> b!1212321 (= res!805281 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!38307 _keys!1208))))))

(declare-fun b!1212322 () Bool)

(declare-fun e!688516 () Bool)

(assert (=> b!1212322 (= e!688518 e!688516)))

(declare-fun res!805278 () Bool)

(assert (=> b!1212322 (=> res!805278 e!688516)))

(assert (=> b!1212322 (= res!805278 (not (= (select (arr!37770 _keys!1208) from!1455) k0!934)))))

(assert (=> b!1212322 e!688514))

(declare-fun c!119602 () Bool)

(assert (=> b!1212322 (= c!119602 (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673))))

(declare-fun lt!550861 () Unit!40120)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!1093 (array!78276 array!78278 (_ BitVec 32) (_ BitVec 32) V!46139 V!46139 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!40120)

(assert (=> b!1212322 (= lt!550861 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!1093 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun bm!60123 () Bool)

(assert (=> bm!60123 (= call!60123 call!60121)))

(declare-fun b!1212323 () Bool)

(declare-fun res!805282 () Bool)

(assert (=> b!1212323 (=> (not res!805282) (not e!688510))))

(assert (=> b!1212323 (= res!805282 (arrayNoDuplicates!0 lt!550856 #b00000000000000000000000000000000 Nil!26786))))

(declare-fun b!1212324 () Bool)

(assert (=> b!1212324 (= e!688522 e!688510)))

(declare-fun res!805275 () Bool)

(assert (=> b!1212324 (=> (not res!805275) (not e!688510))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!78276 (_ BitVec 32)) Bool)

(assert (=> b!1212324 (= res!805275 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!550856 mask!1564))))

(assert (=> b!1212324 (= lt!550856 (array!78277 (store (arr!37770 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!38307 _keys!1208)))))

(declare-fun b!1212325 () Bool)

(declare-fun res!805287 () Bool)

(assert (=> b!1212325 (=> (not res!805287) (not e!688522))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1212325 (= res!805287 (validKeyInArray!0 k0!934))))

(declare-fun bm!60124 () Bool)

(assert (=> bm!60124 (= call!60122 (+!4017 lt!550876 (ite (or c!119603 c!119598) (tuple2!19969 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!19969 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944))))))

(declare-fun b!1212326 () Bool)

(assert (=> b!1212326 (= e!688523 (ite (= k0!934 #b0000000000000000000000000000000000000000000000000000000000000000) (not lt!550864) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!1212327 () Bool)

(declare-fun Unit!40124 () Unit!40120)

(assert (=> b!1212327 (= e!688511 Unit!40124)))

(declare-fun b!1212328 () Bool)

(declare-fun res!805286 () Bool)

(assert (=> b!1212328 (=> (not res!805286) (not e!688522))))

(assert (=> b!1212328 (= res!805286 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1212329 () Bool)

(declare-fun res!805284 () Bool)

(assert (=> b!1212329 (=> (not res!805284) (not e!688522))))

(assert (=> b!1212329 (= res!805284 (= (select (arr!37770 _keys!1208) i!673) k0!934))))

(declare-fun mapNonEmpty!48010 () Bool)

(declare-fun tp!91184 () Bool)

(assert (=> mapNonEmpty!48010 (= mapRes!48010 (and tp!91184 e!688525))))

(declare-fun mapKey!48010 () (_ BitVec 32))

(declare-fun mapRest!48010 () (Array (_ BitVec 32) ValueCell!14670))

(declare-fun mapValue!48010 () ValueCell!14670)

(assert (=> mapNonEmpty!48010 (= (arr!37771 _values!996) (store mapRest!48010 mapKey!48010 mapValue!48010))))

(declare-fun b!1212330 () Bool)

(assert (=> b!1212330 (= c!119598 (and (not lt!550864) (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(assert (=> b!1212330 (= e!688526 e!688513)))

(declare-fun b!1212331 () Bool)

(declare-fun -!1886 (ListLongMap!17949 (_ BitVec 64)) ListLongMap!17949)

(assert (=> b!1212331 (= e!688514 (= call!60127 (-!1886 call!60124 k0!934)))))

(declare-fun b!1212332 () Bool)

(declare-fun lt!550859 () Unit!40120)

(assert (=> b!1212332 (= e!688513 lt!550859)))

(assert (=> b!1212332 (= lt!550859 call!60123)))

(assert (=> b!1212332 call!60125))

(declare-fun b!1212333 () Bool)

(assert (=> b!1212333 (= e!688516 (bvslt i!673 (size!38308 _values!996)))))

(assert (=> b!1212333 e!688512))

(declare-fun res!805274 () Bool)

(assert (=> b!1212333 (=> (not res!805274) (not e!688512))))

(assert (=> b!1212333 (= res!805274 (= lt!550872 lt!550876))))

(assert (=> b!1212333 (= lt!550872 (-!1886 lt!550862 k0!934))))

(declare-fun lt!550871 () V!46139)

(assert (=> b!1212333 (= (-!1886 (+!4017 lt!550876 (tuple2!19969 (select (arr!37770 _keys!1208) from!1455) lt!550871)) (select (arr!37770 _keys!1208) from!1455)) lt!550876)))

(declare-fun lt!550868 () Unit!40120)

(declare-fun addThenRemoveForNewKeyIsSame!287 (ListLongMap!17949 (_ BitVec 64) V!46139) Unit!40120)

(assert (=> b!1212333 (= lt!550868 (addThenRemoveForNewKeyIsSame!287 lt!550876 (select (arr!37770 _keys!1208) from!1455) lt!550871))))

(declare-fun get!19295 (ValueCell!14670 V!46139) V!46139)

(assert (=> b!1212333 (= lt!550871 (get!19295 (select (arr!37771 _values!996) from!1455) lt!550870))))

(declare-fun lt!550857 () Unit!40120)

(assert (=> b!1212333 (= lt!550857 e!688511)))

(declare-fun c!119599 () Bool)

(assert (=> b!1212333 (= c!119599 (contains!7005 lt!550876 k0!934))))

(assert (=> b!1212333 (= lt!550876 (getCurrentListMapNoExtraKeys!5395 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun mapIsEmpty!48010 () Bool)

(assert (=> mapIsEmpty!48010 mapRes!48010))

(assert (= (and start!101130 res!805273) b!1212308))

(assert (= (and b!1212308 res!805279) b!1212315))

(assert (= (and b!1212315 res!805276) b!1212328))

(assert (= (and b!1212328 res!805286) b!1212307))

(assert (= (and b!1212307 res!805285) b!1212321))

(assert (= (and b!1212321 res!805281) b!1212325))

(assert (= (and b!1212325 res!805287) b!1212329))

(assert (= (and b!1212329 res!805284) b!1212324))

(assert (= (and b!1212324 res!805275) b!1212323))

(assert (= (and b!1212323 res!805282) b!1212310))

(assert (= (and b!1212310 (not res!805283)) b!1212311))

(assert (= (and b!1212311 (not res!805280)) b!1212322))

(assert (= (and b!1212322 c!119602) b!1212331))

(assert (= (and b!1212322 (not c!119602)) b!1212318))

(assert (= (or b!1212331 b!1212318) bm!60118))

(assert (= (or b!1212331 b!1212318) bm!60117))

(assert (= (and b!1212322 (not res!805278)) b!1212333))

(assert (= (and b!1212333 c!119599) b!1212306))

(assert (= (and b!1212333 (not c!119599)) b!1212327))

(assert (= (and b!1212306 c!119603) b!1212320))

(assert (= (and b!1212306 (not c!119603)) b!1212330))

(assert (= (and b!1212330 c!119598) b!1212332))

(assert (= (and b!1212330 (not c!119598)) b!1212304))

(assert (= (and b!1212304 c!119601) b!1212312))

(assert (= (and b!1212304 (not c!119601)) b!1212313))

(assert (= (or b!1212332 b!1212312) bm!60123))

(assert (= (or b!1212332 b!1212312) bm!60120))

(assert (= (or b!1212332 b!1212312) bm!60122))

(assert (= (or b!1212320 bm!60122) bm!60119))

(assert (= (or b!1212320 bm!60123) bm!60121))

(assert (= (or b!1212320 bm!60120) bm!60124))

(assert (= (and b!1212306 c!119600) b!1212314))

(assert (= (and b!1212306 (not c!119600)) b!1212326))

(assert (= (and b!1212306 res!805277) b!1212309))

(assert (= (and b!1212333 res!805274) b!1212316))

(assert (= (and b!1212319 condMapEmpty!48010) mapIsEmpty!48010))

(assert (= (and b!1212319 (not condMapEmpty!48010)) mapNonEmpty!48010))

(get-info :version)

(assert (= (and mapNonEmpty!48010 ((_ is ValueCellFull!14670) mapValue!48010)) b!1212305))

(assert (= (and b!1212319 ((_ is ValueCellFull!14670) mapDefault!48010)) b!1212317))

(assert (= start!101130 b!1212319))

(declare-fun b_lambda!21703 () Bool)

(assert (=> (not b_lambda!21703) (not b!1212311)))

(declare-fun t!39829 () Bool)

(declare-fun tb!10863 () Bool)

(assert (=> (and start!101130 (= defaultEntry!1004 defaultEntry!1004) t!39829) tb!10863))

(declare-fun result!22313 () Bool)

(assert (=> tb!10863 (= result!22313 tp_is_empty!30759)))

(assert (=> b!1212311 t!39829))

(declare-fun b_and!43221 () Bool)

(assert (= b_and!43219 (and (=> t!39829 result!22313) b_and!43221)))

(declare-fun m!1117685 () Bool)

(assert (=> b!1212329 m!1117685))

(declare-fun m!1117687 () Bool)

(assert (=> b!1212310 m!1117687))

(declare-fun m!1117689 () Bool)

(assert (=> b!1212310 m!1117689))

(declare-fun m!1117691 () Bool)

(assert (=> bm!60121 m!1117691))

(declare-fun m!1117693 () Bool)

(assert (=> b!1212325 m!1117693))

(declare-fun m!1117695 () Bool)

(assert (=> b!1212306 m!1117695))

(declare-fun m!1117697 () Bool)

(assert (=> b!1212306 m!1117697))

(declare-fun m!1117699 () Bool)

(assert (=> b!1212306 m!1117699))

(declare-fun m!1117701 () Bool)

(assert (=> b!1212306 m!1117701))

(declare-fun m!1117703 () Bool)

(assert (=> b!1212308 m!1117703))

(declare-fun m!1117705 () Bool)

(assert (=> b!1212331 m!1117705))

(declare-fun m!1117707 () Bool)

(assert (=> b!1212322 m!1117707))

(declare-fun m!1117709 () Bool)

(assert (=> b!1212322 m!1117709))

(declare-fun m!1117711 () Bool)

(assert (=> b!1212323 m!1117711))

(declare-fun m!1117713 () Bool)

(assert (=> b!1212316 m!1117713))

(declare-fun m!1117715 () Bool)

(assert (=> mapNonEmpty!48010 m!1117715))

(declare-fun m!1117717 () Bool)

(assert (=> bm!60119 m!1117717))

(declare-fun m!1117719 () Bool)

(assert (=> b!1212320 m!1117719))

(assert (=> b!1212320 m!1117719))

(declare-fun m!1117721 () Bool)

(assert (=> b!1212320 m!1117721))

(declare-fun m!1117723 () Bool)

(assert (=> b!1212320 m!1117723))

(declare-fun m!1117725 () Bool)

(assert (=> b!1212314 m!1117725))

(declare-fun m!1117727 () Bool)

(assert (=> bm!60124 m!1117727))

(declare-fun m!1117729 () Bool)

(assert (=> b!1212333 m!1117729))

(declare-fun m!1117731 () Bool)

(assert (=> b!1212333 m!1117731))

(declare-fun m!1117733 () Bool)

(assert (=> b!1212333 m!1117733))

(assert (=> b!1212333 m!1117707))

(declare-fun m!1117735 () Bool)

(assert (=> b!1212333 m!1117735))

(declare-fun m!1117737 () Bool)

(assert (=> b!1212333 m!1117737))

(assert (=> b!1212333 m!1117731))

(assert (=> b!1212333 m!1117707))

(declare-fun m!1117739 () Bool)

(assert (=> b!1212333 m!1117739))

(declare-fun m!1117741 () Bool)

(assert (=> b!1212333 m!1117741))

(assert (=> b!1212333 m!1117733))

(declare-fun m!1117743 () Bool)

(assert (=> b!1212333 m!1117743))

(assert (=> b!1212333 m!1117707))

(assert (=> bm!60118 m!1117713))

(declare-fun m!1117745 () Bool)

(assert (=> b!1212324 m!1117745))

(declare-fun m!1117747 () Bool)

(assert (=> b!1212324 m!1117747))

(declare-fun m!1117749 () Bool)

(assert (=> b!1212307 m!1117749))

(assert (=> bm!60117 m!1117729))

(declare-fun m!1117751 () Bool)

(assert (=> b!1212328 m!1117751))

(assert (=> b!1212309 m!1117725))

(declare-fun m!1117753 () Bool)

(assert (=> start!101130 m!1117753))

(declare-fun m!1117755 () Bool)

(assert (=> start!101130 m!1117755))

(declare-fun m!1117757 () Bool)

(assert (=> b!1212311 m!1117757))

(declare-fun m!1117759 () Bool)

(assert (=> b!1212311 m!1117759))

(declare-fun m!1117761 () Bool)

(assert (=> b!1212311 m!1117761))

(declare-fun m!1117763 () Bool)

(assert (=> b!1212311 m!1117763))

(check-sat (not b!1212325) (not b!1212316) (not b!1212331) (not bm!60119) (not bm!60117) (not b!1212314) (not b!1212320) (not b!1212333) (not bm!60121) (not b!1212309) (not b_next!26055) (not bm!60118) (not b!1212328) (not b!1212306) (not b!1212307) (not b!1212324) (not b!1212311) (not b!1212322) (not bm!60124) b_and!43221 tp_is_empty!30759 (not start!101130) (not b!1212310) (not b!1212323) (not b!1212308) (not mapNonEmpty!48010) (not b_lambda!21703))
(check-sat b_and!43221 (not b_next!26055))
