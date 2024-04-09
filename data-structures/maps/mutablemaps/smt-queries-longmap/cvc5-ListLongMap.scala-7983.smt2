; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!98774 () Bool)

(assert start!98774)

(declare-fun b_free!24343 () Bool)

(declare-fun b_next!24343 () Bool)

(assert (=> start!98774 (= b_free!24343 (not b_next!24343))))

(declare-fun tp!85740 () Bool)

(declare-fun b_and!39549 () Bool)

(assert (=> start!98774 (= tp!85740 b_and!39549)))

(declare-fun bm!53654 () Bool)

(declare-datatypes ((V!43625 0))(
  ( (V!43626 (val!14493 Int)) )
))
(declare-datatypes ((tuple2!18476 0))(
  ( (tuple2!18477 (_1!9248 (_ BitVec 64)) (_2!9248 V!43625)) )
))
(declare-datatypes ((List!25267 0))(
  ( (Nil!25264) (Cons!25263 (h!26472 tuple2!18476) (t!36609 List!25267)) )
))
(declare-datatypes ((ListLongMap!16457 0))(
  ( (ListLongMap!16458 (toList!8244 List!25267)) )
))
(declare-fun call!53658 () ListLongMap!16457)

(declare-fun call!53664 () ListLongMap!16457)

(assert (=> bm!53654 (= call!53658 call!53664)))

(declare-fun b!1150726 () Bool)

(declare-fun res!765442 () Bool)

(declare-fun e!654533 () Bool)

(assert (=> b!1150726 (=> (not res!765442) (not e!654533))))

