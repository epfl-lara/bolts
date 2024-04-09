; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!98704 () Bool)

(assert start!98704)

(declare-fun b_free!24273 () Bool)

(declare-fun b_next!24273 () Bool)

(assert (=> start!98704 (= b_free!24273 (not b_next!24273))))

(declare-fun tp!85530 () Bool)

(declare-fun b_and!39409 () Bool)

(assert (=> start!98704 (= tp!85530 b_and!39409)))

(declare-fun e!652756 () Bool)

(declare-fun k0!934 () (_ BitVec 64))

(declare-fun b!1147506 () Bool)

(declare-datatypes ((V!43531 0))(
  ( (V!43532 (val!14458 Int)) )
))
(declare-datatypes ((tuple2!18408 0))(
  ( (tuple2!18409 (_1!9214 (_ BitVec 64)) (_2!9214 V!43531)) )
))
(declare-datatypes ((List!25202 0))(
  ( (Nil!25199) (Cons!25198 (h!26407 tuple2!18408) (t!36474 List!25202)) )
))
(declare-datatypes ((ListLongMap!16389 0))(
  ( (ListLongMap!16390 (toList!8210 List!25202)) )
))
(declare-fun lt!512751 () ListLongMap!16389)

(declare-fun lt!512737 () ListLongMap!16389)

(declare-fun -!1300 (ListLongMap!16389 (_ BitVec 64)) ListLongMap!16389)

(assert (=> b!1147506 (= e!652756 (= (-!1300 lt!512737 k0!934) lt!512751))))

(declare-fun b!1147507 () Bool)

(declare-fun res!763868 () Bool)

(declare-fun e!652758 () Bool)

(assert (=> b!1147507 (=> (not res!763868) (not e!652758))))

(declare-datatypes ((array!74410 0))(
  ( (array!74411 (arr!35852 (Array (_ BitVec 32) (_ BitVec 64))) (size!36389 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!74410)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!74410 (_ BitVec 32)) Bool)

(assert (=> b!1147507 (= res!763868 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1147508 () Bool)

(declare-fun res!763863 () Bool)

(assert (=> b!1147508 (=> (not res!763863) (not e!652758))))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1147508 (= res!763863 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!36389 _keys!1208))))))

(declare-fun bm!52814 () Bool)

(declare-fun call!52822 () ListLongMap!16389)

(declare-fun defaultEntry!1004 () Int)

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun minValue!944 () V!43531)

(declare-datatypes ((ValueCell!13692 0))(
  ( (ValueCellFull!13692 (v!17096 V!43531)) (EmptyCell!13692) )
))
(declare-datatypes ((array!74412 0))(
  ( (array!74413 (arr!35853 (Array (_ BitVec 32) ValueCell!13692)) (size!36390 (_ BitVec 32))) )
))
(declare-fun lt!512738 () array!74412)

(declare-fun zeroValue!944 () V!43531)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun lt!512754 () array!74410)

(declare-fun getCurrentListMapNoExtraKeys!4651 (array!74410 array!74412 (_ BitVec 32) (_ BitVec 32) V!43531 V!43531 (_ BitVec 32) Int) ListLongMap!16389)

