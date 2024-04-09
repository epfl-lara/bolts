; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!101024 () Bool)

(assert start!101024)

(declare-fun b_free!25987 () Bool)

(declare-fun b_next!25987 () Bool)

(assert (=> start!101024 (= b_free!25987 (not b_next!25987))))

(declare-fun tp!90978 () Bool)

(declare-fun b_and!43065 () Bool)

(assert (=> start!101024 (= tp!90978 b_and!43065)))

(declare-fun mapIsEmpty!47905 () Bool)

(declare-fun mapRes!47905 () Bool)

(assert (=> mapIsEmpty!47905 mapRes!47905))

(declare-fun b!1209047 () Bool)

(declare-datatypes ((Unit!39998 0))(
  ( (Unit!39999) )
))
(declare-fun e!686718 () Unit!39998)

(declare-fun lt!548758 () Unit!39998)

(assert (=> b!1209047 (= e!686718 lt!548758)))

(declare-fun lt!548756 () Unit!39998)

(declare-fun call!59289 () Unit!39998)

(assert (=> b!1209047 (= lt!548756 call!59289)))

(declare-datatypes ((V!46049 0))(
  ( (V!46050 (val!15402 Int)) )
))
(declare-datatypes ((tuple2!19908 0))(
  ( (tuple2!19909 (_1!9964 (_ BitVec 64)) (_2!9964 V!46049)) )
))
(declare-datatypes ((List!26729 0))(
  ( (Nil!26726) (Cons!26725 (h!27934 tuple2!19908) (t!39703 List!26729)) )
))
(declare-datatypes ((ListLongMap!17889 0))(
  ( (ListLongMap!17890 (toList!8960 List!26729)) )
))
(declare-fun lt!548752 () ListLongMap!17889)

(declare-fun lt!548750 () ListLongMap!17889)

(declare-fun zeroValue!944 () V!46049)

(declare-fun +!3987 (ListLongMap!17889 tuple2!19908) ListLongMap!17889)

(assert (=> b!1209047 (= lt!548752 (+!3987 lt!548750 (tuple2!19909 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944)))))

(declare-fun call!59284 () Bool)

(assert (=> b!1209047 call!59284))

(declare-fun k!934 () (_ BitVec 64))

(declare-fun minValue!944 () V!46049)

(declare-fun addStillContains!1052 (ListLongMap!17889 (_ BitVec 64) V!46049 (_ BitVec 64)) Unit!39998)

(assert (=> b!1209047 (= lt!548758 (addStillContains!1052 lt!548752 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944 k!934))))

(declare-fun call!59288 () ListLongMap!17889)

(declare-fun contains!6970 (ListLongMap!17889 (_ BitVec 64)) Bool)

(assert (=> b!1209047 (contains!6970 call!59288 k!934)))

(declare-fun b!1209048 () Bool)

(declare-fun e!686723 () Bool)

(declare-fun call!59287 () ListLongMap!17889)

(declare-fun call!59290 () ListLongMap!17889)

(assert (=> b!1209048 (= e!686723 (= call!59287 call!59290))))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun bm!59280 () Bool)

(declare-fun defaultEntry!1004 () Int)

(declare-fun from!1455 () (_ BitVec 32))

(declare-datatypes ((ValueCell!14636 0))(
  ( (ValueCellFull!14636 (v!18054 V!46049)) (EmptyCell!14636) )
))
(declare-datatypes ((array!78144 0))(
  ( (array!78145 (arr!37705 (Array (_ BitVec 32) ValueCell!14636)) (size!38242 (_ BitVec 32))) )
))
(declare-fun lt!548762 () array!78144)

(declare-datatypes ((array!78146 0))(
  ( (array!78147 (arr!37706 (Array (_ BitVec 32) (_ BitVec 64))) (size!38243 (_ BitVec 32))) )
))
(declare-fun lt!548753 () array!78146)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun getCurrentListMapNoExtraKeys!5367 (array!78146 array!78144 (_ BitVec 32) (_ BitVec 32) V!46049 V!46049 (_ BitVec 32) Int) ListLongMap!17889)

