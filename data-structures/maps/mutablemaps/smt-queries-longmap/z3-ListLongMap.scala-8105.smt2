; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!99534 () Bool)

(assert start!99534)

(declare-fun b_free!25077 () Bool)

(declare-fun b_next!25077 () Bool)

(assert (=> start!99534 (= b_free!25077 (not b_next!25077))))

(declare-fun tp!87946 () Bool)

(declare-fun b_and!41035 () Bool)

(assert (=> start!99534 (= tp!87946 b_and!41035)))

(declare-fun mapNonEmpty!46238 () Bool)

(declare-fun mapRes!46238 () Bool)

(declare-fun tp!87945 () Bool)

(declare-fun e!668680 () Bool)

(assert (=> mapNonEmpty!46238 (= mapRes!46238 (and tp!87945 e!668680))))

(declare-fun mapKey!46238 () (_ BitVec 32))

(declare-datatypes ((V!44603 0))(
  ( (V!44604 (val!14860 Int)) )
))
(declare-datatypes ((ValueCell!14094 0))(
  ( (ValueCellFull!14094 (v!17499 V!44603)) (EmptyCell!14094) )
))
(declare-fun mapValue!46238 () ValueCell!14094)

(declare-datatypes ((array!75990 0))(
  ( (array!75991 (arr!36641 (Array (_ BitVec 32) ValueCell!14094)) (size!37178 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!75990)

(declare-fun mapRest!46238 () (Array (_ BitVec 32) ValueCell!14094))

(assert (=> mapNonEmpty!46238 (= (arr!36641 _values!996) (store mapRest!46238 mapKey!46238 mapValue!46238))))

(declare-fun mapIsEmpty!46238 () Bool)

(assert (=> mapIsEmpty!46238 mapRes!46238))

(declare-fun b!1176281 () Bool)

(declare-fun res!781357 () Bool)

(declare-fun e!668691 () Bool)

(assert (=> b!1176281 (=> (not res!781357) (not e!668691))))

(declare-datatypes ((array!75992 0))(
  ( (array!75993 (arr!36642 (Array (_ BitVec 32) (_ BitVec 64))) (size!37179 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!75992)

(declare-datatypes ((List!25885 0))(
  ( (Nil!25882) (Cons!25881 (h!27090 (_ BitVec 64)) (t!37961 List!25885)) )
))
(declare-fun arrayNoDuplicates!0 (array!75992 (_ BitVec 32) List!25885) Bool)

(assert (=> b!1176281 (= res!781357 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!25882))))

(declare-fun b!1176282 () Bool)

(declare-fun res!781354 () Bool)

(assert (=> b!1176282 (=> (not res!781354) (not e!668691))))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1176282 (= res!781354 (validMask!0 mask!1564))))

(declare-fun b!1176283 () Bool)

(declare-fun e!668687 () Bool)

(declare-fun e!668688 () Bool)

(assert (=> b!1176283 (= e!668687 (not e!668688))))

(declare-fun res!781360 () Bool)

(assert (=> b!1176283 (=> res!781360 e!668688)))

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1176283 (= res!781360 (bvsgt from!1455 i!673))))

(declare-fun k0!934 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!75992 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1176283 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!38757 0))(
  ( (Unit!38758) )
))
(declare-fun lt!530847 () Unit!38757)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!75992 (_ BitVec 64) (_ BitVec 32)) Unit!38757)

