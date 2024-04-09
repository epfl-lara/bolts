; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!98380 () Bool)

(assert start!98380)

(declare-fun b_free!23949 () Bool)

(declare-fun b_next!23949 () Bool)

(assert (=> start!98380 (= b_free!23949 (not b_next!23949))))

(declare-fun tp!84559 () Bool)

(declare-fun b_and!38761 () Bool)

(assert (=> start!98380 (= tp!84559 b_and!38761)))

(declare-fun b!1132853 () Bool)

(declare-fun e!644778 () Bool)

(declare-fun tp_is_empty!28479 () Bool)

(assert (=> b!1132853 (= e!644778 tp_is_empty!28479)))

(declare-fun b!1132854 () Bool)

(declare-datatypes ((Unit!37064 0))(
  ( (Unit!37065) )
))
(declare-fun e!644780 () Unit!37064)

(declare-fun e!644783 () Unit!37064)

(assert (=> b!1132854 (= e!644780 e!644783)))

(declare-fun c!110469 () Bool)

(declare-fun lt!503356 () Bool)

(declare-fun extraKeys!923 () (_ BitVec 32))

(assert (=> b!1132854 (= c!110469 (and (not lt!503356) (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1132855 () Bool)

(declare-fun res!756573 () Bool)

(declare-fun e!644781 () Bool)

(assert (=> b!1132855 (=> (not res!756573) (not e!644781))))

(declare-fun k0!934 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1132855 (= res!756573 (validKeyInArray!0 k0!934))))

(declare-fun b!1132856 () Bool)

(declare-fun lt!503362 () Unit!37064)

(assert (=> b!1132856 (= e!644780 lt!503362)))

(declare-fun lt!503365 () Unit!37064)

(declare-fun call!48929 () Unit!37064)

(assert (=> b!1132856 (= lt!503365 call!48929)))

(declare-datatypes ((V!43099 0))(
  ( (V!43100 (val!14296 Int)) )
))
(declare-datatypes ((tuple2!18114 0))(
  ( (tuple2!18115 (_1!9067 (_ BitVec 64)) (_2!9067 V!43099)) )
))
(declare-datatypes ((List!24927 0))(
  ( (Nil!24924) (Cons!24923 (h!26132 tuple2!18114) (t!35875 List!24927)) )
))
(declare-datatypes ((ListLongMap!16095 0))(
  ( (ListLongMap!16096 (toList!8063 List!24927)) )
))
(declare-fun lt!503359 () ListLongMap!16095)

(declare-fun call!48930 () ListLongMap!16095)

(assert (=> b!1132856 (= lt!503359 call!48930)))

(declare-fun call!48936 () Bool)

(assert (=> b!1132856 call!48936))

(declare-fun minValue!944 () V!43099)

(declare-fun addStillContains!723 (ListLongMap!16095 (_ BitVec 64) V!43099 (_ BitVec 64)) Unit!37064)

(assert (=> b!1132856 (= lt!503362 (addStillContains!723 lt!503359 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944 k0!934))))

(declare-fun contains!6556 (ListLongMap!16095 (_ BitVec 64)) Bool)

(declare-fun +!3425 (ListLongMap!16095 tuple2!18114) ListLongMap!16095)

(assert (=> b!1132856 (contains!6556 (+!3425 lt!503359 (tuple2!18115 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944)) k0!934)))

(declare-fun bm!48926 () Bool)

(declare-fun call!48933 () Bool)

(assert (=> bm!48926 (= call!48933 call!48936)))

(declare-fun b!1132857 () Bool)

(declare-fun e!644782 () Bool)

(declare-fun e!644793 () Bool)

(assert (=> b!1132857 (= e!644782 e!644793)))

(declare-fun res!756582 () Bool)

(assert (=> b!1132857 (=> res!756582 e!644793)))

(declare-fun lt!503369 () ListLongMap!16095)

(assert (=> b!1132857 (= res!756582 (not (contains!6556 lt!503369 k0!934)))))

(declare-fun zeroValue!944 () V!43099)

(declare-datatypes ((array!73780 0))(
  ( (array!73781 (arr!35537 (Array (_ BitVec 32) (_ BitVec 64))) (size!36074 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!73780)

(declare-fun defaultEntry!1004 () Int)

(declare-fun from!1455 () (_ BitVec 32))

(declare-datatypes ((ValueCell!13530 0))(
  ( (ValueCellFull!13530 (v!16934 V!43099)) (EmptyCell!13530) )
))
(declare-datatypes ((array!73782 0))(
  ( (array!73783 (arr!35538 (Array (_ BitVec 32) ValueCell!13530)) (size!36075 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!73782)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun getCurrentListMapNoExtraKeys!4514 (array!73780 array!73782 (_ BitVec 32) (_ BitVec 32) V!43099 V!43099 (_ BitVec 32) Int) ListLongMap!16095)

(assert (=> b!1132857 (= lt!503369 (getCurrentListMapNoExtraKeys!4514 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun e!644785 () Bool)

(declare-fun call!48931 () ListLongMap!16095)

(declare-fun b!1132858 () Bool)

(declare-fun call!48935 () ListLongMap!16095)

(declare-fun -!1184 (ListLongMap!16095 (_ BitVec 64)) ListLongMap!16095)

(assert (=> b!1132858 (= e!644785 (= call!48931 (-!1184 call!48935 k0!934)))))

(declare-fun b!1132859 () Bool)

(assert (=> b!1132859 (= e!644793 true)))

(declare-fun e!644789 () Bool)

(assert (=> b!1132859 e!644789))

(declare-fun res!756576 () Bool)

(assert (=> b!1132859 (=> (not res!756576) (not e!644789))))

(declare-fun e!644784 () Bool)

(assert (=> b!1132859 (= res!756576 e!644784)))

(declare-fun c!110472 () Bool)

(assert (=> b!1132859 (= c!110472 (and (not (= k0!934 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!934 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun lt!503367 () Unit!37064)

(declare-fun lemmaListMapContainsThenArrayContainsFrom!334 (array!73780 array!73782 (_ BitVec 32) (_ BitVec 32) V!43099 V!43099 (_ BitVec 64) (_ BitVec 32) Int) Unit!37064)

(assert (=> b!1132859 (= lt!503367 (lemmaListMapContainsThenArrayContainsFrom!334 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun lt!503363 () Unit!37064)

(assert (=> b!1132859 (= lt!503363 e!644780)))

(declare-fun c!110470 () Bool)

(assert (=> b!1132859 (= c!110470 (and (not lt!503356) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> b!1132859 (= lt!503356 (= (bvand extraKeys!923 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(declare-fun b!1132860 () Bool)

(assert (=> b!1132860 (= e!644785 (= call!48931 call!48935))))

(declare-fun b!1132861 () Bool)

(declare-fun e!644792 () Bool)

(declare-fun e!644779 () Bool)

(assert (=> b!1132861 (= e!644792 (not e!644779))))

(declare-fun res!756583 () Bool)

(assert (=> b!1132861 (=> res!756583 e!644779)))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1132861 (= res!756583 (bvsgt from!1455 i!673))))

(declare-fun arrayContainsKey!0 (array!73780 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1132861 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-fun lt!503357 () Unit!37064)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!73780 (_ BitVec 64) (_ BitVec 32)) Unit!37064)

(assert (=> b!1132861 (= lt!503357 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun res!756586 () Bool)

(assert (=> start!98380 (=> (not res!756586) (not e!644781))))

(assert (=> start!98380 (= res!756586 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!36074 _keys!1208))))))

(assert (=> start!98380 e!644781))

(assert (=> start!98380 tp_is_empty!28479))

(declare-fun array_inv!27124 (array!73780) Bool)

(assert (=> start!98380 (array_inv!27124 _keys!1208)))

(assert (=> start!98380 true))

(assert (=> start!98380 tp!84559))

(declare-fun e!644791 () Bool)

(declare-fun array_inv!27125 (array!73782) Bool)

(assert (=> start!98380 (and (array_inv!27125 _values!996) e!644791)))

(declare-fun bm!48927 () Bool)

(declare-fun call!48934 () Unit!37064)

(assert (=> bm!48927 (= call!48934 call!48929)))

(declare-fun b!1132862 () Bool)

(declare-fun res!756578 () Bool)

(assert (=> b!1132862 (=> (not res!756578) (not e!644781))))

(declare-datatypes ((List!24928 0))(
  ( (Nil!24925) (Cons!24924 (h!26133 (_ BitVec 64)) (t!35876 List!24928)) )
))
(declare-fun arrayNoDuplicates!0 (array!73780 (_ BitVec 32) List!24928) Bool)

(assert (=> b!1132862 (= res!756578 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!24925))))

(declare-fun mapNonEmpty!44543 () Bool)

(declare-fun mapRes!44543 () Bool)

(declare-fun tp!84558 () Bool)

(declare-fun e!644790 () Bool)

(assert (=> mapNonEmpty!44543 (= mapRes!44543 (and tp!84558 e!644790))))

(declare-fun mapValue!44543 () ValueCell!13530)

(declare-fun mapKey!44543 () (_ BitVec 32))

(declare-fun mapRest!44543 () (Array (_ BitVec 32) ValueCell!13530))

(assert (=> mapNonEmpty!44543 (= (arr!35538 _values!996) (store mapRest!44543 mapKey!44543 mapValue!44543))))

(declare-fun b!1132863 () Bool)

(declare-fun res!756587 () Bool)

(assert (=> b!1132863 (=> (not res!756587) (not e!644781))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1132863 (= res!756587 (validMask!0 mask!1564))))

(declare-fun b!1132864 () Bool)

(assert (=> b!1132864 (= e!644791 (and e!644778 mapRes!44543))))

(declare-fun condMapEmpty!44543 () Bool)

(declare-fun mapDefault!44543 () ValueCell!13530)

(assert (=> b!1132864 (= condMapEmpty!44543 (= (arr!35538 _values!996) ((as const (Array (_ BitVec 32) ValueCell!13530)) mapDefault!44543)))))

(declare-fun bm!48928 () Bool)

(declare-fun call!48932 () ListLongMap!16095)

(assert (=> bm!48928 (= call!48936 (contains!6556 (ite c!110470 lt!503359 call!48932) k0!934))))

(declare-fun bm!48929 () Bool)

(assert (=> bm!48929 (= call!48929 (addStillContains!723 lt!503369 (ite (or c!110470 c!110469) #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000) (ite (or c!110470 c!110469) zeroValue!944 minValue!944) k0!934))))

(declare-fun b!1132865 () Bool)

(assert (=> b!1132865 (= e!644781 e!644792)))

(declare-fun res!756581 () Bool)

(assert (=> b!1132865 (=> (not res!756581) (not e!644792))))

(declare-fun lt!503370 () array!73780)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!73780 (_ BitVec 32)) Bool)

(assert (=> b!1132865 (= res!756581 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!503370 mask!1564))))

(assert (=> b!1132865 (= lt!503370 (array!73781 (store (arr!35537 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!36074 _keys!1208)))))

(declare-fun b!1132866 () Bool)

(assert (=> b!1132866 (= e!644789 (arrayContainsKey!0 _keys!1208 k0!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun b!1132867 () Bool)

(assert (=> b!1132867 (= e!644784 (ite (= k0!934 #b0000000000000000000000000000000000000000000000000000000000000000) (not lt!503356) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun mapIsEmpty!44543 () Bool)

(assert (=> mapIsEmpty!44543 mapRes!44543))

(declare-fun b!1132868 () Bool)

(declare-fun c!110471 () Bool)

(assert (=> b!1132868 (= c!110471 (and (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!503356))))

(declare-fun e!644787 () Unit!37064)

(assert (=> b!1132868 (= e!644783 e!644787)))

(declare-fun bm!48930 () Bool)

(assert (=> bm!48930 (= call!48935 (getCurrentListMapNoExtraKeys!4514 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1132869 () Bool)

(assert (=> b!1132869 (= e!644790 tp_is_empty!28479)))

(declare-fun b!1132870 () Bool)

(declare-fun lt!503364 () Unit!37064)

(assert (=> b!1132870 (= e!644787 lt!503364)))

(assert (=> b!1132870 (= lt!503364 call!48934)))

(assert (=> b!1132870 call!48933))

(declare-fun b!1132871 () Bool)

(declare-fun e!644788 () Bool)

(assert (=> b!1132871 (= e!644779 e!644788)))

(declare-fun res!756584 () Bool)

(assert (=> b!1132871 (=> res!756584 e!644788)))

(assert (=> b!1132871 (= res!756584 (not (= from!1455 i!673)))))

(declare-fun lt!503361 () array!73782)

(declare-fun lt!503368 () ListLongMap!16095)

(assert (=> b!1132871 (= lt!503368 (getCurrentListMapNoExtraKeys!4514 lt!503370 lt!503361 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun dynLambda!2585 (Int (_ BitVec 64)) V!43099)

(assert (=> b!1132871 (= lt!503361 (array!73783 (store (arr!35538 _values!996) i!673 (ValueCellFull!13530 (dynLambda!2585 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!36075 _values!996)))))

(declare-fun lt!503358 () ListLongMap!16095)

(assert (=> b!1132871 (= lt!503358 (getCurrentListMapNoExtraKeys!4514 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun bm!48931 () Bool)

(assert (=> bm!48931 (= call!48932 call!48930)))

(declare-fun b!1132872 () Bool)

(assert (=> b!1132872 (= e!644788 e!644782)))

(declare-fun res!756580 () Bool)

(assert (=> b!1132872 (=> res!756580 e!644782)))

(assert (=> b!1132872 (= res!756580 (not (= (select (arr!35537 _keys!1208) from!1455) k0!934)))))

(assert (=> b!1132872 e!644785))

(declare-fun c!110468 () Bool)

(assert (=> b!1132872 (= c!110468 (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673))))

(declare-fun lt!503360 () Unit!37064)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!440 (array!73780 array!73782 (_ BitVec 32) (_ BitVec 32) V!43099 V!43099 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!37064)

(assert (=> b!1132872 (= lt!503360 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!440 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1132873 () Bool)

(declare-fun res!756585 () Bool)

(assert (=> b!1132873 (=> (not res!756585) (not e!644781))))

(assert (=> b!1132873 (= res!756585 (= (select (arr!35537 _keys!1208) i!673) k0!934))))

(declare-fun b!1132874 () Bool)

(declare-fun res!756574 () Bool)

(assert (=> b!1132874 (=> (not res!756574) (not e!644781))))

(assert (=> b!1132874 (= res!756574 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1132875 () Bool)

(declare-fun res!756579 () Bool)

(assert (=> b!1132875 (=> (not res!756579) (not e!644781))))

(assert (=> b!1132875 (= res!756579 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!36074 _keys!1208))))))

(declare-fun b!1132876 () Bool)

(declare-fun res!756575 () Bool)

(assert (=> b!1132876 (=> (not res!756575) (not e!644792))))

(assert (=> b!1132876 (= res!756575 (arrayNoDuplicates!0 lt!503370 #b00000000000000000000000000000000 Nil!24925))))

(declare-fun b!1132877 () Bool)

(assert (=> b!1132877 (= e!644784 (arrayContainsKey!0 _keys!1208 k0!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun b!1132878 () Bool)

(assert (=> b!1132878 call!48933))

(declare-fun lt!503366 () Unit!37064)

(assert (=> b!1132878 (= lt!503366 call!48934)))

(assert (=> b!1132878 (= e!644783 lt!503366)))

(declare-fun b!1132879 () Bool)

(declare-fun res!756577 () Bool)

(assert (=> b!1132879 (=> (not res!756577) (not e!644781))))

(assert (=> b!1132879 (= res!756577 (and (= (size!36075 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!36074 _keys!1208) (size!36075 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1132880 () Bool)

(declare-fun Unit!37066 () Unit!37064)

(assert (=> b!1132880 (= e!644787 Unit!37066)))

(declare-fun bm!48932 () Bool)

(assert (=> bm!48932 (= call!48930 (+!3425 lt!503369 (ite (or c!110470 c!110469) (tuple2!18115 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!18115 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944))))))

(declare-fun bm!48933 () Bool)

(assert (=> bm!48933 (= call!48931 (getCurrentListMapNoExtraKeys!4514 lt!503370 lt!503361 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(assert (= (and start!98380 res!756586) b!1132863))

(assert (= (and b!1132863 res!756587) b!1132879))

(assert (= (and b!1132879 res!756577) b!1132874))

(assert (= (and b!1132874 res!756574) b!1132862))

(assert (= (and b!1132862 res!756578) b!1132875))

(assert (= (and b!1132875 res!756579) b!1132855))

(assert (= (and b!1132855 res!756573) b!1132873))

(assert (= (and b!1132873 res!756585) b!1132865))

(assert (= (and b!1132865 res!756581) b!1132876))

(assert (= (and b!1132876 res!756575) b!1132861))

(assert (= (and b!1132861 (not res!756583)) b!1132871))

(assert (= (and b!1132871 (not res!756584)) b!1132872))

(assert (= (and b!1132872 c!110468) b!1132858))

(assert (= (and b!1132872 (not c!110468)) b!1132860))

(assert (= (or b!1132858 b!1132860) bm!48933))

(assert (= (or b!1132858 b!1132860) bm!48930))

(assert (= (and b!1132872 (not res!756580)) b!1132857))

(assert (= (and b!1132857 (not res!756582)) b!1132859))

(assert (= (and b!1132859 c!110470) b!1132856))

(assert (= (and b!1132859 (not c!110470)) b!1132854))

(assert (= (and b!1132854 c!110469) b!1132878))

(assert (= (and b!1132854 (not c!110469)) b!1132868))

(assert (= (and b!1132868 c!110471) b!1132870))

(assert (= (and b!1132868 (not c!110471)) b!1132880))

(assert (= (or b!1132878 b!1132870) bm!48927))

(assert (= (or b!1132878 b!1132870) bm!48931))

(assert (= (or b!1132878 b!1132870) bm!48926))

(assert (= (or b!1132856 bm!48926) bm!48928))

(assert (= (or b!1132856 bm!48927) bm!48929))

(assert (= (or b!1132856 bm!48931) bm!48932))

(assert (= (and b!1132859 c!110472) b!1132877))

(assert (= (and b!1132859 (not c!110472)) b!1132867))

(assert (= (and b!1132859 res!756576) b!1132866))

(assert (= (and b!1132864 condMapEmpty!44543) mapIsEmpty!44543))

(assert (= (and b!1132864 (not condMapEmpty!44543)) mapNonEmpty!44543))

(get-info :version)

(assert (= (and mapNonEmpty!44543 ((_ is ValueCellFull!13530) mapValue!44543)) b!1132869))

(assert (= (and b!1132864 ((_ is ValueCellFull!13530) mapDefault!44543)) b!1132853))

(assert (= start!98380 b!1132864))

(declare-fun b_lambda!19073 () Bool)

(assert (=> (not b_lambda!19073) (not b!1132871)))

(declare-fun t!35874 () Bool)

(declare-fun tb!8769 () Bool)

(assert (=> (and start!98380 (= defaultEntry!1004 defaultEntry!1004) t!35874) tb!8769))

(declare-fun result!18095 () Bool)

(assert (=> tb!8769 (= result!18095 tp_is_empty!28479)))

(assert (=> b!1132871 t!35874))

(declare-fun b_and!38763 () Bool)

(assert (= b_and!38761 (and (=> t!35874 result!18095) b_and!38763)))

(declare-fun m!1046131 () Bool)

(assert (=> b!1132872 m!1046131))

(declare-fun m!1046133 () Bool)

(assert (=> b!1132872 m!1046133))

(declare-fun m!1046135 () Bool)

(assert (=> b!1132861 m!1046135))

(declare-fun m!1046137 () Bool)

(assert (=> b!1132861 m!1046137))

(declare-fun m!1046139 () Bool)

(assert (=> bm!48929 m!1046139))

(declare-fun m!1046141 () Bool)

(assert (=> b!1132865 m!1046141))

(declare-fun m!1046143 () Bool)

(assert (=> b!1132865 m!1046143))

(declare-fun m!1046145 () Bool)

(assert (=> b!1132858 m!1046145))

(declare-fun m!1046147 () Bool)

(assert (=> b!1132876 m!1046147))

(declare-fun m!1046149 () Bool)

(assert (=> b!1132859 m!1046149))

(declare-fun m!1046151 () Bool)

(assert (=> b!1132855 m!1046151))

(declare-fun m!1046153 () Bool)

(assert (=> bm!48930 m!1046153))

(declare-fun m!1046155 () Bool)

(assert (=> b!1132862 m!1046155))

(declare-fun m!1046157 () Bool)

(assert (=> b!1132873 m!1046157))

(declare-fun m!1046159 () Bool)

(assert (=> start!98380 m!1046159))

(declare-fun m!1046161 () Bool)

(assert (=> start!98380 m!1046161))

(declare-fun m!1046163 () Bool)

(assert (=> bm!48928 m!1046163))

(declare-fun m!1046165 () Bool)

(assert (=> mapNonEmpty!44543 m!1046165))

(declare-fun m!1046167 () Bool)

(assert (=> bm!48932 m!1046167))

(declare-fun m!1046169 () Bool)

(assert (=> bm!48933 m!1046169))

(declare-fun m!1046171 () Bool)

(assert (=> b!1132874 m!1046171))

(declare-fun m!1046173 () Bool)

(assert (=> b!1132866 m!1046173))

(declare-fun m!1046175 () Bool)

(assert (=> b!1132857 m!1046175))

(assert (=> b!1132857 m!1046153))

(declare-fun m!1046177 () Bool)

(assert (=> b!1132856 m!1046177))

(declare-fun m!1046179 () Bool)

(assert (=> b!1132856 m!1046179))

(assert (=> b!1132856 m!1046179))

(declare-fun m!1046181 () Bool)

(assert (=> b!1132856 m!1046181))

(declare-fun m!1046183 () Bool)

(assert (=> b!1132871 m!1046183))

(declare-fun m!1046185 () Bool)

(assert (=> b!1132871 m!1046185))

(declare-fun m!1046187 () Bool)

(assert (=> b!1132871 m!1046187))

(declare-fun m!1046189 () Bool)

(assert (=> b!1132871 m!1046189))

(declare-fun m!1046191 () Bool)

(assert (=> b!1132863 m!1046191))

(assert (=> b!1132877 m!1046173))

(check-sat (not b!1132866) (not b!1132863) (not bm!48932) (not b!1132856) (not mapNonEmpty!44543) (not b!1132855) (not b!1132876) (not bm!48928) (not b_next!23949) (not b!1132858) (not b!1132872) (not bm!48930) (not bm!48933) tp_is_empty!28479 (not b!1132865) (not b!1132877) (not b!1132861) (not b!1132857) (not b!1132859) (not b!1132874) (not b!1132862) (not start!98380) (not b!1132871) b_and!38763 (not b_lambda!19073) (not bm!48929))
(check-sat b_and!38763 (not b_next!23949))
