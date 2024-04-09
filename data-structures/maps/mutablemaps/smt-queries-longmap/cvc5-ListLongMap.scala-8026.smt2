; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!99032 () Bool)

(assert start!99032)

(declare-fun b_free!24601 () Bool)

(declare-fun b_next!24601 () Bool)

(assert (=> start!99032 (= b_free!24601 (not b_next!24601))))

(declare-fun tp!86515 () Bool)

(declare-fun b_and!40065 () Bool)

(assert (=> start!99032 (= tp!86515 b_and!40065)))

(declare-fun b!1162594 () Bool)

(declare-datatypes ((Unit!38256 0))(
  ( (Unit!38257) )
))
(declare-fun e!661112 () Unit!38256)

(declare-fun lt!523528 () Unit!38256)

(assert (=> b!1162594 (= e!661112 lt!523528)))

(declare-fun call!56756 () Unit!38256)

(assert (=> b!1162594 (= lt!523528 call!56756)))

(declare-fun call!56757 () Bool)

(assert (=> b!1162594 call!56757))

(declare-fun b!1162595 () Bool)

(declare-fun res!771242 () Bool)

(declare-fun e!661123 () Bool)

(assert (=> b!1162595 (=> (not res!771242) (not e!661123))))

(declare-datatypes ((array!75052 0))(
  ( (array!75053 (arr!36173 (Array (_ BitVec 32) (_ BitVec 64))) (size!36710 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!75052)

(declare-fun i!673 () (_ BitVec 32))

(declare-fun k!934 () (_ BitVec 64))

(assert (=> b!1162595 (= res!771242 (= (select (arr!36173 _keys!1208) i!673) k!934))))

(declare-fun bm!56750 () Bool)

(declare-fun call!56760 () Unit!38256)

(assert (=> bm!56750 (= call!56756 call!56760)))

(declare-fun b!1162596 () Bool)

(declare-fun e!661122 () Bool)

(declare-fun e!661113 () Bool)

(assert (=> b!1162596 (= e!661122 e!661113)))

(declare-fun res!771244 () Bool)

(assert (=> b!1162596 (=> res!771244 e!661113)))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> b!1162596 (= res!771244 (not (= (select (arr!36173 _keys!1208) from!1455) k!934)))))

(declare-fun e!661118 () Bool)

(assert (=> b!1162596 e!661118))

(declare-fun c!116219 () Bool)

(assert (=> b!1162596 (= c!116219 (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673))))

(declare-datatypes ((V!43969 0))(
  ( (V!43970 (val!14622 Int)) )
))
(declare-fun zeroValue!944 () V!43969)

(declare-fun lt!523523 () Unit!38256)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-datatypes ((ValueCell!13856 0))(
  ( (ValueCellFull!13856 (v!17260 V!43969)) (EmptyCell!13856) )
))
(declare-datatypes ((array!75054 0))(
  ( (array!75055 (arr!36174 (Array (_ BitVec 32) ValueCell!13856)) (size!36711 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!75054)

(declare-fun minValue!944 () V!43969)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!653 (array!75052 array!75054 (_ BitVec 32) (_ BitVec 32) V!43969 V!43969 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!38256)

(assert (=> b!1162596 (= lt!523523 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!653 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1162597 () Bool)

(declare-fun e!661128 () Bool)

(declare-fun e!661119 () Bool)

(assert (=> b!1162597 (= e!661128 (not e!661119))))

(declare-fun res!771235 () Bool)

(assert (=> b!1162597 (=> res!771235 e!661119)))

(assert (=> b!1162597 (= res!771235 (bvsgt from!1455 i!673))))

(declare-fun arrayContainsKey!0 (array!75052 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1162597 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-fun lt!523519 () Unit!38256)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!75052 (_ BitVec 64) (_ BitVec 32)) Unit!38256)

(assert (=> b!1162597 (= lt!523519 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun mapIsEmpty!45521 () Bool)

(declare-fun mapRes!45521 () Bool)

(assert (=> mapIsEmpty!45521 mapRes!45521))

(declare-fun b!1162598 () Bool)

(declare-fun e!661125 () Unit!38256)

(assert (=> b!1162598 (= e!661112 e!661125)))

(declare-fun c!116215 () Bool)

(declare-fun lt!523529 () Bool)

(assert (=> b!1162598 (= c!116215 (and (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!523529))))

(declare-fun b!1162599 () Bool)

(declare-fun e!661121 () Unit!38256)

(declare-fun Unit!38258 () Unit!38256)

(assert (=> b!1162599 (= e!661121 Unit!38258)))

(assert (=> b!1162599 (= lt!523529 (= (bvand extraKeys!923 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(declare-fun c!116220 () Bool)

(assert (=> b!1162599 (= c!116220 (and (not lt!523529) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun lt!523516 () Unit!38256)

(declare-fun e!661114 () Unit!38256)

(assert (=> b!1162599 (= lt!523516 e!661114)))

(declare-fun lt!523532 () Unit!38256)

(declare-fun lemmaListMapContainsThenArrayContainsFrom!552 (array!75052 array!75054 (_ BitVec 32) (_ BitVec 32) V!43969 V!43969 (_ BitVec 64) (_ BitVec 32) Int) Unit!38256)

(assert (=> b!1162599 (= lt!523532 (lemmaListMapContainsThenArrayContainsFrom!552 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun c!116216 () Bool)

(assert (=> b!1162599 (= c!116216 (and (not (= k!934 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!934 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun res!771240 () Bool)

(declare-fun e!661117 () Bool)

(assert (=> b!1162599 (= res!771240 e!661117)))

(declare-fun e!661120 () Bool)

(assert (=> b!1162599 (=> (not res!771240) (not e!661120))))

(assert (=> b!1162599 e!661120))

(declare-fun lt!523521 () Unit!38256)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!75052 (_ BitVec 32) (_ BitVec 32)) Unit!38256)

(assert (=> b!1162599 (= lt!523521 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1208 #b00000000000000000000000000000000 from!1455))))

(declare-datatypes ((List!25490 0))(
  ( (Nil!25487) (Cons!25486 (h!26695 (_ BitVec 64)) (t!37090 List!25490)) )
))
(declare-fun arrayNoDuplicates!0 (array!75052 (_ BitVec 32) List!25490) Bool)

(assert (=> b!1162599 (arrayNoDuplicates!0 _keys!1208 from!1455 Nil!25487)))

(declare-fun lt!523513 () Unit!38256)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!75052 (_ BitVec 64) (_ BitVec 32) List!25490) Unit!38256)

(assert (=> b!1162599 (= lt!523513 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!1208 k!934 from!1455 Nil!25487))))

(assert (=> b!1162599 false))

(declare-fun b!1162600 () Bool)

(declare-fun res!771241 () Bool)

(assert (=> b!1162600 (=> (not res!771241) (not e!661123))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1162600 (= res!771241 (validKeyInArray!0 k!934))))

(declare-datatypes ((tuple2!18714 0))(
  ( (tuple2!18715 (_1!9367 (_ BitVec 64)) (_2!9367 V!43969)) )
))
(declare-datatypes ((List!25491 0))(
  ( (Nil!25488) (Cons!25487 (h!26696 tuple2!18714) (t!37091 List!25491)) )
))
(declare-datatypes ((ListLongMap!16695 0))(
  ( (ListLongMap!16696 (toList!8363 List!25491)) )
))
(declare-fun call!56758 () ListLongMap!16695)

(declare-fun lt!523531 () array!75052)

(declare-fun bm!56751 () Bool)

(declare-fun lt!523530 () array!75054)

(declare-fun getCurrentListMapNoExtraKeys!4797 (array!75052 array!75054 (_ BitVec 32) (_ BitVec 32) V!43969 V!43969 (_ BitVec 32) Int) ListLongMap!16695)

(assert (=> bm!56751 (= call!56758 (getCurrentListMapNoExtraKeys!4797 lt!523531 lt!523530 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun bm!56752 () Bool)

(declare-fun call!56754 () Bool)

(declare-fun lt!523517 () ListLongMap!16695)

(declare-fun call!56753 () ListLongMap!16695)

(declare-fun contains!6841 (ListLongMap!16695 (_ BitVec 64)) Bool)

(assert (=> bm!56752 (= call!56754 (contains!6841 (ite c!116220 lt!523517 call!56753) k!934))))

(declare-fun b!1162602 () Bool)

(declare-fun res!771248 () Bool)

(assert (=> b!1162602 (=> (not res!771248) (not e!661123))))

(assert (=> b!1162602 (= res!771248 (and (= (size!36711 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!36710 _keys!1208) (size!36711 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1162603 () Bool)

(declare-fun res!771245 () Bool)

(assert (=> b!1162603 (=> (not res!771245) (not e!661123))))

(assert (=> b!1162603 (= res!771245 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!36710 _keys!1208))))))

(declare-fun b!1162604 () Bool)

(assert (=> b!1162604 (= e!661119 e!661122)))

(declare-fun res!771247 () Bool)

(assert (=> b!1162604 (=> res!771247 e!661122)))

(assert (=> b!1162604 (= res!771247 (not (= from!1455 i!673)))))

(declare-fun lt!523524 () ListLongMap!16695)

(assert (=> b!1162604 (= lt!523524 (getCurrentListMapNoExtraKeys!4797 lt!523531 lt!523530 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun lt!523515 () V!43969)

(assert (=> b!1162604 (= lt!523530 (array!75055 (store (arr!36174 _values!996) i!673 (ValueCellFull!13856 lt!523515)) (size!36711 _values!996)))))

(declare-fun dynLambda!2795 (Int (_ BitVec 64)) V!43969)

(assert (=> b!1162604 (= lt!523515 (dynLambda!2795 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!523512 () ListLongMap!16695)

(assert (=> b!1162604 (= lt!523512 (getCurrentListMapNoExtraKeys!4797 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun bm!56753 () Bool)

(assert (=> bm!56753 (= call!56757 call!56754)))

(declare-fun b!1162605 () Bool)

(assert (=> b!1162605 (= e!661117 (ite (= k!934 #b0000000000000000000000000000000000000000000000000000000000000000) (not lt!523529) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun lt!523526 () ListLongMap!16695)

(declare-fun c!116217 () Bool)

(declare-fun bm!56754 () Bool)

(declare-fun addStillContains!982 (ListLongMap!16695 (_ BitVec 64) V!43969 (_ BitVec 64)) Unit!38256)

(assert (=> bm!56754 (= call!56760 (addStillContains!982 lt!523526 (ite (or c!116220 c!116217) #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000) (ite (or c!116220 c!116217) zeroValue!944 minValue!944) k!934))))

(declare-fun b!1162606 () Bool)

(assert (=> b!1162606 (= e!661113 true)))

(declare-fun e!661116 () Bool)

(assert (=> b!1162606 e!661116))

(declare-fun res!771238 () Bool)

(assert (=> b!1162606 (=> (not res!771238) (not e!661116))))

(declare-fun lt!523520 () ListLongMap!16695)

(assert (=> b!1162606 (= res!771238 (= lt!523520 lt!523526))))

(declare-fun -!1431 (ListLongMap!16695 (_ BitVec 64)) ListLongMap!16695)

(assert (=> b!1162606 (= lt!523520 (-!1431 lt!523512 k!934))))

(declare-fun lt!523527 () V!43969)

(declare-fun +!3684 (ListLongMap!16695 tuple2!18714) ListLongMap!16695)

(assert (=> b!1162606 (= (-!1431 (+!3684 lt!523526 (tuple2!18715 (select (arr!36173 _keys!1208) from!1455) lt!523527)) (select (arr!36173 _keys!1208) from!1455)) lt!523526)))

(declare-fun lt!523518 () Unit!38256)

(declare-fun addThenRemoveForNewKeyIsSame!265 (ListLongMap!16695 (_ BitVec 64) V!43969) Unit!38256)

(assert (=> b!1162606 (= lt!523518 (addThenRemoveForNewKeyIsSame!265 lt!523526 (select (arr!36173 _keys!1208) from!1455) lt!523527))))

(declare-fun get!18487 (ValueCell!13856 V!43969) V!43969)

(assert (=> b!1162606 (= lt!523527 (get!18487 (select (arr!36174 _values!996) from!1455) lt!523515))))

(declare-fun lt!523514 () Unit!38256)

(assert (=> b!1162606 (= lt!523514 e!661121)))

(declare-fun c!116218 () Bool)

(assert (=> b!1162606 (= c!116218 (contains!6841 lt!523526 k!934))))

(assert (=> b!1162606 (= lt!523526 (getCurrentListMapNoExtraKeys!4797 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun bm!56755 () Bool)

(declare-fun call!56755 () ListLongMap!16695)

(assert (=> bm!56755 (= call!56755 (getCurrentListMapNoExtraKeys!4797 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1162607 () Bool)

(declare-fun call!56759 () ListLongMap!16695)

(assert (=> b!1162607 (contains!6841 call!56759 k!934)))

(declare-fun lt!523533 () Unit!38256)

(assert (=> b!1162607 (= lt!523533 (addStillContains!982 lt!523517 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944 k!934))))

(assert (=> b!1162607 call!56754))

(assert (=> b!1162607 (= lt!523517 (+!3684 lt!523526 (tuple2!18715 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944)))))

(declare-fun lt!523525 () Unit!38256)

(assert (=> b!1162607 (= lt!523525 call!56760)))

(assert (=> b!1162607 (= e!661114 lt!523533)))

(declare-fun b!1162608 () Bool)

(declare-fun res!771236 () Bool)

(assert (=> b!1162608 (=> (not res!771236) (not e!661123))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!75052 (_ BitVec 32)) Bool)

(assert (=> b!1162608 (= res!771236 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1162609 () Bool)

(assert (=> b!1162609 (= e!661120 (arrayContainsKey!0 _keys!1208 k!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun b!1162610 () Bool)

(assert (=> b!1162610 (= e!661118 (= call!56758 call!56755))))

(declare-fun b!1162611 () Bool)

(assert (=> b!1162611 (= e!661116 (= lt!523520 (getCurrentListMapNoExtraKeys!4797 lt!523531 lt!523530 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004)))))

(declare-fun b!1162612 () Bool)

(declare-fun Unit!38259 () Unit!38256)

(assert (=> b!1162612 (= e!661121 Unit!38259)))

(declare-fun bm!56756 () Bool)

(assert (=> bm!56756 (= call!56753 call!56759)))

(declare-fun b!1162613 () Bool)

(declare-fun e!661126 () Bool)

(declare-fun e!661127 () Bool)

(assert (=> b!1162613 (= e!661126 (and e!661127 mapRes!45521))))

(declare-fun condMapEmpty!45521 () Bool)

(declare-fun mapDefault!45521 () ValueCell!13856)

