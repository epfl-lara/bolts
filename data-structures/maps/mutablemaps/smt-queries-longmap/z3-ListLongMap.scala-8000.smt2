; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!98878 () Bool)

(assert start!98878)

(declare-fun b_free!24447 () Bool)

(declare-fun b_next!24447 () Bool)

(assert (=> start!98878 (= b_free!24447 (not b_next!24447))))

(declare-fun tp!86053 () Bool)

(declare-fun b_and!39757 () Bool)

(assert (=> start!98878 (= tp!86053 b_and!39757)))

(declare-fun b!1155510 () Bool)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun k0!934 () (_ BitVec 64))

(declare-fun e!657198 () Bool)

(declare-fun lt!518441 () Bool)

(assert (=> b!1155510 (= e!657198 (ite (= k0!934 #b0000000000000000000000000000000000000000000000000000000000000000) (not lt!518441) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-datatypes ((V!43763 0))(
  ( (V!43764 (val!14545 Int)) )
))
(declare-datatypes ((tuple2!18568 0))(
  ( (tuple2!18569 (_1!9294 (_ BitVec 64)) (_2!9294 V!43763)) )
))
(declare-datatypes ((List!25351 0))(
  ( (Nil!25348) (Cons!25347 (h!26556 tuple2!18568) (t!36797 List!25351)) )
))
(declare-datatypes ((ListLongMap!16549 0))(
  ( (ListLongMap!16550 (toList!8290 List!25351)) )
))
(declare-fun call!54906 () ListLongMap!16549)

(declare-fun b!1155511 () Bool)

(declare-fun call!54907 () ListLongMap!16549)

(declare-fun e!657197 () Bool)

(declare-fun -!1367 (ListLongMap!16549 (_ BitVec 64)) ListLongMap!16549)

(assert (=> b!1155511 (= e!657197 (= call!54906 (-!1367 call!54907 k0!934)))))

(declare-fun b!1155512 () Bool)

(declare-fun e!657195 () Bool)

(declare-fun e!657196 () Bool)

(assert (=> b!1155512 (= e!657195 (not e!657196))))

(declare-fun res!767782 () Bool)

(assert (=> b!1155512 (=> res!767782 e!657196)))

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1155512 (= res!767782 (bvsgt from!1455 i!673))))

(declare-datatypes ((array!74750 0))(
  ( (array!74751 (arr!36022 (Array (_ BitVec 32) (_ BitVec 64))) (size!36559 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!74750)

(declare-fun arrayContainsKey!0 (array!74750 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1155512 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!37949 0))(
  ( (Unit!37950) )
))
(declare-fun lt!518442 () Unit!37949)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!74750 (_ BitVec 64) (_ BitVec 32)) Unit!37949)

(assert (=> b!1155512 (= lt!518442 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1155513 () Bool)

(declare-fun res!767781 () Bool)

(assert (=> b!1155513 (=> (not res!767781) (not e!657195))))

(declare-fun lt!518433 () array!74750)

(declare-datatypes ((List!25352 0))(
  ( (Nil!25349) (Cons!25348 (h!26557 (_ BitVec 64)) (t!36798 List!25352)) )
))
(declare-fun arrayNoDuplicates!0 (array!74750 (_ BitVec 32) List!25352) Bool)

(assert (=> b!1155513 (= res!767781 (arrayNoDuplicates!0 lt!518433 #b00000000000000000000000000000000 Nil!25349))))

(declare-fun b!1155514 () Bool)

(declare-fun res!767780 () Bool)

(declare-fun e!657187 () Bool)

(assert (=> b!1155514 (=> (not res!767780) (not e!657187))))

(declare-datatypes ((ValueCell!13779 0))(
  ( (ValueCellFull!13779 (v!17183 V!43763)) (EmptyCell!13779) )
))
(declare-datatypes ((array!74752 0))(
  ( (array!74753 (arr!36023 (Array (_ BitVec 32) ValueCell!13779)) (size!36560 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!74752)

(declare-fun mask!1564 () (_ BitVec 32))

(assert (=> b!1155514 (= res!767780 (and (= (size!36560 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!36559 _keys!1208) (size!36560 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun zeroValue!944 () V!43763)

(declare-fun defaultEntry!1004 () Int)

(declare-fun minValue!944 () V!43763)

(declare-fun bm!54902 () Bool)

(declare-fun getCurrentListMapNoExtraKeys!4729 (array!74750 array!74752 (_ BitVec 32) (_ BitVec 32) V!43763 V!43763 (_ BitVec 32) Int) ListLongMap!16549)

(assert (=> bm!54902 (= call!54907 (getCurrentListMapNoExtraKeys!4729 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1155515 () Bool)

(declare-fun res!767775 () Bool)

(assert (=> b!1155515 (=> (not res!767775) (not e!657187))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1155515 (= res!767775 (validMask!0 mask!1564))))

(declare-fun b!1155516 () Bool)

(declare-fun res!767779 () Bool)

(assert (=> b!1155516 (=> (not res!767779) (not e!657187))))

(assert (=> b!1155516 (= res!767779 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!25349))))

(declare-fun mapNonEmpty!45290 () Bool)

(declare-fun mapRes!45290 () Bool)

(declare-fun tp!86052 () Bool)

(declare-fun e!657200 () Bool)

(assert (=> mapNonEmpty!45290 (= mapRes!45290 (and tp!86052 e!657200))))

(declare-fun mapValue!45290 () ValueCell!13779)

(declare-fun mapKey!45290 () (_ BitVec 32))

(declare-fun mapRest!45290 () (Array (_ BitVec 32) ValueCell!13779))

(assert (=> mapNonEmpty!45290 (= (arr!36023 _values!996) (store mapRest!45290 mapKey!45290 mapValue!45290))))

(declare-fun b!1155517 () Bool)

(declare-fun e!657201 () Unit!37949)

(declare-fun Unit!37951 () Unit!37949)

(assert (=> b!1155517 (= e!657201 Unit!37951)))

(declare-fun bm!54903 () Bool)

(declare-fun call!54912 () Bool)

(declare-fun call!54908 () Bool)

(assert (=> bm!54903 (= call!54912 call!54908)))

(declare-fun bm!54904 () Bool)

(declare-fun call!54911 () ListLongMap!16549)

(declare-fun call!54905 () ListLongMap!16549)

(assert (=> bm!54904 (= call!54911 call!54905)))

(declare-fun c!114832 () Bool)

(declare-fun bm!54905 () Bool)

(declare-fun lt!518443 () ListLongMap!16549)

(declare-fun lt!518440 () ListLongMap!16549)

(declare-fun call!54909 () Unit!37949)

(declare-fun c!114833 () Bool)

(declare-fun addStillContains!918 (ListLongMap!16549 (_ BitVec 64) V!43763 (_ BitVec 64)) Unit!37949)

(assert (=> bm!54905 (= call!54909 (addStillContains!918 (ite c!114833 lt!518440 lt!518443) (ite c!114833 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!114832 #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000)) (ite c!114833 minValue!944 (ite c!114832 zeroValue!944 minValue!944)) k0!934))))

(declare-fun b!1155518 () Bool)

(declare-fun e!657192 () Unit!37949)

(declare-fun lt!518448 () Unit!37949)

(assert (=> b!1155518 (= e!657192 lt!518448)))

(declare-fun call!54910 () Unit!37949)

(assert (=> b!1155518 (= lt!518448 call!54910)))

(assert (=> b!1155518 call!54912))

(declare-fun b!1155519 () Bool)

(declare-fun e!657191 () Unit!37949)

(declare-fun Unit!37952 () Unit!37949)

(assert (=> b!1155519 (= e!657191 Unit!37952)))

(declare-fun bm!54906 () Bool)

(declare-fun contains!6777 (ListLongMap!16549 (_ BitVec 64)) Bool)

(assert (=> bm!54906 (= call!54908 (contains!6777 (ite c!114833 lt!518440 call!54911) k0!934))))

(declare-fun b!1155520 () Bool)

(assert (=> b!1155520 (= e!657197 (= call!54906 call!54907))))

(declare-fun mapIsEmpty!45290 () Bool)

(assert (=> mapIsEmpty!45290 mapRes!45290))

(declare-fun b!1155521 () Bool)

(declare-fun e!657189 () Bool)

(assert (=> b!1155521 (= e!657189 (arrayContainsKey!0 _keys!1208 k0!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun b!1155522 () Bool)

(declare-fun e!657188 () Bool)

(declare-fun e!657185 () Bool)

(assert (=> b!1155522 (= e!657188 e!657185)))

(declare-fun res!767771 () Bool)

(assert (=> b!1155522 (=> res!767771 e!657185)))

(assert (=> b!1155522 (= res!767771 (not (= (select (arr!36022 _keys!1208) from!1455) k0!934)))))

(assert (=> b!1155522 e!657197))

(declare-fun c!114830 () Bool)

(assert (=> b!1155522 (= c!114830 (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673))))

(declare-fun lt!518437 () Unit!37949)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!597 (array!74750 array!74752 (_ BitVec 32) (_ BitVec 32) V!43763 V!43763 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!37949)

(assert (=> b!1155522 (= lt!518437 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!597 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1155523 () Bool)

(assert (=> b!1155523 (= e!657185 true)))

(declare-fun e!657186 () Bool)

(assert (=> b!1155523 e!657186))

(declare-fun res!767778 () Bool)

(assert (=> b!1155523 (=> (not res!767778) (not e!657186))))

(declare-fun lt!518451 () ListLongMap!16549)

(assert (=> b!1155523 (= res!767778 (= lt!518451 lt!518443))))

(declare-fun lt!518430 () ListLongMap!16549)

(assert (=> b!1155523 (= lt!518451 (-!1367 lt!518430 k0!934))))

(declare-fun lt!518436 () V!43763)

(declare-fun +!3621 (ListLongMap!16549 tuple2!18568) ListLongMap!16549)

(assert (=> b!1155523 (= (-!1367 (+!3621 lt!518443 (tuple2!18569 (select (arr!36022 _keys!1208) from!1455) lt!518436)) (select (arr!36022 _keys!1208) from!1455)) lt!518443)))

(declare-fun lt!518450 () Unit!37949)

(declare-fun addThenRemoveForNewKeyIsSame!210 (ListLongMap!16549 (_ BitVec 64) V!43763) Unit!37949)

(assert (=> b!1155523 (= lt!518450 (addThenRemoveForNewKeyIsSame!210 lt!518443 (select (arr!36022 _keys!1208) from!1455) lt!518436))))

(declare-fun lt!518446 () V!43763)

(declare-fun get!18380 (ValueCell!13779 V!43763) V!43763)

(assert (=> b!1155523 (= lt!518436 (get!18380 (select (arr!36023 _values!996) from!1455) lt!518446))))

(declare-fun lt!518434 () Unit!37949)

(assert (=> b!1155523 (= lt!518434 e!657201)))

(declare-fun c!114829 () Bool)

(assert (=> b!1155523 (= c!114829 (contains!6777 lt!518443 k0!934))))

(assert (=> b!1155523 (= lt!518443 (getCurrentListMapNoExtraKeys!4729 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1155524 () Bool)

(declare-fun e!657194 () Bool)

(declare-fun e!657190 () Bool)

(assert (=> b!1155524 (= e!657194 (and e!657190 mapRes!45290))))

(declare-fun condMapEmpty!45290 () Bool)

(declare-fun mapDefault!45290 () ValueCell!13779)

(assert (=> b!1155524 (= condMapEmpty!45290 (= (arr!36023 _values!996) ((as const (Array (_ BitVec 32) ValueCell!13779)) mapDefault!45290)))))

(declare-fun b!1155525 () Bool)

(declare-fun res!767773 () Bool)

(assert (=> b!1155525 (=> (not res!767773) (not e!657187))))

(assert (=> b!1155525 (= res!767773 (= (select (arr!36022 _keys!1208) i!673) k0!934))))

(declare-fun bm!54907 () Bool)

(assert (=> bm!54907 (= call!54910 call!54909)))

(declare-fun b!1155526 () Bool)

(declare-fun tp_is_empty!28977 () Bool)

(assert (=> b!1155526 (= e!657190 tp_is_empty!28977)))

(declare-fun bm!54908 () Bool)

(declare-fun lt!518447 () array!74752)

(assert (=> bm!54908 (= call!54906 (getCurrentListMapNoExtraKeys!4729 lt!518433 lt!518447 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1155527 () Bool)

(assert (=> b!1155527 (= e!657200 tp_is_empty!28977)))

(declare-fun b!1155528 () Bool)

(assert (=> b!1155528 (= e!657187 e!657195)))

(declare-fun res!767774 () Bool)

(assert (=> b!1155528 (=> (not res!767774) (not e!657195))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!74750 (_ BitVec 32)) Bool)

(assert (=> b!1155528 (= res!767774 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!518433 mask!1564))))

(assert (=> b!1155528 (= lt!518433 (array!74751 (store (arr!36022 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!36559 _keys!1208)))))

(declare-fun res!767777 () Bool)

(assert (=> start!98878 (=> (not res!767777) (not e!657187))))

(assert (=> start!98878 (= res!767777 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!36559 _keys!1208))))))

(assert (=> start!98878 e!657187))

(assert (=> start!98878 tp_is_empty!28977))

(declare-fun array_inv!27446 (array!74750) Bool)

(assert (=> start!98878 (array_inv!27446 _keys!1208)))

(assert (=> start!98878 true))

(assert (=> start!98878 tp!86053))

(declare-fun array_inv!27447 (array!74752) Bool)

(assert (=> start!98878 (and (array_inv!27447 _values!996) e!657194)))

(declare-fun b!1155529 () Bool)

(assert (=> b!1155529 (= c!114832 (and (not lt!518441) (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun e!657193 () Unit!37949)

(assert (=> b!1155529 (= e!657193 e!657192)))

(declare-fun b!1155530 () Bool)

(assert (=> b!1155530 (= e!657186 (= lt!518451 (getCurrentListMapNoExtraKeys!4729 lt!518433 lt!518447 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004)))))

(declare-fun b!1155531 () Bool)

(declare-fun Unit!37953 () Unit!37949)

(assert (=> b!1155531 (= e!657201 Unit!37953)))

(assert (=> b!1155531 (= lt!518441 (= (bvand extraKeys!923 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(assert (=> b!1155531 (= c!114833 (and (not lt!518441) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun lt!518449 () Unit!37949)

(assert (=> b!1155531 (= lt!518449 e!657193)))

(declare-fun lt!518438 () Unit!37949)

(declare-fun lemmaListMapContainsThenArrayContainsFrom!497 (array!74750 array!74752 (_ BitVec 32) (_ BitVec 32) V!43763 V!43763 (_ BitVec 64) (_ BitVec 32) Int) Unit!37949)

(assert (=> b!1155531 (= lt!518438 (lemmaListMapContainsThenArrayContainsFrom!497 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun c!114834 () Bool)

(assert (=> b!1155531 (= c!114834 (and (not (= k0!934 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!934 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun res!767769 () Bool)

(assert (=> b!1155531 (= res!767769 e!657198)))

(assert (=> b!1155531 (=> (not res!767769) (not e!657189))))

(assert (=> b!1155531 e!657189))

(declare-fun lt!518435 () Unit!37949)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!74750 (_ BitVec 32) (_ BitVec 32)) Unit!37949)

(assert (=> b!1155531 (= lt!518435 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1208 #b00000000000000000000000000000000 from!1455))))

(assert (=> b!1155531 (arrayNoDuplicates!0 _keys!1208 from!1455 Nil!25349)))

(declare-fun lt!518444 () Unit!37949)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!74750 (_ BitVec 64) (_ BitVec 32) List!25352) Unit!37949)

(assert (=> b!1155531 (= lt!518444 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!1208 k0!934 from!1455 Nil!25349))))

(assert (=> b!1155531 false))

(declare-fun b!1155532 () Bool)

(declare-fun res!767770 () Bool)

(assert (=> b!1155532 (=> (not res!767770) (not e!657187))))

(assert (=> b!1155532 (= res!767770 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1155533 () Bool)

(assert (=> b!1155533 (= e!657198 (arrayContainsKey!0 _keys!1208 k0!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun b!1155534 () Bool)

(assert (=> b!1155534 (= e!657196 e!657188)))

(declare-fun res!767776 () Bool)

(assert (=> b!1155534 (=> res!767776 e!657188)))

(assert (=> b!1155534 (= res!767776 (not (= from!1455 i!673)))))

(declare-fun lt!518439 () ListLongMap!16549)

(assert (=> b!1155534 (= lt!518439 (getCurrentListMapNoExtraKeys!4729 lt!518433 lt!518447 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(assert (=> b!1155534 (= lt!518447 (array!74753 (store (arr!36023 _values!996) i!673 (ValueCellFull!13779 lt!518446)) (size!36560 _values!996)))))

(declare-fun dynLambda!2743 (Int (_ BitVec 64)) V!43763)

(assert (=> b!1155534 (= lt!518446 (dynLambda!2743 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1155534 (= lt!518430 (getCurrentListMapNoExtraKeys!4729 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun bm!54909 () Bool)

(assert (=> bm!54909 (= call!54905 (+!3621 lt!518443 (ite (or c!114833 c!114832) (tuple2!18569 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!18569 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944))))))

(declare-fun b!1155535 () Bool)

(declare-fun res!767783 () Bool)

(assert (=> b!1155535 (=> (not res!767783) (not e!657187))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1155535 (= res!767783 (validKeyInArray!0 k0!934))))

(declare-fun b!1155536 () Bool)

(assert (=> b!1155536 (contains!6777 (+!3621 lt!518440 (tuple2!18569 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944)) k0!934)))

(declare-fun lt!518445 () Unit!37949)

(assert (=> b!1155536 (= lt!518445 call!54909)))

(assert (=> b!1155536 call!54908))

(assert (=> b!1155536 (= lt!518440 call!54905)))

(declare-fun lt!518431 () Unit!37949)

(assert (=> b!1155536 (= lt!518431 (addStillContains!918 lt!518443 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944 k0!934))))

(assert (=> b!1155536 (= e!657193 lt!518445)))

(declare-fun b!1155537 () Bool)

(assert (=> b!1155537 call!54912))

(declare-fun lt!518432 () Unit!37949)

(assert (=> b!1155537 (= lt!518432 call!54910)))

(assert (=> b!1155537 (= e!657191 lt!518432)))

(declare-fun b!1155538 () Bool)

(declare-fun res!767772 () Bool)

(assert (=> b!1155538 (=> (not res!767772) (not e!657187))))

(assert (=> b!1155538 (= res!767772 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!36559 _keys!1208))))))

(declare-fun b!1155539 () Bool)

(assert (=> b!1155539 (= e!657192 e!657191)))

(declare-fun c!114831 () Bool)

(assert (=> b!1155539 (= c!114831 (and (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!518441))))

(assert (= (and start!98878 res!767777) b!1155515))

(assert (= (and b!1155515 res!767775) b!1155514))

(assert (= (and b!1155514 res!767780) b!1155532))

(assert (= (and b!1155532 res!767770) b!1155516))

(assert (= (and b!1155516 res!767779) b!1155538))

(assert (= (and b!1155538 res!767772) b!1155535))

(assert (= (and b!1155535 res!767783) b!1155525))

(assert (= (and b!1155525 res!767773) b!1155528))

(assert (= (and b!1155528 res!767774) b!1155513))

(assert (= (and b!1155513 res!767781) b!1155512))

(assert (= (and b!1155512 (not res!767782)) b!1155534))

(assert (= (and b!1155534 (not res!767776)) b!1155522))

(assert (= (and b!1155522 c!114830) b!1155511))

(assert (= (and b!1155522 (not c!114830)) b!1155520))

(assert (= (or b!1155511 b!1155520) bm!54908))

(assert (= (or b!1155511 b!1155520) bm!54902))

(assert (= (and b!1155522 (not res!767771)) b!1155523))

(assert (= (and b!1155523 c!114829) b!1155531))

(assert (= (and b!1155523 (not c!114829)) b!1155517))

(assert (= (and b!1155531 c!114833) b!1155536))

(assert (= (and b!1155531 (not c!114833)) b!1155529))

(assert (= (and b!1155529 c!114832) b!1155518))

(assert (= (and b!1155529 (not c!114832)) b!1155539))

(assert (= (and b!1155539 c!114831) b!1155537))

(assert (= (and b!1155539 (not c!114831)) b!1155519))

(assert (= (or b!1155518 b!1155537) bm!54907))

(assert (= (or b!1155518 b!1155537) bm!54904))

(assert (= (or b!1155518 b!1155537) bm!54903))

(assert (= (or b!1155536 bm!54903) bm!54906))

(assert (= (or b!1155536 bm!54907) bm!54905))

(assert (= (or b!1155536 bm!54904) bm!54909))

(assert (= (and b!1155531 c!114834) b!1155533))

(assert (= (and b!1155531 (not c!114834)) b!1155510))

(assert (= (and b!1155531 res!767769) b!1155521))

(assert (= (and b!1155523 res!767778) b!1155530))

(assert (= (and b!1155524 condMapEmpty!45290) mapIsEmpty!45290))

(assert (= (and b!1155524 (not condMapEmpty!45290)) mapNonEmpty!45290))

(get-info :version)

(assert (= (and mapNonEmpty!45290 ((_ is ValueCellFull!13779) mapValue!45290)) b!1155527))

(assert (= (and b!1155524 ((_ is ValueCellFull!13779) mapDefault!45290)) b!1155526))

(assert (= start!98878 b!1155524))

(declare-fun b_lambda!19571 () Bool)

(assert (=> (not b_lambda!19571) (not b!1155534)))

(declare-fun t!36796 () Bool)

(declare-fun tb!9267 () Bool)

(assert (=> (and start!98878 (= defaultEntry!1004 defaultEntry!1004) t!36796) tb!9267))

(declare-fun result!19091 () Bool)

(assert (=> tb!9267 (= result!19091 tp_is_empty!28977)))

(assert (=> b!1155534 t!36796))

(declare-fun b_and!39759 () Bool)

(assert (= b_and!39757 (and (=> t!36796 result!19091) b_and!39759)))

(declare-fun m!1065143 () Bool)

(assert (=> b!1155515 m!1065143))

(declare-fun m!1065145 () Bool)

(assert (=> b!1155523 m!1065145))

(declare-fun m!1065147 () Bool)

(assert (=> b!1155523 m!1065147))

(declare-fun m!1065149 () Bool)

(assert (=> b!1155523 m!1065149))

(declare-fun m!1065151 () Bool)

(assert (=> b!1155523 m!1065151))

(declare-fun m!1065153 () Bool)

(assert (=> b!1155523 m!1065153))

(declare-fun m!1065155 () Bool)

(assert (=> b!1155523 m!1065155))

(assert (=> b!1155523 m!1065149))

(assert (=> b!1155523 m!1065153))

(declare-fun m!1065157 () Bool)

(assert (=> b!1155523 m!1065157))

(assert (=> b!1155523 m!1065153))

(assert (=> b!1155523 m!1065147))

(declare-fun m!1065159 () Bool)

(assert (=> b!1155523 m!1065159))

(declare-fun m!1065161 () Bool)

(assert (=> b!1155523 m!1065161))

(declare-fun m!1065163 () Bool)

(assert (=> bm!54906 m!1065163))

(declare-fun m!1065165 () Bool)

(assert (=> b!1155511 m!1065165))

(declare-fun m!1065167 () Bool)

(assert (=> b!1155525 m!1065167))

(declare-fun m!1065169 () Bool)

(assert (=> start!98878 m!1065169))

(declare-fun m!1065171 () Bool)

(assert (=> start!98878 m!1065171))

(assert (=> b!1155522 m!1065153))

(declare-fun m!1065173 () Bool)

(assert (=> b!1155522 m!1065173))

(declare-fun m!1065175 () Bool)

(assert (=> b!1155534 m!1065175))

(declare-fun m!1065177 () Bool)

(assert (=> b!1155534 m!1065177))

(declare-fun m!1065179 () Bool)

(assert (=> b!1155534 m!1065179))

(declare-fun m!1065181 () Bool)

(assert (=> b!1155534 m!1065181))

(declare-fun m!1065183 () Bool)

(assert (=> b!1155532 m!1065183))

(declare-fun m!1065185 () Bool)

(assert (=> b!1155530 m!1065185))

(declare-fun m!1065187 () Bool)

(assert (=> b!1155513 m!1065187))

(declare-fun m!1065189 () Bool)

(assert (=> b!1155512 m!1065189))

(declare-fun m!1065191 () Bool)

(assert (=> b!1155512 m!1065191))

(declare-fun m!1065193 () Bool)

(assert (=> b!1155528 m!1065193))

(declare-fun m!1065195 () Bool)

(assert (=> b!1155528 m!1065195))

(declare-fun m!1065197 () Bool)

(assert (=> b!1155533 m!1065197))

(assert (=> b!1155521 m!1065197))

(declare-fun m!1065199 () Bool)

(assert (=> b!1155535 m!1065199))

(declare-fun m!1065201 () Bool)

(assert (=> b!1155536 m!1065201))

(assert (=> b!1155536 m!1065201))

(declare-fun m!1065203 () Bool)

(assert (=> b!1155536 m!1065203))

(declare-fun m!1065205 () Bool)

(assert (=> b!1155536 m!1065205))

(declare-fun m!1065207 () Bool)

(assert (=> b!1155531 m!1065207))

(declare-fun m!1065209 () Bool)

(assert (=> b!1155531 m!1065209))

(declare-fun m!1065211 () Bool)

(assert (=> b!1155531 m!1065211))

(declare-fun m!1065213 () Bool)

(assert (=> b!1155531 m!1065213))

(assert (=> bm!54908 m!1065185))

(declare-fun m!1065215 () Bool)

(assert (=> bm!54905 m!1065215))

(declare-fun m!1065217 () Bool)

(assert (=> mapNonEmpty!45290 m!1065217))

(assert (=> bm!54902 m!1065145))

(declare-fun m!1065219 () Bool)

(assert (=> b!1155516 m!1065219))

(declare-fun m!1065221 () Bool)

(assert (=> bm!54909 m!1065221))

(check-sat (not b!1155528) (not b!1155522) (not b!1155513) (not bm!54908) (not b!1155530) (not b!1155532) (not mapNonEmpty!45290) (not bm!54902) b_and!39759 (not b!1155531) (not bm!54905) (not b_next!24447) (not b!1155516) tp_is_empty!28977 (not b!1155515) (not b!1155536) (not b!1155534) (not bm!54906) (not start!98878) (not b!1155535) (not bm!54909) (not b!1155521) (not b!1155523) (not b!1155511) (not b!1155533) (not b_lambda!19571) (not b!1155512))
(check-sat b_and!39759 (not b_next!24447))
