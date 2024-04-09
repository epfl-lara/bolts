; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!99348 () Bool)

(assert start!99348)

(declare-fun b_free!24891 () Bool)

(declare-fun b_next!24891 () Bool)

(assert (=> start!99348 (= b_free!24891 (not b_next!24891))))

(declare-fun tp!87388 () Bool)

(declare-fun b_and!40663 () Bool)

(assert (=> start!99348 (= tp!87388 b_and!40663)))

(declare-fun b!1170361 () Bool)

(declare-fun e!665245 () Bool)

(declare-fun e!665238 () Bool)

(assert (=> b!1170361 (= e!665245 e!665238)))

(declare-fun res!776817 () Bool)

(assert (=> b!1170361 (=> res!776817 e!665238)))

(declare-datatypes ((array!75618 0))(
  ( (array!75619 (arr!36455 (Array (_ BitVec 32) (_ BitVec 64))) (size!36992 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!75618)

(declare-fun k0!934 () (_ BitVec 64))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> b!1170361 (= res!776817 (not (= (select (arr!36455 _keys!1208) from!1455) k0!934)))))

(declare-fun e!665242 () Bool)

(assert (=> b!1170361 e!665242))

(declare-fun res!776812 () Bool)

(assert (=> b!1170361 (=> (not res!776812) (not e!665242))))

(declare-datatypes ((V!44355 0))(
  ( (V!44356 (val!14767 Int)) )
))
(declare-datatypes ((tuple2!18950 0))(
  ( (tuple2!18951 (_1!9485 (_ BitVec 64)) (_2!9485 V!44355)) )
))
(declare-datatypes ((List!25721 0))(
  ( (Nil!25718) (Cons!25717 (h!26926 tuple2!18950) (t!37611 List!25721)) )
))
(declare-datatypes ((ListLongMap!16931 0))(
  ( (ListLongMap!16932 (toList!8481 List!25721)) )
))
(declare-fun lt!527079 () ListLongMap!16931)

(declare-datatypes ((ValueCell!14001 0))(
  ( (ValueCellFull!14001 (v!17406 V!44355)) (EmptyCell!14001) )
))
(declare-datatypes ((array!75620 0))(
  ( (array!75621 (arr!36456 (Array (_ BitVec 32) ValueCell!14001)) (size!36993 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!75620)

(declare-fun lt!527073 () ListLongMap!16931)

(declare-fun lt!527076 () V!44355)

(declare-fun +!3725 (ListLongMap!16931 tuple2!18950) ListLongMap!16931)

(declare-fun get!18622 (ValueCell!14001 V!44355) V!44355)

(assert (=> b!1170361 (= res!776812 (= lt!527079 (+!3725 lt!527073 (tuple2!18951 (select (arr!36455 _keys!1208) from!1455) (get!18622 (select (arr!36456 _values!996) from!1455) lt!527076)))))))

(declare-fun b!1170362 () Bool)

(assert (=> b!1170362 (= e!665238 true)))

(declare-fun arrayContainsKey!0 (array!75618 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1170362 (arrayContainsKey!0 _keys!1208 k0!934 (bvadd #b00000000000000000000000000000001 from!1455))))

(declare-fun i!673 () (_ BitVec 32))

(declare-datatypes ((Unit!38504 0))(
  ( (Unit!38505) )
))
(declare-fun lt!527072 () Unit!38504)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!75618 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!38504)

(assert (=> b!1170362 (= lt!527072 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 _keys!1208 k0!934 i!673 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun b!1170363 () Bool)

(declare-fun res!776811 () Bool)

(declare-fun e!665239 () Bool)

(assert (=> b!1170363 (=> (not res!776811) (not e!665239))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1170363 (= res!776811 (validKeyInArray!0 k0!934))))

(declare-fun b!1170364 () Bool)

(declare-fun e!665247 () Bool)

(declare-fun e!665237 () Bool)

(assert (=> b!1170364 (= e!665247 (not e!665237))))

(declare-fun res!776807 () Bool)

(assert (=> b!1170364 (=> res!776807 e!665237)))

(assert (=> b!1170364 (= res!776807 (bvsgt from!1455 i!673))))

(assert (=> b!1170364 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-fun lt!527082 () Unit!38504)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!75618 (_ BitVec 64) (_ BitVec 32)) Unit!38504)

(assert (=> b!1170364 (= lt!527082 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1170366 () Bool)

(declare-fun res!776814 () Bool)

(assert (=> b!1170366 (=> (not res!776814) (not e!665239))))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!75618 (_ BitVec 32)) Bool)

(assert (=> b!1170366 (= res!776814 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1170367 () Bool)

(declare-fun e!665240 () Bool)

(assert (=> b!1170367 (= e!665237 e!665240)))

(declare-fun res!776818 () Bool)

(assert (=> b!1170367 (=> res!776818 e!665240)))

(assert (=> b!1170367 (= res!776818 (or (= from!1455 i!673) (bvsge from!1455 i!673)))))

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun minValue!944 () V!44355)

(declare-fun zeroValue!944 () V!44355)

(declare-fun lt!527080 () array!75618)

(declare-fun defaultEntry!1004 () Int)

(declare-fun lt!527077 () array!75620)

(declare-fun getCurrentListMapNoExtraKeys!4913 (array!75618 array!75620 (_ BitVec 32) (_ BitVec 32) V!44355 V!44355 (_ BitVec 32) Int) ListLongMap!16931)

(assert (=> b!1170367 (= lt!527079 (getCurrentListMapNoExtraKeys!4913 lt!527080 lt!527077 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(assert (=> b!1170367 (= lt!527077 (array!75621 (store (arr!36456 _values!996) i!673 (ValueCellFull!14001 lt!527076)) (size!36993 _values!996)))))

(declare-fun dynLambda!2902 (Int (_ BitVec 64)) V!44355)

(assert (=> b!1170367 (= lt!527076 (dynLambda!2902 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!527078 () ListLongMap!16931)

(assert (=> b!1170367 (= lt!527078 (getCurrentListMapNoExtraKeys!4913 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1170368 () Bool)

(declare-fun res!776820 () Bool)

(assert (=> b!1170368 (=> (not res!776820) (not e!665239))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1170368 (= res!776820 (validMask!0 mask!1564))))

(declare-fun b!1170369 () Bool)

(assert (=> b!1170369 (= e!665240 e!665245)))

(declare-fun res!776815 () Bool)

(assert (=> b!1170369 (=> res!776815 e!665245)))

(assert (=> b!1170369 (= res!776815 (not (validKeyInArray!0 (select (arr!36455 _keys!1208) from!1455))))))

(declare-fun lt!527075 () ListLongMap!16931)

(assert (=> b!1170369 (= lt!527075 lt!527073)))

(declare-fun lt!527074 () ListLongMap!16931)

(declare-fun -!1501 (ListLongMap!16931 (_ BitVec 64)) ListLongMap!16931)

(assert (=> b!1170369 (= lt!527073 (-!1501 lt!527074 k0!934))))

(assert (=> b!1170369 (= lt!527075 (getCurrentListMapNoExtraKeys!4913 lt!527080 lt!527077 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(assert (=> b!1170369 (= lt!527074 (getCurrentListMapNoExtraKeys!4913 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun lt!527081 () Unit!38504)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!725 (array!75618 array!75620 (_ BitVec 32) (_ BitVec 32) V!44355 V!44355 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!38504)

(assert (=> b!1170369 (= lt!527081 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!725 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun mapNonEmpty!45959 () Bool)

(declare-fun mapRes!45959 () Bool)

(declare-fun tp!87387 () Bool)

(declare-fun e!665246 () Bool)

(assert (=> mapNonEmpty!45959 (= mapRes!45959 (and tp!87387 e!665246))))

(declare-fun mapRest!45959 () (Array (_ BitVec 32) ValueCell!14001))

(declare-fun mapKey!45959 () (_ BitVec 32))

(declare-fun mapValue!45959 () ValueCell!14001)

(assert (=> mapNonEmpty!45959 (= (arr!36456 _values!996) (store mapRest!45959 mapKey!45959 mapValue!45959))))

(declare-fun mapIsEmpty!45959 () Bool)

(assert (=> mapIsEmpty!45959 mapRes!45959))

(declare-fun b!1170370 () Bool)

(declare-fun res!776813 () Bool)

(assert (=> b!1170370 (=> (not res!776813) (not e!665247))))

(declare-datatypes ((List!25722 0))(
  ( (Nil!25719) (Cons!25718 (h!26927 (_ BitVec 64)) (t!37612 List!25722)) )
))
(declare-fun arrayNoDuplicates!0 (array!75618 (_ BitVec 32) List!25722) Bool)

(assert (=> b!1170370 (= res!776813 (arrayNoDuplicates!0 lt!527080 #b00000000000000000000000000000000 Nil!25719))))

(declare-fun b!1170371 () Bool)

(declare-fun res!776806 () Bool)

(assert (=> b!1170371 (=> (not res!776806) (not e!665239))))

(assert (=> b!1170371 (= res!776806 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!25719))))

(declare-fun b!1170372 () Bool)

(declare-fun res!776821 () Bool)

(assert (=> b!1170372 (=> (not res!776821) (not e!665239))))

(assert (=> b!1170372 (= res!776821 (and (= (size!36993 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!36992 _keys!1208) (size!36993 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1170373 () Bool)

(declare-fun e!665244 () Bool)

(assert (=> b!1170373 (= e!665242 e!665244)))

(declare-fun res!776808 () Bool)

(assert (=> b!1170373 (=> res!776808 e!665244)))

(assert (=> b!1170373 (= res!776808 (not (= (select (arr!36455 _keys!1208) from!1455) k0!934)))))

(declare-fun b!1170365 () Bool)

(declare-fun res!776816 () Bool)

(assert (=> b!1170365 (=> (not res!776816) (not e!665239))))

(assert (=> b!1170365 (= res!776816 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!36992 _keys!1208))))))

(declare-fun res!776819 () Bool)

(assert (=> start!99348 (=> (not res!776819) (not e!665239))))

(assert (=> start!99348 (= res!776819 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!36992 _keys!1208))))))

(assert (=> start!99348 e!665239))

(declare-fun tp_is_empty!29421 () Bool)

(assert (=> start!99348 tp_is_empty!29421))

(declare-fun array_inv!27742 (array!75618) Bool)

(assert (=> start!99348 (array_inv!27742 _keys!1208)))

(assert (=> start!99348 true))

(assert (=> start!99348 tp!87388))

(declare-fun e!665243 () Bool)

(declare-fun array_inv!27743 (array!75620) Bool)

(assert (=> start!99348 (and (array_inv!27743 _values!996) e!665243)))

(declare-fun b!1170374 () Bool)

(assert (=> b!1170374 (= e!665244 (arrayContainsKey!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1170375 () Bool)

(assert (=> b!1170375 (= e!665239 e!665247)))

(declare-fun res!776810 () Bool)

(assert (=> b!1170375 (=> (not res!776810) (not e!665247))))

(assert (=> b!1170375 (= res!776810 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!527080 mask!1564))))

(assert (=> b!1170375 (= lt!527080 (array!75619 (store (arr!36455 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!36992 _keys!1208)))))

(declare-fun b!1170376 () Bool)

(declare-fun e!665241 () Bool)

(assert (=> b!1170376 (= e!665243 (and e!665241 mapRes!45959))))

(declare-fun condMapEmpty!45959 () Bool)

(declare-fun mapDefault!45959 () ValueCell!14001)

(assert (=> b!1170376 (= condMapEmpty!45959 (= (arr!36456 _values!996) ((as const (Array (_ BitVec 32) ValueCell!14001)) mapDefault!45959)))))

(declare-fun b!1170377 () Bool)

(declare-fun res!776809 () Bool)

(assert (=> b!1170377 (=> (not res!776809) (not e!665239))))

(assert (=> b!1170377 (= res!776809 (= (select (arr!36455 _keys!1208) i!673) k0!934))))

(declare-fun b!1170378 () Bool)

(assert (=> b!1170378 (= e!665241 tp_is_empty!29421)))

(declare-fun b!1170379 () Bool)

(assert (=> b!1170379 (= e!665246 tp_is_empty!29421)))

(assert (= (and start!99348 res!776819) b!1170368))

(assert (= (and b!1170368 res!776820) b!1170372))

(assert (= (and b!1170372 res!776821) b!1170366))

(assert (= (and b!1170366 res!776814) b!1170371))

(assert (= (and b!1170371 res!776806) b!1170365))

(assert (= (and b!1170365 res!776816) b!1170363))

(assert (= (and b!1170363 res!776811) b!1170377))

(assert (= (and b!1170377 res!776809) b!1170375))

(assert (= (and b!1170375 res!776810) b!1170370))

(assert (= (and b!1170370 res!776813) b!1170364))

(assert (= (and b!1170364 (not res!776807)) b!1170367))

(assert (= (and b!1170367 (not res!776818)) b!1170369))

(assert (= (and b!1170369 (not res!776815)) b!1170361))

(assert (= (and b!1170361 res!776812) b!1170373))

(assert (= (and b!1170373 (not res!776808)) b!1170374))

(assert (= (and b!1170361 (not res!776817)) b!1170362))

(assert (= (and b!1170376 condMapEmpty!45959) mapIsEmpty!45959))

(assert (= (and b!1170376 (not condMapEmpty!45959)) mapNonEmpty!45959))

(get-info :version)

(assert (= (and mapNonEmpty!45959 ((_ is ValueCellFull!14001) mapValue!45959)) b!1170379))

(assert (= (and b!1170376 ((_ is ValueCellFull!14001) mapDefault!45959)) b!1170378))

(assert (= start!99348 b!1170376))

(declare-fun b_lambda!20053 () Bool)

(assert (=> (not b_lambda!20053) (not b!1170367)))

(declare-fun t!37610 () Bool)

(declare-fun tb!9711 () Bool)

(assert (=> (and start!99348 (= defaultEntry!1004 defaultEntry!1004) t!37610) tb!9711))

(declare-fun result!19981 () Bool)

(assert (=> tb!9711 (= result!19981 tp_is_empty!29421)))

(assert (=> b!1170367 t!37610))

(declare-fun b_and!40665 () Bool)

(assert (= b_and!40663 (and (=> t!37610 result!19981) b_and!40665)))

(declare-fun m!1078245 () Bool)

(assert (=> b!1170370 m!1078245))

(declare-fun m!1078247 () Bool)

(assert (=> b!1170375 m!1078247))

(declare-fun m!1078249 () Bool)

(assert (=> b!1170375 m!1078249))

(declare-fun m!1078251 () Bool)

(assert (=> b!1170364 m!1078251))

(declare-fun m!1078253 () Bool)

(assert (=> b!1170364 m!1078253))

(declare-fun m!1078255 () Bool)

(assert (=> b!1170362 m!1078255))

(declare-fun m!1078257 () Bool)

(assert (=> b!1170362 m!1078257))

(declare-fun m!1078259 () Bool)

(assert (=> b!1170374 m!1078259))

(declare-fun m!1078261 () Bool)

(assert (=> b!1170368 m!1078261))

(declare-fun m!1078263 () Bool)

(assert (=> b!1170369 m!1078263))

(declare-fun m!1078265 () Bool)

(assert (=> b!1170369 m!1078265))

(declare-fun m!1078267 () Bool)

(assert (=> b!1170369 m!1078267))

(declare-fun m!1078269 () Bool)

(assert (=> b!1170369 m!1078269))

(assert (=> b!1170369 m!1078267))

(declare-fun m!1078271 () Bool)

(assert (=> b!1170369 m!1078271))

(declare-fun m!1078273 () Bool)

(assert (=> b!1170369 m!1078273))

(assert (=> b!1170361 m!1078267))

(declare-fun m!1078275 () Bool)

(assert (=> b!1170361 m!1078275))

(assert (=> b!1170361 m!1078275))

(declare-fun m!1078277 () Bool)

(assert (=> b!1170361 m!1078277))

(declare-fun m!1078279 () Bool)

(assert (=> b!1170361 m!1078279))

(declare-fun m!1078281 () Bool)

(assert (=> b!1170377 m!1078281))

(declare-fun m!1078283 () Bool)

(assert (=> start!99348 m!1078283))

(declare-fun m!1078285 () Bool)

(assert (=> start!99348 m!1078285))

(declare-fun m!1078287 () Bool)

(assert (=> b!1170363 m!1078287))

(declare-fun m!1078289 () Bool)

(assert (=> b!1170366 m!1078289))

(declare-fun m!1078291 () Bool)

(assert (=> mapNonEmpty!45959 m!1078291))

(declare-fun m!1078293 () Bool)

(assert (=> b!1170371 m!1078293))

(declare-fun m!1078295 () Bool)

(assert (=> b!1170367 m!1078295))

(declare-fun m!1078297 () Bool)

(assert (=> b!1170367 m!1078297))

(declare-fun m!1078299 () Bool)

(assert (=> b!1170367 m!1078299))

(declare-fun m!1078301 () Bool)

(assert (=> b!1170367 m!1078301))

(assert (=> b!1170373 m!1078267))

(check-sat (not b!1170362) (not b!1170375) (not b_next!24891) (not b!1170364) (not b!1170366) tp_is_empty!29421 (not b!1170363) (not b!1170370) (not b!1170371) (not b!1170361) (not b!1170374) (not start!99348) (not b!1170367) (not b!1170368) (not b_lambda!20053) (not mapNonEmpty!45959) (not b!1170369) b_and!40665)
(check-sat b_and!40665 (not b_next!24891))