(assert (=> b!1176283 (= lt!530847 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1176284 () Bool)

(declare-fun e!668686 () Bool)

(assert (=> b!1176284 (= e!668688 e!668686)))

(declare-fun res!781361 () Bool)

(assert (=> b!1176284 (=> res!781361 e!668686)))

(assert (=> b!1176284 (= res!781361 (or (= from!1455 i!673) (bvsge from!1455 i!673)))))

(declare-fun zeroValue!944 () V!44603)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun lt!530851 () array!75992)

(declare-fun lt!530845 () array!75990)

(declare-fun defaultEntry!1004 () Int)

(declare-datatypes ((tuple2!19118 0))(
  ( (tuple2!19119 (_1!9569 (_ BitVec 64)) (_2!9569 V!44603)) )
))
(declare-datatypes ((List!25886 0))(
  ( (Nil!25883) (Cons!25882 (h!27091 tuple2!19118) (t!37962 List!25886)) )
))
(declare-datatypes ((ListLongMap!17099 0))(
  ( (ListLongMap!17100 (toList!8565 List!25886)) )
))
(declare-fun lt!530849 () ListLongMap!17099)

(declare-fun minValue!944 () V!44603)

(declare-fun getCurrentListMapNoExtraKeys!4996 (array!75992 array!75990 (_ BitVec 32) (_ BitVec 32) V!44603 V!44603 (_ BitVec 32) Int) ListLongMap!17099)

(assert (=> b!1176284 (= lt!530849 (getCurrentListMapNoExtraKeys!4996 lt!530851 lt!530845 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun lt!530846 () V!44603)

(assert (=> b!1176284 (= lt!530845 (array!75991 (store (arr!36641 _values!996) i!673 (ValueCellFull!14094 lt!530846)) (size!37178 _values!996)))))

(declare-fun dynLambda!2973 (Int (_ BitVec 64)) V!44603)

(assert (=> b!1176284 (= lt!530846 (dynLambda!2973 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!530850 () ListLongMap!17099)

(assert (=> b!1176284 (= lt!530850 (getCurrentListMapNoExtraKeys!4996 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1176285 () Bool)

(declare-fun tp_is_empty!29607 () Bool)

(assert (=> b!1176285 (= e!668680 tp_is_empty!29607)))

(declare-fun b!1176286 () Bool)

(declare-fun e!668682 () Unit!38757)

(declare-fun Unit!38759 () Unit!38757)

(assert (=> b!1176286 (= e!668682 Unit!38759)))

(declare-fun lt!530859 () Unit!38757)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!75992 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!38757)

(assert (=> b!1176286 (= lt!530859 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 _keys!1208 k0!934 i!673 (bvadd #b00000000000000000000000000000001 from!1455)))))

(assert (=> b!1176286 (arrayContainsKey!0 _keys!1208 k0!934 (bvadd #b00000000000000000000000000000001 from!1455))))

(declare-fun lt!530857 () Unit!38757)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!75992 (_ BitVec 32) (_ BitVec 32)) Unit!38757)

(assert (=> b!1176286 (= lt!530857 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1208 #b00000000000000000000000000000000 from!1455))))

(assert (=> b!1176286 (arrayNoDuplicates!0 _keys!1208 from!1455 Nil!25882)))

(declare-fun lt!530848 () Unit!38757)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!75992 (_ BitVec 64) (_ BitVec 32) List!25885) Unit!38757)

(assert (=> b!1176286 (= lt!530848 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!1208 k0!934 from!1455 Nil!25882))))

(assert (=> b!1176286 false))

(declare-fun e!668690 () Bool)

(declare-fun b!1176287 () Bool)

(assert (=> b!1176287 (= e!668690 (arrayContainsKey!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1176288 () Bool)

(declare-fun e!668684 () Bool)

(assert (=> b!1176288 (= e!668686 e!668684)))

(declare-fun res!781353 () Bool)

(assert (=> b!1176288 (=> res!781353 e!668684)))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1176288 (= res!781353 (not (validKeyInArray!0 (select (arr!36642 _keys!1208) from!1455))))))

(declare-fun lt!530858 () ListLongMap!17099)

(declare-fun lt!530855 () ListLongMap!17099)

(assert (=> b!1176288 (= lt!530858 lt!530855)))

(declare-fun lt!530856 () ListLongMap!17099)

(declare-fun -!1570 (ListLongMap!17099 (_ BitVec 64)) ListLongMap!17099)

(assert (=> b!1176288 (= lt!530855 (-!1570 lt!530856 k0!934))))

(assert (=> b!1176288 (= lt!530858 (getCurrentListMapNoExtraKeys!4996 lt!530851 lt!530845 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(assert (=> b!1176288 (= lt!530856 (getCurrentListMapNoExtraKeys!4996 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun lt!530852 () Unit!38757)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!794 (array!75992 array!75990 (_ BitVec 32) (_ BitVec 32) V!44603 V!44603 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!38757)

(assert (=> b!1176288 (= lt!530852 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!794 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1176289 () Bool)

(assert (=> b!1176289 (= e!668691 e!668687)))

(declare-fun res!781355 () Bool)

(assert (=> b!1176289 (=> (not res!781355) (not e!668687))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!75992 (_ BitVec 32)) Bool)

(assert (=> b!1176289 (= res!781355 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!530851 mask!1564))))

(assert (=> b!1176289 (= lt!530851 (array!75993 (store (arr!36642 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!37179 _keys!1208)))))

(declare-fun res!781366 () Bool)

(assert (=> start!99534 (=> (not res!781366) (not e!668691))))

(assert (=> start!99534 (= res!781366 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!37179 _keys!1208))))))

(assert (=> start!99534 e!668691))

(assert (=> start!99534 tp_is_empty!29607))

(declare-fun array_inv!27868 (array!75992) Bool)

(assert (=> start!99534 (array_inv!27868 _keys!1208)))

(assert (=> start!99534 true))

(assert (=> start!99534 tp!87946))

(declare-fun e!668683 () Bool)

(declare-fun array_inv!27869 (array!75990) Bool)

(assert (=> start!99534 (and (array_inv!27869 _values!996) e!668683)))

(declare-fun b!1176290 () Bool)

(declare-fun res!781364 () Bool)

(assert (=> b!1176290 (=> (not res!781364) (not e!668691))))

(assert (=> b!1176290 (= res!781364 (= (select (arr!36642 _keys!1208) i!673) k0!934))))

(declare-fun b!1176291 () Bool)

(declare-fun Unit!38760 () Unit!38757)

(assert (=> b!1176291 (= e!668682 Unit!38760)))

(declare-fun b!1176292 () Bool)

(declare-fun res!781351 () Bool)

(assert (=> b!1176292 (=> (not res!781351) (not e!668691))))

(assert (=> b!1176292 (= res!781351 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1176293 () Bool)

(declare-fun res!781358 () Bool)

(assert (=> b!1176293 (=> (not res!781358) (not e!668691))))

(assert (=> b!1176293 (= res!781358 (and (= (size!37178 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!37179 _keys!1208) (size!37178 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun e!668685 () Bool)

(declare-fun b!1176294 () Bool)

(declare-fun lt!530854 () tuple2!19118)

(declare-fun +!3788 (ListLongMap!17099 tuple2!19118) ListLongMap!17099)

(assert (=> b!1176294 (= e!668685 (= lt!530850 (+!3788 lt!530856 lt!530854)))))

(declare-fun b!1176295 () Bool)

(declare-fun res!781365 () Bool)

(assert (=> b!1176295 (=> (not res!781365) (not e!668691))))

(assert (=> b!1176295 (= res!781365 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!37179 _keys!1208))))))

(declare-fun b!1176296 () Bool)

(assert (=> b!1176296 (= e!668684 true)))

(assert (=> b!1176296 e!668685))

(declare-fun res!781362 () Bool)

(assert (=> b!1176296 (=> (not res!781362) (not e!668685))))

(assert (=> b!1176296 (= res!781362 (not (= (select (arr!36642 _keys!1208) from!1455) k0!934)))))

(declare-fun lt!530853 () Unit!38757)

(assert (=> b!1176296 (= lt!530853 e!668682)))

(declare-fun c!116687 () Bool)

(assert (=> b!1176296 (= c!116687 (= (select (arr!36642 _keys!1208) from!1455) k0!934))))

(declare-fun e!668692 () Bool)

(assert (=> b!1176296 e!668692))

(declare-fun res!781359 () Bool)

(assert (=> b!1176296 (=> (not res!781359) (not e!668692))))

(assert (=> b!1176296 (= res!781359 (= lt!530849 (+!3788 lt!530855 lt!530854)))))

(declare-fun get!18747 (ValueCell!14094 V!44603) V!44603)

(assert (=> b!1176296 (= lt!530854 (tuple2!19119 (select (arr!36642 _keys!1208) from!1455) (get!18747 (select (arr!36641 _values!996) from!1455) lt!530846)))))

(declare-fun b!1176297 () Bool)

(declare-fun res!781356 () Bool)

(assert (=> b!1176297 (=> (not res!781356) (not e!668687))))

(assert (=> b!1176297 (= res!781356 (arrayNoDuplicates!0 lt!530851 #b00000000000000000000000000000000 Nil!25882))))

(declare-fun b!1176298 () Bool)

(declare-fun e!668681 () Bool)

(assert (=> b!1176298 (= e!668681 tp_is_empty!29607)))

(declare-fun b!1176299 () Bool)

(declare-fun res!781352 () Bool)

(assert (=> b!1176299 (=> (not res!781352) (not e!668691))))

(assert (=> b!1176299 (= res!781352 (validKeyInArray!0 k0!934))))

(declare-fun b!1176300 () Bool)

(assert (=> b!1176300 (= e!668692 e!668690)))

(declare-fun res!781363 () Bool)

(assert (=> b!1176300 (=> res!781363 e!668690)))

(assert (=> b!1176300 (= res!781363 (not (= (select (arr!36642 _keys!1208) from!1455) k0!934)))))

(declare-fun b!1176301 () Bool)

(assert (=> b!1176301 (= e!668683 (and e!668681 mapRes!46238))))

(declare-fun condMapEmpty!46238 () Bool)

(declare-fun mapDefault!46238 () ValueCell!14094)

(assert (=> b!1176301 (= condMapEmpty!46238 (= (arr!36641 _values!996) ((as const (Array (_ BitVec 32) ValueCell!14094)) mapDefault!46238)))))

(assert (= (and start!99534 res!781366) b!1176282))

(assert (= (and b!1176282 res!781354) b!1176293))

(assert (= (and b!1176293 res!781358) b!1176292))

(assert (= (and b!1176292 res!781351) b!1176281))

(assert (= (and b!1176281 res!781357) b!1176295))

(assert (= (and b!1176295 res!781365) b!1176299))

(assert (= (and b!1176299 res!781352) b!1176290))

(assert (= (and b!1176290 res!781364) b!1176289))

(assert (= (and b!1176289 res!781355) b!1176297))

(assert (= (and b!1176297 res!781356) b!1176283))

(assert (= (and b!1176283 (not res!781360)) b!1176284))

(assert (= (and b!1176284 (not res!781361)) b!1176288))

(assert (= (and b!1176288 (not res!781353)) b!1176296))

(assert (= (and b!1176296 res!781359) b!1176300))

(assert (= (and b!1176300 (not res!781363)) b!1176287))

(assert (= (and b!1176296 c!116687) b!1176286))

(assert (= (and b!1176296 (not c!116687)) b!1176291))

(assert (= (and b!1176296 res!781362) b!1176294))

(assert (= (and b!1176301 condMapEmpty!46238) mapIsEmpty!46238))

(assert (= (and b!1176301 (not condMapEmpty!46238)) mapNonEmpty!46238))

(get-info :version)

(assert (= (and mapNonEmpty!46238 ((_ is ValueCellFull!14094) mapValue!46238)) b!1176285))

(assert (= (and b!1176301 ((_ is ValueCellFull!14094) mapDefault!46238)) b!1176298))

(assert (= start!99534 b!1176301))

(declare-fun b_lambda!20239 () Bool)

(assert (=> (not b_lambda!20239) (not b!1176284)))

(declare-fun t!37960 () Bool)

(declare-fun tb!9897 () Bool)

(assert (=> (and start!99534 (= defaultEntry!1004 defaultEntry!1004) t!37960) tb!9897))

(declare-fun result!20353 () Bool)

(assert (=> tb!9897 (= result!20353 tp_is_empty!29607)))

(assert (=> b!1176284 t!37960))

(declare-fun b_and!41037 () Bool)

(assert (= b_and!41035 (and (=> t!37960 result!20353) b_and!41037)))

(declare-fun m!1084265 () Bool)

(assert (=> b!1176300 m!1084265))

(declare-fun m!1084267 () Bool)

(assert (=> b!1176284 m!1084267))

(declare-fun m!1084269 () Bool)

(assert (=> b!1176284 m!1084269))

(declare-fun m!1084271 () Bool)

(assert (=> b!1176284 m!1084271))

(declare-fun m!1084273 () Bool)

(assert (=> b!1176284 m!1084273))

(declare-fun m!1084275 () Bool)

(assert (=> b!1176297 m!1084275))

(declare-fun m!1084277 () Bool)

(assert (=> b!1176292 m!1084277))

(declare-fun m!1084279 () Bool)

(assert (=> mapNonEmpty!46238 m!1084279))

(declare-fun m!1084281 () Bool)

(assert (=> b!1176287 m!1084281))

(declare-fun m!1084283 () Bool)

(assert (=> start!99534 m!1084283))

(declare-fun m!1084285 () Bool)

(assert (=> start!99534 m!1084285))

(declare-fun m!1084287 () Bool)

(assert (=> b!1176289 m!1084287))

(declare-fun m!1084289 () Bool)

(assert (=> b!1176289 m!1084289))

(declare-fun m!1084291 () Bool)

(assert (=> b!1176281 m!1084291))

(declare-fun m!1084293 () Bool)

(assert (=> b!1176288 m!1084293))

(declare-fun m!1084295 () Bool)

(assert (=> b!1176288 m!1084295))

(declare-fun m!1084297 () Bool)

(assert (=> b!1176288 m!1084297))

(assert (=> b!1176288 m!1084265))

(declare-fun m!1084299 () Bool)

(assert (=> b!1176288 m!1084299))

(assert (=> b!1176288 m!1084265))

(declare-fun m!1084301 () Bool)

(assert (=> b!1176288 m!1084301))

(declare-fun m!1084303 () Bool)

(assert (=> b!1176283 m!1084303))

(declare-fun m!1084305 () Bool)

(assert (=> b!1176283 m!1084305))

(declare-fun m!1084307 () Bool)

(assert (=> b!1176299 m!1084307))

(declare-fun m!1084309 () Bool)

(assert (=> b!1176282 m!1084309))

(declare-fun m!1084311 () Bool)

(assert (=> b!1176290 m!1084311))

(assert (=> b!1176296 m!1084265))

(declare-fun m!1084313 () Bool)

(assert (=> b!1176296 m!1084313))

(declare-fun m!1084315 () Bool)

(assert (=> b!1176296 m!1084315))

(assert (=> b!1176296 m!1084315))

(declare-fun m!1084317 () Bool)

(assert (=> b!1176296 m!1084317))

(declare-fun m!1084319 () Bool)

(assert (=> b!1176286 m!1084319))

(declare-fun m!1084321 () Bool)

(assert (=> b!1176286 m!1084321))

(declare-fun m!1084323 () Bool)

(assert (=> b!1176286 m!1084323))

(declare-fun m!1084325 () Bool)

(assert (=> b!1176286 m!1084325))

(declare-fun m!1084327 () Bool)

(assert (=> b!1176286 m!1084327))

(declare-fun m!1084329 () Bool)

(assert (=> b!1176294 m!1084329))

(check-sat (not b!1176288) (not b_lambda!20239) (not start!99534) (not b_next!25077) (not b!1176281) b_and!41037 (not b!1176289) (not b!1176297) (not b!1176283) (not mapNonEmpty!46238) tp_is_empty!29607 (not b!1176296) (not b!1176282) (not b!1176284) (not b!1176287) (not b!1176286) (not b!1176292) (not b!1176294) (not b!1176299))
(check-sat b_and!41037 (not b_next!25077))
