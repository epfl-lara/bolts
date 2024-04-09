; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!98744 () Bool)

(assert start!98744)

(declare-fun b_free!24313 () Bool)

(declare-fun b_next!24313 () Bool)

(assert (=> start!98744 (= b_free!24313 (not b_next!24313))))

(declare-fun tp!85651 () Bool)

(declare-fun b_and!39489 () Bool)

(assert (=> start!98744 (= tp!85651 b_and!39489)))

(declare-fun b!1149346 () Bool)

(declare-fun res!764766 () Bool)

(declare-fun e!653784 () Bool)

(assert (=> b!1149346 (=> (not res!764766) (not e!653784))))

(declare-datatypes ((array!74490 0))(
  ( (array!74491 (arr!35892 (Array (_ BitVec 32) (_ BitVec 64))) (size!36429 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!74490)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-datatypes ((V!43585 0))(
  ( (V!43586 (val!14478 Int)) )
))
(declare-datatypes ((ValueCell!13712 0))(
  ( (ValueCellFull!13712 (v!17116 V!43585)) (EmptyCell!13712) )
))
(declare-datatypes ((array!74492 0))(
  ( (array!74493 (arr!35893 (Array (_ BitVec 32) ValueCell!13712)) (size!36430 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!74492)

(assert (=> b!1149346 (= res!764766 (and (= (size!36430 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!36429 _keys!1208) (size!36430 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1149347 () Bool)

(declare-fun e!653776 () Bool)

(declare-fun e!653769 () Bool)

(assert (=> b!1149347 (= e!653776 e!653769)))

(declare-fun res!764758 () Bool)

(assert (=> b!1149347 (=> res!764758 e!653769)))

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1149347 (= res!764758 (not (= from!1455 i!673)))))

(declare-fun zeroValue!944 () V!43585)

(declare-datatypes ((tuple2!18448 0))(
  ( (tuple2!18449 (_1!9234 (_ BitVec 64)) (_2!9234 V!43585)) )
))
(declare-datatypes ((List!25241 0))(
  ( (Nil!25238) (Cons!25237 (h!26446 tuple2!18448) (t!36553 List!25241)) )
))
(declare-datatypes ((ListLongMap!16429 0))(
  ( (ListLongMap!16430 (toList!8230 List!25241)) )
))
(declare-fun lt!514012 () ListLongMap!16429)

(declare-fun defaultEntry!1004 () Int)

(declare-fun lt!514018 () array!74492)

(declare-fun lt!514023 () array!74490)

(declare-fun minValue!944 () V!43585)

(declare-fun getCurrentListMapNoExtraKeys!4671 (array!74490 array!74492 (_ BitVec 32) (_ BitVec 32) V!43585 V!43585 (_ BitVec 32) Int) ListLongMap!16429)

(assert (=> b!1149347 (= lt!514012 (getCurrentListMapNoExtraKeys!4671 lt!514023 lt!514018 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun lt!514025 () V!43585)

(assert (=> b!1149347 (= lt!514018 (array!74493 (store (arr!35893 _values!996) i!673 (ValueCellFull!13712 lt!514025)) (size!36430 _values!996)))))

(declare-fun dynLambda!2701 (Int (_ BitVec 64)) V!43585)

(assert (=> b!1149347 (= lt!514025 (dynLambda!2701 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!514022 () ListLongMap!16429)

(assert (=> b!1149347 (= lt!514022 (getCurrentListMapNoExtraKeys!4671 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1149348 () Bool)

(declare-fun k!934 () (_ BitVec 64))

(declare-fun e!653778 () Bool)

(declare-fun arrayContainsKey!0 (array!74490 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1149348 (= e!653778 (arrayContainsKey!0 _keys!1208 k!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun b!1149349 () Bool)

(declare-fun res!764767 () Bool)

(assert (=> b!1149349 (=> (not res!764767) (not e!653784))))

(assert (=> b!1149349 (= res!764767 (= (select (arr!35892 _keys!1208) i!673) k!934))))

(declare-fun b!1149350 () Bool)

(declare-datatypes ((Unit!37703 0))(
  ( (Unit!37704) )
))
(declare-fun e!653777 () Unit!37703)

(declare-fun lt!514010 () Unit!37703)

(assert (=> b!1149350 (= e!653777 lt!514010)))

(declare-fun call!53299 () Unit!37703)

(assert (=> b!1149350 (= lt!514010 call!53299)))

(declare-fun call!53302 () Bool)

(assert (=> b!1149350 call!53302))

(declare-fun b!1149351 () Bool)

(declare-fun e!653768 () Bool)

(assert (=> b!1149351 (= e!653784 e!653768)))

(declare-fun res!764763 () Bool)

(assert (=> b!1149351 (=> (not res!764763) (not e!653768))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!74490 (_ BitVec 32)) Bool)

(assert (=> b!1149351 (= res!764763 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!514023 mask!1564))))

(assert (=> b!1149351 (= lt!514023 (array!74491 (store (arr!35892 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!36429 _keys!1208)))))

(declare-fun b!1149352 () Bool)

(declare-fun c!113625 () Bool)

(declare-fun lt!514017 () Bool)

(assert (=> b!1149352 (= c!113625 (and (not lt!514017) (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun e!653774 () Unit!37703)

(assert (=> b!1149352 (= e!653774 e!653777)))

(declare-fun b!1149353 () Bool)

(declare-fun e!653781 () Bool)

(assert (=> b!1149353 (= e!653781 true)))

(declare-fun e!653782 () Bool)

(assert (=> b!1149353 e!653782))

(declare-fun res!764768 () Bool)

(assert (=> b!1149353 (=> (not res!764768) (not e!653782))))

(declare-fun lt!514011 () ListLongMap!16429)

(declare-fun lt!514020 () ListLongMap!16429)

(assert (=> b!1149353 (= res!764768 (= lt!514011 lt!514020))))

(declare-fun -!1318 (ListLongMap!16429 (_ BitVec 64)) ListLongMap!16429)

(assert (=> b!1149353 (= lt!514011 (-!1318 lt!514022 k!934))))

(declare-fun lt!514014 () V!43585)

(declare-fun +!3568 (ListLongMap!16429 tuple2!18448) ListLongMap!16429)

(assert (=> b!1149353 (= (-!1318 (+!3568 lt!514020 (tuple2!18449 (select (arr!35892 _keys!1208) from!1455) lt!514014)) (select (arr!35892 _keys!1208) from!1455)) lt!514020)))

(declare-fun lt!514028 () Unit!37703)

(declare-fun addThenRemoveForNewKeyIsSame!167 (ListLongMap!16429 (_ BitVec 64) V!43585) Unit!37703)

(assert (=> b!1149353 (= lt!514028 (addThenRemoveForNewKeyIsSame!167 lt!514020 (select (arr!35892 _keys!1208) from!1455) lt!514014))))

(declare-fun get!18293 (ValueCell!13712 V!43585) V!43585)

(assert (=> b!1149353 (= lt!514014 (get!18293 (select (arr!35893 _values!996) from!1455) lt!514025))))

(declare-fun lt!514024 () Unit!37703)

(declare-fun e!653770 () Unit!37703)

(assert (=> b!1149353 (= lt!514024 e!653770)))

(declare-fun c!113623 () Bool)

(declare-fun contains!6725 (ListLongMap!16429 (_ BitVec 64)) Bool)

(assert (=> b!1149353 (= c!113623 (contains!6725 lt!514020 k!934))))

(assert (=> b!1149353 (= lt!514020 (getCurrentListMapNoExtraKeys!4671 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1149354 () Bool)

(declare-fun e!653771 () Bool)

(declare-fun tp_is_empty!28843 () Bool)

(assert (=> b!1149354 (= e!653771 tp_is_empty!28843)))

(declare-fun call!53304 () ListLongMap!16429)

(declare-fun e!653775 () Bool)

(declare-fun call!53303 () ListLongMap!16429)

(declare-fun b!1149355 () Bool)

(assert (=> b!1149355 (= e!653775 (= call!53303 (-!1318 call!53304 k!934)))))

(declare-fun b!1149356 () Bool)

(declare-fun res!764761 () Bool)

(assert (=> b!1149356 (=> (not res!764761) (not e!653784))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1149356 (= res!764761 (validKeyInArray!0 k!934))))

(declare-fun bm!53295 () Bool)

(assert (=> bm!53295 (= call!53304 (getCurrentListMapNoExtraKeys!4671 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1149357 () Bool)

(assert (=> b!1149357 (= e!653775 (= call!53303 call!53304))))

(declare-fun bm!53296 () Bool)

(assert (=> bm!53296 (= call!53303 (getCurrentListMapNoExtraKeys!4671 lt!514023 lt!514018 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1149358 () Bool)

(assert (=> b!1149358 (= e!653768 (not e!653776))))

(declare-fun res!764754 () Bool)

(assert (=> b!1149358 (=> res!764754 e!653776)))

(assert (=> b!1149358 (= res!764754 (bvsgt from!1455 i!673))))

(assert (=> b!1149358 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-fun lt!514015 () Unit!37703)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!74490 (_ BitVec 64) (_ BitVec 32)) Unit!37703)

(assert (=> b!1149358 (= lt!514015 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun b!1149359 () Bool)

(declare-fun res!764756 () Bool)

(assert (=> b!1149359 (=> (not res!764756) (not e!653784))))

(assert (=> b!1149359 (= res!764756 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!36429 _keys!1208))))))

(declare-fun call!53300 () Unit!37703)

(declare-fun bm!53297 () Bool)

(declare-fun c!113627 () Bool)

(declare-fun addStillContains!868 (ListLongMap!16429 (_ BitVec 64) V!43585 (_ BitVec 64)) Unit!37703)

(assert (=> bm!53297 (= call!53300 (addStillContains!868 lt!514020 (ite (or c!113627 c!113625) #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000) (ite (or c!113627 c!113625) zeroValue!944 minValue!944) k!934))))

(declare-fun b!1149360 () Bool)

(declare-fun e!653783 () Unit!37703)

(declare-fun Unit!37705 () Unit!37703)

(assert (=> b!1149360 (= e!653783 Unit!37705)))

(declare-fun b!1149361 () Bool)

(declare-fun Unit!37706 () Unit!37703)

(assert (=> b!1149361 (= e!653770 Unit!37706)))

(assert (=> b!1149361 (= lt!514017 (= (bvand extraKeys!923 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(assert (=> b!1149361 (= c!113627 (and (not lt!514017) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun lt!514019 () Unit!37703)

(assert (=> b!1149361 (= lt!514019 e!653774)))

(declare-fun lt!514026 () Unit!37703)

(declare-fun lemmaListMapContainsThenArrayContainsFrom!454 (array!74490 array!74492 (_ BitVec 32) (_ BitVec 32) V!43585 V!43585 (_ BitVec 64) (_ BitVec 32) Int) Unit!37703)

(assert (=> b!1149361 (= lt!514026 (lemmaListMapContainsThenArrayContainsFrom!454 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun c!113628 () Bool)

(assert (=> b!1149361 (= c!113628 (and (not (= k!934 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!934 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun res!764757 () Bool)

(declare-fun e!653779 () Bool)

(assert (=> b!1149361 (= res!764757 e!653779)))

(assert (=> b!1149361 (=> (not res!764757) (not e!653778))))

(assert (=> b!1149361 e!653778))

(declare-fun lt!514029 () Unit!37703)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!74490 (_ BitVec 32) (_ BitVec 32)) Unit!37703)

(assert (=> b!1149361 (= lt!514029 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1208 #b00000000000000000000000000000000 from!1455))))

(declare-datatypes ((List!25242 0))(
  ( (Nil!25239) (Cons!25238 (h!26447 (_ BitVec 64)) (t!36554 List!25242)) )
))
(declare-fun arrayNoDuplicates!0 (array!74490 (_ BitVec 32) List!25242) Bool)

(assert (=> b!1149361 (arrayNoDuplicates!0 _keys!1208 from!1455 Nil!25239)))

(declare-fun lt!514021 () Unit!37703)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!74490 (_ BitVec 64) (_ BitVec 32) List!25242) Unit!37703)

(assert (=> b!1149361 (= lt!514021 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!1208 k!934 from!1455 Nil!25239))))

(assert (=> b!1149361 false))

(declare-fun b!1149362 () Bool)

(declare-fun res!764760 () Bool)

(assert (=> b!1149362 (=> (not res!764760) (not e!653784))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1149362 (= res!764760 (validMask!0 mask!1564))))

(declare-fun bm!53298 () Bool)

(declare-fun call!53301 () ListLongMap!16429)

(declare-fun call!53297 () ListLongMap!16429)

(assert (=> bm!53298 (= call!53301 call!53297)))

(declare-fun bm!53299 () Bool)

(assert (=> bm!53299 (= call!53297 (+!3568 lt!514020 (ite (or c!113627 c!113625) (tuple2!18449 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!18449 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944))))))

(declare-fun b!1149363 () Bool)

(assert (=> b!1149363 (= e!653777 e!653783)))

(declare-fun c!113626 () Bool)

(assert (=> b!1149363 (= c!113626 (and (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!514017))))

(declare-fun b!1149364 () Bool)

(declare-fun Unit!37707 () Unit!37703)

(assert (=> b!1149364 (= e!653770 Unit!37707)))

(declare-fun mapIsEmpty!45089 () Bool)

(declare-fun mapRes!45089 () Bool)

(assert (=> mapIsEmpty!45089 mapRes!45089))

(declare-fun b!1149365 () Bool)

(declare-fun lt!514027 () ListLongMap!16429)

(assert (=> b!1149365 (contains!6725 (+!3568 lt!514027 (tuple2!18449 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944)) k!934)))

(declare-fun lt!514013 () Unit!37703)

(assert (=> b!1149365 (= lt!514013 (addStillContains!868 lt!514027 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944 k!934))))

(declare-fun call!53298 () Bool)

(assert (=> b!1149365 call!53298))

(assert (=> b!1149365 (= lt!514027 call!53297)))

(declare-fun lt!514008 () Unit!37703)

(assert (=> b!1149365 (= lt!514008 call!53300)))

(assert (=> b!1149365 (= e!653774 lt!514013)))

(declare-fun b!1149366 () Bool)

(declare-fun e!653772 () Bool)

(assert (=> b!1149366 (= e!653772 tp_is_empty!28843)))

(declare-fun bm!53300 () Bool)

(assert (=> bm!53300 (= call!53299 call!53300)))

(declare-fun b!1149367 () Bool)

(declare-fun res!764765 () Bool)

(assert (=> b!1149367 (=> (not res!764765) (not e!653768))))

(assert (=> b!1149367 (= res!764765 (arrayNoDuplicates!0 lt!514023 #b00000000000000000000000000000000 Nil!25239))))

(declare-fun b!1149368 () Bool)

(declare-fun e!653773 () Bool)

(assert (=> b!1149368 (= e!653773 (and e!653772 mapRes!45089))))

(declare-fun condMapEmpty!45089 () Bool)

(declare-fun mapDefault!45089 () ValueCell!13712)

