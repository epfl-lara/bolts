; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!98752 () Bool)

(assert start!98752)

(declare-fun b_free!24321 () Bool)

(declare-fun b_next!24321 () Bool)

(assert (=> start!98752 (= b_free!24321 (not b_next!24321))))

(declare-fun tp!85675 () Bool)

(declare-fun b_and!39505 () Bool)

(assert (=> start!98752 (= tp!85675 b_and!39505)))

(declare-datatypes ((V!43595 0))(
  ( (V!43596 (val!14482 Int)) )
))
(declare-fun zeroValue!944 () V!43595)

(declare-fun c!113696 () Bool)

(declare-fun k0!934 () (_ BitVec 64))

(declare-fun c!113695 () Bool)

(declare-datatypes ((tuple2!18456 0))(
  ( (tuple2!18457 (_1!9238 (_ BitVec 64)) (_2!9238 V!43595)) )
))
(declare-datatypes ((List!25249 0))(
  ( (Nil!25246) (Cons!25245 (h!26454 tuple2!18456) (t!36569 List!25249)) )
))
(declare-datatypes ((ListLongMap!16437 0))(
  ( (ListLongMap!16438 (toList!8234 List!25249)) )
))
(declare-fun lt!514282 () ListLongMap!16437)

(declare-fun bm!53390 () Bool)

(declare-datatypes ((Unit!37720 0))(
  ( (Unit!37721) )
))
(declare-fun call!53396 () Unit!37720)

(declare-fun minValue!944 () V!43595)

(declare-fun addStillContains!872 (ListLongMap!16437 (_ BitVec 64) V!43595 (_ BitVec 64)) Unit!37720)

