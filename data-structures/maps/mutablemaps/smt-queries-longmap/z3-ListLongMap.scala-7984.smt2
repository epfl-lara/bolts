; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!98782 () Bool)

(assert start!98782)

(declare-fun b_free!24351 () Bool)

(declare-fun b_next!24351 () Bool)

(assert (=> start!98782 (= b_free!24351 (not b_next!24351))))

(declare-fun tp!85764 () Bool)

(declare-fun b_and!39565 () Bool)

(assert (=> start!98782 (= tp!85764 b_and!39565)))

(declare-fun b!1151094 () Bool)

(declare-datatypes ((Unit!37780 0))(
  ( (Unit!37781) )
))
(declare-fun e!654743 () Unit!37780)

(declare-fun Unit!37782 () Unit!37780)

(assert (=> b!1151094 (= e!654743 Unit!37782)))

(declare-datatypes ((V!43635 0))(
  ( (V!43636 (val!14497 Int)) )
))
(declare-fun zeroValue!944 () V!43635)

(declare-datatypes ((array!74566 0))(
  ( (array!74567 (arr!35930 (Array (_ BitVec 32) (_ BitVec 64))) (size!36467 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!74566)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-fun from!1455 () (_ BitVec 32))

(declare-datatypes ((tuple2!18484 0))(
  ( (tuple2!18485 (_1!9252 (_ BitVec 64)) (_2!9252 V!43635)) )
))
(declare-datatypes ((List!25274 0))(
  ( (Nil!25271) (Cons!25270 (h!26479 tuple2!18484) (t!36624 List!25274)) )
))
(declare-datatypes ((ListLongMap!16465 0))(
  ( (ListLongMap!16466 (toList!8248 List!25274)) )
))
(declare-fun call!53758 () ListLongMap!16465)

(declare-fun bm!53750 () Bool)

(declare-datatypes ((ValueCell!13731 0))(
  ( (ValueCellFull!13731 (v!17135 V!43635)) (EmptyCell!13731) )
))
(declare-datatypes ((array!74568 0))(
  ( (array!74569 (arr!35931 (Array (_ BitVec 32) ValueCell!13731)) (size!36468 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!74568)

(declare-fun minValue!944 () V!43635)

(declare-fun getCurrentListMapNoExtraKeys!4689 (array!74566 array!74568 (_ BitVec 32) (_ BitVec 32) V!43635 V!43635 (_ BitVec 32) Int) ListLongMap!16465)

(assert (=> bm!53750 (= call!53758 (getCurrentListMapNoExtraKeys!4689 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1151095 () Bool)

(declare-fun res!765614 () Bool)

(declare-fun e!654742 () Bool)

(assert (=> b!1151095 (=> (not res!765614) (not e!654742))))

(declare-fun i!673 () (_ BitVec 32))

(declare-fun k0!934 () (_ BitVec 64))

(assert (=> b!1151095 (= res!765614 (= (select (arr!35930 _keys!1208) i!673) k0!934))))

(declare-fun call!53760 () ListLongMap!16465)

(declare-fun b!1151096 () Bool)

(declare-fun e!654753 () Bool)

(declare-fun -!1333 (ListLongMap!16465 (_ BitVec 64)) ListLongMap!16465)

(assert (=> b!1151096 (= e!654753 (= call!53760 (-!1333 call!53758 k0!934)))))

(declare-fun b!1151097 () Bool)

(declare-fun e!654745 () Bool)

(declare-fun e!654747 () Bool)

(assert (=> b!1151097 (= e!654745 e!654747)))

(declare-fun res!765623 () Bool)

(assert (=> b!1151097 (=> res!765623 e!654747)))

(assert (=> b!1151097 (= res!765623 (not (= from!1455 i!673)))))

(declare-fun lt!515274 () array!74566)

(declare-fun lt!515273 () ListLongMap!16465)

(declare-fun lt!515283 () array!74568)

(assert (=> b!1151097 (= lt!515273 (getCurrentListMapNoExtraKeys!4689 lt!515274 lt!515283 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun lt!515265 () V!43635)

(assert (=> b!1151097 (= lt!515283 (array!74569 (store (arr!35931 _values!996) i!673 (ValueCellFull!13731 lt!515265)) (size!36468 _values!996)))))

(declare-fun dynLambda!2716 (Int (_ BitVec 64)) V!43635)

(assert (=> b!1151097 (= lt!515265 (dynLambda!2716 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!515279 () ListLongMap!16465)

(assert (=> b!1151097 (= lt!515279 (getCurrentListMapNoExtraKeys!4689 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun bm!53751 () Bool)

(declare-fun c!113967 () Bool)

(declare-fun lt!515270 () ListLongMap!16465)

(declare-fun c!113970 () Bool)

(declare-fun call!53755 () ListLongMap!16465)

(declare-fun +!3584 (ListLongMap!16465 tuple2!18484) ListLongMap!16465)

(assert (=> bm!53751 (= call!53755 (+!3584 lt!515270 (ite (or c!113970 c!113967) (tuple2!18485 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!18485 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944))))))

(declare-fun b!1151098 () Bool)

(declare-fun call!53759 () Bool)

(assert (=> b!1151098 call!53759))

(declare-fun lt!515277 () Unit!37780)

(declare-fun call!53754 () Unit!37780)

(assert (=> b!1151098 (= lt!515277 call!53754)))

(assert (=> b!1151098 (= e!654743 lt!515277)))

(declare-fun mapIsEmpty!45146 () Bool)

(declare-fun mapRes!45146 () Bool)

(assert (=> mapIsEmpty!45146 mapRes!45146))

(declare-fun b!1151099 () Bool)

(declare-fun e!654739 () Bool)

(declare-fun tp_is_empty!28881 () Bool)

(assert (=> b!1151099 (= e!654739 tp_is_empty!28881)))

(declare-fun b!1151100 () Bool)

(declare-fun e!654738 () Bool)

(assert (=> b!1151100 (= e!654747 e!654738)))

(declare-fun res!765609 () Bool)

(assert (=> b!1151100 (=> res!765609 e!654738)))

(assert (=> b!1151100 (= res!765609 (not (= (select (arr!35930 _keys!1208) from!1455) k0!934)))))

(assert (=> b!1151100 e!654753))

(declare-fun c!113968 () Bool)

(assert (=> b!1151100 (= c!113968 (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673))))

(declare-fun lt!515268 () Unit!37780)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!570 (array!74566 array!74568 (_ BitVec 32) (_ BitVec 32) V!43635 V!43635 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!37780)

(assert (=> b!1151100 (= lt!515268 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!570 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun e!654740 () Bool)

(declare-fun lt!515275 () Bool)

(declare-fun b!1151101 () Bool)

(assert (=> b!1151101 (= e!654740 (ite (= k0!934 #b0000000000000000000000000000000000000000000000000000000000000000) (not lt!515275) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!1151102 () Bool)

(declare-fun res!765610 () Bool)

(assert (=> b!1151102 (=> (not res!765610) (not e!654742))))

(assert (=> b!1151102 (= res!765610 (and (= (size!36468 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!36467 _keys!1208) (size!36468 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun bm!53752 () Bool)

(declare-fun call!53756 () Unit!37780)

(assert (=> bm!53752 (= call!53754 call!53756)))

(declare-fun lt!515272 () ListLongMap!16465)

(declare-fun call!53753 () Bool)

(declare-fun call!53757 () ListLongMap!16465)

(declare-fun bm!53753 () Bool)

(declare-fun contains!6742 (ListLongMap!16465 (_ BitVec 64)) Bool)

(assert (=> bm!53753 (= call!53753 (contains!6742 (ite c!113970 lt!515272 call!53757) k0!934))))

(declare-fun b!1151103 () Bool)

(declare-fun res!765620 () Bool)

(assert (=> b!1151103 (=> (not res!765620) (not e!654742))))

(assert (=> b!1151103 (= res!765620 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!36467 _keys!1208))))))

(declare-fun res!765618 () Bool)

(assert (=> start!98782 (=> (not res!765618) (not e!654742))))

(assert (=> start!98782 (= res!765618 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!36467 _keys!1208))))))

(assert (=> start!98782 e!654742))

(assert (=> start!98782 tp_is_empty!28881))

(declare-fun array_inv!27394 (array!74566) Bool)

(assert (=> start!98782 (array_inv!27394 _keys!1208)))

(assert (=> start!98782 true))

(assert (=> start!98782 tp!85764))

(declare-fun e!654737 () Bool)

(declare-fun array_inv!27395 (array!74568) Bool)

(assert (=> start!98782 (and (array_inv!27395 _values!996) e!654737)))

(declare-fun b!1151104 () Bool)

(declare-fun e!654741 () Unit!37780)

(declare-fun lt!515266 () Unit!37780)

(assert (=> b!1151104 (= e!654741 lt!515266)))

(assert (=> b!1151104 (= lt!515266 call!53754)))

(assert (=> b!1151104 call!53759))

(declare-fun bm!53754 () Bool)

(assert (=> bm!53754 (= call!53760 (getCurrentListMapNoExtraKeys!4689 lt!515274 lt!515283 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1151105 () Bool)

(assert (=> b!1151105 (= e!654753 (= call!53760 call!53758))))

(declare-fun b!1151106 () Bool)

(declare-fun res!765615 () Bool)

(assert (=> b!1151106 (=> (not res!765615) (not e!654742))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1151106 (= res!765615 (validMask!0 mask!1564))))

(declare-fun b!1151107 () Bool)

(declare-fun e!654746 () Bool)

(assert (=> b!1151107 (= e!654746 (not e!654745))))

(declare-fun res!765619 () Bool)

(assert (=> b!1151107 (=> res!765619 e!654745)))

(assert (=> b!1151107 (= res!765619 (bvsgt from!1455 i!673))))

(declare-fun arrayContainsKey!0 (array!74566 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1151107 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-fun lt!515278 () Unit!37780)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!74566 (_ BitVec 64) (_ BitVec 32)) Unit!37780)

(assert (=> b!1151107 (= lt!515278 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1151108 () Bool)

(declare-fun e!654752 () Bool)

(assert (=> b!1151108 (= e!654752 tp_is_empty!28881)))

(declare-fun b!1151109 () Bool)

(assert (=> b!1151109 (contains!6742 (+!3584 lt!515272 (tuple2!18485 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944)) k0!934)))

(declare-fun lt!515263 () Unit!37780)

(assert (=> b!1151109 (= lt!515263 call!53756)))

(assert (=> b!1151109 call!53753))

(assert (=> b!1151109 (= lt!515272 call!53755)))

(declare-fun lt!515281 () Unit!37780)

(declare-fun addStillContains!884 (ListLongMap!16465 (_ BitVec 64) V!43635 (_ BitVec 64)) Unit!37780)

(assert (=> b!1151109 (= lt!515281 (addStillContains!884 lt!515270 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944 k0!934))))

(declare-fun e!654751 () Unit!37780)

(assert (=> b!1151109 (= e!654751 lt!515263)))

(declare-fun b!1151110 () Bool)

(assert (=> b!1151110 (= e!654740 (arrayContainsKey!0 _keys!1208 k0!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun b!1151111 () Bool)

(assert (=> b!1151111 (= e!654742 e!654746)))

(declare-fun res!765611 () Bool)

(assert (=> b!1151111 (=> (not res!765611) (not e!654746))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!74566 (_ BitVec 32)) Bool)

(assert (=> b!1151111 (= res!765611 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!515274 mask!1564))))

(assert (=> b!1151111 (= lt!515274 (array!74567 (store (arr!35930 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!36467 _keys!1208)))))

(declare-fun b!1151112 () Bool)

(declare-fun res!765612 () Bool)

(assert (=> b!1151112 (=> (not res!765612) (not e!654742))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1151112 (= res!765612 (validKeyInArray!0 k0!934))))

(declare-fun b!1151113 () Bool)

(declare-fun res!765622 () Bool)

(assert (=> b!1151113 (=> (not res!765622) (not e!654742))))

(declare-datatypes ((List!25275 0))(
  ( (Nil!25272) (Cons!25271 (h!26480 (_ BitVec 64)) (t!36625 List!25275)) )
))
(declare-fun arrayNoDuplicates!0 (array!74566 (_ BitVec 32) List!25275) Bool)

(assert (=> b!1151113 (= res!765622 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!25272))))

(declare-fun b!1151114 () Bool)

(assert (=> b!1151114 (= c!113967 (and (not lt!515275) (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(assert (=> b!1151114 (= e!654751 e!654741)))

(declare-fun b!1151115 () Bool)

(assert (=> b!1151115 (= e!654738 true)))

(declare-fun e!654750 () Bool)

(assert (=> b!1151115 e!654750))

(declare-fun res!765621 () Bool)

(assert (=> b!1151115 (=> (not res!765621) (not e!654750))))

(declare-fun lt!515264 () ListLongMap!16465)

(assert (=> b!1151115 (= res!765621 (= lt!515264 lt!515270))))

(assert (=> b!1151115 (= lt!515264 (-!1333 lt!515279 k0!934))))

(declare-fun lt!515282 () V!43635)

(assert (=> b!1151115 (= (-!1333 (+!3584 lt!515270 (tuple2!18485 (select (arr!35930 _keys!1208) from!1455) lt!515282)) (select (arr!35930 _keys!1208) from!1455)) lt!515270)))

(declare-fun lt!515269 () Unit!37780)

(declare-fun addThenRemoveForNewKeyIsSame!182 (ListLongMap!16465 (_ BitVec 64) V!43635) Unit!37780)

(assert (=> b!1151115 (= lt!515269 (addThenRemoveForNewKeyIsSame!182 lt!515270 (select (arr!35930 _keys!1208) from!1455) lt!515282))))

(declare-fun get!18320 (ValueCell!13731 V!43635) V!43635)

(assert (=> b!1151115 (= lt!515282 (get!18320 (select (arr!35931 _values!996) from!1455) lt!515265))))

(declare-fun lt!515280 () Unit!37780)

(declare-fun e!654744 () Unit!37780)

(assert (=> b!1151115 (= lt!515280 e!654744)))

(declare-fun c!113966 () Bool)

(assert (=> b!1151115 (= c!113966 (contains!6742 lt!515270 k0!934))))

(assert (=> b!1151115 (= lt!515270 (getCurrentListMapNoExtraKeys!4689 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1151116 () Bool)

(declare-fun Unit!37783 () Unit!37780)

(assert (=> b!1151116 (= e!654744 Unit!37783)))

(declare-fun b!1151117 () Bool)

(assert (=> b!1151117 (= e!654750 (= lt!515264 (getCurrentListMapNoExtraKeys!4689 lt!515274 lt!515283 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004)))))

(declare-fun b!1151118 () Bool)

(declare-fun res!765613 () Bool)

(assert (=> b!1151118 (=> (not res!765613) (not e!654742))))

(assert (=> b!1151118 (= res!765613 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1151119 () Bool)

(declare-fun Unit!37784 () Unit!37780)

(assert (=> b!1151119 (= e!654744 Unit!37784)))

(assert (=> b!1151119 (= lt!515275 (= (bvand extraKeys!923 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(assert (=> b!1151119 (= c!113970 (and (not lt!515275) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun lt!515267 () Unit!37780)

(assert (=> b!1151119 (= lt!515267 e!654751)))

(declare-fun lt!515271 () Unit!37780)

(declare-fun lemmaListMapContainsThenArrayContainsFrom!468 (array!74566 array!74568 (_ BitVec 32) (_ BitVec 32) V!43635 V!43635 (_ BitVec 64) (_ BitVec 32) Int) Unit!37780)

(assert (=> b!1151119 (= lt!515271 (lemmaListMapContainsThenArrayContainsFrom!468 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun c!113969 () Bool)

(assert (=> b!1151119 (= c!113969 (and (not (= k0!934 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!934 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun res!765617 () Bool)

(assert (=> b!1151119 (= res!765617 e!654740)))

(declare-fun e!654749 () Bool)

(assert (=> b!1151119 (=> (not res!765617) (not e!654749))))

(assert (=> b!1151119 e!654749))

(declare-fun lt!515262 () Unit!37780)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!74566 (_ BitVec 32) (_ BitVec 32)) Unit!37780)

(assert (=> b!1151119 (= lt!515262 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1208 #b00000000000000000000000000000000 from!1455))))

(assert (=> b!1151119 (arrayNoDuplicates!0 _keys!1208 from!1455 Nil!25272)))

(declare-fun lt!515276 () Unit!37780)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!74566 (_ BitVec 64) (_ BitVec 32) List!25275) Unit!37780)

(assert (=> b!1151119 (= lt!515276 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!1208 k0!934 from!1455 Nil!25272))))

(assert (=> b!1151119 false))

(declare-fun b!1151120 () Bool)

(assert (=> b!1151120 (= e!654737 (and e!654752 mapRes!45146))))

(declare-fun condMapEmpty!45146 () Bool)

(declare-fun mapDefault!45146 () ValueCell!13731)

(assert (=> b!1151120 (= condMapEmpty!45146 (= (arr!35931 _values!996) ((as const (Array (_ BitVec 32) ValueCell!13731)) mapDefault!45146)))))

(declare-fun b!1151121 () Bool)

(declare-fun res!765616 () Bool)

(assert (=> b!1151121 (=> (not res!765616) (not e!654746))))

(assert (=> b!1151121 (= res!765616 (arrayNoDuplicates!0 lt!515274 #b00000000000000000000000000000000 Nil!25272))))

(declare-fun bm!53755 () Bool)

(assert (=> bm!53755 (= call!53759 call!53753)))

(declare-fun b!1151122 () Bool)

(assert (=> b!1151122 (= e!654741 e!654743)))

(declare-fun c!113965 () Bool)

(assert (=> b!1151122 (= c!113965 (and (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!515275))))

(declare-fun b!1151123 () Bool)

(assert (=> b!1151123 (= e!654749 (arrayContainsKey!0 _keys!1208 k0!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun mapNonEmpty!45146 () Bool)

(declare-fun tp!85765 () Bool)

(assert (=> mapNonEmpty!45146 (= mapRes!45146 (and tp!85765 e!654739))))

(declare-fun mapRest!45146 () (Array (_ BitVec 32) ValueCell!13731))

(declare-fun mapValue!45146 () ValueCell!13731)

(declare-fun mapKey!45146 () (_ BitVec 32))

(assert (=> mapNonEmpty!45146 (= (arr!35931 _values!996) (store mapRest!45146 mapKey!45146 mapValue!45146))))

(declare-fun bm!53756 () Bool)

(assert (=> bm!53756 (= call!53756 (addStillContains!884 (ite c!113970 lt!515272 lt!515270) (ite c!113970 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!113967 #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000)) (ite c!113970 minValue!944 (ite c!113967 zeroValue!944 minValue!944)) k0!934))))

(declare-fun bm!53757 () Bool)

(assert (=> bm!53757 (= call!53757 call!53755)))

(assert (= (and start!98782 res!765618) b!1151106))

(assert (= (and b!1151106 res!765615) b!1151102))

(assert (= (and b!1151102 res!765610) b!1151118))

(assert (= (and b!1151118 res!765613) b!1151113))

(assert (= (and b!1151113 res!765622) b!1151103))

(assert (= (and b!1151103 res!765620) b!1151112))

(assert (= (and b!1151112 res!765612) b!1151095))

(assert (= (and b!1151095 res!765614) b!1151111))

(assert (= (and b!1151111 res!765611) b!1151121))

(assert (= (and b!1151121 res!765616) b!1151107))

(assert (= (and b!1151107 (not res!765619)) b!1151097))

(assert (= (and b!1151097 (not res!765623)) b!1151100))

(assert (= (and b!1151100 c!113968) b!1151096))

(assert (= (and b!1151100 (not c!113968)) b!1151105))

(assert (= (or b!1151096 b!1151105) bm!53754))

(assert (= (or b!1151096 b!1151105) bm!53750))

(assert (= (and b!1151100 (not res!765609)) b!1151115))

(assert (= (and b!1151115 c!113966) b!1151119))

(assert (= (and b!1151115 (not c!113966)) b!1151116))

(assert (= (and b!1151119 c!113970) b!1151109))

(assert (= (and b!1151119 (not c!113970)) b!1151114))

(assert (= (and b!1151114 c!113967) b!1151104))

(assert (= (and b!1151114 (not c!113967)) b!1151122))

(assert (= (and b!1151122 c!113965) b!1151098))

(assert (= (and b!1151122 (not c!113965)) b!1151094))

(assert (= (or b!1151104 b!1151098) bm!53752))

(assert (= (or b!1151104 b!1151098) bm!53757))

(assert (= (or b!1151104 b!1151098) bm!53755))

(assert (= (or b!1151109 bm!53755) bm!53753))

(assert (= (or b!1151109 bm!53752) bm!53756))

(assert (= (or b!1151109 bm!53757) bm!53751))

(assert (= (and b!1151119 c!113969) b!1151110))

(assert (= (and b!1151119 (not c!113969)) b!1151101))

(assert (= (and b!1151119 res!765617) b!1151123))

(assert (= (and b!1151115 res!765621) b!1151117))

(assert (= (and b!1151120 condMapEmpty!45146) mapIsEmpty!45146))

(assert (= (and b!1151120 (not condMapEmpty!45146)) mapNonEmpty!45146))

(get-info :version)

(assert (= (and mapNonEmpty!45146 ((_ is ValueCellFull!13731) mapValue!45146)) b!1151099))

(assert (= (and b!1151120 ((_ is ValueCellFull!13731) mapDefault!45146)) b!1151108))

(assert (= start!98782 b!1151120))

(declare-fun b_lambda!19475 () Bool)

(assert (=> (not b_lambda!19475) (not b!1151097)))

(declare-fun t!36623 () Bool)

(declare-fun tb!9171 () Bool)

(assert (=> (and start!98782 (= defaultEntry!1004 defaultEntry!1004) t!36623) tb!9171))

(declare-fun result!18899 () Bool)

(assert (=> tb!9171 (= result!18899 tp_is_empty!28881)))

(assert (=> b!1151097 t!36623))

(declare-fun b_and!39567 () Bool)

(assert (= b_and!39565 (and (=> t!36623 result!18899) b_and!39567)))

(declare-fun m!1061299 () Bool)

(assert (=> b!1151118 m!1061299))

(declare-fun m!1061301 () Bool)

(assert (=> b!1151119 m!1061301))

(declare-fun m!1061303 () Bool)

(assert (=> b!1151119 m!1061303))

(declare-fun m!1061305 () Bool)

(assert (=> b!1151119 m!1061305))

(declare-fun m!1061307 () Bool)

(assert (=> b!1151119 m!1061307))

(declare-fun m!1061309 () Bool)

(assert (=> b!1151109 m!1061309))

(assert (=> b!1151109 m!1061309))

(declare-fun m!1061311 () Bool)

(assert (=> b!1151109 m!1061311))

(declare-fun m!1061313 () Bool)

(assert (=> b!1151109 m!1061313))

(declare-fun m!1061315 () Bool)

(assert (=> b!1151106 m!1061315))

(declare-fun m!1061317 () Bool)

(assert (=> b!1151117 m!1061317))

(declare-fun m!1061319 () Bool)

(assert (=> bm!53751 m!1061319))

(declare-fun m!1061321 () Bool)

(assert (=> b!1151100 m!1061321))

(declare-fun m!1061323 () Bool)

(assert (=> b!1151100 m!1061323))

(declare-fun m!1061325 () Bool)

(assert (=> b!1151115 m!1061325))

(declare-fun m!1061327 () Bool)

(assert (=> b!1151115 m!1061327))

(assert (=> b!1151115 m!1061327))

(declare-fun m!1061329 () Bool)

(assert (=> b!1151115 m!1061329))

(declare-fun m!1061331 () Bool)

(assert (=> b!1151115 m!1061331))

(declare-fun m!1061333 () Bool)

(assert (=> b!1151115 m!1061333))

(assert (=> b!1151115 m!1061321))

(declare-fun m!1061335 () Bool)

(assert (=> b!1151115 m!1061335))

(assert (=> b!1151115 m!1061333))

(declare-fun m!1061337 () Bool)

(assert (=> b!1151115 m!1061337))

(assert (=> b!1151115 m!1061321))

(declare-fun m!1061339 () Bool)

(assert (=> b!1151115 m!1061339))

(assert (=> b!1151115 m!1061321))

(declare-fun m!1061341 () Bool)

(assert (=> b!1151096 m!1061341))

(declare-fun m!1061343 () Bool)

(assert (=> start!98782 m!1061343))

(declare-fun m!1061345 () Bool)

(assert (=> start!98782 m!1061345))

(declare-fun m!1061347 () Bool)

(assert (=> b!1151097 m!1061347))

(declare-fun m!1061349 () Bool)

(assert (=> b!1151097 m!1061349))

(declare-fun m!1061351 () Bool)

(assert (=> b!1151097 m!1061351))

(declare-fun m!1061353 () Bool)

(assert (=> b!1151097 m!1061353))

(declare-fun m!1061355 () Bool)

(assert (=> b!1151123 m!1061355))

(assert (=> bm!53754 m!1061317))

(declare-fun m!1061357 () Bool)

(assert (=> b!1151111 m!1061357))

(declare-fun m!1061359 () Bool)

(assert (=> b!1151111 m!1061359))

(declare-fun m!1061361 () Bool)

(assert (=> b!1151121 m!1061361))

(declare-fun m!1061363 () Bool)

(assert (=> b!1151107 m!1061363))

(declare-fun m!1061365 () Bool)

(assert (=> b!1151107 m!1061365))

(declare-fun m!1061367 () Bool)

(assert (=> b!1151113 m!1061367))

(declare-fun m!1061369 () Bool)

(assert (=> mapNonEmpty!45146 m!1061369))

(declare-fun m!1061371 () Bool)

(assert (=> b!1151112 m!1061371))

(declare-fun m!1061373 () Bool)

(assert (=> bm!53756 m!1061373))

(declare-fun m!1061375 () Bool)

(assert (=> bm!53753 m!1061375))

(assert (=> b!1151110 m!1061355))

(assert (=> bm!53750 m!1061325))

(declare-fun m!1061377 () Bool)

(assert (=> b!1151095 m!1061377))

(check-sat (not bm!53754) (not bm!53756) (not bm!53751) (not b!1151106) (not b!1151110) (not b!1151117) (not b!1151119) tp_is_empty!28881 b_and!39567 (not b!1151109) (not b!1151096) (not b!1151111) (not bm!53750) (not b_next!24351) (not b!1151115) (not b!1151123) (not b!1151112) (not b!1151113) (not start!98782) (not b!1151107) (not b!1151097) (not b!1151100) (not b!1151121) (not b_lambda!19475) (not mapNonEmpty!45146) (not b!1151118) (not bm!53753))
(check-sat b_and!39567 (not b_next!24351))
