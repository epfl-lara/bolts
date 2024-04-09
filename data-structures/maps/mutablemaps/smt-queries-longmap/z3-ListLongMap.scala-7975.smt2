; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!98728 () Bool)

(assert start!98728)

(declare-fun b_free!24297 () Bool)

(declare-fun b_next!24297 () Bool)

(assert (=> start!98728 (= b_free!24297 (not b_next!24297))))

(declare-fun tp!85602 () Bool)

(declare-fun b_and!39457 () Bool)

(assert (=> start!98728 (= tp!85602 b_and!39457)))

(declare-fun bm!53102 () Bool)

(declare-fun call!53106 () Bool)

(declare-fun call!53111 () Bool)

(assert (=> bm!53102 (= call!53106 call!53111)))

(declare-datatypes ((V!43563 0))(
  ( (V!43564 (val!14470 Int)) )
))
(declare-datatypes ((tuple2!18432 0))(
  ( (tuple2!18433 (_1!9226 (_ BitVec 64)) (_2!9226 V!43563)) )
))
(declare-datatypes ((List!25225 0))(
  ( (Nil!25222) (Cons!25221 (h!26430 tuple2!18432) (t!36521 List!25225)) )
))
(declare-datatypes ((ListLongMap!16413 0))(
  ( (ListLongMap!16414 (toList!8222 List!25225)) )
))
(declare-fun call!53109 () ListLongMap!16413)

(declare-fun e!653361 () Bool)

(declare-fun k0!934 () (_ BitVec 64))

(declare-fun b!1148610 () Bool)

(declare-fun call!53105 () ListLongMap!16413)

(declare-fun -!1311 (ListLongMap!16413 (_ BitVec 64)) ListLongMap!16413)

(assert (=> b!1148610 (= e!653361 (= call!53109 (-!1311 call!53105 k0!934)))))

(declare-fun b!1148611 () Bool)

(declare-datatypes ((Unit!37668 0))(
  ( (Unit!37669) )
))
(declare-fun e!653363 () Unit!37668)

(declare-fun lt!513501 () Unit!37668)

(assert (=> b!1148611 (= e!653363 lt!513501)))

(declare-fun call!53112 () Unit!37668)

(assert (=> b!1148611 (= lt!513501 call!53112)))

(assert (=> b!1148611 call!53106))

(declare-fun c!113483 () Bool)

(declare-fun c!113484 () Bool)

(declare-fun minValue!944 () V!43563)

(declare-fun bm!53103 () Bool)

(declare-fun zeroValue!944 () V!43563)

(declare-fun call!53107 () Unit!37668)

(declare-fun lt!513502 () ListLongMap!16413)

(declare-fun addStillContains!860 (ListLongMap!16413 (_ BitVec 64) V!43563 (_ BitVec 64)) Unit!37668)

