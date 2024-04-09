; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!98450 () Bool)

(assert start!98450)

(declare-fun b_free!24019 () Bool)

(declare-fun b_next!24019 () Bool)

(assert (=> start!98450 (= b_free!24019 (not b_next!24019))))

(declare-fun tp!84769 () Bool)

(declare-fun b_and!38901 () Bool)

(assert (=> start!98450 (= tp!84769 b_and!38901)))

(declare-datatypes ((V!43193 0))(
  ( (V!43194 (val!14331 Int)) )
))
(declare-fun zeroValue!944 () V!43193)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-datatypes ((tuple2!18184 0))(
  ( (tuple2!18185 (_1!9102 (_ BitVec 64)) (_2!9102 V!43193)) )
))
(declare-datatypes ((List!24994 0))(
  ( (Nil!24991) (Cons!24990 (h!26199 tuple2!18184) (t!36012 List!24994)) )
))
(declare-datatypes ((ListLongMap!16165 0))(
  ( (ListLongMap!16166 (toList!8098 List!24994)) )
))
(declare-fun call!49770 () ListLongMap!16165)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-datatypes ((array!73920 0))(
  ( (array!73921 (arr!35607 (Array (_ BitVec 32) (_ BitVec 64))) (size!36144 (_ BitVec 32))) )
))
(declare-fun lt!505076 () array!73920)

(declare-fun defaultEntry!1004 () Int)

(declare-datatypes ((ValueCell!13565 0))(
  ( (ValueCellFull!13565 (v!16969 V!43193)) (EmptyCell!13565) )
))
(declare-datatypes ((array!73922 0))(
  ( (array!73923 (arr!35608 (Array (_ BitVec 32) ValueCell!13565)) (size!36145 (_ BitVec 32))) )
))
(declare-fun lt!505061 () array!73922)

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun bm!49766 () Bool)

(declare-fun minValue!944 () V!43193)

(declare-fun getCurrentListMapNoExtraKeys!4546 (array!73920 array!73922 (_ BitVec 32) (_ BitVec 32) V!43193 V!43193 (_ BitVec 32) Int) ListLongMap!16165)

