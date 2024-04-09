; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!101118 () Bool)

(assert start!101118)

(declare-fun b_free!26043 () Bool)

(declare-fun b_next!26043 () Bool)

(assert (=> start!101118 (= b_free!26043 (not b_next!26043))))

(declare-fun tp!91148 () Bool)

(declare-fun b_and!43195 () Bool)

(assert (=> start!101118 (= tp!91148 b_and!43195)))

(declare-datatypes ((V!46123 0))(
  ( (V!46124 (val!15430 Int)) )
))
(declare-fun zeroValue!944 () V!46123)

(declare-fun c!119495 () Bool)

(declare-fun bm!59973 () Bool)

(declare-fun c!119490 () Bool)

(declare-datatypes ((tuple2!19956 0))(
  ( (tuple2!19957 (_1!9988 (_ BitVec 64)) (_2!9988 V!46123)) )
))
(declare-datatypes ((List!26776 0))(
  ( (Nil!26773) (Cons!26772 (h!27981 tuple2!19956) (t!39806 List!26776)) )
))
(declare-datatypes ((ListLongMap!17937 0))(
  ( (ListLongMap!17938 (toList!8984 List!26776)) )
))
(declare-fun call!59979 () ListLongMap!17937)

(declare-fun lt!550462 () ListLongMap!17937)

(declare-fun minValue!944 () V!46123)

(declare-fun +!4011 (ListLongMap!17937 tuple2!19956) ListLongMap!17937)

(assert (=> bm!59973 (= call!59979 (+!4011 lt!550462 (ite (or c!119490 c!119495) (tuple2!19957 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!19957 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944))))))

(declare-fun b!1211756 () Bool)

(declare-fun res!805014 () Bool)

(declare-fun e!688216 () Bool)

(assert (=> b!1211756 (=> (not res!805014) (not e!688216))))

