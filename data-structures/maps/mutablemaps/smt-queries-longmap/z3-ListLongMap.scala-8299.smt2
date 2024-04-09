; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!101180 () Bool)

(assert start!101180)

(declare-fun b_free!26067 () Bool)

(declare-fun b_next!26067 () Bool)

(assert (=> start!101180 (= b_free!26067 (not b_next!26067))))

(declare-fun tp!91223 () Bool)

(declare-fun b_and!43261 () Bool)

(assert (=> start!101180 (= tp!91223 b_and!43261)))

(declare-datatypes ((V!46155 0))(
  ( (V!46156 (val!15442 Int)) )
))
(declare-fun zeroValue!944 () V!46155)

(declare-fun bm!60282 () Bool)

(declare-datatypes ((tuple2!19978 0))(
  ( (tuple2!19979 (_1!9999 (_ BitVec 64)) (_2!9999 V!46155)) )
))
(declare-datatypes ((List!26798 0))(
  ( (Nil!26795) (Cons!26794 (h!28003 tuple2!19978) (t!39852 List!26798)) )
))
(declare-datatypes ((ListLongMap!17959 0))(
  ( (ListLongMap!17960 (toList!8995 List!26798)) )
))
(declare-fun lt!551383 () ListLongMap!17959)

(declare-fun call!60292 () ListLongMap!17959)

(declare-fun c!119756 () Bool)

(declare-fun c!119758 () Bool)

(declare-fun minValue!944 () V!46155)

(declare-fun +!4021 (ListLongMap!17959 tuple2!19978) ListLongMap!17959)

(assert (=> bm!60282 (= call!60292 (+!4021 lt!551383 (ite (or c!119758 c!119756) (tuple2!19979 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!19979 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944))))))

(declare-fun b!1213032 () Bool)

(declare-datatypes ((Unit!40149 0))(
  ( (Unit!40150) )
))
(declare-fun e!688947 () Unit!40149)

(declare-fun Unit!40151 () Unit!40149)

(assert (=> b!1213032 (= e!688947 Unit!40151)))

(declare-fun b!1213033 () Bool)

(declare-fun res!805630 () Bool)

(declare-fun e!688945 () Bool)

(assert (=> b!1213033 (=> (not res!805630) (not e!688945))))

(declare-fun i!673 () (_ BitVec 32))

(declare-datatypes ((array!78302 0))(
  ( (array!78303 (arr!37782 (Array (_ BitVec 32) (_ BitVec 64))) (size!38319 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!78302)

(assert (=> b!1213033 (= res!805630 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!38319 _keys!1208))))))

(declare-fun bm!60283 () Bool)

(declare-fun call!60285 () Bool)

(declare-fun call!60287 () Bool)

(assert (=> bm!60283 (= call!60285 call!60287)))

(declare-fun b!1213034 () Bool)

(declare-fun res!805624 () Bool)

(assert (=> b!1213034 (=> (not res!805624) (not e!688945))))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!78302 (_ BitVec 32)) Bool)

(assert (=> b!1213034 (= res!805624 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1213035 () Bool)

(declare-fun e!688939 () Bool)

(assert (=> b!1213035 (= e!688939 true)))

(declare-fun e!688941 () Bool)

(assert (=> b!1213035 e!688941))

(declare-fun res!805627 () Bool)

(assert (=> b!1213035 (=> (not res!805627) (not e!688941))))

(declare-fun lt!551374 () ListLongMap!17959)

(assert (=> b!1213035 (= res!805627 (= lt!551374 lt!551383))))

(declare-fun lt!551377 () ListLongMap!17959)

(declare-fun k0!934 () (_ BitVec 64))

(declare-fun -!1891 (ListLongMap!17959 (_ BitVec 64)) ListLongMap!17959)

(assert (=> b!1213035 (= lt!551374 (-!1891 lt!551377 k0!934))))

(declare-fun lt!551376 () V!46155)

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> b!1213035 (= (-!1891 (+!4021 lt!551383 (tuple2!19979 (select (arr!37782 _keys!1208) from!1455) lt!551376)) (select (arr!37782 _keys!1208) from!1455)) lt!551383)))