(assert (=> bm!59280 (= call!59287 (getCurrentListMapNoExtraKeys!5367 lt!548753 lt!548762 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1209049 () Bool)

(declare-fun res!803672 () Bool)

(declare-fun e!686721 () Bool)

(assert (=> b!1209049 (=> res!803672 e!686721)))

(declare-datatypes ((List!26730 0))(
  ( (Nil!26727) (Cons!26726 (h!27935 (_ BitVec 64)) (t!39704 List!26730)) )
))
(declare-fun contains!6971 (List!26730 (_ BitVec 64)) Bool)

(assert (=> b!1209049 (= res!803672 (contains!6971 Nil!26727 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!686727 () Bool)

(declare-fun lt!548765 () Bool)

(declare-fun b!1209050 () Bool)

(assert (=> b!1209050 (= e!686727 (ite (= k!934 #b0000000000000000000000000000000000000000000000000000000000000000) (not lt!548765) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!1209051 () Bool)

(declare-fun e!686725 () Bool)

(assert (=> b!1209051 (= e!686725 e!686721)))

(declare-fun res!803674 () Bool)

(assert (=> b!1209051 (=> res!803674 e!686721)))

(declare-fun _keys!1208 () array!78146)

(assert (=> b!1209051 (= res!803674 (or (bvsge (size!38243 _keys!1208) #b01111111111111111111111111111111) (bvsge (bvadd #b00000000000000000000000000000001 from!1455) (size!38243 _keys!1208)) (bvsge from!1455 (size!38243 _keys!1208))))))

(declare-fun arrayNoDuplicates!0 (array!78146 (_ BitVec 32) List!26730) Bool)

(assert (=> b!1209051 (arrayNoDuplicates!0 _keys!1208 from!1455 Nil!26727)))

(declare-fun lt!548754 () Unit!39998)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!78146 (_ BitVec 32) (_ BitVec 32)) Unit!39998)

(assert (=> b!1209051 (= lt!548754 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1208 #b00000000000000000000000000000000 from!1455))))

(declare-fun e!686716 () Bool)

(assert (=> b!1209051 e!686716))

(declare-fun res!803679 () Bool)

(assert (=> b!1209051 (=> (not res!803679) (not e!686716))))

(assert (=> b!1209051 (= res!803679 e!686727)))

(declare-fun c!118968 () Bool)

(assert (=> b!1209051 (= c!118968 (and (not (= k!934 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!934 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun lt!548755 () Unit!39998)

(declare-fun _values!996 () array!78144)

(declare-fun lemmaListMapContainsThenArrayContainsFrom!589 (array!78146 array!78144 (_ BitVec 32) (_ BitVec 32) V!46049 V!46049 (_ BitVec 64) (_ BitVec 32) Int) Unit!39998)

(assert (=> b!1209051 (= lt!548755 (lemmaListMapContainsThenArrayContainsFrom!589 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun lt!548764 () Unit!39998)

(assert (=> b!1209051 (= lt!548764 e!686718)))

(declare-fun c!118964 () Bool)

(assert (=> b!1209051 (= c!118964 (and (not lt!548765) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> b!1209051 (= lt!548765 (= (bvand extraKeys!923 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(declare-fun bm!59281 () Bool)

(declare-fun call!59286 () Bool)

(assert (=> bm!59281 (= call!59286 call!59284)))

(declare-fun bm!59282 () Bool)

(assert (=> bm!59282 (= call!59290 (getCurrentListMapNoExtraKeys!5367 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1209052 () Bool)

(declare-fun e!686715 () Bool)

(declare-fun tp_is_empty!30691 () Bool)

(assert (=> b!1209052 (= e!686715 tp_is_empty!30691)))

(declare-fun b!1209053 () Bool)

(assert (=> b!1209053 (= e!686721 true)))

(declare-fun lt!548766 () Bool)

(assert (=> b!1209053 (= lt!548766 (contains!6971 Nil!26727 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun bm!59283 () Bool)

(declare-fun c!118966 () Bool)

(assert (=> bm!59283 (= call!59288 (+!3987 (ite c!118964 lt!548752 lt!548750) (ite c!118964 (tuple2!19909 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944) (ite c!118966 (tuple2!19909 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!19909 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944)))))))

(declare-fun b!1209054 () Bool)

(declare-fun res!803668 () Bool)

(declare-fun e!686719 () Bool)

(assert (=> b!1209054 (=> (not res!803668) (not e!686719))))

(assert (=> b!1209054 (= res!803668 (arrayNoDuplicates!0 lt!548753 #b00000000000000000000000000000000 Nil!26727))))

(declare-fun bm!59284 () Bool)

(declare-fun call!59283 () ListLongMap!17889)

(assert (=> bm!59284 (= call!59283 call!59288)))

(declare-fun b!1209055 () Bool)

(declare-fun res!803675 () Bool)

(declare-fun e!686717 () Bool)

(assert (=> b!1209055 (=> (not res!803675) (not e!686717))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1209055 (= res!803675 (validMask!0 mask!1564))))

(declare-fun b!1209056 () Bool)

(declare-fun -!1864 (ListLongMap!17889 (_ BitVec 64)) ListLongMap!17889)

(assert (=> b!1209056 (= e!686723 (= call!59287 (-!1864 call!59290 k!934)))))

(declare-fun b!1209057 () Bool)

(declare-fun e!686731 () Unit!39998)

(assert (=> b!1209057 (= e!686718 e!686731)))

(assert (=> b!1209057 (= c!118966 (and (not lt!548765) (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1209058 () Bool)

(declare-fun res!803669 () Bool)

(assert (=> b!1209058 (=> (not res!803669) (not e!686717))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1209058 (= res!803669 (validKeyInArray!0 k!934))))

(declare-fun b!1209059 () Bool)

(declare-fun e!686729 () Unit!39998)

(declare-fun lt!548757 () Unit!39998)

(assert (=> b!1209059 (= e!686729 lt!548757)))

(declare-fun call!59285 () Unit!39998)

(assert (=> b!1209059 (= lt!548757 call!59285)))

(assert (=> b!1209059 call!59286))

(declare-fun bm!59285 () Bool)

(assert (=> bm!59285 (= call!59285 call!59289)))

(declare-fun res!803682 () Bool)

(assert (=> start!101024 (=> (not res!803682) (not e!686717))))

(assert (=> start!101024 (= res!803682 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!38243 _keys!1208))))))

(assert (=> start!101024 e!686717))

(assert (=> start!101024 tp_is_empty!30691))

(declare-fun array_inv!28626 (array!78146) Bool)

(assert (=> start!101024 (array_inv!28626 _keys!1208)))

(assert (=> start!101024 true))

(assert (=> start!101024 tp!90978))

(declare-fun e!686722 () Bool)

(declare-fun array_inv!28627 (array!78144) Bool)

(assert (=> start!101024 (and (array_inv!28627 _values!996) e!686722)))

(declare-fun b!1209060 () Bool)

(declare-fun c!118967 () Bool)

(assert (=> b!1209060 (= c!118967 (and (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!548765))))

(assert (=> b!1209060 (= e!686731 e!686729)))

(declare-fun b!1209061 () Bool)

(declare-fun res!803676 () Bool)

(assert (=> b!1209061 (=> res!803676 e!686721)))

(declare-fun noDuplicate!1649 (List!26730) Bool)

(assert (=> b!1209061 (= res!803676 (not (noDuplicate!1649 Nil!26727)))))

(declare-fun mapNonEmpty!47905 () Bool)

(declare-fun tp!90977 () Bool)

(assert (=> mapNonEmpty!47905 (= mapRes!47905 (and tp!90977 e!686715))))

(declare-fun mapKey!47905 () (_ BitVec 32))

(declare-fun mapValue!47905 () ValueCell!14636)

(declare-fun mapRest!47905 () (Array (_ BitVec 32) ValueCell!14636))

(assert (=> mapNonEmpty!47905 (= (arr!37705 _values!996) (store mapRest!47905 mapKey!47905 mapValue!47905))))

(declare-fun b!1209062 () Bool)

(declare-fun res!803667 () Bool)

(assert (=> b!1209062 (=> (not res!803667) (not e!686717))))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1209062 (= res!803667 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!38243 _keys!1208))))))

(declare-fun b!1209063 () Bool)

(assert (=> b!1209063 call!59286))

(declare-fun lt!548761 () Unit!39998)

(assert (=> b!1209063 (= lt!548761 call!59285)))

(assert (=> b!1209063 (= e!686731 lt!548761)))

(declare-fun b!1209064 () Bool)

(declare-fun e!686728 () Bool)

(assert (=> b!1209064 (= e!686728 tp_is_empty!30691)))

(declare-fun b!1209065 () Bool)

(declare-fun e!686720 () Bool)

(declare-fun e!686726 () Bool)

(assert (=> b!1209065 (= e!686720 e!686726)))

(declare-fun res!803681 () Bool)

(assert (=> b!1209065 (=> res!803681 e!686726)))

(assert (=> b!1209065 (= res!803681 (not (= from!1455 i!673)))))

(declare-fun lt!548751 () ListLongMap!17889)

(assert (=> b!1209065 (= lt!548751 (getCurrentListMapNoExtraKeys!5367 lt!548753 lt!548762 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun dynLambda!3284 (Int (_ BitVec 64)) V!46049)

(assert (=> b!1209065 (= lt!548762 (array!78145 (store (arr!37705 _values!996) i!673 (ValueCellFull!14636 (dynLambda!3284 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!38242 _values!996)))))

(declare-fun lt!548759 () ListLongMap!17889)

(assert (=> b!1209065 (= lt!548759 (getCurrentListMapNoExtraKeys!5367 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1209066 () Bool)

(declare-fun e!686730 () Bool)

(assert (=> b!1209066 (= e!686726 e!686730)))

(declare-fun res!803683 () Bool)

(assert (=> b!1209066 (=> res!803683 e!686730)))

(assert (=> b!1209066 (= res!803683 (not (= (select (arr!37706 _keys!1208) from!1455) k!934)))))

(assert (=> b!1209066 e!686723))

(declare-fun c!118965 () Bool)

(assert (=> b!1209066 (= c!118965 (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673))))

(declare-fun lt!548763 () Unit!39998)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!1069 (array!78146 array!78144 (_ BitVec 32) (_ BitVec 32) V!46049 V!46049 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!39998)

(assert (=> b!1209066 (= lt!548763 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!1069 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1209067 () Bool)

(declare-fun Unit!40000 () Unit!39998)

(assert (=> b!1209067 (= e!686729 Unit!40000)))

(declare-fun b!1209068 () Bool)

(declare-fun arrayContainsKey!0 (array!78146 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1209068 (= e!686727 (arrayContainsKey!0 _keys!1208 k!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun bm!59286 () Bool)

(assert (=> bm!59286 (= call!59284 (contains!6970 (ite c!118964 lt!548752 call!59283) k!934))))

(declare-fun b!1209069 () Bool)

(assert (=> b!1209069 (= e!686730 e!686725)))

(declare-fun res!803671 () Bool)

(assert (=> b!1209069 (=> res!803671 e!686725)))

(assert (=> b!1209069 (= res!803671 (not (contains!6970 lt!548750 k!934)))))

(assert (=> b!1209069 (= lt!548750 (getCurrentListMapNoExtraKeys!5367 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1209070 () Bool)

(assert (=> b!1209070 (= e!686716 (arrayContainsKey!0 _keys!1208 k!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun b!1209071 () Bool)

(assert (=> b!1209071 (= e!686719 (not e!686720))))

(declare-fun res!803673 () Bool)

(assert (=> b!1209071 (=> res!803673 e!686720)))

(assert (=> b!1209071 (= res!803673 (bvsgt from!1455 i!673))))

(assert (=> b!1209071 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-fun lt!548760 () Unit!39998)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!78146 (_ BitVec 64) (_ BitVec 32)) Unit!39998)

(assert (=> b!1209071 (= lt!548760 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun bm!59287 () Bool)

(assert (=> bm!59287 (= call!59289 (addStillContains!1052 lt!548750 (ite (or c!118964 c!118966) #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000) (ite (or c!118964 c!118966) zeroValue!944 minValue!944) k!934))))

(declare-fun b!1209072 () Bool)

(declare-fun res!803677 () Bool)

(assert (=> b!1209072 (=> (not res!803677) (not e!686717))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!78146 (_ BitVec 32)) Bool)

(assert (=> b!1209072 (= res!803677 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1209073 () Bool)

(declare-fun res!803680 () Bool)

(assert (=> b!1209073 (=> (not res!803680) (not e!686717))))

(assert (=> b!1209073 (= res!803680 (= (select (arr!37706 _keys!1208) i!673) k!934))))

(declare-fun b!1209074 () Bool)

(declare-fun res!803670 () Bool)

(assert (=> b!1209074 (=> (not res!803670) (not e!686717))))

(assert (=> b!1209074 (= res!803670 (and (= (size!38242 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!38243 _keys!1208) (size!38242 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1209075 () Bool)

(assert (=> b!1209075 (= e!686717 e!686719)))

(declare-fun res!803678 () Bool)

(assert (=> b!1209075 (=> (not res!803678) (not e!686719))))

(assert (=> b!1209075 (= res!803678 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!548753 mask!1564))))

(assert (=> b!1209075 (= lt!548753 (array!78147 (store (arr!37706 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!38243 _keys!1208)))))

(declare-fun b!1209076 () Bool)

(assert (=> b!1209076 (= e!686722 (and e!686728 mapRes!47905))))

(declare-fun condMapEmpty!47905 () Bool)

(declare-fun mapDefault!47905 () ValueCell!14636)

