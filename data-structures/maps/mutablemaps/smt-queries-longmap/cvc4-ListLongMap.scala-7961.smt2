; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!98646 () Bool)

(assert start!98646)

(declare-fun b_free!24215 () Bool)

(declare-fun b_next!24215 () Bool)

(assert (=> start!98646 (= b_free!24215 (not b_next!24215))))

(declare-fun tp!85356 () Bool)

(declare-fun b_and!39293 () Bool)

(assert (=> start!98646 (= tp!85356 b_and!39293)))

(declare-datatypes ((V!43453 0))(
  ( (V!43454 (val!14429 Int)) )
))
(declare-fun zeroValue!944 () V!43453)

(declare-datatypes ((tuple2!18356 0))(
  ( (tuple2!18357 (_1!9188 (_ BitVec 64)) (_2!9188 V!43453)) )
))
(declare-datatypes ((List!25156 0))(
  ( (Nil!25153) (Cons!25152 (h!26361 tuple2!18356) (t!36370 List!25156)) )
))
(declare-datatypes ((ListLongMap!16337 0))(
  ( (ListLongMap!16338 (toList!8184 List!25156)) )
))
(declare-fun lt!510916 () ListLongMap!16337)

(declare-fun c!112746 () Bool)

(declare-fun lt!510929 () ListLongMap!16337)

(declare-fun call!52121 () ListLongMap!16337)

(declare-fun bm!52118 () Bool)

(declare-fun minValue!944 () V!43453)

(declare-fun c!112744 () Bool)

(declare-fun +!3528 (ListLongMap!16337 tuple2!18356) ListLongMap!16337)

(assert (=> bm!52118 (= call!52121 (+!3528 (ite c!112744 lt!510929 lt!510916) (ite c!112744 (tuple2!18357 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944) (ite c!112746 (tuple2!18357 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!18357 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944)))))))

(declare-fun e!651275 () Bool)

(declare-fun k!934 () (_ BitVec 64))

(declare-fun call!52122 () ListLongMap!16337)

(declare-fun b!1144838 () Bool)

(declare-fun call!52126 () ListLongMap!16337)

(declare-fun -!1277 (ListLongMap!16337 (_ BitVec 64)) ListLongMap!16337)

(assert (=> b!1144838 (= e!651275 (= call!52126 (-!1277 call!52122 k!934)))))

(declare-fun b!1144839 () Bool)

(declare-fun e!651284 () Bool)

(declare-fun tp_is_empty!28745 () Bool)

(assert (=> b!1144839 (= e!651284 tp_is_empty!28745)))

(declare-fun b!1144841 () Bool)

(declare-fun res!762562 () Bool)

(declare-fun e!651272 () Bool)

(assert (=> b!1144841 (=> (not res!762562) (not e!651272))))