(declare-datatypes ((array!74550 0))(
  ( (array!74551 (arr!35922 (Array (_ BitVec 32) (_ BitVec 64))) (size!36459 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!74550)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-datatypes ((ValueCell!13727 0))(
  ( (ValueCellFull!13727 (v!17131 V!43625)) (EmptyCell!13727) )
))
(declare-datatypes ((array!74552 0))(
  ( (array!74553 (arr!35923 (Array (_ BitVec 32) ValueCell!13727)) (size!36460 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!74552)

(assert (=> b!1150726 (= res!765442 (and (= (size!36460 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!36459 _keys!1208) (size!36460 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun c!113898 () Bool)

(declare-fun call!53660 () Bool)

(declare-fun bm!53655 () Bool)

(declare-fun k!934 () (_ BitVec 64))

(declare-fun lt!515018 () ListLongMap!16457)

(declare-fun contains!6739 (ListLongMap!16457 (_ BitVec 64)) Bool)

(assert (=> bm!53655 (= call!53660 (contains!6739 (ite c!113898 lt!515018 call!53658) k!934))))

(declare-fun b!1150727 () Bool)

(declare-fun res!765433 () Bool)

(assert (=> b!1150727 (=> (not res!765433) (not e!654533))))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1150727 (= res!765433 (= (select (arr!35922 _keys!1208) i!673) k!934))))

(declare-fun b!1150728 () Bool)

(declare-fun e!654544 () Bool)

(declare-fun e!654536 () Bool)

(assert (=> b!1150728 (= e!654544 e!654536)))

(declare-fun res!765440 () Bool)

(assert (=> b!1150728 (=> res!765440 e!654536)))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> b!1150728 (= res!765440 (not (= from!1455 i!673)))))

(declare-fun zeroValue!944 () V!43625)

(declare-fun lt!515007 () ListLongMap!16457)

(declare-fun lt!515005 () array!74552)

(declare-fun defaultEntry!1004 () Int)

(declare-fun minValue!944 () V!43625)

(declare-fun lt!515010 () array!74550)

(declare-fun getCurrentListMapNoExtraKeys!4685 (array!74550 array!74552 (_ BitVec 32) (_ BitVec 32) V!43625 V!43625 (_ BitVec 32) Int) ListLongMap!16457)

(assert (=> b!1150728 (= lt!515007 (getCurrentListMapNoExtraKeys!4685 lt!515010 lt!515005 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun lt!515004 () V!43625)

(assert (=> b!1150728 (= lt!515005 (array!74553 (store (arr!35923 _values!996) i!673 (ValueCellFull!13727 lt!515004)) (size!36460 _values!996)))))

(declare-fun dynLambda!2713 (Int (_ BitVec 64)) V!43625)

(assert (=> b!1150728 (= lt!515004 (dynLambda!2713 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!514998 () ListLongMap!16457)

(assert (=> b!1150728 (= lt!514998 (getCurrentListMapNoExtraKeys!4685 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1150729 () Bool)

(declare-fun e!654548 () Bool)

(assert (=> b!1150729 (= e!654536 e!654548)))

(declare-fun res!765434 () Bool)

(assert (=> b!1150729 (=> res!765434 e!654548)))

(assert (=> b!1150729 (= res!765434 (not (= (select (arr!35922 _keys!1208) from!1455) k!934)))))

(declare-fun e!654547 () Bool)

(assert (=> b!1150729 e!654547))

(declare-fun c!113893 () Bool)

(assert (=> b!1150729 (= c!113893 (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673))))

(declare-datatypes ((Unit!37766 0))(
  ( (Unit!37767) )
))
(declare-fun lt!515019 () Unit!37766)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!568 (array!74550 array!74552 (_ BitVec 32) (_ BitVec 32) V!43625 V!43625 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!37766)

(assert (=> b!1150729 (= lt!515019 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!568 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun e!654545 () Bool)

(declare-fun b!1150730 () Bool)

(declare-fun arrayContainsKey!0 (array!74550 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1150730 (= e!654545 (arrayContainsKey!0 _keys!1208 k!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun bm!53656 () Bool)

(declare-fun call!53659 () Bool)

(assert (=> bm!53656 (= call!53659 call!53660)))

(declare-fun mapIsEmpty!45134 () Bool)

(declare-fun mapRes!45134 () Bool)

(assert (=> mapIsEmpty!45134 mapRes!45134))

(declare-fun bm!53657 () Bool)

(declare-fun call!53657 () Unit!37766)

(declare-fun call!53661 () Unit!37766)

(assert (=> bm!53657 (= call!53657 call!53661)))

(declare-fun b!1150731 () Bool)

(declare-fun res!765438 () Bool)

(assert (=> b!1150731 (=> (not res!765438) (not e!654533))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1150731 (= res!765438 (validMask!0 mask!1564))))

(declare-fun call!53663 () ListLongMap!16457)

(declare-fun bm!53658 () Bool)

(assert (=> bm!53658 (= call!53663 (getCurrentListMapNoExtraKeys!4685 lt!515010 lt!515005 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1150732 () Bool)

(declare-fun e!654549 () Bool)

(declare-fun lt!515012 () Bool)

(assert (=> b!1150732 (= e!654549 (ite (= k!934 #b0000000000000000000000000000000000000000000000000000000000000000) (not lt!515012) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!1150733 () Bool)

(declare-fun res!765435 () Bool)

(assert (=> b!1150733 (=> (not res!765435) (not e!654533))))

(declare-datatypes ((List!25268 0))(
  ( (Nil!25265) (Cons!25264 (h!26473 (_ BitVec 64)) (t!36610 List!25268)) )
))
(declare-fun arrayNoDuplicates!0 (array!74550 (_ BitVec 32) List!25268) Bool)

(assert (=> b!1150733 (= res!765435 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!25265))))

(declare-fun b!1150734 () Bool)

(declare-fun e!654546 () Unit!37766)

(declare-fun lt!515002 () Unit!37766)

(assert (=> b!1150734 (= e!654546 lt!515002)))

(assert (=> b!1150734 (= lt!515002 call!53657)))

(assert (=> b!1150734 call!53659))

(declare-fun b!1150735 () Bool)

(declare-fun e!654534 () Unit!37766)

(declare-fun Unit!37768 () Unit!37766)

(assert (=> b!1150735 (= e!654534 Unit!37768)))

(assert (=> b!1150735 (= lt!515012 (= (bvand extraKeys!923 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(assert (=> b!1150735 (= c!113898 (and (not lt!515012) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun lt!515011 () Unit!37766)

(declare-fun e!654539 () Unit!37766)

(assert (=> b!1150735 (= lt!515011 e!654539)))

(declare-fun lt!515009 () Unit!37766)

(declare-fun lemmaListMapContainsThenArrayContainsFrom!465 (array!74550 array!74552 (_ BitVec 32) (_ BitVec 32) V!43625 V!43625 (_ BitVec 64) (_ BitVec 32) Int) Unit!37766)

(assert (=> b!1150735 (= lt!515009 (lemmaListMapContainsThenArrayContainsFrom!465 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun c!113894 () Bool)

(assert (=> b!1150735 (= c!113894 (and (not (= k!934 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!934 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun res!765437 () Bool)

(assert (=> b!1150735 (= res!765437 e!654549)))

(assert (=> b!1150735 (=> (not res!765437) (not e!654545))))

(assert (=> b!1150735 e!654545))

(declare-fun lt!515006 () Unit!37766)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!74550 (_ BitVec 32) (_ BitVec 32)) Unit!37766)

(assert (=> b!1150735 (= lt!515006 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1208 #b00000000000000000000000000000000 from!1455))))

(assert (=> b!1150735 (arrayNoDuplicates!0 _keys!1208 from!1455 Nil!25265)))

(declare-fun lt!515014 () Unit!37766)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!74550 (_ BitVec 64) (_ BitVec 32) List!25268) Unit!37766)

(assert (=> b!1150735 (= lt!515014 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!1208 k!934 from!1455 Nil!25265))))

(assert (=> b!1150735 false))

(declare-fun b!1150736 () Bool)

(declare-fun e!654542 () Bool)

(declare-fun lt!515003 () ListLongMap!16457)

(assert (=> b!1150736 (= e!654542 (= lt!515003 (getCurrentListMapNoExtraKeys!4685 lt!515010 lt!515005 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004)))))

(declare-fun b!1150737 () Bool)

(declare-fun res!765439 () Bool)

(declare-fun e!654541 () Bool)

(assert (=> b!1150737 (=> (not res!765439) (not e!654541))))

(assert (=> b!1150737 (= res!765439 (arrayNoDuplicates!0 lt!515010 #b00000000000000000000000000000000 Nil!25265))))

(declare-fun call!53662 () ListLongMap!16457)

(declare-fun b!1150738 () Bool)

(declare-fun -!1330 (ListLongMap!16457 (_ BitVec 64)) ListLongMap!16457)

(assert (=> b!1150738 (= e!654547 (= call!53663 (-!1330 call!53662 k!934)))))

(declare-fun b!1150739 () Bool)

(declare-fun res!765429 () Bool)

(assert (=> b!1150739 (=> (not res!765429) (not e!654533))))

(assert (=> b!1150739 (= res!765429 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!36459 _keys!1208))))))

(declare-fun b!1150740 () Bool)

(assert (=> b!1150740 (contains!6739 call!53664 k!934)))

(declare-fun lt!515015 () Unit!37766)

(declare-fun addStillContains!881 (ListLongMap!16457 (_ BitVec 64) V!43625 (_ BitVec 64)) Unit!37766)

(assert (=> b!1150740 (= lt!515015 (addStillContains!881 lt!515018 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944 k!934))))

(assert (=> b!1150740 call!53660))

(declare-fun lt!515016 () ListLongMap!16457)

(declare-fun +!3581 (ListLongMap!16457 tuple2!18476) ListLongMap!16457)

(assert (=> b!1150740 (= lt!515018 (+!3581 lt!515016 (tuple2!18477 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944)))))

(declare-fun lt!515013 () Unit!37766)

(assert (=> b!1150740 (= lt!515013 call!53661)))

(assert (=> b!1150740 (= e!654539 lt!515015)))

(declare-fun bm!53659 () Bool)

(declare-fun c!113896 () Bool)

(assert (=> bm!53659 (= call!53664 (+!3581 (ite c!113898 lt!515018 lt!515016) (ite c!113898 (tuple2!18477 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944) (ite c!113896 (tuple2!18477 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!18477 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944)))))))

(declare-fun b!1150741 () Bool)

(declare-fun e!654537 () Unit!37766)

(declare-fun Unit!37769 () Unit!37766)

(assert (=> b!1150741 (= e!654537 Unit!37769)))

(declare-fun b!1150742 () Bool)

(assert (=> b!1150742 (= c!113896 (and (not lt!515012) (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(assert (=> b!1150742 (= e!654539 e!654546)))

(declare-fun b!1150743 () Bool)

(assert (=> b!1150743 (= e!654549 (arrayContainsKey!0 _keys!1208 k!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun mapNonEmpty!45134 () Bool)

(declare-fun tp!85741 () Bool)

(declare-fun e!654535 () Bool)

(assert (=> mapNonEmpty!45134 (= mapRes!45134 (and tp!85741 e!654535))))

(declare-fun mapRest!45134 () (Array (_ BitVec 32) ValueCell!13727))

(declare-fun mapValue!45134 () ValueCell!13727)

(declare-fun mapKey!45134 () (_ BitVec 32))

(assert (=> mapNonEmpty!45134 (= (arr!35923 _values!996) (store mapRest!45134 mapKey!45134 mapValue!45134))))

(declare-fun b!1150744 () Bool)

(assert (=> b!1150744 call!53659))

(declare-fun lt!515008 () Unit!37766)

(assert (=> b!1150744 (= lt!515008 call!53657)))

(assert (=> b!1150744 (= e!654537 lt!515008)))

(declare-fun b!1150745 () Bool)

(assert (=> b!1150745 (= e!654547 (= call!53663 call!53662))))

(declare-fun b!1150746 () Bool)

(declare-fun Unit!37770 () Unit!37766)

(assert (=> b!1150746 (= e!654534 Unit!37770)))

(declare-fun b!1150747 () Bool)

(assert (=> b!1150747 (= e!654533 e!654541)))

(declare-fun res!765443 () Bool)

(assert (=> b!1150747 (=> (not res!765443) (not e!654541))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!74550 (_ BitVec 32)) Bool)

(assert (=> b!1150747 (= res!765443 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!515010 mask!1564))))

(assert (=> b!1150747 (= lt!515010 (array!74551 (store (arr!35922 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!36459 _keys!1208)))))

(declare-fun b!1150748 () Bool)

(assert (=> b!1150748 (= e!654548 true)))

(assert (=> b!1150748 e!654542))

(declare-fun res!765436 () Bool)

(assert (=> b!1150748 (=> (not res!765436) (not e!654542))))

(assert (=> b!1150748 (= res!765436 (= lt!515003 lt!515016))))

(assert (=> b!1150748 (= lt!515003 (-!1330 lt!514998 k!934))))

(declare-fun lt!515017 () V!43625)

(assert (=> b!1150748 (= (-!1330 (+!3581 lt!515016 (tuple2!18477 (select (arr!35922 _keys!1208) from!1455) lt!515017)) (select (arr!35922 _keys!1208) from!1455)) lt!515016)))

(declare-fun lt!515001 () Unit!37766)

(declare-fun addThenRemoveForNewKeyIsSame!179 (ListLongMap!16457 (_ BitVec 64) V!43625) Unit!37766)

(assert (=> b!1150748 (= lt!515001 (addThenRemoveForNewKeyIsSame!179 lt!515016 (select (arr!35922 _keys!1208) from!1455) lt!515017))))

(declare-fun get!18315 (ValueCell!13727 V!43625) V!43625)

(assert (=> b!1150748 (= lt!515017 (get!18315 (select (arr!35923 _values!996) from!1455) lt!515004))))

(declare-fun lt!514999 () Unit!37766)

(assert (=> b!1150748 (= lt!514999 e!654534)))

(declare-fun c!113895 () Bool)

(assert (=> b!1150748 (= c!113895 (contains!6739 lt!515016 k!934))))

(assert (=> b!1150748 (= lt!515016 (getCurrentListMapNoExtraKeys!4685 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1150749 () Bool)

(declare-fun e!654540 () Bool)

(declare-fun e!654538 () Bool)

(assert (=> b!1150749 (= e!654540 (and e!654538 mapRes!45134))))

(declare-fun condMapEmpty!45134 () Bool)

(declare-fun mapDefault!45134 () ValueCell!13727)

