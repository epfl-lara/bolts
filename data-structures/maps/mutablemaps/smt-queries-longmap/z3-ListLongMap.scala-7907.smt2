; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!98224 () Bool)

(assert start!98224)

(declare-fun b_free!23889 () Bool)

(declare-fun b_next!23889 () Bool)

(assert (=> start!98224 (= b_free!23889 (not b_next!23889))))

(declare-fun tp!84371 () Bool)

(declare-fun b_and!38583 () Bool)

(assert (=> start!98224 (= tp!84371 b_and!38583)))

(declare-fun b!1129730 () Bool)

(declare-fun res!754980 () Bool)

(declare-fun e!642991 () Bool)

(assert (=> b!1129730 (=> (not res!754980) (not e!642991))))

(declare-datatypes ((array!73656 0))(
  ( (array!73657 (arr!35477 (Array (_ BitVec 32) (_ BitVec 64))) (size!36014 (_ BitVec 32))) )
))
(declare-fun lt!501590 () array!73656)

(declare-datatypes ((List!24875 0))(
  ( (Nil!24872) (Cons!24871 (h!26080 (_ BitVec 64)) (t!35763 List!24875)) )
))
(declare-fun arrayNoDuplicates!0 (array!73656 (_ BitVec 32) List!24875) Bool)

