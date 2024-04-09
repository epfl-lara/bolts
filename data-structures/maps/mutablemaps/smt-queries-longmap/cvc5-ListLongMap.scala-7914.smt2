; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!98264 () Bool)

(assert start!98264)

(declare-fun b_free!23929 () Bool)

(declare-fun b_next!23929 () Bool)

(assert (=> start!98264 (= b_free!23929 (not b_next!23929))))

(declare-fun tp!84491 () Bool)

(declare-fun b_and!38663 () Bool)

(assert (=> start!98264 (= tp!84491 b_and!38663)))

(declare-fun b!1131332 () Bool)

(declare-fun res!755888 () Bool)

(declare-fun e!643887 () Bool)

(assert (=> b!1131332 (=> (not res!755888) (not e!643887))))

(declare-fun k!934 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1131332 (= res!755888 (validKeyInArray!0 k!934))))

(declare-fun b!1131333 () Bool)

(declare-fun e!643898 () Bool)

(declare-fun e!643891 () Bool)

(assert (=> b!1131333 (= e!643898 (not e!643891))))

(declare-fun res!755880 () Bool)

(assert (=> b!1131333 (=> res!755880 e!643891)))

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1131333 (= res!755880 (bvsgt from!1455 i!673))))

(declare-datatypes ((array!73736 0))(
  ( (array!73737 (arr!35517 (Array (_ BitVec 32) (_ BitVec 64))) (size!36054 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!73736)

(declare-fun arrayContainsKey!0 (array!73736 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1131333 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!37012 0))(
  ( (Unit!37013) )
))
(declare-fun lt!502480 () Unit!37012)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!73736 (_ BitVec 64) (_ BitVec 32)) Unit!37012)

(assert (=> b!1131333 (= lt!502480 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun lt!502485 () array!73736)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-fun bm!48619 () Bool)

(declare-datatypes ((V!43073 0))(
  ( (V!43074 (val!14286 Int)) )
))
(declare-datatypes ((tuple2!18094 0))(
  ( (tuple2!18095 (_1!9057 (_ BitVec 64)) (_2!9057 V!43073)) )
))
(declare-datatypes ((List!24910 0))(
  ( (Nil!24907) (Cons!24906 (h!26115 tuple2!18094) (t!35838 List!24910)) )
))
(declare-datatypes ((ListLongMap!16075 0))(
  ( (ListLongMap!16076 (toList!8053 List!24910)) )
))
(declare-fun call!48627 () ListLongMap!16075)

(declare-fun minValue!944 () V!43073)

(declare-fun zeroValue!944 () V!43073)

(declare-datatypes ((ValueCell!13520 0))(
  ( (ValueCellFull!13520 (v!16920 V!43073)) (EmptyCell!13520) )
))
(declare-datatypes ((array!73738 0))(
  ( (array!73739 (arr!35518 (Array (_ BitVec 32) ValueCell!13520)) (size!36055 (_ BitVec 32))) )
))
(declare-fun lt!502487 () array!73738)

(declare-fun getCurrentListMapNoExtraKeys!4505 (array!73736 array!73738 (_ BitVec 32) (_ BitVec 32) V!43073 V!43073 (_ BitVec 32) Int) ListLongMap!16075)

(assert (=> bm!48619 (= call!48627 (getCurrentListMapNoExtraKeys!4505 lt!502485 lt!502487 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun _values!996 () array!73738)

(declare-fun bm!48620 () Bool)

(declare-fun call!48628 () ListLongMap!16075)

(assert (=> bm!48620 (= call!48628 (getCurrentListMapNoExtraKeys!4505 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1131334 () Bool)

(declare-fun e!643892 () Bool)

(declare-fun e!643894 () Bool)

(assert (=> b!1131334 (= e!643892 e!643894)))

(declare-fun res!755881 () Bool)

(assert (=> b!1131334 (=> res!755881 e!643894)))

(declare-fun lt!502484 () ListLongMap!16075)

(declare-fun contains!6545 (ListLongMap!16075 (_ BitVec 64)) Bool)

(assert (=> b!1131334 (= res!755881 (not (contains!6545 lt!502484 k!934)))))

(assert (=> b!1131334 (= lt!502484 (getCurrentListMapNoExtraKeys!4505 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun bm!48621 () Bool)

(declare-fun call!48629 () ListLongMap!16075)

(declare-fun call!48622 () ListLongMap!16075)

(assert (=> bm!48621 (= call!48629 call!48622)))

(declare-fun b!1131336 () Bool)

(assert (=> b!1131336 (= e!643894 (bvsge (bvadd #b00000000000000000000000000000001 from!1455) #b00000000000000000000000000000000))))

(declare-fun e!643893 () Bool)

(assert (=> b!1131336 e!643893))

(declare-fun c!110123 () Bool)

(assert (=> b!1131336 (= c!110123 (and (not (= k!934 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!934 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun lt!502490 () Unit!37012)

(declare-fun lemmaListMapContainsThenArrayContainsFrom!328 (array!73736 array!73738 (_ BitVec 32) (_ BitVec 32) V!43073 V!43073 (_ BitVec 64) (_ BitVec 32) Int) Unit!37012)

(assert (=> b!1131336 (= lt!502490 (lemmaListMapContainsThenArrayContainsFrom!328 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun lt!502492 () Unit!37012)

(declare-fun e!643886 () Unit!37012)

(assert (=> b!1131336 (= lt!502492 e!643886)))

(declare-fun c!110125 () Bool)

(declare-fun lt!502489 () Bool)

(assert (=> b!1131336 (= c!110125 (and (not lt!502489) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> b!1131336 (= lt!502489 (= (bvand extraKeys!923 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(declare-fun b!1131337 () Bool)

(declare-fun e!643888 () Bool)

(assert (=> b!1131337 (= e!643888 e!643892)))

(declare-fun res!755882 () Bool)

(assert (=> b!1131337 (=> res!755882 e!643892)))

(assert (=> b!1131337 (= res!755882 (not (= (select (arr!35517 _keys!1208) from!1455) k!934)))))

(declare-fun e!643885 () Bool)

(assert (=> b!1131337 e!643885))

(declare-fun c!110126 () Bool)

(assert (=> b!1131337 (= c!110126 (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673))))

(declare-fun lt!502483 () Unit!37012)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!433 (array!73736 array!73738 (_ BitVec 32) (_ BitVec 32) V!43073 V!43073 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!37012)

(assert (=> b!1131337 (= lt!502483 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!433 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1131338 () Bool)

(declare-fun lt!502481 () Unit!37012)

(assert (=> b!1131338 (= e!643886 lt!502481)))

(declare-fun lt!502491 () Unit!37012)

(declare-fun addStillContains!717 (ListLongMap!16075 (_ BitVec 64) V!43073 (_ BitVec 64)) Unit!37012)

(assert (=> b!1131338 (= lt!502491 (addStillContains!717 lt!502484 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944 k!934))))

(declare-fun lt!502488 () ListLongMap!16075)

(assert (=> b!1131338 (= lt!502488 call!48622)))

(declare-fun call!48624 () Bool)

(assert (=> b!1131338 call!48624))

(declare-fun call!48623 () Unit!37012)

(assert (=> b!1131338 (= lt!502481 call!48623)))

(declare-fun +!3417 (ListLongMap!16075 tuple2!18094) ListLongMap!16075)

(assert (=> b!1131338 (contains!6545 (+!3417 lt!502488 (tuple2!18095 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944)) k!934)))

(declare-fun b!1131339 () Bool)

(assert (=> b!1131339 (= e!643893 (ite (= k!934 #b0000000000000000000000000000000000000000000000000000000000000000) (not lt!502489) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun mapIsEmpty!44506 () Bool)

(declare-fun mapRes!44506 () Bool)

(assert (=> mapIsEmpty!44506 mapRes!44506))

(declare-fun b!1131340 () Bool)

(declare-fun e!643890 () Bool)

(declare-fun e!643895 () Bool)

(assert (=> b!1131340 (= e!643890 (and e!643895 mapRes!44506))))

(declare-fun condMapEmpty!44506 () Bool)

(declare-fun mapDefault!44506 () ValueCell!13520)

