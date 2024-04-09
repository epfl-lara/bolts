; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!99720 () Bool)

(assert start!99720)

(declare-fun b_free!25263 () Bool)

(declare-fun b_next!25263 () Bool)

(assert (=> start!99720 (= b_free!25263 (not b_next!25263))))

(declare-fun tp!88503 () Bool)

(declare-fun b_and!41407 () Bool)

(assert (=> start!99720 (= tp!88503 b_and!41407)))

(declare-fun b!1182375 () Bool)

(declare-fun e!672268 () Bool)

(assert (=> b!1182375 (= e!672268 true)))

(declare-datatypes ((V!44851 0))(
  ( (V!44852 (val!14953 Int)) )
))
(declare-datatypes ((tuple2!19282 0))(
  ( (tuple2!19283 (_1!9651 (_ BitVec 64)) (_2!9651 V!44851)) )
))
(declare-datatypes ((List!26044 0))(
  ( (Nil!26041) (Cons!26040 (h!27249 tuple2!19282) (t!38306 List!26044)) )
))
(declare-datatypes ((ListLongMap!17263 0))(
  ( (ListLongMap!17264 (toList!8647 List!26044)) )
))
(declare-fun lt!535194 () ListLongMap!17263)

(declare-fun k0!934 () (_ BitVec 64))

(declare-fun lt!535196 () ListLongMap!17263)

(declare-fun -!1636 (ListLongMap!17263 (_ BitVec 64)) ListLongMap!17263)

(assert (=> b!1182375 (= (-!1636 lt!535194 k0!934) lt!535196)))

(declare-fun lt!535201 () V!44851)

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun lt!535205 () ListLongMap!17263)

