; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!98484 () Bool)

(assert start!98484)

(declare-fun b_free!24053 () Bool)

(declare-fun b_next!24053 () Bool)

(assert (=> start!98484 (= b_free!24053 (not b_next!24053))))

(declare-fun tp!84871 () Bool)

(declare-fun b_and!38969 () Bool)

(assert (=> start!98484 (= tp!84871 b_and!38969)))

(declare-fun bm!50174 () Bool)

(declare-datatypes ((V!43237 0))(
  ( (V!43238 (val!14348 Int)) )
))
(declare-datatypes ((tuple2!18212 0))(
  ( (tuple2!18213 (_1!9116 (_ BitVec 64)) (_2!9116 V!43237)) )
))
(declare-datatypes ((List!25020 0))(
  ( (Nil!25017) (Cons!25016 (h!26225 tuple2!18212) (t!36072 List!25020)) )
))
(declare-datatypes ((ListLongMap!16193 0))(
  ( (ListLongMap!16194 (toList!8112 List!25020)) )
))
(declare-fun call!50177 () ListLongMap!16193)

(declare-fun call!50184 () ListLongMap!16193)

(assert (=> bm!50174 (= call!50177 call!50184)))

(declare-fun b!1137603 () Bool)

(declare-fun c!111283 () Bool)

(declare-fun lt!505967 () Bool)

(declare-fun extraKeys!923 () (_ BitVec 32))