(assert (=> bm!53103 (= call!53107 (addStillContains!860 lt!513502 (ite (or c!113483 c!113484) #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000) (ite (or c!113483 c!113484) zeroValue!944 minValue!944) k0!934))))

(declare-fun b!1148612 () Bool)

(declare-fun e!653373 () Bool)

(declare-fun tp_is_empty!28827 () Bool)

(assert (=> b!1148612 (= e!653373 tp_is_empty!28827)))

(declare-fun b!1148613 () Bool)

(declare-fun lt!513493 () Bool)

(declare-fun extraKeys!923 () (_ BitVec 32))

(assert (=> b!1148613 (= c!113484 (and (not lt!513493) (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun e!653374 () Unit!37668)

(assert (=> b!1148613 (= e!653374 e!653363)))

(declare-fun b!1148614 () Bool)

(declare-fun res!764401 () Bool)

(declare-fun e!653376 () Bool)

(assert (=> b!1148614 (=> (not res!764401) (not e!653376))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1148614 (= res!764401 (validKeyInArray!0 k0!934))))

(declare-fun b!1148615 () Bool)

(declare-fun e!653369 () Unit!37668)

(declare-fun Unit!37670 () Unit!37668)

(assert (=> b!1148615 (= e!653369 Unit!37670)))

(declare-fun b!1148616 () Bool)

(declare-fun e!653365 () Bool)

(declare-fun mapRes!45065 () Bool)

(assert (=> b!1148616 (= e!653365 (and e!653373 mapRes!45065))))

(declare-fun condMapEmpty!45065 () Bool)

(declare-datatypes ((ValueCell!13704 0))(
  ( (ValueCellFull!13704 (v!17108 V!43563)) (EmptyCell!13704) )
))
(declare-datatypes ((array!74458 0))(
  ( (array!74459 (arr!35876 (Array (_ BitVec 32) ValueCell!13704)) (size!36413 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!74458)

(declare-fun mapDefault!45065 () ValueCell!13704)

(assert (=> b!1148616 (= condMapEmpty!45065 (= (arr!35876 _values!996) ((as const (Array (_ BitVec 32) ValueCell!13704)) mapDefault!45065)))))

(declare-fun b!1148617 () Bool)

(declare-fun e!653360 () Bool)

(assert (=> b!1148617 (= e!653376 e!653360)))

(declare-fun res!764400 () Bool)

(assert (=> b!1148617 (=> (not res!764400) (not e!653360))))

(declare-datatypes ((array!74460 0))(
  ( (array!74461 (arr!35877 (Array (_ BitVec 32) (_ BitVec 64))) (size!36414 (_ BitVec 32))) )
))
(declare-fun lt!513498 () array!74460)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!74460 (_ BitVec 32)) Bool)

(assert (=> b!1148617 (= res!764400 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!513498 mask!1564))))

(declare-fun _keys!1208 () array!74460)

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1148617 (= lt!513498 (array!74461 (store (arr!35877 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!36414 _keys!1208)))))

(declare-fun b!1148618 () Bool)

(declare-fun e!653368 () Bool)

(assert (=> b!1148618 (= e!653360 (not e!653368))))

(declare-fun res!764404 () Bool)

(assert (=> b!1148618 (=> res!764404 e!653368)))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> b!1148618 (= res!764404 (bvsgt from!1455 i!673))))

(declare-fun arrayContainsKey!0 (array!74460 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1148618 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-fun lt!513508 () Unit!37668)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!74460 (_ BitVec 64) (_ BitVec 32)) Unit!37668)

(assert (=> b!1148618 (= lt!513508 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1148619 () Bool)

(declare-fun res!764396 () Bool)

(assert (=> b!1148619 (=> (not res!764396) (not e!653376))))

(assert (=> b!1148619 (= res!764396 (= (select (arr!35877 _keys!1208) i!673) k0!934))))

(declare-fun e!653362 () Bool)

(declare-fun b!1148620 () Bool)

(assert (=> b!1148620 (= e!653362 (ite (= k0!934 #b0000000000000000000000000000000000000000000000000000000000000000) (not lt!513493) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!1148621 () Bool)

(declare-fun res!764399 () Bool)

(assert (=> b!1148621 (=> (not res!764399) (not e!653376))))

(declare-datatypes ((List!25226 0))(
  ( (Nil!25223) (Cons!25222 (h!26431 (_ BitVec 64)) (t!36522 List!25226)) )
))
(declare-fun arrayNoDuplicates!0 (array!74460 (_ BitVec 32) List!25226) Bool)

(assert (=> b!1148621 (= res!764399 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!25223))))

(declare-fun bm!53105 () Bool)

(declare-fun lt!513495 () array!74458)

(declare-fun defaultEntry!1004 () Int)

(declare-fun getCurrentListMapNoExtraKeys!4663 (array!74460 array!74458 (_ BitVec 32) (_ BitVec 32) V!43563 V!43563 (_ BitVec 32) Int) ListLongMap!16413)

(assert (=> bm!53105 (= call!53109 (getCurrentListMapNoExtraKeys!4663 lt!513498 lt!513495 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun call!53110 () ListLongMap!16413)

(declare-fun bm!53106 () Bool)

(declare-fun lt!513494 () ListLongMap!16413)

(declare-fun contains!6718 (ListLongMap!16413 (_ BitVec 64)) Bool)

(assert (=> bm!53106 (= call!53111 (contains!6718 (ite c!113483 lt!513494 call!53110) k0!934))))

(declare-fun b!1148622 () Bool)

(declare-fun +!3561 (ListLongMap!16413 tuple2!18432) ListLongMap!16413)

(assert (=> b!1148622 (contains!6718 (+!3561 lt!513494 (tuple2!18433 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944)) k0!934)))

(declare-fun lt!513496 () Unit!37668)

(assert (=> b!1148622 (= lt!513496 (addStillContains!860 lt!513494 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944 k0!934))))

(assert (=> b!1148622 call!53111))

(declare-fun call!53108 () ListLongMap!16413)

(assert (=> b!1148622 (= lt!513494 call!53108)))

(declare-fun lt!513511 () Unit!37668)

(assert (=> b!1148622 (= lt!513511 call!53107)))

(assert (=> b!1148622 (= e!653374 lt!513496)))

(declare-fun b!1148623 () Bool)

(declare-fun res!764403 () Bool)

(assert (=> b!1148623 (=> (not res!764403) (not e!653376))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1148623 (= res!764403 (validMask!0 mask!1564))))

(declare-fun b!1148624 () Bool)

(assert (=> b!1148624 (= e!653362 (arrayContainsKey!0 _keys!1208 k0!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun mapNonEmpty!45065 () Bool)

(declare-fun tp!85603 () Bool)

(declare-fun e!653366 () Bool)

(assert (=> mapNonEmpty!45065 (= mapRes!45065 (and tp!85603 e!653366))))

(declare-fun mapValue!45065 () ValueCell!13704)

(declare-fun mapKey!45065 () (_ BitVec 32))

(declare-fun mapRest!45065 () (Array (_ BitVec 32) ValueCell!13704))

(assert (=> mapNonEmpty!45065 (= (arr!35876 _values!996) (store mapRest!45065 mapKey!45065 mapValue!45065))))

(declare-fun bm!53107 () Bool)

(assert (=> bm!53107 (= call!53110 call!53108)))

(declare-fun e!653375 () Bool)

(declare-fun b!1148625 () Bool)

(assert (=> b!1148625 (= e!653375 (arrayContainsKey!0 _keys!1208 k0!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun b!1148626 () Bool)

(declare-fun res!764398 () Bool)

(assert (=> b!1148626 (=> (not res!764398) (not e!653376))))

(assert (=> b!1148626 (= res!764398 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!36414 _keys!1208))))))

(declare-fun b!1148627 () Bool)

(declare-fun e!653364 () Bool)

(declare-fun e!653371 () Bool)

(assert (=> b!1148627 (= e!653364 e!653371)))

(declare-fun res!764408 () Bool)

(assert (=> b!1148627 (=> res!764408 e!653371)))

(assert (=> b!1148627 (= res!764408 (not (= (select (arr!35877 _keys!1208) from!1455) k0!934)))))

(assert (=> b!1148627 e!653361))

(declare-fun c!113480 () Bool)

(assert (=> b!1148627 (= c!113480 (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673))))

(declare-fun lt!513507 () Unit!37668)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!554 (array!74460 array!74458 (_ BitVec 32) (_ BitVec 32) V!43563 V!43563 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!37668)

(assert (=> b!1148627 (= lt!513507 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!554 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1148628 () Bool)

(assert (=> b!1148628 (= e!653368 e!653364)))

(declare-fun res!764402 () Bool)

(assert (=> b!1148628 (=> res!764402 e!653364)))

(assert (=> b!1148628 (= res!764402 (not (= from!1455 i!673)))))

(declare-fun lt!513509 () ListLongMap!16413)

(assert (=> b!1148628 (= lt!513509 (getCurrentListMapNoExtraKeys!4663 lt!513498 lt!513495 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun lt!513506 () V!43563)

(assert (=> b!1148628 (= lt!513495 (array!74459 (store (arr!35876 _values!996) i!673 (ValueCellFull!13704 lt!513506)) (size!36413 _values!996)))))

(declare-fun dynLambda!2694 (Int (_ BitVec 64)) V!43563)

(assert (=> b!1148628 (= lt!513506 (dynLambda!2694 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!513497 () ListLongMap!16413)

(assert (=> b!1148628 (= lt!513497 (getCurrentListMapNoExtraKeys!4663 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1148629 () Bool)

(assert (=> b!1148629 call!53106))

(declare-fun lt!513505 () Unit!37668)

(assert (=> b!1148629 (= lt!513505 call!53112)))

(declare-fun e!653370 () Unit!37668)

(assert (=> b!1148629 (= e!653370 lt!513505)))

(declare-fun e!653372 () Bool)

(declare-fun b!1148630 () Bool)

(assert (=> b!1148630 (= e!653372 (= (-!1311 lt!513497 k0!934) lt!513502))))

(declare-fun b!1148631 () Bool)

(assert (=> b!1148631 (= e!653361 (= call!53109 call!53105))))

(declare-fun b!1148632 () Bool)

(assert (=> b!1148632 (= e!653363 e!653370)))

(declare-fun c!113479 () Bool)

(assert (=> b!1148632 (= c!113479 (and (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!513493))))

(declare-fun b!1148633 () Bool)

(assert (=> b!1148633 (= e!653371 true)))

(assert (=> b!1148633 e!653372))

(declare-fun res!764397 () Bool)

(assert (=> b!1148633 (=> (not res!764397) (not e!653372))))

(declare-fun lt!513510 () V!43563)

(assert (=> b!1148633 (= res!764397 (= (-!1311 (+!3561 lt!513502 (tuple2!18433 (select (arr!35877 _keys!1208) from!1455) lt!513510)) (select (arr!35877 _keys!1208) from!1455)) lt!513502))))

(declare-fun lt!513500 () Unit!37668)

(declare-fun addThenRemoveForNewKeyIsSame!160 (ListLongMap!16413 (_ BitVec 64) V!43563) Unit!37668)

(assert (=> b!1148633 (= lt!513500 (addThenRemoveForNewKeyIsSame!160 lt!513502 (select (arr!35877 _keys!1208) from!1455) lt!513510))))

(declare-fun get!18280 (ValueCell!13704 V!43563) V!43563)

(assert (=> b!1148633 (= lt!513510 (get!18280 (select (arr!35876 _values!996) from!1455) lt!513506))))

(declare-fun lt!513499 () Unit!37668)

(assert (=> b!1148633 (= lt!513499 e!653369)))

(declare-fun c!113482 () Bool)

(assert (=> b!1148633 (= c!113482 (contains!6718 lt!513502 k0!934))))

(assert (=> b!1148633 (= lt!513502 (getCurrentListMapNoExtraKeys!4663 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun bm!53108 () Bool)

(assert (=> bm!53108 (= call!53108 (+!3561 lt!513502 (ite (or c!113483 c!113484) (tuple2!18433 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!18433 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944))))))

(declare-fun b!1148634 () Bool)

(declare-fun res!764407 () Bool)

(assert (=> b!1148634 (=> (not res!764407) (not e!653376))))

(assert (=> b!1148634 (= res!764407 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1148635 () Bool)

(declare-fun Unit!37671 () Unit!37668)

(assert (=> b!1148635 (= e!653370 Unit!37671)))

(declare-fun b!1148636 () Bool)

(declare-fun res!764394 () Bool)

(assert (=> b!1148636 (=> (not res!764394) (not e!653360))))

(assert (=> b!1148636 (= res!764394 (arrayNoDuplicates!0 lt!513498 #b00000000000000000000000000000000 Nil!25223))))

(declare-fun b!1148637 () Bool)

(declare-fun res!764395 () Bool)

(assert (=> b!1148637 (=> (not res!764395) (not e!653376))))

(assert (=> b!1148637 (= res!764395 (and (= (size!36413 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!36414 _keys!1208) (size!36413 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1148638 () Bool)

(assert (=> b!1148638 (= e!653366 tp_is_empty!28827)))

(declare-fun b!1148639 () Bool)

(declare-fun Unit!37672 () Unit!37668)

(assert (=> b!1148639 (= e!653369 Unit!37672)))

(assert (=> b!1148639 (= lt!513493 (= (bvand extraKeys!923 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(assert (=> b!1148639 (= c!113483 (and (not lt!513493) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun lt!513512 () Unit!37668)

(assert (=> b!1148639 (= lt!513512 e!653374)))

(declare-fun lt!513513 () Unit!37668)

(declare-fun lemmaListMapContainsThenArrayContainsFrom!446 (array!74460 array!74458 (_ BitVec 32) (_ BitVec 32) V!43563 V!43563 (_ BitVec 64) (_ BitVec 32) Int) Unit!37668)

(assert (=> b!1148639 (= lt!513513 (lemmaListMapContainsThenArrayContainsFrom!446 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun c!113481 () Bool)

(assert (=> b!1148639 (= c!113481 (and (not (= k0!934 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!934 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun res!764406 () Bool)

(assert (=> b!1148639 (= res!764406 e!653362)))

(assert (=> b!1148639 (=> (not res!764406) (not e!653375))))

(assert (=> b!1148639 e!653375))

(declare-fun lt!513503 () Unit!37668)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!74460 (_ BitVec 32) (_ BitVec 32)) Unit!37668)

(assert (=> b!1148639 (= lt!513503 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1208 #b00000000000000000000000000000000 from!1455))))

(assert (=> b!1148639 (arrayNoDuplicates!0 _keys!1208 from!1455 Nil!25223)))

(declare-fun lt!513504 () Unit!37668)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!74460 (_ BitVec 64) (_ BitVec 32) List!25226) Unit!37668)

(assert (=> b!1148639 (= lt!513504 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!1208 k0!934 from!1455 Nil!25223))))

(assert (=> b!1148639 false))

(declare-fun mapIsEmpty!45065 () Bool)

(assert (=> mapIsEmpty!45065 mapRes!45065))

(declare-fun bm!53109 () Bool)

(assert (=> bm!53109 (= call!53105 (getCurrentListMapNoExtraKeys!4663 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun res!764405 () Bool)

(assert (=> start!98728 (=> (not res!764405) (not e!653376))))

(assert (=> start!98728 (= res!764405 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!36414 _keys!1208))))))

(assert (=> start!98728 e!653376))

(assert (=> start!98728 tp_is_empty!28827))

(declare-fun array_inv!27358 (array!74460) Bool)

(assert (=> start!98728 (array_inv!27358 _keys!1208)))

(assert (=> start!98728 true))

(assert (=> start!98728 tp!85602))

(declare-fun array_inv!27359 (array!74458) Bool)

(assert (=> start!98728 (and (array_inv!27359 _values!996) e!653365)))

(declare-fun bm!53104 () Bool)

(assert (=> bm!53104 (= call!53112 call!53107)))

(assert (= (and start!98728 res!764405) b!1148623))

(assert (= (and b!1148623 res!764403) b!1148637))

(assert (= (and b!1148637 res!764395) b!1148634))

(assert (= (and b!1148634 res!764407) b!1148621))

(assert (= (and b!1148621 res!764399) b!1148626))

(assert (= (and b!1148626 res!764398) b!1148614))

(assert (= (and b!1148614 res!764401) b!1148619))

(assert (= (and b!1148619 res!764396) b!1148617))

(assert (= (and b!1148617 res!764400) b!1148636))

(assert (= (and b!1148636 res!764394) b!1148618))

(assert (= (and b!1148618 (not res!764404)) b!1148628))

(assert (= (and b!1148628 (not res!764402)) b!1148627))

(assert (= (and b!1148627 c!113480) b!1148610))

(assert (= (and b!1148627 (not c!113480)) b!1148631))

(assert (= (or b!1148610 b!1148631) bm!53105))

(assert (= (or b!1148610 b!1148631) bm!53109))

(assert (= (and b!1148627 (not res!764408)) b!1148633))

(assert (= (and b!1148633 c!113482) b!1148639))

(assert (= (and b!1148633 (not c!113482)) b!1148615))

(assert (= (and b!1148639 c!113483) b!1148622))

(assert (= (and b!1148639 (not c!113483)) b!1148613))

(assert (= (and b!1148613 c!113484) b!1148611))

(assert (= (and b!1148613 (not c!113484)) b!1148632))

(assert (= (and b!1148632 c!113479) b!1148629))

(assert (= (and b!1148632 (not c!113479)) b!1148635))

(assert (= (or b!1148611 b!1148629) bm!53104))

(assert (= (or b!1148611 b!1148629) bm!53107))

(assert (= (or b!1148611 b!1148629) bm!53102))

(assert (= (or b!1148622 bm!53102) bm!53106))

(assert (= (or b!1148622 bm!53104) bm!53103))

(assert (= (or b!1148622 bm!53107) bm!53108))

(assert (= (and b!1148639 c!113481) b!1148624))

(assert (= (and b!1148639 (not c!113481)) b!1148620))

(assert (= (and b!1148639 res!764406) b!1148625))

(assert (= (and b!1148633 res!764397) b!1148630))

(assert (= (and b!1148616 condMapEmpty!45065) mapIsEmpty!45065))

(assert (= (and b!1148616 (not condMapEmpty!45065)) mapNonEmpty!45065))

(get-info :version)

(assert (= (and mapNonEmpty!45065 ((_ is ValueCellFull!13704) mapValue!45065)) b!1148638))

(assert (= (and b!1148616 ((_ is ValueCellFull!13704) mapDefault!45065)) b!1148612))

(assert (= start!98728 b!1148616))

(declare-fun b_lambda!19421 () Bool)

(assert (=> (not b_lambda!19421) (not b!1148628)))

(declare-fun t!36520 () Bool)

(declare-fun tb!9117 () Bool)

(assert (=> (and start!98728 (= defaultEntry!1004 defaultEntry!1004) t!36520) tb!9117))

(declare-fun result!18791 () Bool)

(assert (=> tb!9117 (= result!18791 tp_is_empty!28827)))

(assert (=> b!1148628 t!36520))

(declare-fun b_and!39459 () Bool)

(assert (= b_and!39457 (and (=> t!36520 result!18791) b_and!39459)))

(declare-fun m!1059133 () Bool)

(assert (=> bm!53108 m!1059133))

(declare-fun m!1059135 () Bool)

(assert (=> bm!53109 m!1059135))

(declare-fun m!1059137 () Bool)

(assert (=> b!1148622 m!1059137))

(assert (=> b!1148622 m!1059137))

(declare-fun m!1059139 () Bool)

(assert (=> b!1148622 m!1059139))

(declare-fun m!1059141 () Bool)

(assert (=> b!1148622 m!1059141))

(declare-fun m!1059143 () Bool)

(assert (=> bm!53106 m!1059143))

(declare-fun m!1059145 () Bool)

(assert (=> bm!53105 m!1059145))

(declare-fun m!1059147 () Bool)

(assert (=> b!1148636 m!1059147))

(declare-fun m!1059149 () Bool)

(assert (=> b!1148623 m!1059149))

(declare-fun m!1059151 () Bool)

(assert (=> b!1148610 m!1059151))

(declare-fun m!1059153 () Bool)

(assert (=> b!1148627 m!1059153))

(declare-fun m!1059155 () Bool)

(assert (=> b!1148627 m!1059155))

(declare-fun m!1059157 () Bool)

(assert (=> b!1148625 m!1059157))

(declare-fun m!1059159 () Bool)

(assert (=> b!1148621 m!1059159))

(declare-fun m!1059161 () Bool)

(assert (=> mapNonEmpty!45065 m!1059161))

(declare-fun m!1059163 () Bool)

(assert (=> b!1148634 m!1059163))

(declare-fun m!1059165 () Bool)

(assert (=> b!1148639 m!1059165))

(declare-fun m!1059167 () Bool)

(assert (=> b!1148639 m!1059167))

(declare-fun m!1059169 () Bool)

(assert (=> b!1148639 m!1059169))

(declare-fun m!1059171 () Bool)

(assert (=> b!1148639 m!1059171))

(declare-fun m!1059173 () Bool)

(assert (=> b!1148618 m!1059173))

(declare-fun m!1059175 () Bool)

(assert (=> b!1148618 m!1059175))

(declare-fun m!1059177 () Bool)

(assert (=> b!1148614 m!1059177))

(declare-fun m!1059179 () Bool)

(assert (=> bm!53103 m!1059179))

(declare-fun m!1059181 () Bool)

(assert (=> b!1148617 m!1059181))

(declare-fun m!1059183 () Bool)

(assert (=> b!1148617 m!1059183))

(declare-fun m!1059185 () Bool)

(assert (=> b!1148628 m!1059185))

(declare-fun m!1059187 () Bool)

(assert (=> b!1148628 m!1059187))

(declare-fun m!1059189 () Bool)

(assert (=> b!1148628 m!1059189))

(declare-fun m!1059191 () Bool)

(assert (=> b!1148628 m!1059191))

(assert (=> b!1148633 m!1059135))

(declare-fun m!1059193 () Bool)

(assert (=> b!1148633 m!1059193))

(assert (=> b!1148633 m!1059193))

(declare-fun m!1059195 () Bool)

(assert (=> b!1148633 m!1059195))

(assert (=> b!1148633 m!1059153))

(declare-fun m!1059197 () Bool)

(assert (=> b!1148633 m!1059197))

(declare-fun m!1059199 () Bool)

(assert (=> b!1148633 m!1059199))

(declare-fun m!1059201 () Bool)

(assert (=> b!1148633 m!1059201))

(assert (=> b!1148633 m!1059153))

(assert (=> b!1148633 m!1059199))

(assert (=> b!1148633 m!1059153))

(declare-fun m!1059203 () Bool)

(assert (=> b!1148633 m!1059203))

(declare-fun m!1059205 () Bool)

(assert (=> start!98728 m!1059205))

(declare-fun m!1059207 () Bool)

(assert (=> start!98728 m!1059207))

(assert (=> b!1148624 m!1059157))

(declare-fun m!1059209 () Bool)

(assert (=> b!1148630 m!1059209))

(declare-fun m!1059211 () Bool)

(assert (=> b!1148619 m!1059211))

(check-sat (not b!1148614) (not bm!53105) b_and!39459 (not b!1148639) (not b!1148621) (not b!1148623) (not b!1148610) (not b!1148630) (not b!1148624) (not bm!53109) (not start!98728) (not bm!53103) (not b_lambda!19421) (not b!1148636) (not b!1148625) (not mapNonEmpty!45065) (not b!1148628) (not b!1148617) (not b!1148634) (not b!1148618) (not b!1148622) (not b!1148627) (not b!1148633) (not bm!53106) (not bm!53108) tp_is_empty!28827 (not b_next!24297))
(check-sat b_and!39459 (not b_next!24297))
