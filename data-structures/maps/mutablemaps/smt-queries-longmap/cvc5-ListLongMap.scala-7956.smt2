; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!98612 () Bool)

(assert start!98612)

(declare-fun b_free!24181 () Bool)

(declare-fun b_next!24181 () Bool)

(assert (=> start!98612 (= b_free!24181 (not b_next!24181))))

(declare-fun tp!85255 () Bool)

(declare-fun b_and!39225 () Bool)

(assert (=> start!98612 (= tp!85255 b_and!39225)))

(declare-fun b!1143299 () Bool)

(declare-datatypes ((Unit!37444 0))(
  ( (Unit!37445) )
))
(declare-fun e!650437 () Unit!37444)

(declare-fun Unit!37446 () Unit!37444)

(assert (=> b!1143299 (= e!650437 Unit!37446)))

(declare-fun lt!509858 () Bool)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun b!1143300 () Bool)

(declare-fun k!934 () (_ BitVec 64))

(declare-fun e!650442 () Bool)

(assert (=> b!1143300 (= e!650442 (ite (= k!934 #b0000000000000000000000000000000000000000000000000000000000000000) (not lt!509858) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!1143301 () Bool)

(declare-fun e!650433 () Unit!37444)

(declare-fun Unit!37447 () Unit!37444)

(assert (=> b!1143301 (= e!650433 Unit!37447)))

(assert (=> b!1143301 (= lt!509858 (= (bvand extraKeys!923 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(declare-fun c!112438 () Bool)

(assert (=> b!1143301 (= c!112438 (and (not lt!509858) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun lt!509847 () Unit!37444)

(declare-fun e!650438 () Unit!37444)

(assert (=> b!1143301 (= lt!509847 e!650438)))

(declare-datatypes ((V!43409 0))(
  ( (V!43410 (val!14412 Int)) )
))
(declare-fun zeroValue!944 () V!43409)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-fun from!1455 () (_ BitVec 32))

(declare-datatypes ((ValueCell!13646 0))(
  ( (ValueCellFull!13646 (v!17050 V!43409)) (EmptyCell!13646) )
))
(declare-datatypes ((array!74232 0))(
  ( (array!74233 (arr!35763 (Array (_ BitVec 32) ValueCell!13646)) (size!36300 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!74232)

(declare-fun minValue!944 () V!43409)

(declare-datatypes ((array!74234 0))(
  ( (array!74235 (arr!35764 (Array (_ BitVec 32) (_ BitVec 64))) (size!36301 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!74234)

(declare-fun lt!509846 () Unit!37444)

(declare-fun lemmaListMapContainsThenArrayContainsFrom!407 (array!74234 array!74232 (_ BitVec 32) (_ BitVec 32) V!43409 V!43409 (_ BitVec 64) (_ BitVec 32) Int) Unit!37444)

(assert (=> b!1143301 (= lt!509846 (lemmaListMapContainsThenArrayContainsFrom!407 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun c!112439 () Bool)

(assert (=> b!1143301 (= c!112439 (and (not (= k!934 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!934 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun res!761810 () Bool)

(assert (=> b!1143301 (= res!761810 e!650442)))

(declare-fun e!650435 () Bool)

(assert (=> b!1143301 (=> (not res!761810) (not e!650435))))

(assert (=> b!1143301 e!650435))

(declare-fun lt!509852 () Unit!37444)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!74234 (_ BitVec 32) (_ BitVec 32)) Unit!37444)

(assert (=> b!1143301 (= lt!509852 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1208 #b00000000000000000000000000000000 from!1455))))

(declare-datatypes ((List!25128 0))(
  ( (Nil!25125) (Cons!25124 (h!26333 (_ BitVec 64)) (t!36308 List!25128)) )
))
(declare-fun arrayNoDuplicates!0 (array!74234 (_ BitVec 32) List!25128) Bool)

(assert (=> b!1143301 (arrayNoDuplicates!0 _keys!1208 from!1455 Nil!25125)))

(declare-fun lt!509855 () Unit!37444)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!74234 (_ BitVec 64) (_ BitVec 32) List!25128) Unit!37444)

(assert (=> b!1143301 (= lt!509855 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!1208 k!934 from!1455 Nil!25125))))

(assert (=> b!1143301 false))

(declare-fun b!1143302 () Bool)

(declare-fun e!650431 () Bool)

(declare-fun e!650434 () Bool)

(assert (=> b!1143302 (= e!650431 (not e!650434))))

(declare-fun res!761809 () Bool)

(assert (=> b!1143302 (=> res!761809 e!650434)))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1143302 (= res!761809 (bvsgt from!1455 i!673))))

(declare-fun arrayContainsKey!0 (array!74234 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1143302 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-fun lt!509853 () Unit!37444)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!74234 (_ BitVec 64) (_ BitVec 32)) Unit!37444)

(assert (=> b!1143302 (= lt!509853 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun bm!51710 () Bool)

(declare-datatypes ((tuple2!18330 0))(
  ( (tuple2!18331 (_1!9175 (_ BitVec 64)) (_2!9175 V!43409)) )
))
(declare-datatypes ((List!25129 0))(
  ( (Nil!25126) (Cons!25125 (h!26334 tuple2!18330) (t!36309 List!25129)) )
))
(declare-datatypes ((ListLongMap!16311 0))(
  ( (ListLongMap!16312 (toList!8171 List!25129)) )
))
(declare-fun call!51714 () ListLongMap!16311)

(declare-fun getCurrentListMapNoExtraKeys!4613 (array!74234 array!74232 (_ BitVec 32) (_ BitVec 32) V!43409 V!43409 (_ BitVec 32) Int) ListLongMap!16311)

(assert (=> bm!51710 (= call!51714 (getCurrentListMapNoExtraKeys!4613 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1143303 () Bool)

(assert (=> b!1143303 (= e!650435 (arrayContainsKey!0 _keys!1208 k!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun bm!51711 () Bool)

(declare-fun call!51720 () ListLongMap!16311)

(declare-fun call!51717 () ListLongMap!16311)

(assert (=> bm!51711 (= call!51720 call!51717)))

(declare-fun bm!51712 () Bool)

(declare-fun call!51713 () Unit!37444)

(declare-fun call!51716 () Unit!37444)

(assert (=> bm!51712 (= call!51713 call!51716)))

(declare-fun b!1143304 () Bool)

(declare-fun e!650428 () Bool)

(assert (=> b!1143304 (= e!650428 true)))

(declare-fun lt!509845 () ListLongMap!16311)

(declare-fun lt!509859 () V!43409)

(declare-fun -!1264 (ListLongMap!16311 (_ BitVec 64)) ListLongMap!16311)

(declare-fun +!3515 (ListLongMap!16311 tuple2!18330) ListLongMap!16311)

(assert (=> b!1143304 (= (-!1264 (+!3515 lt!509845 (tuple2!18331 (select (arr!35764 _keys!1208) from!1455) lt!509859)) (select (arr!35764 _keys!1208) from!1455)) lt!509845)))

(declare-fun lt!509844 () Unit!37444)

(declare-fun addThenRemoveForNewKeyIsSame!119 (ListLongMap!16311 (_ BitVec 64) V!43409) Unit!37444)

(assert (=> b!1143304 (= lt!509844 (addThenRemoveForNewKeyIsSame!119 lt!509845 (select (arr!35764 _keys!1208) from!1455) lt!509859))))

(declare-fun lt!509856 () V!43409)

(declare-fun get!18201 (ValueCell!13646 V!43409) V!43409)

(assert (=> b!1143304 (= lt!509859 (get!18201 (select (arr!35763 _values!996) from!1455) lt!509856))))

(declare-fun lt!509857 () Unit!37444)

(assert (=> b!1143304 (= lt!509857 e!650433)))

(declare-fun c!112440 () Bool)

(declare-fun contains!6673 (ListLongMap!16311 (_ BitVec 64)) Bool)

(assert (=> b!1143304 (= c!112440 (contains!6673 lt!509845 k!934))))

(assert (=> b!1143304 (= lt!509845 (getCurrentListMapNoExtraKeys!4613 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun e!650427 () Bool)

(declare-fun call!51718 () ListLongMap!16311)

(declare-fun b!1143305 () Bool)

(assert (=> b!1143305 (= e!650427 (= call!51718 (-!1264 call!51714 k!934)))))

(declare-fun bm!51713 () Bool)

(declare-fun c!112436 () Bool)

(assert (=> bm!51713 (= call!51717 (+!3515 lt!509845 (ite (or c!112438 c!112436) (tuple2!18331 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!18331 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944))))))

(declare-fun b!1143306 () Bool)

(declare-fun res!761817 () Bool)

(assert (=> b!1143306 (=> (not res!761817) (not e!650431))))

(declare-fun lt!509841 () array!74234)

(assert (=> b!1143306 (= res!761817 (arrayNoDuplicates!0 lt!509841 #b00000000000000000000000000000000 Nil!25125))))

(declare-fun b!1143307 () Bool)

(declare-fun res!761821 () Bool)

(declare-fun e!650436 () Bool)

(assert (=> b!1143307 (=> (not res!761821) (not e!650436))))

(assert (=> b!1143307 (= res!761821 (and (= (size!36300 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!36301 _keys!1208) (size!36300 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun res!761813 () Bool)

(assert (=> start!98612 (=> (not res!761813) (not e!650436))))

(assert (=> start!98612 (= res!761813 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!36301 _keys!1208))))))

(assert (=> start!98612 e!650436))

(declare-fun tp_is_empty!28711 () Bool)

(assert (=> start!98612 tp_is_empty!28711))

(declare-fun array_inv!27280 (array!74234) Bool)

(assert (=> start!98612 (array_inv!27280 _keys!1208)))

(assert (=> start!98612 true))

(assert (=> start!98612 tp!85255))

(declare-fun e!650441 () Bool)

(declare-fun array_inv!27281 (array!74232) Bool)

(assert (=> start!98612 (and (array_inv!27281 _values!996) e!650441)))

(declare-fun b!1143308 () Bool)

(declare-fun call!51715 () Bool)

(assert (=> b!1143308 call!51715))

(declare-fun lt!509839 () Unit!37444)

(assert (=> b!1143308 (= lt!509839 call!51713)))

(assert (=> b!1143308 (= e!650437 lt!509839)))

(declare-fun b!1143309 () Bool)

(declare-fun res!761819 () Bool)

(assert (=> b!1143309 (=> (not res!761819) (not e!650436))))

(assert (=> b!1143309 (= res!761819 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!36301 _keys!1208))))))

(declare-fun b!1143310 () Bool)

(assert (=> b!1143310 (= e!650427 (= call!51718 call!51714))))

(declare-fun bm!51714 () Bool)

(declare-fun addStillContains!812 (ListLongMap!16311 (_ BitVec 64) V!43409 (_ BitVec 64)) Unit!37444)

(assert (=> bm!51714 (= call!51716 (addStillContains!812 lt!509845 (ite (or c!112438 c!112436) #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000) (ite (or c!112438 c!112436) zeroValue!944 minValue!944) k!934))))

(declare-fun b!1143311 () Bool)

(assert (=> b!1143311 (= c!112436 (and (not lt!509858) (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun e!650440 () Unit!37444)

(assert (=> b!1143311 (= e!650438 e!650440)))

(declare-fun lt!509840 () ListLongMap!16311)

(declare-fun call!51719 () Bool)

(declare-fun bm!51715 () Bool)

(assert (=> bm!51715 (= call!51719 (contains!6673 (ite c!112438 lt!509840 call!51720) k!934))))

(declare-fun b!1143312 () Bool)

(declare-fun e!650429 () Bool)

(assert (=> b!1143312 (= e!650429 e!650428)))

(declare-fun res!761818 () Bool)

(assert (=> b!1143312 (=> res!761818 e!650428)))

(assert (=> b!1143312 (= res!761818 (not (= (select (arr!35764 _keys!1208) from!1455) k!934)))))

(assert (=> b!1143312 e!650427))

(declare-fun c!112437 () Bool)

(assert (=> b!1143312 (= c!112437 (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673))))

(declare-fun lt!509848 () Unit!37444)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!519 (array!74234 array!74232 (_ BitVec 32) (_ BitVec 32) V!43409 V!43409 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!37444)

(assert (=> b!1143312 (= lt!509848 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!519 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun lt!509851 () array!74232)

(declare-fun bm!51716 () Bool)

(assert (=> bm!51716 (= call!51718 (getCurrentListMapNoExtraKeys!4613 lt!509841 lt!509851 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1143313 () Bool)

(declare-fun res!761820 () Bool)

(assert (=> b!1143313 (=> (not res!761820) (not e!650436))))

(assert (=> b!1143313 (= res!761820 (= (select (arr!35764 _keys!1208) i!673) k!934))))

(declare-fun b!1143314 () Bool)

(assert (=> b!1143314 (= e!650436 e!650431)))

(declare-fun res!761812 () Bool)

(assert (=> b!1143314 (=> (not res!761812) (not e!650431))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!74234 (_ BitVec 32)) Bool)

(assert (=> b!1143314 (= res!761812 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!509841 mask!1564))))

(assert (=> b!1143314 (= lt!509841 (array!74235 (store (arr!35764 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!36301 _keys!1208)))))

(declare-fun b!1143315 () Bool)

(declare-fun e!650439 () Bool)

(declare-fun mapRes!44891 () Bool)

(assert (=> b!1143315 (= e!650441 (and e!650439 mapRes!44891))))

(declare-fun condMapEmpty!44891 () Bool)

(declare-fun mapDefault!44891 () ValueCell!13646)

