; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!99444 () Bool)

(assert start!99444)

(declare-fun b_free!24987 () Bool)

(declare-fun b_next!24987 () Bool)

(assert (=> start!99444 (= b_free!24987 (not b_next!24987))))

(declare-fun tp!87676 () Bool)

(declare-fun b_and!40855 () Bool)

(assert (=> start!99444 (= tp!87676 b_and!40855)))

(declare-fun b!1173477 () Bool)

(declare-fun res!779324 () Bool)

(declare-fun e!667047 () Bool)

(assert (=> b!1173477 (=> (not res!779324) (not e!667047))))

(declare-datatypes ((array!75810 0))(
  ( (array!75811 (arr!36551 (Array (_ BitVec 32) (_ BitVec 64))) (size!37088 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!75810)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!75810 (_ BitVec 32)) Bool)

(assert (=> b!1173477 (= res!779324 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1173478 () Bool)

(declare-fun res!779325 () Bool)

(assert (=> b!1173478 (=> (not res!779325) (not e!667047))))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1173478 (= res!779325 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!37088 _keys!1208))))))

(declare-fun b!1173479 () Bool)

(declare-fun res!779314 () Bool)

(assert (=> b!1173479 (=> (not res!779314) (not e!667047))))

(declare-fun k0!934 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1173479 (= res!779314 (validKeyInArray!0 k0!934))))

(declare-fun b!1173480 () Bool)

(declare-datatypes ((Unit!38608 0))(
  ( (Unit!38609) )
))
(declare-fun e!667056 () Unit!38608)

(declare-fun Unit!38610 () Unit!38608)

(assert (=> b!1173480 (= e!667056 Unit!38610)))

(declare-fun b!1173481 () Bool)

(declare-fun e!667046 () Bool)

(declare-fun e!667052 () Bool)

(assert (=> b!1173481 (= e!667046 e!667052)))

(declare-fun res!779321 () Bool)

(assert (=> b!1173481 (=> res!779321 e!667052)))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> b!1173481 (= res!779321 (or (= from!1455 i!673) (bvsge from!1455 i!673)))))

(declare-datatypes ((V!44483 0))(
  ( (V!44484 (val!14815 Int)) )
))
(declare-fun zeroValue!944 () V!44483)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-datatypes ((ValueCell!14049 0))(
  ( (ValueCellFull!14049 (v!17454 V!44483)) (EmptyCell!14049) )
))
(declare-datatypes ((array!75812 0))(
  ( (array!75813 (arr!36552 (Array (_ BitVec 32) ValueCell!14049)) (size!37089 (_ BitVec 32))) )
))
(declare-fun lt!528947 () array!75812)

(declare-fun defaultEntry!1004 () Int)

(declare-fun lt!528943 () array!75810)

(declare-datatypes ((tuple2!19032 0))(
  ( (tuple2!19033 (_1!9526 (_ BitVec 64)) (_2!9526 V!44483)) )
))
(declare-datatypes ((List!25805 0))(
  ( (Nil!25802) (Cons!25801 (h!27010 tuple2!19032) (t!37791 List!25805)) )
))
(declare-datatypes ((ListLongMap!17013 0))(
  ( (ListLongMap!17014 (toList!8522 List!25805)) )
))
(declare-fun lt!528946 () ListLongMap!17013)

(declare-fun minValue!944 () V!44483)

(declare-fun getCurrentListMapNoExtraKeys!4954 (array!75810 array!75812 (_ BitVec 32) (_ BitVec 32) V!44483 V!44483 (_ BitVec 32) Int) ListLongMap!17013)

