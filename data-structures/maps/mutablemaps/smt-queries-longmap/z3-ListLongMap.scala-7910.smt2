; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!98242 () Bool)

(assert start!98242)

(declare-fun b_free!23907 () Bool)

(declare-fun b_next!23907 () Bool)

(assert (=> start!98242 (= b_free!23907 (not b_next!23907))))

(declare-fun tp!84425 () Bool)

(declare-fun b_and!38619 () Bool)

(assert (=> start!98242 (= tp!84425 b_and!38619)))

(declare-fun b!1130450 () Bool)

(declare-fun res!755383 () Bool)

(declare-fun e!643401 () Bool)

(assert (=> b!1130450 (=> (not res!755383) (not e!643401))))

(declare-fun i!673 () (_ BitVec 32))

(declare-datatypes ((array!73692 0))(
  ( (array!73693 (arr!35495 (Array (_ BitVec 32) (_ BitVec 64))) (size!36032 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!73692)

(assert (=> b!1130450 (= res!755383 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!36032 _keys!1208))))))

(declare-datatypes ((V!43043 0))(
  ( (V!43044 (val!14275 Int)) )
))
(declare-datatypes ((tuple2!18074 0))(
  ( (tuple2!18075 (_1!9047 (_ BitVec 64)) (_2!9047 V!43043)) )
))
(declare-datatypes ((List!24893 0))(
  ( (Nil!24890) (Cons!24889 (h!26098 tuple2!18074) (t!35799 List!24893)) )
))
(declare-datatypes ((ListLongMap!16055 0))(
  ( (ListLongMap!16056 (toList!8043 List!24893)) )
))
(declare-fun lt!501991 () ListLongMap!16055)

(declare-fun k0!934 () (_ BitVec 64))

(declare-fun bm!48355 () Bool)

(declare-fun call!48359 () Bool)

(declare-fun call!48364 () ListLongMap!16055)

(declare-fun c!109991 () Bool)

(declare-fun contains!6537 (ListLongMap!16055 (_ BitVec 64)) Bool)

(assert (=> bm!48355 (= call!48359 (contains!6537 (ite c!109991 lt!501991 call!48364) k0!934))))

(declare-fun zeroValue!944 () V!43043)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-datatypes ((ValueCell!13509 0))(
  ( (ValueCellFull!13509 (v!16909 V!43043)) (EmptyCell!13509) )
))
(declare-datatypes ((array!73694 0))(
  ( (array!73695 (arr!35496 (Array (_ BitVec 32) ValueCell!13509)) (size!36033 (_ BitVec 32))) )
))
(declare-fun lt!501986 () array!73694)

(declare-fun defaultEntry!1004 () Int)

(declare-fun call!48363 () ListLongMap!16055)

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun minValue!944 () V!43043)

(declare-fun lt!501989 () array!73692)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun bm!48356 () Bool)

(declare-fun getCurrentListMapNoExtraKeys!4496 (array!73692 array!73694 (_ BitVec 32) (_ BitVec 32) V!43043 V!43043 (_ BitVec 32) Int) ListLongMap!16055)