(declare-datatypes ((array!78252 0))(
  ( (array!78253 (arr!37758 (Array (_ BitVec 32) (_ BitVec 64))) (size!38295 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!78252)

(declare-fun i!673 () (_ BitVec 32))

(declare-fun k0!934 () (_ BitVec 64))

(assert (=> b!1211756 (= res!805014 (= (select (arr!37758 _keys!1208) i!673) k0!934))))

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun call!59982 () ListLongMap!17937)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-datatypes ((ValueCell!14664 0))(
  ( (ValueCellFull!14664 (v!18083 V!46123)) (EmptyCell!14664) )
))
(declare-datatypes ((array!78254 0))(
  ( (array!78255 (arr!37759 (Array (_ BitVec 32) ValueCell!14664)) (size!38296 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!78254)

(declare-fun bm!59974 () Bool)

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun getCurrentListMapNoExtraKeys!5389 (array!78252 array!78254 (_ BitVec 32) (_ BitVec 32) V!46123 V!46123 (_ BitVec 32) Int) ListLongMap!17937)

(assert (=> bm!59974 (= call!59982 (getCurrentListMapNoExtraKeys!5389 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun bm!59975 () Bool)

(declare-fun call!59976 () Bool)

(declare-fun call!59981 () Bool)

(assert (=> bm!59975 (= call!59976 call!59981)))

(declare-fun b!1211757 () Bool)

(declare-fun e!688210 () Bool)

(declare-fun e!688212 () Bool)

(assert (=> b!1211757 (= e!688210 (not e!688212))))

(declare-fun res!805011 () Bool)

(assert (=> b!1211757 (=> res!805011 e!688212)))

(assert (=> b!1211757 (= res!805011 (bvsgt from!1455 i!673))))

(declare-fun arrayContainsKey!0 (array!78252 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1211757 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!40096 0))(
  ( (Unit!40097) )
))
(declare-fun lt!550478 () Unit!40096)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!78252 (_ BitVec 64) (_ BitVec 32)) Unit!40096)

(assert (=> b!1211757 (= lt!550478 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun bm!59976 () Bool)

(declare-fun call!59977 () Unit!40096)

(declare-fun call!59980 () Unit!40096)

(assert (=> bm!59976 (= call!59977 call!59980)))

(declare-fun b!1211758 () Bool)

(assert (=> b!1211758 (= e!688216 e!688210)))

(declare-fun res!805018 () Bool)

(assert (=> b!1211758 (=> (not res!805018) (not e!688210))))

(declare-fun lt!550468 () array!78252)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!78252 (_ BitVec 32)) Bool)

(assert (=> b!1211758 (= res!805018 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!550468 mask!1564))))

(assert (=> b!1211758 (= lt!550468 (array!78253 (store (arr!37758 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!38295 _keys!1208)))))

(declare-fun b!1211759 () Bool)

(declare-fun e!688220 () Unit!40096)

(declare-fun Unit!40098 () Unit!40096)

(assert (=> b!1211759 (= e!688220 Unit!40098)))

(declare-fun lt!550474 () Bool)

(assert (=> b!1211759 (= lt!550474 (= (bvand extraKeys!923 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(assert (=> b!1211759 (= c!119490 (and (not lt!550474) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun lt!550477 () Unit!40096)

(declare-fun e!688213 () Unit!40096)

(assert (=> b!1211759 (= lt!550477 e!688213)))

(declare-fun lt!550463 () Unit!40096)

(declare-fun lemmaListMapContainsThenArrayContainsFrom!608 (array!78252 array!78254 (_ BitVec 32) (_ BitVec 32) V!46123 V!46123 (_ BitVec 64) (_ BitVec 32) Int) Unit!40096)

(assert (=> b!1211759 (= lt!550463 (lemmaListMapContainsThenArrayContainsFrom!608 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun c!119493 () Bool)

(assert (=> b!1211759 (= c!119493 (and (not (= k0!934 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!934 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun res!805017 () Bool)

(declare-fun e!688214 () Bool)

(assert (=> b!1211759 (= res!805017 e!688214)))

(declare-fun e!688219 () Bool)

(assert (=> b!1211759 (=> (not res!805017) (not e!688219))))

(assert (=> b!1211759 e!688219))

(declare-fun lt!550459 () Unit!40096)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!78252 (_ BitVec 32) (_ BitVec 32)) Unit!40096)

(assert (=> b!1211759 (= lt!550459 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1208 #b00000000000000000000000000000000 from!1455))))

(declare-datatypes ((List!26777 0))(
  ( (Nil!26774) (Cons!26773 (h!27982 (_ BitVec 64)) (t!39807 List!26777)) )
))
(declare-fun arrayNoDuplicates!0 (array!78252 (_ BitVec 32) List!26777) Bool)

(assert (=> b!1211759 (arrayNoDuplicates!0 _keys!1208 from!1455 Nil!26774)))

(declare-fun lt!550464 () Unit!40096)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!78252 (_ BitVec 64) (_ BitVec 32) List!26777) Unit!40096)

(assert (=> b!1211759 (= lt!550464 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!1208 k0!934 from!1455 Nil!26774))))

(assert (=> b!1211759 false))

(declare-fun e!688218 () Bool)

(declare-fun call!59983 () ListLongMap!17937)

(declare-fun b!1211760 () Bool)

(declare-fun -!1881 (ListLongMap!17937 (_ BitVec 64)) ListLongMap!17937)

(assert (=> b!1211760 (= e!688218 (= call!59983 (-!1881 call!59982 k0!934)))))

(declare-fun res!805007 () Bool)

(assert (=> start!101118 (=> (not res!805007) (not e!688216))))

(assert (=> start!101118 (= res!805007 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!38295 _keys!1208))))))

(assert (=> start!101118 e!688216))

(declare-fun tp_is_empty!30747 () Bool)

(assert (=> start!101118 tp_is_empty!30747))

(declare-fun array_inv!28658 (array!78252) Bool)

(assert (=> start!101118 (array_inv!28658 _keys!1208)))

(assert (=> start!101118 true))

(assert (=> start!101118 tp!91148))

(declare-fun e!688209 () Bool)

(declare-fun array_inv!28659 (array!78254) Bool)

(assert (=> start!101118 (and (array_inv!28659 _values!996) e!688209)))

(declare-fun b!1211761 () Bool)

(declare-fun e!688217 () Unit!40096)

(declare-fun lt!550466 () Unit!40096)

(assert (=> b!1211761 (= e!688217 lt!550466)))

(assert (=> b!1211761 (= lt!550466 call!59977)))

(assert (=> b!1211761 call!59976))

(declare-fun b!1211762 () Bool)

(assert (=> b!1211762 call!59976))

(declare-fun lt!550472 () Unit!40096)

(assert (=> b!1211762 (= lt!550472 call!59977)))

(declare-fun e!688208 () Unit!40096)

(assert (=> b!1211762 (= e!688208 lt!550472)))

(declare-fun b!1211763 () Bool)

(assert (=> b!1211763 (= e!688214 (ite (= k0!934 #b0000000000000000000000000000000000000000000000000000000000000000) (not lt!550474) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!1211764 () Bool)

(assert (=> b!1211764 (= e!688214 (arrayContainsKey!0 _keys!1208 k0!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun b!1211765 () Bool)

(assert (=> b!1211765 (= e!688218 (= call!59983 call!59982))))

(declare-fun b!1211766 () Bool)

(assert (=> b!1211766 (= c!119495 (and (not lt!550474) (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(assert (=> b!1211766 (= e!688213 e!688217)))

(declare-fun b!1211767 () Bool)

(declare-fun Unit!40099 () Unit!40096)

(assert (=> b!1211767 (= e!688220 Unit!40099)))

(declare-fun lt!550470 () array!78254)

(declare-fun e!688223 () Bool)

(declare-fun b!1211768 () Bool)

(declare-fun lt!550479 () ListLongMap!17937)

(assert (=> b!1211768 (= e!688223 (= lt!550479 (getCurrentListMapNoExtraKeys!5389 lt!550468 lt!550470 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004)))))

(assert (=> b!1211768 (= lt!550479 lt!550462)))

(declare-fun lt!550473 () ListLongMap!17937)

(assert (=> b!1211768 (= lt!550479 (-!1881 lt!550473 k0!934))))

(declare-fun lt!550467 () V!46123)

(assert (=> b!1211768 (= (-!1881 (+!4011 lt!550462 (tuple2!19957 (select (arr!37758 _keys!1208) from!1455) lt!550467)) (select (arr!37758 _keys!1208) from!1455)) lt!550462)))

(declare-fun lt!550471 () Unit!40096)

(declare-fun addThenRemoveForNewKeyIsSame!282 (ListLongMap!17937 (_ BitVec 64) V!46123) Unit!40096)

(assert (=> b!1211768 (= lt!550471 (addThenRemoveForNewKeyIsSame!282 lt!550462 (select (arr!37758 _keys!1208) from!1455) lt!550467))))

(declare-fun lt!550465 () V!46123)

(declare-fun get!19286 (ValueCell!14664 V!46123) V!46123)

(assert (=> b!1211768 (= lt!550467 (get!19286 (select (arr!37759 _values!996) from!1455) lt!550465))))

(declare-fun lt!550460 () Unit!40096)

(assert (=> b!1211768 (= lt!550460 e!688220)))

(declare-fun c!119492 () Bool)

(declare-fun contains!6999 (ListLongMap!17937 (_ BitVec 64)) Bool)

(assert (=> b!1211768 (= c!119492 (contains!6999 lt!550462 k0!934))))

(assert (=> b!1211768 (= lt!550462 (getCurrentListMapNoExtraKeys!5389 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1211769 () Bool)

(declare-fun res!805020 () Bool)

(assert (=> b!1211769 (=> (not res!805020) (not e!688216))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1211769 (= res!805020 (validKeyInArray!0 k0!934))))

(declare-fun bm!59977 () Bool)

(assert (=> bm!59977 (= call!59983 (getCurrentListMapNoExtraKeys!5389 lt!550468 lt!550470 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1211770 () Bool)

(declare-fun res!805015 () Bool)

(assert (=> b!1211770 (=> (not res!805015) (not e!688216))))

(assert (=> b!1211770 (= res!805015 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!38295 _keys!1208))))))

(declare-fun b!1211771 () Bool)

(declare-fun e!688215 () Bool)

(assert (=> b!1211771 (= e!688215 tp_is_empty!30747)))

(declare-fun b!1211772 () Bool)

(declare-fun lt!550475 () ListLongMap!17937)

(assert (=> b!1211772 (contains!6999 (+!4011 lt!550475 (tuple2!19957 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944)) k0!934)))

(declare-fun lt!550480 () Unit!40096)

(assert (=> b!1211772 (= lt!550480 call!59980)))

(assert (=> b!1211772 call!59981))

(assert (=> b!1211772 (= lt!550475 call!59979)))

(declare-fun lt!550476 () Unit!40096)

(declare-fun addStillContains!1071 (ListLongMap!17937 (_ BitVec 64) V!46123 (_ BitVec 64)) Unit!40096)

(assert (=> b!1211772 (= lt!550476 (addStillContains!1071 lt!550462 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944 k0!934))))

(assert (=> b!1211772 (= e!688213 lt!550480)))

(declare-fun call!59978 () ListLongMap!17937)

(declare-fun bm!59978 () Bool)

(assert (=> bm!59978 (= call!59981 (contains!6999 (ite c!119490 lt!550475 call!59978) k0!934))))

(declare-fun b!1211773 () Bool)

(declare-fun res!805013 () Bool)

(assert (=> b!1211773 (=> (not res!805013) (not e!688216))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1211773 (= res!805013 (validMask!0 mask!1564))))

(declare-fun bm!59979 () Bool)

(assert (=> bm!59979 (= call!59980 (addStillContains!1071 (ite c!119490 lt!550475 lt!550462) (ite c!119490 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!119495 #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000)) (ite c!119490 minValue!944 (ite c!119495 zeroValue!944 minValue!944)) k0!934))))

(declare-fun b!1211774 () Bool)

(declare-fun e!688222 () Bool)

(assert (=> b!1211774 (= e!688212 e!688222)))

(declare-fun res!805016 () Bool)

(assert (=> b!1211774 (=> res!805016 e!688222)))

(assert (=> b!1211774 (= res!805016 (not (= from!1455 i!673)))))

(declare-fun lt!550461 () ListLongMap!17937)

(assert (=> b!1211774 (= lt!550461 (getCurrentListMapNoExtraKeys!5389 lt!550468 lt!550470 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(assert (=> b!1211774 (= lt!550470 (array!78255 (store (arr!37759 _values!996) i!673 (ValueCellFull!14664 lt!550465)) (size!38296 _values!996)))))

(declare-fun dynLambda!3303 (Int (_ BitVec 64)) V!46123)

(assert (=> b!1211774 (= lt!550465 (dynLambda!3303 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1211774 (= lt!550473 (getCurrentListMapNoExtraKeys!5389 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1211775 () Bool)

(assert (=> b!1211775 (= e!688222 e!688223)))

(declare-fun res!805019 () Bool)

(assert (=> b!1211775 (=> res!805019 e!688223)))

(assert (=> b!1211775 (= res!805019 (not (= (select (arr!37758 _keys!1208) from!1455) k0!934)))))

(assert (=> b!1211775 e!688218))

(declare-fun c!119491 () Bool)

(assert (=> b!1211775 (= c!119491 (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673))))

(declare-fun lt!550469 () Unit!40096)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!1089 (array!78252 array!78254 (_ BitVec 32) (_ BitVec 32) V!46123 V!46123 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!40096)

(assert (=> b!1211775 (= lt!550469 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!1089 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1211776 () Bool)

(declare-fun mapRes!47992 () Bool)

(assert (=> b!1211776 (= e!688209 (and e!688215 mapRes!47992))))

(declare-fun condMapEmpty!47992 () Bool)

(declare-fun mapDefault!47992 () ValueCell!14664)

(assert (=> b!1211776 (= condMapEmpty!47992 (= (arr!37759 _values!996) ((as const (Array (_ BitVec 32) ValueCell!14664)) mapDefault!47992)))))

(declare-fun b!1211777 () Bool)

(assert (=> b!1211777 (= e!688217 e!688208)))

(declare-fun c!119494 () Bool)

(assert (=> b!1211777 (= c!119494 (and (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!550474))))

(declare-fun b!1211778 () Bool)

(declare-fun e!688211 () Bool)

(assert (=> b!1211778 (= e!688211 tp_is_empty!30747)))

(declare-fun b!1211779 () Bool)

(declare-fun res!805008 () Bool)

(assert (=> b!1211779 (=> (not res!805008) (not e!688216))))

(assert (=> b!1211779 (= res!805008 (and (= (size!38296 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!38295 _keys!1208) (size!38296 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1211780 () Bool)

(declare-fun res!805009 () Bool)

(assert (=> b!1211780 (=> (not res!805009) (not e!688210))))

(assert (=> b!1211780 (= res!805009 (arrayNoDuplicates!0 lt!550468 #b00000000000000000000000000000000 Nil!26774))))

(declare-fun b!1211781 () Bool)

(declare-fun Unit!40100 () Unit!40096)

(assert (=> b!1211781 (= e!688208 Unit!40100)))

(declare-fun bm!59980 () Bool)

(assert (=> bm!59980 (= call!59978 call!59979)))

(declare-fun b!1211782 () Bool)

(declare-fun res!805010 () Bool)

(assert (=> b!1211782 (=> (not res!805010) (not e!688216))))

(assert (=> b!1211782 (= res!805010 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1211783 () Bool)

(declare-fun res!805012 () Bool)

(assert (=> b!1211783 (=> (not res!805012) (not e!688216))))

(assert (=> b!1211783 (= res!805012 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!26774))))

(declare-fun mapIsEmpty!47992 () Bool)

(assert (=> mapIsEmpty!47992 mapRes!47992))

(declare-fun mapNonEmpty!47992 () Bool)

(declare-fun tp!91149 () Bool)

(assert (=> mapNonEmpty!47992 (= mapRes!47992 (and tp!91149 e!688211))))

(declare-fun mapValue!47992 () ValueCell!14664)

(declare-fun mapKey!47992 () (_ BitVec 32))

(declare-fun mapRest!47992 () (Array (_ BitVec 32) ValueCell!14664))

(assert (=> mapNonEmpty!47992 (= (arr!37759 _values!996) (store mapRest!47992 mapKey!47992 mapValue!47992))))

(declare-fun b!1211784 () Bool)

(assert (=> b!1211784 (= e!688219 (arrayContainsKey!0 _keys!1208 k0!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(assert (= (and start!101118 res!805007) b!1211773))

(assert (= (and b!1211773 res!805013) b!1211779))

(assert (= (and b!1211779 res!805008) b!1211782))

(assert (= (and b!1211782 res!805010) b!1211783))

(assert (= (and b!1211783 res!805012) b!1211770))

(assert (= (and b!1211770 res!805015) b!1211769))

(assert (= (and b!1211769 res!805020) b!1211756))

(assert (= (and b!1211756 res!805014) b!1211758))

(assert (= (and b!1211758 res!805018) b!1211780))

(assert (= (and b!1211780 res!805009) b!1211757))

(assert (= (and b!1211757 (not res!805011)) b!1211774))

(assert (= (and b!1211774 (not res!805016)) b!1211775))

(assert (= (and b!1211775 c!119491) b!1211760))

(assert (= (and b!1211775 (not c!119491)) b!1211765))

(assert (= (or b!1211760 b!1211765) bm!59977))

(assert (= (or b!1211760 b!1211765) bm!59974))

(assert (= (and b!1211775 (not res!805019)) b!1211768))

(assert (= (and b!1211768 c!119492) b!1211759))

(assert (= (and b!1211768 (not c!119492)) b!1211767))

(assert (= (and b!1211759 c!119490) b!1211772))

(assert (= (and b!1211759 (not c!119490)) b!1211766))

(assert (= (and b!1211766 c!119495) b!1211761))

(assert (= (and b!1211766 (not c!119495)) b!1211777))

(assert (= (and b!1211777 c!119494) b!1211762))

(assert (= (and b!1211777 (not c!119494)) b!1211781))

(assert (= (or b!1211761 b!1211762) bm!59976))

(assert (= (or b!1211761 b!1211762) bm!59980))

(assert (= (or b!1211761 b!1211762) bm!59975))

(assert (= (or b!1211772 bm!59975) bm!59978))

(assert (= (or b!1211772 bm!59976) bm!59979))

(assert (= (or b!1211772 bm!59980) bm!59973))

(assert (= (and b!1211759 c!119493) b!1211764))

(assert (= (and b!1211759 (not c!119493)) b!1211763))

(assert (= (and b!1211759 res!805017) b!1211784))

(assert (= (and b!1211776 condMapEmpty!47992) mapIsEmpty!47992))

(assert (= (and b!1211776 (not condMapEmpty!47992)) mapNonEmpty!47992))

(get-info :version)

(assert (= (and mapNonEmpty!47992 ((_ is ValueCellFull!14664) mapValue!47992)) b!1211778))

(assert (= (and b!1211776 ((_ is ValueCellFull!14664) mapDefault!47992)) b!1211771))

(assert (= start!101118 b!1211776))

(declare-fun b_lambda!21691 () Bool)

(assert (=> (not b_lambda!21691) (not b!1211774)))

(declare-fun t!39805 () Bool)

(declare-fun tb!10851 () Bool)

(assert (=> (and start!101118 (= defaultEntry!1004 defaultEntry!1004) t!39805) tb!10851))

(declare-fun result!22289 () Bool)

(assert (=> tb!10851 (= result!22289 tp_is_empty!30747)))

(assert (=> b!1211774 t!39805))

(declare-fun b_and!43197 () Bool)

(assert (= b_and!43195 (and (=> t!39805 result!22289) b_and!43197)))

(declare-fun m!1117205 () Bool)

(assert (=> b!1211780 m!1117205))

(declare-fun m!1117207 () Bool)

(assert (=> bm!59974 m!1117207))

(declare-fun m!1117209 () Bool)

(assert (=> b!1211759 m!1117209))

(declare-fun m!1117211 () Bool)

(assert (=> b!1211759 m!1117211))

(declare-fun m!1117213 () Bool)

(assert (=> b!1211759 m!1117213))

(declare-fun m!1117215 () Bool)

(assert (=> b!1211759 m!1117215))

(declare-fun m!1117217 () Bool)

(assert (=> b!1211773 m!1117217))

(declare-fun m!1117219 () Bool)

(assert (=> b!1211772 m!1117219))

(assert (=> b!1211772 m!1117219))

(declare-fun m!1117221 () Bool)

(assert (=> b!1211772 m!1117221))

(declare-fun m!1117223 () Bool)

(assert (=> b!1211772 m!1117223))

(declare-fun m!1117225 () Bool)

(assert (=> mapNonEmpty!47992 m!1117225))

(declare-fun m!1117227 () Bool)

(assert (=> bm!59977 m!1117227))

(declare-fun m!1117229 () Bool)

(assert (=> b!1211758 m!1117229))

(declare-fun m!1117231 () Bool)

(assert (=> b!1211758 m!1117231))

(declare-fun m!1117233 () Bool)

(assert (=> b!1211769 m!1117233))

(declare-fun m!1117235 () Bool)

(assert (=> b!1211764 m!1117235))

(declare-fun m!1117237 () Bool)

(assert (=> bm!59979 m!1117237))

(declare-fun m!1117239 () Bool)

(assert (=> b!1211760 m!1117239))

(declare-fun m!1117241 () Bool)

(assert (=> b!1211782 m!1117241))

(declare-fun m!1117243 () Bool)

(assert (=> b!1211757 m!1117243))

(declare-fun m!1117245 () Bool)

(assert (=> b!1211757 m!1117245))

(declare-fun m!1117247 () Bool)

(assert (=> b!1211775 m!1117247))

(declare-fun m!1117249 () Bool)

(assert (=> b!1211775 m!1117249))

(declare-fun m!1117251 () Bool)

(assert (=> b!1211756 m!1117251))

(declare-fun m!1117253 () Bool)

(assert (=> bm!59978 m!1117253))

(declare-fun m!1117255 () Bool)

(assert (=> b!1211783 m!1117255))

(declare-fun m!1117257 () Bool)

(assert (=> b!1211774 m!1117257))

(declare-fun m!1117259 () Bool)

(assert (=> b!1211774 m!1117259))

(declare-fun m!1117261 () Bool)

(assert (=> b!1211774 m!1117261))

(declare-fun m!1117263 () Bool)

(assert (=> b!1211774 m!1117263))

(declare-fun m!1117265 () Bool)

(assert (=> bm!59973 m!1117265))

(assert (=> b!1211784 m!1117235))

(declare-fun m!1117267 () Bool)

(assert (=> start!101118 m!1117267))

(declare-fun m!1117269 () Bool)

(assert (=> start!101118 m!1117269))

(assert (=> b!1211768 m!1117207))

(assert (=> b!1211768 m!1117247))

(declare-fun m!1117271 () Bool)

(assert (=> b!1211768 m!1117271))

(declare-fun m!1117273 () Bool)

(assert (=> b!1211768 m!1117273))

(declare-fun m!1117275 () Bool)

(assert (=> b!1211768 m!1117275))

(declare-fun m!1117277 () Bool)

(assert (=> b!1211768 m!1117277))

(assert (=> b!1211768 m!1117247))

(declare-fun m!1117279 () Bool)

(assert (=> b!1211768 m!1117279))

(assert (=> b!1211768 m!1117273))

(assert (=> b!1211768 m!1117227))

(declare-fun m!1117281 () Bool)

(assert (=> b!1211768 m!1117281))

(assert (=> b!1211768 m!1117247))

(declare-fun m!1117283 () Bool)

(assert (=> b!1211768 m!1117283))

(assert (=> b!1211768 m!1117281))

(check-sat (not b!1211782) (not b_next!26043) (not b!1211758) (not b!1211775) (not b!1211764) (not bm!59977) (not b!1211784) (not b_lambda!21691) (not bm!59974) (not bm!59973) (not b!1211757) b_and!43197 (not start!101118) (not bm!59979) (not b!1211773) (not b!1211760) (not b!1211772) (not b!1211783) (not b!1211769) (not bm!59978) (not mapNonEmpty!47992) (not b!1211759) (not b!1211780) tp_is_empty!30747 (not b!1211768) (not b!1211774))
(check-sat b_and!43197 (not b_next!26043))
