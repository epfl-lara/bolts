; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!99510 () Bool)

(assert start!99510)

(declare-fun b_free!25053 () Bool)

(declare-fun b_next!25053 () Bool)

(assert (=> start!99510 (= b_free!25053 (not b_next!25053))))

(declare-fun tp!87874 () Bool)

(declare-fun b_and!40987 () Bool)

(assert (=> start!99510 (= tp!87874 b_and!40987)))

(declare-fun res!780811 () Bool)

(declare-fun e!668242 () Bool)

(assert (=> start!99510 (=> (not res!780811) (not e!668242))))

(declare-fun from!1455 () (_ BitVec 32))

(declare-datatypes ((array!75942 0))(
  ( (array!75943 (arr!36617 (Array (_ BitVec 32) (_ BitVec 64))) (size!37154 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!75942)

(assert (=> start!99510 (= res!780811 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!37154 _keys!1208))))))

(assert (=> start!99510 e!668242))

(declare-fun tp_is_empty!29583 () Bool)

(assert (=> start!99510 tp_is_empty!29583))

(declare-fun array_inv!27852 (array!75942) Bool)

(assert (=> start!99510 (array_inv!27852 _keys!1208)))

(assert (=> start!99510 true))

(assert (=> start!99510 tp!87874))

(declare-datatypes ((V!44571 0))(
  ( (V!44572 (val!14848 Int)) )
))
(declare-datatypes ((ValueCell!14082 0))(
  ( (ValueCellFull!14082 (v!17487 V!44571)) (EmptyCell!14082) )
))
(declare-datatypes ((array!75944 0))(
  ( (array!75945 (arr!36618 (Array (_ BitVec 32) ValueCell!14082)) (size!37155 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!75944)

(declare-fun e!668241 () Bool)

(declare-fun array_inv!27853 (array!75944) Bool)

(assert (=> start!99510 (and (array_inv!27853 _values!996) e!668241)))

(declare-fun i!673 () (_ BitVec 32))

(declare-fun k0!934 () (_ BitVec 64))

(declare-fun e!668245 () Bool)

(declare-fun b!1175523 () Bool)

(declare-fun arrayContainsKey!0 (array!75942 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1175523 (= e!668245 (arrayContainsKey!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1175524 () Bool)

(declare-fun e!668239 () Bool)

(assert (=> b!1175524 (= e!668242 e!668239)))

(declare-fun res!780807 () Bool)

(assert (=> b!1175524 (=> (not res!780807) (not e!668239))))

(declare-fun lt!530330 () array!75942)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!75942 (_ BitVec 32)) Bool)

(assert (=> b!1175524 (= res!780807 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!530330 mask!1564))))

(assert (=> b!1175524 (= lt!530330 (array!75943 (store (arr!36617 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!37154 _keys!1208)))))

(declare-fun b!1175525 () Bool)

(declare-fun e!668243 () Bool)

(assert (=> b!1175525 (= e!668243 true)))

(assert (=> b!1175525 (not (= (select (arr!36617 _keys!1208) from!1455) k0!934))))

(declare-datatypes ((Unit!38719 0))(
  ( (Unit!38720) )
))
(declare-fun lt!530328 () Unit!38719)

(declare-fun e!668238 () Unit!38719)

(assert (=> b!1175525 (= lt!530328 e!668238)))

(declare-fun c!116651 () Bool)

(assert (=> b!1175525 (= c!116651 (= (select (arr!36617 _keys!1208) from!1455) k0!934))))

(declare-fun e!668244 () Bool)

(assert (=> b!1175525 e!668244))

(declare-fun res!780808 () Bool)

(assert (=> b!1175525 (=> (not res!780808) (not e!668244))))

(declare-fun lt!530334 () V!44571)

(declare-datatypes ((tuple2!19094 0))(
  ( (tuple2!19095 (_1!9557 (_ BitVec 64)) (_2!9557 V!44571)) )
))
(declare-datatypes ((List!25862 0))(
  ( (Nil!25859) (Cons!25858 (h!27067 tuple2!19094) (t!37914 List!25862)) )
))
(declare-datatypes ((ListLongMap!17075 0))(
  ( (ListLongMap!17076 (toList!8553 List!25862)) )
))
(declare-fun lt!530332 () ListLongMap!17075)

(declare-fun lt!530337 () ListLongMap!17075)

(declare-fun +!3779 (ListLongMap!17075 tuple2!19094) ListLongMap!17075)

(declare-fun get!18730 (ValueCell!14082 V!44571) V!44571)

(assert (=> b!1175525 (= res!780808 (= lt!530337 (+!3779 lt!530332 (tuple2!19095 (select (arr!36617 _keys!1208) from!1455) (get!18730 (select (arr!36618 _values!996) from!1455) lt!530334)))))))

(declare-fun b!1175526 () Bool)

(declare-fun res!780797 () Bool)

(assert (=> b!1175526 (=> (not res!780797) (not e!668242))))

(assert (=> b!1175526 (= res!780797 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1175527 () Bool)

(declare-fun e!668240 () Bool)

(assert (=> b!1175527 (= e!668240 e!668243)))

(declare-fun res!780805 () Bool)

(assert (=> b!1175527 (=> res!780805 e!668243)))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1175527 (= res!780805 (not (validKeyInArray!0 (select (arr!36617 _keys!1208) from!1455))))))

(declare-fun lt!530333 () ListLongMap!17075)

(assert (=> b!1175527 (= lt!530333 lt!530332)))

(declare-fun lt!530340 () ListLongMap!17075)

(declare-fun -!1560 (ListLongMap!17075 (_ BitVec 64)) ListLongMap!17075)

(assert (=> b!1175527 (= lt!530332 (-!1560 lt!530340 k0!934))))

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-fun lt!530336 () array!75944)

(declare-fun minValue!944 () V!44571)

(declare-fun zeroValue!944 () V!44571)

(declare-fun getCurrentListMapNoExtraKeys!4984 (array!75942 array!75944 (_ BitVec 32) (_ BitVec 32) V!44571 V!44571 (_ BitVec 32) Int) ListLongMap!17075)

(assert (=> b!1175527 (= lt!530333 (getCurrentListMapNoExtraKeys!4984 lt!530330 lt!530336 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(assert (=> b!1175527 (= lt!530340 (getCurrentListMapNoExtraKeys!4984 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun lt!530335 () Unit!38719)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!784 (array!75942 array!75944 (_ BitVec 32) (_ BitVec 32) V!44571 V!44571 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!38719)

(assert (=> b!1175527 (= lt!530335 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!784 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1175528 () Bool)

(declare-fun res!780802 () Bool)

(assert (=> b!1175528 (=> (not res!780802) (not e!668242))))

(assert (=> b!1175528 (= res!780802 (and (= (size!37155 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!37154 _keys!1208) (size!37155 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1175529 () Bool)

(declare-fun e!668237 () Bool)

(assert (=> b!1175529 (= e!668237 tp_is_empty!29583)))

(declare-fun b!1175530 () Bool)

(declare-fun res!780804 () Bool)

(assert (=> b!1175530 (=> (not res!780804) (not e!668242))))

(assert (=> b!1175530 (= res!780804 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!37154 _keys!1208))))))

(declare-fun b!1175531 () Bool)

(declare-fun Unit!38721 () Unit!38719)

(assert (=> b!1175531 (= e!668238 Unit!38721)))

(declare-fun lt!530327 () Unit!38719)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!75942 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!38719)

(assert (=> b!1175531 (= lt!530327 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 _keys!1208 k0!934 i!673 (bvadd #b00000000000000000000000000000001 from!1455)))))

(assert (=> b!1175531 (arrayContainsKey!0 _keys!1208 k0!934 (bvadd #b00000000000000000000000000000001 from!1455))))

(declare-fun lt!530339 () Unit!38719)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!75942 (_ BitVec 32) (_ BitVec 32)) Unit!38719)

(assert (=> b!1175531 (= lt!530339 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1208 #b00000000000000000000000000000000 from!1455))))

(declare-datatypes ((List!25863 0))(
  ( (Nil!25860) (Cons!25859 (h!27068 (_ BitVec 64)) (t!37915 List!25863)) )
))
(declare-fun arrayNoDuplicates!0 (array!75942 (_ BitVec 32) List!25863) Bool)

(assert (=> b!1175531 (arrayNoDuplicates!0 _keys!1208 from!1455 Nil!25860)))

(declare-fun lt!530331 () Unit!38719)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!75942 (_ BitVec 64) (_ BitVec 32) List!25863) Unit!38719)

(assert (=> b!1175531 (= lt!530331 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!1208 k0!934 from!1455 Nil!25860))))

(assert (=> b!1175531 false))

(declare-fun b!1175532 () Bool)

(declare-fun res!780810 () Bool)

(assert (=> b!1175532 (=> (not res!780810) (not e!668242))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1175532 (= res!780810 (validMask!0 mask!1564))))

(declare-fun mapIsEmpty!46202 () Bool)

(declare-fun mapRes!46202 () Bool)

(assert (=> mapIsEmpty!46202 mapRes!46202))

(declare-fun b!1175533 () Bool)

(declare-fun res!780798 () Bool)

(assert (=> b!1175533 (=> (not res!780798) (not e!668242))))

(assert (=> b!1175533 (= res!780798 (validKeyInArray!0 k0!934))))

(declare-fun b!1175534 () Bool)

(declare-fun res!780806 () Bool)

(assert (=> b!1175534 (=> (not res!780806) (not e!668242))))

(assert (=> b!1175534 (= res!780806 (= (select (arr!36617 _keys!1208) i!673) k0!934))))

(declare-fun b!1175535 () Bool)

(declare-fun e!668235 () Bool)

(assert (=> b!1175535 (= e!668235 e!668240)))

(declare-fun res!780801 () Bool)

(assert (=> b!1175535 (=> res!780801 e!668240)))

(assert (=> b!1175535 (= res!780801 (or (= from!1455 i!673) (bvsge from!1455 i!673)))))

(assert (=> b!1175535 (= lt!530337 (getCurrentListMapNoExtraKeys!4984 lt!530330 lt!530336 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(assert (=> b!1175535 (= lt!530336 (array!75945 (store (arr!36618 _values!996) i!673 (ValueCellFull!14082 lt!530334)) (size!37155 _values!996)))))

(declare-fun dynLambda!2963 (Int (_ BitVec 64)) V!44571)

(assert (=> b!1175535 (= lt!530334 (dynLambda!2963 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!530338 () ListLongMap!17075)

(assert (=> b!1175535 (= lt!530338 (getCurrentListMapNoExtraKeys!4984 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1175536 () Bool)

(declare-fun Unit!38722 () Unit!38719)

(assert (=> b!1175536 (= e!668238 Unit!38722)))

(declare-fun b!1175537 () Bool)

(assert (=> b!1175537 (= e!668244 e!668245)))

(declare-fun res!780809 () Bool)

(assert (=> b!1175537 (=> res!780809 e!668245)))

(assert (=> b!1175537 (= res!780809 (not (= (select (arr!36617 _keys!1208) from!1455) k0!934)))))

(declare-fun b!1175538 () Bool)

(declare-fun res!780803 () Bool)

(assert (=> b!1175538 (=> (not res!780803) (not e!668242))))

(assert (=> b!1175538 (= res!780803 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!25860))))

(declare-fun mapNonEmpty!46202 () Bool)

(declare-fun tp!87873 () Bool)

(assert (=> mapNonEmpty!46202 (= mapRes!46202 (and tp!87873 e!668237))))

(declare-fun mapRest!46202 () (Array (_ BitVec 32) ValueCell!14082))

(declare-fun mapKey!46202 () (_ BitVec 32))

(declare-fun mapValue!46202 () ValueCell!14082)

(assert (=> mapNonEmpty!46202 (= (arr!36618 _values!996) (store mapRest!46202 mapKey!46202 mapValue!46202))))

(declare-fun b!1175539 () Bool)

(declare-fun e!668234 () Bool)

(assert (=> b!1175539 (= e!668234 tp_is_empty!29583)))

(declare-fun b!1175540 () Bool)

(assert (=> b!1175540 (= e!668241 (and e!668234 mapRes!46202))))

(declare-fun condMapEmpty!46202 () Bool)

(declare-fun mapDefault!46202 () ValueCell!14082)

(assert (=> b!1175540 (= condMapEmpty!46202 (= (arr!36618 _values!996) ((as const (Array (_ BitVec 32) ValueCell!14082)) mapDefault!46202)))))

(declare-fun b!1175541 () Bool)

(declare-fun res!780800 () Bool)

(assert (=> b!1175541 (=> (not res!780800) (not e!668239))))

(assert (=> b!1175541 (= res!780800 (arrayNoDuplicates!0 lt!530330 #b00000000000000000000000000000000 Nil!25860))))

(declare-fun b!1175542 () Bool)

(assert (=> b!1175542 (= e!668239 (not e!668235))))

(declare-fun res!780799 () Bool)

(assert (=> b!1175542 (=> res!780799 e!668235)))

(assert (=> b!1175542 (= res!780799 (bvsgt from!1455 i!673))))

(assert (=> b!1175542 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-fun lt!530329 () Unit!38719)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!75942 (_ BitVec 64) (_ BitVec 32)) Unit!38719)

(assert (=> b!1175542 (= lt!530329 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(assert (= (and start!99510 res!780811) b!1175532))

(assert (= (and b!1175532 res!780810) b!1175528))

(assert (= (and b!1175528 res!780802) b!1175526))

(assert (= (and b!1175526 res!780797) b!1175538))

(assert (= (and b!1175538 res!780803) b!1175530))

(assert (= (and b!1175530 res!780804) b!1175533))

(assert (= (and b!1175533 res!780798) b!1175534))

(assert (= (and b!1175534 res!780806) b!1175524))

(assert (= (and b!1175524 res!780807) b!1175541))

(assert (= (and b!1175541 res!780800) b!1175542))

(assert (= (and b!1175542 (not res!780799)) b!1175535))

(assert (= (and b!1175535 (not res!780801)) b!1175527))

(assert (= (and b!1175527 (not res!780805)) b!1175525))

(assert (= (and b!1175525 res!780808) b!1175537))

(assert (= (and b!1175537 (not res!780809)) b!1175523))

(assert (= (and b!1175525 c!116651) b!1175531))

(assert (= (and b!1175525 (not c!116651)) b!1175536))

(assert (= (and b!1175540 condMapEmpty!46202) mapIsEmpty!46202))

(assert (= (and b!1175540 (not condMapEmpty!46202)) mapNonEmpty!46202))

(get-info :version)

(assert (= (and mapNonEmpty!46202 ((_ is ValueCellFull!14082) mapValue!46202)) b!1175529))

(assert (= (and b!1175540 ((_ is ValueCellFull!14082) mapDefault!46202)) b!1175539))

(assert (= start!99510 b!1175540))

(declare-fun b_lambda!20215 () Bool)

(assert (=> (not b_lambda!20215) (not b!1175535)))

(declare-fun t!37913 () Bool)

(declare-fun tb!9873 () Bool)

(assert (=> (and start!99510 (= defaultEntry!1004 defaultEntry!1004) t!37913) tb!9873))

(declare-fun result!20305 () Bool)

(assert (=> tb!9873 (= result!20305 tp_is_empty!29583)))

(assert (=> b!1175535 t!37913))

(declare-fun b_and!40989 () Bool)

(assert (= b_and!40987 (and (=> t!37913 result!20305) b_and!40989)))

(declare-fun m!1083489 () Bool)

(assert (=> mapNonEmpty!46202 m!1083489))

(declare-fun m!1083491 () Bool)

(assert (=> b!1175541 m!1083491))

(declare-fun m!1083493 () Bool)

(assert (=> b!1175523 m!1083493))

(declare-fun m!1083495 () Bool)

(assert (=> b!1175535 m!1083495))

(declare-fun m!1083497 () Bool)

(assert (=> b!1175535 m!1083497))

(declare-fun m!1083499 () Bool)

(assert (=> b!1175535 m!1083499))

(declare-fun m!1083501 () Bool)

(assert (=> b!1175535 m!1083501))

(declare-fun m!1083503 () Bool)

(assert (=> b!1175538 m!1083503))

(declare-fun m!1083505 () Bool)

(assert (=> b!1175524 m!1083505))

(declare-fun m!1083507 () Bool)

(assert (=> b!1175524 m!1083507))

(declare-fun m!1083509 () Bool)

(assert (=> b!1175542 m!1083509))

(declare-fun m!1083511 () Bool)

(assert (=> b!1175542 m!1083511))

(declare-fun m!1083513 () Bool)

(assert (=> b!1175525 m!1083513))

(declare-fun m!1083515 () Bool)

(assert (=> b!1175525 m!1083515))

(assert (=> b!1175525 m!1083515))

(declare-fun m!1083517 () Bool)

(assert (=> b!1175525 m!1083517))

(declare-fun m!1083519 () Bool)

(assert (=> b!1175525 m!1083519))

(declare-fun m!1083521 () Bool)

(assert (=> b!1175527 m!1083521))

(declare-fun m!1083523 () Bool)

(assert (=> b!1175527 m!1083523))

(declare-fun m!1083525 () Bool)

(assert (=> b!1175527 m!1083525))

(assert (=> b!1175527 m!1083513))

(declare-fun m!1083527 () Bool)

(assert (=> b!1175527 m!1083527))

(assert (=> b!1175527 m!1083513))

(declare-fun m!1083529 () Bool)

(assert (=> b!1175527 m!1083529))

(declare-fun m!1083531 () Bool)

(assert (=> b!1175533 m!1083531))

(declare-fun m!1083533 () Bool)

(assert (=> start!99510 m!1083533))

(declare-fun m!1083535 () Bool)

(assert (=> start!99510 m!1083535))

(declare-fun m!1083537 () Bool)

(assert (=> b!1175534 m!1083537))

(declare-fun m!1083539 () Bool)

(assert (=> b!1175532 m!1083539))

(declare-fun m!1083541 () Bool)

(assert (=> b!1175531 m!1083541))

(declare-fun m!1083543 () Bool)

(assert (=> b!1175531 m!1083543))

(declare-fun m!1083545 () Bool)

(assert (=> b!1175531 m!1083545))

(declare-fun m!1083547 () Bool)

(assert (=> b!1175531 m!1083547))

(declare-fun m!1083549 () Bool)

(assert (=> b!1175531 m!1083549))

(assert (=> b!1175537 m!1083513))

(declare-fun m!1083551 () Bool)

(assert (=> b!1175526 m!1083551))

(check-sat (not start!99510) (not b!1175538) tp_is_empty!29583 (not b!1175542) (not b!1175535) (not b_next!25053) (not b_lambda!20215) (not b!1175524) (not b!1175531) (not b!1175525) (not b!1175533) b_and!40989 (not b!1175532) (not b!1175527) (not b!1175526) (not b!1175541) (not mapNonEmpty!46202) (not b!1175523))
(check-sat b_and!40989 (not b_next!25053))
