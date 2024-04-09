; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!98430 () Bool)

(assert start!98430)

(declare-fun b_free!23999 () Bool)

(declare-fun b_next!23999 () Bool)

(assert (=> start!98430 (= b_free!23999 (not b_next!23999))))

(declare-fun tp!84709 () Bool)

(declare-fun b_and!38861 () Bool)

(assert (=> start!98430 (= tp!84709 b_and!38861)))

(declare-fun b!1135108 () Bool)

(declare-fun e!646018 () Bool)

(declare-fun tp_is_empty!28529 () Bool)

(assert (=> b!1135108 (= e!646018 tp_is_empty!28529)))

(declare-fun b!1135109 () Bool)

(declare-fun e!646016 () Bool)

(declare-fun e!646024 () Bool)

(assert (=> b!1135109 (= e!646016 (not e!646024))))

(declare-fun res!757810 () Bool)

(assert (=> b!1135109 (=> res!757810 e!646024)))

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1135109 (= res!757810 (bvsgt from!1455 i!673))))

(declare-datatypes ((array!73880 0))(
  ( (array!73881 (arr!35587 (Array (_ BitVec 32) (_ BitVec 64))) (size!36124 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!73880)

(declare-fun k!934 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!73880 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1135109 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!37130 0))(
  ( (Unit!37131) )
))
(declare-fun lt!504559 () Unit!37130)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!73880 (_ BitVec 64) (_ BitVec 32)) Unit!37130)

