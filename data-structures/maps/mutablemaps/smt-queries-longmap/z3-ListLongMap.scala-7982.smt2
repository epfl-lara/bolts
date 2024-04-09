; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!98770 () Bool)

(assert start!98770)

(declare-fun b_free!24339 () Bool)

(declare-fun b_next!24339 () Bool)

(assert (=> start!98770 (= b_free!24339 (not b_next!24339))))

(declare-fun tp!85728 () Bool)

(declare-fun b_and!39541 () Bool)

(assert (=> start!98770 (= tp!85728 b_and!39541)))

(declare-fun b!1150542 () Bool)

(declare-datatypes ((Unit!37756 0))(
  ( (Unit!37757) )
))
(declare-fun e!654446 () Unit!37756)

(declare-fun Unit!37758 () Unit!37756)

(assert (=> b!1150542 (= e!654446 Unit!37758)))

(declare-fun b!1150543 () Bool)

(declare-fun res!765346 () Bool)

(declare-fun e!654444 () Bool)

(assert (=> b!1150543 (=> (not res!765346) (not e!654444))))

(declare-datatypes ((array!74542 0))(
  ( (array!74543 (arr!35918 (Array (_ BitVec 32) (_ BitVec 64))) (size!36455 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!74542)

(declare-datatypes ((List!25263 0))(
  ( (Nil!25260) (Cons!25259 (h!26468 (_ BitVec 64)) (t!36601 List!25263)) )
))
(declare-fun arrayNoDuplicates!0 (array!74542 (_ BitVec 32) List!25263) Bool)

(assert (=> b!1150543 (= res!765346 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!25260))))

(declare-fun b!1150544 () Bool)

(declare-fun res!765348 () Bool)

(assert (=> b!1150544 (=> (not res!765348) (not e!654444))))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1150544 (= res!765348 (validMask!0 mask!1564))))

(declare-fun mapIsEmpty!45128 () Bool)

(declare-fun mapRes!45128 () Bool)

(assert (=> mapIsEmpty!45128 mapRes!45128))

(declare-fun res!765340 () Bool)

(assert (=> start!98770 (=> (not res!765340) (not e!654444))))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> start!98770 (= res!765340 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!36455 _keys!1208))))))

(assert (=> start!98770 e!654444))

(declare-fun tp_is_empty!28869 () Bool)

(assert (=> start!98770 tp_is_empty!28869))

(declare-fun array_inv!27390 (array!74542) Bool)

(assert (=> start!98770 (array_inv!27390 _keys!1208)))

(assert (=> start!98770 true))

(assert (=> start!98770 tp!85728))

