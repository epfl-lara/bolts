; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!98978 () Bool)

(assert start!98978)

(declare-fun b_free!24547 () Bool)

(declare-fun b_next!24547 () Bool)

(assert (=> start!98978 (= b_free!24547 (not b_next!24547))))

(declare-fun tp!86352 () Bool)

(declare-fun b_and!39957 () Bool)

(assert (=> start!98978 (= tp!86352 b_and!39957)))

(declare-fun b!1160110 () Bool)

(declare-fun res!770030 () Bool)

(declare-fun e!659736 () Bool)

(assert (=> b!1160110 (=> (not res!770030) (not e!659736))))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1160110 (= res!770030 (validMask!0 mask!1564))))

(declare-fun b!1160111 () Bool)

(declare-datatypes ((Unit!38140 0))(
  ( (Unit!38141) )
))
(declare-fun e!659739 () Unit!38140)

(declare-fun e!659746 () Unit!38140)

(assert (=> b!1160111 (= e!659739 e!659746)))

(declare-fun c!115734 () Bool)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun lt!521735 () Bool)

(assert (=> b!1160111 (= c!115734 (and (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!521735))))

(declare-fun b!1160112 () Bool)

(declare-fun res!770031 () Bool)

(assert (=> b!1160112 (=> (not res!770031) (not e!659736))))

(declare-datatypes ((V!43897 0))(
  ( (V!43898 (val!14595 Int)) )
))
(declare-datatypes ((ValueCell!13829 0))(
  ( (ValueCellFull!13829 (v!17233 V!43897)) (EmptyCell!13829) )
))
(declare-datatypes ((array!74944 0))(
  ( (array!74945 (arr!36119 (Array (_ BitVec 32) ValueCell!13829)) (size!36656 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!74944)

(declare-datatypes ((array!74946 0))(
  ( (array!74947 (arr!36120 (Array (_ BitVec 32) (_ BitVec 64))) (size!36657 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!74946)

(assert (=> b!1160112 (= res!770031 (and (= (size!36656 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!36657 _keys!1208) (size!36656 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1160113 () Bool)

(declare-fun e!659749 () Bool)

(declare-datatypes ((tuple2!18660 0))(
  ( (tuple2!18661 (_1!9340 (_ BitVec 64)) (_2!9340 V!43897)) )
))
(declare-datatypes ((List!25438 0))(
  ( (Nil!25435) (Cons!25434 (h!26643 tuple2!18660) (t!36984 List!25438)) )
))
(declare-datatypes ((ListLongMap!16641 0))(
  ( (ListLongMap!16642 (toList!8336 List!25438)) )
))
(declare-fun call!56111 () ListLongMap!16641)

(declare-fun call!56109 () ListLongMap!16641)

(assert (=> b!1160113 (= e!659749 (= call!56111 call!56109))))

(declare-fun res!770023 () Bool)

(assert (=> start!98978 (=> (not res!770023) (not e!659736))))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> start!98978 (= res!770023 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!36657 _keys!1208))))))

(assert (=> start!98978 e!659736))

(declare-fun tp_is_empty!29077 () Bool)

(assert (=> start!98978 tp_is_empty!29077))

(declare-fun array_inv!27506 (array!74946) Bool)

(assert (=> start!98978 (array_inv!27506 _keys!1208)))

(assert (=> start!98978 true))

(assert (=> start!98978 tp!86352))

(declare-fun e!659750 () Bool)

(declare-fun array_inv!27507 (array!74944) Bool)

(assert (=> start!98978 (and (array_inv!27507 _values!996) e!659750)))

(declare-fun e!659745 () Bool)

(declare-fun k!934 () (_ BitVec 64))

(declare-fun b!1160114 () Bool)

(declare-fun arrayContainsKey!0 (array!74946 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1160114 (= e!659745 (arrayContainsKey!0 _keys!1208 k!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun call!56107 () Unit!38140)

(declare-fun c!115733 () Bool)

(declare-fun lt!521740 () ListLongMap!16641)

(declare-fun lt!521747 () ListLongMap!16641)

(declare-fun c!115730 () Bool)

(declare-fun minValue!944 () V!43897)

(declare-fun zeroValue!944 () V!43897)

(declare-fun bm!56102 () Bool)

(declare-fun addStillContains!959 (ListLongMap!16641 (_ BitVec 64) V!43897 (_ BitVec 64)) Unit!38140)

(assert (=> bm!56102 (= call!56107 (addStillContains!959 (ite c!115730 lt!521747 lt!521740) (ite c!115730 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!115733 #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000)) (ite c!115730 minValue!944 (ite c!115733 zeroValue!944 minValue!944)) k!934))))

(declare-fun b!1160115 () Bool)

(declare-fun e!659741 () Bool)

(declare-fun e!659737 () Bool)

(assert (=> b!1160115 (= e!659741 (not e!659737))))

(declare-fun res!770028 () Bool)

(assert (=> b!1160115 (=> res!770028 e!659737)))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1160115 (= res!770028 (bvsgt from!1455 i!673))))

(assert (=> b!1160115 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-fun lt!521733 () Unit!38140)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!74946 (_ BitVec 64) (_ BitVec 32)) Unit!38140)

(assert (=> b!1160115 (= lt!521733 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun b!1160116 () Bool)

(declare-fun e!659738 () Bool)

(assert (=> b!1160116 (= e!659737 e!659738)))

(declare-fun res!770027 () Bool)

(assert (=> b!1160116 (=> res!770027 e!659738)))

(assert (=> b!1160116 (= res!770027 (not (= from!1455 i!673)))))

(declare-fun defaultEntry!1004 () Int)

(declare-fun lt!521739 () array!74944)

(declare-fun lt!521748 () ListLongMap!16641)

(declare-fun lt!521745 () array!74946)

(declare-fun getCurrentListMapNoExtraKeys!4772 (array!74946 array!74944 (_ BitVec 32) (_ BitVec 32) V!43897 V!43897 (_ BitVec 32) Int) ListLongMap!16641)

(assert (=> b!1160116 (= lt!521748 (getCurrentListMapNoExtraKeys!4772 lt!521745 lt!521739 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun lt!521751 () V!43897)

(assert (=> b!1160116 (= lt!521739 (array!74945 (store (arr!36119 _values!996) i!673 (ValueCellFull!13829 lt!521751)) (size!36656 _values!996)))))

(declare-fun dynLambda!2774 (Int (_ BitVec 64)) V!43897)

(assert (=> b!1160116 (= lt!521751 (dynLambda!2774 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!521734 () ListLongMap!16641)

(assert (=> b!1160116 (= lt!521734 (getCurrentListMapNoExtraKeys!4772 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1160117 () Bool)

(declare-fun e!659747 () Unit!38140)

(declare-fun Unit!38142 () Unit!38140)

(assert (=> b!1160117 (= e!659747 Unit!38142)))

(declare-fun b!1160118 () Bool)

(declare-fun e!659748 () Bool)

(declare-fun lt!521736 () ListLongMap!16641)

(assert (=> b!1160118 (= e!659748 (= lt!521736 (getCurrentListMapNoExtraKeys!4772 lt!521745 lt!521739 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004)))))

(declare-fun b!1160119 () Bool)

(declare-fun e!659743 () Bool)

(assert (=> b!1160119 (= e!659743 true)))

(assert (=> b!1160119 e!659748))

(declare-fun res!770020 () Bool)

(assert (=> b!1160119 (=> (not res!770020) (not e!659748))))

(assert (=> b!1160119 (= res!770020 (= lt!521736 lt!521740))))

(declare-fun -!1408 (ListLongMap!16641 (_ BitVec 64)) ListLongMap!16641)

(assert (=> b!1160119 (= lt!521736 (-!1408 lt!521734 k!934))))

(declare-fun lt!521732 () V!43897)

(declare-fun +!3662 (ListLongMap!16641 tuple2!18660) ListLongMap!16641)

(assert (=> b!1160119 (= (-!1408 (+!3662 lt!521740 (tuple2!18661 (select (arr!36120 _keys!1208) from!1455) lt!521732)) (select (arr!36120 _keys!1208) from!1455)) lt!521740)))

(declare-fun lt!521731 () Unit!38140)

(declare-fun addThenRemoveForNewKeyIsSame!246 (ListLongMap!16641 (_ BitVec 64) V!43897) Unit!38140)

(assert (=> b!1160119 (= lt!521731 (addThenRemoveForNewKeyIsSame!246 lt!521740 (select (arr!36120 _keys!1208) from!1455) lt!521732))))

(declare-fun get!18450 (ValueCell!13829 V!43897) V!43897)

(assert (=> b!1160119 (= lt!521732 (get!18450 (select (arr!36119 _values!996) from!1455) lt!521751))))

(declare-fun lt!521743 () Unit!38140)

(assert (=> b!1160119 (= lt!521743 e!659747)))

(declare-fun c!115729 () Bool)

(declare-fun contains!6818 (ListLongMap!16641 (_ BitVec 64)) Bool)

(assert (=> b!1160119 (= c!115729 (contains!6818 lt!521740 k!934))))

(assert (=> b!1160119 (= lt!521740 (getCurrentListMapNoExtraKeys!4772 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1160120 () Bool)

(declare-fun call!56112 () Bool)

(assert (=> b!1160120 call!56112))

(declare-fun lt!521750 () Unit!38140)

(declare-fun call!56110 () Unit!38140)

(assert (=> b!1160120 (= lt!521750 call!56110)))

(assert (=> b!1160120 (= e!659746 lt!521750)))

(declare-fun mapIsEmpty!45440 () Bool)

(declare-fun mapRes!45440 () Bool)

(assert (=> mapIsEmpty!45440 mapRes!45440))

(declare-fun b!1160121 () Bool)

(declare-fun e!659735 () Bool)

(assert (=> b!1160121 (= e!659735 tp_is_empty!29077)))

(declare-fun b!1160122 () Bool)

(assert (=> b!1160122 (= e!659736 e!659741)))

(declare-fun res!770029 () Bool)

(assert (=> b!1160122 (=> (not res!770029) (not e!659741))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!74946 (_ BitVec 32)) Bool)

(assert (=> b!1160122 (= res!770029 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!521745 mask!1564))))

(assert (=> b!1160122 (= lt!521745 (array!74947 (store (arr!36120 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!36657 _keys!1208)))))

(declare-fun bm!56103 () Bool)

(declare-fun call!56108 () Bool)

(assert (=> bm!56103 (= call!56112 call!56108)))

(declare-fun b!1160123 () Bool)

(declare-fun res!770026 () Bool)

(assert (=> b!1160123 (=> (not res!770026) (not e!659736))))

(declare-datatypes ((List!25439 0))(
  ( (Nil!25436) (Cons!25435 (h!26644 (_ BitVec 64)) (t!36985 List!25439)) )
))
(declare-fun arrayNoDuplicates!0 (array!74946 (_ BitVec 32) List!25439) Bool)

(assert (=> b!1160123 (= res!770026 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!25436))))

(declare-fun b!1160124 () Bool)

(assert (=> b!1160124 (= e!659738 e!659743)))

(declare-fun res!770033 () Bool)

(assert (=> b!1160124 (=> res!770033 e!659743)))

(assert (=> b!1160124 (= res!770033 (not (= (select (arr!36120 _keys!1208) from!1455) k!934)))))

(assert (=> b!1160124 e!659749))

(declare-fun c!115732 () Bool)

(assert (=> b!1160124 (= c!115732 (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673))))

(declare-fun lt!521746 () Unit!38140)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!631 (array!74946 array!74944 (_ BitVec 32) (_ BitVec 32) V!43897 V!43897 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!38140)

(assert (=> b!1160124 (= lt!521746 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!631 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun mapNonEmpty!45440 () Bool)

(declare-fun tp!86353 () Bool)

(declare-fun e!659742 () Bool)

(assert (=> mapNonEmpty!45440 (= mapRes!45440 (and tp!86353 e!659742))))

(declare-fun mapRest!45440 () (Array (_ BitVec 32) ValueCell!13829))

(declare-fun mapValue!45440 () ValueCell!13829)

(declare-fun mapKey!45440 () (_ BitVec 32))

(assert (=> mapNonEmpty!45440 (= (arr!36119 _values!996) (store mapRest!45440 mapKey!45440 mapValue!45440))))

(declare-fun bm!56104 () Bool)

(assert (=> bm!56104 (= call!56111 (getCurrentListMapNoExtraKeys!4772 lt!521745 lt!521739 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1160125 () Bool)

(declare-fun res!770022 () Bool)

(assert (=> b!1160125 (=> (not res!770022) (not e!659736))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1160125 (= res!770022 (validKeyInArray!0 k!934))))

(declare-fun b!1160126 () Bool)

(declare-fun Unit!38143 () Unit!38140)

(assert (=> b!1160126 (= e!659746 Unit!38143)))

(declare-fun call!56106 () ListLongMap!16641)

(declare-fun bm!56105 () Bool)

(assert (=> bm!56105 (= call!56108 (contains!6818 (ite c!115730 lt!521747 call!56106) k!934))))

(declare-fun b!1160127 () Bool)

(assert (=> b!1160127 (contains!6818 (+!3662 lt!521747 (tuple2!18661 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944)) k!934)))

(declare-fun lt!521738 () Unit!38140)

(assert (=> b!1160127 (= lt!521738 call!56107)))

(assert (=> b!1160127 call!56108))

(declare-fun call!56105 () ListLongMap!16641)

(assert (=> b!1160127 (= lt!521747 call!56105)))

(declare-fun lt!521749 () Unit!38140)

(assert (=> b!1160127 (= lt!521749 (addStillContains!959 lt!521740 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944 k!934))))

(declare-fun e!659751 () Unit!38140)

(assert (=> b!1160127 (= e!659751 lt!521738)))

(declare-fun bm!56106 () Bool)

(assert (=> bm!56106 (= call!56110 call!56107)))

(declare-fun bm!56107 () Bool)

(assert (=> bm!56107 (= call!56109 (getCurrentListMapNoExtraKeys!4772 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1160128 () Bool)

(assert (=> b!1160128 (= e!659749 (= call!56111 (-!1408 call!56109 k!934)))))

(declare-fun bm!56108 () Bool)

(assert (=> bm!56108 (= call!56106 call!56105)))

(declare-fun e!659744 () Bool)

(declare-fun b!1160129 () Bool)

(assert (=> b!1160129 (= e!659744 (arrayContainsKey!0 _keys!1208 k!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun b!1160130 () Bool)

(assert (=> b!1160130 (= e!659742 tp_is_empty!29077)))

(declare-fun b!1160131 () Bool)

(declare-fun res!770024 () Bool)

(assert (=> b!1160131 (=> (not res!770024) (not e!659736))))

(assert (=> b!1160131 (= res!770024 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!36657 _keys!1208))))))

(declare-fun b!1160132 () Bool)

(assert (=> b!1160132 (= e!659750 (and e!659735 mapRes!45440))))

(declare-fun condMapEmpty!45440 () Bool)

(declare-fun mapDefault!45440 () ValueCell!13829)