(declare-fun lt!551373 () Unit!40149)

(declare-fun addThenRemoveForNewKeyIsSame!291 (ListLongMap!17959 (_ BitVec 64) V!46155) Unit!40149)

(assert (=> b!1213035 (= lt!551373 (addThenRemoveForNewKeyIsSame!291 lt!551383 (select (arr!37782 _keys!1208) from!1455) lt!551376))))

(declare-datatypes ((ValueCell!14676 0))(
  ( (ValueCellFull!14676 (v!18096 V!46155)) (EmptyCell!14676) )
))
(declare-datatypes ((array!78304 0))(
  ( (array!78305 (arr!37783 (Array (_ BitVec 32) ValueCell!14676)) (size!38320 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!78304)

(declare-fun lt!551385 () V!46155)

(declare-fun get!19305 (ValueCell!14676 V!46155) V!46155)

(assert (=> b!1213035 (= lt!551376 (get!19305 (select (arr!37783 _values!996) from!1455) lt!551385))))

(declare-fun lt!551386 () Unit!40149)

(declare-fun e!688942 () Unit!40149)

(assert (=> b!1213035 (= lt!551386 e!688942)))

(declare-fun c!119755 () Bool)

(declare-fun contains!7011 (ListLongMap!17959 (_ BitVec 64)) Bool)

(assert (=> b!1213035 (= c!119755 (contains!7011 lt!551383 k0!934))))

(declare-fun defaultEntry!1004 () Int)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun getCurrentListMapNoExtraKeys!5400 (array!78302 array!78304 (_ BitVec 32) (_ BitVec 32) V!46155 V!46155 (_ BitVec 32) Int) ListLongMap!17959)

(assert (=> b!1213035 (= lt!551383 (getCurrentListMapNoExtraKeys!5400 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun bm!60284 () Bool)

(declare-fun call!60289 () Unit!40149)

(declare-fun addStillContains!1079 (ListLongMap!17959 (_ BitVec 64) V!46155 (_ BitVec 64)) Unit!40149)

(assert (=> bm!60284 (= call!60289 (addStillContains!1079 lt!551383 (ite (or c!119758 c!119756) #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000) (ite (or c!119758 c!119756) zeroValue!944 minValue!944) k0!934))))

(declare-fun b!1213036 () Bool)

(declare-fun e!688934 () Bool)

(assert (=> b!1213036 (= e!688934 e!688939)))

(declare-fun res!805623 () Bool)

(assert (=> b!1213036 (=> res!805623 e!688939)))

(assert (=> b!1213036 (= res!805623 (not (= (select (arr!37782 _keys!1208) from!1455) k0!934)))))

(declare-fun e!688938 () Bool)

(assert (=> b!1213036 e!688938))

(declare-fun c!119753 () Bool)

(assert (=> b!1213036 (= c!119753 (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673))))

(declare-fun lt!551375 () Unit!40149)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!1096 (array!78302 array!78304 (_ BitVec 32) (_ BitVec 32) V!46155 V!46155 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!40149)

(assert (=> b!1213036 (= lt!551375 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!1096 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun res!805619 () Bool)

(assert (=> start!101180 (=> (not res!805619) (not e!688945))))

(assert (=> start!101180 (= res!805619 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!38319 _keys!1208))))))

(assert (=> start!101180 e!688945))

(declare-fun tp_is_empty!30771 () Bool)

(assert (=> start!101180 tp_is_empty!30771))

(declare-fun array_inv!28678 (array!78302) Bool)

(assert (=> start!101180 (array_inv!28678 _keys!1208)))

(assert (=> start!101180 true))

(assert (=> start!101180 tp!91223))

(declare-fun e!688943 () Bool)

(declare-fun array_inv!28679 (array!78304) Bool)

(assert (=> start!101180 (and (array_inv!28679 _values!996) e!688943)))

(declare-fun b!1213037 () Bool)

(declare-fun lt!551378 () ListLongMap!17959)

(assert (=> b!1213037 (contains!7011 (+!4021 lt!551378 (tuple2!19979 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944)) k0!934)))

(declare-fun lt!551390 () Unit!40149)

(assert (=> b!1213037 (= lt!551390 (addStillContains!1079 lt!551378 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944 k0!934))))

(assert (=> b!1213037 call!60287))

(assert (=> b!1213037 (= lt!551378 call!60292)))

(declare-fun lt!551388 () Unit!40149)

(assert (=> b!1213037 (= lt!551388 call!60289)))

(declare-fun e!688937 () Unit!40149)

(assert (=> b!1213037 (= e!688937 lt!551390)))

(declare-fun b!1213038 () Bool)

(declare-fun lt!551387 () Bool)

(assert (=> b!1213038 (= c!119756 (and (not lt!551387) (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun e!688933 () Unit!40149)

(assert (=> b!1213038 (= e!688937 e!688933)))

(declare-fun bm!60285 () Bool)

(declare-fun call!60288 () ListLongMap!17959)

(assert (=> bm!60285 (= call!60288 call!60292)))

(declare-fun b!1213039 () Bool)

(declare-fun e!688932 () Bool)

(assert (=> b!1213039 (= e!688932 tp_is_empty!30771)))

(declare-fun b!1213040 () Bool)

(declare-fun e!688936 () Bool)

(declare-fun e!688935 () Bool)

(assert (=> b!1213040 (= e!688936 (not e!688935))))

(declare-fun res!805616 () Bool)

(assert (=> b!1213040 (=> res!805616 e!688935)))

(assert (=> b!1213040 (= res!805616 (bvsgt from!1455 i!673))))

(declare-fun arrayContainsKey!0 (array!78302 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1213040 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-fun lt!551379 () Unit!40149)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!78302 (_ BitVec 64) (_ BitVec 32)) Unit!40149)

(assert (=> b!1213040 (= lt!551379 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1213041 () Bool)

(declare-fun res!805618 () Bool)

(assert (=> b!1213041 (=> (not res!805618) (not e!688936))))

(declare-fun lt!551381 () array!78302)

(declare-datatypes ((List!26799 0))(
  ( (Nil!26796) (Cons!26795 (h!28004 (_ BitVec 64)) (t!39853 List!26799)) )
))
(declare-fun arrayNoDuplicates!0 (array!78302 (_ BitVec 32) List!26799) Bool)

(assert (=> b!1213041 (= res!805618 (arrayNoDuplicates!0 lt!551381 #b00000000000000000000000000000000 Nil!26796))))

(declare-fun b!1213042 () Bool)

(declare-fun lt!551380 () Unit!40149)

(assert (=> b!1213042 (= e!688933 lt!551380)))

(declare-fun call!60286 () Unit!40149)

(assert (=> b!1213042 (= lt!551380 call!60286)))

(assert (=> b!1213042 call!60285))

(declare-fun call!60291 () ListLongMap!17959)

(declare-fun bm!60286 () Bool)

(assert (=> bm!60286 (= call!60291 (getCurrentListMapNoExtraKeys!5400 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1213043 () Bool)

(declare-fun mapRes!48031 () Bool)

(assert (=> b!1213043 (= e!688943 (and e!688932 mapRes!48031))))

(declare-fun condMapEmpty!48031 () Bool)

(declare-fun mapDefault!48031 () ValueCell!14676)

(assert (=> b!1213043 (= condMapEmpty!48031 (= (arr!37783 _values!996) ((as const (Array (_ BitVec 32) ValueCell!14676)) mapDefault!48031)))))

(declare-fun mapIsEmpty!48031 () Bool)

(assert (=> mapIsEmpty!48031 mapRes!48031))

(declare-fun mapNonEmpty!48031 () Bool)

(declare-fun tp!91224 () Bool)

(declare-fun e!688940 () Bool)

(assert (=> mapNonEmpty!48031 (= mapRes!48031 (and tp!91224 e!688940))))

(declare-fun mapRest!48031 () (Array (_ BitVec 32) ValueCell!14676))

(declare-fun mapKey!48031 () (_ BitVec 32))

(declare-fun mapValue!48031 () ValueCell!14676)

(assert (=> mapNonEmpty!48031 (= (arr!37783 _values!996) (store mapRest!48031 mapKey!48031 mapValue!48031))))

(declare-fun b!1213044 () Bool)

(declare-fun lt!551393 () array!78304)

(assert (=> b!1213044 (= e!688941 (= lt!551374 (getCurrentListMapNoExtraKeys!5400 lt!551381 lt!551393 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004)))))

(declare-fun b!1213045 () Bool)

(declare-fun call!60290 () ListLongMap!17959)

(assert (=> b!1213045 (= e!688938 (= call!60290 call!60291))))

(declare-fun b!1213046 () Bool)

(declare-fun Unit!40152 () Unit!40149)

(assert (=> b!1213046 (= e!688942 Unit!40152)))

(assert (=> b!1213046 (= lt!551387 (= (bvand extraKeys!923 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(assert (=> b!1213046 (= c!119758 (and (not lt!551387) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun lt!551391 () Unit!40149)

(assert (=> b!1213046 (= lt!551391 e!688937)))

(declare-fun lt!551392 () Unit!40149)

(declare-fun lemmaListMapContainsThenArrayContainsFrom!616 (array!78302 array!78304 (_ BitVec 32) (_ BitVec 32) V!46155 V!46155 (_ BitVec 64) (_ BitVec 32) Int) Unit!40149)

(assert (=> b!1213046 (= lt!551392 (lemmaListMapContainsThenArrayContainsFrom!616 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun c!119754 () Bool)

(assert (=> b!1213046 (= c!119754 (and (not (= k0!934 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!934 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun res!805625 () Bool)

(declare-fun e!688931 () Bool)

(assert (=> b!1213046 (= res!805625 e!688931)))

(declare-fun e!688944 () Bool)

(assert (=> b!1213046 (=> (not res!805625) (not e!688944))))

(assert (=> b!1213046 e!688944))

(declare-fun lt!551389 () Unit!40149)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!78302 (_ BitVec 32) (_ BitVec 32)) Unit!40149)

(assert (=> b!1213046 (= lt!551389 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1208 #b00000000000000000000000000000000 from!1455))))

(assert (=> b!1213046 (arrayNoDuplicates!0 _keys!1208 from!1455 Nil!26796)))

(declare-fun lt!551372 () Unit!40149)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!78302 (_ BitVec 64) (_ BitVec 32) List!26799) Unit!40149)

(assert (=> b!1213046 (= lt!551372 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!1208 k0!934 from!1455 Nil!26796))))

(assert (=> b!1213046 false))

(declare-fun b!1213047 () Bool)

(declare-fun res!805621 () Bool)

(assert (=> b!1213047 (=> (not res!805621) (not e!688945))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1213047 (= res!805621 (validKeyInArray!0 k0!934))))

(declare-fun bm!60287 () Bool)

(assert (=> bm!60287 (= call!60287 (contains!7011 (ite c!119758 lt!551378 call!60288) k0!934))))

(declare-fun b!1213048 () Bool)

(assert (=> b!1213048 (= e!688935 e!688934)))

(declare-fun res!805620 () Bool)

(assert (=> b!1213048 (=> res!805620 e!688934)))

(assert (=> b!1213048 (= res!805620 (not (= from!1455 i!673)))))

(declare-fun lt!551384 () ListLongMap!17959)

(assert (=> b!1213048 (= lt!551384 (getCurrentListMapNoExtraKeys!5400 lt!551381 lt!551393 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(assert (=> b!1213048 (= lt!551393 (array!78305 (store (arr!37783 _values!996) i!673 (ValueCellFull!14676 lt!551385)) (size!38320 _values!996)))))

(declare-fun dynLambda!3312 (Int (_ BitVec 64)) V!46155)

(assert (=> b!1213048 (= lt!551385 (dynLambda!3312 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1213048 (= lt!551377 (getCurrentListMapNoExtraKeys!5400 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1213049 () Bool)

(assert (=> b!1213049 (= e!688931 (ite (= k0!934 #b0000000000000000000000000000000000000000000000000000000000000000) (not lt!551387) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun bm!60288 () Bool)

(assert (=> bm!60288 (= call!60290 (getCurrentListMapNoExtraKeys!5400 lt!551381 lt!551393 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1213050 () Bool)

(assert (=> b!1213050 (= e!688940 tp_is_empty!30771)))

(declare-fun b!1213051 () Bool)

(assert (=> b!1213051 (= e!688944 (arrayContainsKey!0 _keys!1208 k0!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun b!1213052 () Bool)

(declare-fun res!805628 () Bool)

(assert (=> b!1213052 (=> (not res!805628) (not e!688945))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1213052 (= res!805628 (validMask!0 mask!1564))))

(declare-fun b!1213053 () Bool)

(declare-fun res!805617 () Bool)

(assert (=> b!1213053 (=> (not res!805617) (not e!688945))))

(assert (=> b!1213053 (= res!805617 (and (= (size!38320 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!38319 _keys!1208) (size!38320 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1213054 () Bool)

(assert (=> b!1213054 (= e!688938 (= call!60290 (-!1891 call!60291 k0!934)))))

(declare-fun bm!60289 () Bool)

(assert (=> bm!60289 (= call!60286 call!60289)))

(declare-fun b!1213055 () Bool)

(assert (=> b!1213055 call!60285))

(declare-fun lt!551382 () Unit!40149)

(assert (=> b!1213055 (= lt!551382 call!60286)))

(assert (=> b!1213055 (= e!688947 lt!551382)))

(declare-fun b!1213056 () Bool)

(declare-fun Unit!40153 () Unit!40149)

(assert (=> b!1213056 (= e!688942 Unit!40153)))

(declare-fun b!1213057 () Bool)

(assert (=> b!1213057 (= e!688945 e!688936)))

(declare-fun res!805629 () Bool)

(assert (=> b!1213057 (=> (not res!805629) (not e!688936))))

(assert (=> b!1213057 (= res!805629 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!551381 mask!1564))))

(assert (=> b!1213057 (= lt!551381 (array!78303 (store (arr!37782 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!38319 _keys!1208)))))

(declare-fun b!1213058 () Bool)

(assert (=> b!1213058 (= e!688933 e!688947)))

(declare-fun c!119757 () Bool)

(assert (=> b!1213058 (= c!119757 (and (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!551387))))

(declare-fun b!1213059 () Bool)

(declare-fun res!805622 () Bool)

(assert (=> b!1213059 (=> (not res!805622) (not e!688945))))

(assert (=> b!1213059 (= res!805622 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!26796))))

(declare-fun b!1213060 () Bool)

(assert (=> b!1213060 (= e!688931 (arrayContainsKey!0 _keys!1208 k0!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun b!1213061 () Bool)

(declare-fun res!805626 () Bool)

(assert (=> b!1213061 (=> (not res!805626) (not e!688945))))

(assert (=> b!1213061 (= res!805626 (= (select (arr!37782 _keys!1208) i!673) k0!934))))

(assert (= (and start!101180 res!805619) b!1213052))

(assert (= (and b!1213052 res!805628) b!1213053))

(assert (= (and b!1213053 res!805617) b!1213034))

(assert (= (and b!1213034 res!805624) b!1213059))

(assert (= (and b!1213059 res!805622) b!1213033))

(assert (= (and b!1213033 res!805630) b!1213047))

(assert (= (and b!1213047 res!805621) b!1213061))

(assert (= (and b!1213061 res!805626) b!1213057))

(assert (= (and b!1213057 res!805629) b!1213041))

(assert (= (and b!1213041 res!805618) b!1213040))

(assert (= (and b!1213040 (not res!805616)) b!1213048))

(assert (= (and b!1213048 (not res!805620)) b!1213036))

(assert (= (and b!1213036 c!119753) b!1213054))

(assert (= (and b!1213036 (not c!119753)) b!1213045))

(assert (= (or b!1213054 b!1213045) bm!60288))

(assert (= (or b!1213054 b!1213045) bm!60286))

(assert (= (and b!1213036 (not res!805623)) b!1213035))

(assert (= (and b!1213035 c!119755) b!1213046))

(assert (= (and b!1213035 (not c!119755)) b!1213056))

(assert (= (and b!1213046 c!119758) b!1213037))

(assert (= (and b!1213046 (not c!119758)) b!1213038))

(assert (= (and b!1213038 c!119756) b!1213042))

(assert (= (and b!1213038 (not c!119756)) b!1213058))

(assert (= (and b!1213058 c!119757) b!1213055))

(assert (= (and b!1213058 (not c!119757)) b!1213032))

(assert (= (or b!1213042 b!1213055) bm!60289))

(assert (= (or b!1213042 b!1213055) bm!60285))

(assert (= (or b!1213042 b!1213055) bm!60283))

(assert (= (or b!1213037 bm!60283) bm!60287))

(assert (= (or b!1213037 bm!60289) bm!60284))

(assert (= (or b!1213037 bm!60285) bm!60282))

(assert (= (and b!1213046 c!119754) b!1213060))

(assert (= (and b!1213046 (not c!119754)) b!1213049))

(assert (= (and b!1213046 res!805625) b!1213051))

(assert (= (and b!1213035 res!805627) b!1213044))

(assert (= (and b!1213043 condMapEmpty!48031) mapIsEmpty!48031))

(assert (= (and b!1213043 (not condMapEmpty!48031)) mapNonEmpty!48031))

(get-info :version)

(assert (= (and mapNonEmpty!48031 ((_ is ValueCellFull!14676) mapValue!48031)) b!1213050))

(assert (= (and b!1213043 ((_ is ValueCellFull!14676) mapDefault!48031)) b!1213039))

(assert (= start!101180 b!1213043))

(declare-fun b_lambda!21753 () Bool)

(assert (=> (not b_lambda!21753) (not b!1213048)))

(declare-fun t!39851 () Bool)

(declare-fun tb!10875 () Bool)

(assert (=> (and start!101180 (= defaultEntry!1004 defaultEntry!1004) t!39851) tb!10875))

(declare-fun result!22339 () Bool)

(assert (=> tb!10875 (= result!22339 tp_is_empty!30771)))

(assert (=> b!1213048 t!39851))

(declare-fun b_and!43263 () Bool)

(assert (= b_and!43261 (and (=> t!39851 result!22339) b_and!43263)))

(declare-fun m!1118425 () Bool)

(assert (=> b!1213040 m!1118425))

(declare-fun m!1118427 () Bool)

(assert (=> b!1213040 m!1118427))

(declare-fun m!1118429 () Bool)

(assert (=> b!1213061 m!1118429))

(declare-fun m!1118431 () Bool)

(assert (=> start!101180 m!1118431))

(declare-fun m!1118433 () Bool)

(assert (=> start!101180 m!1118433))

(declare-fun m!1118435 () Bool)

(assert (=> b!1213044 m!1118435))

(declare-fun m!1118437 () Bool)

(assert (=> b!1213052 m!1118437))

(declare-fun m!1118439 () Bool)

(assert (=> bm!60286 m!1118439))

(declare-fun m!1118441 () Bool)

(assert (=> b!1213057 m!1118441))

(declare-fun m!1118443 () Bool)

(assert (=> b!1213057 m!1118443))

(declare-fun m!1118445 () Bool)

(assert (=> bm!60282 m!1118445))

(declare-fun m!1118447 () Bool)

(assert (=> b!1213046 m!1118447))

(declare-fun m!1118449 () Bool)

(assert (=> b!1213046 m!1118449))

(declare-fun m!1118451 () Bool)

(assert (=> b!1213046 m!1118451))

(declare-fun m!1118453 () Bool)

(assert (=> b!1213046 m!1118453))

(declare-fun m!1118455 () Bool)

(assert (=> b!1213041 m!1118455))

(declare-fun m!1118457 () Bool)

(assert (=> b!1213054 m!1118457))

(declare-fun m!1118459 () Bool)

(assert (=> bm!60287 m!1118459))

(declare-fun m!1118461 () Bool)

(assert (=> b!1213060 m!1118461))

(declare-fun m!1118463 () Bool)

(assert (=> b!1213047 m!1118463))

(declare-fun m!1118465 () Bool)

(assert (=> b!1213059 m!1118465))

(declare-fun m!1118467 () Bool)

(assert (=> b!1213034 m!1118467))

(declare-fun m!1118469 () Bool)

(assert (=> mapNonEmpty!48031 m!1118469))

(assert (=> b!1213035 m!1118439))

(declare-fun m!1118471 () Bool)

(assert (=> b!1213035 m!1118471))

(assert (=> b!1213035 m!1118471))

(declare-fun m!1118473 () Bool)

(assert (=> b!1213035 m!1118473))

(declare-fun m!1118475 () Bool)

(assert (=> b!1213035 m!1118475))

(declare-fun m!1118477 () Bool)

(assert (=> b!1213035 m!1118477))

(declare-fun m!1118479 () Bool)

(assert (=> b!1213035 m!1118479))

(declare-fun m!1118481 () Bool)

(assert (=> b!1213035 m!1118481))

(declare-fun m!1118483 () Bool)

(assert (=> b!1213035 m!1118483))

(assert (=> b!1213035 m!1118479))

(declare-fun m!1118485 () Bool)

(assert (=> b!1213035 m!1118485))

(assert (=> b!1213035 m!1118479))

(assert (=> b!1213035 m!1118483))

(assert (=> b!1213051 m!1118461))

(declare-fun m!1118487 () Bool)

(assert (=> bm!60284 m!1118487))

(declare-fun m!1118489 () Bool)

(assert (=> b!1213048 m!1118489))

(declare-fun m!1118491 () Bool)

(assert (=> b!1213048 m!1118491))

(declare-fun m!1118493 () Bool)

(assert (=> b!1213048 m!1118493))

(declare-fun m!1118495 () Bool)

(assert (=> b!1213048 m!1118495))

(assert (=> b!1213036 m!1118479))

(declare-fun m!1118497 () Bool)

(assert (=> b!1213036 m!1118497))

(declare-fun m!1118499 () Bool)

(assert (=> b!1213037 m!1118499))

(assert (=> b!1213037 m!1118499))

(declare-fun m!1118501 () Bool)

(assert (=> b!1213037 m!1118501))

(declare-fun m!1118503 () Bool)

(assert (=> b!1213037 m!1118503))

(assert (=> bm!60288 m!1118435))

(check-sat (not b!1213048) (not b!1213044) (not b!1213051) (not b_lambda!21753) b_and!43263 (not b!1213052) (not b_next!26067) (not start!101180) (not b!1213040) tp_is_empty!30771 (not bm!60287) (not b!1213046) (not b!1213036) (not b!1213037) (not bm!60282) (not b!1213035) (not b!1213047) (not bm!60284) (not b!1213034) (not b!1213060) (not b!1213057) (not mapNonEmpty!48031) (not b!1213041) (not b!1213054) (not bm!60286) (not b!1213059) (not bm!60288))
(check-sat b_and!43263 (not b_next!26067))
