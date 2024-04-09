; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!101036 () Bool)

(assert start!101036)

(declare-fun b_free!25999 () Bool)

(declare-fun b_next!25999 () Bool)

(assert (=> start!101036 (= b_free!25999 (not b_next!25999))))

(declare-fun tp!91013 () Bool)

(declare-fun b_and!43089 () Bool)

(assert (=> start!101036 (= tp!91013 b_and!43089)))

(declare-fun b!1209611 () Bool)

(declare-fun e!687030 () Bool)

(declare-fun tp_is_empty!30703 () Bool)

(assert (=> b!1209611 (= e!687030 tp_is_empty!30703)))

(declare-fun lt!549061 () Bool)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun e!687024 () Bool)

(declare-fun k!934 () (_ BitVec 64))

(declare-fun b!1209612 () Bool)

(assert (=> b!1209612 (= e!687024 (ite (= k!934 #b0000000000000000000000000000000000000000000000000000000000000000) (not lt!549061) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!1209613 () Bool)

(declare-fun e!687031 () Bool)

(declare-fun e!687022 () Bool)

(assert (=> b!1209613 (= e!687031 e!687022)))

(declare-fun res!803996 () Bool)

(assert (=> b!1209613 (=> res!803996 e!687022)))

(declare-datatypes ((array!78166 0))(
  ( (array!78167 (arr!37716 (Array (_ BitVec 32) (_ BitVec 64))) (size!38253 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!78166)

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> b!1209613 (= res!803996 (not (= (select (arr!37716 _keys!1208) from!1455) k!934)))))

(declare-fun e!687023 () Bool)

(assert (=> b!1209613 e!687023))

(declare-fun c!119055 () Bool)

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1209613 (= c!119055 (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673))))

(declare-datatypes ((V!46065 0))(
  ( (V!46066 (val!15408 Int)) )
))
(declare-fun zeroValue!944 () V!46065)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-datatypes ((Unit!40012 0))(
  ( (Unit!40013) )
))
(declare-fun lt!549062 () Unit!40012)

(declare-datatypes ((ValueCell!14642 0))(
  ( (ValueCellFull!14642 (v!18060 V!46065)) (EmptyCell!14642) )
))
(declare-datatypes ((array!78168 0))(
  ( (array!78169 (arr!37717 (Array (_ BitVec 32) ValueCell!14642)) (size!38254 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!78168)

(declare-fun minValue!944 () V!46065)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!1074 (array!78166 array!78168 (_ BitVec 32) (_ BitVec 32) V!46065 V!46065 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!40012)

(assert (=> b!1209613 (= lt!549062 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!1074 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun bm!59424 () Bool)

(declare-fun lt!549057 () array!78166)

(declare-datatypes ((tuple2!19916 0))(
  ( (tuple2!19917 (_1!9968 (_ BitVec 64)) (_2!9968 V!46065)) )
))
(declare-datatypes ((List!26737 0))(
  ( (Nil!26734) (Cons!26733 (h!27942 tuple2!19916) (t!39723 List!26737)) )
))
(declare-datatypes ((ListLongMap!17897 0))(
  ( (ListLongMap!17898 (toList!8964 List!26737)) )
))
(declare-fun call!59427 () ListLongMap!17897)

(declare-fun lt!549069 () array!78168)

(declare-fun getCurrentListMapNoExtraKeys!5371 (array!78166 array!78168 (_ BitVec 32) (_ BitVec 32) V!46065 V!46065 (_ BitVec 32) Int) ListLongMap!17897)

(assert (=> bm!59424 (= call!59427 (getCurrentListMapNoExtraKeys!5371 (ite c!119055 lt!549057 _keys!1208) (ite c!119055 lt!549069 _values!996) mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun lt!549070 () ListLongMap!17897)

(declare-fun bm!59425 () Bool)

(declare-fun c!119054 () Bool)

(declare-fun call!59429 () Unit!40012)

(declare-fun c!119058 () Bool)

(declare-fun lt!549067 () ListLongMap!17897)

(declare-fun addStillContains!1056 (ListLongMap!17897 (_ BitVec 64) V!46065 (_ BitVec 64)) Unit!40012)

(assert (=> bm!59425 (= call!59429 (addStillContains!1056 (ite c!119054 lt!549067 lt!549070) (ite c!119054 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!119058 #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000)) (ite c!119054 minValue!944 (ite c!119058 zeroValue!944 minValue!944)) k!934))))

(declare-fun b!1209614 () Bool)

(declare-fun e!687025 () Bool)

(assert (=> b!1209614 (= e!687022 e!687025)))

(declare-fun res!803987 () Bool)

(assert (=> b!1209614 (=> res!803987 e!687025)))

(declare-fun contains!6978 (ListLongMap!17897 (_ BitVec 64)) Bool)

(assert (=> b!1209614 (= res!803987 (not (contains!6978 lt!549070 k!934)))))

(assert (=> b!1209614 (= lt!549070 (getCurrentListMapNoExtraKeys!5371 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1209615 () Bool)

(declare-fun res!803990 () Bool)

(declare-fun e!687033 () Bool)

(assert (=> b!1209615 (=> (not res!803990) (not e!687033))))

(assert (=> b!1209615 (= res!803990 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!38253 _keys!1208))))))

(declare-fun b!1209616 () Bool)

(declare-fun res!803998 () Bool)

(assert (=> b!1209616 (=> (not res!803998) (not e!687033))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!78166 (_ BitVec 32)) Bool)

(assert (=> b!1209616 (= res!803998 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1209617 () Bool)

(declare-fun res!803997 () Bool)

(assert (=> b!1209617 (=> (not res!803997) (not e!687033))))

(assert (=> b!1209617 (= res!803997 (and (= (size!38254 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!38253 _keys!1208) (size!38254 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1209618 () Bool)

(declare-fun e!687020 () Bool)

(declare-fun e!687032 () Bool)

(assert (=> b!1209618 (= e!687020 (not e!687032))))

(declare-fun res!803995 () Bool)

(assert (=> b!1209618 (=> res!803995 e!687032)))

(assert (=> b!1209618 (= res!803995 (bvsgt from!1455 i!673))))

(declare-fun arrayContainsKey!0 (array!78166 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1209618 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-fun lt!549066 () Unit!40012)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!78166 (_ BitVec 64) (_ BitVec 32)) Unit!40012)

(assert (=> b!1209618 (= lt!549066 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun bm!59426 () Bool)

(declare-fun call!59432 () Unit!40012)

(assert (=> bm!59426 (= call!59432 call!59429)))

(declare-fun bm!59427 () Bool)

(declare-fun call!59431 () ListLongMap!17897)

(declare-fun +!3991 (ListLongMap!17897 tuple2!19916) ListLongMap!17897)

(assert (=> bm!59427 (= call!59431 (+!3991 (ite c!119054 lt!549067 lt!549070) (ite c!119054 (tuple2!19917 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944) (ite c!119058 (tuple2!19917 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!19917 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944)))))))

(declare-fun b!1209620 () Bool)

(declare-fun call!59433 () Bool)

(assert (=> b!1209620 call!59433))

(declare-fun lt!549064 () Unit!40012)

(assert (=> b!1209620 (= lt!549064 call!59432)))

(declare-fun e!687034 () Unit!40012)

(assert (=> b!1209620 (= e!687034 lt!549064)))

(declare-fun b!1209621 () Bool)

(assert (=> b!1209621 (= e!687025 true)))

(assert (=> b!1209621 false))

(declare-fun lt!549071 () Unit!40012)

(declare-datatypes ((List!26738 0))(
  ( (Nil!26735) (Cons!26734 (h!27943 (_ BitVec 64)) (t!39724 List!26738)) )
))
(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!78166 (_ BitVec 64) (_ BitVec 32) List!26738) Unit!40012)

(assert (=> b!1209621 (= lt!549071 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!1208 k!934 from!1455 Nil!26735))))

(declare-fun arrayNoDuplicates!0 (array!78166 (_ BitVec 32) List!26738) Bool)

(assert (=> b!1209621 (arrayNoDuplicates!0 _keys!1208 from!1455 Nil!26735)))

(declare-fun lt!549060 () Unit!40012)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!78166 (_ BitVec 32) (_ BitVec 32)) Unit!40012)

(assert (=> b!1209621 (= lt!549060 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1208 #b00000000000000000000000000000000 from!1455))))

(declare-fun e!687026 () Bool)

(assert (=> b!1209621 e!687026))

(declare-fun res!803999 () Bool)

(assert (=> b!1209621 (=> (not res!803999) (not e!687026))))

(assert (=> b!1209621 (= res!803999 e!687024)))

(declare-fun c!119057 () Bool)

(assert (=> b!1209621 (= c!119057 (and (not (= k!934 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!934 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun lt!549059 () Unit!40012)

(declare-fun lemmaListMapContainsThenArrayContainsFrom!593 (array!78166 array!78168 (_ BitVec 32) (_ BitVec 32) V!46065 V!46065 (_ BitVec 64) (_ BitVec 32) Int) Unit!40012)

(assert (=> b!1209621 (= lt!549059 (lemmaListMapContainsThenArrayContainsFrom!593 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun lt!549063 () Unit!40012)

(declare-fun e!687019 () Unit!40012)

(assert (=> b!1209621 (= lt!549063 e!687019)))

(assert (=> b!1209621 (= c!119054 (and (not lt!549061) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> b!1209621 (= lt!549061 (= (bvand extraKeys!923 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(declare-fun b!1209622 () Bool)

(declare-fun res!803985 () Bool)

(assert (=> b!1209622 (=> (not res!803985) (not e!687033))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1209622 (= res!803985 (validKeyInArray!0 k!934))))

(declare-fun b!1209623 () Bool)

(assert (=> b!1209623 (= e!687019 e!687034)))

(assert (=> b!1209623 (= c!119058 (and (not lt!549061) (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1209624 () Bool)

(declare-fun res!803993 () Bool)

(assert (=> b!1209624 (=> (not res!803993) (not e!687020))))

(assert (=> b!1209624 (= res!803993 (arrayNoDuplicates!0 lt!549057 #b00000000000000000000000000000000 Nil!26735))))

(declare-fun b!1209625 () Bool)

(declare-fun res!803991 () Bool)

(assert (=> b!1209625 (=> (not res!803991) (not e!687033))))

(assert (=> b!1209625 (= res!803991 (= (select (arr!37716 _keys!1208) i!673) k!934))))

(declare-fun bm!59428 () Bool)

(declare-fun call!59434 () Bool)

(assert (=> bm!59428 (= call!59433 call!59434)))

(declare-fun b!1209626 () Bool)

(assert (=> b!1209626 (= e!687032 e!687031)))

(declare-fun res!803994 () Bool)

(assert (=> b!1209626 (=> res!803994 e!687031)))

(assert (=> b!1209626 (= res!803994 (not (= from!1455 i!673)))))

(declare-fun lt!549056 () ListLongMap!17897)

(assert (=> b!1209626 (= lt!549056 (getCurrentListMapNoExtraKeys!5371 lt!549057 lt!549069 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun dynLambda!3288 (Int (_ BitVec 64)) V!46065)

(assert (=> b!1209626 (= lt!549069 (array!78169 (store (arr!37717 _values!996) i!673 (ValueCellFull!14642 (dynLambda!3288 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!38254 _values!996)))))

(declare-fun lt!549065 () ListLongMap!17897)

(assert (=> b!1209626 (= lt!549065 (getCurrentListMapNoExtraKeys!5371 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun call!59428 () ListLongMap!17897)

(declare-fun bm!59429 () Bool)

(assert (=> bm!59429 (= call!59434 (contains!6978 (ite c!119054 lt!549067 call!59428) k!934))))

(declare-fun b!1209627 () Bool)

(assert (=> b!1209627 (= e!687033 e!687020)))

(declare-fun res!803988 () Bool)

(assert (=> b!1209627 (=> (not res!803988) (not e!687020))))

(assert (=> b!1209627 (= res!803988 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!549057 mask!1564))))

(assert (=> b!1209627 (= lt!549057 (array!78167 (store (arr!37716 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!38253 _keys!1208)))))

(declare-fun b!1209628 () Bool)

(declare-fun e!687029 () Bool)

(declare-fun mapRes!47923 () Bool)

(assert (=> b!1209628 (= e!687029 (and e!687030 mapRes!47923))))

(declare-fun condMapEmpty!47923 () Bool)

(declare-fun mapDefault!47923 () ValueCell!14642)