(assert (=> b!1137603 (= c!111283 (and (not lt!505967) (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-datatypes ((Unit!37214 0))(
  ( (Unit!37215) )
))
(declare-fun e!647360 () Unit!37214)

(declare-fun e!647366 () Unit!37214)

(assert (=> b!1137603 (= e!647360 e!647366)))

(declare-fun b!1137604 () Bool)

(declare-fun e!647363 () Unit!37214)

(declare-fun Unit!37216 () Unit!37214)

(assert (=> b!1137604 (= e!647363 Unit!37216)))

(declare-fun b!1137605 () Bool)

(declare-fun lt!505975 () Unit!37214)

(assert (=> b!1137605 (= e!647366 lt!505975)))

(declare-fun call!50182 () Unit!37214)

(assert (=> b!1137605 (= lt!505975 call!50182)))

(declare-fun call!50178 () Bool)

(assert (=> b!1137605 call!50178))

(declare-fun b!1137606 () Bool)

(declare-fun res!759128 () Bool)

(declare-fun e!647362 () Bool)

(assert (=> b!1137606 (=> (not res!759128) (not e!647362))))

(declare-fun i!673 () (_ BitVec 32))

(declare-fun k!934 () (_ BitVec 64))

(declare-datatypes ((array!73984 0))(
  ( (array!73985 (arr!35639 (Array (_ BitVec 32) (_ BitVec 64))) (size!36176 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!73984)

(assert (=> b!1137606 (= res!759128 (= (select (arr!35639 _keys!1208) i!673) k!934))))

(declare-fun zeroValue!944 () V!43237)

(declare-fun c!111287 () Bool)

(declare-fun bm!50175 () Bool)

(declare-fun call!50179 () Unit!37214)

(declare-fun minValue!944 () V!43237)

(declare-fun lt!505979 () ListLongMap!16193)

(declare-fun addStillContains!765 (ListLongMap!16193 (_ BitVec 64) V!43237 (_ BitVec 64)) Unit!37214)

(assert (=> bm!50175 (= call!50179 (addStillContains!765 lt!505979 (ite (or c!111287 c!111283) #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000) (ite (or c!111287 c!111283) zeroValue!944 minValue!944) k!934))))

(declare-fun b!1137607 () Bool)

(declare-fun res!759124 () Bool)

(assert (=> b!1137607 (=> (not res!759124) (not e!647362))))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-datatypes ((ValueCell!13582 0))(
  ( (ValueCellFull!13582 (v!16986 V!43237)) (EmptyCell!13582) )
))
(declare-datatypes ((array!73986 0))(
  ( (array!73987 (arr!35640 (Array (_ BitVec 32) ValueCell!13582)) (size!36177 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!73986)

(assert (=> b!1137607 (= res!759124 (and (= (size!36177 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!36176 _keys!1208) (size!36177 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1137608 () Bool)

(declare-fun e!647361 () Bool)

(declare-fun e!647355 () Bool)

(assert (=> b!1137608 (= e!647361 e!647355)))

(declare-fun res!759129 () Bool)

(assert (=> b!1137608 (=> res!759129 e!647355)))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> b!1137608 (= res!759129 (not (= from!1455 i!673)))))

(declare-fun lt!505966 () array!73984)

(declare-fun defaultEntry!1004 () Int)

(declare-fun lt!505963 () array!73986)

(declare-fun lt!505972 () ListLongMap!16193)

(declare-fun getCurrentListMapNoExtraKeys!4560 (array!73984 array!73986 (_ BitVec 32) (_ BitVec 32) V!43237 V!43237 (_ BitVec 32) Int) ListLongMap!16193)

(assert (=> b!1137608 (= lt!505972 (getCurrentListMapNoExtraKeys!4560 lt!505966 lt!505963 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun dynLambda!2621 (Int (_ BitVec 64)) V!43237)

(assert (=> b!1137608 (= lt!505963 (array!73987 (store (arr!35640 _values!996) i!673 (ValueCellFull!13582 (dynLambda!2621 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!36177 _values!996)))))

(declare-fun lt!505969 () ListLongMap!16193)

(assert (=> b!1137608 (= lt!505969 (getCurrentListMapNoExtraKeys!4560 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1137609 () Bool)

(declare-fun e!647367 () Bool)

(assert (=> b!1137609 (= e!647367 true)))

(declare-fun lt!505964 () Unit!37214)

(assert (=> b!1137609 (= lt!505964 e!647363)))

(declare-fun c!111288 () Bool)

(declare-fun contains!6623 (ListLongMap!16193 (_ BitVec 64)) Bool)

(assert (=> b!1137609 (= c!111288 (contains!6623 lt!505979 k!934))))

(assert (=> b!1137609 (= lt!505979 (getCurrentListMapNoExtraKeys!4560 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1137610 () Bool)

(declare-fun res!759125 () Bool)

(assert (=> b!1137610 (=> (not res!759125) (not e!647362))))

(assert (=> b!1137610 (= res!759125 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!36176 _keys!1208))))))

(declare-fun bm!50176 () Bool)

(declare-fun call!50181 () Bool)

(declare-fun lt!505976 () ListLongMap!16193)

(assert (=> bm!50176 (= call!50181 (contains!6623 (ite c!111287 lt!505976 call!50177) k!934))))

(declare-fun b!1137611 () Bool)

(assert (=> b!1137611 (= e!647355 e!647367)))

(declare-fun res!759123 () Bool)

(assert (=> b!1137611 (=> res!759123 e!647367)))

(assert (=> b!1137611 (= res!759123 (not (= (select (arr!35639 _keys!1208) from!1455) k!934)))))

(declare-fun e!647370 () Bool)

(assert (=> b!1137611 e!647370))

(declare-fun c!111285 () Bool)

(assert (=> b!1137611 (= c!111285 (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673))))

(declare-fun lt!505973 () Unit!37214)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!477 (array!73984 array!73986 (_ BitVec 32) (_ BitVec 32) V!43237 V!43237 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!37214)

(assert (=> b!1137611 (= lt!505973 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!477 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun e!647357 () Bool)

(declare-fun b!1137612 () Bool)

(declare-fun arrayContainsKey!0 (array!73984 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1137612 (= e!647357 (arrayContainsKey!0 _keys!1208 k!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun call!50183 () ListLongMap!16193)

(declare-fun bm!50177 () Bool)

(assert (=> bm!50177 (= call!50183 (getCurrentListMapNoExtraKeys!4560 lt!505966 lt!505963 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun bm!50178 () Bool)

(declare-fun call!50180 () ListLongMap!16193)

(assert (=> bm!50178 (= call!50180 (getCurrentListMapNoExtraKeys!4560 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun bm!50179 () Bool)

(assert (=> bm!50179 (= call!50182 call!50179)))

(declare-fun b!1137613 () Bool)

(declare-fun e!647358 () Unit!37214)

(assert (=> b!1137613 (= e!647366 e!647358)))

(declare-fun c!111286 () Bool)

(assert (=> b!1137613 (= c!111286 (and (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!505967))))

(declare-fun b!1137614 () Bool)

(declare-fun res!759134 () Bool)

(assert (=> b!1137614 (=> (not res!759134) (not e!647362))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1137614 (= res!759134 (validKeyInArray!0 k!934))))

(declare-fun b!1137615 () Bool)

(declare-fun e!647364 () Bool)

(declare-fun tp_is_empty!28583 () Bool)

(assert (=> b!1137615 (= e!647364 tp_is_empty!28583)))

(declare-fun b!1137616 () Bool)

(declare-fun Unit!37217 () Unit!37214)

(assert (=> b!1137616 (= e!647358 Unit!37217)))

(declare-fun b!1137617 () Bool)

(declare-fun res!759133 () Bool)

(assert (=> b!1137617 (=> (not res!759133) (not e!647362))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1137617 (= res!759133 (validMask!0 mask!1564))))

(declare-fun e!647368 () Bool)

(declare-fun b!1137618 () Bool)

(assert (=> b!1137618 (= e!647368 (ite (= k!934 #b0000000000000000000000000000000000000000000000000000000000000000) (not lt!505967) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!1137619 () Bool)

(declare-fun +!3464 (ListLongMap!16193 tuple2!18212) ListLongMap!16193)

(assert (=> b!1137619 (contains!6623 (+!3464 lt!505976 (tuple2!18213 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944)) k!934)))

(declare-fun lt!505965 () Unit!37214)

(assert (=> b!1137619 (= lt!505965 (addStillContains!765 lt!505976 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944 k!934))))

(assert (=> b!1137619 call!50181))

(assert (=> b!1137619 (= lt!505976 call!50184)))

(declare-fun lt!505974 () Unit!37214)

(assert (=> b!1137619 (= lt!505974 call!50179)))

(assert (=> b!1137619 (= e!647360 lt!505965)))

(declare-fun b!1137620 () Bool)

(declare-fun -!1220 (ListLongMap!16193 (_ BitVec 64)) ListLongMap!16193)

(assert (=> b!1137620 (= e!647370 (= call!50183 (-!1220 call!50180 k!934)))))

(declare-fun b!1137621 () Bool)

(declare-fun res!759122 () Bool)

(declare-fun e!647369 () Bool)

(assert (=> b!1137621 (=> (not res!759122) (not e!647369))))

(declare-datatypes ((List!25021 0))(
  ( (Nil!25018) (Cons!25017 (h!26226 (_ BitVec 64)) (t!36073 List!25021)) )
))
(declare-fun arrayNoDuplicates!0 (array!73984 (_ BitVec 32) List!25021) Bool)

(assert (=> b!1137621 (= res!759122 (arrayNoDuplicates!0 lt!505966 #b00000000000000000000000000000000 Nil!25018))))

(declare-fun b!1137622 () Bool)

(declare-fun Unit!37218 () Unit!37214)

(assert (=> b!1137622 (= e!647363 Unit!37218)))

(assert (=> b!1137622 (= lt!505967 (= (bvand extraKeys!923 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(assert (=> b!1137622 (= c!111287 (and (not lt!505967) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun lt!505978 () Unit!37214)

(assert (=> b!1137622 (= lt!505978 e!647360)))

(declare-fun lt!505980 () Unit!37214)

(declare-fun lemmaListMapContainsThenArrayContainsFrom!370 (array!73984 array!73986 (_ BitVec 32) (_ BitVec 32) V!43237 V!43237 (_ BitVec 64) (_ BitVec 32) Int) Unit!37214)

(assert (=> b!1137622 (= lt!505980 (lemmaListMapContainsThenArrayContainsFrom!370 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun c!111284 () Bool)

(assert (=> b!1137622 (= c!111284 (and (not (= k!934 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!934 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun res!759126 () Bool)

(assert (=> b!1137622 (= res!759126 e!647368)))

(assert (=> b!1137622 (=> (not res!759126) (not e!647357))))

(assert (=> b!1137622 e!647357))

(declare-fun lt!505968 () Unit!37214)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!73984 (_ BitVec 32) (_ BitVec 32)) Unit!37214)

(assert (=> b!1137622 (= lt!505968 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1208 #b00000000000000000000000000000000 from!1455))))

(assert (=> b!1137622 (arrayNoDuplicates!0 _keys!1208 from!1455 Nil!25018)))

(declare-fun lt!505971 () Unit!37214)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!73984 (_ BitVec 64) (_ BitVec 32) List!25021) Unit!37214)

(assert (=> b!1137622 (= lt!505971 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!1208 k!934 from!1455 Nil!25018))))

(assert (=> b!1137622 false))

(declare-fun b!1137623 () Bool)

(assert (=> b!1137623 (= e!647362 e!647369)))

(declare-fun res!759131 () Bool)

(assert (=> b!1137623 (=> (not res!759131) (not e!647369))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!73984 (_ BitVec 32)) Bool)

(assert (=> b!1137623 (= res!759131 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!505966 mask!1564))))

(assert (=> b!1137623 (= lt!505966 (array!73985 (store (arr!35639 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!36176 _keys!1208)))))

(declare-fun mapNonEmpty!44699 () Bool)

(declare-fun mapRes!44699 () Bool)

(declare-fun tp!84870 () Bool)

(assert (=> mapNonEmpty!44699 (= mapRes!44699 (and tp!84870 e!647364))))

(declare-fun mapValue!44699 () ValueCell!13582)

(declare-fun mapRest!44699 () (Array (_ BitVec 32) ValueCell!13582))

(declare-fun mapKey!44699 () (_ BitVec 32))

(assert (=> mapNonEmpty!44699 (= (arr!35640 _values!996) (store mapRest!44699 mapKey!44699 mapValue!44699))))

(declare-fun b!1137624 () Bool)

(declare-fun res!759121 () Bool)

(assert (=> b!1137624 (=> (not res!759121) (not e!647362))))

(assert (=> b!1137624 (= res!759121 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun bm!50180 () Bool)

(assert (=> bm!50180 (= call!50184 (+!3464 lt!505979 (ite (or c!111287 c!111283) (tuple2!18213 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!18213 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944))))))

(declare-fun bm!50181 () Bool)

(assert (=> bm!50181 (= call!50178 call!50181)))

(declare-fun b!1137625 () Bool)

(assert (=> b!1137625 (= e!647369 (not e!647361))))

(declare-fun res!759127 () Bool)

(assert (=> b!1137625 (=> res!759127 e!647361)))

(assert (=> b!1137625 (= res!759127 (bvsgt from!1455 i!673))))

(assert (=> b!1137625 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-fun lt!505970 () Unit!37214)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!73984 (_ BitVec 64) (_ BitVec 32)) Unit!37214)

(assert (=> b!1137625 (= lt!505970 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun b!1137626 () Bool)

(declare-fun res!759130 () Bool)

(assert (=> b!1137626 (=> (not res!759130) (not e!647362))))

(assert (=> b!1137626 (= res!759130 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!25018))))

(declare-fun b!1137627 () Bool)

(assert (=> b!1137627 (= e!647370 (= call!50183 call!50180))))

(declare-fun b!1137628 () Bool)

(assert (=> b!1137628 (= e!647368 (arrayContainsKey!0 _keys!1208 k!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun b!1137629 () Bool)

(assert (=> b!1137629 call!50178))

(declare-fun lt!505977 () Unit!37214)

(assert (=> b!1137629 (= lt!505977 call!50182)))

(assert (=> b!1137629 (= e!647358 lt!505977)))

(declare-fun res!759132 () Bool)

(assert (=> start!98484 (=> (not res!759132) (not e!647362))))

(assert (=> start!98484 (= res!759132 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!36176 _keys!1208))))))

(assert (=> start!98484 e!647362))

(assert (=> start!98484 tp_is_empty!28583))

(declare-fun array_inv!27198 (array!73984) Bool)

(assert (=> start!98484 (array_inv!27198 _keys!1208)))

(assert (=> start!98484 true))

(assert (=> start!98484 tp!84871))

(declare-fun e!647359 () Bool)

(declare-fun array_inv!27199 (array!73986) Bool)

(assert (=> start!98484 (and (array_inv!27199 _values!996) e!647359)))

(declare-fun mapIsEmpty!44699 () Bool)

(assert (=> mapIsEmpty!44699 mapRes!44699))

(declare-fun b!1137630 () Bool)

(declare-fun e!647365 () Bool)

(assert (=> b!1137630 (= e!647359 (and e!647365 mapRes!44699))))

(declare-fun condMapEmpty!44699 () Bool)

(declare-fun mapDefault!44699 () ValueCell!13582)