(assert (=> b!1135109 (= lt!504559 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun e!646026 () Bool)

(declare-fun b!1135110 () Bool)

(assert (=> b!1135110 (= e!646026 (arrayContainsKey!0 _keys!1208 k!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun b!1135111 () Bool)

(declare-fun res!757809 () Bool)

(assert (=> b!1135111 (=> (not res!757809) (not e!646016))))

(declare-fun lt!504557 () array!73880)

(declare-datatypes ((List!24976 0))(
  ( (Nil!24973) (Cons!24972 (h!26181 (_ BitVec 64)) (t!35974 List!24976)) )
))
(declare-fun arrayNoDuplicates!0 (array!73880 (_ BitVec 32) List!24976) Bool)

(assert (=> b!1135111 (= res!757809 (arrayNoDuplicates!0 lt!504557 #b00000000000000000000000000000000 Nil!24973))))

(declare-datatypes ((V!43165 0))(
  ( (V!43166 (val!14321 Int)) )
))
(declare-fun zeroValue!944 () V!43165)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-datatypes ((ValueCell!13555 0))(
  ( (ValueCellFull!13555 (v!16959 V!43165)) (EmptyCell!13555) )
))
(declare-datatypes ((array!73882 0))(
  ( (array!73883 (arr!35588 (Array (_ BitVec 32) ValueCell!13555)) (size!36125 (_ BitVec 32))) )
))
(declare-fun lt!504556 () array!73882)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-fun bm!49526 () Bool)

(declare-fun minValue!944 () V!43165)

(declare-datatypes ((tuple2!18164 0))(
  ( (tuple2!18165 (_1!9092 (_ BitVec 64)) (_2!9092 V!43165)) )
))
(declare-datatypes ((List!24977 0))(
  ( (Nil!24974) (Cons!24973 (h!26182 tuple2!18164) (t!35975 List!24977)) )
))
(declare-datatypes ((ListLongMap!16145 0))(
  ( (ListLongMap!16146 (toList!8088 List!24977)) )
))
(declare-fun call!49529 () ListLongMap!16145)

(declare-fun getCurrentListMapNoExtraKeys!4537 (array!73880 array!73882 (_ BitVec 32) (_ BitVec 32) V!43165 V!43165 (_ BitVec 32) Int) ListLongMap!16145)

(assert (=> bm!49526 (= call!49529 (getCurrentListMapNoExtraKeys!4537 lt!504557 lt!504556 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun mapIsEmpty!44618 () Bool)

(declare-fun mapRes!44618 () Bool)

(assert (=> mapIsEmpty!44618 mapRes!44618))

(declare-fun b!1135112 () Bool)

(declare-fun e!646015 () Bool)

(declare-fun call!49533 () ListLongMap!16145)

(assert (=> b!1135112 (= e!646015 (= call!49529 call!49533))))

(declare-fun b!1135113 () Bool)

(declare-fun e!646029 () Bool)

(declare-fun e!646017 () Bool)

(assert (=> b!1135113 (= e!646029 e!646017)))

(declare-fun res!757811 () Bool)

(assert (=> b!1135113 (=> res!757811 e!646017)))

(assert (=> b!1135113 (= res!757811 (or (bvsge (size!36124 _keys!1208) #b01111111111111111111111111111111) (bvsge (bvadd #b00000000000000000000000000000001 from!1455) (size!36124 _keys!1208)) (bvsge from!1455 (size!36124 _keys!1208))))))

(assert (=> b!1135113 (arrayNoDuplicates!0 _keys!1208 from!1455 Nil!24973)))

(declare-fun lt!504558 () Unit!37130)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!73880 (_ BitVec 32) (_ BitVec 32)) Unit!37130)

(assert (=> b!1135113 (= lt!504558 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1208 #b00000000000000000000000000000000 from!1455))))

(assert (=> b!1135113 e!646026))

(declare-fun res!757808 () Bool)

(assert (=> b!1135113 (=> (not res!757808) (not e!646026))))

(declare-fun e!646020 () Bool)

(assert (=> b!1135113 (= res!757808 e!646020)))

(declare-fun c!110843 () Bool)

(assert (=> b!1135113 (= c!110843 (and (not (= k!934 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!934 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun _values!996 () array!73882)

(declare-fun lt!504553 () Unit!37130)

(declare-fun lemmaListMapContainsThenArrayContainsFrom!353 (array!73880 array!73882 (_ BitVec 32) (_ BitVec 32) V!43165 V!43165 (_ BitVec 64) (_ BitVec 32) Int) Unit!37130)

(assert (=> b!1135113 (= lt!504553 (lemmaListMapContainsThenArrayContainsFrom!353 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun lt!504563 () Unit!37130)

(declare-fun e!646014 () Unit!37130)

(assert (=> b!1135113 (= lt!504563 e!646014)))

(declare-fun c!110847 () Bool)

(declare-fun lt!504560 () Bool)

(assert (=> b!1135113 (= c!110847 (and (not lt!504560) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> b!1135113 (= lt!504560 (= (bvand extraKeys!923 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(declare-fun b!1135114 () Bool)

(declare-fun res!757819 () Bool)

(declare-fun e!646027 () Bool)

(assert (=> b!1135114 (=> (not res!757819) (not e!646027))))

(assert (=> b!1135114 (= res!757819 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!24973))))

(declare-fun b!1135115 () Bool)

(declare-fun res!757813 () Bool)

(assert (=> b!1135115 (=> (not res!757813) (not e!646027))))

(assert (=> b!1135115 (= res!757813 (and (= (size!36125 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!36124 _keys!1208) (size!36125 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun bm!49527 () Bool)

(assert (=> bm!49527 (= call!49533 (getCurrentListMapNoExtraKeys!4537 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1135116 () Bool)

(declare-fun -!1202 (ListLongMap!16145 (_ BitVec 64)) ListLongMap!16145)

(assert (=> b!1135116 (= e!646015 (= call!49529 (-!1202 call!49533 k!934)))))

(declare-fun bm!49528 () Bool)

(declare-fun call!49534 () Bool)

(declare-fun call!49532 () Bool)

(assert (=> bm!49528 (= call!49534 call!49532)))

(declare-fun b!1135117 () Bool)

(declare-fun res!757814 () Bool)

(assert (=> b!1135117 (=> (not res!757814) (not e!646027))))

(assert (=> b!1135117 (= res!757814 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!36124 _keys!1208))))))

(declare-fun b!1135118 () Bool)

(declare-fun res!757807 () Bool)

(assert (=> b!1135118 (=> res!757807 e!646017)))

(declare-fun noDuplicate!1613 (List!24976) Bool)

(assert (=> b!1135118 (= res!757807 (not (noDuplicate!1613 Nil!24973)))))

(declare-fun b!1135119 () Bool)

(declare-fun c!110844 () Bool)

(assert (=> b!1135119 (= c!110844 (and (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!504560))))

(declare-fun e!646022 () Unit!37130)

(declare-fun e!646013 () Unit!37130)

(assert (=> b!1135119 (= e!646022 e!646013)))

(declare-fun b!1135120 () Bool)

(declare-fun res!757818 () Bool)

(assert (=> b!1135120 (=> (not res!757818) (not e!646027))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!73880 (_ BitVec 32)) Bool)

(assert (=> b!1135120 (= res!757818 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun call!49531 () Unit!37130)

(declare-fun bm!49529 () Bool)

(declare-fun lt!504564 () ListLongMap!16145)

(declare-fun c!110845 () Bool)

(declare-fun addStillContains!744 (ListLongMap!16145 (_ BitVec 64) V!43165 (_ BitVec 64)) Unit!37130)

(assert (=> bm!49529 (= call!49531 (addStillContains!744 lt!504564 (ite (or c!110847 c!110845) #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000) (ite (or c!110847 c!110845) zeroValue!944 minValue!944) k!934))))

(declare-fun b!1135121 () Bool)

(assert (=> b!1135121 call!49534))

(declare-fun lt!504567 () Unit!37130)

(declare-fun call!49530 () Unit!37130)

(assert (=> b!1135121 (= lt!504567 call!49530)))

(assert (=> b!1135121 (= e!646022 lt!504567)))

(declare-fun lt!504554 () ListLongMap!16145)

(declare-fun call!49536 () ListLongMap!16145)

(declare-fun bm!49530 () Bool)

(declare-fun contains!6588 (ListLongMap!16145 (_ BitVec 64)) Bool)

(assert (=> bm!49530 (= call!49532 (contains!6588 (ite c!110847 lt!504554 call!49536) k!934))))

(declare-fun bm!49531 () Bool)

(assert (=> bm!49531 (= call!49530 call!49531)))

(declare-fun b!1135122 () Bool)

(declare-fun e!646028 () Bool)

(assert (=> b!1135122 (= e!646024 e!646028)))

(declare-fun res!757816 () Bool)

(assert (=> b!1135122 (=> res!757816 e!646028)))

(assert (=> b!1135122 (= res!757816 (not (= from!1455 i!673)))))

(declare-fun lt!504566 () ListLongMap!16145)

(assert (=> b!1135122 (= lt!504566 (getCurrentListMapNoExtraKeys!4537 lt!504557 lt!504556 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun dynLambda!2604 (Int (_ BitVec 64)) V!43165)

(assert (=> b!1135122 (= lt!504556 (array!73883 (store (arr!35588 _values!996) i!673 (ValueCellFull!13555 (dynLambda!2604 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!36125 _values!996)))))

(declare-fun lt!504561 () ListLongMap!16145)

(assert (=> b!1135122 (= lt!504561 (getCurrentListMapNoExtraKeys!4537 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1135123 () Bool)

(declare-fun e!646025 () Bool)

(assert (=> b!1135123 (= e!646025 tp_is_empty!28529)))

(declare-fun b!1135124 () Bool)

(assert (=> b!1135124 (= e!646020 (arrayContainsKey!0 _keys!1208 k!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun b!1135125 () Bool)

(declare-fun res!757820 () Bool)

(assert (=> b!1135125 (=> (not res!757820) (not e!646027))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1135125 (= res!757820 (validKeyInArray!0 k!934))))

(declare-fun b!1135126 () Bool)

(declare-fun e!646023 () Bool)

(assert (=> b!1135126 (= e!646023 e!646029)))

(declare-fun res!757817 () Bool)

(assert (=> b!1135126 (=> res!757817 e!646029)))

(assert (=> b!1135126 (= res!757817 (not (contains!6588 lt!504564 k!934)))))

(assert (=> b!1135126 (= lt!504564 (getCurrentListMapNoExtraKeys!4537 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1135127 () Bool)

(assert (=> b!1135127 (= e!646017 true)))

(declare-fun lt!504565 () Bool)

(declare-fun contains!6589 (List!24976 (_ BitVec 64)) Bool)

(assert (=> b!1135127 (= lt!504565 (contains!6589 Nil!24973 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun call!49535 () ListLongMap!16145)

(declare-fun bm!49532 () Bool)

(declare-fun +!3445 (ListLongMap!16145 tuple2!18164) ListLongMap!16145)

(assert (=> bm!49532 (= call!49535 (+!3445 lt!504564 (ite (or c!110847 c!110845) (tuple2!18165 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!18165 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944))))))

(declare-fun b!1135128 () Bool)

(declare-fun lt!504552 () Unit!37130)

(assert (=> b!1135128 (= e!646013 lt!504552)))

(assert (=> b!1135128 (= lt!504552 call!49530)))

(assert (=> b!1135128 call!49534))

(declare-fun b!1135129 () Bool)

(assert (=> b!1135129 (= e!646020 (ite (= k!934 #b0000000000000000000000000000000000000000000000000000000000000000) (not lt!504560) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!1135130 () Bool)

(declare-fun res!757815 () Bool)

(assert (=> b!1135130 (=> res!757815 e!646017)))

(assert (=> b!1135130 (= res!757815 (contains!6589 Nil!24973 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1135131 () Bool)

(declare-fun res!757806 () Bool)

(assert (=> b!1135131 (=> (not res!757806) (not e!646027))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1135131 (= res!757806 (validMask!0 mask!1564))))

(declare-fun b!1135132 () Bool)

(declare-fun res!757804 () Bool)

(assert (=> b!1135132 (=> (not res!757804) (not e!646027))))

(assert (=> b!1135132 (= res!757804 (= (select (arr!35587 _keys!1208) i!673) k!934))))

(declare-fun mapNonEmpty!44618 () Bool)

(declare-fun tp!84708 () Bool)

(assert (=> mapNonEmpty!44618 (= mapRes!44618 (and tp!84708 e!646025))))

(declare-fun mapKey!44618 () (_ BitVec 32))

(declare-fun mapRest!44618 () (Array (_ BitVec 32) ValueCell!13555))

(declare-fun mapValue!44618 () ValueCell!13555)

(assert (=> mapNonEmpty!44618 (= (arr!35588 _values!996) (store mapRest!44618 mapKey!44618 mapValue!44618))))

(declare-fun b!1135133 () Bool)

(assert (=> b!1135133 (= e!646027 e!646016)))

(declare-fun res!757812 () Bool)

(assert (=> b!1135133 (=> (not res!757812) (not e!646016))))

(assert (=> b!1135133 (= res!757812 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!504557 mask!1564))))

(assert (=> b!1135133 (= lt!504557 (array!73881 (store (arr!35587 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!36124 _keys!1208)))))

(declare-fun b!1135134 () Bool)

(declare-fun lt!504555 () Unit!37130)

(assert (=> b!1135134 (= e!646014 lt!504555)))

(declare-fun lt!504562 () Unit!37130)

(assert (=> b!1135134 (= lt!504562 call!49531)))

(assert (=> b!1135134 (= lt!504554 call!49535)))

(assert (=> b!1135134 call!49532))

(assert (=> b!1135134 (= lt!504555 (addStillContains!744 lt!504554 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944 k!934))))

(assert (=> b!1135134 (contains!6588 (+!3445 lt!504554 (tuple2!18165 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944)) k!934)))

(declare-fun bm!49533 () Bool)

(assert (=> bm!49533 (= call!49536 call!49535)))

(declare-fun b!1135135 () Bool)

(declare-fun Unit!37132 () Unit!37130)

(assert (=> b!1135135 (= e!646013 Unit!37132)))

(declare-fun b!1135136 () Bool)

(assert (=> b!1135136 (= e!646028 e!646023)))

(declare-fun res!757805 () Bool)

(assert (=> b!1135136 (=> res!757805 e!646023)))

(assert (=> b!1135136 (= res!757805 (not (= (select (arr!35587 _keys!1208) from!1455) k!934)))))

(assert (=> b!1135136 e!646015))

(declare-fun c!110846 () Bool)

(assert (=> b!1135136 (= c!110846 (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673))))

(declare-fun lt!504551 () Unit!37130)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!458 (array!73880 array!73882 (_ BitVec 32) (_ BitVec 32) V!43165 V!43165 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!37130)

(assert (=> b!1135136 (= lt!504551 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!458 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1135137 () Bool)

(assert (=> b!1135137 (= e!646014 e!646022)))

(assert (=> b!1135137 (= c!110845 (and (not lt!504560) (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun res!757803 () Bool)

(assert (=> start!98430 (=> (not res!757803) (not e!646027))))

(assert (=> start!98430 (= res!757803 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!36124 _keys!1208))))))

(assert (=> start!98430 e!646027))

(assert (=> start!98430 tp_is_empty!28529))

(declare-fun array_inv!27162 (array!73880) Bool)

(assert (=> start!98430 (array_inv!27162 _keys!1208)))

(assert (=> start!98430 true))

(assert (=> start!98430 tp!84709))

(declare-fun e!646021 () Bool)

(declare-fun array_inv!27163 (array!73882) Bool)

(assert (=> start!98430 (and (array_inv!27163 _values!996) e!646021)))

(declare-fun b!1135138 () Bool)

(assert (=> b!1135138 (= e!646021 (and e!646018 mapRes!44618))))

(declare-fun condMapEmpty!44618 () Bool)

(declare-fun mapDefault!44618 () ValueCell!13555)

