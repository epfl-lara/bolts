; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!99828 () Bool)

(assert start!99828)

(declare-fun b_free!25371 () Bool)

(declare-fun b_next!25371 () Bool)

(assert (=> start!99828 (= b_free!25371 (not b_next!25371))))

(declare-fun tp!88828 () Bool)

(declare-fun b_and!41623 () Bool)

(assert (=> start!99828 (= tp!88828 b_and!41623)))

(declare-fun b!1185723 () Bool)

(declare-fun e!674216 () Bool)

(assert (=> b!1185723 (= e!674216 true)))

(declare-datatypes ((V!44995 0))(
  ( (V!44996 (val!15007 Int)) )
))
(declare-datatypes ((tuple2!19378 0))(
  ( (tuple2!19379 (_1!9699 (_ BitVec 64)) (_2!9699 V!44995)) )
))
(declare-datatypes ((List!26139 0))(
  ( (Nil!26136) (Cons!26135 (h!27344 tuple2!19378) (t!38509 List!26139)) )
))
(declare-datatypes ((ListLongMap!17359 0))(
  ( (ListLongMap!17360 (toList!8695 List!26139)) )
))
(declare-fun lt!538274 () ListLongMap!17359)

(declare-fun k0!934 () (_ BitVec 64))

(declare-fun lt!538286 () ListLongMap!17359)

(declare-fun -!1680 (ListLongMap!17359 (_ BitVec 64)) ListLongMap!17359)

(assert (=> b!1185723 (= (-!1680 lt!538274 k0!934) lt!538286)))

