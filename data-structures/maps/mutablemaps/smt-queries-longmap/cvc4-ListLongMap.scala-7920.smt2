; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!98400 () Bool)

(assert start!98400)

(declare-fun b_free!23969 () Bool)

(declare-fun b_next!23969 () Bool)

(assert (=> start!98400 (= b_free!23969 (not b_next!23969))))

(declare-fun tp!84618 () Bool)

(declare-fun b_and!38801 () Bool)

(assert (=> start!98400 (= tp!84618 b_and!38801)))

(declare-fun b!1133713 () Bool)

(declare-fun e!645264 () Bool)

(assert (=> b!1133713 (= e!645264 true)))

(declare-fun e!645270 () Bool)

(assert (=> b!1133713 e!645270))

(declare-fun res!757030 () Bool)

(assert (=> b!1133713 (=> (not res!757030) (not e!645270))))

(declare-fun e!645263 () Bool)

(assert (=> b!1133713 (= res!757030 e!645263)))

(declare-fun c!110621 () Bool)

(declare-fun k!934 () (_ BitVec 64))

(assert (=> b!1133713 (= c!110621 (and (not (= k!934 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!934 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-datatypes ((V!43125 0))(
  ( (V!43126 (val!14306 Int)) )
))
(declare-fun zeroValue!944 () V!43125)

(declare-datatypes ((array!73820 0))(
  ( (array!73821 (arr!35557 (Array (_ BitVec 32) (_ BitVec 64))) (size!36094 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!73820)

(declare-datatypes ((Unit!37091 0))(
  ( (Unit!37092) )
))
(declare-fun lt!503812 () Unit!37091)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-fun from!1455 () (_ BitVec 32))

(declare-datatypes ((ValueCell!13540 0))(
  ( (ValueCellFull!13540 (v!16944 V!43125)) (EmptyCell!13540) )
))
(declare-datatypes ((array!73822 0))(
  ( (array!73823 (arr!35558 (Array (_ BitVec 32) ValueCell!13540)) (size!36095 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!73822)

(declare-fun minValue!944 () V!43125)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun lemmaListMapContainsThenArrayContainsFrom!341 (array!73820 array!73822 (_ BitVec 32) (_ BitVec 32) V!43125 V!43125 (_ BitVec 64) (_ BitVec 32) Int) Unit!37091)

(assert (=> b!1133713 (= lt!503812 (lemmaListMapContainsThenArrayContainsFrom!341 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun lt!503818 () Unit!37091)

(declare-fun e!645259 () Unit!37091)

(assert (=> b!1133713 (= lt!503818 e!645259)))

(declare-fun c!110622 () Bool)

(declare-fun lt!503811 () Bool)

(assert (=> b!1133713 (= c!110622 (and (not lt!503811) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> b!1133713 (= lt!503811 (= (bvand extraKeys!923 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(declare-fun c!110619 () Bool)

(declare-fun lt!503820 () array!73820)

(declare-fun lt!503813 () array!73822)

(declare-fun bm!49166 () Bool)

(declare-datatypes ((tuple2!18134 0))(
  ( (tuple2!18135 (_1!9077 (_ BitVec 64)) (_2!9077 V!43125)) )
))
(declare-datatypes ((List!24946 0))(
  ( (Nil!24943) (Cons!24942 (h!26151 tuple2!18134) (t!35914 List!24946)) )
))
(declare-datatypes ((ListLongMap!16115 0))(
  ( (ListLongMap!16116 (toList!8073 List!24946)) )
))
(declare-fun call!49173 () ListLongMap!16115)

(declare-fun getCurrentListMapNoExtraKeys!4522 (array!73820 array!73822 (_ BitVec 32) (_ BitVec 32) V!43125 V!43125 (_ BitVec 32) Int) ListLongMap!16115)

(assert (=> bm!49166 (= call!49173 (getCurrentListMapNoExtraKeys!4522 (ite c!110619 lt!503820 _keys!1208) (ite c!110619 lt!503813 _values!996) mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1133714 () Bool)

(declare-fun res!757025 () Bool)

(declare-fun e!645269 () Bool)

(assert (=> b!1133714 (=> (not res!757025) (not e!645269))))

(assert (=> b!1133714 (= res!757025 (and (= (size!36095 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!36094 _keys!1208) (size!36095 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1133715 () Bool)

(declare-fun e!645262 () Bool)

(declare-fun e!645268 () Bool)

(assert (=> b!1133715 (= e!645262 e!645268)))

(declare-fun res!757023 () Bool)

(assert (=> b!1133715 (=> res!757023 e!645268)))

(assert (=> b!1133715 (= res!757023 (not (= (select (arr!35557 _keys!1208) from!1455) k!934)))))

(declare-fun e!645265 () Bool)

(assert (=> b!1133715 e!645265))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1133715 (= c!110619 (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673))))

(declare-fun lt!503808 () Unit!37091)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!448 (array!73820 array!73822 (_ BitVec 32) (_ BitVec 32) V!43125 V!43125 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!37091)

(assert (=> b!1133715 (= lt!503808 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!448 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1133716 () Bool)

(declare-fun res!757026 () Bool)

(assert (=> b!1133716 (=> (not res!757026) (not e!645269))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!73820 (_ BitVec 32)) Bool)

(assert (=> b!1133716 (= res!757026 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1133717 () Bool)

(declare-fun call!49169 () Bool)

(assert (=> b!1133717 call!49169))

(declare-fun lt!503809 () Unit!37091)

(declare-fun call!49170 () Unit!37091)

(assert (=> b!1133717 (= lt!503809 call!49170)))

(declare-fun e!645260 () Unit!37091)

(assert (=> b!1133717 (= e!645260 lt!503809)))

(declare-fun b!1133718 () Bool)

(declare-fun res!757034 () Bool)

(assert (=> b!1133718 (=> (not res!757034) (not e!645269))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1133718 (= res!757034 (validKeyInArray!0 k!934))))

(declare-fun b!1133719 () Bool)

(declare-fun res!757028 () Bool)

(assert (=> b!1133719 (=> (not res!757028) (not e!645269))))

(assert (=> b!1133719 (= res!757028 (= (select (arr!35557 _keys!1208) i!673) k!934))))

(declare-fun b!1133720 () Bool)

(declare-fun e!645273 () Bool)

(declare-fun tp_is_empty!28499 () Bool)

(assert (=> b!1133720 (= e!645273 tp_is_empty!28499)))

(declare-fun bm!49167 () Bool)

(declare-fun call!49172 () ListLongMap!16115)

(declare-fun lt!503810 () ListLongMap!16115)

(declare-fun call!49175 () Bool)

(declare-fun contains!6564 (ListLongMap!16115 (_ BitVec 64)) Bool)

(assert (=> bm!49167 (= call!49175 (contains!6564 (ite c!110622 lt!503810 call!49172) k!934))))

(declare-fun b!1133721 () Bool)

(assert (=> b!1133721 (= e!645268 e!645264)))

(declare-fun res!757033 () Bool)

(assert (=> b!1133721 (=> res!757033 e!645264)))

(declare-fun lt!503814 () ListLongMap!16115)

(assert (=> b!1133721 (= res!757033 (not (contains!6564 lt!503814 k!934)))))

(assert (=> b!1133721 (= lt!503814 (getCurrentListMapNoExtraKeys!4522 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1133722 () Bool)

(declare-fun e!645271 () Bool)

(declare-fun e!645267 () Bool)

(assert (=> b!1133722 (= e!645271 (not e!645267))))

(declare-fun res!757029 () Bool)

(assert (=> b!1133722 (=> res!757029 e!645267)))

(assert (=> b!1133722 (= res!757029 (bvsgt from!1455 i!673))))

(declare-fun arrayContainsKey!0 (array!73820 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1133722 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-fun lt!503816 () Unit!37091)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!73820 (_ BitVec 64) (_ BitVec 32)) Unit!37091)

(assert (=> b!1133722 (= lt!503816 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun b!1133723 () Bool)

(declare-fun res!757036 () Bool)

(assert (=> b!1133723 (=> (not res!757036) (not e!645271))))

(declare-datatypes ((List!24947 0))(
  ( (Nil!24944) (Cons!24943 (h!26152 (_ BitVec 64)) (t!35915 List!24947)) )
))
(declare-fun arrayNoDuplicates!0 (array!73820 (_ BitVec 32) List!24947) Bool)

(assert (=> b!1133723 (= res!757036 (arrayNoDuplicates!0 lt!503820 #b00000000000000000000000000000000 Nil!24944))))

(declare-fun b!1133724 () Bool)

(declare-fun e!645261 () Unit!37091)

(declare-fun lt!503806 () Unit!37091)

(assert (=> b!1133724 (= e!645261 lt!503806)))

(assert (=> b!1133724 (= lt!503806 call!49170)))

(assert (=> b!1133724 call!49169))

(declare-fun b!1133725 () Bool)

(declare-fun e!645266 () Bool)

(declare-fun e!645272 () Bool)

(declare-fun mapRes!44573 () Bool)

(assert (=> b!1133725 (= e!645266 (and e!645272 mapRes!44573))))

(declare-fun condMapEmpty!44573 () Bool)

(declare-fun mapDefault!44573 () ValueCell!13540)

