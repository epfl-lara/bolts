; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!98604 () Bool)

(assert start!98604)

(declare-fun b_free!24173 () Bool)

(declare-fun b_next!24173 () Bool)

(assert (=> start!98604 (= b_free!24173 (not b_next!24173))))

(declare-fun tp!85231 () Bool)

(declare-fun b_and!39209 () Bool)

(assert (=> start!98604 (= tp!85231 b_and!39209)))

(declare-fun b!1142943 () Bool)

(declare-datatypes ((Unit!37428 0))(
  ( (Unit!37429) )
))
(declare-fun e!650242 () Unit!37428)

(declare-fun e!650248 () Unit!37428)

(assert (=> b!1142943 (= e!650242 e!650248)))

(declare-fun c!112368 () Bool)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun lt!509589 () Bool)

(assert (=> b!1142943 (= c!112368 (and (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!509589))))

(declare-fun b!1142944 () Bool)

(declare-fun e!650250 () Bool)

(declare-fun e!650237 () Bool)

(assert (=> b!1142944 (= e!650250 e!650237)))

(declare-fun res!761649 () Bool)

(assert (=> b!1142944 (=> res!761649 e!650237)))

(declare-datatypes ((array!74216 0))(
  ( (array!74217 (arr!35755 (Array (_ BitVec 32) (_ BitVec 64))) (size!36292 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!74216)

(declare-fun k!934 () (_ BitVec 64))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> b!1142944 (= res!761649 (not (= (select (arr!35755 _keys!1208) from!1455) k!934)))))

(declare-fun e!650249 () Bool)

(assert (=> b!1142944 e!650249))

(declare-fun c!112367 () Bool)

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1142944 (= c!112367 (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673))))

(declare-datatypes ((V!43397 0))(
  ( (V!43398 (val!14408 Int)) )
))
(declare-fun zeroValue!944 () V!43397)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-fun lt!509590 () Unit!37428)

