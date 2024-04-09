; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!98596 () Bool)

(assert start!98596)

(declare-fun b_free!24165 () Bool)

(declare-fun b_next!24165 () Bool)

(assert (=> start!98596 (= b_free!24165 (not b_next!24165))))

(declare-fun tp!85206 () Bool)

(declare-fun b_and!39193 () Bool)

(assert (=> start!98596 (= tp!85206 b_and!39193)))

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun e!650049 () Bool)

(declare-fun lt!509355 () Bool)

(declare-fun k0!934 () (_ BitVec 64))

(declare-fun b!1142587 () Bool)

(assert (=> b!1142587 (= e!650049 (ite (= k0!934 #b0000000000000000000000000000000000000000000000000000000000000000) (not lt!509355) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!1142588 () Bool)

(declare-fun e!650057 () Bool)

(declare-fun e!650053 () Bool)

(assert (=> b!1142588 (= e!650057 e!650053)))

(declare-fun res!761474 () Bool)

(assert (=> b!1142588 (=> (not res!761474) (not e!650053))))

(declare-datatypes ((array!74200 0))(
  ( (array!74201 (arr!35747 (Array (_ BitVec 32) (_ BitVec 64))) (size!36284 (_ BitVec 32))) )
))
(declare-fun lt!509339 () array!74200)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!74200 (_ BitVec 32)) Bool)

(assert (=> b!1142588 (= res!761474 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!509339 mask!1564))))

(declare-fun _keys!1208 () array!74200)

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1142588 (= lt!509339 (array!74201 (store (arr!35747 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!36284 _keys!1208)))))

(declare-datatypes ((V!43387 0))(
  ( (V!43388 (val!14404 Int)) )
))
(declare-fun zeroValue!944 () V!43387)

(declare-fun bm!51518 () Bool)

(declare-fun defaultEntry!1004 () Int)

(declare-fun from!1455 () (_ BitVec 32))

(declare-datatypes ((tuple2!18314 0))(
  ( (tuple2!18315 (_1!9167 (_ BitVec 64)) (_2!9167 V!43387)) )
))
(declare-datatypes ((List!25113 0))(
  ( (Nil!25110) (Cons!25109 (h!26318 tuple2!18314) (t!36277 List!25113)) )
))
(declare-datatypes ((ListLongMap!16295 0))(
  ( (ListLongMap!16296 (toList!8163 List!25113)) )
))
(declare-fun call!51528 () ListLongMap!16295)

(declare-datatypes ((ValueCell!13638 0))(
  ( (ValueCellFull!13638 (v!17042 V!43387)) (EmptyCell!13638) )
))
(declare-datatypes ((array!74202 0))(
  ( (array!74203 (arr!35748 (Array (_ BitVec 32) ValueCell!13638)) (size!36285 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!74202)

(declare-fun minValue!944 () V!43387)

(declare-fun getCurrentListMapNoExtraKeys!4606 (array!74200 array!74202 (_ BitVec 32) (_ BitVec 32) V!43387 V!43387 (_ BitVec 32) Int) ListLongMap!16295)

(assert (=> bm!51518 (= call!51528 (getCurrentListMapNoExtraKeys!4606 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1142589 () Bool)

(declare-fun res!761481 () Bool)

(assert (=> b!1142589 (=> (not res!761481) (not e!650057))))

(assert (=> b!1142589 (= res!761481 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!36284 _keys!1208))))))

(declare-fun c!112291 () Bool)

(declare-fun lt!509335 () ListLongMap!16295)

(declare-fun call!51526 () ListLongMap!16295)

(declare-fun bm!51519 () Bool)

(declare-fun c!112292 () Bool)

(declare-fun lt!509350 () ListLongMap!16295)

(declare-fun +!3507 (ListLongMap!16295 tuple2!18314) ListLongMap!16295)

(assert (=> bm!51519 (= call!51526 (+!3507 (ite c!112291 lt!509335 lt!509350) (ite c!112291 (tuple2!18315 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944) (ite c!112292 (tuple2!18315 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!18315 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944)))))))

(declare-fun b!1142590 () Bool)

(declare-fun e!650044 () Bool)

(declare-fun e!650048 () Bool)

(assert (=> b!1142590 (= e!650044 e!650048)))

(declare-fun res!761479 () Bool)

(assert (=> b!1142590 (=> res!761479 e!650048)))

(assert (=> b!1142590 (= res!761479 (not (= (select (arr!35747 _keys!1208) from!1455) k0!934)))))

(declare-fun e!650058 () Bool)

(assert (=> b!1142590 e!650058))

(declare-fun c!112295 () Bool)

(assert (=> b!1142590 (= c!112295 (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673))))

(declare-datatypes ((Unit!37409 0))(
  ( (Unit!37410) )
))
(declare-fun lt!509343 () Unit!37409)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!512 (array!74200 array!74202 (_ BitVec 32) (_ BitVec 32) V!43387 V!43387 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!37409)

(assert (=> b!1142590 (= lt!509343 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!512 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1142591 () Bool)

(declare-fun e!650056 () Unit!37409)

(declare-fun lt!509341 () Unit!37409)

(assert (=> b!1142591 (= e!650056 lt!509341)))

(declare-fun call!51521 () Unit!37409)

(assert (=> b!1142591 (= lt!509341 call!51521)))

(declare-fun call!51524 () Bool)

(assert (=> b!1142591 call!51524))

(declare-fun b!1142592 () Bool)

(declare-fun res!761484 () Bool)

(assert (=> b!1142592 (=> (not res!761484) (not e!650057))))

(assert (=> b!1142592 (= res!761484 (= (select (arr!35747 _keys!1208) i!673) k0!934))))

(declare-fun b!1142593 () Bool)

(declare-fun e!650043 () Unit!37409)

(declare-fun Unit!37411 () Unit!37409)

(assert (=> b!1142593 (= e!650043 Unit!37411)))

(declare-fun bm!51520 () Bool)

(declare-fun call!51522 () Unit!37409)

(assert (=> bm!51520 (= call!51521 call!51522)))

(declare-fun b!1142594 () Bool)

(declare-fun res!761477 () Bool)

(assert (=> b!1142594 (=> (not res!761477) (not e!650057))))

(assert (=> b!1142594 (= res!761477 (and (= (size!36285 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!36284 _keys!1208) (size!36285 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun bm!51521 () Bool)

(declare-fun call!51527 () Bool)

(assert (=> bm!51521 (= call!51524 call!51527)))

(declare-fun mapNonEmpty!44867 () Bool)

(declare-fun mapRes!44867 () Bool)

(declare-fun tp!85207 () Bool)

(declare-fun e!650054 () Bool)

(assert (=> mapNonEmpty!44867 (= mapRes!44867 (and tp!85207 e!650054))))

(declare-fun mapKey!44867 () (_ BitVec 32))

(declare-fun mapRest!44867 () (Array (_ BitVec 32) ValueCell!13638))

(declare-fun mapValue!44867 () ValueCell!13638)

(assert (=> mapNonEmpty!44867 (= (arr!35748 _values!996) (store mapRest!44867 mapKey!44867 mapValue!44867))))

(declare-fun lt!509336 () array!74202)

(declare-fun bm!51522 () Bool)

(declare-fun call!51523 () ListLongMap!16295)

(assert (=> bm!51522 (= call!51523 (getCurrentListMapNoExtraKeys!4606 lt!509339 lt!509336 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1142595 () Bool)

(declare-fun res!761475 () Bool)

(assert (=> b!1142595 (=> (not res!761475) (not e!650057))))

(declare-datatypes ((List!25114 0))(
  ( (Nil!25111) (Cons!25110 (h!26319 (_ BitVec 64)) (t!36278 List!25114)) )
))
(declare-fun arrayNoDuplicates!0 (array!74200 (_ BitVec 32) List!25114) Bool)

(assert (=> b!1142595 (= res!761475 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!25111))))

(declare-fun bm!51523 () Bool)

(declare-fun call!51525 () ListLongMap!16295)

(assert (=> bm!51523 (= call!51525 call!51526)))

(declare-fun b!1142596 () Bool)

(declare-fun e!650046 () Bool)

(declare-fun e!650050 () Bool)

(assert (=> b!1142596 (= e!650046 (and e!650050 mapRes!44867))))

(declare-fun condMapEmpty!44867 () Bool)

(declare-fun mapDefault!44867 () ValueCell!13638)

(assert (=> b!1142596 (= condMapEmpty!44867 (= (arr!35748 _values!996) ((as const (Array (_ BitVec 32) ValueCell!13638)) mapDefault!44867)))))

(declare-fun mapIsEmpty!44867 () Bool)

(assert (=> mapIsEmpty!44867 mapRes!44867))

(declare-fun b!1142597 () Bool)

(declare-fun tp_is_empty!28695 () Bool)

(assert (=> b!1142597 (= e!650054 tp_is_empty!28695)))

(declare-fun b!1142598 () Bool)

(declare-fun res!761476 () Bool)

(assert (=> b!1142598 (=> (not res!761476) (not e!650057))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1142598 (= res!761476 (validKeyInArray!0 k0!934))))

(declare-fun b!1142599 () Bool)

(declare-fun e!650051 () Unit!37409)

(assert (=> b!1142599 (= e!650056 e!650051)))

(declare-fun c!112294 () Bool)

(assert (=> b!1142599 (= c!112294 (and (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!509355))))

(declare-fun b!1142600 () Bool)

(assert (=> b!1142600 (= e!650048 true)))

(declare-fun lt!509346 () V!43387)

(declare-fun -!1257 (ListLongMap!16295 (_ BitVec 64)) ListLongMap!16295)

(assert (=> b!1142600 (= (-!1257 (+!3507 lt!509350 (tuple2!18315 (select (arr!35747 _keys!1208) from!1455) lt!509346)) (select (arr!35747 _keys!1208) from!1455)) lt!509350)))

(declare-fun lt!509347 () Unit!37409)

(declare-fun addThenRemoveForNewKeyIsSame!112 (ListLongMap!16295 (_ BitVec 64) V!43387) Unit!37409)

(assert (=> b!1142600 (= lt!509347 (addThenRemoveForNewKeyIsSame!112 lt!509350 (select (arr!35747 _keys!1208) from!1455) lt!509346))))

(declare-fun lt!509338 () V!43387)

(declare-fun get!18188 (ValueCell!13638 V!43387) V!43387)

(assert (=> b!1142600 (= lt!509346 (get!18188 (select (arr!35748 _values!996) from!1455) lt!509338))))

(declare-fun lt!509344 () Unit!37409)

(assert (=> b!1142600 (= lt!509344 e!650043)))

(declare-fun c!112293 () Bool)

(declare-fun contains!6666 (ListLongMap!16295 (_ BitVec 64)) Bool)

(assert (=> b!1142600 (= c!112293 (contains!6666 lt!509350 k0!934))))

(assert (=> b!1142600 (= lt!509350 (getCurrentListMapNoExtraKeys!4606 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun bm!51524 () Bool)

(assert (=> bm!51524 (= call!51527 (contains!6666 (ite c!112291 lt!509335 call!51525) k0!934))))

(declare-fun b!1142601 () Bool)

(assert (=> b!1142601 (contains!6666 call!51526 k0!934)))

(declare-fun lt!509348 () Unit!37409)

(assert (=> b!1142601 (= lt!509348 call!51522)))

(assert (=> b!1142601 call!51527))

(assert (=> b!1142601 (= lt!509335 (+!3507 lt!509350 (tuple2!18315 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944)))))

(declare-fun lt!509349 () Unit!37409)

(declare-fun addStillContains!805 (ListLongMap!16295 (_ BitVec 64) V!43387 (_ BitVec 64)) Unit!37409)

(assert (=> b!1142601 (= lt!509349 (addStillContains!805 lt!509350 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944 k0!934))))

(declare-fun e!650055 () Unit!37409)

(assert (=> b!1142601 (= e!650055 lt!509348)))

(declare-fun b!1142602 () Bool)

(assert (=> b!1142602 (= e!650050 tp_is_empty!28695)))

(declare-fun b!1142603 () Bool)

(declare-fun e!650052 () Bool)

(declare-fun arrayContainsKey!0 (array!74200 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1142603 (= e!650052 (arrayContainsKey!0 _keys!1208 k0!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun b!1142604 () Bool)

(declare-fun res!761485 () Bool)

(assert (=> b!1142604 (=> (not res!761485) (not e!650057))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1142604 (= res!761485 (validMask!0 mask!1564))))

(declare-fun b!1142605 () Bool)

(declare-fun Unit!37412 () Unit!37409)

(assert (=> b!1142605 (= e!650051 Unit!37412)))

(declare-fun b!1142606 () Bool)

(declare-fun res!761486 () Bool)

(assert (=> b!1142606 (=> (not res!761486) (not e!650057))))

(assert (=> b!1142606 (= res!761486 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1142607 () Bool)

(assert (=> b!1142607 (= c!112292 (and (not lt!509355) (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(assert (=> b!1142607 (= e!650055 e!650056)))

(declare-fun b!1142608 () Bool)

(declare-fun res!761483 () Bool)

(assert (=> b!1142608 (=> (not res!761483) (not e!650053))))

(assert (=> b!1142608 (= res!761483 (arrayNoDuplicates!0 lt!509339 #b00000000000000000000000000000000 Nil!25111))))

(declare-fun b!1142609 () Bool)

(assert (=> b!1142609 call!51524))

(declare-fun lt!509351 () Unit!37409)

(assert (=> b!1142609 (= lt!509351 call!51521)))

(assert (=> b!1142609 (= e!650051 lt!509351)))

(declare-fun res!761480 () Bool)

(assert (=> start!98596 (=> (not res!761480) (not e!650057))))

(assert (=> start!98596 (= res!761480 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!36284 _keys!1208))))))

(assert (=> start!98596 e!650057))

(assert (=> start!98596 tp_is_empty!28695))

(declare-fun array_inv!27268 (array!74200) Bool)

(assert (=> start!98596 (array_inv!27268 _keys!1208)))

(assert (=> start!98596 true))

(assert (=> start!98596 tp!85206))

(declare-fun array_inv!27269 (array!74202) Bool)

(assert (=> start!98596 (and (array_inv!27269 _values!996) e!650046)))

(declare-fun b!1142610 () Bool)

(declare-fun Unit!37413 () Unit!37409)

(assert (=> b!1142610 (= e!650043 Unit!37413)))

(assert (=> b!1142610 (= lt!509355 (= (bvand extraKeys!923 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(assert (=> b!1142610 (= c!112291 (and (not lt!509355) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun lt!509337 () Unit!37409)

(assert (=> b!1142610 (= lt!509337 e!650055)))

(declare-fun lt!509352 () Unit!37409)

(declare-fun lemmaListMapContainsThenArrayContainsFrom!401 (array!74200 array!74202 (_ BitVec 32) (_ BitVec 32) V!43387 V!43387 (_ BitVec 64) (_ BitVec 32) Int) Unit!37409)

(assert (=> b!1142610 (= lt!509352 (lemmaListMapContainsThenArrayContainsFrom!401 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun c!112296 () Bool)

(assert (=> b!1142610 (= c!112296 (and (not (= k0!934 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!934 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun res!761482 () Bool)

(assert (=> b!1142610 (= res!761482 e!650049)))

(assert (=> b!1142610 (=> (not res!761482) (not e!650052))))

(assert (=> b!1142610 e!650052))

(declare-fun lt!509342 () Unit!37409)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!74200 (_ BitVec 32) (_ BitVec 32)) Unit!37409)

(assert (=> b!1142610 (= lt!509342 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1208 #b00000000000000000000000000000000 from!1455))))

(assert (=> b!1142610 (arrayNoDuplicates!0 _keys!1208 from!1455 Nil!25111)))

(declare-fun lt!509354 () Unit!37409)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!74200 (_ BitVec 64) (_ BitVec 32) List!25114) Unit!37409)

(assert (=> b!1142610 (= lt!509354 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!1208 k0!934 from!1455 Nil!25111))))

(assert (=> b!1142610 false))

(declare-fun b!1142611 () Bool)

(assert (=> b!1142611 (= e!650049 (arrayContainsKey!0 _keys!1208 k0!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun b!1142612 () Bool)

(assert (=> b!1142612 (= e!650058 (= call!51523 (-!1257 call!51528 k0!934)))))

(declare-fun b!1142613 () Bool)

(declare-fun e!650045 () Bool)

(assert (=> b!1142613 (= e!650045 e!650044)))

(declare-fun res!761478 () Bool)

(assert (=> b!1142613 (=> res!761478 e!650044)))

(assert (=> b!1142613 (= res!761478 (not (= from!1455 i!673)))))

(declare-fun lt!509345 () ListLongMap!16295)

(assert (=> b!1142613 (= lt!509345 (getCurrentListMapNoExtraKeys!4606 lt!509339 lt!509336 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(assert (=> b!1142613 (= lt!509336 (array!74203 (store (arr!35748 _values!996) i!673 (ValueCellFull!13638 lt!509338)) (size!36285 _values!996)))))

(declare-fun dynLambda!2655 (Int (_ BitVec 64)) V!43387)

(assert (=> b!1142613 (= lt!509338 (dynLambda!2655 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!509353 () ListLongMap!16295)

(assert (=> b!1142613 (= lt!509353 (getCurrentListMapNoExtraKeys!4606 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1142614 () Bool)

(assert (=> b!1142614 (= e!650053 (not e!650045))))

(declare-fun res!761473 () Bool)

(assert (=> b!1142614 (=> res!761473 e!650045)))

(assert (=> b!1142614 (= res!761473 (bvsgt from!1455 i!673))))

(assert (=> b!1142614 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-fun lt!509340 () Unit!37409)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!74200 (_ BitVec 64) (_ BitVec 32)) Unit!37409)

(assert (=> b!1142614 (= lt!509340 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1142615 () Bool)

(assert (=> b!1142615 (= e!650058 (= call!51523 call!51528))))

(declare-fun bm!51525 () Bool)

(assert (=> bm!51525 (= call!51522 (addStillContains!805 (ite c!112291 lt!509335 lt!509350) (ite c!112291 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!112292 #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000)) (ite c!112291 minValue!944 (ite c!112292 zeroValue!944 minValue!944)) k0!934))))

(assert (= (and start!98596 res!761480) b!1142604))

(assert (= (and b!1142604 res!761485) b!1142594))

(assert (= (and b!1142594 res!761477) b!1142606))

(assert (= (and b!1142606 res!761486) b!1142595))

(assert (= (and b!1142595 res!761475) b!1142589))

(assert (= (and b!1142589 res!761481) b!1142598))

(assert (= (and b!1142598 res!761476) b!1142592))

(assert (= (and b!1142592 res!761484) b!1142588))

(assert (= (and b!1142588 res!761474) b!1142608))

(assert (= (and b!1142608 res!761483) b!1142614))

(assert (= (and b!1142614 (not res!761473)) b!1142613))

(assert (= (and b!1142613 (not res!761478)) b!1142590))

(assert (= (and b!1142590 c!112295) b!1142612))

(assert (= (and b!1142590 (not c!112295)) b!1142615))

(assert (= (or b!1142612 b!1142615) bm!51522))

(assert (= (or b!1142612 b!1142615) bm!51518))

(assert (= (and b!1142590 (not res!761479)) b!1142600))

(assert (= (and b!1142600 c!112293) b!1142610))

(assert (= (and b!1142600 (not c!112293)) b!1142593))

(assert (= (and b!1142610 c!112291) b!1142601))

(assert (= (and b!1142610 (not c!112291)) b!1142607))

(assert (= (and b!1142607 c!112292) b!1142591))

(assert (= (and b!1142607 (not c!112292)) b!1142599))

(assert (= (and b!1142599 c!112294) b!1142609))

(assert (= (and b!1142599 (not c!112294)) b!1142605))

(assert (= (or b!1142591 b!1142609) bm!51520))

(assert (= (or b!1142591 b!1142609) bm!51523))

(assert (= (or b!1142591 b!1142609) bm!51521))

(assert (= (or b!1142601 bm!51521) bm!51524))

(assert (= (or b!1142601 bm!51520) bm!51525))

(assert (= (or b!1142601 bm!51523) bm!51519))

(assert (= (and b!1142610 c!112296) b!1142611))

(assert (= (and b!1142610 (not c!112296)) b!1142587))

(assert (= (and b!1142610 res!761482) b!1142603))

(assert (= (and b!1142596 condMapEmpty!44867) mapIsEmpty!44867))

(assert (= (and b!1142596 (not condMapEmpty!44867)) mapNonEmpty!44867))

(get-info :version)

(assert (= (and mapNonEmpty!44867 ((_ is ValueCellFull!13638) mapValue!44867)) b!1142597))

(assert (= (and b!1142596 ((_ is ValueCellFull!13638) mapDefault!44867)) b!1142602))

(assert (= start!98596 b!1142596))

(declare-fun b_lambda!19289 () Bool)

(assert (=> (not b_lambda!19289) (not b!1142613)))

(declare-fun t!36276 () Bool)

(declare-fun tb!8985 () Bool)

(assert (=> (and start!98596 (= defaultEntry!1004 defaultEntry!1004) t!36276) tb!8985))

(declare-fun result!18527 () Bool)

(assert (=> tb!8985 (= result!18527 tp_is_empty!28695)))

(assert (=> b!1142613 t!36276))

(declare-fun b_and!39195 () Bool)

(assert (= b_and!39193 (and (=> t!36276 result!18527) b_and!39195)))

(declare-fun m!1053881 () Bool)

(assert (=> b!1142590 m!1053881))

(declare-fun m!1053883 () Bool)

(assert (=> b!1142590 m!1053883))

(declare-fun m!1053885 () Bool)

(assert (=> b!1142613 m!1053885))

(declare-fun m!1053887 () Bool)

(assert (=> b!1142613 m!1053887))

(declare-fun m!1053889 () Bool)

(assert (=> b!1142613 m!1053889))

(declare-fun m!1053891 () Bool)

(assert (=> b!1142613 m!1053891))

(declare-fun m!1053893 () Bool)

(assert (=> b!1142614 m!1053893))

(declare-fun m!1053895 () Bool)

(assert (=> b!1142614 m!1053895))

(declare-fun m!1053897 () Bool)

(assert (=> b!1142595 m!1053897))

(declare-fun m!1053899 () Bool)

(assert (=> bm!51522 m!1053899))

(declare-fun m!1053901 () Bool)

(assert (=> mapNonEmpty!44867 m!1053901))

(declare-fun m!1053903 () Bool)

(assert (=> b!1142604 m!1053903))

(declare-fun m!1053905 () Bool)

(assert (=> b!1142592 m!1053905))

(declare-fun m!1053907 () Bool)

(assert (=> b!1142603 m!1053907))

(declare-fun m!1053909 () Bool)

(assert (=> bm!51524 m!1053909))

(declare-fun m!1053911 () Bool)

(assert (=> bm!51519 m!1053911))

(declare-fun m!1053913 () Bool)

(assert (=> b!1142606 m!1053913))

(declare-fun m!1053915 () Bool)

(assert (=> bm!51525 m!1053915))

(assert (=> b!1142611 m!1053907))

(declare-fun m!1053917 () Bool)

(assert (=> b!1142608 m!1053917))

(declare-fun m!1053919 () Bool)

(assert (=> b!1142600 m!1053919))

(declare-fun m!1053921 () Bool)

(assert (=> b!1142600 m!1053921))

(assert (=> b!1142600 m!1053881))

(declare-fun m!1053923 () Bool)

(assert (=> b!1142600 m!1053923))

(declare-fun m!1053925 () Bool)

(assert (=> b!1142600 m!1053925))

(assert (=> b!1142600 m!1053881))

(declare-fun m!1053927 () Bool)

(assert (=> b!1142600 m!1053927))

(assert (=> b!1142600 m!1053925))

(declare-fun m!1053929 () Bool)

(assert (=> b!1142600 m!1053929))

(assert (=> b!1142600 m!1053881))

(assert (=> b!1142600 m!1053921))

(declare-fun m!1053931 () Bool)

(assert (=> b!1142600 m!1053931))

(declare-fun m!1053933 () Bool)

(assert (=> start!98596 m!1053933))

(declare-fun m!1053935 () Bool)

(assert (=> start!98596 m!1053935))

(declare-fun m!1053937 () Bool)

(assert (=> b!1142598 m!1053937))

(declare-fun m!1053939 () Bool)

(assert (=> b!1142610 m!1053939))

(declare-fun m!1053941 () Bool)

(assert (=> b!1142610 m!1053941))

(declare-fun m!1053943 () Bool)

(assert (=> b!1142610 m!1053943))

(declare-fun m!1053945 () Bool)

(assert (=> b!1142610 m!1053945))

(declare-fun m!1053947 () Bool)

(assert (=> b!1142612 m!1053947))

(declare-fun m!1053949 () Bool)

(assert (=> b!1142588 m!1053949))

(declare-fun m!1053951 () Bool)

(assert (=> b!1142588 m!1053951))

(declare-fun m!1053953 () Bool)

(assert (=> b!1142601 m!1053953))

(declare-fun m!1053955 () Bool)

(assert (=> b!1142601 m!1053955))

(declare-fun m!1053957 () Bool)

(assert (=> b!1142601 m!1053957))

(assert (=> bm!51518 m!1053919))

(check-sat (not b!1142595) (not b_next!24165) (not b!1142606) (not start!98596) (not b_lambda!19289) (not bm!51518) (not bm!51522) (not b!1142612) (not mapNonEmpty!44867) (not b!1142613) (not b!1142590) (not b!1142611) (not b!1142608) (not b!1142610) (not b!1142603) (not bm!51519) (not b!1142614) (not b!1142598) (not b!1142604) (not bm!51524) (not bm!51525) (not b!1142601) (not b!1142588) (not b!1142600) tp_is_empty!28695 b_and!39195)
(check-sat b_and!39195 (not b_next!24165))