(declare-datatypes ((array!76570 0))(
  ( (array!76571 (arr!36931 (Array (_ BitVec 32) (_ BitVec 64))) (size!37468 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!76570)

(declare-fun lt!538281 () V!44995)

(declare-fun lt!538285 () ListLongMap!17359)

(declare-datatypes ((Unit!39211 0))(
  ( (Unit!39212) )
))
(declare-fun lt!538283 () Unit!39211)

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun addRemoveCommutativeForDiffKeys!191 (ListLongMap!17359 (_ BitVec 64) V!44995 (_ BitVec 64)) Unit!39211)

(assert (=> b!1185723 (= lt!538283 (addRemoveCommutativeForDiffKeys!191 lt!538285 (select (arr!36931 _keys!1208) from!1455) lt!538281 k0!934))))

(declare-fun lt!538272 () ListLongMap!17359)

(declare-fun lt!538287 () ListLongMap!17359)

(declare-fun lt!538276 () ListLongMap!17359)

(assert (=> b!1185723 (and (= lt!538287 lt!538274) (= lt!538276 lt!538272))))

(declare-fun lt!538273 () tuple2!19378)

(declare-fun +!3901 (ListLongMap!17359 tuple2!19378) ListLongMap!17359)

(assert (=> b!1185723 (= lt!538274 (+!3901 lt!538285 lt!538273))))

(assert (=> b!1185723 (not (= (select (arr!36931 _keys!1208) from!1455) k0!934))))

(declare-fun lt!538282 () Unit!39211)

(declare-fun e!674210 () Unit!39211)

(assert (=> b!1185723 (= lt!538282 e!674210)))

(declare-fun c!117128 () Bool)

(assert (=> b!1185723 (= c!117128 (= (select (arr!36931 _keys!1208) from!1455) k0!934))))

(declare-fun e!674219 () Bool)

(assert (=> b!1185723 e!674219))

(declare-fun res!788301 () Bool)

(assert (=> b!1185723 (=> (not res!788301) (not e!674219))))

(declare-fun lt!538289 () ListLongMap!17359)

(assert (=> b!1185723 (= res!788301 (= lt!538289 lt!538286))))

(assert (=> b!1185723 (= lt!538286 (+!3901 lt!538276 lt!538273))))

(assert (=> b!1185723 (= lt!538273 (tuple2!19379 (select (arr!36931 _keys!1208) from!1455) lt!538281))))

(declare-datatypes ((ValueCell!14241 0))(
  ( (ValueCellFull!14241 (v!17646 V!44995)) (EmptyCell!14241) )
))
(declare-datatypes ((array!76572 0))(
  ( (array!76573 (arr!36932 (Array (_ BitVec 32) ValueCell!14241)) (size!37469 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!76572)

(declare-fun lt!538278 () V!44995)

(declare-fun get!18947 (ValueCell!14241 V!44995) V!44995)

(assert (=> b!1185723 (= lt!538281 (get!18947 (select (arr!36932 _values!996) from!1455) lt!538278))))

(declare-fun b!1185724 () Bool)

(declare-fun e!674215 () Bool)

(assert (=> b!1185724 (= e!674215 e!674216)))

(declare-fun res!788302 () Bool)

(assert (=> b!1185724 (=> res!788302 e!674216)))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1185724 (= res!788302 (not (validKeyInArray!0 (select (arr!36931 _keys!1208) from!1455))))))

(assert (=> b!1185724 (= lt!538272 lt!538276)))

(assert (=> b!1185724 (= lt!538276 (-!1680 lt!538285 k0!934))))

(declare-fun lt!538284 () array!76572)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-fun minValue!944 () V!44995)

(declare-fun zeroValue!944 () V!44995)

(declare-fun lt!538277 () array!76570)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun getCurrentListMapNoExtraKeys!5113 (array!76570 array!76572 (_ BitVec 32) (_ BitVec 32) V!44995 V!44995 (_ BitVec 32) Int) ListLongMap!17359)

(assert (=> b!1185724 (= lt!538272 (getCurrentListMapNoExtraKeys!5113 lt!538277 lt!538284 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(assert (=> b!1185724 (= lt!538285 (getCurrentListMapNoExtraKeys!5113 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun i!673 () (_ BitVec 32))

(declare-fun lt!538280 () Unit!39211)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!893 (array!76570 array!76572 (_ BitVec 32) (_ BitVec 32) V!44995 V!44995 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!39211)

(assert (=> b!1185724 (= lt!538280 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!893 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun res!788294 () Bool)

(declare-fun e!674220 () Bool)

(assert (=> start!99828 (=> (not res!788294) (not e!674220))))

(assert (=> start!99828 (= res!788294 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!37468 _keys!1208))))))

(assert (=> start!99828 e!674220))

(declare-fun tp_is_empty!29901 () Bool)

(assert (=> start!99828 tp_is_empty!29901))

(declare-fun array_inv!28062 (array!76570) Bool)

(assert (=> start!99828 (array_inv!28062 _keys!1208)))

(assert (=> start!99828 true))

(assert (=> start!99828 tp!88828))

(declare-fun e!674213 () Bool)

(declare-fun array_inv!28063 (array!76572) Bool)

(assert (=> start!99828 (and (array_inv!28063 _values!996) e!674213)))

(declare-fun b!1185725 () Bool)

(declare-fun res!788304 () Bool)

(assert (=> b!1185725 (=> (not res!788304) (not e!674220))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!76570 (_ BitVec 32)) Bool)

(assert (=> b!1185725 (= res!788304 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1185726 () Bool)

(declare-fun Unit!39213 () Unit!39211)

(assert (=> b!1185726 (= e!674210 Unit!39213)))

(declare-fun lt!538290 () Unit!39211)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!76570 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!39211)

(assert (=> b!1185726 (= lt!538290 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 _keys!1208 k0!934 i!673 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun arrayContainsKey!0 (array!76570 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1185726 (arrayContainsKey!0 _keys!1208 k0!934 (bvadd #b00000000000000000000000000000001 from!1455))))

(declare-fun lt!538275 () Unit!39211)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!76570 (_ BitVec 32) (_ BitVec 32)) Unit!39211)

(assert (=> b!1185726 (= lt!538275 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1208 #b00000000000000000000000000000000 from!1455))))

(declare-datatypes ((List!26140 0))(
  ( (Nil!26137) (Cons!26136 (h!27345 (_ BitVec 64)) (t!38510 List!26140)) )
))
(declare-fun arrayNoDuplicates!0 (array!76570 (_ BitVec 32) List!26140) Bool)

(assert (=> b!1185726 (arrayNoDuplicates!0 _keys!1208 from!1455 Nil!26137)))

(declare-fun lt!538279 () Unit!39211)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!76570 (_ BitVec 64) (_ BitVec 32) List!26140) Unit!39211)

(assert (=> b!1185726 (= lt!538279 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!1208 k0!934 from!1455 Nil!26137))))

(assert (=> b!1185726 false))

(declare-fun mapNonEmpty!46679 () Bool)

(declare-fun mapRes!46679 () Bool)

(declare-fun tp!88827 () Bool)

(declare-fun e!674212 () Bool)

(assert (=> mapNonEmpty!46679 (= mapRes!46679 (and tp!88827 e!674212))))

(declare-fun mapKey!46679 () (_ BitVec 32))

(declare-fun mapValue!46679 () ValueCell!14241)

(declare-fun mapRest!46679 () (Array (_ BitVec 32) ValueCell!14241))

(assert (=> mapNonEmpty!46679 (= (arr!36932 _values!996) (store mapRest!46679 mapKey!46679 mapValue!46679))))

(declare-fun b!1185727 () Bool)

(declare-fun e!674214 () Bool)

(declare-fun e!674218 () Bool)

(assert (=> b!1185727 (= e!674214 (not e!674218))))

(declare-fun res!788295 () Bool)

(assert (=> b!1185727 (=> res!788295 e!674218)))

(assert (=> b!1185727 (= res!788295 (bvsgt from!1455 i!673))))

(assert (=> b!1185727 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-fun lt!538288 () Unit!39211)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!76570 (_ BitVec 64) (_ BitVec 32)) Unit!39211)

(assert (=> b!1185727 (= lt!538288 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1185728 () Bool)

(declare-fun e!674221 () Bool)

(assert (=> b!1185728 (= e!674221 (arrayContainsKey!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1185729 () Bool)

(declare-fun res!788298 () Bool)

(assert (=> b!1185729 (=> (not res!788298) (not e!674220))))

(assert (=> b!1185729 (= res!788298 (and (= (size!37469 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!37468 _keys!1208) (size!37469 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1185730 () Bool)

(declare-fun res!788306 () Bool)

(assert (=> b!1185730 (=> (not res!788306) (not e!674220))))

(assert (=> b!1185730 (= res!788306 (= (select (arr!36931 _keys!1208) i!673) k0!934))))

(declare-fun b!1185731 () Bool)

(assert (=> b!1185731 (= e!674219 e!674221)))

(declare-fun res!788305 () Bool)

(assert (=> b!1185731 (=> res!788305 e!674221)))

(assert (=> b!1185731 (= res!788305 (not (= (select (arr!36931 _keys!1208) from!1455) k0!934)))))

(declare-fun b!1185732 () Bool)

(assert (=> b!1185732 (= e!674220 e!674214)))

(declare-fun res!788297 () Bool)

(assert (=> b!1185732 (=> (not res!788297) (not e!674214))))

(assert (=> b!1185732 (= res!788297 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!538277 mask!1564))))

(assert (=> b!1185732 (= lt!538277 (array!76571 (store (arr!36931 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!37468 _keys!1208)))))

(declare-fun b!1185733 () Bool)

(declare-fun e!674211 () Bool)

(assert (=> b!1185733 (= e!674213 (and e!674211 mapRes!46679))))

(declare-fun condMapEmpty!46679 () Bool)

(declare-fun mapDefault!46679 () ValueCell!14241)

(assert (=> b!1185733 (= condMapEmpty!46679 (= (arr!36932 _values!996) ((as const (Array (_ BitVec 32) ValueCell!14241)) mapDefault!46679)))))

(declare-fun b!1185734 () Bool)

(declare-fun res!788296 () Bool)

(assert (=> b!1185734 (=> (not res!788296) (not e!674214))))

(assert (=> b!1185734 (= res!788296 (arrayNoDuplicates!0 lt!538277 #b00000000000000000000000000000000 Nil!26137))))

(declare-fun b!1185735 () Bool)

(declare-fun res!788300 () Bool)

(assert (=> b!1185735 (=> (not res!788300) (not e!674220))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1185735 (= res!788300 (validMask!0 mask!1564))))

(declare-fun b!1185736 () Bool)

(assert (=> b!1185736 (= e!674212 tp_is_empty!29901)))

(declare-fun b!1185737 () Bool)

(declare-fun res!788308 () Bool)

(assert (=> b!1185737 (=> (not res!788308) (not e!674220))))

(assert (=> b!1185737 (= res!788308 (validKeyInArray!0 k0!934))))

(declare-fun b!1185738 () Bool)

(assert (=> b!1185738 (= e!674211 tp_is_empty!29901)))

(declare-fun b!1185739 () Bool)

(assert (=> b!1185739 (= e!674218 e!674215)))

(declare-fun res!788307 () Bool)

(assert (=> b!1185739 (=> res!788307 e!674215)))

(assert (=> b!1185739 (= res!788307 (or (= from!1455 i!673) (bvsge from!1455 i!673)))))

(assert (=> b!1185739 (= lt!538289 (getCurrentListMapNoExtraKeys!5113 lt!538277 lt!538284 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(assert (=> b!1185739 (= lt!538284 (array!76573 (store (arr!36932 _values!996) i!673 (ValueCellFull!14241 lt!538278)) (size!37469 _values!996)))))

(declare-fun dynLambda!3073 (Int (_ BitVec 64)) V!44995)

(assert (=> b!1185739 (= lt!538278 (dynLambda!3073 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1185739 (= lt!538287 (getCurrentListMapNoExtraKeys!5113 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun mapIsEmpty!46679 () Bool)

(assert (=> mapIsEmpty!46679 mapRes!46679))

(declare-fun b!1185740 () Bool)

(declare-fun res!788299 () Bool)

(assert (=> b!1185740 (=> (not res!788299) (not e!674220))))

(assert (=> b!1185740 (= res!788299 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!26137))))

(declare-fun b!1185741 () Bool)

(declare-fun res!788303 () Bool)

(assert (=> b!1185741 (=> (not res!788303) (not e!674220))))

(assert (=> b!1185741 (= res!788303 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!37468 _keys!1208))))))

(declare-fun b!1185742 () Bool)

(declare-fun Unit!39214 () Unit!39211)

(assert (=> b!1185742 (= e!674210 Unit!39214)))

(assert (= (and start!99828 res!788294) b!1185735))

(assert (= (and b!1185735 res!788300) b!1185729))

(assert (= (and b!1185729 res!788298) b!1185725))

(assert (= (and b!1185725 res!788304) b!1185740))

(assert (= (and b!1185740 res!788299) b!1185741))

(assert (= (and b!1185741 res!788303) b!1185737))

(assert (= (and b!1185737 res!788308) b!1185730))

(assert (= (and b!1185730 res!788306) b!1185732))

(assert (= (and b!1185732 res!788297) b!1185734))

(assert (= (and b!1185734 res!788296) b!1185727))

(assert (= (and b!1185727 (not res!788295)) b!1185739))

(assert (= (and b!1185739 (not res!788307)) b!1185724))

(assert (= (and b!1185724 (not res!788302)) b!1185723))

(assert (= (and b!1185723 res!788301) b!1185731))

(assert (= (and b!1185731 (not res!788305)) b!1185728))

(assert (= (and b!1185723 c!117128) b!1185726))

(assert (= (and b!1185723 (not c!117128)) b!1185742))

(assert (= (and b!1185733 condMapEmpty!46679) mapIsEmpty!46679))

(assert (= (and b!1185733 (not condMapEmpty!46679)) mapNonEmpty!46679))

(get-info :version)

(assert (= (and mapNonEmpty!46679 ((_ is ValueCellFull!14241) mapValue!46679)) b!1185736))

(assert (= (and b!1185733 ((_ is ValueCellFull!14241) mapDefault!46679)) b!1185738))

(assert (= start!99828 b!1185733))

(declare-fun b_lambda!20533 () Bool)

(assert (=> (not b_lambda!20533) (not b!1185739)))

(declare-fun t!38508 () Bool)

(declare-fun tb!10191 () Bool)

(assert (=> (and start!99828 (= defaultEntry!1004 defaultEntry!1004) t!38508) tb!10191))

(declare-fun result!20941 () Bool)

(assert (=> tb!10191 (= result!20941 tp_is_empty!29901)))

(assert (=> b!1185739 t!38508))

(declare-fun b_and!41625 () Bool)

(assert (= b_and!41623 (and (=> t!38508 result!20941) b_and!41625)))

(declare-fun m!1094235 () Bool)

(assert (=> b!1185734 m!1094235))

(declare-fun m!1094237 () Bool)

(assert (=> b!1185725 m!1094237))

(declare-fun m!1094239 () Bool)

(assert (=> b!1185730 m!1094239))

(declare-fun m!1094241 () Bool)

(assert (=> b!1185732 m!1094241))

(declare-fun m!1094243 () Bool)

(assert (=> b!1185732 m!1094243))

(declare-fun m!1094245 () Bool)

(assert (=> start!99828 m!1094245))

(declare-fun m!1094247 () Bool)

(assert (=> start!99828 m!1094247))

(declare-fun m!1094249 () Bool)

(assert (=> mapNonEmpty!46679 m!1094249))

(declare-fun m!1094251 () Bool)

(assert (=> b!1185740 m!1094251))

(declare-fun m!1094253 () Bool)

(assert (=> b!1185739 m!1094253))

(declare-fun m!1094255 () Bool)

(assert (=> b!1185739 m!1094255))

(declare-fun m!1094257 () Bool)

(assert (=> b!1185739 m!1094257))

(declare-fun m!1094259 () Bool)

(assert (=> b!1185739 m!1094259))

(declare-fun m!1094261 () Bool)

(assert (=> b!1185726 m!1094261))

(declare-fun m!1094263 () Bool)

(assert (=> b!1185726 m!1094263))

(declare-fun m!1094265 () Bool)

(assert (=> b!1185726 m!1094265))

(declare-fun m!1094267 () Bool)

(assert (=> b!1185726 m!1094267))

(declare-fun m!1094269 () Bool)

(assert (=> b!1185726 m!1094269))

(declare-fun m!1094271 () Bool)

(assert (=> b!1185727 m!1094271))

(declare-fun m!1094273 () Bool)

(assert (=> b!1185727 m!1094273))

(declare-fun m!1094275 () Bool)

(assert (=> b!1185737 m!1094275))

(declare-fun m!1094277 () Bool)

(assert (=> b!1185735 m!1094277))

(declare-fun m!1094279 () Bool)

(assert (=> b!1185724 m!1094279))

(declare-fun m!1094281 () Bool)

(assert (=> b!1185724 m!1094281))

(declare-fun m!1094283 () Bool)

(assert (=> b!1185724 m!1094283))

(declare-fun m!1094285 () Bool)

(assert (=> b!1185724 m!1094285))

(assert (=> b!1185724 m!1094283))

(declare-fun m!1094287 () Bool)

(assert (=> b!1185724 m!1094287))

(declare-fun m!1094289 () Bool)

(assert (=> b!1185724 m!1094289))

(assert (=> b!1185731 m!1094283))

(declare-fun m!1094291 () Bool)

(assert (=> b!1185728 m!1094291))

(declare-fun m!1094293 () Bool)

(assert (=> b!1185723 m!1094293))

(assert (=> b!1185723 m!1094283))

(declare-fun m!1094295 () Bool)

(assert (=> b!1185723 m!1094295))

(declare-fun m!1094297 () Bool)

(assert (=> b!1185723 m!1094297))

(declare-fun m!1094299 () Bool)

(assert (=> b!1185723 m!1094299))

(declare-fun m!1094301 () Bool)

(assert (=> b!1185723 m!1094301))

(assert (=> b!1185723 m!1094283))

(assert (=> b!1185723 m!1094299))

(declare-fun m!1094303 () Bool)

(assert (=> b!1185723 m!1094303))

(check-sat (not b!1185725) (not mapNonEmpty!46679) (not start!99828) (not b_lambda!20533) (not b!1185728) (not b!1185734) tp_is_empty!29901 (not b!1185732) (not b_next!25371) b_and!41625 (not b!1185727) (not b!1185735) (not b!1185724) (not b!1185737) (not b!1185723) (not b!1185726) (not b!1185740) (not b!1185739))
(check-sat b_and!41625 (not b_next!25371))
