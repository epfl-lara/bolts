; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!101122 () Bool)

(assert start!101122)

(declare-fun b_free!26047 () Bool)

(declare-fun b_next!26047 () Bool)

(assert (=> start!101122 (= b_free!26047 (not b_next!26047))))

(declare-fun tp!91161 () Bool)

(declare-fun b_and!43203 () Bool)

(assert (=> start!101122 (= tp!91161 b_and!43203)))

(declare-datatypes ((V!46129 0))(
  ( (V!46130 (val!15432 Int)) )
))
(declare-fun zeroValue!944 () V!46129)

(declare-datatypes ((Unit!40106 0))(
  ( (Unit!40107) )
))
(declare-fun call!60028 () Unit!40106)

(declare-datatypes ((tuple2!19960 0))(
  ( (tuple2!19961 (_1!9990 (_ BitVec 64)) (_2!9990 V!46129)) )
))
(declare-datatypes ((List!26780 0))(
  ( (Nil!26777) (Cons!26776 (h!27985 tuple2!19960) (t!39814 List!26780)) )
))
(declare-datatypes ((ListLongMap!17941 0))(
  ( (ListLongMap!17942 (toList!8986 List!26780)) )
))
(declare-fun lt!550597 () ListLongMap!17941)

(declare-fun lt!550593 () ListLongMap!17941)

(declare-fun c!119529 () Bool)

(declare-fun bm!60021 () Bool)

(declare-fun minValue!944 () V!46129)

(declare-fun k!934 () (_ BitVec 64))

(declare-fun c!119527 () Bool)

(declare-fun addStillContains!1073 (ListLongMap!17941 (_ BitVec 64) V!46129 (_ BitVec 64)) Unit!40106)