(assert (=> b!1173481 (= lt!528946 (getCurrentListMapNoExtraKeys!4954 lt!528943 lt!528947 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun lt!528945 () V!44483)

(declare-fun _values!996 () array!75812)

(assert (=> b!1173481 (= lt!528947 (array!75813 (store (arr!36552 _values!996) i!673 (ValueCellFull!14049 lt!528945)) (size!37089 _values!996)))))

(declare-fun dynLambda!2938 (Int (_ BitVec 64)) V!44483)

(assert (=> b!1173481 (= lt!528945 (dynLambda!2938 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!528944 () ListLongMap!17013)

(assert (=> b!1173481 (= lt!528944 (getCurrentListMapNoExtraKeys!4954 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1173482 () Bool)

(declare-fun e!667055 () Bool)

(declare-fun e!667051 () Bool)

(assert (=> b!1173482 (= e!667055 e!667051)))

(declare-fun res!779313 () Bool)

(assert (=> b!1173482 (=> res!779313 e!667051)))

(assert (=> b!1173482 (= res!779313 (not (= (select (arr!36551 _keys!1208) from!1455) k0!934)))))

(declare-fun b!1173483 () Bool)

(declare-fun e!667054 () Bool)

(assert (=> b!1173483 (= e!667047 e!667054)))

(declare-fun res!779319 () Bool)

(assert (=> b!1173483 (=> (not res!779319) (not e!667054))))

(assert (=> b!1173483 (= res!779319 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!528943 mask!1564))))

(assert (=> b!1173483 (= lt!528943 (array!75811 (store (arr!36551 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!37088 _keys!1208)))))

(declare-fun b!1173484 () Bool)

(declare-fun res!779316 () Bool)

(assert (=> b!1173484 (=> (not res!779316) (not e!667047))))

(assert (=> b!1173484 (= res!779316 (= (select (arr!36551 _keys!1208) i!673) k0!934))))

(declare-fun b!1173485 () Bool)

(declare-fun e!667049 () Bool)

(declare-fun tp_is_empty!29517 () Bool)

(assert (=> b!1173485 (= e!667049 tp_is_empty!29517)))

(declare-fun b!1173486 () Bool)

(declare-fun res!779312 () Bool)

(assert (=> b!1173486 (=> (not res!779312) (not e!667054))))

(declare-datatypes ((List!25806 0))(
  ( (Nil!25803) (Cons!25802 (h!27011 (_ BitVec 64)) (t!37792 List!25806)) )
))
(declare-fun arrayNoDuplicates!0 (array!75810 (_ BitVec 32) List!25806) Bool)

(assert (=> b!1173486 (= res!779312 (arrayNoDuplicates!0 lt!528943 #b00000000000000000000000000000000 Nil!25803))))

(declare-fun b!1173487 () Bool)

(declare-fun e!667048 () Bool)

(assert (=> b!1173487 (= e!667052 e!667048)))

(declare-fun res!779322 () Bool)

(assert (=> b!1173487 (=> res!779322 e!667048)))

(assert (=> b!1173487 (= res!779322 (not (validKeyInArray!0 (select (arr!36551 _keys!1208) from!1455))))))

(declare-fun lt!528952 () ListLongMap!17013)

(declare-fun lt!528950 () ListLongMap!17013)

(assert (=> b!1173487 (= lt!528952 lt!528950)))

(declare-fun lt!528953 () ListLongMap!17013)

(declare-fun -!1534 (ListLongMap!17013 (_ BitVec 64)) ListLongMap!17013)

(assert (=> b!1173487 (= lt!528950 (-!1534 lt!528953 k0!934))))

(assert (=> b!1173487 (= lt!528952 (getCurrentListMapNoExtraKeys!4954 lt!528943 lt!528947 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(assert (=> b!1173487 (= lt!528953 (getCurrentListMapNoExtraKeys!4954 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun lt!528948 () Unit!38608)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!758 (array!75810 array!75812 (_ BitVec 32) (_ BitVec 32) V!44483 V!44483 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!38608)

(assert (=> b!1173487 (= lt!528948 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!758 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun mapNonEmpty!46103 () Bool)

(declare-fun mapRes!46103 () Bool)

(declare-fun tp!87675 () Bool)

(declare-fun e!667053 () Bool)

(assert (=> mapNonEmpty!46103 (= mapRes!46103 (and tp!87675 e!667053))))

(declare-fun mapRest!46103 () (Array (_ BitVec 32) ValueCell!14049))

(declare-fun mapValue!46103 () ValueCell!14049)

(declare-fun mapKey!46103 () (_ BitVec 32))

(assert (=> mapNonEmpty!46103 (= (arr!36552 _values!996) (store mapRest!46103 mapKey!46103 mapValue!46103))))

(declare-fun res!779320 () Bool)

(assert (=> start!99444 (=> (not res!779320) (not e!667047))))

(assert (=> start!99444 (= res!779320 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!37088 _keys!1208))))))

(assert (=> start!99444 e!667047))

(assert (=> start!99444 tp_is_empty!29517))

(declare-fun array_inv!27812 (array!75810) Bool)

(assert (=> start!99444 (array_inv!27812 _keys!1208)))

(assert (=> start!99444 true))

(assert (=> start!99444 tp!87676))

(declare-fun e!667057 () Bool)

(declare-fun array_inv!27813 (array!75812) Bool)

(assert (=> start!99444 (and (array_inv!27813 _values!996) e!667057)))

(declare-fun b!1173488 () Bool)

(assert (=> b!1173488 (= e!667048 true)))

(assert (=> b!1173488 (not (= (select (arr!36551 _keys!1208) from!1455) k0!934))))

(declare-fun lt!528954 () Unit!38608)

(assert (=> b!1173488 (= lt!528954 e!667056)))

(declare-fun c!116552 () Bool)

(assert (=> b!1173488 (= c!116552 (= (select (arr!36551 _keys!1208) from!1455) k0!934))))

(assert (=> b!1173488 e!667055))

(declare-fun res!779318 () Bool)

(assert (=> b!1173488 (=> (not res!779318) (not e!667055))))

(declare-fun +!3756 (ListLongMap!17013 tuple2!19032) ListLongMap!17013)

(declare-fun get!18685 (ValueCell!14049 V!44483) V!44483)

(assert (=> b!1173488 (= res!779318 (= lt!528946 (+!3756 lt!528950 (tuple2!19033 (select (arr!36551 _keys!1208) from!1455) (get!18685 (select (arr!36552 _values!996) from!1455) lt!528945)))))))

(declare-fun b!1173489 () Bool)

(declare-fun res!779317 () Bool)

(assert (=> b!1173489 (=> (not res!779317) (not e!667047))))

(assert (=> b!1173489 (= res!779317 (and (= (size!37089 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!37088 _keys!1208) (size!37089 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1173490 () Bool)

(assert (=> b!1173490 (= e!667057 (and e!667049 mapRes!46103))))

(declare-fun condMapEmpty!46103 () Bool)

(declare-fun mapDefault!46103 () ValueCell!14049)

(assert (=> b!1173490 (= condMapEmpty!46103 (= (arr!36552 _values!996) ((as const (Array (_ BitVec 32) ValueCell!14049)) mapDefault!46103)))))

(declare-fun b!1173491 () Bool)

(declare-fun res!779323 () Bool)

(assert (=> b!1173491 (=> (not res!779323) (not e!667047))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1173491 (= res!779323 (validMask!0 mask!1564))))

(declare-fun b!1173492 () Bool)

(declare-fun res!779315 () Bool)

(assert (=> b!1173492 (=> (not res!779315) (not e!667047))))

(assert (=> b!1173492 (= res!779315 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!25803))))

(declare-fun mapIsEmpty!46103 () Bool)

(assert (=> mapIsEmpty!46103 mapRes!46103))

(declare-fun b!1173493 () Bool)

(declare-fun arrayContainsKey!0 (array!75810 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1173493 (= e!667051 (arrayContainsKey!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1173494 () Bool)

(assert (=> b!1173494 (= e!667054 (not e!667046))))

(declare-fun res!779326 () Bool)

(assert (=> b!1173494 (=> res!779326 e!667046)))

(assert (=> b!1173494 (= res!779326 (bvsgt from!1455 i!673))))

(assert (=> b!1173494 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-fun lt!528942 () Unit!38608)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!75810 (_ BitVec 64) (_ BitVec 32)) Unit!38608)

(assert (=> b!1173494 (= lt!528942 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1173495 () Bool)

(declare-fun Unit!38611 () Unit!38608)

(assert (=> b!1173495 (= e!667056 Unit!38611)))

(declare-fun lt!528951 () Unit!38608)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!75810 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!38608)

(assert (=> b!1173495 (= lt!528951 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 _keys!1208 k0!934 i!673 (bvadd #b00000000000000000000000000000001 from!1455)))))

(assert (=> b!1173495 (arrayContainsKey!0 _keys!1208 k0!934 (bvadd #b00000000000000000000000000000001 from!1455))))

(declare-fun lt!528949 () Unit!38608)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!75810 (_ BitVec 32) (_ BitVec 32)) Unit!38608)

(assert (=> b!1173495 (= lt!528949 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1208 #b00000000000000000000000000000000 from!1455))))

(assert (=> b!1173495 (arrayNoDuplicates!0 _keys!1208 from!1455 Nil!25803)))

(declare-fun lt!528941 () Unit!38608)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!75810 (_ BitVec 64) (_ BitVec 32) List!25806) Unit!38608)

(assert (=> b!1173495 (= lt!528941 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!1208 k0!934 from!1455 Nil!25803))))

(assert (=> b!1173495 false))

(declare-fun b!1173496 () Bool)

(assert (=> b!1173496 (= e!667053 tp_is_empty!29517)))

(assert (= (and start!99444 res!779320) b!1173491))

(assert (= (and b!1173491 res!779323) b!1173489))

(assert (= (and b!1173489 res!779317) b!1173477))

(assert (= (and b!1173477 res!779324) b!1173492))

(assert (= (and b!1173492 res!779315) b!1173478))

(assert (= (and b!1173478 res!779325) b!1173479))

(assert (= (and b!1173479 res!779314) b!1173484))

(assert (= (and b!1173484 res!779316) b!1173483))

(assert (= (and b!1173483 res!779319) b!1173486))

(assert (= (and b!1173486 res!779312) b!1173494))

(assert (= (and b!1173494 (not res!779326)) b!1173481))

(assert (= (and b!1173481 (not res!779321)) b!1173487))

(assert (= (and b!1173487 (not res!779322)) b!1173488))

(assert (= (and b!1173488 res!779318) b!1173482))

(assert (= (and b!1173482 (not res!779313)) b!1173493))

(assert (= (and b!1173488 c!116552) b!1173495))

(assert (= (and b!1173488 (not c!116552)) b!1173480))

(assert (= (and b!1173490 condMapEmpty!46103) mapIsEmpty!46103))

(assert (= (and b!1173490 (not condMapEmpty!46103)) mapNonEmpty!46103))

(get-info :version)

(assert (= (and mapNonEmpty!46103 ((_ is ValueCellFull!14049) mapValue!46103)) b!1173496))

(assert (= (and b!1173490 ((_ is ValueCellFull!14049) mapDefault!46103)) b!1173485))

(assert (= start!99444 b!1173490))

(declare-fun b_lambda!20149 () Bool)

(assert (=> (not b_lambda!20149) (not b!1173481)))

(declare-fun t!37790 () Bool)

(declare-fun tb!9807 () Bool)

(assert (=> (and start!99444 (= defaultEntry!1004 defaultEntry!1004) t!37790) tb!9807))

(declare-fun result!20173 () Bool)

(assert (=> tb!9807 (= result!20173 tp_is_empty!29517)))

(assert (=> b!1173481 t!37790))

(declare-fun b_and!40857 () Bool)

(assert (= b_and!40855 (and (=> t!37790 result!20173) b_and!40857)))

(declare-fun m!1081377 () Bool)

(assert (=> b!1173494 m!1081377))

(declare-fun m!1081379 () Bool)

(assert (=> b!1173494 m!1081379))

(declare-fun m!1081381 () Bool)

(assert (=> b!1173479 m!1081381))

(declare-fun m!1081383 () Bool)

(assert (=> b!1173495 m!1081383))

(declare-fun m!1081385 () Bool)

(assert (=> b!1173495 m!1081385))

(declare-fun m!1081387 () Bool)

(assert (=> b!1173495 m!1081387))

(declare-fun m!1081389 () Bool)

(assert (=> b!1173495 m!1081389))

(declare-fun m!1081391 () Bool)

(assert (=> b!1173495 m!1081391))

(declare-fun m!1081393 () Bool)

(assert (=> b!1173491 m!1081393))

(declare-fun m!1081395 () Bool)

(assert (=> b!1173481 m!1081395))

(declare-fun m!1081397 () Bool)

(assert (=> b!1173481 m!1081397))

(declare-fun m!1081399 () Bool)

(assert (=> b!1173481 m!1081399))

(declare-fun m!1081401 () Bool)

(assert (=> b!1173481 m!1081401))

(declare-fun m!1081403 () Bool)

(assert (=> b!1173483 m!1081403))

(declare-fun m!1081405 () Bool)

(assert (=> b!1173483 m!1081405))

(declare-fun m!1081407 () Bool)

(assert (=> b!1173484 m!1081407))

(declare-fun m!1081409 () Bool)

(assert (=> b!1173482 m!1081409))

(declare-fun m!1081411 () Bool)

(assert (=> b!1173487 m!1081411))

(declare-fun m!1081413 () Bool)

(assert (=> b!1173487 m!1081413))

(declare-fun m!1081415 () Bool)

(assert (=> b!1173487 m!1081415))

(assert (=> b!1173487 m!1081409))

(declare-fun m!1081417 () Bool)

(assert (=> b!1173487 m!1081417))

(assert (=> b!1173487 m!1081409))

(declare-fun m!1081419 () Bool)

(assert (=> b!1173487 m!1081419))

(declare-fun m!1081421 () Bool)

(assert (=> b!1173492 m!1081421))

(declare-fun m!1081423 () Bool)

(assert (=> b!1173477 m!1081423))

(declare-fun m!1081425 () Bool)

(assert (=> start!99444 m!1081425))

(declare-fun m!1081427 () Bool)

(assert (=> start!99444 m!1081427))

(declare-fun m!1081429 () Bool)

(assert (=> b!1173493 m!1081429))

(declare-fun m!1081431 () Bool)

(assert (=> b!1173486 m!1081431))

(assert (=> b!1173488 m!1081409))

(declare-fun m!1081433 () Bool)

(assert (=> b!1173488 m!1081433))

(assert (=> b!1173488 m!1081433))

(declare-fun m!1081435 () Bool)

(assert (=> b!1173488 m!1081435))

(declare-fun m!1081437 () Bool)

(assert (=> b!1173488 m!1081437))

(declare-fun m!1081439 () Bool)

(assert (=> mapNonEmpty!46103 m!1081439))

(check-sat (not b_lambda!20149) tp_is_empty!29517 (not b!1173495) (not mapNonEmpty!46103) b_and!40857 (not b!1173487) (not b!1173481) (not b!1173483) (not b!1173486) (not b!1173493) (not b!1173494) (not start!99444) (not b_next!24987) (not b!1173492) (not b!1173488) (not b!1173477) (not b!1173491) (not b!1173479))
(check-sat b_and!40857 (not b_next!24987))
