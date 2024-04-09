; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!99010 () Bool)

(assert start!99010)

(declare-fun b_free!24579 () Bool)

(declare-fun b_next!24579 () Bool)

(assert (=> start!99010 (= b_free!24579 (not b_next!24579))))

(declare-fun tp!86448 () Bool)

(declare-fun b_and!40021 () Bool)

(assert (=> start!99010 (= tp!86448 b_and!40021)))

(declare-fun bm!56486 () Bool)

(declare-datatypes ((Unit!38210 0))(
  ( (Unit!38211) )
))
(declare-fun call!56496 () Unit!38210)

(declare-fun call!56490 () Unit!38210)

(assert (=> bm!56486 (= call!56496 call!56490)))

(declare-datatypes ((V!43939 0))(
  ( (V!43940 (val!14611 Int)) )
))
(declare-datatypes ((tuple2!18692 0))(
  ( (tuple2!18693 (_1!9356 (_ BitVec 64)) (_2!9356 V!43939)) )
))
(declare-datatypes ((List!25470 0))(
  ( (Nil!25467) (Cons!25466 (h!26675 tuple2!18692) (t!37048 List!25470)) )
))
(declare-datatypes ((ListLongMap!16673 0))(
  ( (ListLongMap!16674 (toList!8352 List!25470)) )
))
(declare-fun lt!522786 () ListLongMap!16673)

(declare-fun k0!934 () (_ BitVec 64))

(declare-fun call!56495 () Bool)

(declare-fun bm!56487 () Bool)

(declare-fun call!56493 () ListLongMap!16673)

(declare-fun c!116021 () Bool)

(declare-fun contains!6832 (ListLongMap!16673 (_ BitVec 64)) Bool)

(assert (=> bm!56487 (= call!56495 (contains!6832 (ite c!116021 lt!522786 call!56493) k0!934))))

(declare-fun b!1161582 () Bool)

(declare-fun c!116022 () Bool)

(declare-fun lt!522788 () Bool)

(declare-fun extraKeys!923 () (_ BitVec 32))