(assert (=> b!1129730 (= res!754980 (arrayNoDuplicates!0 lt!501590 #b00000000000000000000000000000000 Nil!24872))))

(declare-fun b!1129731 () Bool)

(declare-fun e!642994 () Bool)

(assert (=> b!1129731 (= e!642994 true)))

(declare-datatypes ((V!43019 0))(
  ( (V!43020 (val!14266 Int)) )
))
(declare-fun zeroValue!944 () V!43019)

(declare-fun _keys!1208 () array!73656)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-fun k0!934 () (_ BitVec 64))

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun lt!501580 () Bool)

(declare-datatypes ((ValueCell!13500 0))(
  ( (ValueCellFull!13500 (v!16900 V!43019)) (EmptyCell!13500) )
))
(declare-datatypes ((array!73658 0))(
  ( (array!73659 (arr!35478 (Array (_ BitVec 32) ValueCell!13500)) (size!36015 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!73658)

(declare-fun minValue!944 () V!43019)

(declare-datatypes ((tuple2!18056 0))(
  ( (tuple2!18057 (_1!9038 (_ BitVec 64)) (_2!9038 V!43019)) )
))
(declare-datatypes ((List!24876 0))(
  ( (Nil!24873) (Cons!24872 (h!26081 tuple2!18056) (t!35764 List!24876)) )
))
(declare-datatypes ((ListLongMap!16037 0))(
  ( (ListLongMap!16038 (toList!8034 List!24876)) )
))
(declare-fun contains!6528 (ListLongMap!16037 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!4438 (array!73656 array!73658 (_ BitVec 32) (_ BitVec 32) V!43019 V!43019 (_ BitVec 32) Int) ListLongMap!16037)

(assert (=> b!1129731 (= lt!501580 (contains!6528 (getCurrentListMap!4438 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004) k0!934))))

(declare-fun b!1129732 () Bool)

(declare-fun res!754981 () Bool)

(declare-fun e!642993 () Bool)

(assert (=> b!1129732 (=> (not res!754981) (not e!642993))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1129732 (= res!754981 (validKeyInArray!0 k0!934))))

(declare-fun b!1129733 () Bool)

(declare-fun res!754989 () Bool)

(assert (=> b!1129733 (=> (not res!754989) (not e!642993))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1129733 (= res!754989 (validMask!0 mask!1564))))

(declare-fun res!754979 () Bool)

(assert (=> start!98224 (=> (not res!754979) (not e!642993))))

(assert (=> start!98224 (= res!754979 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!36014 _keys!1208))))))

(assert (=> start!98224 e!642993))

(declare-fun tp_is_empty!28419 () Bool)

(assert (=> start!98224 tp_is_empty!28419))

(declare-fun array_inv!27082 (array!73656) Bool)

(assert (=> start!98224 (array_inv!27082 _keys!1208)))

(assert (=> start!98224 true))

(assert (=> start!98224 tp!84371))

(declare-fun e!642984 () Bool)

(declare-fun array_inv!27083 (array!73658) Bool)

(assert (=> start!98224 (and (array_inv!27083 _values!996) e!642984)))

(declare-fun mapNonEmpty!44446 () Bool)

(declare-fun mapRes!44446 () Bool)

(declare-fun tp!84372 () Bool)

(declare-fun e!642992 () Bool)

(assert (=> mapNonEmpty!44446 (= mapRes!44446 (and tp!84372 e!642992))))

(declare-fun mapRest!44446 () (Array (_ BitVec 32) ValueCell!13500))

(declare-fun mapKey!44446 () (_ BitVec 32))

(declare-fun mapValue!44446 () ValueCell!13500)

(assert (=> mapNonEmpty!44446 (= (arr!35478 _values!996) (store mapRest!44446 mapKey!44446 mapValue!44446))))

(declare-fun b!1129734 () Bool)

(declare-fun e!642985 () Bool)

(assert (=> b!1129734 (= e!642984 (and e!642985 mapRes!44446))))

(declare-fun condMapEmpty!44446 () Bool)

(declare-fun mapDefault!44446 () ValueCell!13500)

(assert (=> b!1129734 (= condMapEmpty!44446 (= (arr!35478 _values!996) ((as const (Array (_ BitVec 32) ValueCell!13500)) mapDefault!44446)))))

(declare-fun b!1129735 () Bool)

(declare-datatypes ((Unit!36959 0))(
  ( (Unit!36960) )
))
(declare-fun e!642989 () Unit!36959)

(declare-fun lt!501581 () Unit!36959)

(assert (=> b!1129735 (= e!642989 lt!501581)))

(declare-fun call!48142 () Unit!36959)

(assert (=> b!1129735 (= lt!501581 call!48142)))

(declare-fun call!48147 () Bool)

(assert (=> b!1129735 call!48147))

(declare-fun b!1129736 () Bool)

(assert (=> b!1129736 (= e!642985 tp_is_empty!28419)))

(declare-fun b!1129737 () Bool)

(assert (=> b!1129737 (= e!642993 e!642991)))

(declare-fun res!754991 () Bool)

(assert (=> b!1129737 (=> (not res!754991) (not e!642991))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!73656 (_ BitVec 32)) Bool)

(assert (=> b!1129737 (= res!754991 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!501590 mask!1564))))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1129737 (= lt!501590 (array!73657 (store (arr!35477 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!36014 _keys!1208)))))

(declare-fun b!1129738 () Bool)

(declare-fun e!642998 () Bool)

(assert (=> b!1129738 (= e!642991 (not e!642998))))

(declare-fun res!754984 () Bool)

(assert (=> b!1129738 (=> res!754984 e!642998)))

(assert (=> b!1129738 (= res!754984 (bvsgt from!1455 i!673))))

(declare-fun arrayContainsKey!0 (array!73656 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1129738 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-fun lt!501589 () Unit!36959)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!73656 (_ BitVec 64) (_ BitVec 32)) Unit!36959)

(assert (=> b!1129738 (= lt!501589 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1129739 () Bool)

(declare-fun e!642988 () Bool)

(assert (=> b!1129739 (= e!642998 e!642988)))

(declare-fun res!754985 () Bool)

(assert (=> b!1129739 (=> res!754985 e!642988)))

(assert (=> b!1129739 (= res!754985 (not (= from!1455 i!673)))))

(declare-fun lt!501588 () array!73658)

(declare-fun lt!501583 () ListLongMap!16037)

(declare-fun getCurrentListMapNoExtraKeys!4487 (array!73656 array!73658 (_ BitVec 32) (_ BitVec 32) V!43019 V!43019 (_ BitVec 32) Int) ListLongMap!16037)

(assert (=> b!1129739 (= lt!501583 (getCurrentListMapNoExtraKeys!4487 lt!501590 lt!501588 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun dynLambda!2564 (Int (_ BitVec 64)) V!43019)

(assert (=> b!1129739 (= lt!501588 (array!73659 (store (arr!35478 _values!996) i!673 (ValueCellFull!13500 (dynLambda!2564 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!36015 _values!996)))))

(declare-fun lt!501586 () ListLongMap!16037)

(assert (=> b!1129739 (= lt!501586 (getCurrentListMapNoExtraKeys!4487 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1129740 () Bool)

(declare-fun e!642986 () Bool)

(assert (=> b!1129740 (= e!642988 e!642986)))

(declare-fun res!754978 () Bool)

(assert (=> b!1129740 (=> res!754978 e!642986)))

(assert (=> b!1129740 (= res!754978 (not (= (select (arr!35477 _keys!1208) from!1455) k0!934)))))

(declare-fun e!642995 () Bool)

(assert (=> b!1129740 e!642995))

(declare-fun c!109880 () Bool)

(assert (=> b!1129740 (= c!109880 (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673))))

(declare-fun lt!501584 () Unit!36959)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!417 (array!73656 array!73658 (_ BitVec 32) (_ BitVec 32) V!43019 V!43019 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!36959)

(assert (=> b!1129740 (= lt!501584 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!417 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1129741 () Bool)

(declare-fun e!642990 () Bool)

(assert (=> b!1129741 (= e!642990 e!642994)))

(declare-fun res!754982 () Bool)

(assert (=> b!1129741 (=> res!754982 e!642994)))

(assert (=> b!1129741 (= res!754982 (or (bvslt (bvadd #b00000000000000000000000000000001 from!1455) #b00000000000000000000000000000000) (bvsge (bvadd #b00000000000000000000000000000001 from!1455) (size!36014 _keys!1208))))))

(declare-fun lt!501587 () Unit!36959)

(declare-fun e!642996 () Unit!36959)

(assert (=> b!1129741 (= lt!501587 e!642996)))

(declare-fun c!109882 () Bool)

(declare-fun lt!501591 () Bool)

(assert (=> b!1129741 (= c!109882 (and (not lt!501591) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> b!1129741 (= lt!501591 (= (bvand extraKeys!923 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(declare-fun call!48143 () ListLongMap!16037)

(declare-fun lt!501582 () ListLongMap!16037)

(declare-fun call!48146 () Bool)

(declare-fun bm!48139 () Bool)

(assert (=> bm!48139 (= call!48146 (contains!6528 (ite c!109882 lt!501582 call!48143) k0!934))))

(declare-fun b!1129742 () Bool)

(declare-fun res!754992 () Bool)

(assert (=> b!1129742 (=> (not res!754992) (not e!642993))))

(assert (=> b!1129742 (= res!754992 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!24872))))

(declare-fun b!1129743 () Bool)

(declare-fun res!754990 () Bool)

(assert (=> b!1129743 (=> (not res!754990) (not e!642993))))

(assert (=> b!1129743 (= res!754990 (and (= (size!36015 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!36014 _keys!1208) (size!36015 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun bm!48140 () Bool)

(declare-fun call!48145 () ListLongMap!16037)

(assert (=> bm!48140 (= call!48145 (getCurrentListMapNoExtraKeys!4487 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1129744 () Bool)

(declare-fun lt!501594 () Unit!36959)

(assert (=> b!1129744 (= e!642996 lt!501594)))

(declare-fun lt!501592 () Unit!36959)

(declare-fun call!48148 () Unit!36959)

(assert (=> b!1129744 (= lt!501592 call!48148)))

(declare-fun call!48144 () ListLongMap!16037)

(assert (=> b!1129744 (= lt!501582 call!48144)))

(assert (=> b!1129744 call!48146))

(declare-fun addStillContains!701 (ListLongMap!16037 (_ BitVec 64) V!43019 (_ BitVec 64)) Unit!36959)

(assert (=> b!1129744 (= lt!501594 (addStillContains!701 lt!501582 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944 k0!934))))

(declare-fun +!3401 (ListLongMap!16037 tuple2!18056) ListLongMap!16037)

(assert (=> b!1129744 (contains!6528 (+!3401 lt!501582 (tuple2!18057 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944)) k0!934)))

(declare-fun b!1129745 () Bool)

(declare-fun res!754983 () Bool)

(assert (=> b!1129745 (=> (not res!754983) (not e!642993))))

(assert (=> b!1129745 (= res!754983 (= (select (arr!35477 _keys!1208) i!673) k0!934))))

(declare-fun b!1129746 () Bool)

(declare-fun c!109881 () Bool)

(assert (=> b!1129746 (= c!109881 (and (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!501591))))

(declare-fun e!642997 () Unit!36959)

(assert (=> b!1129746 (= e!642997 e!642989)))

(declare-fun b!1129747 () Bool)

(assert (=> b!1129747 (= e!642996 e!642997)))

(declare-fun c!109883 () Bool)

(assert (=> b!1129747 (= c!109883 (and (not lt!501591) (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1129748 () Bool)

(assert (=> b!1129748 (= e!642986 e!642990)))

(declare-fun res!754986 () Bool)

(assert (=> b!1129748 (=> res!754986 e!642990)))

(declare-fun lt!501585 () ListLongMap!16037)

(assert (=> b!1129748 (= res!754986 (not (contains!6528 lt!501585 k0!934)))))

(assert (=> b!1129748 (= lt!501585 (getCurrentListMapNoExtraKeys!4487 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun bm!48141 () Bool)

(assert (=> bm!48141 (= call!48148 (addStillContains!701 lt!501585 (ite (or c!109882 c!109883) #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000) (ite (or c!109882 c!109883) zeroValue!944 minValue!944) k0!934))))

(declare-fun b!1129749 () Bool)

(declare-fun call!48149 () ListLongMap!16037)

(declare-fun -!1163 (ListLongMap!16037 (_ BitVec 64)) ListLongMap!16037)

(assert (=> b!1129749 (= e!642995 (= call!48149 (-!1163 call!48145 k0!934)))))

(declare-fun bm!48142 () Bool)

(assert (=> bm!48142 (= call!48142 call!48148)))

(declare-fun bm!48143 () Bool)

(assert (=> bm!48143 (= call!48143 call!48144)))

(declare-fun b!1129750 () Bool)

(assert (=> b!1129750 (= e!642992 tp_is_empty!28419)))

(declare-fun b!1129751 () Bool)

(assert (=> b!1129751 (= e!642995 (= call!48149 call!48145))))

(declare-fun b!1129752 () Bool)

(declare-fun res!754987 () Bool)

(assert (=> b!1129752 (=> (not res!754987) (not e!642993))))

(assert (=> b!1129752 (= res!754987 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!36014 _keys!1208))))))

(declare-fun b!1129753 () Bool)

(assert (=> b!1129753 call!48147))

(declare-fun lt!501593 () Unit!36959)

(assert (=> b!1129753 (= lt!501593 call!48142)))

(assert (=> b!1129753 (= e!642997 lt!501593)))

(declare-fun bm!48144 () Bool)

(assert (=> bm!48144 (= call!48149 (getCurrentListMapNoExtraKeys!4487 lt!501590 lt!501588 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun bm!48145 () Bool)

(assert (=> bm!48145 (= call!48147 call!48146)))

(declare-fun b!1129754 () Bool)

(declare-fun Unit!36961 () Unit!36959)

(assert (=> b!1129754 (= e!642989 Unit!36961)))

(declare-fun bm!48146 () Bool)

(assert (=> bm!48146 (= call!48144 (+!3401 lt!501585 (ite (or c!109882 c!109883) (tuple2!18057 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!18057 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944))))))

(declare-fun b!1129755 () Bool)

(declare-fun res!754988 () Bool)

(assert (=> b!1129755 (=> (not res!754988) (not e!642993))))

(assert (=> b!1129755 (= res!754988 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun mapIsEmpty!44446 () Bool)

(assert (=> mapIsEmpty!44446 mapRes!44446))

(assert (= (and start!98224 res!754979) b!1129733))

(assert (= (and b!1129733 res!754989) b!1129743))

(assert (= (and b!1129743 res!754990) b!1129755))

(assert (= (and b!1129755 res!754988) b!1129742))

(assert (= (and b!1129742 res!754992) b!1129752))

(assert (= (and b!1129752 res!754987) b!1129732))

(assert (= (and b!1129732 res!754981) b!1129745))

(assert (= (and b!1129745 res!754983) b!1129737))

(assert (= (and b!1129737 res!754991) b!1129730))

(assert (= (and b!1129730 res!754980) b!1129738))

(assert (= (and b!1129738 (not res!754984)) b!1129739))

(assert (= (and b!1129739 (not res!754985)) b!1129740))

(assert (= (and b!1129740 c!109880) b!1129749))

(assert (= (and b!1129740 (not c!109880)) b!1129751))

(assert (= (or b!1129749 b!1129751) bm!48144))

(assert (= (or b!1129749 b!1129751) bm!48140))

(assert (= (and b!1129740 (not res!754978)) b!1129748))

(assert (= (and b!1129748 (not res!754986)) b!1129741))

(assert (= (and b!1129741 c!109882) b!1129744))

(assert (= (and b!1129741 (not c!109882)) b!1129747))

(assert (= (and b!1129747 c!109883) b!1129753))

(assert (= (and b!1129747 (not c!109883)) b!1129746))

(assert (= (and b!1129746 c!109881) b!1129735))

(assert (= (and b!1129746 (not c!109881)) b!1129754))

(assert (= (or b!1129753 b!1129735) bm!48142))

(assert (= (or b!1129753 b!1129735) bm!48143))

(assert (= (or b!1129753 b!1129735) bm!48145))

(assert (= (or b!1129744 bm!48145) bm!48139))

(assert (= (or b!1129744 bm!48142) bm!48141))

(assert (= (or b!1129744 bm!48143) bm!48146))

(assert (= (and b!1129741 (not res!754982)) b!1129731))

(assert (= (and b!1129734 condMapEmpty!44446) mapIsEmpty!44446))

(assert (= (and b!1129734 (not condMapEmpty!44446)) mapNonEmpty!44446))

(get-info :version)

(assert (= (and mapNonEmpty!44446 ((_ is ValueCellFull!13500) mapValue!44446)) b!1129750))

(assert (= (and b!1129734 ((_ is ValueCellFull!13500) mapDefault!44446)) b!1129736))

(assert (= start!98224 b!1129734))

(declare-fun b_lambda!18893 () Bool)

(assert (=> (not b_lambda!18893) (not b!1129739)))

(declare-fun t!35762 () Bool)

(declare-fun tb!8709 () Bool)

(assert (=> (and start!98224 (= defaultEntry!1004 defaultEntry!1004) t!35762) tb!8709))

(declare-fun result!17971 () Bool)

(assert (=> tb!8709 (= result!17971 tp_is_empty!28419)))

(assert (=> b!1129739 t!35762))

(declare-fun b_and!38585 () Bool)

(assert (= b_and!38583 (and (=> t!35762 result!17971) b_and!38585)))

(declare-fun m!1043157 () Bool)

(assert (=> start!98224 m!1043157))

(declare-fun m!1043159 () Bool)

(assert (=> start!98224 m!1043159))

(declare-fun m!1043161 () Bool)

(assert (=> b!1129737 m!1043161))

(declare-fun m!1043163 () Bool)

(assert (=> b!1129737 m!1043163))

(declare-fun m!1043165 () Bool)

(assert (=> bm!48140 m!1043165))

(declare-fun m!1043167 () Bool)

(assert (=> b!1129733 m!1043167))

(declare-fun m!1043169 () Bool)

(assert (=> b!1129748 m!1043169))

(assert (=> b!1129748 m!1043165))

(declare-fun m!1043171 () Bool)

(assert (=> b!1129742 m!1043171))

(declare-fun m!1043173 () Bool)

(assert (=> b!1129739 m!1043173))

(declare-fun m!1043175 () Bool)

(assert (=> b!1129739 m!1043175))

(declare-fun m!1043177 () Bool)

(assert (=> b!1129739 m!1043177))

(declare-fun m!1043179 () Bool)

(assert (=> b!1129739 m!1043179))

(declare-fun m!1043181 () Bool)

(assert (=> b!1129738 m!1043181))

(declare-fun m!1043183 () Bool)

(assert (=> b!1129738 m!1043183))

(declare-fun m!1043185 () Bool)

(assert (=> b!1129740 m!1043185))

(declare-fun m!1043187 () Bool)

(assert (=> b!1129740 m!1043187))

(declare-fun m!1043189 () Bool)

(assert (=> b!1129755 m!1043189))

(declare-fun m!1043191 () Bool)

(assert (=> bm!48141 m!1043191))

(declare-fun m!1043193 () Bool)

(assert (=> b!1129730 m!1043193))

(declare-fun m!1043195 () Bool)

(assert (=> bm!48139 m!1043195))

(declare-fun m!1043197 () Bool)

(assert (=> mapNonEmpty!44446 m!1043197))

(declare-fun m!1043199 () Bool)

(assert (=> bm!48144 m!1043199))

(declare-fun m!1043201 () Bool)

(assert (=> b!1129732 m!1043201))

(declare-fun m!1043203 () Bool)

(assert (=> b!1129745 m!1043203))

(declare-fun m!1043205 () Bool)

(assert (=> b!1129749 m!1043205))

(declare-fun m!1043207 () Bool)

(assert (=> b!1129744 m!1043207))

(declare-fun m!1043209 () Bool)

(assert (=> b!1129744 m!1043209))

(assert (=> b!1129744 m!1043209))

(declare-fun m!1043211 () Bool)

(assert (=> b!1129744 m!1043211))

(declare-fun m!1043213 () Bool)

(assert (=> b!1129731 m!1043213))

(assert (=> b!1129731 m!1043213))

(declare-fun m!1043215 () Bool)

(assert (=> b!1129731 m!1043215))

(declare-fun m!1043217 () Bool)

(assert (=> bm!48146 m!1043217))

(check-sat (not bm!48144) b_and!38585 (not b_next!23889) (not start!98224) (not b!1129744) tp_is_empty!28419 (not b!1129749) (not b!1129738) (not b!1129730) (not b!1129748) (not b!1129755) (not b!1129742) (not b!1129733) (not bm!48139) (not bm!48141) (not b!1129739) (not b_lambda!18893) (not b!1129737) (not b!1129740) (not b!1129732) (not b!1129731) (not mapNonEmpty!44446) (not bm!48140) (not bm!48146))
(check-sat b_and!38585 (not b_next!23889))