(declare-datatypes ((ValueCell!13642 0))(
  ( (ValueCellFull!13642 (v!17046 V!43397)) (EmptyCell!13642) )
))
(declare-datatypes ((array!74218 0))(
  ( (array!74219 (arr!35756 (Array (_ BitVec 32) ValueCell!13642)) (size!36293 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!74218)

(declare-fun minValue!944 () V!43397)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!516 (array!74216 array!74218 (_ BitVec 32) (_ BitVec 32) V!43397 V!43397 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!37428)

(assert (=> b!1142944 (= lt!509590 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!516 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1142946 () Bool)

(declare-fun e!650244 () Bool)

(assert (=> b!1142946 (= e!650244 e!650250)))

(declare-fun res!761650 () Bool)

(assert (=> b!1142946 (=> res!761650 e!650250)))

(assert (=> b!1142946 (= res!761650 (not (= from!1455 i!673)))))

(declare-datatypes ((tuple2!18322 0))(
  ( (tuple2!18323 (_1!9171 (_ BitVec 64)) (_2!9171 V!43397)) )
))
(declare-datatypes ((List!25121 0))(
  ( (Nil!25118) (Cons!25117 (h!26326 tuple2!18322) (t!36293 List!25121)) )
))
(declare-datatypes ((ListLongMap!16303 0))(
  ( (ListLongMap!16304 (toList!8167 List!25121)) )
))
(declare-fun lt!509593 () ListLongMap!16303)

(declare-fun lt!509597 () array!74216)

(declare-fun lt!509602 () array!74218)

(declare-fun getCurrentListMapNoExtraKeys!4610 (array!74216 array!74218 (_ BitVec 32) (_ BitVec 32) V!43397 V!43397 (_ BitVec 32) Int) ListLongMap!16303)

(assert (=> b!1142946 (= lt!509593 (getCurrentListMapNoExtraKeys!4610 lt!509597 lt!509602 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun lt!509591 () V!43397)

(assert (=> b!1142946 (= lt!509602 (array!74219 (store (arr!35756 _values!996) i!673 (ValueCellFull!13642 lt!509591)) (size!36293 _values!996)))))

(declare-fun dynLambda!2658 (Int (_ BitVec 64)) V!43397)

(assert (=> b!1142946 (= lt!509591 (dynLambda!2658 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!509598 () ListLongMap!16303)

(assert (=> b!1142946 (= lt!509598 (getCurrentListMapNoExtraKeys!4610 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1142947 () Bool)

(declare-fun res!761652 () Bool)

(declare-fun e!650243 () Bool)

(assert (=> b!1142947 (=> (not res!761652) (not e!650243))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!74216 (_ BitVec 32)) Bool)

(assert (=> b!1142947 (= res!761652 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun bm!51614 () Bool)

(declare-fun lt!509596 () ListLongMap!16303)

(declare-fun call!51624 () Bool)

(declare-fun c!112363 () Bool)

(declare-fun call!51618 () ListLongMap!16303)

(declare-fun contains!6670 (ListLongMap!16303 (_ BitVec 64)) Bool)

(assert (=> bm!51614 (= call!51624 (contains!6670 (ite c!112363 lt!509596 call!51618) k!934))))

(declare-fun b!1142948 () Bool)

(declare-fun res!761651 () Bool)

(assert (=> b!1142948 (=> (not res!761651) (not e!650243))))

(assert (=> b!1142948 (= res!761651 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!36292 _keys!1208))))))

(declare-fun b!1142949 () Bool)

(declare-fun e!650245 () Bool)

(assert (=> b!1142949 (= e!650245 (not e!650244))))

(declare-fun res!761644 () Bool)

(assert (=> b!1142949 (=> res!761644 e!650244)))

(assert (=> b!1142949 (= res!761644 (bvsgt from!1455 i!673))))

(declare-fun arrayContainsKey!0 (array!74216 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1142949 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-fun lt!509604 () Unit!37428)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!74216 (_ BitVec 64) (_ BitVec 32)) Unit!37428)

(assert (=> b!1142949 (= lt!509604 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun b!1142950 () Bool)

(declare-fun call!51619 () ListLongMap!16303)

(declare-fun call!51622 () ListLongMap!16303)

(assert (=> b!1142950 (= e!650249 (= call!51619 call!51622))))

(declare-fun bm!51615 () Bool)

(assert (=> bm!51615 (= call!51622 (getCurrentListMapNoExtraKeys!4610 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1142951 () Bool)

(declare-fun res!761642 () Bool)

(assert (=> b!1142951 (=> (not res!761642) (not e!650245))))

(declare-datatypes ((List!25122 0))(
  ( (Nil!25119) (Cons!25118 (h!26327 (_ BitVec 64)) (t!36294 List!25122)) )
))
(declare-fun arrayNoDuplicates!0 (array!74216 (_ BitVec 32) List!25122) Bool)

(assert (=> b!1142951 (= res!761642 (arrayNoDuplicates!0 lt!509597 #b00000000000000000000000000000000 Nil!25119))))

(declare-fun b!1142952 () Bool)

(declare-fun e!650247 () Bool)

(declare-fun tp_is_empty!28703 () Bool)

(assert (=> b!1142952 (= e!650247 tp_is_empty!28703)))

(declare-fun b!1142953 () Bool)

(assert (=> b!1142953 (= e!650237 true)))

(declare-fun lt!509588 () V!43397)

(declare-fun lt!509600 () ListLongMap!16303)

(declare-fun -!1261 (ListLongMap!16303 (_ BitVec 64)) ListLongMap!16303)

(declare-fun +!3511 (ListLongMap!16303 tuple2!18322) ListLongMap!16303)

(assert (=> b!1142953 (= (-!1261 (+!3511 lt!509600 (tuple2!18323 (select (arr!35755 _keys!1208) from!1455) lt!509588)) (select (arr!35755 _keys!1208) from!1455)) lt!509600)))

(declare-fun lt!509605 () Unit!37428)

(declare-fun addThenRemoveForNewKeyIsSame!116 (ListLongMap!16303 (_ BitVec 64) V!43397) Unit!37428)

(assert (=> b!1142953 (= lt!509605 (addThenRemoveForNewKeyIsSame!116 lt!509600 (select (arr!35755 _keys!1208) from!1455) lt!509588))))

(declare-fun get!18194 (ValueCell!13642 V!43397) V!43397)

(assert (=> b!1142953 (= lt!509588 (get!18194 (select (arr!35756 _values!996) from!1455) lt!509591))))

(declare-fun lt!509599 () Unit!37428)

(declare-fun e!650238 () Unit!37428)

(assert (=> b!1142953 (= lt!509599 e!650238)))

(declare-fun c!112365 () Bool)

(assert (=> b!1142953 (= c!112365 (contains!6670 lt!509600 k!934))))

(assert (=> b!1142953 (= lt!509600 (getCurrentListMapNoExtraKeys!4610 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1142954 () Bool)

(declare-fun call!51620 () Bool)

(assert (=> b!1142954 call!51620))

(declare-fun lt!509601 () Unit!37428)

(declare-fun call!51621 () Unit!37428)

(assert (=> b!1142954 (= lt!509601 call!51621)))

(assert (=> b!1142954 (= e!650248 lt!509601)))

(declare-fun c!112366 () Bool)

(declare-fun bm!51616 () Bool)

(declare-fun call!51617 () Unit!37428)

(declare-fun addStillContains!809 (ListLongMap!16303 (_ BitVec 64) V!43397 (_ BitVec 64)) Unit!37428)

(assert (=> bm!51616 (= call!51617 (addStillContains!809 lt!509600 (ite (or c!112363 c!112366) #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000) (ite (or c!112363 c!112366) zeroValue!944 minValue!944) k!934))))

(declare-fun b!1142955 () Bool)

(declare-fun e!650236 () Bool)

(assert (=> b!1142955 (= e!650236 (ite (= k!934 #b0000000000000000000000000000000000000000000000000000000000000000) (not lt!509589) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun bm!51617 () Bool)

(declare-fun call!51623 () ListLongMap!16303)

(assert (=> bm!51617 (= call!51618 call!51623)))

(declare-fun b!1142956 () Bool)

(assert (=> b!1142956 (contains!6670 (+!3511 lt!509596 (tuple2!18323 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944)) k!934)))

(declare-fun lt!509592 () Unit!37428)

(assert (=> b!1142956 (= lt!509592 (addStillContains!809 lt!509596 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944 k!934))))

(assert (=> b!1142956 call!51624))

(assert (=> b!1142956 (= lt!509596 call!51623)))

(declare-fun lt!509606 () Unit!37428)

(assert (=> b!1142956 (= lt!509606 call!51617)))

(declare-fun e!650241 () Unit!37428)

(assert (=> b!1142956 (= e!650241 lt!509592)))

(declare-fun mapIsEmpty!44879 () Bool)

(declare-fun mapRes!44879 () Bool)

(assert (=> mapIsEmpty!44879 mapRes!44879))

(declare-fun b!1142957 () Bool)

(declare-fun lt!509587 () Unit!37428)

(assert (=> b!1142957 (= e!650242 lt!509587)))

(assert (=> b!1142957 (= lt!509587 call!51621)))

(assert (=> b!1142957 call!51620))

(declare-fun b!1142958 () Bool)

(declare-fun res!761653 () Bool)

(assert (=> b!1142958 (=> (not res!761653) (not e!650243))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1142958 (= res!761653 (validMask!0 mask!1564))))

(declare-fun b!1142959 () Bool)

(assert (=> b!1142959 (= e!650243 e!650245)))

(declare-fun res!761647 () Bool)

(assert (=> b!1142959 (=> (not res!761647) (not e!650245))))

(assert (=> b!1142959 (= res!761647 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!509597 mask!1564))))

(assert (=> b!1142959 (= lt!509597 (array!74217 (store (arr!35755 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!36292 _keys!1208)))))

(declare-fun mapNonEmpty!44879 () Bool)

(declare-fun tp!85230 () Bool)

(declare-fun e!650239 () Bool)

(assert (=> mapNonEmpty!44879 (= mapRes!44879 (and tp!85230 e!650239))))

(declare-fun mapRest!44879 () (Array (_ BitVec 32) ValueCell!13642))

(declare-fun mapKey!44879 () (_ BitVec 32))

(declare-fun mapValue!44879 () ValueCell!13642)

(assert (=> mapNonEmpty!44879 (= (arr!35756 _values!996) (store mapRest!44879 mapKey!44879 mapValue!44879))))

(declare-fun bm!51618 () Bool)

(assert (=> bm!51618 (= call!51621 call!51617)))

(declare-fun res!761645 () Bool)

(assert (=> start!98604 (=> (not res!761645) (not e!650243))))

(assert (=> start!98604 (= res!761645 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!36292 _keys!1208))))))

(assert (=> start!98604 e!650243))

(assert (=> start!98604 tp_is_empty!28703))

(declare-fun array_inv!27274 (array!74216) Bool)

(assert (=> start!98604 (array_inv!27274 _keys!1208)))

(assert (=> start!98604 true))

(assert (=> start!98604 tp!85231))

(declare-fun e!650246 () Bool)

(declare-fun array_inv!27275 (array!74218) Bool)

(assert (=> start!98604 (and (array_inv!27275 _values!996) e!650246)))

(declare-fun b!1142945 () Bool)

(assert (=> b!1142945 (= e!650239 tp_is_empty!28703)))

(declare-fun b!1142960 () Bool)

(declare-fun res!761641 () Bool)

(assert (=> b!1142960 (=> (not res!761641) (not e!650243))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1142960 (= res!761641 (validKeyInArray!0 k!934))))

(declare-fun b!1142961 () Bool)

(declare-fun Unit!37430 () Unit!37428)

(assert (=> b!1142961 (= e!650238 Unit!37430)))

(declare-fun b!1142962 () Bool)

(declare-fun res!761654 () Bool)

(assert (=> b!1142962 (=> (not res!761654) (not e!650243))))

(assert (=> b!1142962 (= res!761654 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!25119))))

(declare-fun bm!51619 () Bool)

(assert (=> bm!51619 (= call!51623 (+!3511 lt!509600 (ite (or c!112363 c!112366) (tuple2!18323 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!18323 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944))))))

(declare-fun b!1142963 () Bool)

(assert (=> b!1142963 (= e!650249 (= call!51619 (-!1261 call!51622 k!934)))))

(declare-fun b!1142964 () Bool)

(assert (=> b!1142964 (= e!650236 (arrayContainsKey!0 _keys!1208 k!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun b!1142965 () Bool)

(declare-fun res!761646 () Bool)

(assert (=> b!1142965 (=> (not res!761646) (not e!650243))))

(assert (=> b!1142965 (= res!761646 (and (= (size!36293 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!36292 _keys!1208) (size!36293 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun bm!51620 () Bool)

(assert (=> bm!51620 (= call!51619 (getCurrentListMapNoExtraKeys!4610 lt!509597 lt!509602 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1142966 () Bool)

(assert (=> b!1142966 (= c!112366 (and (not lt!509589) (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(assert (=> b!1142966 (= e!650241 e!650242)))

(declare-fun e!650240 () Bool)

(declare-fun b!1142967 () Bool)

(assert (=> b!1142967 (= e!650240 (arrayContainsKey!0 _keys!1208 k!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun b!1142968 () Bool)

(declare-fun res!761643 () Bool)

(assert (=> b!1142968 (=> (not res!761643) (not e!650243))))

(assert (=> b!1142968 (= res!761643 (= (select (arr!35755 _keys!1208) i!673) k!934))))

(declare-fun b!1142969 () Bool)

(declare-fun Unit!37431 () Unit!37428)

(assert (=> b!1142969 (= e!650248 Unit!37431)))

(declare-fun bm!51621 () Bool)

(assert (=> bm!51621 (= call!51620 call!51624)))

(declare-fun b!1142970 () Bool)

(declare-fun Unit!37432 () Unit!37428)

(assert (=> b!1142970 (= e!650238 Unit!37432)))

(assert (=> b!1142970 (= lt!509589 (= (bvand extraKeys!923 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(assert (=> b!1142970 (= c!112363 (and (not lt!509589) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun lt!509595 () Unit!37428)

(assert (=> b!1142970 (= lt!509595 e!650241)))

(declare-fun lt!509603 () Unit!37428)

(declare-fun lemmaListMapContainsThenArrayContainsFrom!404 (array!74216 array!74218 (_ BitVec 32) (_ BitVec 32) V!43397 V!43397 (_ BitVec 64) (_ BitVec 32) Int) Unit!37428)

(assert (=> b!1142970 (= lt!509603 (lemmaListMapContainsThenArrayContainsFrom!404 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun c!112364 () Bool)

(assert (=> b!1142970 (= c!112364 (and (not (= k!934 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!934 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun res!761648 () Bool)

(assert (=> b!1142970 (= res!761648 e!650236)))

(assert (=> b!1142970 (=> (not res!761648) (not e!650240))))

(assert (=> b!1142970 e!650240))

(declare-fun lt!509607 () Unit!37428)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!74216 (_ BitVec 32) (_ BitVec 32)) Unit!37428)

(assert (=> b!1142970 (= lt!509607 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1208 #b00000000000000000000000000000000 from!1455))))

(assert (=> b!1142970 (arrayNoDuplicates!0 _keys!1208 from!1455 Nil!25119)))

(declare-fun lt!509594 () Unit!37428)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!74216 (_ BitVec 64) (_ BitVec 32) List!25122) Unit!37428)

(assert (=> b!1142970 (= lt!509594 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!1208 k!934 from!1455 Nil!25119))))

(assert (=> b!1142970 false))

(declare-fun b!1142971 () Bool)

(assert (=> b!1142971 (= e!650246 (and e!650247 mapRes!44879))))

(declare-fun condMapEmpty!44879 () Bool)

(declare-fun mapDefault!44879 () ValueCell!13642)