(assert (=> bm!60021 (= call!60028 (addStillContains!1073 (ite c!119527 lt!550593 lt!550597) (ite c!119527 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!119529 #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000)) (ite c!119527 minValue!944 (ite c!119529 zeroValue!944 minValue!944)) k!934))))

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun b!1211936 () Bool)

(declare-fun lt!550602 () Bool)

(declare-fun e!688309 () Bool)

(assert (=> b!1211936 (= e!688309 (ite (= k!934 #b0000000000000000000000000000000000000000000000000000000000000000) (not lt!550602) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!1211937 () Bool)

(declare-fun call!60029 () Bool)

(assert (=> b!1211937 call!60029))

(declare-fun lt!550610 () Unit!40106)

(declare-fun call!60031 () Unit!40106)

(assert (=> b!1211937 (= lt!550610 call!60031)))

(declare-fun e!688318 () Unit!40106)

(assert (=> b!1211937 (= e!688318 lt!550610)))

(declare-fun mapIsEmpty!47998 () Bool)

(declare-fun mapRes!47998 () Bool)

(assert (=> mapIsEmpty!47998 mapRes!47998))

(declare-fun b!1211938 () Bool)

(declare-fun res!805106 () Bool)

(declare-fun e!688320 () Bool)

(assert (=> b!1211938 (=> (not res!805106) (not e!688320))))

(declare-datatypes ((array!78260 0))(
  ( (array!78261 (arr!37762 (Array (_ BitVec 32) (_ BitVec 64))) (size!38299 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!78260)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-datatypes ((ValueCell!14666 0))(
  ( (ValueCellFull!14666 (v!18085 V!46129)) (EmptyCell!14666) )
))
(declare-datatypes ((array!78262 0))(
  ( (array!78263 (arr!37763 (Array (_ BitVec 32) ValueCell!14666)) (size!38300 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!78262)

(assert (=> b!1211938 (= res!805106 (and (= (size!38300 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!38299 _keys!1208) (size!38300 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1211940 () Bool)

(declare-fun e!688316 () Bool)

(declare-fun e!688315 () Bool)

(assert (=> b!1211940 (= e!688316 (not e!688315))))

(declare-fun res!805099 () Bool)

(assert (=> b!1211940 (=> res!805099 e!688315)))

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1211940 (= res!805099 (bvsgt from!1455 i!673))))

(declare-fun arrayContainsKey!0 (array!78260 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1211940 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-fun lt!550605 () Unit!40106)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!78260 (_ BitVec 64) (_ BitVec 32)) Unit!40106)

(assert (=> b!1211940 (= lt!550605 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun b!1211941 () Bool)

(declare-fun res!805101 () Bool)

(assert (=> b!1211941 (=> (not res!805101) (not e!688320))))

(assert (=> b!1211941 (= res!805101 (= (select (arr!37762 _keys!1208) i!673) k!934))))

(declare-fun b!1211942 () Bool)

(declare-fun e!688317 () Bool)

(assert (=> b!1211942 (= e!688317 true)))

(declare-fun e!688319 () Bool)

(assert (=> b!1211942 e!688319))

(declare-fun res!805093 () Bool)

(assert (=> b!1211942 (=> (not res!805093) (not e!688319))))

(declare-fun lt!550603 () ListLongMap!17941)

(assert (=> b!1211942 (= res!805093 (= lt!550603 lt!550597))))

(declare-fun lt!550598 () ListLongMap!17941)

(declare-fun -!1882 (ListLongMap!17941 (_ BitVec 64)) ListLongMap!17941)

(assert (=> b!1211942 (= lt!550603 (-!1882 lt!550598 k!934))))

(declare-fun lt!550600 () V!46129)

(declare-fun +!4013 (ListLongMap!17941 tuple2!19960) ListLongMap!17941)

(assert (=> b!1211942 (= (-!1882 (+!4013 lt!550597 (tuple2!19961 (select (arr!37762 _keys!1208) from!1455) lt!550600)) (select (arr!37762 _keys!1208) from!1455)) lt!550597)))

(declare-fun lt!550595 () Unit!40106)

(declare-fun addThenRemoveForNewKeyIsSame!283 (ListLongMap!17941 (_ BitVec 64) V!46129) Unit!40106)

(assert (=> b!1211942 (= lt!550595 (addThenRemoveForNewKeyIsSame!283 lt!550597 (select (arr!37762 _keys!1208) from!1455) lt!550600))))

(declare-fun lt!550608 () V!46129)

(declare-fun get!19289 (ValueCell!14666 V!46129) V!46129)

(assert (=> b!1211942 (= lt!550600 (get!19289 (select (arr!37763 _values!996) from!1455) lt!550608))))

(declare-fun lt!550612 () Unit!40106)

(declare-fun e!688312 () Unit!40106)

(assert (=> b!1211942 (= lt!550612 e!688312)))

(declare-fun c!119530 () Bool)

(declare-fun contains!7001 (ListLongMap!17941 (_ BitVec 64)) Bool)

(assert (=> b!1211942 (= c!119530 (contains!7001 lt!550597 k!934))))

(declare-fun defaultEntry!1004 () Int)

(declare-fun getCurrentListMapNoExtraKeys!5391 (array!78260 array!78262 (_ BitVec 32) (_ BitVec 32) V!46129 V!46129 (_ BitVec 32) Int) ListLongMap!17941)

(assert (=> b!1211942 (= lt!550597 (getCurrentListMapNoExtraKeys!5391 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1211943 () Bool)

(declare-fun call!60026 () ListLongMap!17941)

(assert (=> b!1211943 (contains!7001 call!60026 k!934)))

(declare-fun lt!550604 () Unit!40106)

(assert (=> b!1211943 (= lt!550604 call!60028)))

(declare-fun call!60027 () Bool)

(assert (=> b!1211943 call!60027))

(assert (=> b!1211943 (= lt!550593 (+!4013 lt!550597 (tuple2!19961 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944)))))

(declare-fun lt!550601 () Unit!40106)

(assert (=> b!1211943 (= lt!550601 (addStillContains!1073 lt!550597 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944 k!934))))

(declare-fun e!688322 () Unit!40106)

(assert (=> b!1211943 (= e!688322 lt!550604)))

(declare-fun b!1211944 () Bool)

(declare-fun e!688311 () Bool)

(declare-fun tp_is_empty!30751 () Bool)

(assert (=> b!1211944 (= e!688311 tp_is_empty!30751)))

(declare-fun b!1211945 () Bool)

(declare-fun e!688307 () Bool)

(declare-fun call!60025 () ListLongMap!17941)

(declare-fun call!60030 () ListLongMap!17941)

(assert (=> b!1211945 (= e!688307 (= call!60025 call!60030))))

(declare-fun b!1211946 () Bool)

(assert (=> b!1211946 (= c!119529 (and (not lt!550602) (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun e!688310 () Unit!40106)

(assert (=> b!1211946 (= e!688322 e!688310)))

(declare-fun b!1211947 () Bool)

(declare-fun Unit!40108 () Unit!40106)

(assert (=> b!1211947 (= e!688312 Unit!40108)))

(assert (=> b!1211947 (= lt!550602 (= (bvand extraKeys!923 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(assert (=> b!1211947 (= c!119527 (and (not lt!550602) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun lt!550599 () Unit!40106)

(assert (=> b!1211947 (= lt!550599 e!688322)))

(declare-fun lt!550607 () Unit!40106)

(declare-fun lemmaListMapContainsThenArrayContainsFrom!610 (array!78260 array!78262 (_ BitVec 32) (_ BitVec 32) V!46129 V!46129 (_ BitVec 64) (_ BitVec 32) Int) Unit!40106)

(assert (=> b!1211947 (= lt!550607 (lemmaListMapContainsThenArrayContainsFrom!610 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun c!119526 () Bool)

(assert (=> b!1211947 (= c!119526 (and (not (= k!934 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!934 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun res!805105 () Bool)

(assert (=> b!1211947 (= res!805105 e!688309)))

(declare-fun e!688306 () Bool)

(assert (=> b!1211947 (=> (not res!805105) (not e!688306))))

(assert (=> b!1211947 e!688306))

(declare-fun lt!550611 () Unit!40106)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!78260 (_ BitVec 32) (_ BitVec 32)) Unit!40106)

(assert (=> b!1211947 (= lt!550611 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1208 #b00000000000000000000000000000000 from!1455))))

(declare-datatypes ((List!26781 0))(
  ( (Nil!26778) (Cons!26777 (h!27986 (_ BitVec 64)) (t!39815 List!26781)) )
))
(declare-fun arrayNoDuplicates!0 (array!78260 (_ BitVec 32) List!26781) Bool)

(assert (=> b!1211947 (arrayNoDuplicates!0 _keys!1208 from!1455 Nil!26778)))

(declare-fun lt!550592 () Unit!40106)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!78260 (_ BitVec 64) (_ BitVec 32) List!26781) Unit!40106)

(assert (=> b!1211947 (= lt!550592 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!1208 k!934 from!1455 Nil!26778))))

(assert (=> b!1211947 false))

(declare-fun b!1211948 () Bool)

(assert (=> b!1211948 (= e!688306 (arrayContainsKey!0 _keys!1208 k!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun bm!60022 () Bool)

(assert (=> bm!60022 (= call!60029 call!60027)))

(declare-fun b!1211949 () Bool)

(declare-fun e!688313 () Bool)

(assert (=> b!1211949 (= e!688313 e!688317)))

(declare-fun res!805094 () Bool)

(assert (=> b!1211949 (=> res!805094 e!688317)))

(assert (=> b!1211949 (= res!805094 (not (= (select (arr!37762 _keys!1208) from!1455) k!934)))))

(assert (=> b!1211949 e!688307))

(declare-fun c!119531 () Bool)

(assert (=> b!1211949 (= c!119531 (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673))))

(declare-fun lt!550606 () Unit!40106)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!1090 (array!78260 array!78262 (_ BitVec 32) (_ BitVec 32) V!46129 V!46129 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!40106)

(assert (=> b!1211949 (= lt!550606 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!1090 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1211950 () Bool)

(declare-fun e!688321 () Bool)

(assert (=> b!1211950 (= e!688321 (and e!688311 mapRes!47998))))

(declare-fun condMapEmpty!47998 () Bool)

(declare-fun mapDefault!47998 () ValueCell!14666)

