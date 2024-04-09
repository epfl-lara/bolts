; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!99408 () Bool)

(assert start!99408)

(declare-fun b_free!24951 () Bool)

(declare-fun b_next!24951 () Bool)

(assert (=> start!99408 (= b_free!24951 (not b_next!24951))))

(declare-fun tp!87567 () Bool)

(declare-fun b_and!40783 () Bool)

(assert (=> start!99408 (= tp!87567 b_and!40783)))

(declare-fun b!1172335 () Bool)

(declare-fun res!778456 () Bool)

(declare-fun e!666397 () Bool)

(assert (=> b!1172335 (=> (not res!778456) (not e!666397))))

(declare-datatypes ((array!75738 0))(
  ( (array!75739 (arr!36515 (Array (_ BitVec 32) (_ BitVec 64))) (size!37052 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!75738)

(declare-fun i!673 () (_ BitVec 32))

(declare-fun k0!934 () (_ BitVec 64))

(assert (=> b!1172335 (= res!778456 (= (select (arr!36515 _keys!1208) i!673) k0!934))))

(declare-fun b!1172336 () Bool)

(declare-fun e!666388 () Bool)

(assert (=> b!1172336 (= e!666388 true)))

(declare-fun lt!528206 () Bool)

(declare-datatypes ((List!25775 0))(
  ( (Nil!25772) (Cons!25771 (h!26980 (_ BitVec 64)) (t!37725 List!25775)) )
))
(declare-fun contains!6876 (List!25775 (_ BitVec 64)) Bool)

(assert (=> b!1172336 (= lt!528206 (contains!6876 Nil!25772 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1172337 () Bool)

(declare-fun e!666393 () Bool)

(declare-fun e!666395 () Bool)

(assert (=> b!1172337 (= e!666393 e!666395)))

(declare-fun res!778450 () Bool)

(assert (=> b!1172337 (=> res!778450 e!666395)))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> b!1172337 (= res!778450 (not (= (select (arr!36515 _keys!1208) from!1455) k0!934)))))

(declare-fun e!666389 () Bool)

(assert (=> b!1172337 e!666389))

(declare-fun res!778452 () Bool)

(assert (=> b!1172337 (=> (not res!778452) (not e!666389))))

(declare-datatypes ((V!44435 0))(
  ( (V!44436 (val!14797 Int)) )
))
(declare-datatypes ((tuple2!19002 0))(
  ( (tuple2!19003 (_1!9511 (_ BitVec 64)) (_2!9511 V!44435)) )
))
(declare-datatypes ((List!25776 0))(
  ( (Nil!25773) (Cons!25772 (h!26981 tuple2!19002) (t!37726 List!25776)) )
))
(declare-datatypes ((ListLongMap!16983 0))(
  ( (ListLongMap!16984 (toList!8507 List!25776)) )
))
(declare-fun lt!528210 () ListLongMap!16983)

(declare-datatypes ((ValueCell!14031 0))(
  ( (ValueCellFull!14031 (v!17436 V!44435)) (EmptyCell!14031) )
))
(declare-datatypes ((array!75740 0))(
  ( (array!75741 (arr!36516 (Array (_ BitVec 32) ValueCell!14031)) (size!37053 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!75740)

(declare-fun lt!528204 () V!44435)

(declare-fun lt!528205 () ListLongMap!16983)

(declare-fun +!3744 (ListLongMap!16983 tuple2!19002) ListLongMap!16983)

(declare-fun get!18661 (ValueCell!14031 V!44435) V!44435)

(assert (=> b!1172337 (= res!778452 (= lt!528210 (+!3744 lt!528205 (tuple2!19003 (select (arr!36515 _keys!1208) from!1455) (get!18661 (select (arr!36516 _values!996) from!1455) lt!528204)))))))

(declare-fun b!1172338 () Bool)

(declare-fun e!666386 () Bool)

(declare-fun tp_is_empty!29481 () Bool)

(assert (=> b!1172338 (= e!666386 tp_is_empty!29481)))

(declare-fun b!1172339 () Bool)

(declare-fun res!778468 () Bool)

(assert (=> b!1172339 (=> (not res!778468) (not e!666397))))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!75738 (_ BitVec 32)) Bool)

(assert (=> b!1172339 (= res!778468 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1172340 () Bool)

(declare-fun e!666391 () Bool)

(assert (=> b!1172340 (= e!666391 e!666393)))

(declare-fun res!778460 () Bool)

(assert (=> b!1172340 (=> res!778460 e!666393)))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1172340 (= res!778460 (not (validKeyInArray!0 (select (arr!36515 _keys!1208) from!1455))))))

(declare-fun lt!528207 () ListLongMap!16983)

(assert (=> b!1172340 (= lt!528207 lt!528205)))

(declare-fun lt!528201 () ListLongMap!16983)

(declare-fun -!1522 (ListLongMap!16983 (_ BitVec 64)) ListLongMap!16983)

(assert (=> b!1172340 (= lt!528205 (-!1522 lt!528201 k0!934))))

(declare-fun zeroValue!944 () V!44435)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun lt!528198 () array!75740)

(declare-fun defaultEntry!1004 () Int)

(declare-fun lt!528202 () array!75738)

(declare-fun minValue!944 () V!44435)

(declare-fun getCurrentListMapNoExtraKeys!4939 (array!75738 array!75740 (_ BitVec 32) (_ BitVec 32) V!44435 V!44435 (_ BitVec 32) Int) ListLongMap!16983)

(assert (=> b!1172340 (= lt!528207 (getCurrentListMapNoExtraKeys!4939 lt!528202 lt!528198 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(assert (=> b!1172340 (= lt!528201 (getCurrentListMapNoExtraKeys!4939 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-datatypes ((Unit!38560 0))(
  ( (Unit!38561) )
))
(declare-fun lt!528199 () Unit!38560)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!746 (array!75738 array!75740 (_ BitVec 32) (_ BitVec 32) V!44435 V!44435 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!38560)

(assert (=> b!1172340 (= lt!528199 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!746 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1172341 () Bool)

(assert (=> b!1172341 (= e!666395 e!666388)))

(declare-fun res!778461 () Bool)

(assert (=> b!1172341 (=> res!778461 e!666388)))

(assert (=> b!1172341 (= res!778461 (or (bvsge (size!37052 _keys!1208) #b01111111111111111111111111111111) (bvsge (bvadd #b00000000000000000000000000000001 from!1455) (size!37052 _keys!1208)) (bvsge from!1455 (size!37052 _keys!1208))))))

(declare-fun arrayNoDuplicates!0 (array!75738 (_ BitVec 32) List!25775) Bool)

(assert (=> b!1172341 (arrayNoDuplicates!0 _keys!1208 from!1455 Nil!25772)))

(declare-fun lt!528203 () Unit!38560)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!75738 (_ BitVec 32) (_ BitVec 32)) Unit!38560)

(assert (=> b!1172341 (= lt!528203 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1208 #b00000000000000000000000000000000 from!1455))))

(declare-fun arrayContainsKey!0 (array!75738 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1172341 (arrayContainsKey!0 _keys!1208 k0!934 (bvadd #b00000000000000000000000000000001 from!1455))))

(declare-fun lt!528208 () Unit!38560)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!75738 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!38560)

(assert (=> b!1172341 (= lt!528208 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 _keys!1208 k0!934 i!673 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun res!778459 () Bool)

(assert (=> start!99408 (=> (not res!778459) (not e!666397))))

(assert (=> start!99408 (= res!778459 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!37052 _keys!1208))))))

(assert (=> start!99408 e!666397))

(assert (=> start!99408 tp_is_empty!29481))

(declare-fun array_inv!27786 (array!75738) Bool)

(assert (=> start!99408 (array_inv!27786 _keys!1208)))

(assert (=> start!99408 true))

(assert (=> start!99408 tp!87567))

(declare-fun e!666390 () Bool)

(declare-fun array_inv!27787 (array!75740) Bool)

(assert (=> start!99408 (and (array_inv!27787 _values!996) e!666390)))

(declare-fun mapIsEmpty!46049 () Bool)

(declare-fun mapRes!46049 () Bool)

(assert (=> mapIsEmpty!46049 mapRes!46049))

(declare-fun b!1172342 () Bool)

(declare-fun res!778453 () Bool)

(assert (=> b!1172342 (=> res!778453 e!666388)))

(declare-fun noDuplicate!1640 (List!25775) Bool)

(assert (=> b!1172342 (= res!778453 (not (noDuplicate!1640 Nil!25772)))))

(declare-fun b!1172343 () Bool)

(declare-fun e!666394 () Bool)

(assert (=> b!1172343 (= e!666394 e!666391)))

(declare-fun res!778463 () Bool)

(assert (=> b!1172343 (=> res!778463 e!666391)))

(assert (=> b!1172343 (= res!778463 (or (= from!1455 i!673) (bvsge from!1455 i!673)))))

(assert (=> b!1172343 (= lt!528210 (getCurrentListMapNoExtraKeys!4939 lt!528202 lt!528198 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(assert (=> b!1172343 (= lt!528198 (array!75741 (store (arr!36516 _values!996) i!673 (ValueCellFull!14031 lt!528204)) (size!37053 _values!996)))))

(declare-fun dynLambda!2927 (Int (_ BitVec 64)) V!44435)

(assert (=> b!1172343 (= lt!528204 (dynLambda!2927 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!528200 () ListLongMap!16983)

(assert (=> b!1172343 (= lt!528200 (getCurrentListMapNoExtraKeys!4939 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1172344 () Bool)

(declare-fun res!778467 () Bool)

(assert (=> b!1172344 (=> (not res!778467) (not e!666397))))

(assert (=> b!1172344 (= res!778467 (and (= (size!37053 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!37052 _keys!1208) (size!37053 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1172345 () Bool)

(declare-fun res!778451 () Bool)

(assert (=> b!1172345 (=> (not res!778451) (not e!666397))))

(assert (=> b!1172345 (= res!778451 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!25772))))

(declare-fun b!1172346 () Bool)

(declare-fun res!778457 () Bool)

(assert (=> b!1172346 (=> (not res!778457) (not e!666397))))

(assert (=> b!1172346 (= res!778457 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!37052 _keys!1208))))))

(declare-fun b!1172347 () Bool)

(declare-fun e!666387 () Bool)

(assert (=> b!1172347 (= e!666387 (arrayContainsKey!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1172348 () Bool)

(declare-fun res!778462 () Bool)

(assert (=> b!1172348 (=> (not res!778462) (not e!666397))))

(assert (=> b!1172348 (= res!778462 (validKeyInArray!0 k0!934))))

(declare-fun mapNonEmpty!46049 () Bool)

(declare-fun tp!87568 () Bool)

(assert (=> mapNonEmpty!46049 (= mapRes!46049 (and tp!87568 e!666386))))

(declare-fun mapKey!46049 () (_ BitVec 32))

(declare-fun mapValue!46049 () ValueCell!14031)

(declare-fun mapRest!46049 () (Array (_ BitVec 32) ValueCell!14031))

(assert (=> mapNonEmpty!46049 (= (arr!36516 _values!996) (store mapRest!46049 mapKey!46049 mapValue!46049))))

(declare-fun b!1172349 () Bool)

(declare-fun res!778455 () Bool)

(assert (=> b!1172349 (=> (not res!778455) (not e!666397))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1172349 (= res!778455 (validMask!0 mask!1564))))

(declare-fun b!1172350 () Bool)

(assert (=> b!1172350 (= e!666389 e!666387)))

(declare-fun res!778458 () Bool)

(assert (=> b!1172350 (=> res!778458 e!666387)))

(assert (=> b!1172350 (= res!778458 (not (= (select (arr!36515 _keys!1208) from!1455) k0!934)))))

(declare-fun b!1172351 () Bool)

(declare-fun res!778464 () Bool)

(assert (=> b!1172351 (=> res!778464 e!666388)))

(assert (=> b!1172351 (= res!778464 (contains!6876 Nil!25772 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1172352 () Bool)

(declare-fun e!666396 () Bool)

(assert (=> b!1172352 (= e!666396 tp_is_empty!29481)))

(declare-fun b!1172353 () Bool)

(declare-fun e!666385 () Bool)

(assert (=> b!1172353 (= e!666397 e!666385)))

(declare-fun res!778465 () Bool)

(assert (=> b!1172353 (=> (not res!778465) (not e!666385))))

(assert (=> b!1172353 (= res!778465 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!528202 mask!1564))))

(assert (=> b!1172353 (= lt!528202 (array!75739 (store (arr!36515 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!37052 _keys!1208)))))

(declare-fun b!1172354 () Bool)

(assert (=> b!1172354 (= e!666390 (and e!666396 mapRes!46049))))

(declare-fun condMapEmpty!46049 () Bool)

(declare-fun mapDefault!46049 () ValueCell!14031)

(assert (=> b!1172354 (= condMapEmpty!46049 (= (arr!36516 _values!996) ((as const (Array (_ BitVec 32) ValueCell!14031)) mapDefault!46049)))))

(declare-fun b!1172355 () Bool)

(assert (=> b!1172355 (= e!666385 (not e!666394))))

(declare-fun res!778454 () Bool)

(assert (=> b!1172355 (=> res!778454 e!666394)))

(assert (=> b!1172355 (= res!778454 (bvsgt from!1455 i!673))))

(assert (=> b!1172355 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-fun lt!528209 () Unit!38560)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!75738 (_ BitVec 64) (_ BitVec 32)) Unit!38560)

(assert (=> b!1172355 (= lt!528209 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1172356 () Bool)

(declare-fun res!778466 () Bool)

(assert (=> b!1172356 (=> (not res!778466) (not e!666385))))

(assert (=> b!1172356 (= res!778466 (arrayNoDuplicates!0 lt!528202 #b00000000000000000000000000000000 Nil!25772))))

(assert (= (and start!99408 res!778459) b!1172349))

(assert (= (and b!1172349 res!778455) b!1172344))

(assert (= (and b!1172344 res!778467) b!1172339))

(assert (= (and b!1172339 res!778468) b!1172345))

(assert (= (and b!1172345 res!778451) b!1172346))

(assert (= (and b!1172346 res!778457) b!1172348))

(assert (= (and b!1172348 res!778462) b!1172335))

(assert (= (and b!1172335 res!778456) b!1172353))

(assert (= (and b!1172353 res!778465) b!1172356))

(assert (= (and b!1172356 res!778466) b!1172355))

(assert (= (and b!1172355 (not res!778454)) b!1172343))

(assert (= (and b!1172343 (not res!778463)) b!1172340))

(assert (= (and b!1172340 (not res!778460)) b!1172337))

(assert (= (and b!1172337 res!778452) b!1172350))

(assert (= (and b!1172350 (not res!778458)) b!1172347))

(assert (= (and b!1172337 (not res!778450)) b!1172341))

(assert (= (and b!1172341 (not res!778461)) b!1172342))

(assert (= (and b!1172342 (not res!778453)) b!1172351))

(assert (= (and b!1172351 (not res!778464)) b!1172336))

(assert (= (and b!1172354 condMapEmpty!46049) mapIsEmpty!46049))

(assert (= (and b!1172354 (not condMapEmpty!46049)) mapNonEmpty!46049))

(get-info :version)

(assert (= (and mapNonEmpty!46049 ((_ is ValueCellFull!14031) mapValue!46049)) b!1172338))

(assert (= (and b!1172354 ((_ is ValueCellFull!14031) mapDefault!46049)) b!1172352))

(assert (= start!99408 b!1172354))

(declare-fun b_lambda!20113 () Bool)

(assert (=> (not b_lambda!20113) (not b!1172343)))

(declare-fun t!37724 () Bool)

(declare-fun tb!9771 () Bool)

(assert (=> (and start!99408 (= defaultEntry!1004 defaultEntry!1004) t!37724) tb!9771))

(declare-fun result!20101 () Bool)

(assert (=> tb!9771 (= result!20101 tp_is_empty!29481)))

(assert (=> b!1172343 t!37724))

(declare-fun b_and!40785 () Bool)

(assert (= b_and!40783 (and (=> t!37724 result!20101) b_and!40785)))

(declare-fun m!1080205 () Bool)

(assert (=> b!1172341 m!1080205))

(declare-fun m!1080207 () Bool)

(assert (=> b!1172341 m!1080207))

(declare-fun m!1080209 () Bool)

(assert (=> b!1172341 m!1080209))

(declare-fun m!1080211 () Bool)

(assert (=> b!1172341 m!1080211))

(declare-fun m!1080213 () Bool)

(assert (=> b!1172345 m!1080213))

(declare-fun m!1080215 () Bool)

(assert (=> mapNonEmpty!46049 m!1080215))

(declare-fun m!1080217 () Bool)

(assert (=> b!1172353 m!1080217))

(declare-fun m!1080219 () Bool)

(assert (=> b!1172353 m!1080219))

(declare-fun m!1080221 () Bool)

(assert (=> b!1172342 m!1080221))

(declare-fun m!1080223 () Bool)

(assert (=> b!1172356 m!1080223))

(declare-fun m!1080225 () Bool)

(assert (=> b!1172337 m!1080225))

(declare-fun m!1080227 () Bool)

(assert (=> b!1172337 m!1080227))

(assert (=> b!1172337 m!1080227))

(declare-fun m!1080229 () Bool)

(assert (=> b!1172337 m!1080229))

(declare-fun m!1080231 () Bool)

(assert (=> b!1172337 m!1080231))

(declare-fun m!1080233 () Bool)

(assert (=> b!1172339 m!1080233))

(declare-fun m!1080235 () Bool)

(assert (=> b!1172343 m!1080235))

(declare-fun m!1080237 () Bool)

(assert (=> b!1172343 m!1080237))

(declare-fun m!1080239 () Bool)

(assert (=> b!1172343 m!1080239))

(declare-fun m!1080241 () Bool)

(assert (=> b!1172343 m!1080241))

(declare-fun m!1080243 () Bool)

(assert (=> b!1172336 m!1080243))

(declare-fun m!1080245 () Bool)

(assert (=> b!1172347 m!1080245))

(declare-fun m!1080247 () Bool)

(assert (=> b!1172348 m!1080247))

(declare-fun m!1080249 () Bool)

(assert (=> b!1172335 m!1080249))

(declare-fun m!1080251 () Bool)

(assert (=> b!1172355 m!1080251))

(declare-fun m!1080253 () Bool)

(assert (=> b!1172355 m!1080253))

(declare-fun m!1080255 () Bool)

(assert (=> start!99408 m!1080255))

(declare-fun m!1080257 () Bool)

(assert (=> start!99408 m!1080257))

(assert (=> b!1172350 m!1080225))

(declare-fun m!1080259 () Bool)

(assert (=> b!1172351 m!1080259))

(declare-fun m!1080261 () Bool)

(assert (=> b!1172349 m!1080261))

(declare-fun m!1080263 () Bool)

(assert (=> b!1172340 m!1080263))

(declare-fun m!1080265 () Bool)

(assert (=> b!1172340 m!1080265))

(declare-fun m!1080267 () Bool)

(assert (=> b!1172340 m!1080267))

(assert (=> b!1172340 m!1080225))

(declare-fun m!1080269 () Bool)

(assert (=> b!1172340 m!1080269))

(assert (=> b!1172340 m!1080225))

(declare-fun m!1080271 () Bool)

(assert (=> b!1172340 m!1080271))

(check-sat (not b!1172341) (not b!1172349) (not b!1172337) (not mapNonEmpty!46049) b_and!40785 (not b!1172348) (not b!1172343) (not b!1172353) tp_is_empty!29481 (not b_next!24951) (not b!1172342) (not b!1172340) (not b!1172351) (not b!1172339) (not b!1172356) (not b!1172345) (not b!1172355) (not b_lambda!20113) (not b!1172347) (not start!99408) (not b!1172336))
(check-sat b_and!40785 (not b_next!24951))