(assert (=> bm!52814 (= call!52822 (getCurrentListMapNoExtraKeys!4651 lt!512754 lt!512738 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1147509 () Bool)

(declare-fun c!113264 () Bool)

(declare-fun lt!512749 () Bool)

(assert (=> b!1147509 (= c!113264 (and (not lt!512749) (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-datatypes ((Unit!37617 0))(
  ( (Unit!37618) )
))
(declare-fun e!652754 () Unit!37617)

(declare-fun e!652751 () Unit!37617)

(assert (=> b!1147509 (= e!652754 e!652751)))

(declare-fun b!1147510 () Bool)

(declare-fun e!652753 () Bool)

(declare-fun e!652764 () Bool)

(declare-fun mapRes!45029 () Bool)

(assert (=> b!1147510 (= e!652753 (and e!652764 mapRes!45029))))

(declare-fun condMapEmpty!45029 () Bool)

(declare-fun _values!996 () array!74412)

(declare-fun mapDefault!45029 () ValueCell!13692)

(assert (=> b!1147510 (= condMapEmpty!45029 (= (arr!35853 _values!996) ((as const (Array (_ BitVec 32) ValueCell!13692)) mapDefault!45029)))))

(declare-fun b!1147511 () Bool)

(declare-fun e!652755 () Bool)

(declare-fun tp_is_empty!28803 () Bool)

(assert (=> b!1147511 (= e!652755 tp_is_empty!28803)))

(declare-fun b!1147512 () Bool)

(declare-fun e!652748 () Bool)

(declare-fun e!652750 () Bool)

(assert (=> b!1147512 (= e!652748 (not e!652750))))

(declare-fun res!763862 () Bool)

(assert (=> b!1147512 (=> res!763862 e!652750)))

(assert (=> b!1147512 (= res!763862 (bvsgt from!1455 i!673))))

(declare-fun arrayContainsKey!0 (array!74410 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1147512 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-fun lt!512747 () Unit!37617)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!74410 (_ BitVec 64) (_ BitVec 32)) Unit!37617)

(assert (=> b!1147512 (= lt!512747 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun bm!52815 () Bool)

(declare-fun call!52823 () ListLongMap!16389)

(declare-fun c!113268 () Bool)

(declare-fun lt!512748 () ListLongMap!16389)

(declare-fun +!3550 (ListLongMap!16389 tuple2!18408) ListLongMap!16389)

(assert (=> bm!52815 (= call!52823 (+!3550 (ite c!113268 lt!512748 lt!512751) (ite c!113268 (tuple2!18409 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944) (ite c!113264 (tuple2!18409 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!18409 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944)))))))

(declare-fun b!1147513 () Bool)

(declare-fun contains!6707 (ListLongMap!16389 (_ BitVec 64)) Bool)

(assert (=> b!1147513 (contains!6707 call!52823 k0!934)))

(declare-fun lt!512745 () Unit!37617)

(declare-fun addStillContains!849 (ListLongMap!16389 (_ BitVec 64) V!43531 (_ BitVec 64)) Unit!37617)

(assert (=> b!1147513 (= lt!512745 (addStillContains!849 lt!512748 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944 k0!934))))

(declare-fun call!52821 () Bool)

(assert (=> b!1147513 call!52821))

(assert (=> b!1147513 (= lt!512748 (+!3550 lt!512751 (tuple2!18409 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944)))))

(declare-fun lt!512753 () Unit!37617)

(declare-fun call!52824 () Unit!37617)

(assert (=> b!1147513 (= lt!512753 call!52824)))

(assert (=> b!1147513 (= e!652754 lt!512745)))

(declare-fun b!1147514 () Bool)

(declare-fun res!763854 () Bool)

(assert (=> b!1147514 (=> (not res!763854) (not e!652758))))

(declare-datatypes ((List!25203 0))(
  ( (Nil!25200) (Cons!25199 (h!26408 (_ BitVec 64)) (t!36475 List!25203)) )
))
(declare-fun arrayNoDuplicates!0 (array!74410 (_ BitVec 32) List!25203) Bool)

(assert (=> b!1147514 (= res!763854 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!25200))))

(declare-fun b!1147515 () Bool)

(assert (=> b!1147515 (= e!652764 tp_is_empty!28803)))

(declare-fun b!1147516 () Bool)

(declare-fun e!652757 () Bool)

(assert (=> b!1147516 (= e!652750 e!652757)))

(declare-fun res!763855 () Bool)

(assert (=> b!1147516 (=> res!763855 e!652757)))

(assert (=> b!1147516 (= res!763855 (not (= from!1455 i!673)))))

(declare-fun lt!512740 () ListLongMap!16389)

(assert (=> b!1147516 (= lt!512740 (getCurrentListMapNoExtraKeys!4651 lt!512754 lt!512738 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun lt!512746 () V!43531)

(assert (=> b!1147516 (= lt!512738 (array!74413 (store (arr!35853 _values!996) i!673 (ValueCellFull!13692 lt!512746)) (size!36390 _values!996)))))

(declare-fun dynLambda!2686 (Int (_ BitVec 64)) V!43531)

(assert (=> b!1147516 (= lt!512746 (dynLambda!2686 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1147516 (= lt!512737 (getCurrentListMapNoExtraKeys!4651 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1147517 () Bool)

(declare-fun e!652762 () Bool)

(declare-fun call!52820 () ListLongMap!16389)

(assert (=> b!1147517 (= e!652762 (= call!52822 call!52820))))

(declare-fun e!652760 () Bool)

(declare-fun b!1147518 () Bool)

(assert (=> b!1147518 (= e!652760 (arrayContainsKey!0 _keys!1208 k0!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun bm!52816 () Bool)

(assert (=> bm!52816 (= call!52824 (addStillContains!849 lt!512751 (ite (or c!113268 c!113264) #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000) (ite (or c!113268 c!113264) zeroValue!944 minValue!944) k0!934))))

(declare-fun b!1147519 () Bool)

(declare-fun res!763864 () Bool)

(assert (=> b!1147519 (=> (not res!763864) (not e!652758))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1147519 (= res!763864 (validMask!0 mask!1564))))

(declare-fun b!1147520 () Bool)

(assert (=> b!1147520 (= e!652762 (= call!52822 (-!1300 call!52820 k0!934)))))

(declare-fun bm!52817 () Bool)

(assert (=> bm!52817 (= call!52820 (getCurrentListMapNoExtraKeys!4651 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1147521 () Bool)

(declare-fun e!652763 () Bool)

(assert (=> b!1147521 (= e!652757 e!652763)))

(declare-fun res!763859 () Bool)

(assert (=> b!1147521 (=> res!763859 e!652763)))

(assert (=> b!1147521 (= res!763859 (not (= (select (arr!35852 _keys!1208) from!1455) k0!934)))))

(assert (=> b!1147521 e!652762))

(declare-fun c!113267 () Bool)

(assert (=> b!1147521 (= c!113267 (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673))))

(declare-fun lt!512752 () Unit!37617)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!546 (array!74410 array!74412 (_ BitVec 32) (_ BitVec 32) V!43531 V!43531 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!37617)

(assert (=> b!1147521 (= lt!512752 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!546 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1147522 () Bool)

(declare-fun res!763861 () Bool)

(assert (=> b!1147522 (=> (not res!763861) (not e!652748))))

(assert (=> b!1147522 (= res!763861 (arrayNoDuplicates!0 lt!512754 #b00000000000000000000000000000000 Nil!25200))))

(declare-fun b!1147523 () Bool)

(assert (=> b!1147523 (= e!652763 true)))

(assert (=> b!1147523 e!652756))

(declare-fun res!763860 () Bool)

(assert (=> b!1147523 (=> (not res!763860) (not e!652756))))

(declare-fun lt!512756 () V!43531)

(assert (=> b!1147523 (= res!763860 (= (-!1300 (+!3550 lt!512751 (tuple2!18409 (select (arr!35852 _keys!1208) from!1455) lt!512756)) (select (arr!35852 _keys!1208) from!1455)) lt!512751))))

(declare-fun lt!512750 () Unit!37617)

(declare-fun addThenRemoveForNewKeyIsSame!149 (ListLongMap!16389 (_ BitVec 64) V!43531) Unit!37617)

(assert (=> b!1147523 (= lt!512750 (addThenRemoveForNewKeyIsSame!149 lt!512751 (select (arr!35852 _keys!1208) from!1455) lt!512756))))

(declare-fun get!18261 (ValueCell!13692 V!43531) V!43531)

(assert (=> b!1147523 (= lt!512756 (get!18261 (select (arr!35853 _values!996) from!1455) lt!512746))))

(declare-fun lt!512742 () Unit!37617)

(declare-fun e!652761 () Unit!37617)

(assert (=> b!1147523 (= lt!512742 e!652761)))

(declare-fun c!113263 () Bool)

(assert (=> b!1147523 (= c!113263 (contains!6707 lt!512751 k0!934))))

(assert (=> b!1147523 (= lt!512751 (getCurrentListMapNoExtraKeys!4651 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun res!763867 () Bool)

(assert (=> start!98704 (=> (not res!763867) (not e!652758))))

(assert (=> start!98704 (= res!763867 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!36389 _keys!1208))))))

(assert (=> start!98704 e!652758))

(assert (=> start!98704 tp_is_empty!28803))

(declare-fun array_inv!27340 (array!74410) Bool)

(assert (=> start!98704 (array_inv!27340 _keys!1208)))

(assert (=> start!98704 true))

(assert (=> start!98704 tp!85530))

(declare-fun array_inv!27341 (array!74412) Bool)

(assert (=> start!98704 (and (array_inv!27341 _values!996) e!652753)))

(declare-fun b!1147524 () Bool)

(declare-fun Unit!37619 () Unit!37617)

(assert (=> b!1147524 (= e!652761 Unit!37619)))

(assert (=> b!1147524 (= lt!512749 (= (bvand extraKeys!923 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(assert (=> b!1147524 (= c!113268 (and (not lt!512749) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun lt!512739 () Unit!37617)

(assert (=> b!1147524 (= lt!512739 e!652754)))

(declare-fun lt!512741 () Unit!37617)

(declare-fun lemmaListMapContainsThenArrayContainsFrom!437 (array!74410 array!74412 (_ BitVec 32) (_ BitVec 32) V!43531 V!43531 (_ BitVec 64) (_ BitVec 32) Int) Unit!37617)

(assert (=> b!1147524 (= lt!512741 (lemmaListMapContainsThenArrayContainsFrom!437 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun c!113265 () Bool)

(assert (=> b!1147524 (= c!113265 (and (not (= k0!934 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!934 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun res!763857 () Bool)

(assert (=> b!1147524 (= res!763857 e!652760)))

(declare-fun e!652759 () Bool)

(assert (=> b!1147524 (=> (not res!763857) (not e!652759))))

(assert (=> b!1147524 e!652759))

(declare-fun lt!512743 () Unit!37617)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!74410 (_ BitVec 32) (_ BitVec 32)) Unit!37617)

(assert (=> b!1147524 (= lt!512743 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1208 #b00000000000000000000000000000000 from!1455))))

(assert (=> b!1147524 (arrayNoDuplicates!0 _keys!1208 from!1455 Nil!25200)))

(declare-fun lt!512757 () Unit!37617)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!74410 (_ BitVec 64) (_ BitVec 32) List!25203) Unit!37617)

(assert (=> b!1147524 (= lt!512757 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!1208 k0!934 from!1455 Nil!25200))))

(assert (=> b!1147524 false))

(declare-fun mapNonEmpty!45029 () Bool)

(declare-fun tp!85531 () Bool)

(assert (=> mapNonEmpty!45029 (= mapRes!45029 (and tp!85531 e!652755))))

(declare-fun mapKey!45029 () (_ BitVec 32))

(declare-fun mapRest!45029 () (Array (_ BitVec 32) ValueCell!13692))

(declare-fun mapValue!45029 () ValueCell!13692)

(assert (=> mapNonEmpty!45029 (= (arr!35853 _values!996) (store mapRest!45029 mapKey!45029 mapValue!45029))))

(declare-fun b!1147525 () Bool)

(declare-fun res!763858 () Bool)

(assert (=> b!1147525 (=> (not res!763858) (not e!652758))))

(assert (=> b!1147525 (= res!763858 (and (= (size!36390 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!36389 _keys!1208) (size!36390 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1147526 () Bool)

(declare-fun lt!512744 () Unit!37617)

(assert (=> b!1147526 (= e!652751 lt!512744)))

(declare-fun call!52818 () Unit!37617)

(assert (=> b!1147526 (= lt!512744 call!52818)))

(declare-fun call!52817 () Bool)

(assert (=> b!1147526 call!52817))

(declare-fun b!1147527 () Bool)

(assert (=> b!1147527 (= e!652760 (ite (= k0!934 #b0000000000000000000000000000000000000000000000000000000000000000) (not lt!512749) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!1147528 () Bool)

(declare-fun e!652752 () Unit!37617)

(declare-fun Unit!37620 () Unit!37617)

(assert (=> b!1147528 (= e!652752 Unit!37620)))

(declare-fun b!1147529 () Bool)

(assert (=> b!1147529 (= e!652751 e!652752)))

(declare-fun c!113266 () Bool)

(assert (=> b!1147529 (= c!113266 (and (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!512749))))

(declare-fun b!1147530 () Bool)

(assert (=> b!1147530 call!52817))

(declare-fun lt!512755 () Unit!37617)

(assert (=> b!1147530 (= lt!512755 call!52818)))

(assert (=> b!1147530 (= e!652752 lt!512755)))

(declare-fun b!1147531 () Bool)

(declare-fun Unit!37621 () Unit!37617)

(assert (=> b!1147531 (= e!652761 Unit!37621)))

(declare-fun b!1147532 () Bool)

(declare-fun res!763865 () Bool)

(assert (=> b!1147532 (=> (not res!763865) (not e!652758))))

(assert (=> b!1147532 (= res!763865 (= (select (arr!35852 _keys!1208) i!673) k0!934))))

(declare-fun b!1147533 () Bool)

(assert (=> b!1147533 (= e!652759 (arrayContainsKey!0 _keys!1208 k0!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun bm!52818 () Bool)

(assert (=> bm!52818 (= call!52818 call!52824)))

(declare-fun mapIsEmpty!45029 () Bool)

(assert (=> mapIsEmpty!45029 mapRes!45029))

(declare-fun bm!52819 () Bool)

(declare-fun call!52819 () ListLongMap!16389)

(assert (=> bm!52819 (= call!52819 call!52823)))

(declare-fun b!1147534 () Bool)

(declare-fun res!763856 () Bool)

(assert (=> b!1147534 (=> (not res!763856) (not e!652758))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1147534 (= res!763856 (validKeyInArray!0 k0!934))))

(declare-fun b!1147535 () Bool)

(assert (=> b!1147535 (= e!652758 e!652748)))

(declare-fun res!763866 () Bool)

(assert (=> b!1147535 (=> (not res!763866) (not e!652748))))

(assert (=> b!1147535 (= res!763866 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!512754 mask!1564))))

(assert (=> b!1147535 (= lt!512754 (array!74411 (store (arr!35852 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!36389 _keys!1208)))))

(declare-fun bm!52820 () Bool)

(assert (=> bm!52820 (= call!52821 (contains!6707 (ite c!113268 lt!512748 call!52819) k0!934))))

(declare-fun bm!52821 () Bool)

(assert (=> bm!52821 (= call!52817 call!52821)))

(assert (= (and start!98704 res!763867) b!1147519))

(assert (= (and b!1147519 res!763864) b!1147525))

(assert (= (and b!1147525 res!763858) b!1147507))

(assert (= (and b!1147507 res!763868) b!1147514))

(assert (= (and b!1147514 res!763854) b!1147508))

(assert (= (and b!1147508 res!763863) b!1147534))

(assert (= (and b!1147534 res!763856) b!1147532))

(assert (= (and b!1147532 res!763865) b!1147535))

(assert (= (and b!1147535 res!763866) b!1147522))

(assert (= (and b!1147522 res!763861) b!1147512))

(assert (= (and b!1147512 (not res!763862)) b!1147516))

(assert (= (and b!1147516 (not res!763855)) b!1147521))

(assert (= (and b!1147521 c!113267) b!1147520))

(assert (= (and b!1147521 (not c!113267)) b!1147517))

(assert (= (or b!1147520 b!1147517) bm!52814))

(assert (= (or b!1147520 b!1147517) bm!52817))

(assert (= (and b!1147521 (not res!763859)) b!1147523))

(assert (= (and b!1147523 c!113263) b!1147524))

(assert (= (and b!1147523 (not c!113263)) b!1147531))

(assert (= (and b!1147524 c!113268) b!1147513))

(assert (= (and b!1147524 (not c!113268)) b!1147509))

(assert (= (and b!1147509 c!113264) b!1147526))

(assert (= (and b!1147509 (not c!113264)) b!1147529))

(assert (= (and b!1147529 c!113266) b!1147530))

(assert (= (and b!1147529 (not c!113266)) b!1147528))

(assert (= (or b!1147526 b!1147530) bm!52818))

(assert (= (or b!1147526 b!1147530) bm!52819))

(assert (= (or b!1147526 b!1147530) bm!52821))

(assert (= (or b!1147513 bm!52821) bm!52820))

(assert (= (or b!1147513 bm!52818) bm!52816))

(assert (= (or b!1147513 bm!52819) bm!52815))

(assert (= (and b!1147524 c!113265) b!1147518))

(assert (= (and b!1147524 (not c!113265)) b!1147527))

(assert (= (and b!1147524 res!763857) b!1147533))

(assert (= (and b!1147523 res!763860) b!1147506))

(assert (= (and b!1147510 condMapEmpty!45029) mapIsEmpty!45029))

(assert (= (and b!1147510 (not condMapEmpty!45029)) mapNonEmpty!45029))

(get-info :version)

(assert (= (and mapNonEmpty!45029 ((_ is ValueCellFull!13692) mapValue!45029)) b!1147511))

(assert (= (and b!1147510 ((_ is ValueCellFull!13692) mapDefault!45029)) b!1147515))

(assert (= start!98704 b!1147510))

(declare-fun b_lambda!19397 () Bool)

(assert (=> (not b_lambda!19397) (not b!1147516)))

(declare-fun t!36473 () Bool)

(declare-fun tb!9093 () Bool)

(assert (=> (and start!98704 (= defaultEntry!1004 defaultEntry!1004) t!36473) tb!9093))

(declare-fun result!18743 () Bool)

(assert (=> tb!9093 (= result!18743 tp_is_empty!28803)))

(assert (=> b!1147516 t!36473))

(declare-fun b_and!39411 () Bool)

(assert (= b_and!39409 (and (=> t!36473 result!18743) b_and!39411)))

(declare-fun m!1058173 () Bool)

(assert (=> b!1147522 m!1058173))

(declare-fun m!1058175 () Bool)

(assert (=> b!1147512 m!1058175))

(declare-fun m!1058177 () Bool)

(assert (=> b!1147512 m!1058177))

(declare-fun m!1058179 () Bool)

(assert (=> bm!52817 m!1058179))

(declare-fun m!1058181 () Bool)

(assert (=> b!1147514 m!1058181))

(declare-fun m!1058183 () Bool)

(assert (=> bm!52816 m!1058183))

(declare-fun m!1058185 () Bool)

(assert (=> b!1147506 m!1058185))

(assert (=> b!1147523 m!1058179))

(declare-fun m!1058187 () Bool)

(assert (=> b!1147523 m!1058187))

(declare-fun m!1058189 () Bool)

(assert (=> b!1147523 m!1058189))

(declare-fun m!1058191 () Bool)

(assert (=> b!1147523 m!1058191))

(declare-fun m!1058193 () Bool)

(assert (=> b!1147523 m!1058193))

(assert (=> b!1147523 m!1058191))

(declare-fun m!1058195 () Bool)

(assert (=> b!1147523 m!1058195))

(declare-fun m!1058197 () Bool)

(assert (=> b!1147523 m!1058197))

(assert (=> b!1147523 m!1058193))

(assert (=> b!1147523 m!1058187))

(declare-fun m!1058199 () Bool)

(assert (=> b!1147523 m!1058199))

(assert (=> b!1147523 m!1058187))

(declare-fun m!1058201 () Bool)

(assert (=> bm!52814 m!1058201))

(declare-fun m!1058203 () Bool)

(assert (=> bm!52815 m!1058203))

(declare-fun m!1058205 () Bool)

(assert (=> b!1147524 m!1058205))

(declare-fun m!1058207 () Bool)

(assert (=> b!1147524 m!1058207))

(declare-fun m!1058209 () Bool)

(assert (=> b!1147524 m!1058209))

(declare-fun m!1058211 () Bool)

(assert (=> b!1147524 m!1058211))

(declare-fun m!1058213 () Bool)

(assert (=> b!1147534 m!1058213))

(declare-fun m!1058215 () Bool)

(assert (=> start!98704 m!1058215))

(declare-fun m!1058217 () Bool)

(assert (=> start!98704 m!1058217))

(declare-fun m!1058219 () Bool)

(assert (=> b!1147519 m!1058219))

(assert (=> b!1147521 m!1058187))

(declare-fun m!1058221 () Bool)

(assert (=> b!1147521 m!1058221))

(declare-fun m!1058223 () Bool)

(assert (=> b!1147520 m!1058223))

(declare-fun m!1058225 () Bool)

(assert (=> b!1147507 m!1058225))

(declare-fun m!1058227 () Bool)

(assert (=> b!1147513 m!1058227))

(declare-fun m!1058229 () Bool)

(assert (=> b!1147513 m!1058229))

(declare-fun m!1058231 () Bool)

(assert (=> b!1147513 m!1058231))

(declare-fun m!1058233 () Bool)

(assert (=> b!1147533 m!1058233))

(declare-fun m!1058235 () Bool)

(assert (=> b!1147516 m!1058235))

(declare-fun m!1058237 () Bool)

(assert (=> b!1147516 m!1058237))

(declare-fun m!1058239 () Bool)

(assert (=> b!1147516 m!1058239))

(declare-fun m!1058241 () Bool)

(assert (=> b!1147516 m!1058241))

(assert (=> b!1147518 m!1058233))

(declare-fun m!1058243 () Bool)

(assert (=> b!1147535 m!1058243))

(declare-fun m!1058245 () Bool)

(assert (=> b!1147535 m!1058245))

(declare-fun m!1058247 () Bool)

(assert (=> bm!52820 m!1058247))

(declare-fun m!1058249 () Bool)

(assert (=> mapNonEmpty!45029 m!1058249))

(declare-fun m!1058251 () Bool)

(assert (=> b!1147532 m!1058251))

(check-sat (not bm!52816) (not b!1147533) (not b!1147513) (not bm!52817) (not b!1147534) (not b!1147519) tp_is_empty!28803 (not b!1147516) (not b!1147523) (not b!1147514) (not b!1147524) (not b!1147506) (not b!1147520) (not b!1147507) b_and!39411 (not mapNonEmpty!45029) (not bm!52815) (not bm!52820) (not bm!52814) (not b_next!24273) (not b!1147521) (not b!1147522) (not b!1147512) (not b!1147535) (not b!1147518) (not b_lambda!19397) (not start!98704))
(check-sat b_and!39411 (not b_next!24273))