(assert (=> bm!53390 (= call!53396 (addStillContains!872 lt!514282 (ite (or c!113696 c!113695) #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000) (ite (or c!113696 c!113695) zeroValue!944 minValue!944) k0!934))))

(declare-fun b!1149715 () Bool)

(declare-fun res!764937 () Bool)

(declare-fun e!653983 () Bool)

(assert (=> b!1149715 (=> (not res!764937) (not e!653983))))

(declare-datatypes ((array!74506 0))(
  ( (array!74507 (arr!35900 (Array (_ BitVec 32) (_ BitVec 64))) (size!36437 (_ BitVec 32))) )
))
(declare-fun lt!514291 () array!74506)

(declare-datatypes ((List!25250 0))(
  ( (Nil!25247) (Cons!25246 (h!26455 (_ BitVec 64)) (t!36570 List!25250)) )
))
(declare-fun arrayNoDuplicates!0 (array!74506 (_ BitVec 32) List!25250) Bool)

(assert (=> b!1149715 (= res!764937 (arrayNoDuplicates!0 lt!514291 #b00000000000000000000000000000000 Nil!25247))))

(declare-fun b!1149716 () Bool)

(declare-fun res!764939 () Bool)

(declare-fun e!653975 () Bool)

(assert (=> b!1149716 (=> (not res!764939) (not e!653975))))

(declare-fun _keys!1208 () array!74506)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!74506 (_ BitVec 32)) Bool)

(assert (=> b!1149716 (= res!764939 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun bm!53391 () Bool)

(declare-fun defaultEntry!1004 () Int)

(declare-fun from!1455 () (_ BitVec 32))

(declare-datatypes ((ValueCell!13716 0))(
  ( (ValueCellFull!13716 (v!17120 V!43595)) (EmptyCell!13716) )
))
(declare-datatypes ((array!74508 0))(
  ( (array!74509 (arr!35901 (Array (_ BitVec 32) ValueCell!13716)) (size!36438 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!74508)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun call!53394 () ListLongMap!16437)

(declare-fun getCurrentListMapNoExtraKeys!4675 (array!74506 array!74508 (_ BitVec 32) (_ BitVec 32) V!43595 V!43595 (_ BitVec 32) Int) ListLongMap!16437)

(assert (=> bm!53391 (= call!53394 (getCurrentListMapNoExtraKeys!4675 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1149717 () Bool)

(declare-fun e!653974 () Bool)

(assert (=> b!1149717 (= e!653983 (not e!653974))))

(declare-fun res!764940 () Bool)

(assert (=> b!1149717 (=> res!764940 e!653974)))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1149717 (= res!764940 (bvsgt from!1455 i!673))))

(declare-fun arrayContainsKey!0 (array!74506 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1149717 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-fun lt!514274 () Unit!37720)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!74506 (_ BitVec 64) (_ BitVec 32)) Unit!37720)

(assert (=> b!1149717 (= lt!514274 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1149718 () Bool)

(declare-fun res!764946 () Bool)

(assert (=> b!1149718 (=> (not res!764946) (not e!653975))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1149718 (= res!764946 (validKeyInArray!0 k0!934))))

(declare-fun b!1149719 () Bool)

(declare-fun res!764935 () Bool)

(assert (=> b!1149719 (=> (not res!764935) (not e!653975))))

(assert (=> b!1149719 (= res!764935 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!25247))))

(declare-fun b!1149720 () Bool)

(declare-fun e!653988 () Bool)

(declare-fun tp_is_empty!28851 () Bool)

(assert (=> b!1149720 (= e!653988 tp_is_empty!28851)))

(declare-fun b!1149721 () Bool)

(declare-fun e!653978 () Unit!37720)

(declare-fun e!653977 () Unit!37720)

(assert (=> b!1149721 (= e!653978 e!653977)))

(declare-fun c!113697 () Bool)

(declare-fun lt!514288 () Bool)

(assert (=> b!1149721 (= c!113697 (and (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!514288))))

(declare-fun mapNonEmpty!45101 () Bool)

(declare-fun mapRes!45101 () Bool)

(declare-fun tp!85674 () Bool)

(assert (=> mapNonEmpty!45101 (= mapRes!45101 (and tp!85674 e!653988))))

(declare-fun mapValue!45101 () ValueCell!13716)

(declare-fun mapKey!45101 () (_ BitVec 32))

(declare-fun mapRest!45101 () (Array (_ BitVec 32) ValueCell!13716))

(assert (=> mapNonEmpty!45101 (= (arr!35901 _values!996) (store mapRest!45101 mapKey!45101 mapValue!45101))))

(declare-fun b!1149722 () Bool)

(declare-fun lt!514280 () ListLongMap!16437)

(declare-fun lt!514275 () array!74508)

(declare-fun e!653984 () Bool)

(assert (=> b!1149722 (= e!653984 (= lt!514280 (getCurrentListMapNoExtraKeys!4675 lt!514291 lt!514275 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004)))))

(declare-fun b!1149723 () Bool)

(declare-fun res!764941 () Bool)

(assert (=> b!1149723 (=> (not res!764941) (not e!653975))))

(assert (=> b!1149723 (= res!764941 (= (select (arr!35900 _keys!1208) i!673) k0!934))))

(declare-fun e!653972 () Bool)

(declare-fun b!1149724 () Bool)

(assert (=> b!1149724 (= e!653972 (arrayContainsKey!0 _keys!1208 k0!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun b!1149714 () Bool)

(declare-fun e!653985 () Bool)

(declare-fun call!53400 () ListLongMap!16437)

(assert (=> b!1149714 (= e!653985 (= call!53400 call!53394))))

(declare-fun res!764945 () Bool)

(assert (=> start!98752 (=> (not res!764945) (not e!653975))))

(assert (=> start!98752 (= res!764945 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!36437 _keys!1208))))))

(assert (=> start!98752 e!653975))

(assert (=> start!98752 tp_is_empty!28851))

(declare-fun array_inv!27374 (array!74506) Bool)

(assert (=> start!98752 (array_inv!27374 _keys!1208)))

(assert (=> start!98752 true))

(assert (=> start!98752 tp!85675))

(declare-fun e!653986 () Bool)

(declare-fun array_inv!27375 (array!74508) Bool)

(assert (=> start!98752 (and (array_inv!27375 _values!996) e!653986)))

(declare-fun b!1149725 () Bool)

(declare-fun e!653979 () Bool)

(declare-fun e!653981 () Bool)

(assert (=> b!1149725 (= e!653979 e!653981)))

(declare-fun res!764948 () Bool)

(assert (=> b!1149725 (=> res!764948 e!653981)))

(assert (=> b!1149725 (= res!764948 (not (= (select (arr!35900 _keys!1208) from!1455) k0!934)))))

(assert (=> b!1149725 e!653985))

(declare-fun c!113699 () Bool)

(assert (=> b!1149725 (= c!113699 (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673))))

(declare-fun lt!514281 () Unit!37720)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!561 (array!74506 array!74508 (_ BitVec 32) (_ BitVec 32) V!43595 V!43595 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!37720)

(assert (=> b!1149725 (= lt!514281 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!561 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1149726 () Bool)

(declare-fun res!764947 () Bool)

(assert (=> b!1149726 (=> (not res!764947) (not e!653975))))

(assert (=> b!1149726 (= res!764947 (and (= (size!36438 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!36437 _keys!1208) (size!36438 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1149727 () Bool)

(assert (=> b!1149727 (= c!113695 (and (not lt!514288) (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun e!653973 () Unit!37720)

(assert (=> b!1149727 (= e!653973 e!653978)))

(declare-fun bm!53392 () Bool)

(declare-fun call!53397 () ListLongMap!16437)

(declare-fun call!53393 () ListLongMap!16437)

(assert (=> bm!53392 (= call!53397 call!53393)))

(declare-fun b!1149728 () Bool)

(declare-fun res!764934 () Bool)

(assert (=> b!1149728 (=> (not res!764934) (not e!653975))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1149728 (= res!764934 (validMask!0 mask!1564))))

(declare-fun bm!53393 () Bool)

(assert (=> bm!53393 (= call!53400 (getCurrentListMapNoExtraKeys!4675 lt!514291 lt!514275 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1149729 () Bool)

(declare-fun res!764943 () Bool)

(assert (=> b!1149729 (=> (not res!764943) (not e!653975))))

(assert (=> b!1149729 (= res!764943 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!36437 _keys!1208))))))

(declare-fun b!1149730 () Bool)

(assert (=> b!1149730 (= e!653974 e!653979)))

(declare-fun res!764942 () Bool)

(assert (=> b!1149730 (=> res!764942 e!653979)))

(assert (=> b!1149730 (= res!764942 (not (= from!1455 i!673)))))

(declare-fun lt!514286 () ListLongMap!16437)

(assert (=> b!1149730 (= lt!514286 (getCurrentListMapNoExtraKeys!4675 lt!514291 lt!514275 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun lt!514284 () V!43595)

(assert (=> b!1149730 (= lt!514275 (array!74509 (store (arr!35901 _values!996) i!673 (ValueCellFull!13716 lt!514284)) (size!36438 _values!996)))))

(declare-fun dynLambda!2705 (Int (_ BitVec 64)) V!43595)

(assert (=> b!1149730 (= lt!514284 (dynLambda!2705 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!514278 () ListLongMap!16437)

(assert (=> b!1149730 (= lt!514278 (getCurrentListMapNoExtraKeys!4675 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun call!53398 () Bool)

(declare-fun bm!53394 () Bool)

(declare-fun lt!514293 () ListLongMap!16437)

(declare-fun contains!6729 (ListLongMap!16437 (_ BitVec 64)) Bool)

(assert (=> bm!53394 (= call!53398 (contains!6729 (ite c!113696 lt!514293 call!53397) k0!934))))

(declare-fun b!1149731 () Bool)

(declare-fun e!653987 () Bool)

(assert (=> b!1149731 (= e!653987 tp_is_empty!28851)))

(declare-fun b!1149732 () Bool)

(declare-fun -!1321 (ListLongMap!16437 (_ BitVec 64)) ListLongMap!16437)

(assert (=> b!1149732 (= e!653985 (= call!53400 (-!1321 call!53394 k0!934)))))

(declare-fun b!1149733 () Bool)

(assert (=> b!1149733 (contains!6729 call!53393 k0!934)))

(declare-fun lt!514273 () Unit!37720)

(assert (=> b!1149733 (= lt!514273 (addStillContains!872 lt!514293 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944 k0!934))))

(assert (=> b!1149733 call!53398))

(declare-fun +!3571 (ListLongMap!16437 tuple2!18456) ListLongMap!16437)

(assert (=> b!1149733 (= lt!514293 (+!3571 lt!514282 (tuple2!18457 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944)))))

(declare-fun lt!514272 () Unit!37720)

(assert (=> b!1149733 (= lt!514272 call!53396)))

(assert (=> b!1149733 (= e!653973 lt!514273)))

(declare-fun b!1149734 () Bool)

(declare-fun call!53399 () Bool)

(assert (=> b!1149734 call!53399))

(declare-fun lt!514287 () Unit!37720)

(declare-fun call!53395 () Unit!37720)

(assert (=> b!1149734 (= lt!514287 call!53395)))

(assert (=> b!1149734 (= e!653977 lt!514287)))

(declare-fun b!1149735 () Bool)

(declare-fun e!653976 () Unit!37720)

(declare-fun Unit!37722 () Unit!37720)

(assert (=> b!1149735 (= e!653976 Unit!37722)))

(assert (=> b!1149735 (= lt!514288 (= (bvand extraKeys!923 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(assert (=> b!1149735 (= c!113696 (and (not lt!514288) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun lt!514289 () Unit!37720)

(assert (=> b!1149735 (= lt!514289 e!653973)))

(declare-fun lt!514283 () Unit!37720)

(declare-fun lemmaListMapContainsThenArrayContainsFrom!457 (array!74506 array!74508 (_ BitVec 32) (_ BitVec 32) V!43595 V!43595 (_ BitVec 64) (_ BitVec 32) Int) Unit!37720)

(assert (=> b!1149735 (= lt!514283 (lemmaListMapContainsThenArrayContainsFrom!457 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun c!113698 () Bool)

(assert (=> b!1149735 (= c!113698 (and (not (= k0!934 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!934 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun res!764936 () Bool)

(assert (=> b!1149735 (= res!764936 e!653972)))

(declare-fun e!653982 () Bool)

(assert (=> b!1149735 (=> (not res!764936) (not e!653982))))

(assert (=> b!1149735 e!653982))

(declare-fun lt!514277 () Unit!37720)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!74506 (_ BitVec 32) (_ BitVec 32)) Unit!37720)

(assert (=> b!1149735 (= lt!514277 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1208 #b00000000000000000000000000000000 from!1455))))

(assert (=> b!1149735 (arrayNoDuplicates!0 _keys!1208 from!1455 Nil!25247)))

(declare-fun lt!514292 () Unit!37720)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!74506 (_ BitVec 64) (_ BitVec 32) List!25250) Unit!37720)

(assert (=> b!1149735 (= lt!514292 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!1208 k0!934 from!1455 Nil!25247))))

(assert (=> b!1149735 false))

(declare-fun b!1149736 () Bool)

(assert (=> b!1149736 (= e!653972 (ite (= k0!934 #b0000000000000000000000000000000000000000000000000000000000000000) (not lt!514288) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!1149737 () Bool)

(declare-fun Unit!37723 () Unit!37720)

(assert (=> b!1149737 (= e!653976 Unit!37723)))

(declare-fun b!1149738 () Bool)

(assert (=> b!1149738 (= e!653975 e!653983)))

(declare-fun res!764938 () Bool)

(assert (=> b!1149738 (=> (not res!764938) (not e!653983))))

(assert (=> b!1149738 (= res!764938 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!514291 mask!1564))))

(assert (=> b!1149738 (= lt!514291 (array!74507 (store (arr!35900 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!36437 _keys!1208)))))

(declare-fun mapIsEmpty!45101 () Bool)

(assert (=> mapIsEmpty!45101 mapRes!45101))

(declare-fun b!1149739 () Bool)

(assert (=> b!1149739 (= e!653982 (arrayContainsKey!0 _keys!1208 k0!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun b!1149740 () Bool)

(assert (=> b!1149740 (= e!653981 true)))

(assert (=> b!1149740 e!653984))

(declare-fun res!764944 () Bool)

(assert (=> b!1149740 (=> (not res!764944) (not e!653984))))

(assert (=> b!1149740 (= res!764944 (= lt!514280 lt!514282))))

(assert (=> b!1149740 (= lt!514280 (-!1321 lt!514278 k0!934))))

(declare-fun lt!514285 () V!43595)

(assert (=> b!1149740 (= (-!1321 (+!3571 lt!514282 (tuple2!18457 (select (arr!35900 _keys!1208) from!1455) lt!514285)) (select (arr!35900 _keys!1208) from!1455)) lt!514282)))

(declare-fun lt!514290 () Unit!37720)

(declare-fun addThenRemoveForNewKeyIsSame!170 (ListLongMap!16437 (_ BitVec 64) V!43595) Unit!37720)

(assert (=> b!1149740 (= lt!514290 (addThenRemoveForNewKeyIsSame!170 lt!514282 (select (arr!35900 _keys!1208) from!1455) lt!514285))))

(declare-fun get!18298 (ValueCell!13716 V!43595) V!43595)

(assert (=> b!1149740 (= lt!514285 (get!18298 (select (arr!35901 _values!996) from!1455) lt!514284))))

(declare-fun lt!514276 () Unit!37720)

(assert (=> b!1149740 (= lt!514276 e!653976)))

(declare-fun c!113700 () Bool)

(assert (=> b!1149740 (= c!113700 (contains!6729 lt!514282 k0!934))))

(assert (=> b!1149740 (= lt!514282 (getCurrentListMapNoExtraKeys!4675 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun bm!53395 () Bool)

(assert (=> bm!53395 (= call!53399 call!53398)))

(declare-fun b!1149741 () Bool)

(declare-fun lt!514279 () Unit!37720)

(assert (=> b!1149741 (= e!653978 lt!514279)))

(assert (=> b!1149741 (= lt!514279 call!53395)))

(assert (=> b!1149741 call!53399))

(declare-fun bm!53396 () Bool)

(assert (=> bm!53396 (= call!53395 call!53396)))

(declare-fun b!1149742 () Bool)

(assert (=> b!1149742 (= e!653986 (and e!653987 mapRes!45101))))

(declare-fun condMapEmpty!45101 () Bool)

(declare-fun mapDefault!45101 () ValueCell!13716)

(assert (=> b!1149742 (= condMapEmpty!45101 (= (arr!35901 _values!996) ((as const (Array (_ BitVec 32) ValueCell!13716)) mapDefault!45101)))))

(declare-fun b!1149743 () Bool)

(declare-fun Unit!37724 () Unit!37720)

(assert (=> b!1149743 (= e!653977 Unit!37724)))

(declare-fun bm!53397 () Bool)

(assert (=> bm!53397 (= call!53393 (+!3571 (ite c!113696 lt!514293 lt!514282) (ite c!113696 (tuple2!18457 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944) (ite c!113695 (tuple2!18457 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!18457 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944)))))))

(assert (= (and start!98752 res!764945) b!1149728))

(assert (= (and b!1149728 res!764934) b!1149726))

(assert (= (and b!1149726 res!764947) b!1149716))

(assert (= (and b!1149716 res!764939) b!1149719))

(assert (= (and b!1149719 res!764935) b!1149729))

(assert (= (and b!1149729 res!764943) b!1149718))

(assert (= (and b!1149718 res!764946) b!1149723))

(assert (= (and b!1149723 res!764941) b!1149738))

(assert (= (and b!1149738 res!764938) b!1149715))

(assert (= (and b!1149715 res!764937) b!1149717))

(assert (= (and b!1149717 (not res!764940)) b!1149730))

(assert (= (and b!1149730 (not res!764942)) b!1149725))

(assert (= (and b!1149725 c!113699) b!1149732))

(assert (= (and b!1149725 (not c!113699)) b!1149714))

(assert (= (or b!1149732 b!1149714) bm!53393))

(assert (= (or b!1149732 b!1149714) bm!53391))

(assert (= (and b!1149725 (not res!764948)) b!1149740))

(assert (= (and b!1149740 c!113700) b!1149735))

(assert (= (and b!1149740 (not c!113700)) b!1149737))

(assert (= (and b!1149735 c!113696) b!1149733))

(assert (= (and b!1149735 (not c!113696)) b!1149727))

(assert (= (and b!1149727 c!113695) b!1149741))

(assert (= (and b!1149727 (not c!113695)) b!1149721))

(assert (= (and b!1149721 c!113697) b!1149734))

(assert (= (and b!1149721 (not c!113697)) b!1149743))

(assert (= (or b!1149741 b!1149734) bm!53396))

(assert (= (or b!1149741 b!1149734) bm!53392))

(assert (= (or b!1149741 b!1149734) bm!53395))

(assert (= (or b!1149733 bm!53395) bm!53394))

(assert (= (or b!1149733 bm!53396) bm!53390))

(assert (= (or b!1149733 bm!53392) bm!53397))

(assert (= (and b!1149735 c!113698) b!1149724))

(assert (= (and b!1149735 (not c!113698)) b!1149736))

(assert (= (and b!1149735 res!764936) b!1149739))

(assert (= (and b!1149740 res!764944) b!1149722))

(assert (= (and b!1149742 condMapEmpty!45101) mapIsEmpty!45101))

(assert (= (and b!1149742 (not condMapEmpty!45101)) mapNonEmpty!45101))

(get-info :version)

(assert (= (and mapNonEmpty!45101 ((_ is ValueCellFull!13716) mapValue!45101)) b!1149720))

(assert (= (and b!1149742 ((_ is ValueCellFull!13716) mapDefault!45101)) b!1149731))

(assert (= start!98752 b!1149742))

(declare-fun b_lambda!19445 () Bool)

(assert (=> (not b_lambda!19445) (not b!1149730)))

(declare-fun t!36568 () Bool)

(declare-fun tb!9141 () Bool)

(assert (=> (and start!98752 (= defaultEntry!1004 defaultEntry!1004) t!36568) tb!9141))

(declare-fun result!18839 () Bool)

(assert (=> tb!9141 (= result!18839 tp_is_empty!28851)))

(assert (=> b!1149730 t!36568))

(declare-fun b_and!39507 () Bool)

(assert (= b_and!39505 (and (=> t!36568 result!18839) b_and!39507)))

(declare-fun m!1060095 () Bool)

(assert (=> b!1149728 m!1060095))

(declare-fun m!1060097 () Bool)

(assert (=> b!1149730 m!1060097))

(declare-fun m!1060099 () Bool)

(assert (=> b!1149730 m!1060099))

(declare-fun m!1060101 () Bool)

(assert (=> b!1149730 m!1060101))

(declare-fun m!1060103 () Bool)

(assert (=> b!1149730 m!1060103))

(declare-fun m!1060105 () Bool)

(assert (=> b!1149724 m!1060105))

(declare-fun m!1060107 () Bool)

(assert (=> b!1149718 m!1060107))

(declare-fun m!1060109 () Bool)

(assert (=> b!1149715 m!1060109))

(declare-fun m!1060111 () Bool)

(assert (=> b!1149733 m!1060111))

(declare-fun m!1060113 () Bool)

(assert (=> b!1149733 m!1060113))

(declare-fun m!1060115 () Bool)

(assert (=> b!1149733 m!1060115))

(declare-fun m!1060117 () Bool)

(assert (=> b!1149719 m!1060117))

(declare-fun m!1060119 () Bool)

(assert (=> b!1149722 m!1060119))

(declare-fun m!1060121 () Bool)

(assert (=> b!1149716 m!1060121))

(declare-fun m!1060123 () Bool)

(assert (=> b!1149740 m!1060123))

(declare-fun m!1060125 () Bool)

(assert (=> b!1149740 m!1060125))

(declare-fun m!1060127 () Bool)

(assert (=> b!1149740 m!1060127))

(declare-fun m!1060129 () Bool)

(assert (=> b!1149740 m!1060129))

(declare-fun m!1060131 () Bool)

(assert (=> b!1149740 m!1060131))

(declare-fun m!1060133 () Bool)

(assert (=> b!1149740 m!1060133))

(declare-fun m!1060135 () Bool)

(assert (=> b!1149740 m!1060135))

(assert (=> b!1149740 m!1060125))

(declare-fun m!1060137 () Bool)

(assert (=> b!1149740 m!1060137))

(assert (=> b!1149740 m!1060131))

(assert (=> b!1149740 m!1060133))

(declare-fun m!1060139 () Bool)

(assert (=> b!1149740 m!1060139))

(assert (=> b!1149740 m!1060133))

(declare-fun m!1060141 () Bool)

(assert (=> b!1149738 m!1060141))

(declare-fun m!1060143 () Bool)

(assert (=> b!1149738 m!1060143))

(declare-fun m!1060145 () Bool)

(assert (=> mapNonEmpty!45101 m!1060145))

(assert (=> bm!53393 m!1060119))

(declare-fun m!1060147 () Bool)

(assert (=> b!1149717 m!1060147))

(declare-fun m!1060149 () Bool)

(assert (=> b!1149717 m!1060149))

(declare-fun m!1060151 () Bool)

(assert (=> b!1149723 m!1060151))

(declare-fun m!1060153 () Bool)

(assert (=> start!98752 m!1060153))

(declare-fun m!1060155 () Bool)

(assert (=> start!98752 m!1060155))

(declare-fun m!1060157 () Bool)

(assert (=> bm!53390 m!1060157))

(declare-fun m!1060159 () Bool)

(assert (=> b!1149735 m!1060159))

(declare-fun m!1060161 () Bool)

(assert (=> b!1149735 m!1060161))

(declare-fun m!1060163 () Bool)

(assert (=> b!1149735 m!1060163))

(declare-fun m!1060165 () Bool)

(assert (=> b!1149735 m!1060165))

(assert (=> b!1149725 m!1060133))

(declare-fun m!1060167 () Bool)

(assert (=> b!1149725 m!1060167))

(assert (=> bm!53391 m!1060123))

(declare-fun m!1060169 () Bool)

(assert (=> bm!53397 m!1060169))

(assert (=> b!1149739 m!1060105))

(declare-fun m!1060171 () Bool)

(assert (=> b!1149732 m!1060171))

(declare-fun m!1060173 () Bool)

(assert (=> bm!53394 m!1060173))

(check-sat (not bm!53394) (not b!1149732) (not b!1149719) (not bm!53390) (not b!1149715) tp_is_empty!28851 (not bm!53393) (not b!1149733) (not b!1149722) (not b!1149725) (not b!1149740) (not start!98752) (not b!1149728) b_and!39507 (not b!1149718) (not b!1149716) (not b!1149739) (not b!1149717) (not bm!53397) (not mapNonEmpty!45101) (not b_next!24321) (not b!1149724) (not b_lambda!19445) (not b!1149735) (not b!1149738) (not bm!53391) (not b!1149730))
(check-sat b_and!39507 (not b_next!24321))