(assert (=> b!1161582 (= c!116022 (and (not lt!522788) (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun e!660552 () Unit!38210)

(declare-fun e!660560 () Unit!38210)

(assert (=> b!1161582 (= e!660552 e!660560)))

(declare-fun b!1161583 () Bool)

(declare-fun call!56491 () ListLongMap!16673)

(declare-fun e!660553 () Bool)

(declare-fun call!56492 () ListLongMap!16673)

(declare-fun -!1422 (ListLongMap!16673 (_ BitVec 64)) ListLongMap!16673)

(assert (=> b!1161583 (= e!660553 (= call!56492 (-!1422 call!56491 k0!934)))))

(declare-fun b!1161584 () Bool)

(declare-fun res!770744 () Bool)

(declare-fun e!660555 () Bool)

(assert (=> b!1161584 (=> (not res!770744) (not e!660555))))

(declare-datatypes ((array!75008 0))(
  ( (array!75009 (arr!36151 (Array (_ BitVec 32) (_ BitVec 64))) (size!36688 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!75008)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!75008 (_ BitVec 32)) Bool)

(assert (=> b!1161584 (= res!770744 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun zeroValue!944 () V!43939)

(declare-fun defaultEntry!1004 () Int)

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun lt!522803 () ListLongMap!16673)

(declare-datatypes ((ValueCell!13845 0))(
  ( (ValueCellFull!13845 (v!17249 V!43939)) (EmptyCell!13845) )
))
(declare-datatypes ((array!75010 0))(
  ( (array!75011 (arr!36152 (Array (_ BitVec 32) ValueCell!13845)) (size!36689 (_ BitVec 32))) )
))
(declare-fun lt!522796 () array!75010)

(declare-fun e!660551 () Bool)

(declare-fun b!1161585 () Bool)

(declare-fun minValue!944 () V!43939)

(declare-fun lt!522801 () array!75008)

(declare-fun getCurrentListMapNoExtraKeys!4787 (array!75008 array!75010 (_ BitVec 32) (_ BitVec 32) V!43939 V!43939 (_ BitVec 32) Int) ListLongMap!16673)

(assert (=> b!1161585 (= e!660551 (= lt!522803 (getCurrentListMapNoExtraKeys!4787 lt!522801 lt!522796 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004)))))

(declare-fun b!1161586 () Bool)

(declare-fun e!660559 () Unit!38210)

(assert (=> b!1161586 (= e!660560 e!660559)))

(declare-fun c!116019 () Bool)

(assert (=> b!1161586 (= c!116019 (and (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!522788))))

(declare-fun bm!56488 () Bool)

(declare-fun call!56494 () ListLongMap!16673)

(assert (=> bm!56488 (= call!56493 call!56494)))

(declare-fun b!1161587 () Bool)

(declare-fun e!660558 () Bool)

(declare-fun e!660565 () Bool)

(declare-fun mapRes!45488 () Bool)

(assert (=> b!1161587 (= e!660558 (and e!660565 mapRes!45488))))

(declare-fun condMapEmpty!45488 () Bool)

(declare-fun _values!996 () array!75010)

(declare-fun mapDefault!45488 () ValueCell!13845)

(assert (=> b!1161587 (= condMapEmpty!45488 (= (arr!36152 _values!996) ((as const (Array (_ BitVec 32) ValueCell!13845)) mapDefault!45488)))))

(declare-fun b!1161588 () Bool)

(declare-fun res!770742 () Bool)

(declare-fun e!660563 () Bool)

(assert (=> b!1161588 (=> (not res!770742) (not e!660563))))

(declare-datatypes ((List!25471 0))(
  ( (Nil!25468) (Cons!25467 (h!26676 (_ BitVec 64)) (t!37049 List!25471)) )
))
(declare-fun arrayNoDuplicates!0 (array!75008 (_ BitVec 32) List!25471) Bool)

(assert (=> b!1161588 (= res!770742 (arrayNoDuplicates!0 lt!522801 #b00000000000000000000000000000000 Nil!25468))))

(declare-fun b!1161589 () Bool)

(assert (=> b!1161589 (= e!660555 e!660563)))

(declare-fun res!770747 () Bool)

(assert (=> b!1161589 (=> (not res!770747) (not e!660563))))

(assert (=> b!1161589 (= res!770747 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!522801 mask!1564))))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1161589 (= lt!522801 (array!75009 (store (arr!36151 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!36688 _keys!1208)))))

(declare-fun b!1161590 () Bool)

(declare-fun res!770752 () Bool)

(assert (=> b!1161590 (=> (not res!770752) (not e!660555))))

(assert (=> b!1161590 (= res!770752 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!36688 _keys!1208))))))

(declare-fun bm!56489 () Bool)

(declare-fun lt!522795 () ListLongMap!16673)

(declare-fun +!3676 (ListLongMap!16673 tuple2!18692) ListLongMap!16673)

(assert (=> bm!56489 (= call!56494 (+!3676 (ite c!116021 lt!522786 lt!522795) (ite c!116021 (tuple2!18693 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944) (ite c!116022 (tuple2!18693 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!18693 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944)))))))

(declare-fun b!1161591 () Bool)

(declare-fun res!770749 () Bool)

(assert (=> b!1161591 (=> (not res!770749) (not e!660555))))

(assert (=> b!1161591 (= res!770749 (and (= (size!36689 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!36688 _keys!1208) (size!36689 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun bm!56490 () Bool)

(declare-fun addStillContains!974 (ListLongMap!16673 (_ BitVec 64) V!43939 (_ BitVec 64)) Unit!38210)

(assert (=> bm!56490 (= call!56490 (addStillContains!974 (ite c!116021 lt!522786 lt!522795) (ite c!116021 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!116022 #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000)) (ite c!116021 minValue!944 (ite c!116022 zeroValue!944 minValue!944)) k0!934))))

(declare-fun b!1161592 () Bool)

(declare-fun e!660566 () Bool)

(declare-fun e!660556 () Bool)

(assert (=> b!1161592 (= e!660566 e!660556)))

(declare-fun res!770746 () Bool)

(assert (=> b!1161592 (=> res!770746 e!660556)))

(assert (=> b!1161592 (= res!770746 (not (= from!1455 i!673)))))

(declare-fun lt!522790 () ListLongMap!16673)

(assert (=> b!1161592 (= lt!522790 (getCurrentListMapNoExtraKeys!4787 lt!522801 lt!522796 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun lt!522804 () V!43939)

(assert (=> b!1161592 (= lt!522796 (array!75011 (store (arr!36152 _values!996) i!673 (ValueCellFull!13845 lt!522804)) (size!36689 _values!996)))))

(declare-fun dynLambda!2788 (Int (_ BitVec 64)) V!43939)

(assert (=> b!1161592 (= lt!522804 (dynLambda!2788 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!522802 () ListLongMap!16673)

(assert (=> b!1161592 (= lt!522802 (getCurrentListMapNoExtraKeys!4787 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1161593 () Bool)

(assert (=> b!1161593 (= e!660563 (not e!660566))))

(declare-fun res!770741 () Bool)

(assert (=> b!1161593 (=> res!770741 e!660566)))

(assert (=> b!1161593 (= res!770741 (bvsgt from!1455 i!673))))

(declare-fun arrayContainsKey!0 (array!75008 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1161593 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-fun lt!522793 () Unit!38210)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!75008 (_ BitVec 64) (_ BitVec 32)) Unit!38210)

(assert (=> b!1161593 (= lt!522793 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1161594 () Bool)

(declare-fun e!660554 () Unit!38210)

(declare-fun Unit!38212 () Unit!38210)

(assert (=> b!1161594 (= e!660554 Unit!38212)))

(declare-fun b!1161595 () Bool)

(assert (=> b!1161595 (= e!660553 (= call!56492 call!56491))))

(declare-fun b!1161596 () Bool)

(declare-fun e!660561 () Bool)

(assert (=> b!1161596 (= e!660556 e!660561)))

(declare-fun res!770739 () Bool)

(assert (=> b!1161596 (=> res!770739 e!660561)))

(assert (=> b!1161596 (= res!770739 (not (= (select (arr!36151 _keys!1208) from!1455) k0!934)))))

(assert (=> b!1161596 e!660553))

(declare-fun c!116020 () Bool)

(assert (=> b!1161596 (= c!116020 (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673))))

(declare-fun lt!522805 () Unit!38210)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!645 (array!75008 array!75010 (_ BitVec 32) (_ BitVec 32) V!43939 V!43939 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!38210)

(assert (=> b!1161596 (= lt!522805 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!645 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun mapIsEmpty!45488 () Bool)

(assert (=> mapIsEmpty!45488 mapRes!45488))

(declare-fun b!1161597 () Bool)

(declare-fun e!660557 () Bool)

(assert (=> b!1161597 (= e!660557 (ite (= k0!934 #b0000000000000000000000000000000000000000000000000000000000000000) (not lt!522788) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!1161598 () Bool)

(declare-fun call!56489 () Bool)

(assert (=> b!1161598 call!56489))

(declare-fun lt!522789 () Unit!38210)

(assert (=> b!1161598 (= lt!522789 call!56496)))

(assert (=> b!1161598 (= e!660559 lt!522789)))

(declare-fun b!1161599 () Bool)

(declare-fun res!770748 () Bool)

(assert (=> b!1161599 (=> (not res!770748) (not e!660555))))

(assert (=> b!1161599 (= res!770748 (= (select (arr!36151 _keys!1208) i!673) k0!934))))

(declare-fun b!1161600 () Bool)

(declare-fun res!770751 () Bool)

(assert (=> b!1161600 (=> (not res!770751) (not e!660555))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1161600 (= res!770751 (validKeyInArray!0 k0!934))))

(declare-fun b!1161601 () Bool)

(declare-fun tp_is_empty!29109 () Bool)

(assert (=> b!1161601 (= e!660565 tp_is_empty!29109)))

(declare-fun b!1161602 () Bool)

(declare-fun e!660562 () Bool)

(assert (=> b!1161602 (= e!660562 tp_is_empty!29109)))

(declare-fun bm!56491 () Bool)

(assert (=> bm!56491 (= call!56492 (getCurrentListMapNoExtraKeys!4787 lt!522801 lt!522796 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1161603 () Bool)

(declare-fun Unit!38213 () Unit!38210)

(assert (=> b!1161603 (= e!660554 Unit!38213)))

(assert (=> b!1161603 (= lt!522788 (= (bvand extraKeys!923 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(assert (=> b!1161603 (= c!116021 (and (not lt!522788) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun lt!522800 () Unit!38210)

(assert (=> b!1161603 (= lt!522800 e!660552)))

(declare-fun lt!522792 () Unit!38210)

(declare-fun lemmaListMapContainsThenArrayContainsFrom!544 (array!75008 array!75010 (_ BitVec 32) (_ BitVec 32) V!43939 V!43939 (_ BitVec 64) (_ BitVec 32) Int) Unit!38210)

(assert (=> b!1161603 (= lt!522792 (lemmaListMapContainsThenArrayContainsFrom!544 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun c!116017 () Bool)

(assert (=> b!1161603 (= c!116017 (and (not (= k0!934 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!934 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun res!770743 () Bool)

(assert (=> b!1161603 (= res!770743 e!660557)))

(declare-fun e!660564 () Bool)

(assert (=> b!1161603 (=> (not res!770743) (not e!660564))))

(assert (=> b!1161603 e!660564))

(declare-fun lt!522799 () Unit!38210)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!75008 (_ BitVec 32) (_ BitVec 32)) Unit!38210)

(assert (=> b!1161603 (= lt!522799 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1208 #b00000000000000000000000000000000 from!1455))))

(assert (=> b!1161603 (arrayNoDuplicates!0 _keys!1208 from!1455 Nil!25468)))

(declare-fun lt!522807 () Unit!38210)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!75008 (_ BitVec 64) (_ BitVec 32) List!25471) Unit!38210)

(assert (=> b!1161603 (= lt!522807 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!1208 k0!934 from!1455 Nil!25468))))

(assert (=> b!1161603 false))

(declare-fun bm!56492 () Bool)

(assert (=> bm!56492 (= call!56489 call!56495)))

(declare-fun mapNonEmpty!45488 () Bool)

(declare-fun tp!86449 () Bool)

(assert (=> mapNonEmpty!45488 (= mapRes!45488 (and tp!86449 e!660562))))

(declare-fun mapKey!45488 () (_ BitVec 32))

(declare-fun mapValue!45488 () ValueCell!13845)

(declare-fun mapRest!45488 () (Array (_ BitVec 32) ValueCell!13845))

(assert (=> mapNonEmpty!45488 (= (arr!36152 _values!996) (store mapRest!45488 mapKey!45488 mapValue!45488))))

(declare-fun b!1161604 () Bool)

(declare-fun res!770753 () Bool)

(assert (=> b!1161604 (=> (not res!770753) (not e!660555))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1161604 (= res!770753 (validMask!0 mask!1564))))

(declare-fun b!1161605 () Bool)

(declare-fun res!770750 () Bool)

(assert (=> b!1161605 (=> (not res!770750) (not e!660555))))

(assert (=> b!1161605 (= res!770750 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!25468))))

(declare-fun bm!56493 () Bool)

(assert (=> bm!56493 (= call!56491 (getCurrentListMapNoExtraKeys!4787 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1161606 () Bool)

(declare-fun Unit!38214 () Unit!38210)

(assert (=> b!1161606 (= e!660559 Unit!38214)))

(declare-fun b!1161607 () Bool)

(assert (=> b!1161607 (contains!6832 call!56494 k0!934)))

(declare-fun lt!522794 () Unit!38210)

(assert (=> b!1161607 (= lt!522794 call!56490)))

(assert (=> b!1161607 call!56495))

(assert (=> b!1161607 (= lt!522786 (+!3676 lt!522795 (tuple2!18693 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944)))))

(declare-fun lt!522787 () Unit!38210)

(assert (=> b!1161607 (= lt!522787 (addStillContains!974 lt!522795 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944 k0!934))))

(assert (=> b!1161607 (= e!660552 lt!522794)))

(declare-fun b!1161608 () Bool)

(declare-fun lt!522798 () Unit!38210)

(assert (=> b!1161608 (= e!660560 lt!522798)))

(assert (=> b!1161608 (= lt!522798 call!56496)))

(assert (=> b!1161608 call!56489))

(declare-fun b!1161609 () Bool)

(assert (=> b!1161609 (= e!660561 true)))

(assert (=> b!1161609 e!660551))

(declare-fun res!770740 () Bool)

(assert (=> b!1161609 (=> (not res!770740) (not e!660551))))

(assert (=> b!1161609 (= res!770740 (= lt!522803 lt!522795))))

(assert (=> b!1161609 (= lt!522803 (-!1422 lt!522802 k0!934))))

(declare-fun lt!522791 () V!43939)

(assert (=> b!1161609 (= (-!1422 (+!3676 lt!522795 (tuple2!18693 (select (arr!36151 _keys!1208) from!1455) lt!522791)) (select (arr!36151 _keys!1208) from!1455)) lt!522795)))

(declare-fun lt!522806 () Unit!38210)

(declare-fun addThenRemoveForNewKeyIsSame!259 (ListLongMap!16673 (_ BitVec 64) V!43939) Unit!38210)

(assert (=> b!1161609 (= lt!522806 (addThenRemoveForNewKeyIsSame!259 lt!522795 (select (arr!36151 _keys!1208) from!1455) lt!522791))))

(declare-fun get!18473 (ValueCell!13845 V!43939) V!43939)

(assert (=> b!1161609 (= lt!522791 (get!18473 (select (arr!36152 _values!996) from!1455) lt!522804))))

(declare-fun lt!522797 () Unit!38210)

(assert (=> b!1161609 (= lt!522797 e!660554)))

(declare-fun c!116018 () Bool)

(assert (=> b!1161609 (= c!116018 (contains!6832 lt!522795 k0!934))))

(assert (=> b!1161609 (= lt!522795 (getCurrentListMapNoExtraKeys!4787 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun res!770745 () Bool)

(assert (=> start!99010 (=> (not res!770745) (not e!660555))))

(assert (=> start!99010 (= res!770745 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!36688 _keys!1208))))))

(assert (=> start!99010 e!660555))

(assert (=> start!99010 tp_is_empty!29109))

(declare-fun array_inv!27534 (array!75008) Bool)

(assert (=> start!99010 (array_inv!27534 _keys!1208)))

(assert (=> start!99010 true))

(assert (=> start!99010 tp!86448))

(declare-fun array_inv!27535 (array!75010) Bool)

(assert (=> start!99010 (and (array_inv!27535 _values!996) e!660558)))

(declare-fun b!1161610 () Bool)

(assert (=> b!1161610 (= e!660564 (arrayContainsKey!0 _keys!1208 k0!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun b!1161611 () Bool)

(assert (=> b!1161611 (= e!660557 (arrayContainsKey!0 _keys!1208 k0!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(assert (= (and start!99010 res!770745) b!1161604))

(assert (= (and b!1161604 res!770753) b!1161591))

(assert (= (and b!1161591 res!770749) b!1161584))

(assert (= (and b!1161584 res!770744) b!1161605))

(assert (= (and b!1161605 res!770750) b!1161590))

(assert (= (and b!1161590 res!770752) b!1161600))

(assert (= (and b!1161600 res!770751) b!1161599))

(assert (= (and b!1161599 res!770748) b!1161589))

(assert (= (and b!1161589 res!770747) b!1161588))

(assert (= (and b!1161588 res!770742) b!1161593))

(assert (= (and b!1161593 (not res!770741)) b!1161592))

(assert (= (and b!1161592 (not res!770746)) b!1161596))

(assert (= (and b!1161596 c!116020) b!1161583))

(assert (= (and b!1161596 (not c!116020)) b!1161595))

(assert (= (or b!1161583 b!1161595) bm!56491))

(assert (= (or b!1161583 b!1161595) bm!56493))

(assert (= (and b!1161596 (not res!770739)) b!1161609))

(assert (= (and b!1161609 c!116018) b!1161603))

(assert (= (and b!1161609 (not c!116018)) b!1161594))

(assert (= (and b!1161603 c!116021) b!1161607))

(assert (= (and b!1161603 (not c!116021)) b!1161582))

(assert (= (and b!1161582 c!116022) b!1161608))

(assert (= (and b!1161582 (not c!116022)) b!1161586))

(assert (= (and b!1161586 c!116019) b!1161598))

(assert (= (and b!1161586 (not c!116019)) b!1161606))

(assert (= (or b!1161608 b!1161598) bm!56486))

(assert (= (or b!1161608 b!1161598) bm!56488))

(assert (= (or b!1161608 b!1161598) bm!56492))

(assert (= (or b!1161607 bm!56492) bm!56487))

(assert (= (or b!1161607 bm!56486) bm!56490))

(assert (= (or b!1161607 bm!56488) bm!56489))

(assert (= (and b!1161603 c!116017) b!1161611))

(assert (= (and b!1161603 (not c!116017)) b!1161597))

(assert (= (and b!1161603 res!770743) b!1161610))

(assert (= (and b!1161609 res!770740) b!1161585))

(assert (= (and b!1161587 condMapEmpty!45488) mapIsEmpty!45488))

(assert (= (and b!1161587 (not condMapEmpty!45488)) mapNonEmpty!45488))

(get-info :version)

(assert (= (and mapNonEmpty!45488 ((_ is ValueCellFull!13845) mapValue!45488)) b!1161602))

(assert (= (and b!1161587 ((_ is ValueCellFull!13845) mapDefault!45488)) b!1161601))

(assert (= start!99010 b!1161587))

(declare-fun b_lambda!19703 () Bool)

(assert (=> (not b_lambda!19703) (not b!1161592)))

(declare-fun t!37047 () Bool)

(declare-fun tb!9399 () Bool)

(assert (=> (and start!99010 (= defaultEntry!1004 defaultEntry!1004) t!37047) tb!9399))

(declare-fun result!19355 () Bool)

(assert (=> tb!9399 (= result!19355 tp_is_empty!29109)))

(assert (=> b!1161592 t!37047))

(declare-fun b_and!40023 () Bool)

(assert (= b_and!40021 (and (=> t!37047 result!19355) b_and!40023)))

(declare-fun m!1070427 () Bool)

(assert (=> bm!56491 m!1070427))

(declare-fun m!1070429 () Bool)

(assert (=> b!1161592 m!1070429))

(declare-fun m!1070431 () Bool)

(assert (=> b!1161592 m!1070431))

(declare-fun m!1070433 () Bool)

(assert (=> b!1161592 m!1070433))

(declare-fun m!1070435 () Bool)

(assert (=> b!1161592 m!1070435))

(declare-fun m!1070437 () Bool)

(assert (=> bm!56490 m!1070437))

(declare-fun m!1070439 () Bool)

(assert (=> b!1161584 m!1070439))

(declare-fun m!1070441 () Bool)

(assert (=> b!1161609 m!1070441))

(declare-fun m!1070443 () Bool)

(assert (=> b!1161609 m!1070443))

(declare-fun m!1070445 () Bool)

(assert (=> b!1161609 m!1070445))

(assert (=> b!1161609 m!1070443))

(declare-fun m!1070447 () Bool)

(assert (=> b!1161609 m!1070447))

(declare-fun m!1070449 () Bool)

(assert (=> b!1161609 m!1070449))

(declare-fun m!1070451 () Bool)

(assert (=> b!1161609 m!1070451))

(assert (=> b!1161609 m!1070449))

(declare-fun m!1070453 () Bool)

(assert (=> b!1161609 m!1070453))

(declare-fun m!1070455 () Bool)

(assert (=> b!1161609 m!1070455))

(assert (=> b!1161609 m!1070453))

(declare-fun m!1070457 () Bool)

(assert (=> b!1161609 m!1070457))

(assert (=> b!1161609 m!1070453))

(declare-fun m!1070459 () Bool)

(assert (=> bm!56489 m!1070459))

(declare-fun m!1070461 () Bool)

(assert (=> b!1161583 m!1070461))

(declare-fun m!1070463 () Bool)

(assert (=> b!1161600 m!1070463))

(declare-fun m!1070465 () Bool)

(assert (=> b!1161605 m!1070465))

(declare-fun m!1070467 () Bool)

(assert (=> b!1161589 m!1070467))

(declare-fun m!1070469 () Bool)

(assert (=> b!1161589 m!1070469))

(declare-fun m!1070471 () Bool)

(assert (=> b!1161593 m!1070471))

(declare-fun m!1070473 () Bool)

(assert (=> b!1161593 m!1070473))

(declare-fun m!1070475 () Bool)

(assert (=> b!1161599 m!1070475))

(declare-fun m!1070477 () Bool)

(assert (=> b!1161604 m!1070477))

(declare-fun m!1070479 () Bool)

(assert (=> b!1161603 m!1070479))

(declare-fun m!1070481 () Bool)

(assert (=> b!1161603 m!1070481))

(declare-fun m!1070483 () Bool)

(assert (=> b!1161603 m!1070483))

(declare-fun m!1070485 () Bool)

(assert (=> b!1161603 m!1070485))

(declare-fun m!1070487 () Bool)

(assert (=> mapNonEmpty!45488 m!1070487))

(declare-fun m!1070489 () Bool)

(assert (=> b!1161611 m!1070489))

(assert (=> b!1161596 m!1070453))

(declare-fun m!1070491 () Bool)

(assert (=> b!1161596 m!1070491))

(declare-fun m!1070493 () Bool)

(assert (=> b!1161607 m!1070493))

(declare-fun m!1070495 () Bool)

(assert (=> b!1161607 m!1070495))

(declare-fun m!1070497 () Bool)

(assert (=> b!1161607 m!1070497))

(declare-fun m!1070499 () Bool)

(assert (=> bm!56487 m!1070499))

(declare-fun m!1070501 () Bool)

(assert (=> start!99010 m!1070501))

(declare-fun m!1070503 () Bool)

(assert (=> start!99010 m!1070503))

(declare-fun m!1070505 () Bool)

(assert (=> b!1161588 m!1070505))

(assert (=> b!1161585 m!1070427))

(assert (=> bm!56493 m!1070441))

(assert (=> b!1161610 m!1070489))

(check-sat (not b!1161588) (not bm!56489) (not b!1161603) (not b!1161604) (not start!99010) (not b!1161609) (not mapNonEmpty!45488) (not b!1161584) (not bm!56490) (not b!1161607) (not bm!56491) tp_is_empty!29109 (not b!1161593) b_and!40023 (not b!1161592) (not bm!56487) (not b!1161605) (not bm!56493) (not b!1161600) (not b!1161610) (not b!1161596) (not b!1161585) (not b!1161611) (not b!1161589) (not b_next!24579) (not b_lambda!19703) (not b!1161583))
(check-sat b_and!40023 (not b_next!24579))