(assert (=> bm!49766 (= call!49770 (getCurrentListMapNoExtraKeys!4546 lt!505076 lt!505061 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1136058 () Bool)

(declare-fun res!758358 () Bool)

(declare-fun e!646534 () Bool)

(assert (=> b!1136058 (=> res!758358 e!646534)))

(declare-datatypes ((List!24995 0))(
  ( (Nil!24992) (Cons!24991 (h!26200 (_ BitVec 64)) (t!36013 List!24995)) )
))
(declare-fun noDuplicate!1620 (List!24995) Bool)

(assert (=> b!1136058 (= res!758358 (not (noDuplicate!1620 Nil!24992)))))

(declare-fun bm!49767 () Bool)

(declare-fun call!49775 () ListLongMap!16165)

(declare-fun call!49769 () ListLongMap!16165)

(assert (=> bm!49767 (= call!49775 call!49769)))

(declare-fun b!1136059 () Bool)

(declare-fun res!758355 () Bool)

(declare-fun e!646531 () Bool)

(assert (=> b!1136059 (=> (not res!758355) (not e!646531))))

(declare-fun arrayNoDuplicates!0 (array!73920 (_ BitVec 32) List!24995) Bool)

(assert (=> b!1136059 (= res!758355 (arrayNoDuplicates!0 lt!505076 #b00000000000000000000000000000000 Nil!24992))))

(declare-fun b!1136060 () Bool)

(declare-fun res!758354 () Bool)

(assert (=> b!1136060 (=> res!758354 e!646534)))

(declare-fun contains!6605 (List!24995 (_ BitVec 64)) Bool)

(assert (=> b!1136060 (= res!758354 (contains!6605 Nil!24992 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun mapIsEmpty!44648 () Bool)

(declare-fun mapRes!44648 () Bool)

(assert (=> mapIsEmpty!44648 mapRes!44648))

(declare-fun b!1136062 () Bool)

(declare-fun e!646538 () Bool)

(declare-fun call!49772 () ListLongMap!16165)

(assert (=> b!1136062 (= e!646538 (= call!49770 call!49772))))

(declare-fun bm!49768 () Bool)

(declare-fun call!49774 () Bool)

(declare-fun call!49771 () Bool)

(assert (=> bm!49768 (= call!49774 call!49771)))

(declare-fun b!1136063 () Bool)

(declare-fun res!758350 () Bool)

(declare-fun e!646527 () Bool)

(assert (=> b!1136063 (=> (not res!758350) (not e!646527))))

(declare-fun _keys!1208 () array!73920)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!73920 (_ BitVec 32)) Bool)

(assert (=> b!1136063 (= res!758350 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun bm!49769 () Bool)

(declare-fun c!110994 () Bool)

(declare-fun k!934 () (_ BitVec 64))

(declare-fun lt!505072 () ListLongMap!16165)

(declare-fun contains!6606 (ListLongMap!16165 (_ BitVec 64)) Bool)

(assert (=> bm!49769 (= call!49771 (contains!6606 (ite c!110994 lt!505072 call!49775) k!934))))

(declare-fun b!1136064 () Bool)

(assert (=> b!1136064 (= e!646534 true)))

(declare-fun lt!505063 () Bool)

(assert (=> b!1136064 (= lt!505063 (contains!6605 Nil!24992 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun bm!49770 () Bool)

(declare-fun c!110993 () Bool)

(declare-fun lt!505067 () ListLongMap!16165)

(declare-fun +!3453 (ListLongMap!16165 tuple2!18184) ListLongMap!16165)

(assert (=> bm!49770 (= call!49769 (+!3453 (ite c!110994 lt!505072 lt!505067) (ite c!110994 (tuple2!18185 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944) (ite c!110993 (tuple2!18185 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!18185 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944)))))))

(declare-datatypes ((Unit!37156 0))(
  ( (Unit!37157) )
))
(declare-fun call!49776 () Unit!37156)

(declare-fun bm!49771 () Bool)

(declare-fun addStillContains!753 (ListLongMap!16165 (_ BitVec 64) V!43193 (_ BitVec 64)) Unit!37156)

(assert (=> bm!49771 (= call!49776 (addStillContains!753 lt!505067 (ite (or c!110994 c!110993) #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000) (ite (or c!110994 c!110993) zeroValue!944 minValue!944) k!934))))

(declare-fun b!1136065 () Bool)

(assert (=> b!1136065 (= e!646527 e!646531)))

(declare-fun res!758346 () Bool)

(assert (=> b!1136065 (=> (not res!758346) (not e!646531))))

(assert (=> b!1136065 (= res!758346 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!505076 mask!1564))))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1136065 (= lt!505076 (array!73921 (store (arr!35607 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!36144 _keys!1208)))))

(declare-fun b!1136066 () Bool)

(declare-fun e!646524 () Bool)

(declare-fun tp_is_empty!28549 () Bool)

(assert (=> b!1136066 (= e!646524 tp_is_empty!28549)))

(declare-fun b!1136067 () Bool)

(declare-fun e!646525 () Bool)

(assert (=> b!1136067 (= e!646525 e!646534)))

(declare-fun res!758349 () Bool)

(assert (=> b!1136067 (=> res!758349 e!646534)))

(assert (=> b!1136067 (= res!758349 (or (bvsge (size!36144 _keys!1208) #b01111111111111111111111111111111) (bvsge (bvadd #b00000000000000000000000000000001 from!1455) (size!36144 _keys!1208)) (bvsge from!1455 (size!36144 _keys!1208))))))

(assert (=> b!1136067 (arrayNoDuplicates!0 _keys!1208 from!1455 Nil!24992)))

(declare-fun lt!505071 () Unit!37156)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!73920 (_ BitVec 32) (_ BitVec 32)) Unit!37156)

(assert (=> b!1136067 (= lt!505071 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1208 #b00000000000000000000000000000000 from!1455))))

(declare-fun e!646526 () Bool)

(assert (=> b!1136067 e!646526))

(declare-fun res!758347 () Bool)

(assert (=> b!1136067 (=> (not res!758347) (not e!646526))))

(declare-fun e!646539 () Bool)

(assert (=> b!1136067 (= res!758347 e!646539)))

(declare-fun c!110995 () Bool)

(assert (=> b!1136067 (= c!110995 (and (not (= k!934 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!934 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun _values!996 () array!73922)

(declare-fun lt!505066 () Unit!37156)

(declare-fun lemmaListMapContainsThenArrayContainsFrom!359 (array!73920 array!73922 (_ BitVec 32) (_ BitVec 32) V!43193 V!43193 (_ BitVec 64) (_ BitVec 32) Int) Unit!37156)

(assert (=> b!1136067 (= lt!505066 (lemmaListMapContainsThenArrayContainsFrom!359 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun lt!505075 () Unit!37156)

(declare-fun e!646528 () Unit!37156)

(assert (=> b!1136067 (= lt!505075 e!646528)))

(declare-fun lt!505073 () Bool)

(assert (=> b!1136067 (= c!110994 (and (not lt!505073) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> b!1136067 (= lt!505073 (= (bvand extraKeys!923 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(declare-fun b!1136068 () Bool)

(declare-fun e!646533 () Bool)

(declare-fun e!646532 () Bool)

(assert (=> b!1136068 (= e!646533 e!646532)))

(declare-fun res!758359 () Bool)

(assert (=> b!1136068 (=> res!758359 e!646532)))

(assert (=> b!1136068 (= res!758359 (not (= (select (arr!35607 _keys!1208) from!1455) k!934)))))

(assert (=> b!1136068 e!646538))

(declare-fun c!110996 () Bool)

(assert (=> b!1136068 (= c!110996 (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673))))

(declare-fun lt!505074 () Unit!37156)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!465 (array!73920 array!73922 (_ BitVec 32) (_ BitVec 32) V!43193 V!43193 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!37156)

(assert (=> b!1136068 (= lt!505074 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!465 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1136069 () Bool)

(declare-fun res!758344 () Bool)

(assert (=> b!1136069 (=> (not res!758344) (not e!646527))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1136069 (= res!758344 (validMask!0 mask!1564))))

(declare-fun b!1136070 () Bool)

(declare-fun e!646530 () Bool)

(assert (=> b!1136070 (= e!646531 (not e!646530))))

(declare-fun res!758357 () Bool)

(assert (=> b!1136070 (=> res!758357 e!646530)))

(assert (=> b!1136070 (= res!758357 (bvsgt from!1455 i!673))))

(declare-fun arrayContainsKey!0 (array!73920 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1136070 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-fun lt!505064 () Unit!37156)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!73920 (_ BitVec 64) (_ BitVec 32)) Unit!37156)

(assert (=> b!1136070 (= lt!505064 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun b!1136071 () Bool)

(declare-fun lt!505069 () Unit!37156)

(assert (=> b!1136071 (= e!646528 lt!505069)))

(declare-fun lt!505065 () Unit!37156)

(assert (=> b!1136071 (= lt!505065 call!49776)))

(assert (=> b!1136071 (= lt!505072 (+!3453 lt!505067 (tuple2!18185 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944)))))

(assert (=> b!1136071 call!49771))

(assert (=> b!1136071 (= lt!505069 (addStillContains!753 lt!505072 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944 k!934))))

(assert (=> b!1136071 (contains!6606 call!49769 k!934)))

(declare-fun b!1136072 () Bool)

(declare-fun c!110997 () Bool)

(assert (=> b!1136072 (= c!110997 (and (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!505073))))

(declare-fun e!646535 () Unit!37156)

(declare-fun e!646529 () Unit!37156)

(assert (=> b!1136072 (= e!646535 e!646529)))

(declare-fun b!1136073 () Bool)

(assert (=> b!1136073 (= e!646526 (arrayContainsKey!0 _keys!1208 k!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun b!1136074 () Bool)

(declare-fun res!758352 () Bool)

(assert (=> b!1136074 (=> (not res!758352) (not e!646527))))

(assert (=> b!1136074 (= res!758352 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!24992))))

(declare-fun b!1136075 () Bool)

(declare-fun res!758353 () Bool)

(assert (=> b!1136075 (=> (not res!758353) (not e!646527))))

(assert (=> b!1136075 (= res!758353 (and (= (size!36145 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!36144 _keys!1208) (size!36145 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1136076 () Bool)

(assert (=> b!1136076 (= e!646539 (arrayContainsKey!0 _keys!1208 k!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun b!1136077 () Bool)

(declare-fun res!758356 () Bool)

(assert (=> b!1136077 (=> (not res!758356) (not e!646527))))

(assert (=> b!1136077 (= res!758356 (= (select (arr!35607 _keys!1208) i!673) k!934))))

(declare-fun b!1136078 () Bool)

(declare-fun lt!505068 () Unit!37156)

(assert (=> b!1136078 (= e!646529 lt!505068)))

(declare-fun call!49773 () Unit!37156)

(assert (=> b!1136078 (= lt!505068 call!49773)))

(assert (=> b!1136078 call!49774))

(declare-fun b!1136079 () Bool)

(declare-fun e!646537 () Bool)

(assert (=> b!1136079 (= e!646537 tp_is_empty!28549)))

(declare-fun bm!49772 () Bool)

(assert (=> bm!49772 (= call!49773 call!49776)))

(declare-fun b!1136080 () Bool)

(assert (=> b!1136080 (= e!646539 (ite (= k!934 #b0000000000000000000000000000000000000000000000000000000000000000) (not lt!505073) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun mapNonEmpty!44648 () Bool)

(declare-fun tp!84768 () Bool)

(assert (=> mapNonEmpty!44648 (= mapRes!44648 (and tp!84768 e!646537))))

(declare-fun mapKey!44648 () (_ BitVec 32))

(declare-fun mapRest!44648 () (Array (_ BitVec 32) ValueCell!13565))

(declare-fun mapValue!44648 () ValueCell!13565)

(assert (=> mapNonEmpty!44648 (= (arr!35608 _values!996) (store mapRest!44648 mapKey!44648 mapValue!44648))))

(declare-fun b!1136081 () Bool)

(declare-fun Unit!37158 () Unit!37156)

(assert (=> b!1136081 (= e!646529 Unit!37158)))

(declare-fun b!1136082 () Bool)

(declare-fun -!1209 (ListLongMap!16165 (_ BitVec 64)) ListLongMap!16165)

(assert (=> b!1136082 (= e!646538 (= call!49770 (-!1209 call!49772 k!934)))))

(declare-fun b!1136083 () Bool)

(assert (=> b!1136083 call!49774))

(declare-fun lt!505077 () Unit!37156)

(assert (=> b!1136083 (= lt!505077 call!49773)))

(assert (=> b!1136083 (= e!646535 lt!505077)))

(declare-fun b!1136084 () Bool)

(assert (=> b!1136084 (= e!646532 e!646525)))

(declare-fun res!758345 () Bool)

(assert (=> b!1136084 (=> res!758345 e!646525)))

(assert (=> b!1136084 (= res!758345 (not (contains!6606 lt!505067 k!934)))))

(assert (=> b!1136084 (= lt!505067 (getCurrentListMapNoExtraKeys!4546 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1136085 () Bool)

(assert (=> b!1136085 (= e!646528 e!646535)))

(assert (=> b!1136085 (= c!110993 (and (not lt!505073) (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1136061 () Bool)

(assert (=> b!1136061 (= e!646530 e!646533)))

(declare-fun res!758351 () Bool)

(assert (=> b!1136061 (=> res!758351 e!646533)))

(assert (=> b!1136061 (= res!758351 (not (= from!1455 i!673)))))

(declare-fun lt!505062 () ListLongMap!16165)

(assert (=> b!1136061 (= lt!505062 (getCurrentListMapNoExtraKeys!4546 lt!505076 lt!505061 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun dynLambda!2610 (Int (_ BitVec 64)) V!43193)

(assert (=> b!1136061 (= lt!505061 (array!73923 (store (arr!35608 _values!996) i!673 (ValueCellFull!13565 (dynLambda!2610 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!36145 _values!996)))))

(declare-fun lt!505070 () ListLongMap!16165)

(assert (=> b!1136061 (= lt!505070 (getCurrentListMapNoExtraKeys!4546 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun res!758348 () Bool)

(assert (=> start!98450 (=> (not res!758348) (not e!646527))))

(assert (=> start!98450 (= res!758348 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!36144 _keys!1208))))))

(assert (=> start!98450 e!646527))

(assert (=> start!98450 tp_is_empty!28549))

(declare-fun array_inv!27176 (array!73920) Bool)

(assert (=> start!98450 (array_inv!27176 _keys!1208)))

(assert (=> start!98450 true))

(assert (=> start!98450 tp!84769))

(declare-fun e!646523 () Bool)

(declare-fun array_inv!27177 (array!73922) Bool)

(assert (=> start!98450 (and (array_inv!27177 _values!996) e!646523)))

(declare-fun bm!49773 () Bool)

(assert (=> bm!49773 (= call!49772 (getCurrentListMapNoExtraKeys!4546 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1136086 () Bool)

(declare-fun res!758343 () Bool)

(assert (=> b!1136086 (=> (not res!758343) (not e!646527))))

(assert (=> b!1136086 (= res!758343 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!36144 _keys!1208))))))

(declare-fun b!1136087 () Bool)

(declare-fun res!758360 () Bool)

(assert (=> b!1136087 (=> (not res!758360) (not e!646527))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1136087 (= res!758360 (validKeyInArray!0 k!934))))

(declare-fun b!1136088 () Bool)

(assert (=> b!1136088 (= e!646523 (and e!646524 mapRes!44648))))

(declare-fun condMapEmpty!44648 () Bool)

(declare-fun mapDefault!44648 () ValueCell!13565)