(assert (=> bm!48356 (= call!48363 (getCurrentListMapNoExtraKeys!4496 lt!501989 lt!501986 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1130451 () Bool)

(declare-datatypes ((Unit!36986 0))(
  ( (Unit!36987) )
))
(declare-fun e!643390 () Unit!36986)

(declare-fun Unit!36988 () Unit!36986)

(assert (=> b!1130451 (= e!643390 Unit!36988)))

(declare-fun mapIsEmpty!44473 () Bool)

(declare-fun mapRes!44473 () Bool)

(assert (=> mapIsEmpty!44473 mapRes!44473))

(declare-fun b!1130452 () Bool)

(declare-fun e!643392 () Bool)

(declare-fun e!643402 () Bool)

(assert (=> b!1130452 (= e!643392 e!643402)))

(declare-fun res!755385 () Bool)

(assert (=> b!1130452 (=> res!755385 e!643402)))

(assert (=> b!1130452 (= res!755385 (not (= (select (arr!35495 _keys!1208) from!1455) k0!934)))))

(declare-fun e!643393 () Bool)

(assert (=> b!1130452 e!643393))

(declare-fun c!109990 () Bool)

(assert (=> b!1130452 (= c!109990 (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673))))

(declare-fun _values!996 () array!73694)

(declare-fun lt!501999 () Unit!36986)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!426 (array!73692 array!73694 (_ BitVec 32) (_ BitVec 32) V!43043 V!43043 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!36986)

(assert (=> b!1130452 (= lt!501999 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!426 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1130453 () Bool)

(declare-fun call!48358 () Bool)

(assert (=> b!1130453 call!48358))

(declare-fun lt!501994 () Unit!36986)

(declare-fun call!48362 () Unit!36986)

(assert (=> b!1130453 (= lt!501994 call!48362)))

(declare-fun e!643399 () Unit!36986)

(assert (=> b!1130453 (= e!643399 lt!501994)))

(declare-fun res!755391 () Bool)

(assert (=> start!98242 (=> (not res!755391) (not e!643401))))

(assert (=> start!98242 (= res!755391 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!36032 _keys!1208))))))

(assert (=> start!98242 e!643401))

(declare-fun tp_is_empty!28437 () Bool)

(assert (=> start!98242 tp_is_empty!28437))

(declare-fun array_inv!27098 (array!73692) Bool)

(assert (=> start!98242 (array_inv!27098 _keys!1208)))

(assert (=> start!98242 true))

(assert (=> start!98242 tp!84425))

(declare-fun e!643396 () Bool)

(declare-fun array_inv!27099 (array!73694) Bool)

(assert (=> start!98242 (and (array_inv!27099 _values!996) e!643396)))

(declare-fun b!1130454 () Bool)

(declare-fun e!643398 () Bool)

(declare-fun e!643403 () Bool)

(assert (=> b!1130454 (= e!643398 (not e!643403))))

(declare-fun res!755397 () Bool)

(assert (=> b!1130454 (=> res!755397 e!643403)))

(assert (=> b!1130454 (= res!755397 (bvsgt from!1455 i!673))))

(declare-fun arrayContainsKey!0 (array!73692 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1130454 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-fun lt!501988 () Unit!36986)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!73692 (_ BitVec 64) (_ BitVec 32)) Unit!36986)

(assert (=> b!1130454 (= lt!501988 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1130455 () Bool)

(declare-fun call!48360 () ListLongMap!16055)

(assert (=> b!1130455 (= e!643393 (= call!48363 call!48360))))

(declare-fun b!1130456 () Bool)

(declare-fun e!643397 () Unit!36986)

(declare-fun lt!501997 () Unit!36986)

(assert (=> b!1130456 (= e!643397 lt!501997)))

(declare-fun lt!501992 () ListLongMap!16055)

(declare-fun lt!501996 () Unit!36986)

(declare-fun addStillContains!710 (ListLongMap!16055 (_ BitVec 64) V!43043 (_ BitVec 64)) Unit!36986)

(assert (=> b!1130456 (= lt!501996 (addStillContains!710 lt!501992 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944 k0!934))))

(declare-fun call!48365 () ListLongMap!16055)

(assert (=> b!1130456 (= lt!501991 call!48365)))

(assert (=> b!1130456 call!48359))

(declare-fun call!48361 () Unit!36986)

(assert (=> b!1130456 (= lt!501997 call!48361)))

(declare-fun +!3410 (ListLongMap!16055 tuple2!18074) ListLongMap!16055)

(assert (=> b!1130456 (contains!6537 (+!3410 lt!501991 (tuple2!18075 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944)) k0!934)))

(declare-fun b!1130457 () Bool)

(declare-fun e!643394 () Bool)

(assert (=> b!1130457 (= e!643394 true)))

(declare-fun lt!501990 () Bool)

(declare-fun getCurrentListMap!4447 (array!73692 array!73694 (_ BitVec 32) (_ BitVec 32) V!43043 V!43043 (_ BitVec 32) Int) ListLongMap!16055)

(assert (=> b!1130457 (= lt!501990 (contains!6537 (getCurrentListMap!4447 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004) k0!934))))

(declare-fun b!1130458 () Bool)

(declare-fun e!643395 () Bool)

(assert (=> b!1130458 (= e!643396 (and e!643395 mapRes!44473))))

(declare-fun condMapEmpty!44473 () Bool)

(declare-fun mapDefault!44473 () ValueCell!13509)

(assert (=> b!1130458 (= condMapEmpty!44473 (= (arr!35496 _values!996) ((as const (Array (_ BitVec 32) ValueCell!13509)) mapDefault!44473)))))

(declare-fun b!1130459 () Bool)

(assert (=> b!1130459 (= e!643397 e!643399)))

(declare-fun c!109989 () Bool)

(declare-fun lt!501993 () Bool)

(assert (=> b!1130459 (= c!109989 (and (not lt!501993) (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1130460 () Bool)

(declare-fun lt!501987 () Unit!36986)

(assert (=> b!1130460 (= e!643390 lt!501987)))

(assert (=> b!1130460 (= lt!501987 call!48362)))

(assert (=> b!1130460 call!48358))

(declare-fun b!1130461 () Bool)

(declare-fun res!755387 () Bool)

(assert (=> b!1130461 (=> (not res!755387) (not e!643401))))

(assert (=> b!1130461 (= res!755387 (= (select (arr!35495 _keys!1208) i!673) k0!934))))

(declare-fun bm!48357 () Bool)

(assert (=> bm!48357 (= call!48365 (+!3410 lt!501992 (ite (or c!109991 c!109989) (tuple2!18075 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!18075 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944))))))

(declare-fun bm!48358 () Bool)

(assert (=> bm!48358 (= call!48358 call!48359)))

(declare-fun b!1130462 () Bool)

(declare-fun res!755395 () Bool)

(assert (=> b!1130462 (=> (not res!755395) (not e!643401))))

(assert (=> b!1130462 (= res!755395 (and (= (size!36033 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!36032 _keys!1208) (size!36033 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun bm!48359 () Bool)

(assert (=> bm!48359 (= call!48360 (getCurrentListMapNoExtraKeys!4496 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1130463 () Bool)

(declare-fun e!643391 () Bool)

(assert (=> b!1130463 (= e!643402 e!643391)))

(declare-fun res!755386 () Bool)

(assert (=> b!1130463 (=> res!755386 e!643391)))

(assert (=> b!1130463 (= res!755386 (not (contains!6537 lt!501992 k0!934)))))

(assert (=> b!1130463 (= lt!501992 (getCurrentListMapNoExtraKeys!4496 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1130464 () Bool)

(declare-fun res!755396 () Bool)

(assert (=> b!1130464 (=> (not res!755396) (not e!643398))))

(declare-datatypes ((List!24894 0))(
  ( (Nil!24891) (Cons!24890 (h!26099 (_ BitVec 64)) (t!35800 List!24894)) )
))
(declare-fun arrayNoDuplicates!0 (array!73692 (_ BitVec 32) List!24894) Bool)

(assert (=> b!1130464 (= res!755396 (arrayNoDuplicates!0 lt!501989 #b00000000000000000000000000000000 Nil!24891))))

(declare-fun b!1130465 () Bool)

(assert (=> b!1130465 (= e!643401 e!643398)))

(declare-fun res!755392 () Bool)

(assert (=> b!1130465 (=> (not res!755392) (not e!643398))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!73692 (_ BitVec 32)) Bool)

(assert (=> b!1130465 (= res!755392 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!501989 mask!1564))))

(assert (=> b!1130465 (= lt!501989 (array!73693 (store (arr!35495 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!36032 _keys!1208)))))

(declare-fun b!1130466 () Bool)

(declare-fun c!109988 () Bool)

(assert (=> b!1130466 (= c!109988 (and (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!501993))))

(assert (=> b!1130466 (= e!643399 e!643390)))

(declare-fun b!1130467 () Bool)

(declare-fun res!755389 () Bool)

(assert (=> b!1130467 (=> (not res!755389) (not e!643401))))

(assert (=> b!1130467 (= res!755389 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1130468 () Bool)

(declare-fun e!643400 () Bool)

(assert (=> b!1130468 (= e!643400 tp_is_empty!28437)))

(declare-fun b!1130469 () Bool)

(declare-fun res!755393 () Bool)

(assert (=> b!1130469 (=> (not res!755393) (not e!643401))))

(assert (=> b!1130469 (= res!755393 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!24891))))

(declare-fun bm!48360 () Bool)

(assert (=> bm!48360 (= call!48362 call!48361)))

(declare-fun b!1130470 () Bool)

(declare-fun res!755384 () Bool)

(assert (=> b!1130470 (=> (not res!755384) (not e!643401))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1130470 (= res!755384 (validKeyInArray!0 k0!934))))

(declare-fun b!1130471 () Bool)

(assert (=> b!1130471 (= e!643403 e!643392)))

(declare-fun res!755390 () Bool)

(assert (=> b!1130471 (=> res!755390 e!643392)))

(assert (=> b!1130471 (= res!755390 (not (= from!1455 i!673)))))

(declare-fun lt!501998 () ListLongMap!16055)

(assert (=> b!1130471 (= lt!501998 (getCurrentListMapNoExtraKeys!4496 lt!501989 lt!501986 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun dynLambda!2572 (Int (_ BitVec 64)) V!43043)

(assert (=> b!1130471 (= lt!501986 (array!73695 (store (arr!35496 _values!996) i!673 (ValueCellFull!13509 (dynLambda!2572 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!36033 _values!996)))))

(declare-fun lt!501995 () ListLongMap!16055)

(assert (=> b!1130471 (= lt!501995 (getCurrentListMapNoExtraKeys!4496 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1130472 () Bool)

(declare-fun -!1171 (ListLongMap!16055 (_ BitVec 64)) ListLongMap!16055)

(assert (=> b!1130472 (= e!643393 (= call!48363 (-!1171 call!48360 k0!934)))))

(declare-fun b!1130473 () Bool)

(assert (=> b!1130473 (= e!643395 tp_is_empty!28437)))

(declare-fun bm!48361 () Bool)

(assert (=> bm!48361 (= call!48364 call!48365)))

(declare-fun b!1130474 () Bool)

(declare-fun res!755388 () Bool)

(assert (=> b!1130474 (=> (not res!755388) (not e!643401))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1130474 (= res!755388 (validMask!0 mask!1564))))

(declare-fun bm!48362 () Bool)

(assert (=> bm!48362 (= call!48361 (addStillContains!710 (ite c!109991 lt!501991 lt!501992) (ite c!109991 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!109989 #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000)) (ite c!109991 minValue!944 (ite c!109989 zeroValue!944 minValue!944)) k0!934))))

(declare-fun b!1130475 () Bool)

(assert (=> b!1130475 (= e!643391 e!643394)))

(declare-fun res!755394 () Bool)

(assert (=> b!1130475 (=> res!755394 e!643394)))

(assert (=> b!1130475 (= res!755394 (or (bvslt (bvadd #b00000000000000000000000000000001 from!1455) #b00000000000000000000000000000000) (bvsge (bvadd #b00000000000000000000000000000001 from!1455) (size!36032 _keys!1208))))))

(declare-fun lt!501985 () Unit!36986)

(assert (=> b!1130475 (= lt!501985 e!643397)))

(assert (=> b!1130475 (= c!109991 (and (not lt!501993) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> b!1130475 (= lt!501993 (= (bvand extraKeys!923 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(declare-fun mapNonEmpty!44473 () Bool)

(declare-fun tp!84426 () Bool)

(assert (=> mapNonEmpty!44473 (= mapRes!44473 (and tp!84426 e!643400))))

(declare-fun mapRest!44473 () (Array (_ BitVec 32) ValueCell!13509))

(declare-fun mapValue!44473 () ValueCell!13509)

(declare-fun mapKey!44473 () (_ BitVec 32))

(assert (=> mapNonEmpty!44473 (= (arr!35496 _values!996) (store mapRest!44473 mapKey!44473 mapValue!44473))))

(assert (= (and start!98242 res!755391) b!1130474))

(assert (= (and b!1130474 res!755388) b!1130462))

(assert (= (and b!1130462 res!755395) b!1130467))

(assert (= (and b!1130467 res!755389) b!1130469))

(assert (= (and b!1130469 res!755393) b!1130450))

(assert (= (and b!1130450 res!755383) b!1130470))

(assert (= (and b!1130470 res!755384) b!1130461))

(assert (= (and b!1130461 res!755387) b!1130465))

(assert (= (and b!1130465 res!755392) b!1130464))

(assert (= (and b!1130464 res!755396) b!1130454))

(assert (= (and b!1130454 (not res!755397)) b!1130471))

(assert (= (and b!1130471 (not res!755390)) b!1130452))

(assert (= (and b!1130452 c!109990) b!1130472))

(assert (= (and b!1130452 (not c!109990)) b!1130455))

(assert (= (or b!1130472 b!1130455) bm!48356))

(assert (= (or b!1130472 b!1130455) bm!48359))

(assert (= (and b!1130452 (not res!755385)) b!1130463))

(assert (= (and b!1130463 (not res!755386)) b!1130475))

(assert (= (and b!1130475 c!109991) b!1130456))

(assert (= (and b!1130475 (not c!109991)) b!1130459))

(assert (= (and b!1130459 c!109989) b!1130453))

(assert (= (and b!1130459 (not c!109989)) b!1130466))

(assert (= (and b!1130466 c!109988) b!1130460))

(assert (= (and b!1130466 (not c!109988)) b!1130451))

(assert (= (or b!1130453 b!1130460) bm!48360))

(assert (= (or b!1130453 b!1130460) bm!48361))

(assert (= (or b!1130453 b!1130460) bm!48358))

(assert (= (or b!1130456 bm!48358) bm!48355))

(assert (= (or b!1130456 bm!48360) bm!48362))

(assert (= (or b!1130456 bm!48361) bm!48357))

(assert (= (and b!1130475 (not res!755394)) b!1130457))

(assert (= (and b!1130458 condMapEmpty!44473) mapIsEmpty!44473))

(assert (= (and b!1130458 (not condMapEmpty!44473)) mapNonEmpty!44473))

(get-info :version)

(assert (= (and mapNonEmpty!44473 ((_ is ValueCellFull!13509) mapValue!44473)) b!1130468))

(assert (= (and b!1130458 ((_ is ValueCellFull!13509) mapDefault!44473)) b!1130473))

(assert (= start!98242 b!1130458))

(declare-fun b_lambda!18911 () Bool)

(assert (=> (not b_lambda!18911) (not b!1130471)))

(declare-fun t!35798 () Bool)

(declare-fun tb!8727 () Bool)

(assert (=> (and start!98242 (= defaultEntry!1004 defaultEntry!1004) t!35798) tb!8727))

(declare-fun result!18007 () Bool)

(assert (=> tb!8727 (= result!18007 tp_is_empty!28437)))

(assert (=> b!1130471 t!35798))

(declare-fun b_and!38621 () Bool)

(assert (= b_and!38619 (and (=> t!35798 result!18007) b_and!38621)))

(declare-fun m!1043715 () Bool)

(assert (=> b!1130457 m!1043715))

(assert (=> b!1130457 m!1043715))

(declare-fun m!1043717 () Bool)

(assert (=> b!1130457 m!1043717))

(declare-fun m!1043719 () Bool)

(assert (=> bm!48355 m!1043719))

(declare-fun m!1043721 () Bool)

(assert (=> b!1130461 m!1043721))

(declare-fun m!1043723 () Bool)

(assert (=> b!1130464 m!1043723))

(declare-fun m!1043725 () Bool)

(assert (=> bm!48356 m!1043725))

(declare-fun m!1043727 () Bool)

(assert (=> bm!48357 m!1043727))

(declare-fun m!1043729 () Bool)

(assert (=> b!1130471 m!1043729))

(declare-fun m!1043731 () Bool)

(assert (=> b!1130471 m!1043731))

(declare-fun m!1043733 () Bool)

(assert (=> b!1130471 m!1043733))

(declare-fun m!1043735 () Bool)

(assert (=> b!1130471 m!1043735))

(declare-fun m!1043737 () Bool)

(assert (=> b!1130474 m!1043737))

(declare-fun m!1043739 () Bool)

(assert (=> b!1130470 m!1043739))

(declare-fun m!1043741 () Bool)

(assert (=> bm!48362 m!1043741))

(declare-fun m!1043743 () Bool)

(assert (=> b!1130456 m!1043743))

(declare-fun m!1043745 () Bool)

(assert (=> b!1130456 m!1043745))

(assert (=> b!1130456 m!1043745))

(declare-fun m!1043747 () Bool)

(assert (=> b!1130456 m!1043747))

(declare-fun m!1043749 () Bool)

(assert (=> b!1130467 m!1043749))

(declare-fun m!1043751 () Bool)

(assert (=> b!1130472 m!1043751))

(declare-fun m!1043753 () Bool)

(assert (=> b!1130463 m!1043753))

(declare-fun m!1043755 () Bool)

(assert (=> b!1130463 m!1043755))

(declare-fun m!1043757 () Bool)

(assert (=> b!1130452 m!1043757))

(declare-fun m!1043759 () Bool)

(assert (=> b!1130452 m!1043759))

(declare-fun m!1043761 () Bool)

(assert (=> b!1130465 m!1043761))

(declare-fun m!1043763 () Bool)

(assert (=> b!1130465 m!1043763))

(declare-fun m!1043765 () Bool)

(assert (=> b!1130454 m!1043765))

(declare-fun m!1043767 () Bool)

(assert (=> b!1130454 m!1043767))

(declare-fun m!1043769 () Bool)

(assert (=> start!98242 m!1043769))

(declare-fun m!1043771 () Bool)

(assert (=> start!98242 m!1043771))

(assert (=> bm!48359 m!1043755))

(declare-fun m!1043773 () Bool)

(assert (=> mapNonEmpty!44473 m!1043773))

(declare-fun m!1043775 () Bool)

(assert (=> b!1130469 m!1043775))

(check-sat tp_is_empty!28437 (not bm!48356) (not b!1130452) (not b!1130470) (not b!1130469) (not b!1130465) (not b!1130471) (not b!1130472) (not bm!48355) (not bm!48362) (not bm!48357) (not b_lambda!18911) (not bm!48359) (not b!1130474) (not b!1130457) (not b!1130456) (not b!1130454) b_and!38621 (not b!1130464) (not b!1130463) (not b!1130467) (not b_next!23907) (not start!98242) (not mapNonEmpty!44473))
(check-sat b_and!38621 (not b_next!23907))
