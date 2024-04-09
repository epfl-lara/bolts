; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!99004 () Bool)

(assert start!99004)

(declare-fun b_free!24573 () Bool)

(declare-fun b_next!24573 () Bool)

(assert (=> start!99004 (= b_free!24573 (not b_next!24573))))

(declare-fun tp!86431 () Bool)

(declare-fun b_and!40009 () Bool)

(assert (=> start!99004 (= tp!86431 b_and!40009)))

(declare-fun b!1161306 () Bool)

(declare-fun e!660409 () Bool)

(declare-fun tp_is_empty!29103 () Bool)

(assert (=> b!1161306 (= e!660409 tp_is_empty!29103)))

(declare-datatypes ((V!43931 0))(
  ( (V!43932 (val!14608 Int)) )
))
(declare-datatypes ((tuple2!18686 0))(
  ( (tuple2!18687 (_1!9353 (_ BitVec 64)) (_2!9353 V!43931)) )
))
(declare-datatypes ((List!25464 0))(
  ( (Nil!25461) (Cons!25460 (h!26669 tuple2!18686) (t!37036 List!25464)) )
))
(declare-datatypes ((ListLongMap!16667 0))(
  ( (ListLongMap!16668 (toList!8349 List!25464)) )
))
(declare-fun lt!522589 () ListLongMap!16667)

(declare-fun call!56422 () Bool)

(declare-fun k0!934 () (_ BitVec 64))

(declare-fun call!56424 () ListLongMap!16667)

(declare-fun c!115966 () Bool)

(declare-fun bm!56414 () Bool)

(declare-fun contains!6829 (ListLongMap!16667 (_ BitVec 64)) Bool)

(assert (=> bm!56414 (= call!56422 (contains!6829 (ite c!115966 lt!522589 call!56424) k0!934))))

(declare-fun b!1161307 () Bool)

(declare-fun e!660414 () Bool)

(declare-fun e!660408 () Bool)

(assert (=> b!1161307 (= e!660414 (not e!660408))))

(declare-fun res!770618 () Bool)

(assert (=> b!1161307 (=> res!770618 e!660408)))

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1161307 (= res!770618 (bvsgt from!1455 i!673))))