(declare-datatypes ((array!74298 0))(
  ( (array!74299 (arr!35796 (Array (_ BitVec 32) (_ BitVec 64))) (size!36333 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!74298)

(declare-datatypes ((List!25157 0))(
  ( (Nil!25154) (Cons!25153 (h!26362 (_ BitVec 64)) (t!36371 List!25157)) )
))
(declare-fun arrayNoDuplicates!0 (array!74298 (_ BitVec 32) List!25157) Bool)

(assert (=> b!1144841 (= res!762562 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!25154))))

(declare-fun bm!52119 () Bool)

(declare-datatypes ((Unit!37512 0))(
  ( (Unit!37513) )
))
(declare-fun call!52125 () Unit!37512)

(declare-fun call!52123 () Unit!37512)

(assert (=> bm!52119 (= call!52125 call!52123)))

(declare-fun mapIsEmpty!44942 () Bool)

(declare-fun mapRes!44942 () Bool)

(assert (=> mapIsEmpty!44942 mapRes!44942))

(declare-fun b!1144842 () Bool)

(declare-fun e!651281 () Bool)

(declare-fun e!651280 () Bool)

(assert (=> b!1144842 (= e!651281 e!651280)))

(declare-fun res!762556 () Bool)

(assert (=> b!1144842 (=> res!762556 e!651280)))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> b!1144842 (= res!762556 (not (= (select (arr!35796 _keys!1208) from!1455) k!934)))))

(assert (=> b!1144842 e!651275))

(declare-fun c!112741 () Bool)

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1144842 (= c!112741 (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673))))

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun lt!510918 () Unit!37512)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-datatypes ((ValueCell!13663 0))(
  ( (ValueCellFull!13663 (v!17067 V!43453)) (EmptyCell!13663) )
))
(declare-datatypes ((array!74300 0))(
  ( (array!74301 (arr!35797 (Array (_ BitVec 32) ValueCell!13663)) (size!36334 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!74300)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!530 (array!74298 array!74300 (_ BitVec 32) (_ BitVec 32) V!43453 V!43453 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!37512)

(assert (=> b!1144842 (= lt!510918 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!530 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun e!651270 () Bool)

(declare-fun b!1144843 () Bool)

(declare-fun lt!510924 () Bool)

(assert (=> b!1144843 (= e!651270 (ite (= k!934 #b0000000000000000000000000000000000000000000000000000000000000000) (not lt!510924) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun e!651282 () Bool)

(declare-fun lt!510911 () ListLongMap!16337)

(declare-fun b!1144844 () Bool)

(assert (=> b!1144844 (= e!651282 (= (-!1277 lt!510911 k!934) lt!510916))))

(declare-fun b!1144845 () Bool)

(declare-fun e!651274 () Unit!37512)

(declare-fun Unit!37514 () Unit!37512)

(assert (=> b!1144845 (= e!651274 Unit!37514)))

(declare-fun b!1144846 () Bool)

(declare-fun e!651285 () Bool)

(declare-fun e!651273 () Bool)

(assert (=> b!1144846 (= e!651285 (not e!651273))))

(declare-fun res!762563 () Bool)

(assert (=> b!1144846 (=> res!762563 e!651273)))

(assert (=> b!1144846 (= res!762563 (bvsgt from!1455 i!673))))

(declare-fun arrayContainsKey!0 (array!74298 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1144846 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-fun lt!510910 () Unit!37512)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!74298 (_ BitVec 64) (_ BitVec 32)) Unit!37512)

(assert (=> b!1144846 (= lt!510910 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun b!1144847 () Bool)

(declare-fun e!651271 () Unit!37512)

(assert (=> b!1144847 (= e!651271 e!651274)))

(declare-fun c!112743 () Bool)

(assert (=> b!1144847 (= c!112743 (and (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!510924))))

(declare-fun b!1144848 () Bool)

(assert (=> b!1144848 (= e!651273 e!651281)))

(declare-fun res!762549 () Bool)

(assert (=> b!1144848 (=> res!762549 e!651281)))

(assert (=> b!1144848 (= res!762549 (not (= from!1455 i!673)))))

(declare-fun lt!510920 () array!74298)

(declare-fun lt!510914 () ListLongMap!16337)

(declare-fun lt!510922 () array!74300)

(declare-fun getCurrentListMapNoExtraKeys!4626 (array!74298 array!74300 (_ BitVec 32) (_ BitVec 32) V!43453 V!43453 (_ BitVec 32) Int) ListLongMap!16337)

(assert (=> b!1144848 (= lt!510914 (getCurrentListMapNoExtraKeys!4626 lt!510920 lt!510922 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun lt!510923 () V!43453)

(assert (=> b!1144848 (= lt!510922 (array!74301 (store (arr!35797 _values!996) i!673 (ValueCellFull!13663 lt!510923)) (size!36334 _values!996)))))

(declare-fun dynLambda!2671 (Int (_ BitVec 64)) V!43453)

(assert (=> b!1144848 (= lt!510923 (dynLambda!2671 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1144848 (= lt!510911 (getCurrentListMapNoExtraKeys!4626 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun bm!52120 () Bool)

(declare-fun call!52127 () ListLongMap!16337)

(assert (=> bm!52120 (= call!52127 call!52121)))

(declare-fun b!1144849 () Bool)

(declare-fun res!762555 () Bool)

(assert (=> b!1144849 (=> (not res!762555) (not e!651272))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!74298 (_ BitVec 32)) Bool)

(assert (=> b!1144849 (= res!762555 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1144850 () Bool)

(assert (=> b!1144850 (= c!112746 (and (not lt!510924) (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun e!651276 () Unit!37512)

(assert (=> b!1144850 (= e!651276 e!651271)))

(declare-fun b!1144851 () Bool)

(declare-fun lt!510915 () Unit!37512)

(assert (=> b!1144851 (= e!651271 lt!510915)))

(assert (=> b!1144851 (= lt!510915 call!52125)))

(declare-fun call!52124 () Bool)

(assert (=> b!1144851 call!52124))

(declare-fun b!1144840 () Bool)

(declare-fun e!651279 () Unit!37512)

(declare-fun Unit!37515 () Unit!37512)

(assert (=> b!1144840 (= e!651279 Unit!37515)))

(assert (=> b!1144840 (= lt!510924 (= (bvand extraKeys!923 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(assert (=> b!1144840 (= c!112744 (and (not lt!510924) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun lt!510921 () Unit!37512)

(assert (=> b!1144840 (= lt!510921 e!651276)))

(declare-fun lt!510927 () Unit!37512)

(declare-fun lemmaListMapContainsThenArrayContainsFrom!420 (array!74298 array!74300 (_ BitVec 32) (_ BitVec 32) V!43453 V!43453 (_ BitVec 64) (_ BitVec 32) Int) Unit!37512)

(assert (=> b!1144840 (= lt!510927 (lemmaListMapContainsThenArrayContainsFrom!420 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun c!112742 () Bool)

(assert (=> b!1144840 (= c!112742 (and (not (= k!934 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!934 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun res!762551 () Bool)

(assert (=> b!1144840 (= res!762551 e!651270)))

(declare-fun e!651283 () Bool)

(assert (=> b!1144840 (=> (not res!762551) (not e!651283))))

(assert (=> b!1144840 e!651283))

(declare-fun lt!510930 () Unit!37512)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!74298 (_ BitVec 32) (_ BitVec 32)) Unit!37512)

(assert (=> b!1144840 (= lt!510930 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1208 #b00000000000000000000000000000000 from!1455))))

(assert (=> b!1144840 (arrayNoDuplicates!0 _keys!1208 from!1455 Nil!25154)))

(declare-fun lt!510926 () Unit!37512)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!74298 (_ BitVec 64) (_ BitVec 32) List!25157) Unit!37512)

(assert (=> b!1144840 (= lt!510926 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!1208 k!934 from!1455 Nil!25154))))

(assert (=> b!1144840 false))

(declare-fun res!762557 () Bool)

(assert (=> start!98646 (=> (not res!762557) (not e!651272))))

(assert (=> start!98646 (= res!762557 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!36333 _keys!1208))))))

(assert (=> start!98646 e!651272))

(assert (=> start!98646 tp_is_empty!28745))

(declare-fun array_inv!27306 (array!74298) Bool)

(assert (=> start!98646 (array_inv!27306 _keys!1208)))

(assert (=> start!98646 true))

(assert (=> start!98646 tp!85356))

(declare-fun e!651277 () Bool)

(declare-fun array_inv!27307 (array!74300) Bool)

(assert (=> start!98646 (and (array_inv!27307 _values!996) e!651277)))

(declare-fun mapNonEmpty!44942 () Bool)

(declare-fun tp!85357 () Bool)

(assert (=> mapNonEmpty!44942 (= mapRes!44942 (and tp!85357 e!651284))))

(declare-fun mapRest!44942 () (Array (_ BitVec 32) ValueCell!13663))

(declare-fun mapValue!44942 () ValueCell!13663)

(declare-fun mapKey!44942 () (_ BitVec 32))

(assert (=> mapNonEmpty!44942 (= (arr!35797 _values!996) (store mapRest!44942 mapKey!44942 mapValue!44942))))

(declare-fun b!1144852 () Bool)

(assert (=> b!1144852 (= e!651280 true)))

(assert (=> b!1144852 e!651282))

(declare-fun res!762550 () Bool)

(assert (=> b!1144852 (=> (not res!762550) (not e!651282))))

(declare-fun lt!510928 () V!43453)

(assert (=> b!1144852 (= res!762550 (= (-!1277 (+!3528 lt!510916 (tuple2!18357 (select (arr!35796 _keys!1208) from!1455) lt!510928)) (select (arr!35796 _keys!1208) from!1455)) lt!510916))))

(declare-fun lt!510913 () Unit!37512)

(declare-fun addThenRemoveForNewKeyIsSame!132 (ListLongMap!16337 (_ BitVec 64) V!43453) Unit!37512)

(assert (=> b!1144852 (= lt!510913 (addThenRemoveForNewKeyIsSame!132 lt!510916 (select (arr!35796 _keys!1208) from!1455) lt!510928))))

(declare-fun get!18224 (ValueCell!13663 V!43453) V!43453)

(assert (=> b!1144852 (= lt!510928 (get!18224 (select (arr!35797 _values!996) from!1455) lt!510923))))

(declare-fun lt!510919 () Unit!37512)

(assert (=> b!1144852 (= lt!510919 e!651279)))

(declare-fun c!112745 () Bool)

(declare-fun contains!6686 (ListLongMap!16337 (_ BitVec 64)) Bool)

(assert (=> b!1144852 (= c!112745 (contains!6686 lt!510916 k!934))))

(assert (=> b!1144852 (= lt!510916 (getCurrentListMapNoExtraKeys!4626 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1144853 () Bool)

(declare-fun res!762554 () Bool)

(assert (=> b!1144853 (=> (not res!762554) (not e!651272))))

(assert (=> b!1144853 (= res!762554 (and (= (size!36334 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!36333 _keys!1208) (size!36334 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun bm!52121 () Bool)

(declare-fun addStillContains!825 (ListLongMap!16337 (_ BitVec 64) V!43453 (_ BitVec 64)) Unit!37512)

(assert (=> bm!52121 (= call!52123 (addStillContains!825 (ite c!112744 lt!510929 lt!510916) (ite c!112744 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!112746 #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000)) (ite c!112744 minValue!944 (ite c!112746 zeroValue!944 minValue!944)) k!934))))

(declare-fun b!1144854 () Bool)

(declare-fun e!651269 () Bool)

(assert (=> b!1144854 (= e!651277 (and e!651269 mapRes!44942))))

(declare-fun condMapEmpty!44942 () Bool)

(declare-fun mapDefault!44942 () ValueCell!13663)

