; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!98098 () Bool)

(assert start!98098)

(declare-fun b_free!23763 () Bool)

(declare-fun b_next!23763 () Bool)

(assert (=> start!98098 (= b_free!23763 (not b_next!23763))))

(declare-fun tp!83994 () Bool)

(declare-fun b_and!38331 () Bool)

(assert (=> start!98098 (= tp!83994 b_and!38331)))

(declare-fun b!1125928 () Bool)

(declare-fun e!640934 () Bool)

(assert (=> b!1125928 (= e!640934 true)))

(declare-datatypes ((V!42851 0))(
  ( (V!42852 (val!14203 Int)) )
))
(declare-fun zeroValue!944 () V!42851)

(declare-datatypes ((array!73408 0))(
  ( (array!73409 (arr!35353 (Array (_ BitVec 32) (_ BitVec 64))) (size!35890 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!73408)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-fun k0!934 () (_ BitVec 64))

(declare-fun from!1455 () (_ BitVec 32))

(declare-datatypes ((ValueCell!13437 0))(
  ( (ValueCellFull!13437 (v!16837 V!42851)) (EmptyCell!13437) )
))
(declare-datatypes ((array!73410 0))(
  ( (array!73411 (arr!35354 (Array (_ BitVec 32) ValueCell!13437)) (size!35891 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!73410)

(declare-fun minValue!944 () V!42851)

(declare-fun lt!500020 () Bool)

(declare-datatypes ((tuple2!17938 0))(
  ( (tuple2!17939 (_1!8979 (_ BitVec 64)) (_2!8979 V!42851)) )
))
(declare-datatypes ((List!24765 0))(
  ( (Nil!24762) (Cons!24761 (h!25970 tuple2!17938) (t!35527 List!24765)) )
))
(declare-datatypes ((ListLongMap!15919 0))(
  ( (ListLongMap!15920 (toList!7975 List!24765)) )
))
(declare-fun contains!6484 (ListLongMap!15919 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMapNoExtraKeys!4434 (array!73408 array!73410 (_ BitVec 32) (_ BitVec 32) V!42851 V!42851 (_ BitVec 32) Int) ListLongMap!15919)

(assert (=> b!1125928 (= lt!500020 (contains!6484 (getCurrentListMapNoExtraKeys!4434 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004) k0!934))))

(declare-fun b!1125929 () Bool)

(declare-fun e!640939 () Bool)

(assert (=> b!1125929 (= e!640939 e!640934)))

(declare-fun res!752446 () Bool)

(assert (=> b!1125929 (=> res!752446 e!640934)))

(assert (=> b!1125929 (= res!752446 (not (= (select (arr!35353 _keys!1208) from!1455) k0!934)))))

(declare-fun e!640937 () Bool)

(assert (=> b!1125929 e!640937))

(declare-fun c!109595 () Bool)

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1125929 (= c!109595 (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673))))

(declare-datatypes ((Unit!36843 0))(
  ( (Unit!36844) )
))
(declare-fun lt!500023 () Unit!36843)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!373 (array!73408 array!73410 (_ BitVec 32) (_ BitVec 32) V!42851 V!42851 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!36843)

(assert (=> b!1125929 (= lt!500023 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!373 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun call!47573 () ListLongMap!15919)

(declare-fun call!47572 () ListLongMap!15919)

(declare-fun b!1125930 () Bool)

(declare-fun -!1119 (ListLongMap!15919 (_ BitVec 64)) ListLongMap!15919)

(assert (=> b!1125930 (= e!640937 (= call!47573 (-!1119 call!47572 k0!934)))))

(declare-fun res!752450 () Bool)

(declare-fun e!640943 () Bool)

(assert (=> start!98098 (=> (not res!752450) (not e!640943))))

(assert (=> start!98098 (= res!752450 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!35890 _keys!1208))))))

(assert (=> start!98098 e!640943))

(declare-fun tp_is_empty!28293 () Bool)

(assert (=> start!98098 tp_is_empty!28293))

(declare-fun array_inv!27006 (array!73408) Bool)

(assert (=> start!98098 (array_inv!27006 _keys!1208)))

(assert (=> start!98098 true))

(assert (=> start!98098 tp!83994))

(declare-fun e!640941 () Bool)

(declare-fun array_inv!27007 (array!73410) Bool)

(assert (=> start!98098 (and (array_inv!27007 _values!996) e!640941)))

(declare-fun mapNonEmpty!44257 () Bool)

(declare-fun mapRes!44257 () Bool)

(declare-fun tp!83993 () Bool)

(declare-fun e!640942 () Bool)

(assert (=> mapNonEmpty!44257 (= mapRes!44257 (and tp!83993 e!640942))))

(declare-fun mapRest!44257 () (Array (_ BitVec 32) ValueCell!13437))

(declare-fun mapKey!44257 () (_ BitVec 32))

(declare-fun mapValue!44257 () ValueCell!13437)

(assert (=> mapNonEmpty!44257 (= (arr!35354 _values!996) (store mapRest!44257 mapKey!44257 mapValue!44257))))

(declare-fun b!1125931 () Bool)

(declare-fun res!752442 () Bool)

(assert (=> b!1125931 (=> (not res!752442) (not e!640943))))

(assert (=> b!1125931 (= res!752442 (and (= (size!35891 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!35890 _keys!1208) (size!35891 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1125932 () Bool)

(declare-fun res!752440 () Bool)

(declare-fun e!640936 () Bool)

(assert (=> b!1125932 (=> (not res!752440) (not e!640936))))

(declare-fun lt!500022 () array!73408)

(declare-datatypes ((List!24766 0))(
  ( (Nil!24763) (Cons!24762 (h!25971 (_ BitVec 64)) (t!35528 List!24766)) )
))
(declare-fun arrayNoDuplicates!0 (array!73408 (_ BitVec 32) List!24766) Bool)

(assert (=> b!1125932 (= res!752440 (arrayNoDuplicates!0 lt!500022 #b00000000000000000000000000000000 Nil!24763))))

(declare-fun b!1125933 () Bool)

(declare-fun e!640940 () Bool)

(assert (=> b!1125933 (= e!640941 (and e!640940 mapRes!44257))))

(declare-fun condMapEmpty!44257 () Bool)

(declare-fun mapDefault!44257 () ValueCell!13437)

(assert (=> b!1125933 (= condMapEmpty!44257 (= (arr!35354 _values!996) ((as const (Array (_ BitVec 32) ValueCell!13437)) mapDefault!44257)))))

(declare-fun b!1125934 () Bool)

(declare-fun res!752445 () Bool)

(assert (=> b!1125934 (=> (not res!752445) (not e!640943))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1125934 (= res!752445 (validMask!0 mask!1564))))

(declare-fun b!1125935 () Bool)

(declare-fun e!640935 () Bool)

(assert (=> b!1125935 (= e!640936 (not e!640935))))

(declare-fun res!752448 () Bool)

(assert (=> b!1125935 (=> res!752448 e!640935)))

(assert (=> b!1125935 (= res!752448 (bvsgt from!1455 i!673))))

(declare-fun arrayContainsKey!0 (array!73408 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1125935 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-fun lt!500024 () Unit!36843)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!73408 (_ BitVec 64) (_ BitVec 32)) Unit!36843)

(assert (=> b!1125935 (= lt!500024 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1125936 () Bool)

(declare-fun res!752444 () Bool)

(assert (=> b!1125936 (=> (not res!752444) (not e!640943))))

(assert (=> b!1125936 (= res!752444 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!35890 _keys!1208))))))

(declare-fun bm!47569 () Bool)

(assert (=> bm!47569 (= call!47572 (getCurrentListMapNoExtraKeys!4434 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1125937 () Bool)

(assert (=> b!1125937 (= e!640935 e!640939)))

(declare-fun res!752441 () Bool)

(assert (=> b!1125937 (=> res!752441 e!640939)))

(assert (=> b!1125937 (= res!752441 (not (= from!1455 i!673)))))

(declare-fun lt!500021 () ListLongMap!15919)

(declare-fun lt!500019 () array!73410)

(assert (=> b!1125937 (= lt!500021 (getCurrentListMapNoExtraKeys!4434 lt!500022 lt!500019 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun dynLambda!2516 (Int (_ BitVec 64)) V!42851)

(assert (=> b!1125937 (= lt!500019 (array!73411 (store (arr!35354 _values!996) i!673 (ValueCellFull!13437 (dynLambda!2516 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!35891 _values!996)))))

(declare-fun lt!500025 () ListLongMap!15919)

(assert (=> b!1125937 (= lt!500025 (getCurrentListMapNoExtraKeys!4434 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1125938 () Bool)

(declare-fun res!752443 () Bool)

(assert (=> b!1125938 (=> (not res!752443) (not e!640943))))

(assert (=> b!1125938 (= res!752443 (= (select (arr!35353 _keys!1208) i!673) k0!934))))

(declare-fun b!1125939 () Bool)

(assert (=> b!1125939 (= e!640940 tp_is_empty!28293)))

(declare-fun b!1125940 () Bool)

(assert (=> b!1125940 (= e!640942 tp_is_empty!28293)))

(declare-fun b!1125941 () Bool)

(declare-fun res!752449 () Bool)

(assert (=> b!1125941 (=> (not res!752449) (not e!640943))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!73408 (_ BitVec 32)) Bool)

(assert (=> b!1125941 (= res!752449 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1125942 () Bool)

(assert (=> b!1125942 (= e!640943 e!640936)))

(declare-fun res!752451 () Bool)

(assert (=> b!1125942 (=> (not res!752451) (not e!640936))))

(assert (=> b!1125942 (= res!752451 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!500022 mask!1564))))

(assert (=> b!1125942 (= lt!500022 (array!73409 (store (arr!35353 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!35890 _keys!1208)))))

(declare-fun mapIsEmpty!44257 () Bool)

(assert (=> mapIsEmpty!44257 mapRes!44257))

(declare-fun b!1125943 () Bool)

(declare-fun res!752447 () Bool)

(assert (=> b!1125943 (=> (not res!752447) (not e!640943))))

(assert (=> b!1125943 (= res!752447 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!24763))))

(declare-fun bm!47570 () Bool)

(assert (=> bm!47570 (= call!47573 (getCurrentListMapNoExtraKeys!4434 lt!500022 lt!500019 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1125944 () Bool)

(assert (=> b!1125944 (= e!640937 (= call!47573 call!47572))))

(declare-fun b!1125945 () Bool)

(declare-fun res!752439 () Bool)

(assert (=> b!1125945 (=> (not res!752439) (not e!640943))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1125945 (= res!752439 (validKeyInArray!0 k0!934))))

(assert (= (and start!98098 res!752450) b!1125934))

(assert (= (and b!1125934 res!752445) b!1125931))

(assert (= (and b!1125931 res!752442) b!1125941))

(assert (= (and b!1125941 res!752449) b!1125943))

(assert (= (and b!1125943 res!752447) b!1125936))

(assert (= (and b!1125936 res!752444) b!1125945))

(assert (= (and b!1125945 res!752439) b!1125938))

(assert (= (and b!1125938 res!752443) b!1125942))

(assert (= (and b!1125942 res!752451) b!1125932))

(assert (= (and b!1125932 res!752440) b!1125935))

(assert (= (and b!1125935 (not res!752448)) b!1125937))

(assert (= (and b!1125937 (not res!752441)) b!1125929))

(assert (= (and b!1125929 c!109595) b!1125930))

(assert (= (and b!1125929 (not c!109595)) b!1125944))

(assert (= (or b!1125930 b!1125944) bm!47570))

(assert (= (or b!1125930 b!1125944) bm!47569))

(assert (= (and b!1125929 (not res!752446)) b!1125928))

(assert (= (and b!1125933 condMapEmpty!44257) mapIsEmpty!44257))

(assert (= (and b!1125933 (not condMapEmpty!44257)) mapNonEmpty!44257))

(get-info :version)

(assert (= (and mapNonEmpty!44257 ((_ is ValueCellFull!13437) mapValue!44257)) b!1125940))

(assert (= (and b!1125933 ((_ is ValueCellFull!13437) mapDefault!44257)) b!1125939))

(assert (= start!98098 b!1125933))

(declare-fun b_lambda!18767 () Bool)

(assert (=> (not b_lambda!18767) (not b!1125937)))

(declare-fun t!35526 () Bool)

(declare-fun tb!8583 () Bool)

(assert (=> (and start!98098 (= defaultEntry!1004 defaultEntry!1004) t!35526) tb!8583))

(declare-fun result!17719 () Bool)

(assert (=> tb!8583 (= result!17719 tp_is_empty!28293)))

(assert (=> b!1125937 t!35526))

(declare-fun b_and!38333 () Bool)

(assert (= b_and!38331 (and (=> t!35526 result!17719) b_and!38333)))

(declare-fun m!1040095 () Bool)

(assert (=> b!1125932 m!1040095))

(declare-fun m!1040097 () Bool)

(assert (=> b!1125929 m!1040097))

(declare-fun m!1040099 () Bool)

(assert (=> b!1125929 m!1040099))

(declare-fun m!1040101 () Bool)

(assert (=> b!1125938 m!1040101))

(declare-fun m!1040103 () Bool)

(assert (=> b!1125937 m!1040103))

(declare-fun m!1040105 () Bool)

(assert (=> b!1125937 m!1040105))

(declare-fun m!1040107 () Bool)

(assert (=> b!1125937 m!1040107))

(declare-fun m!1040109 () Bool)

(assert (=> b!1125937 m!1040109))

(declare-fun m!1040111 () Bool)

(assert (=> b!1125934 m!1040111))

(declare-fun m!1040113 () Bool)

(assert (=> b!1125945 m!1040113))

(declare-fun m!1040115 () Bool)

(assert (=> b!1125928 m!1040115))

(assert (=> b!1125928 m!1040115))

(declare-fun m!1040117 () Bool)

(assert (=> b!1125928 m!1040117))

(assert (=> bm!47569 m!1040115))

(declare-fun m!1040119 () Bool)

(assert (=> b!1125943 m!1040119))

(declare-fun m!1040121 () Bool)

(assert (=> bm!47570 m!1040121))

(declare-fun m!1040123 () Bool)

(assert (=> mapNonEmpty!44257 m!1040123))

(declare-fun m!1040125 () Bool)

(assert (=> b!1125942 m!1040125))

(declare-fun m!1040127 () Bool)

(assert (=> b!1125942 m!1040127))

(declare-fun m!1040129 () Bool)

(assert (=> b!1125935 m!1040129))

(declare-fun m!1040131 () Bool)

(assert (=> b!1125935 m!1040131))

(declare-fun m!1040133 () Bool)

(assert (=> b!1125941 m!1040133))

(declare-fun m!1040135 () Bool)

(assert (=> b!1125930 m!1040135))

(declare-fun m!1040137 () Bool)

(assert (=> start!98098 m!1040137))

(declare-fun m!1040139 () Bool)

(assert (=> start!98098 m!1040139))

(check-sat (not b!1125935) (not b!1125930) tp_is_empty!28293 (not bm!47570) (not b!1125929) (not b!1125945) (not b!1125932) (not b!1125941) (not b!1125943) (not b!1125934) (not b_next!23763) (not b!1125928) (not b_lambda!18767) (not bm!47569) (not mapNonEmpty!44257) (not b!1125942) (not start!98098) (not b!1125937) b_and!38333)
(check-sat b_and!38333 (not b_next!23763))