(declare-datatypes ((array!74996 0))(
  ( (array!74997 (arr!36145 (Array (_ BitVec 32) (_ BitVec 64))) (size!36682 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!74996)

(declare-fun arrayContainsKey!0 (array!74996 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1161307 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!38198 0))(
  ( (Unit!38199) )
))
(declare-fun lt!522601 () Unit!38198)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!74996 (_ BitVec 64) (_ BitVec 32)) Unit!38198)

(assert (=> b!1161307 (= lt!522601 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1161308 () Bool)

(declare-fun e!660413 () Bool)

(assert (=> b!1161308 (= e!660413 (arrayContainsKey!0 _keys!1208 k0!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun bm!56415 () Bool)

(declare-fun call!56417 () Bool)

(assert (=> bm!56415 (= call!56417 call!56422)))

(declare-fun c!115963 () Bool)

(declare-fun bm!56416 () Bool)

(declare-fun minValue!944 () V!43931)

(declare-fun lt!522600 () ListLongMap!16667)

(declare-fun call!56420 () Unit!38198)

(declare-fun zeroValue!944 () V!43931)

(declare-fun addStillContains!971 (ListLongMap!16667 (_ BitVec 64) V!43931 (_ BitVec 64)) Unit!38198)

(assert (=> bm!56416 (= call!56420 (addStillContains!971 lt!522600 (ite (or c!115966 c!115963) #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000) (ite (or c!115966 c!115963) zeroValue!944 minValue!944) k0!934))))

(declare-fun bm!56417 () Bool)

(declare-fun call!56418 () ListLongMap!16667)

(assert (=> bm!56417 (= call!56424 call!56418)))

(declare-fun b!1161309 () Bool)

(declare-fun res!770609 () Bool)

(declare-fun e!660401 () Bool)

(assert (=> b!1161309 (=> (not res!770609) (not e!660401))))

(assert (=> b!1161309 (= res!770609 (= (select (arr!36145 _keys!1208) i!673) k0!934))))

(declare-fun b!1161310 () Bool)

(declare-fun e!660410 () Unit!38198)

(declare-fun e!660412 () Unit!38198)

(assert (=> b!1161310 (= e!660410 e!660412)))

(declare-fun c!115967 () Bool)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun lt!522609 () Bool)

(assert (=> b!1161310 (= c!115967 (and (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!522609))))

(declare-fun b!1161311 () Bool)

(assert (=> b!1161311 call!56417))

(declare-fun lt!522592 () Unit!38198)

(declare-fun call!56421 () Unit!38198)

(assert (=> b!1161311 (= lt!522592 call!56421)))

(assert (=> b!1161311 (= e!660412 lt!522592)))

(declare-fun b!1161312 () Bool)

(declare-fun e!660402 () Unit!38198)

(declare-fun Unit!38200 () Unit!38198)

(assert (=> b!1161312 (= e!660402 Unit!38200)))

(declare-fun b!1161314 () Bool)

(declare-fun e!660405 () Bool)

(assert (=> b!1161314 (= e!660405 true)))

(declare-fun e!660398 () Bool)

(assert (=> b!1161314 e!660398))

(declare-fun res!770612 () Bool)

(assert (=> b!1161314 (=> (not res!770612) (not e!660398))))

(declare-fun lt!522604 () ListLongMap!16667)

(assert (=> b!1161314 (= res!770612 (= lt!522604 lt!522600))))

(declare-fun lt!522602 () ListLongMap!16667)

(declare-fun -!1419 (ListLongMap!16667 (_ BitVec 64)) ListLongMap!16667)

(assert (=> b!1161314 (= lt!522604 (-!1419 lt!522602 k0!934))))

(declare-fun lt!522595 () V!43931)

(declare-fun +!3673 (ListLongMap!16667 tuple2!18686) ListLongMap!16667)

(assert (=> b!1161314 (= (-!1419 (+!3673 lt!522600 (tuple2!18687 (select (arr!36145 _keys!1208) from!1455) lt!522595)) (select (arr!36145 _keys!1208) from!1455)) lt!522600)))

(declare-fun lt!522599 () Unit!38198)

(declare-fun addThenRemoveForNewKeyIsSame!256 (ListLongMap!16667 (_ BitVec 64) V!43931) Unit!38198)

(assert (=> b!1161314 (= lt!522599 (addThenRemoveForNewKeyIsSame!256 lt!522600 (select (arr!36145 _keys!1208) from!1455) lt!522595))))

(declare-datatypes ((ValueCell!13842 0))(
  ( (ValueCellFull!13842 (v!17246 V!43931)) (EmptyCell!13842) )
))
(declare-datatypes ((array!74998 0))(
  ( (array!74999 (arr!36146 (Array (_ BitVec 32) ValueCell!13842)) (size!36683 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!74998)

(declare-fun lt!522590 () V!43931)

(declare-fun get!18468 (ValueCell!13842 V!43931) V!43931)

(assert (=> b!1161314 (= lt!522595 (get!18468 (select (arr!36146 _values!996) from!1455) lt!522590))))

(declare-fun lt!522598 () Unit!38198)

(assert (=> b!1161314 (= lt!522598 e!660402)))

(declare-fun c!115968 () Bool)

(assert (=> b!1161314 (= c!115968 (contains!6829 lt!522600 k0!934))))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-fun getCurrentListMapNoExtraKeys!4784 (array!74996 array!74998 (_ BitVec 32) (_ BitVec 32) V!43931 V!43931 (_ BitVec 32) Int) ListLongMap!16667)

(assert (=> b!1161314 (= lt!522600 (getCurrentListMapNoExtraKeys!4784 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1161315 () Bool)

(declare-fun e!660399 () Bool)

(declare-fun mapRes!45479 () Bool)

(assert (=> b!1161315 (= e!660399 (and e!660409 mapRes!45479))))

(declare-fun condMapEmpty!45479 () Bool)

(declare-fun mapDefault!45479 () ValueCell!13842)

(assert (=> b!1161315 (= condMapEmpty!45479 (= (arr!36146 _values!996) ((as const (Array (_ BitVec 32) ValueCell!13842)) mapDefault!45479)))))

(declare-fun b!1161316 () Bool)

(declare-fun e!660406 () Bool)

(assert (=> b!1161316 (= e!660406 tp_is_empty!29103)))

(declare-fun b!1161317 () Bool)

(declare-fun e!660407 () Bool)

(assert (=> b!1161317 (= e!660407 e!660405)))

(declare-fun res!770610 () Bool)

(assert (=> b!1161317 (=> res!770610 e!660405)))

(assert (=> b!1161317 (= res!770610 (not (= (select (arr!36145 _keys!1208) from!1455) k0!934)))))

(declare-fun e!660400 () Bool)

(assert (=> b!1161317 e!660400))

(declare-fun c!115964 () Bool)

(assert (=> b!1161317 (= c!115964 (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673))))

(declare-fun lt!522606 () Unit!38198)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!643 (array!74996 array!74998 (_ BitVec 32) (_ BitVec 32) V!43931 V!43931 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!38198)

(assert (=> b!1161317 (= lt!522606 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!643 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun bm!56418 () Bool)

(declare-fun call!56419 () ListLongMap!16667)

(assert (=> bm!56418 (= call!56419 (getCurrentListMapNoExtraKeys!4784 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1161318 () Bool)

(assert (=> b!1161318 (= c!115963 (and (not lt!522609) (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun e!660403 () Unit!38198)

(assert (=> b!1161318 (= e!660403 e!660410)))

(declare-fun mapIsEmpty!45479 () Bool)

(assert (=> mapIsEmpty!45479 mapRes!45479))

(declare-fun b!1161319 () Bool)

(declare-fun res!770604 () Bool)

(assert (=> b!1161319 (=> (not res!770604) (not e!660414))))

(declare-fun lt!522605 () array!74996)

(declare-datatypes ((List!25465 0))(
  ( (Nil!25462) (Cons!25461 (h!26670 (_ BitVec 64)) (t!37037 List!25465)) )
))
(declare-fun arrayNoDuplicates!0 (array!74996 (_ BitVec 32) List!25465) Bool)

(assert (=> b!1161319 (= res!770604 (arrayNoDuplicates!0 lt!522605 #b00000000000000000000000000000000 Nil!25462))))

(declare-fun b!1161320 () Bool)

(declare-fun Unit!38201 () Unit!38198)

(assert (=> b!1161320 (= e!660412 Unit!38201)))

(declare-fun b!1161321 () Bool)

(declare-fun res!770605 () Bool)

(assert (=> b!1161321 (=> (not res!770605) (not e!660401))))

(assert (=> b!1161321 (= res!770605 (and (= (size!36683 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!36682 _keys!1208) (size!36683 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1161322 () Bool)

(assert (=> b!1161322 (= e!660401 e!660414)))

(declare-fun res!770615 () Bool)

(assert (=> b!1161322 (=> (not res!770615) (not e!660414))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!74996 (_ BitVec 32)) Bool)

(assert (=> b!1161322 (= res!770615 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!522605 mask!1564))))

(assert (=> b!1161322 (= lt!522605 (array!74997 (store (arr!36145 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!36682 _keys!1208)))))

(declare-fun lt!522594 () array!74998)

(declare-fun b!1161323 () Bool)

(assert (=> b!1161323 (= e!660398 (= lt!522604 (getCurrentListMapNoExtraKeys!4784 lt!522605 lt!522594 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004)))))

(declare-fun mapNonEmpty!45479 () Bool)

(declare-fun tp!86430 () Bool)

(assert (=> mapNonEmpty!45479 (= mapRes!45479 (and tp!86430 e!660406))))

(declare-fun mapRest!45479 () (Array (_ BitVec 32) ValueCell!13842))

(declare-fun mapValue!45479 () ValueCell!13842)

(declare-fun mapKey!45479 () (_ BitVec 32))

(assert (=> mapNonEmpty!45479 (= (arr!36146 _values!996) (store mapRest!45479 mapKey!45479 mapValue!45479))))

(declare-fun e!660404 () Bool)

(declare-fun b!1161324 () Bool)

(assert (=> b!1161324 (= e!660404 (ite (= k0!934 #b0000000000000000000000000000000000000000000000000000000000000000) (not lt!522609) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!1161325 () Bool)

(declare-fun Unit!38202 () Unit!38198)

(assert (=> b!1161325 (= e!660402 Unit!38202)))

(assert (=> b!1161325 (= lt!522609 (= (bvand extraKeys!923 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(assert (=> b!1161325 (= c!115966 (and (not lt!522609) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun lt!522608 () Unit!38198)

(assert (=> b!1161325 (= lt!522608 e!660403)))

(declare-fun lt!522597 () Unit!38198)

(declare-fun lemmaListMapContainsThenArrayContainsFrom!542 (array!74996 array!74998 (_ BitVec 32) (_ BitVec 32) V!43931 V!43931 (_ BitVec 64) (_ BitVec 32) Int) Unit!38198)

(assert (=> b!1161325 (= lt!522597 (lemmaListMapContainsThenArrayContainsFrom!542 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun c!115965 () Bool)

(assert (=> b!1161325 (= c!115965 (and (not (= k0!934 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!934 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun res!770611 () Bool)

(assert (=> b!1161325 (= res!770611 e!660404)))

(assert (=> b!1161325 (=> (not res!770611) (not e!660413))))

(assert (=> b!1161325 e!660413))

(declare-fun lt!522596 () Unit!38198)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!74996 (_ BitVec 32) (_ BitVec 32)) Unit!38198)

(assert (=> b!1161325 (= lt!522596 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1208 #b00000000000000000000000000000000 from!1455))))

(assert (=> b!1161325 (arrayNoDuplicates!0 _keys!1208 from!1455 Nil!25462)))

(declare-fun lt!522588 () Unit!38198)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!74996 (_ BitVec 64) (_ BitVec 32) List!25465) Unit!38198)

(assert (=> b!1161325 (= lt!522588 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!1208 k0!934 from!1455 Nil!25462))))

(assert (=> b!1161325 false))

(declare-fun b!1161326 () Bool)

(declare-fun res!770607 () Bool)

(assert (=> b!1161326 (=> (not res!770607) (not e!660401))))

(assert (=> b!1161326 (= res!770607 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!25462))))

(declare-fun b!1161327 () Bool)

(declare-fun lt!522603 () Unit!38198)

(assert (=> b!1161327 (= e!660410 lt!522603)))

(assert (=> b!1161327 (= lt!522603 call!56421)))

(assert (=> b!1161327 call!56417))

(declare-fun call!56423 () ListLongMap!16667)

(declare-fun b!1161328 () Bool)

(assert (=> b!1161328 (= e!660400 (= call!56423 (-!1419 call!56419 k0!934)))))

(declare-fun b!1161329 () Bool)

(declare-fun res!770613 () Bool)

(assert (=> b!1161329 (=> (not res!770613) (not e!660401))))

(assert (=> b!1161329 (= res!770613 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1161330 () Bool)

(declare-fun res!770616 () Bool)

(assert (=> b!1161330 (=> (not res!770616) (not e!660401))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1161330 (= res!770616 (validMask!0 mask!1564))))

(declare-fun b!1161331 () Bool)

(assert (=> b!1161331 (= e!660404 (arrayContainsKey!0 _keys!1208 k0!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun bm!56419 () Bool)

(assert (=> bm!56419 (= call!56423 (getCurrentListMapNoExtraKeys!4784 lt!522605 lt!522594 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1161332 () Bool)

(declare-fun res!770608 () Bool)

(assert (=> b!1161332 (=> (not res!770608) (not e!660401))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1161332 (= res!770608 (validKeyInArray!0 k0!934))))

(declare-fun b!1161333 () Bool)

(assert (=> b!1161333 (= e!660408 e!660407)))

(declare-fun res!770617 () Bool)

(assert (=> b!1161333 (=> res!770617 e!660407)))

(assert (=> b!1161333 (= res!770617 (not (= from!1455 i!673)))))

(declare-fun lt!522593 () ListLongMap!16667)

(assert (=> b!1161333 (= lt!522593 (getCurrentListMapNoExtraKeys!4784 lt!522605 lt!522594 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(assert (=> b!1161333 (= lt!522594 (array!74999 (store (arr!36146 _values!996) i!673 (ValueCellFull!13842 lt!522590)) (size!36683 _values!996)))))

(declare-fun dynLambda!2785 (Int (_ BitVec 64)) V!43931)

(assert (=> b!1161333 (= lt!522590 (dynLambda!2785 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1161333 (= lt!522602 (getCurrentListMapNoExtraKeys!4784 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1161334 () Bool)

(declare-fun res!770614 () Bool)

(assert (=> b!1161334 (=> (not res!770614) (not e!660401))))

(assert (=> b!1161334 (= res!770614 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!36682 _keys!1208))))))

(declare-fun b!1161335 () Bool)

(assert (=> b!1161335 (contains!6829 (+!3673 lt!522589 (tuple2!18687 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944)) k0!934)))

(declare-fun lt!522607 () Unit!38198)

(assert (=> b!1161335 (= lt!522607 (addStillContains!971 lt!522589 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944 k0!934))))

(assert (=> b!1161335 call!56422))

(assert (=> b!1161335 (= lt!522589 call!56418)))

(declare-fun lt!522591 () Unit!38198)

(assert (=> b!1161335 (= lt!522591 call!56420)))

(assert (=> b!1161335 (= e!660403 lt!522607)))

(declare-fun bm!56420 () Bool)

(assert (=> bm!56420 (= call!56421 call!56420)))

(declare-fun bm!56421 () Bool)

(assert (=> bm!56421 (= call!56418 (+!3673 lt!522600 (ite (or c!115966 c!115963) (tuple2!18687 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!18687 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944))))))

(declare-fun b!1161313 () Bool)

(assert (=> b!1161313 (= e!660400 (= call!56423 call!56419))))

(declare-fun res!770606 () Bool)

(assert (=> start!99004 (=> (not res!770606) (not e!660401))))

(assert (=> start!99004 (= res!770606 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!36682 _keys!1208))))))

(assert (=> start!99004 e!660401))

(assert (=> start!99004 tp_is_empty!29103))

(declare-fun array_inv!27528 (array!74996) Bool)

(assert (=> start!99004 (array_inv!27528 _keys!1208)))

(assert (=> start!99004 true))

(assert (=> start!99004 tp!86431))

(declare-fun array_inv!27529 (array!74998) Bool)

(assert (=> start!99004 (and (array_inv!27529 _values!996) e!660399)))

(assert (= (and start!99004 res!770606) b!1161330))

(assert (= (and b!1161330 res!770616) b!1161321))

(assert (= (and b!1161321 res!770605) b!1161329))

(assert (= (and b!1161329 res!770613) b!1161326))

(assert (= (and b!1161326 res!770607) b!1161334))

(assert (= (and b!1161334 res!770614) b!1161332))

(assert (= (and b!1161332 res!770608) b!1161309))

(assert (= (and b!1161309 res!770609) b!1161322))

(assert (= (and b!1161322 res!770615) b!1161319))

(assert (= (and b!1161319 res!770604) b!1161307))

(assert (= (and b!1161307 (not res!770618)) b!1161333))

(assert (= (and b!1161333 (not res!770617)) b!1161317))

(assert (= (and b!1161317 c!115964) b!1161328))

(assert (= (and b!1161317 (not c!115964)) b!1161313))

(assert (= (or b!1161328 b!1161313) bm!56419))

(assert (= (or b!1161328 b!1161313) bm!56418))

(assert (= (and b!1161317 (not res!770610)) b!1161314))

(assert (= (and b!1161314 c!115968) b!1161325))

(assert (= (and b!1161314 (not c!115968)) b!1161312))

(assert (= (and b!1161325 c!115966) b!1161335))

(assert (= (and b!1161325 (not c!115966)) b!1161318))

(assert (= (and b!1161318 c!115963) b!1161327))

(assert (= (and b!1161318 (not c!115963)) b!1161310))

(assert (= (and b!1161310 c!115967) b!1161311))

(assert (= (and b!1161310 (not c!115967)) b!1161320))

(assert (= (or b!1161327 b!1161311) bm!56420))

(assert (= (or b!1161327 b!1161311) bm!56417))

(assert (= (or b!1161327 b!1161311) bm!56415))

(assert (= (or b!1161335 bm!56415) bm!56414))

(assert (= (or b!1161335 bm!56420) bm!56416))

(assert (= (or b!1161335 bm!56417) bm!56421))

(assert (= (and b!1161325 c!115965) b!1161331))

(assert (= (and b!1161325 (not c!115965)) b!1161324))

(assert (= (and b!1161325 res!770611) b!1161308))

(assert (= (and b!1161314 res!770612) b!1161323))

(assert (= (and b!1161315 condMapEmpty!45479) mapIsEmpty!45479))

(assert (= (and b!1161315 (not condMapEmpty!45479)) mapNonEmpty!45479))

(get-info :version)

(assert (= (and mapNonEmpty!45479 ((_ is ValueCellFull!13842) mapValue!45479)) b!1161316))

(assert (= (and b!1161315 ((_ is ValueCellFull!13842) mapDefault!45479)) b!1161306))

(assert (= start!99004 b!1161315))

(declare-fun b_lambda!19697 () Bool)

(assert (=> (not b_lambda!19697) (not b!1161333)))

(declare-fun t!37035 () Bool)

(declare-fun tb!9393 () Bool)

(assert (=> (and start!99004 (= defaultEntry!1004 defaultEntry!1004) t!37035) tb!9393))

(declare-fun result!19343 () Bool)

(assert (=> tb!9393 (= result!19343 tp_is_empty!29103)))

(assert (=> b!1161333 t!37035))

(declare-fun b_and!40011 () Bool)

(assert (= b_and!40009 (and (=> t!37035 result!19343) b_and!40011)))

(declare-fun m!1070187 () Bool)

(assert (=> bm!56414 m!1070187))

(declare-fun m!1070189 () Bool)

(assert (=> b!1161319 m!1070189))

(declare-fun m!1070191 () Bool)

(assert (=> b!1161307 m!1070191))

(declare-fun m!1070193 () Bool)

(assert (=> b!1161307 m!1070193))

(declare-fun m!1070195 () Bool)

(assert (=> b!1161317 m!1070195))

(declare-fun m!1070197 () Bool)

(assert (=> b!1161317 m!1070197))

(declare-fun m!1070199 () Bool)

(assert (=> b!1161325 m!1070199))

(declare-fun m!1070201 () Bool)

(assert (=> b!1161325 m!1070201))

(declare-fun m!1070203 () Bool)

(assert (=> b!1161325 m!1070203))

(declare-fun m!1070205 () Bool)

(assert (=> b!1161325 m!1070205))

(declare-fun m!1070207 () Bool)

(assert (=> b!1161323 m!1070207))

(declare-fun m!1070209 () Bool)

(assert (=> b!1161308 m!1070209))

(declare-fun m!1070211 () Bool)

(assert (=> b!1161309 m!1070211))

(declare-fun m!1070213 () Bool)

(assert (=> start!99004 m!1070213))

(declare-fun m!1070215 () Bool)

(assert (=> start!99004 m!1070215))

(declare-fun m!1070217 () Bool)

(assert (=> b!1161330 m!1070217))

(declare-fun m!1070219 () Bool)

(assert (=> b!1161314 m!1070219))

(declare-fun m!1070221 () Bool)

(assert (=> b!1161314 m!1070221))

(declare-fun m!1070223 () Bool)

(assert (=> b!1161314 m!1070223))

(assert (=> b!1161314 m!1070221))

(declare-fun m!1070225 () Bool)

(assert (=> b!1161314 m!1070225))

(declare-fun m!1070227 () Bool)

(assert (=> b!1161314 m!1070227))

(declare-fun m!1070229 () Bool)

(assert (=> b!1161314 m!1070229))

(assert (=> b!1161314 m!1070195))

(declare-fun m!1070231 () Bool)

(assert (=> b!1161314 m!1070231))

(assert (=> b!1161314 m!1070225))

(assert (=> b!1161314 m!1070195))

(declare-fun m!1070233 () Bool)

(assert (=> b!1161314 m!1070233))

(assert (=> b!1161314 m!1070195))

(declare-fun m!1070235 () Bool)

(assert (=> b!1161322 m!1070235))

(declare-fun m!1070237 () Bool)

(assert (=> b!1161322 m!1070237))

(declare-fun m!1070239 () Bool)

(assert (=> bm!56421 m!1070239))

(declare-fun m!1070241 () Bool)

(assert (=> b!1161329 m!1070241))

(declare-fun m!1070243 () Bool)

(assert (=> b!1161332 m!1070243))

(declare-fun m!1070245 () Bool)

(assert (=> mapNonEmpty!45479 m!1070245))

(declare-fun m!1070247 () Bool)

(assert (=> b!1161326 m!1070247))

(assert (=> b!1161331 m!1070209))

(declare-fun m!1070249 () Bool)

(assert (=> b!1161333 m!1070249))

(declare-fun m!1070251 () Bool)

(assert (=> b!1161333 m!1070251))

(declare-fun m!1070253 () Bool)

(assert (=> b!1161333 m!1070253))

(declare-fun m!1070255 () Bool)

(assert (=> b!1161333 m!1070255))

(assert (=> bm!56419 m!1070207))

(declare-fun m!1070257 () Bool)

(assert (=> b!1161335 m!1070257))

(assert (=> b!1161335 m!1070257))

(declare-fun m!1070259 () Bool)

(assert (=> b!1161335 m!1070259))

(declare-fun m!1070261 () Bool)

(assert (=> b!1161335 m!1070261))

(declare-fun m!1070263 () Bool)

(assert (=> b!1161328 m!1070263))

(declare-fun m!1070265 () Bool)

(assert (=> bm!56416 m!1070265))

(assert (=> bm!56418 m!1070219))

(check-sat (not b!1161314) (not b!1161323) (not b!1161331) (not b_lambda!19697) (not b!1161317) (not b!1161329) (not b!1161308) (not b!1161307) (not b!1161326) (not b!1161332) (not mapNonEmpty!45479) (not b_next!24573) (not b!1161335) (not b!1161328) (not bm!56419) (not bm!56418) tp_is_empty!29103 (not bm!56416) (not b!1161333) (not bm!56421) (not bm!56414) (not b!1161319) (not start!99004) (not b!1161322) (not b!1161325) b_and!40011 (not b!1161330))
(check-sat b_and!40011 (not b_next!24573))