(declare-datatypes ((array!76354 0))(
  ( (array!76355 (arr!36823 (Array (_ BitVec 32) (_ BitVec 64))) (size!37360 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!76354)

(declare-datatypes ((Unit!39043 0))(
  ( (Unit!39044) )
))
(declare-fun lt!535210 () Unit!39043)

(declare-fun addRemoveCommutativeForDiffKeys!155 (ListLongMap!17263 (_ BitVec 64) V!44851 (_ BitVec 64)) Unit!39043)

(assert (=> b!1182375 (= lt!535210 (addRemoveCommutativeForDiffKeys!155 lt!535205 (select (arr!36823 _keys!1208) from!1455) lt!535201 k0!934))))

(declare-fun lt!535197 () ListLongMap!17263)

(declare-fun lt!535199 () ListLongMap!17263)

(declare-fun lt!535209 () ListLongMap!17263)

(assert (=> b!1182375 (and (= lt!535209 lt!535194) (= lt!535199 lt!535197))))

(declare-fun lt!535206 () tuple2!19282)

(declare-fun +!3865 (ListLongMap!17263 tuple2!19282) ListLongMap!17263)

(assert (=> b!1182375 (= lt!535194 (+!3865 lt!535205 lt!535206))))

(assert (=> b!1182375 (not (= (select (arr!36823 _keys!1208) from!1455) k0!934))))

(declare-fun lt!535198 () Unit!39043)

(declare-fun e!672272 () Unit!39043)

(assert (=> b!1182375 (= lt!535198 e!672272)))

(declare-fun c!116966 () Bool)

(assert (=> b!1182375 (= c!116966 (= (select (arr!36823 _keys!1208) from!1455) k0!934))))

(declare-fun e!672267 () Bool)

(assert (=> b!1182375 e!672267))

(declare-fun res!785876 () Bool)

(assert (=> b!1182375 (=> (not res!785876) (not e!672267))))

(declare-fun lt!535204 () ListLongMap!17263)

(assert (=> b!1182375 (= res!785876 (= lt!535204 lt!535196))))

(assert (=> b!1182375 (= lt!535196 (+!3865 lt!535199 lt!535206))))

(assert (=> b!1182375 (= lt!535206 (tuple2!19283 (select (arr!36823 _keys!1208) from!1455) lt!535201))))

(declare-fun lt!535195 () V!44851)

(declare-datatypes ((ValueCell!14187 0))(
  ( (ValueCellFull!14187 (v!17592 V!44851)) (EmptyCell!14187) )
))
(declare-datatypes ((array!76356 0))(
  ( (array!76357 (arr!36824 (Array (_ BitVec 32) ValueCell!14187)) (size!37361 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!76356)

(declare-fun get!18875 (ValueCell!14187 V!44851) V!44851)

(assert (=> b!1182375 (= lt!535201 (get!18875 (select (arr!36824 _values!996) from!1455) lt!535195))))

(declare-fun b!1182376 () Bool)

(declare-fun Unit!39045 () Unit!39043)

(assert (=> b!1182376 (= e!672272 Unit!39045)))

(declare-fun i!673 () (_ BitVec 32))

(declare-fun lt!535208 () Unit!39043)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!76354 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!39043)

(assert (=> b!1182376 (= lt!535208 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 _keys!1208 k0!934 i!673 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun arrayContainsKey!0 (array!76354 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1182376 (arrayContainsKey!0 _keys!1208 k0!934 (bvadd #b00000000000000000000000000000001 from!1455))))

(declare-fun lt!535211 () Unit!39043)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!76354 (_ BitVec 32) (_ BitVec 32)) Unit!39043)

(assert (=> b!1182376 (= lt!535211 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1208 #b00000000000000000000000000000000 from!1455))))

(declare-datatypes ((List!26045 0))(
  ( (Nil!26042) (Cons!26041 (h!27250 (_ BitVec 64)) (t!38307 List!26045)) )
))
(declare-fun arrayNoDuplicates!0 (array!76354 (_ BitVec 32) List!26045) Bool)

(assert (=> b!1182376 (arrayNoDuplicates!0 _keys!1208 from!1455 Nil!26042)))

(declare-fun lt!535202 () Unit!39043)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!76354 (_ BitVec 64) (_ BitVec 32) List!26045) Unit!39043)

(assert (=> b!1182376 (= lt!535202 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!1208 k0!934 from!1455 Nil!26042))))

(assert (=> b!1182376 false))

(declare-fun b!1182377 () Bool)

(declare-fun res!785867 () Bool)

(declare-fun e!672270 () Bool)

(assert (=> b!1182377 (=> (not res!785867) (not e!672270))))

(assert (=> b!1182377 (= res!785867 (= (select (arr!36823 _keys!1208) i!673) k0!934))))

(declare-fun b!1182378 () Bool)

(declare-fun res!785868 () Bool)

(assert (=> b!1182378 (=> (not res!785868) (not e!672270))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1182378 (= res!785868 (validKeyInArray!0 k0!934))))

(declare-fun b!1182379 () Bool)

(declare-fun res!785869 () Bool)

(assert (=> b!1182379 (=> (not res!785869) (not e!672270))))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!76354 (_ BitVec 32)) Bool)

(assert (=> b!1182379 (= res!785869 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1182380 () Bool)

(declare-fun res!785864 () Bool)

(assert (=> b!1182380 (=> (not res!785864) (not e!672270))))

(declare-fun extraKeys!923 () (_ BitVec 32))

(assert (=> b!1182380 (= res!785864 (and (= (size!37361 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!37360 _keys!1208) (size!37361 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1182381 () Bool)

(declare-fun e!672276 () Bool)

(declare-fun e!672271 () Bool)

(declare-fun mapRes!46517 () Bool)

(assert (=> b!1182381 (= e!672276 (and e!672271 mapRes!46517))))

(declare-fun condMapEmpty!46517 () Bool)

(declare-fun mapDefault!46517 () ValueCell!14187)

(assert (=> b!1182381 (= condMapEmpty!46517 (= (arr!36824 _values!996) ((as const (Array (_ BitVec 32) ValueCell!14187)) mapDefault!46517)))))

(declare-fun mapIsEmpty!46517 () Bool)

(assert (=> mapIsEmpty!46517 mapRes!46517))

(declare-fun b!1182382 () Bool)

(declare-fun e!672273 () Bool)

(assert (=> b!1182382 (= e!672273 e!672268)))

(declare-fun res!785877 () Bool)

(assert (=> b!1182382 (=> res!785877 e!672268)))

(assert (=> b!1182382 (= res!785877 (not (validKeyInArray!0 (select (arr!36823 _keys!1208) from!1455))))))

(assert (=> b!1182382 (= lt!535197 lt!535199)))

(assert (=> b!1182382 (= lt!535199 (-!1636 lt!535205 k0!934))))

(declare-fun zeroValue!944 () V!44851)

(declare-fun minValue!944 () V!44851)

(declare-fun lt!535200 () array!76354)

(declare-fun defaultEntry!1004 () Int)

(declare-fun lt!535203 () array!76356)

(declare-fun getCurrentListMapNoExtraKeys!5069 (array!76354 array!76356 (_ BitVec 32) (_ BitVec 32) V!44851 V!44851 (_ BitVec 32) Int) ListLongMap!17263)

(assert (=> b!1182382 (= lt!535197 (getCurrentListMapNoExtraKeys!5069 lt!535200 lt!535203 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(assert (=> b!1182382 (= lt!535205 (getCurrentListMapNoExtraKeys!5069 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun lt!535207 () Unit!39043)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!857 (array!76354 array!76356 (_ BitVec 32) (_ BitVec 32) V!44851 V!44851 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!39043)

(assert (=> b!1182382 (= lt!535207 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!857 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1182383 () Bool)

(declare-fun e!672277 () Bool)

(assert (=> b!1182383 (= e!672267 e!672277)))

(declare-fun res!785870 () Bool)

(assert (=> b!1182383 (=> res!785870 e!672277)))

(assert (=> b!1182383 (= res!785870 (not (= (select (arr!36823 _keys!1208) from!1455) k0!934)))))

(declare-fun b!1182384 () Bool)

(declare-fun e!672274 () Bool)

(assert (=> b!1182384 (= e!672270 e!672274)))

(declare-fun res!785872 () Bool)

(assert (=> b!1182384 (=> (not res!785872) (not e!672274))))

(assert (=> b!1182384 (= res!785872 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!535200 mask!1564))))

(assert (=> b!1182384 (= lt!535200 (array!76355 (store (arr!36823 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!37360 _keys!1208)))))

(declare-fun b!1182385 () Bool)

(declare-fun res!785871 () Bool)

(assert (=> b!1182385 (=> (not res!785871) (not e!672270))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1182385 (= res!785871 (validMask!0 mask!1564))))

(declare-fun b!1182387 () Bool)

(declare-fun e!672269 () Bool)

(assert (=> b!1182387 (= e!672269 e!672273)))

(declare-fun res!785874 () Bool)

(assert (=> b!1182387 (=> res!785874 e!672273)))

(assert (=> b!1182387 (= res!785874 (or (= from!1455 i!673) (bvsge from!1455 i!673)))))

(assert (=> b!1182387 (= lt!535204 (getCurrentListMapNoExtraKeys!5069 lt!535200 lt!535203 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(assert (=> b!1182387 (= lt!535203 (array!76357 (store (arr!36824 _values!996) i!673 (ValueCellFull!14187 lt!535195)) (size!37361 _values!996)))))

(declare-fun dynLambda!3037 (Int (_ BitVec 64)) V!44851)

(assert (=> b!1182387 (= lt!535195 (dynLambda!3037 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1182387 (= lt!535209 (getCurrentListMapNoExtraKeys!5069 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1182386 () Bool)

(declare-fun e!672266 () Bool)

(declare-fun tp_is_empty!29793 () Bool)

(assert (=> b!1182386 (= e!672266 tp_is_empty!29793)))

(declare-fun res!785873 () Bool)

(assert (=> start!99720 (=> (not res!785873) (not e!672270))))

(assert (=> start!99720 (= res!785873 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!37360 _keys!1208))))))

(assert (=> start!99720 e!672270))

(assert (=> start!99720 tp_is_empty!29793))

(declare-fun array_inv!27992 (array!76354) Bool)

(assert (=> start!99720 (array_inv!27992 _keys!1208)))

(assert (=> start!99720 true))

(assert (=> start!99720 tp!88503))

(declare-fun array_inv!27993 (array!76356) Bool)

(assert (=> start!99720 (and (array_inv!27993 _values!996) e!672276)))

(declare-fun b!1182388 () Bool)

(declare-fun res!785865 () Bool)

(assert (=> b!1182388 (=> (not res!785865) (not e!672274))))

(assert (=> b!1182388 (= res!785865 (arrayNoDuplicates!0 lt!535200 #b00000000000000000000000000000000 Nil!26042))))

(declare-fun b!1182389 () Bool)

(declare-fun Unit!39046 () Unit!39043)

(assert (=> b!1182389 (= e!672272 Unit!39046)))

(declare-fun b!1182390 () Bool)

(declare-fun res!785866 () Bool)

(assert (=> b!1182390 (=> (not res!785866) (not e!672270))))

(assert (=> b!1182390 (= res!785866 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!26042))))

(declare-fun b!1182391 () Bool)

(assert (=> b!1182391 (= e!672277 (arrayContainsKey!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1182392 () Bool)

(declare-fun res!785878 () Bool)

(assert (=> b!1182392 (=> (not res!785878) (not e!672270))))

(assert (=> b!1182392 (= res!785878 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!37360 _keys!1208))))))

(declare-fun b!1182393 () Bool)

(assert (=> b!1182393 (= e!672271 tp_is_empty!29793)))

(declare-fun mapNonEmpty!46517 () Bool)

(declare-fun tp!88504 () Bool)

(assert (=> mapNonEmpty!46517 (= mapRes!46517 (and tp!88504 e!672266))))

(declare-fun mapKey!46517 () (_ BitVec 32))

(declare-fun mapValue!46517 () ValueCell!14187)

(declare-fun mapRest!46517 () (Array (_ BitVec 32) ValueCell!14187))

(assert (=> mapNonEmpty!46517 (= (arr!36824 _values!996) (store mapRest!46517 mapKey!46517 mapValue!46517))))

(declare-fun b!1182394 () Bool)

(assert (=> b!1182394 (= e!672274 (not e!672269))))

(declare-fun res!785875 () Bool)

(assert (=> b!1182394 (=> res!785875 e!672269)))

(assert (=> b!1182394 (= res!785875 (bvsgt from!1455 i!673))))

(assert (=> b!1182394 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-fun lt!535212 () Unit!39043)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!76354 (_ BitVec 64) (_ BitVec 32)) Unit!39043)

(assert (=> b!1182394 (= lt!535212 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(assert (= (and start!99720 res!785873) b!1182385))

(assert (= (and b!1182385 res!785871) b!1182380))

(assert (= (and b!1182380 res!785864) b!1182379))

(assert (= (and b!1182379 res!785869) b!1182390))

(assert (= (and b!1182390 res!785866) b!1182392))

(assert (= (and b!1182392 res!785878) b!1182378))

(assert (= (and b!1182378 res!785868) b!1182377))

(assert (= (and b!1182377 res!785867) b!1182384))

(assert (= (and b!1182384 res!785872) b!1182388))

(assert (= (and b!1182388 res!785865) b!1182394))

(assert (= (and b!1182394 (not res!785875)) b!1182387))

(assert (= (and b!1182387 (not res!785874)) b!1182382))

(assert (= (and b!1182382 (not res!785877)) b!1182375))

(assert (= (and b!1182375 res!785876) b!1182383))

(assert (= (and b!1182383 (not res!785870)) b!1182391))

(assert (= (and b!1182375 c!116966) b!1182376))

(assert (= (and b!1182375 (not c!116966)) b!1182389))

(assert (= (and b!1182381 condMapEmpty!46517) mapIsEmpty!46517))

(assert (= (and b!1182381 (not condMapEmpty!46517)) mapNonEmpty!46517))

(get-info :version)

(assert (= (and mapNonEmpty!46517 ((_ is ValueCellFull!14187) mapValue!46517)) b!1182386))

(assert (= (and b!1182381 ((_ is ValueCellFull!14187) mapDefault!46517)) b!1182393))

(assert (= start!99720 b!1182381))

(declare-fun b_lambda!20425 () Bool)

(assert (=> (not b_lambda!20425) (not b!1182387)))

(declare-fun t!38305 () Bool)

(declare-fun tb!10083 () Bool)

(assert (=> (and start!99720 (= defaultEntry!1004 defaultEntry!1004) t!38305) tb!10083))

(declare-fun result!20725 () Bool)

(assert (=> tb!10083 (= result!20725 tp_is_empty!29793)))

(assert (=> b!1182387 t!38305))

(declare-fun b_and!41409 () Bool)

(assert (= b_and!41407 (and (=> t!38305 result!20725) b_and!41409)))

(declare-fun m!1090455 () Bool)

(assert (=> mapNonEmpty!46517 m!1090455))

(declare-fun m!1090457 () Bool)

(assert (=> b!1182390 m!1090457))

(declare-fun m!1090459 () Bool)

(assert (=> b!1182378 m!1090459))

(declare-fun m!1090461 () Bool)

(assert (=> b!1182377 m!1090461))

(declare-fun m!1090463 () Bool)

(assert (=> b!1182394 m!1090463))

(declare-fun m!1090465 () Bool)

(assert (=> b!1182394 m!1090465))

(declare-fun m!1090467 () Bool)

(assert (=> b!1182383 m!1090467))

(assert (=> b!1182375 m!1090467))

(declare-fun m!1090469 () Bool)

(assert (=> b!1182375 m!1090469))

(declare-fun m!1090471 () Bool)

(assert (=> b!1182375 m!1090471))

(declare-fun m!1090473 () Bool)

(assert (=> b!1182375 m!1090473))

(assert (=> b!1182375 m!1090471))

(declare-fun m!1090475 () Bool)

(assert (=> b!1182375 m!1090475))

(declare-fun m!1090477 () Bool)

(assert (=> b!1182375 m!1090477))

(declare-fun m!1090479 () Bool)

(assert (=> b!1182375 m!1090479))

(assert (=> b!1182375 m!1090467))

(declare-fun m!1090481 () Bool)

(assert (=> b!1182376 m!1090481))

(declare-fun m!1090483 () Bool)

(assert (=> b!1182376 m!1090483))

(declare-fun m!1090485 () Bool)

(assert (=> b!1182376 m!1090485))

(declare-fun m!1090487 () Bool)

(assert (=> b!1182376 m!1090487))

(declare-fun m!1090489 () Bool)

(assert (=> b!1182376 m!1090489))

(declare-fun m!1090491 () Bool)

(assert (=> b!1182387 m!1090491))

(declare-fun m!1090493 () Bool)

(assert (=> b!1182387 m!1090493))

(declare-fun m!1090495 () Bool)

(assert (=> b!1182387 m!1090495))

(declare-fun m!1090497 () Bool)

(assert (=> b!1182387 m!1090497))

(declare-fun m!1090499 () Bool)

(assert (=> start!99720 m!1090499))

(declare-fun m!1090501 () Bool)

(assert (=> start!99720 m!1090501))

(declare-fun m!1090503 () Bool)

(assert (=> b!1182382 m!1090503))

(declare-fun m!1090505 () Bool)

(assert (=> b!1182382 m!1090505))

(declare-fun m!1090507 () Bool)

(assert (=> b!1182382 m!1090507))

(assert (=> b!1182382 m!1090467))

(declare-fun m!1090509 () Bool)

(assert (=> b!1182382 m!1090509))

(assert (=> b!1182382 m!1090467))

(declare-fun m!1090511 () Bool)

(assert (=> b!1182382 m!1090511))

(declare-fun m!1090513 () Bool)

(assert (=> b!1182388 m!1090513))

(declare-fun m!1090515 () Bool)

(assert (=> b!1182384 m!1090515))

(declare-fun m!1090517 () Bool)

(assert (=> b!1182384 m!1090517))

(declare-fun m!1090519 () Bool)

(assert (=> b!1182385 m!1090519))

(declare-fun m!1090521 () Bool)

(assert (=> b!1182391 m!1090521))

(declare-fun m!1090523 () Bool)

(assert (=> b!1182379 m!1090523))

(check-sat (not mapNonEmpty!46517) (not b!1182378) (not b!1182384) (not b!1182388) (not b_lambda!20425) (not b!1182375) (not b!1182376) (not b!1182394) tp_is_empty!29793 b_and!41409 (not b!1182385) (not start!99720) (not b!1182382) (not b!1182379) (not b!1182391) (not b!1182390) (not b_next!25263) (not b!1182387))
(check-sat b_and!41409 (not b_next!25263))
