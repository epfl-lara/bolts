; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!98630 () Bool)

(assert start!98630)

(declare-fun b_free!24199 () Bool)

(declare-fun b_next!24199 () Bool)

(assert (=> start!98630 (= b_free!24199 (not b_next!24199))))

(declare-fun tp!85308 () Bool)

(declare-fun b_and!39261 () Bool)

(assert (=> start!98630 (= tp!85308 b_and!39261)))

(declare-fun mapNonEmpty!44918 () Bool)

(declare-fun mapRes!44918 () Bool)

(declare-fun tp!85309 () Bool)

(declare-fun e!650871 () Bool)

(assert (=> mapNonEmpty!44918 (= mapRes!44918 (and tp!85309 e!650871))))

(declare-datatypes ((V!43433 0))(
  ( (V!43434 (val!14421 Int)) )
))
(declare-datatypes ((ValueCell!13655 0))(
  ( (ValueCellFull!13655 (v!17059 V!43433)) (EmptyCell!13655) )
))
(declare-fun mapRest!44918 () (Array (_ BitVec 32) ValueCell!13655))

(declare-fun mapValue!44918 () ValueCell!13655)

(declare-fun mapKey!44918 () (_ BitVec 32))

(declare-datatypes ((array!74266 0))(
  ( (array!74267 (arr!35780 (Array (_ BitVec 32) ValueCell!13655)) (size!36317 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!74266)

(assert (=> mapNonEmpty!44918 (= (arr!35780 _values!996) (store mapRest!44918 mapKey!44918 mapValue!44918))))

(declare-datatypes ((array!74268 0))(
  ( (array!74269 (arr!35781 (Array (_ BitVec 32) (_ BitVec 64))) (size!36318 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!74268)

(declare-fun b!1144102 () Bool)

(declare-fun k!934 () (_ BitVec 64))

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun e!650866 () Bool)

(declare-fun arrayContainsKey!0 (array!74268 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1144102 (= e!650866 (arrayContainsKey!0 _keys!1208 k!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun b!1144103 () Bool)

(declare-fun res!762198 () Bool)

(declare-fun e!650875 () Bool)

(assert (=> b!1144103 (=> (not res!762198) (not e!650875))))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1144103 (= res!762198 (validMask!0 mask!1564))))

(declare-fun res!762202 () Bool)

(assert (=> start!98630 (=> (not res!762202) (not e!650875))))

(assert (=> start!98630 (= res!762202 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!36318 _keys!1208))))))

(assert (=> start!98630 e!650875))

(declare-fun tp_is_empty!28729 () Bool)

(assert (=> start!98630 tp_is_empty!28729))

(declare-fun array_inv!27292 (array!74268) Bool)

(assert (=> start!98630 (array_inv!27292 _keys!1208)))

(assert (=> start!98630 true))

(assert (=> start!98630 tp!85308))

(declare-fun e!650872 () Bool)

(declare-fun array_inv!27293 (array!74266) Bool)

(assert (=> start!98630 (and (array_inv!27293 _values!996) e!650872)))

(declare-fun b!1144104 () Bool)

(declare-fun e!650876 () Bool)

(declare-fun e!650864 () Bool)

(assert (=> b!1144104 (= e!650876 e!650864)))

(declare-fun res!762191 () Bool)

(assert (=> b!1144104 (=> res!762191 e!650864)))

(assert (=> b!1144104 (= res!762191 (not (= (select (arr!35781 _keys!1208) from!1455) k!934)))))

(declare-fun e!650863 () Bool)

(assert (=> b!1144104 e!650863))

(declare-fun c!112600 () Bool)

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1144104 (= c!112600 (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673))))

(declare-fun zeroValue!944 () V!43433)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-fun minValue!944 () V!43433)

(declare-datatypes ((Unit!37478 0))(
  ( (Unit!37479) )
))
(declare-fun lt!510412 () Unit!37478)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!525 (array!74268 array!74266 (_ BitVec 32) (_ BitVec 32) V!43433 V!43433 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!37478)

(assert (=> b!1144104 (= lt!510412 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!525 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1144105 () Bool)

(declare-fun res!762190 () Bool)

(assert (=> b!1144105 (=> (not res!762190) (not e!650875))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1144105 (= res!762190 (validKeyInArray!0 k!934))))

(declare-fun b!1144106 () Bool)

(assert (=> b!1144106 (= e!650864 true)))

(declare-fun e!650870 () Bool)

(assert (=> b!1144106 e!650870))

(declare-fun res!762200 () Bool)

(assert (=> b!1144106 (=> (not res!762200) (not e!650870))))

(declare-datatypes ((tuple2!18342 0))(
  ( (tuple2!18343 (_1!9181 (_ BitVec 64)) (_2!9181 V!43433)) )
))
(declare-datatypes ((List!25142 0))(
  ( (Nil!25139) (Cons!25138 (h!26347 tuple2!18342) (t!36340 List!25142)) )
))
(declare-datatypes ((ListLongMap!16323 0))(
  ( (ListLongMap!16324 (toList!8177 List!25142)) )
))
(declare-fun lt!510409 () ListLongMap!16323)

(declare-fun lt!510421 () V!43433)

(declare-fun -!1270 (ListLongMap!16323 (_ BitVec 64)) ListLongMap!16323)

(declare-fun +!3521 (ListLongMap!16323 tuple2!18342) ListLongMap!16323)

(assert (=> b!1144106 (= res!762200 (= (-!1270 (+!3521 lt!510409 (tuple2!18343 (select (arr!35781 _keys!1208) from!1455) lt!510421)) (select (arr!35781 _keys!1208) from!1455)) lt!510409))))

(declare-fun lt!510426 () Unit!37478)

(declare-fun addThenRemoveForNewKeyIsSame!125 (ListLongMap!16323 (_ BitVec 64) V!43433) Unit!37478)

(assert (=> b!1144106 (= lt!510426 (addThenRemoveForNewKeyIsSame!125 lt!510409 (select (arr!35781 _keys!1208) from!1455) lt!510421))))

(declare-fun lt!510408 () V!43433)

(declare-fun get!18213 (ValueCell!13655 V!43433) V!43433)

(assert (=> b!1144106 (= lt!510421 (get!18213 (select (arr!35780 _values!996) from!1455) lt!510408))))

(declare-fun lt!510413 () Unit!37478)

(declare-fun e!650862 () Unit!37478)

(assert (=> b!1144106 (= lt!510413 e!650862)))

(declare-fun c!112601 () Bool)

(declare-fun contains!6679 (ListLongMap!16323 (_ BitVec 64)) Bool)

(assert (=> b!1144106 (= c!112601 (contains!6679 lt!510409 k!934))))

(declare-fun getCurrentListMapNoExtraKeys!4619 (array!74268 array!74266 (_ BitVec 32) (_ BitVec 32) V!43433 V!43433 (_ BitVec 32) Int) ListLongMap!16323)

(assert (=> b!1144106 (= lt!510409 (getCurrentListMapNoExtraKeys!4619 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1144107 () Bool)

(declare-fun e!650861 () Bool)

(assert (=> b!1144107 (= e!650861 tp_is_empty!28729)))

(declare-fun b!1144108 () Bool)

(assert (=> b!1144108 (= e!650871 tp_is_empty!28729)))

(declare-fun lt!510425 () array!74266)

(declare-fun bm!51926 () Bool)

(declare-fun lt!510410 () array!74268)

(declare-fun call!51936 () ListLongMap!16323)

(assert (=> bm!51926 (= call!51936 (getCurrentListMapNoExtraKeys!4619 lt!510410 lt!510425 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1144109 () Bool)

(declare-fun e!650867 () Bool)

(assert (=> b!1144109 (= e!650875 e!650867)))

(declare-fun res!762199 () Bool)

(assert (=> b!1144109 (=> (not res!762199) (not e!650867))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!74268 (_ BitVec 32)) Bool)

(assert (=> b!1144109 (= res!762199 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!510410 mask!1564))))

(assert (=> b!1144109 (= lt!510410 (array!74269 (store (arr!35781 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!36318 _keys!1208)))))

(declare-fun b!1144110 () Bool)

(declare-fun res!762189 () Bool)

(assert (=> b!1144110 (=> (not res!762189) (not e!650875))))

(assert (=> b!1144110 (= res!762189 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1144111 () Bool)

(declare-fun res!762194 () Bool)

(assert (=> b!1144111 (=> (not res!762194) (not e!650867))))

(declare-datatypes ((List!25143 0))(
  ( (Nil!25140) (Cons!25139 (h!26348 (_ BitVec 64)) (t!36341 List!25143)) )
))
(declare-fun arrayNoDuplicates!0 (array!74268 (_ BitVec 32) List!25143) Bool)

(assert (=> b!1144111 (= res!762194 (arrayNoDuplicates!0 lt!510410 #b00000000000000000000000000000000 Nil!25140))))

(declare-fun lt!510424 () Bool)

(declare-fun b!1144112 () Bool)

(assert (=> b!1144112 (= e!650866 (ite (= k!934 #b0000000000000000000000000000000000000000000000000000000000000000) (not lt!510424) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!1144113 () Bool)

(declare-fun call!51933 () Bool)

(assert (=> b!1144113 call!51933))

(declare-fun lt!510423 () Unit!37478)

(declare-fun call!51931 () Unit!37478)

(assert (=> b!1144113 (= lt!510423 call!51931)))

(declare-fun e!650869 () Unit!37478)

(assert (=> b!1144113 (= e!650869 lt!510423)))

(declare-fun lt!510411 () ListLongMap!16323)

(declare-fun b!1144114 () Bool)

(assert (=> b!1144114 (= e!650870 (= (-!1270 lt!510411 k!934) lt!510409))))

(declare-fun mapIsEmpty!44918 () Bool)

(assert (=> mapIsEmpty!44918 mapRes!44918))

(declare-fun b!1144115 () Bool)

(declare-fun e!650877 () Bool)

(assert (=> b!1144115 (= e!650867 (not e!650877))))

(declare-fun res!762192 () Bool)

(assert (=> b!1144115 (=> res!762192 e!650877)))

(assert (=> b!1144115 (= res!762192 (bvsgt from!1455 i!673))))

(assert (=> b!1144115 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-fun lt!510419 () Unit!37478)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!74268 (_ BitVec 64) (_ BitVec 32)) Unit!37478)

(assert (=> b!1144115 (= lt!510419 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun b!1144116 () Bool)

(declare-fun Unit!37480 () Unit!37478)

(assert (=> b!1144116 (= e!650862 Unit!37480)))

(declare-fun b!1144117 () Bool)

(declare-fun res!762197 () Bool)

(assert (=> b!1144117 (=> (not res!762197) (not e!650875))))

(assert (=> b!1144117 (= res!762197 (and (= (size!36317 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!36318 _keys!1208) (size!36317 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun call!51935 () ListLongMap!16323)

(declare-fun bm!51927 () Bool)

(assert (=> bm!51927 (= call!51935 (getCurrentListMapNoExtraKeys!4619 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1144118 () Bool)

(assert (=> b!1144118 (= e!650863 (= call!51936 (-!1270 call!51935 k!934)))))

(declare-fun b!1144119 () Bool)

(declare-fun lt!510406 () ListLongMap!16323)

(assert (=> b!1144119 (contains!6679 (+!3521 lt!510406 (tuple2!18343 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944)) k!934)))

(declare-fun lt!510417 () Unit!37478)

(declare-fun call!51929 () Unit!37478)

(assert (=> b!1144119 (= lt!510417 call!51929)))

(declare-fun call!51930 () Bool)

(assert (=> b!1144119 call!51930))

(declare-fun call!51934 () ListLongMap!16323)

(assert (=> b!1144119 (= lt!510406 call!51934)))

(declare-fun lt!510422 () Unit!37478)

(declare-fun addStillContains!818 (ListLongMap!16323 (_ BitVec 64) V!43433 (_ BitVec 64)) Unit!37478)

(assert (=> b!1144119 (= lt!510422 (addStillContains!818 lt!510409 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944 k!934))))

(declare-fun e!650865 () Unit!37478)

(assert (=> b!1144119 (= e!650865 lt!510417)))

(declare-fun b!1144120 () Bool)

(declare-fun e!650874 () Unit!37478)

(assert (=> b!1144120 (= e!650874 e!650869)))

(declare-fun c!112598 () Bool)

(assert (=> b!1144120 (= c!112598 (and (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!510424))))

(declare-fun bm!51928 () Bool)

(assert (=> bm!51928 (= call!51933 call!51930)))

(declare-fun b!1144121 () Bool)

(declare-fun lt!510416 () Unit!37478)

(assert (=> b!1144121 (= e!650874 lt!510416)))

(assert (=> b!1144121 (= lt!510416 call!51931)))

(assert (=> b!1144121 call!51933))

(declare-fun b!1144122 () Bool)

(declare-fun Unit!37481 () Unit!37478)

(assert (=> b!1144122 (= e!650862 Unit!37481)))

(assert (=> b!1144122 (= lt!510424 (= (bvand extraKeys!923 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(declare-fun c!112597 () Bool)

(assert (=> b!1144122 (= c!112597 (and (not lt!510424) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun lt!510415 () Unit!37478)

(assert (=> b!1144122 (= lt!510415 e!650865)))

(declare-fun lt!510414 () Unit!37478)

(declare-fun lemmaListMapContainsThenArrayContainsFrom!413 (array!74268 array!74266 (_ BitVec 32) (_ BitVec 32) V!43433 V!43433 (_ BitVec 64) (_ BitVec 32) Int) Unit!37478)

(assert (=> b!1144122 (= lt!510414 (lemmaListMapContainsThenArrayContainsFrom!413 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun c!112599 () Bool)

(assert (=> b!1144122 (= c!112599 (and (not (= k!934 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!934 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun res!762195 () Bool)

(assert (=> b!1144122 (= res!762195 e!650866)))

(declare-fun e!650873 () Bool)

(assert (=> b!1144122 (=> (not res!762195) (not e!650873))))

(assert (=> b!1144122 e!650873))

(declare-fun lt!510420 () Unit!37478)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!74268 (_ BitVec 32) (_ BitVec 32)) Unit!37478)

(assert (=> b!1144122 (= lt!510420 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1208 #b00000000000000000000000000000000 from!1455))))

(assert (=> b!1144122 (arrayNoDuplicates!0 _keys!1208 from!1455 Nil!25140)))

(declare-fun lt!510407 () Unit!37478)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!74268 (_ BitVec 64) (_ BitVec 32) List!25143) Unit!37478)

(assert (=> b!1144122 (= lt!510407 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!1208 k!934 from!1455 Nil!25140))))

(assert (=> b!1144122 false))

(declare-fun b!1144123 () Bool)

(assert (=> b!1144123 (= e!650877 e!650876)))

(declare-fun res!762196 () Bool)

(assert (=> b!1144123 (=> res!762196 e!650876)))

(assert (=> b!1144123 (= res!762196 (not (= from!1455 i!673)))))

(declare-fun lt!510418 () ListLongMap!16323)

(assert (=> b!1144123 (= lt!510418 (getCurrentListMapNoExtraKeys!4619 lt!510410 lt!510425 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(assert (=> b!1144123 (= lt!510425 (array!74267 (store (arr!35780 _values!996) i!673 (ValueCellFull!13655 lt!510408)) (size!36317 _values!996)))))

(declare-fun dynLambda!2664 (Int (_ BitVec 64)) V!43433)

(assert (=> b!1144123 (= lt!510408 (dynLambda!2664 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1144123 (= lt!510411 (getCurrentListMapNoExtraKeys!4619 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1144124 () Bool)

(declare-fun res!762201 () Bool)

(assert (=> b!1144124 (=> (not res!762201) (not e!650875))))

(assert (=> b!1144124 (= res!762201 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!36318 _keys!1208))))))

(declare-fun bm!51929 () Bool)

(assert (=> bm!51929 (= call!51931 call!51929)))

(declare-fun b!1144125 () Bool)

(declare-fun res!762203 () Bool)

(assert (=> b!1144125 (=> (not res!762203) (not e!650875))))

(assert (=> b!1144125 (= res!762203 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!25140))))

(declare-fun b!1144126 () Bool)

(assert (=> b!1144126 (= e!650873 (arrayContainsKey!0 _keys!1208 k!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun b!1144127 () Bool)

(declare-fun c!112602 () Bool)

(assert (=> b!1144127 (= c!112602 (and (not lt!510424) (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(assert (=> b!1144127 (= e!650865 e!650874)))

(declare-fun bm!51930 () Bool)

(assert (=> bm!51930 (= call!51929 (addStillContains!818 (ite c!112597 lt!510406 lt!510409) (ite c!112597 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!112602 #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000)) (ite c!112597 minValue!944 (ite c!112602 zeroValue!944 minValue!944)) k!934))))

(declare-fun b!1144128 () Bool)

(declare-fun res!762193 () Bool)

(assert (=> b!1144128 (=> (not res!762193) (not e!650875))))

(assert (=> b!1144128 (= res!762193 (= (select (arr!35781 _keys!1208) i!673) k!934))))

(declare-fun b!1144129 () Bool)

(assert (=> b!1144129 (= e!650863 (= call!51936 call!51935))))

(declare-fun call!51932 () ListLongMap!16323)

(declare-fun bm!51931 () Bool)

(assert (=> bm!51931 (= call!51930 (contains!6679 (ite c!112597 lt!510406 call!51932) k!934))))

(declare-fun bm!51932 () Bool)

(assert (=> bm!51932 (= call!51932 call!51934)))

(declare-fun b!1144130 () Bool)

(declare-fun Unit!37482 () Unit!37478)

(assert (=> b!1144130 (= e!650869 Unit!37482)))

(declare-fun b!1144131 () Bool)

(assert (=> b!1144131 (= e!650872 (and e!650861 mapRes!44918))))

(declare-fun condMapEmpty!44918 () Bool)

(declare-fun mapDefault!44918 () ValueCell!13655)