(declare-datatypes ((V!43619 0))(
  ( (V!43620 (val!14491 Int)) )
))
(declare-datatypes ((ValueCell!13725 0))(
  ( (ValueCellFull!13725 (v!17129 V!43619)) (EmptyCell!13725) )
))
(declare-datatypes ((array!74544 0))(
  ( (array!74545 (arr!35919 (Array (_ BitVec 32) ValueCell!13725)) (size!36456 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!74544)

(declare-fun e!654433 () Bool)

(declare-fun array_inv!27391 (array!74544) Bool)

(assert (=> start!98770 (and (array_inv!27391 _values!996) e!654433)))

(declare-fun b!1150545 () Bool)

(declare-fun e!654437 () Unit!37756)

(declare-fun lt!514882 () Unit!37756)

(assert (=> b!1150545 (= e!654437 lt!514882)))

(declare-fun call!53615 () Unit!37756)

(assert (=> b!1150545 (= lt!514882 call!53615)))

(declare-fun call!53610 () Bool)

(assert (=> b!1150545 call!53610))

(declare-fun b!1150546 () Bool)

(declare-fun e!654441 () Bool)

(assert (=> b!1150546 (= e!654441 tp_is_empty!28869)))

(declare-fun zeroValue!944 () V!43619)

(declare-fun bm!53606 () Bool)

(declare-fun c!113858 () Bool)

(declare-fun c!113860 () Bool)

(declare-datatypes ((tuple2!18472 0))(
  ( (tuple2!18473 (_1!9246 (_ BitVec 64)) (_2!9246 V!43619)) )
))
(declare-datatypes ((List!25264 0))(
  ( (Nil!25261) (Cons!25260 (h!26469 tuple2!18472) (t!36602 List!25264)) )
))
(declare-datatypes ((ListLongMap!16453 0))(
  ( (ListLongMap!16454 (toList!8242 List!25264)) )
))
(declare-fun lt!514879 () ListLongMap!16453)

(declare-fun k0!934 () (_ BitVec 64))

(declare-fun call!53612 () Unit!37756)

(declare-fun lt!514887 () ListLongMap!16453)

(declare-fun minValue!944 () V!43619)

(declare-fun addStillContains!879 (ListLongMap!16453 (_ BitVec 64) V!43619 (_ BitVec 64)) Unit!37756)

(assert (=> bm!53606 (= call!53612 (addStillContains!879 (ite c!113858 lt!514879 lt!514887) (ite c!113858 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!113860 #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000)) (ite c!113858 minValue!944 (ite c!113860 zeroValue!944 minValue!944)) k0!934))))

(declare-fun b!1150547 () Bool)

(declare-fun e!654443 () Bool)

(declare-fun call!53616 () ListLongMap!16453)

(declare-fun call!53614 () ListLongMap!16453)

(assert (=> b!1150547 (= e!654443 (= call!53616 call!53614))))

(declare-fun b!1150548 () Bool)

(declare-fun e!654440 () Bool)

(assert (=> b!1150548 (= e!654440 true)))

(declare-fun e!654438 () Bool)

(assert (=> b!1150548 e!654438))

(declare-fun res!765342 () Bool)

(assert (=> b!1150548 (=> (not res!765342) (not e!654438))))

(declare-fun lt!514873 () ListLongMap!16453)

(assert (=> b!1150548 (= res!765342 (= lt!514873 lt!514887))))

(declare-fun lt!514880 () ListLongMap!16453)

(declare-fun -!1328 (ListLongMap!16453 (_ BitVec 64)) ListLongMap!16453)

(assert (=> b!1150548 (= lt!514873 (-!1328 lt!514880 k0!934))))

(declare-fun lt!514868 () V!43619)

(declare-fun +!3579 (ListLongMap!16453 tuple2!18472) ListLongMap!16453)

(assert (=> b!1150548 (= (-!1328 (+!3579 lt!514887 (tuple2!18473 (select (arr!35918 _keys!1208) from!1455) lt!514868)) (select (arr!35918 _keys!1208) from!1455)) lt!514887)))

(declare-fun lt!514885 () Unit!37756)

(declare-fun addThenRemoveForNewKeyIsSame!177 (ListLongMap!16453 (_ BitVec 64) V!43619) Unit!37756)

(assert (=> b!1150548 (= lt!514885 (addThenRemoveForNewKeyIsSame!177 lt!514887 (select (arr!35918 _keys!1208) from!1455) lt!514868))))

(declare-fun lt!514866 () V!43619)

(declare-fun get!18311 (ValueCell!13725 V!43619) V!43619)

(assert (=> b!1150548 (= lt!514868 (get!18311 (select (arr!35919 _values!996) from!1455) lt!514866))))

(declare-fun lt!514877 () Unit!37756)

(assert (=> b!1150548 (= lt!514877 e!654446)))

(declare-fun c!113862 () Bool)

(declare-fun contains!6737 (ListLongMap!16453 (_ BitVec 64)) Bool)

(assert (=> b!1150548 (= c!113862 (contains!6737 lt!514887 k0!934))))

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-fun getCurrentListMapNoExtraKeys!4683 (array!74542 array!74544 (_ BitVec 32) (_ BitVec 32) V!43619 V!43619 (_ BitVec 32) Int) ListLongMap!16453)

(assert (=> b!1150548 (= lt!514887 (getCurrentListMapNoExtraKeys!4683 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1150549 () Bool)

(declare-fun e!654439 () Bool)

(declare-fun e!654442 () Bool)

(assert (=> b!1150549 (= e!654439 e!654442)))

(declare-fun res!765345 () Bool)

(assert (=> b!1150549 (=> res!765345 e!654442)))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1150549 (= res!765345 (not (= from!1455 i!673)))))

(declare-fun lt!514883 () ListLongMap!16453)

(declare-fun lt!514867 () array!74542)

(declare-fun lt!514875 () array!74544)

(assert (=> b!1150549 (= lt!514883 (getCurrentListMapNoExtraKeys!4683 lt!514867 lt!514875 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(assert (=> b!1150549 (= lt!514875 (array!74545 (store (arr!35919 _values!996) i!673 (ValueCellFull!13725 lt!514866)) (size!36456 _values!996)))))

(declare-fun dynLambda!2712 (Int (_ BitVec 64)) V!43619)

(assert (=> b!1150549 (= lt!514866 (dynLambda!2712 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1150549 (= lt!514880 (getCurrentListMapNoExtraKeys!4683 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1150550 () Bool)

(assert (=> b!1150550 (= e!654442 e!654440)))

(declare-fun res!765349 () Bool)

(assert (=> b!1150550 (=> res!765349 e!654440)))

(assert (=> b!1150550 (= res!765349 (not (= (select (arr!35918 _keys!1208) from!1455) k0!934)))))

(assert (=> b!1150550 e!654443))

(declare-fun c!113859 () Bool)

(assert (=> b!1150550 (= c!113859 (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673))))

(declare-fun lt!514878 () Unit!37756)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!567 (array!74542 array!74544 (_ BitVec 32) (_ BitVec 32) V!43619 V!43619 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!37756)

(assert (=> b!1150550 (= lt!514878 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!567 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1150551 () Bool)

(declare-fun e!654447 () Bool)

(assert (=> b!1150551 (= e!654433 (and e!654447 mapRes!45128))))

(declare-fun condMapEmpty!45128 () Bool)

(declare-fun mapDefault!45128 () ValueCell!13725)

(assert (=> b!1150551 (= condMapEmpty!45128 (= (arr!35919 _values!996) ((as const (Array (_ BitVec 32) ValueCell!13725)) mapDefault!45128)))))

(declare-fun bm!53607 () Bool)

(declare-fun call!53613 () ListLongMap!16453)

(assert (=> bm!53607 (= call!53613 (+!3579 (ite c!113858 lt!514879 lt!514887) (ite c!113858 (tuple2!18473 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944) (ite c!113860 (tuple2!18473 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!18473 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944)))))))

(declare-fun b!1150552 () Bool)

(declare-fun res!765351 () Bool)

(assert (=> b!1150552 (=> (not res!765351) (not e!654444))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1150552 (= res!765351 (validKeyInArray!0 k0!934))))

(declare-fun bm!53608 () Bool)

(assert (=> bm!53608 (= call!53616 (getCurrentListMapNoExtraKeys!4683 lt!514867 lt!514875 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun mapNonEmpty!45128 () Bool)

(declare-fun tp!85729 () Bool)

(assert (=> mapNonEmpty!45128 (= mapRes!45128 (and tp!85729 e!654441))))

(declare-fun mapKey!45128 () (_ BitVec 32))

(declare-fun mapValue!45128 () ValueCell!13725)

(declare-fun mapRest!45128 () (Array (_ BitVec 32) ValueCell!13725))

(assert (=> mapNonEmpty!45128 (= (arr!35919 _values!996) (store mapRest!45128 mapKey!45128 mapValue!45128))))

(declare-fun b!1150553 () Bool)

(declare-fun res!765344 () Bool)

(assert (=> b!1150553 (=> (not res!765344) (not e!654444))))

(assert (=> b!1150553 (= res!765344 (and (= (size!36456 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!36455 _keys!1208) (size!36456 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1150554 () Bool)

(declare-fun e!654445 () Unit!37756)

(assert (=> b!1150554 (= e!654437 e!654445)))

(declare-fun c!113857 () Bool)

(declare-fun lt!514881 () Bool)

(assert (=> b!1150554 (= c!113857 (and (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!514881))))

(declare-fun bm!53609 () Bool)

(assert (=> bm!53609 (= call!53615 call!53612)))

(declare-fun b!1150555 () Bool)

(declare-fun res!765350 () Bool)

(declare-fun e!654431 () Bool)

(assert (=> b!1150555 (=> (not res!765350) (not e!654431))))

(assert (=> b!1150555 (= res!765350 (arrayNoDuplicates!0 lt!514867 #b00000000000000000000000000000000 Nil!25260))))

(declare-fun b!1150556 () Bool)

(declare-fun res!765347 () Bool)

(assert (=> b!1150556 (=> (not res!765347) (not e!654444))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!74542 (_ BitVec 32)) Bool)

(assert (=> b!1150556 (= res!765347 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1150557 () Bool)

(assert (=> b!1150557 (= e!654438 (= lt!514873 (getCurrentListMapNoExtraKeys!4683 lt!514867 lt!514875 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004)))))

(declare-fun b!1150558 () Bool)

(assert (=> b!1150558 call!53610))

(declare-fun lt!514871 () Unit!37756)

(assert (=> b!1150558 (= lt!514871 call!53615)))

(assert (=> b!1150558 (= e!654445 lt!514871)))

(declare-fun b!1150559 () Bool)

(declare-fun e!654436 () Bool)

(declare-fun arrayContainsKey!0 (array!74542 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1150559 (= e!654436 (arrayContainsKey!0 _keys!1208 k0!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun b!1150560 () Bool)

(declare-fun Unit!37759 () Unit!37756)

(assert (=> b!1150560 (= e!654445 Unit!37759)))

(declare-fun b!1150561 () Bool)

(declare-fun e!654432 () Bool)

(assert (=> b!1150561 (= e!654432 (ite (= k0!934 #b0000000000000000000000000000000000000000000000000000000000000000) (not lt!514881) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun bm!53610 () Bool)

(declare-fun call!53609 () ListLongMap!16453)

(assert (=> bm!53610 (= call!53609 call!53613)))

(declare-fun b!1150562 () Bool)

(declare-fun res!765341 () Bool)

(assert (=> b!1150562 (=> (not res!765341) (not e!654444))))

(assert (=> b!1150562 (= res!765341 (= (select (arr!35918 _keys!1208) i!673) k0!934))))

(declare-fun b!1150563 () Bool)

(assert (=> b!1150563 (= e!654431 (not e!654439))))

(declare-fun res!765353 () Bool)

(assert (=> b!1150563 (=> res!765353 e!654439)))

(assert (=> b!1150563 (= res!765353 (bvsgt from!1455 i!673))))

(assert (=> b!1150563 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-fun lt!514876 () Unit!37756)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!74542 (_ BitVec 64) (_ BitVec 32)) Unit!37756)

(assert (=> b!1150563 (= lt!514876 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun bm!53611 () Bool)

(assert (=> bm!53611 (= call!53614 (getCurrentListMapNoExtraKeys!4683 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun bm!53612 () Bool)

(declare-fun call!53611 () Bool)

(assert (=> bm!53612 (= call!53611 (contains!6737 (ite c!113858 lt!514879 call!53609) k0!934))))

(declare-fun b!1150564 () Bool)

(assert (=> b!1150564 (= e!654432 (arrayContainsKey!0 _keys!1208 k0!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun b!1150565 () Bool)

(declare-fun Unit!37760 () Unit!37756)

(assert (=> b!1150565 (= e!654446 Unit!37760)))

(assert (=> b!1150565 (= lt!514881 (= (bvand extraKeys!923 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(assert (=> b!1150565 (= c!113858 (and (not lt!514881) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun lt!514870 () Unit!37756)

(declare-fun e!654435 () Unit!37756)

(assert (=> b!1150565 (= lt!514870 e!654435)))

(declare-fun lt!514884 () Unit!37756)

(declare-fun lemmaListMapContainsThenArrayContainsFrom!463 (array!74542 array!74544 (_ BitVec 32) (_ BitVec 32) V!43619 V!43619 (_ BitVec 64) (_ BitVec 32) Int) Unit!37756)

(assert (=> b!1150565 (= lt!514884 (lemmaListMapContainsThenArrayContainsFrom!463 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun c!113861 () Bool)

(assert (=> b!1150565 (= c!113861 (and (not (= k0!934 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!934 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun res!765352 () Bool)

(assert (=> b!1150565 (= res!765352 e!654432)))

(assert (=> b!1150565 (=> (not res!765352) (not e!654436))))

(assert (=> b!1150565 e!654436))

(declare-fun lt!514872 () Unit!37756)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!74542 (_ BitVec 32) (_ BitVec 32)) Unit!37756)

(assert (=> b!1150565 (= lt!514872 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1208 #b00000000000000000000000000000000 from!1455))))

(assert (=> b!1150565 (arrayNoDuplicates!0 _keys!1208 from!1455 Nil!25260)))

(declare-fun lt!514869 () Unit!37756)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!74542 (_ BitVec 64) (_ BitVec 32) List!25263) Unit!37756)

(assert (=> b!1150565 (= lt!514869 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!1208 k0!934 from!1455 Nil!25260))))

(assert (=> b!1150565 false))

(declare-fun b!1150566 () Bool)

(assert (=> b!1150566 (= e!654444 e!654431)))

(declare-fun res!765339 () Bool)

(assert (=> b!1150566 (=> (not res!765339) (not e!654431))))

(assert (=> b!1150566 (= res!765339 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!514867 mask!1564))))

(assert (=> b!1150566 (= lt!514867 (array!74543 (store (arr!35918 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!36455 _keys!1208)))))

(declare-fun b!1150567 () Bool)

(assert (=> b!1150567 (= c!113860 (and (not lt!514881) (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(assert (=> b!1150567 (= e!654435 e!654437)))

(declare-fun b!1150568 () Bool)

(declare-fun res!765343 () Bool)

(assert (=> b!1150568 (=> (not res!765343) (not e!654444))))

(assert (=> b!1150568 (= res!765343 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!36455 _keys!1208))))))

(declare-fun bm!53613 () Bool)

(assert (=> bm!53613 (= call!53610 call!53611)))

(declare-fun b!1150569 () Bool)

(assert (=> b!1150569 (= e!654447 tp_is_empty!28869)))

(declare-fun b!1150570 () Bool)

(assert (=> b!1150570 (= e!654443 (= call!53616 (-!1328 call!53614 k0!934)))))

(declare-fun b!1150571 () Bool)

(assert (=> b!1150571 (contains!6737 call!53613 k0!934)))

(declare-fun lt!514886 () Unit!37756)

(assert (=> b!1150571 (= lt!514886 call!53612)))

(assert (=> b!1150571 call!53611))

(assert (=> b!1150571 (= lt!514879 (+!3579 lt!514887 (tuple2!18473 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944)))))

(declare-fun lt!514874 () Unit!37756)

(assert (=> b!1150571 (= lt!514874 (addStillContains!879 lt!514887 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944 k0!934))))

(assert (=> b!1150571 (= e!654435 lt!514886)))

(assert (= (and start!98770 res!765340) b!1150544))

(assert (= (and b!1150544 res!765348) b!1150553))

(assert (= (and b!1150553 res!765344) b!1150556))

(assert (= (and b!1150556 res!765347) b!1150543))

(assert (= (and b!1150543 res!765346) b!1150568))

(assert (= (and b!1150568 res!765343) b!1150552))

(assert (= (and b!1150552 res!765351) b!1150562))

(assert (= (and b!1150562 res!765341) b!1150566))

(assert (= (and b!1150566 res!765339) b!1150555))

(assert (= (and b!1150555 res!765350) b!1150563))

(assert (= (and b!1150563 (not res!765353)) b!1150549))

(assert (= (and b!1150549 (not res!765345)) b!1150550))

(assert (= (and b!1150550 c!113859) b!1150570))

(assert (= (and b!1150550 (not c!113859)) b!1150547))

(assert (= (or b!1150570 b!1150547) bm!53608))

(assert (= (or b!1150570 b!1150547) bm!53611))

(assert (= (and b!1150550 (not res!765349)) b!1150548))

(assert (= (and b!1150548 c!113862) b!1150565))

(assert (= (and b!1150548 (not c!113862)) b!1150542))

(assert (= (and b!1150565 c!113858) b!1150571))

(assert (= (and b!1150565 (not c!113858)) b!1150567))

(assert (= (and b!1150567 c!113860) b!1150545))

(assert (= (and b!1150567 (not c!113860)) b!1150554))

(assert (= (and b!1150554 c!113857) b!1150558))

(assert (= (and b!1150554 (not c!113857)) b!1150560))

(assert (= (or b!1150545 b!1150558) bm!53609))

(assert (= (or b!1150545 b!1150558) bm!53610))

(assert (= (or b!1150545 b!1150558) bm!53613))

(assert (= (or b!1150571 bm!53613) bm!53612))

(assert (= (or b!1150571 bm!53609) bm!53606))

(assert (= (or b!1150571 bm!53610) bm!53607))

(assert (= (and b!1150565 c!113861) b!1150564))

(assert (= (and b!1150565 (not c!113861)) b!1150561))

(assert (= (and b!1150565 res!765352) b!1150559))

(assert (= (and b!1150548 res!765342) b!1150557))

(assert (= (and b!1150551 condMapEmpty!45128) mapIsEmpty!45128))

(assert (= (and b!1150551 (not condMapEmpty!45128)) mapNonEmpty!45128))

(get-info :version)

(assert (= (and mapNonEmpty!45128 ((_ is ValueCellFull!13725) mapValue!45128)) b!1150546))

(assert (= (and b!1150551 ((_ is ValueCellFull!13725) mapDefault!45128)) b!1150569))

(assert (= start!98770 b!1150551))

(declare-fun b_lambda!19463 () Bool)

(assert (=> (not b_lambda!19463) (not b!1150549)))

(declare-fun t!36600 () Bool)

(declare-fun tb!9159 () Bool)

(assert (=> (and start!98770 (= defaultEntry!1004 defaultEntry!1004) t!36600) tb!9159))

(declare-fun result!18875 () Bool)

(assert (=> tb!9159 (= result!18875 tp_is_empty!28869)))

(assert (=> b!1150549 t!36600))

(declare-fun b_and!39543 () Bool)

(assert (= b_and!39541 (and (=> t!36600 result!18875) b_and!39543)))

(declare-fun m!1060815 () Bool)

(assert (=> bm!53612 m!1060815))

(declare-fun m!1060817 () Bool)

(assert (=> bm!53606 m!1060817))

(declare-fun m!1060819 () Bool)

(assert (=> b!1150565 m!1060819))

(declare-fun m!1060821 () Bool)

(assert (=> b!1150565 m!1060821))

(declare-fun m!1060823 () Bool)

(assert (=> b!1150565 m!1060823))

(declare-fun m!1060825 () Bool)

(assert (=> b!1150565 m!1060825))

(declare-fun m!1060827 () Bool)

(assert (=> b!1150562 m!1060827))

(declare-fun m!1060829 () Bool)

(assert (=> b!1150564 m!1060829))

(declare-fun m!1060831 () Bool)

(assert (=> b!1150571 m!1060831))

(declare-fun m!1060833 () Bool)

(assert (=> b!1150571 m!1060833))

(declare-fun m!1060835 () Bool)

(assert (=> b!1150571 m!1060835))

(declare-fun m!1060837 () Bool)

(assert (=> mapNonEmpty!45128 m!1060837))

(declare-fun m!1060839 () Bool)

(assert (=> b!1150548 m!1060839))

(declare-fun m!1060841 () Bool)

(assert (=> b!1150548 m!1060841))

(declare-fun m!1060843 () Bool)

(assert (=> b!1150548 m!1060843))

(declare-fun m!1060845 () Bool)

(assert (=> b!1150548 m!1060845))

(declare-fun m!1060847 () Bool)

(assert (=> b!1150548 m!1060847))

(declare-fun m!1060849 () Bool)

(assert (=> b!1150548 m!1060849))

(declare-fun m!1060851 () Bool)

(assert (=> b!1150548 m!1060851))

(assert (=> b!1150548 m!1060841))

(declare-fun m!1060853 () Bool)

(assert (=> b!1150548 m!1060853))

(assert (=> b!1150548 m!1060849))

(assert (=> b!1150548 m!1060843))

(assert (=> b!1150548 m!1060849))

(declare-fun m!1060855 () Bool)

(assert (=> b!1150548 m!1060855))

(declare-fun m!1060857 () Bool)

(assert (=> b!1150544 m!1060857))

(declare-fun m!1060859 () Bool)

(assert (=> b!1150555 m!1060859))

(declare-fun m!1060861 () Bool)

(assert (=> start!98770 m!1060861))

(declare-fun m!1060863 () Bool)

(assert (=> start!98770 m!1060863))

(declare-fun m!1060865 () Bool)

(assert (=> b!1150557 m!1060865))

(declare-fun m!1060867 () Bool)

(assert (=> b!1150549 m!1060867))

(declare-fun m!1060869 () Bool)

(assert (=> b!1150549 m!1060869))

(declare-fun m!1060871 () Bool)

(assert (=> b!1150549 m!1060871))

(declare-fun m!1060873 () Bool)

(assert (=> b!1150549 m!1060873))

(assert (=> bm!53608 m!1060865))

(declare-fun m!1060875 () Bool)

(assert (=> b!1150556 m!1060875))

(declare-fun m!1060877 () Bool)

(assert (=> b!1150552 m!1060877))

(declare-fun m!1060879 () Bool)

(assert (=> bm!53607 m!1060879))

(declare-fun m!1060881 () Bool)

(assert (=> b!1150563 m!1060881))

(declare-fun m!1060883 () Bool)

(assert (=> b!1150563 m!1060883))

(declare-fun m!1060885 () Bool)

(assert (=> b!1150543 m!1060885))

(assert (=> b!1150559 m!1060829))

(assert (=> bm!53611 m!1060839))

(declare-fun m!1060887 () Bool)

(assert (=> b!1150570 m!1060887))

(assert (=> b!1150550 m!1060849))

(declare-fun m!1060889 () Bool)

(assert (=> b!1150550 m!1060889))

(declare-fun m!1060891 () Bool)

(assert (=> b!1150566 m!1060891))

(declare-fun m!1060893 () Bool)

(assert (=> b!1150566 m!1060893))

(check-sat (not bm!53606) (not b!1150549) (not b!1150570) (not b!1150564) (not mapNonEmpty!45128) (not b!1150566) (not b!1150565) (not b!1150557) (not start!98770) (not b!1150559) (not bm!53612) b_and!39543 (not b!1150571) (not b!1150550) (not bm!53607) (not bm!53611) (not b_next!24339) (not b!1150548) (not b!1150555) (not bm!53608) tp_is_empty!28869 (not b!1150556) (not b!1150563) (not b_lambda!19463) (not b!1150552) (not b!1150544) (not b!1150543))
(check-sat b_and!39543 (not b_next!24339))
