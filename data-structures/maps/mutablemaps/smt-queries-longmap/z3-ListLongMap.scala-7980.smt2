; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!98758 () Bool)

(assert start!98758)

(declare-fun b_free!24327 () Bool)

(declare-fun b_next!24327 () Bool)

(assert (=> start!98758 (= b_free!24327 (not b_next!24327))))

(declare-fun tp!85692 () Bool)

(declare-fun b_and!39517 () Bool)

(assert (=> start!98758 (= tp!85692 b_and!39517)))

(declare-fun e!654127 () Bool)

(declare-datatypes ((array!74518 0))(
  ( (array!74519 (arr!35906 (Array (_ BitVec 32) (_ BitVec 64))) (size!36443 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!74518)

(declare-fun k0!934 () (_ BitVec 64))

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun b!1149990 () Bool)

(declare-fun arrayContainsKey!0 (array!74518 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1149990 (= e!654127 (arrayContainsKey!0 _keys!1208 k0!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun b!1149991 () Bool)

(declare-fun c!113751 () Bool)

(declare-fun lt!514471 () Bool)

(declare-fun extraKeys!923 () (_ BitVec 32))

(assert (=> b!1149991 (= c!113751 (and (not lt!514471) (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-datatypes ((Unit!37732 0))(
  ( (Unit!37733) )
))
(declare-fun e!654141 () Unit!37732)

(declare-fun e!654134 () Unit!37732)

(assert (=> b!1149991 (= e!654141 e!654134)))

(declare-fun b!1149992 () Bool)

(declare-fun e!654138 () Bool)

(declare-fun e!654126 () Bool)

(assert (=> b!1149992 (= e!654138 (not e!654126))))

(declare-fun res!765079 () Bool)

(assert (=> b!1149992 (=> res!765079 e!654126)))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1149992 (= res!765079 (bvsgt from!1455 i!673))))

(assert (=> b!1149992 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-fun lt!514484 () Unit!37732)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!74518 (_ BitVec 64) (_ BitVec 32)) Unit!37732)

(assert (=> b!1149992 (= lt!514484 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-datatypes ((V!43603 0))(
  ( (V!43604 (val!14485 Int)) )
))
(declare-fun zeroValue!944 () V!43603)

(declare-datatypes ((tuple2!18460 0))(
  ( (tuple2!18461 (_1!9240 (_ BitVec 64)) (_2!9240 V!43603)) )
))
(declare-datatypes ((List!25253 0))(
  ( (Nil!25250) (Cons!25249 (h!26458 tuple2!18460) (t!36579 List!25253)) )
))
(declare-datatypes ((ListLongMap!16441 0))(
  ( (ListLongMap!16442 (toList!8236 List!25253)) )
))
(declare-fun lt!514479 () ListLongMap!16441)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-fun e!654125 () Bool)

(declare-datatypes ((ValueCell!13719 0))(
  ( (ValueCellFull!13719 (v!17123 V!43603)) (EmptyCell!13719) )
))
(declare-datatypes ((array!74520 0))(
  ( (array!74521 (arr!35907 (Array (_ BitVec 32) ValueCell!13719)) (size!36444 (_ BitVec 32))) )
))
(declare-fun lt!514470 () array!74520)

(declare-fun lt!514474 () array!74518)

(declare-fun b!1149993 () Bool)

(declare-fun minValue!944 () V!43603)

(declare-fun getCurrentListMapNoExtraKeys!4677 (array!74518 array!74520 (_ BitVec 32) (_ BitVec 32) V!43603 V!43603 (_ BitVec 32) Int) ListLongMap!16441)

(assert (=> b!1149993 (= e!654125 (= lt!514479 (getCurrentListMapNoExtraKeys!4677 lt!514474 lt!514470 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004)))))

(declare-fun b!1149994 () Bool)

(declare-fun res!765069 () Bool)

(declare-fun e!654132 () Bool)

(assert (=> b!1149994 (=> (not res!765069) (not e!654132))))

(declare-fun _values!996 () array!74520)

(assert (=> b!1149994 (= res!765069 (and (= (size!36444 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!36443 _keys!1208) (size!36444 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1149995 () Bool)

(declare-fun e!654129 () Unit!37732)

(declare-fun Unit!37734 () Unit!37732)

(assert (=> b!1149995 (= e!654129 Unit!37734)))

(declare-fun e!654128 () Bool)

(declare-fun b!1149996 () Bool)

(assert (=> b!1149996 (= e!654128 (ite (= k0!934 #b0000000000000000000000000000000000000000000000000000000000000000) (not lt!514471) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!1149997 () Bool)

(declare-fun e!654137 () Bool)

(assert (=> b!1149997 (= e!654137 true)))

(assert (=> b!1149997 e!654125))

(declare-fun res!765071 () Bool)

(assert (=> b!1149997 (=> (not res!765071) (not e!654125))))

(declare-fun lt!514477 () ListLongMap!16441)

(assert (=> b!1149997 (= res!765071 (= lt!514479 lt!514477))))

(declare-fun lt!514482 () ListLongMap!16441)

(declare-fun -!1323 (ListLongMap!16441 (_ BitVec 64)) ListLongMap!16441)

(assert (=> b!1149997 (= lt!514479 (-!1323 lt!514482 k0!934))))

(declare-fun lt!514489 () V!43603)

(declare-fun +!3573 (ListLongMap!16441 tuple2!18460) ListLongMap!16441)

(assert (=> b!1149997 (= (-!1323 (+!3573 lt!514477 (tuple2!18461 (select (arr!35906 _keys!1208) from!1455) lt!514489)) (select (arr!35906 _keys!1208) from!1455)) lt!514477)))

(declare-fun lt!514490 () Unit!37732)

(declare-fun addThenRemoveForNewKeyIsSame!172 (ListLongMap!16441 (_ BitVec 64) V!43603) Unit!37732)

(assert (=> b!1149997 (= lt!514490 (addThenRemoveForNewKeyIsSame!172 lt!514477 (select (arr!35906 _keys!1208) from!1455) lt!514489))))

(declare-fun lt!514485 () V!43603)

(declare-fun get!18302 (ValueCell!13719 V!43603) V!43603)

(assert (=> b!1149997 (= lt!514489 (get!18302 (select (arr!35907 _values!996) from!1455) lt!514485))))

(declare-fun lt!514486 () Unit!37732)

(declare-fun e!654139 () Unit!37732)

(assert (=> b!1149997 (= lt!514486 e!654139)))

(declare-fun c!113750 () Bool)

(declare-fun contains!6731 (ListLongMap!16441 (_ BitVec 64)) Bool)

(assert (=> b!1149997 (= c!113750 (contains!6731 lt!514477 k0!934))))

(assert (=> b!1149997 (= lt!514477 (getCurrentListMapNoExtraKeys!4677 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun bm!53462 () Bool)

(declare-fun call!53467 () Unit!37732)

(declare-fun lt!514475 () ListLongMap!16441)

(declare-fun c!113754 () Bool)

(declare-fun addStillContains!874 (ListLongMap!16441 (_ BitVec 64) V!43603 (_ BitVec 64)) Unit!37732)

(assert (=> bm!53462 (= call!53467 (addStillContains!874 (ite c!113754 lt!514475 lt!514477) (ite c!113754 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!113751 #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000)) (ite c!113754 minValue!944 (ite c!113751 zeroValue!944 minValue!944)) k0!934))))

(declare-fun b!1149998 () Bool)

(declare-fun res!765070 () Bool)

(assert (=> b!1149998 (=> (not res!765070) (not e!654132))))

(assert (=> b!1149998 (= res!765070 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!36443 _keys!1208))))))

(declare-fun b!1150000 () Bool)

(declare-fun Unit!37735 () Unit!37732)

(assert (=> b!1150000 (= e!654139 Unit!37735)))

(declare-fun b!1150001 () Bool)

(declare-fun call!53472 () ListLongMap!16441)

(assert (=> b!1150001 (contains!6731 call!53472 k0!934)))

(declare-fun lt!514476 () Unit!37732)

(assert (=> b!1150001 (= lt!514476 call!53467)))

(declare-fun call!53470 () Bool)

(assert (=> b!1150001 call!53470))

(assert (=> b!1150001 (= lt!514475 (+!3573 lt!514477 (tuple2!18461 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944)))))

(declare-fun lt!514481 () Unit!37732)

(assert (=> b!1150001 (= lt!514481 (addStillContains!874 lt!514477 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944 k0!934))))

(assert (=> b!1150001 (= e!654141 lt!514476)))

(declare-fun b!1150002 () Bool)

(declare-fun e!654130 () Bool)

(declare-fun e!654135 () Bool)

(declare-fun mapRes!45110 () Bool)

(assert (=> b!1150002 (= e!654130 (and e!654135 mapRes!45110))))

(declare-fun condMapEmpty!45110 () Bool)

(declare-fun mapDefault!45110 () ValueCell!13719)

(assert (=> b!1150002 (= condMapEmpty!45110 (= (arr!35907 _values!996) ((as const (Array (_ BitVec 32) ValueCell!13719)) mapDefault!45110)))))

(declare-fun b!1150003 () Bool)

(declare-fun e!654131 () Bool)

(declare-fun tp_is_empty!28857 () Bool)

(assert (=> b!1150003 (= e!654131 tp_is_empty!28857)))

(declare-fun bm!53463 () Bool)

(declare-fun call!53466 () Bool)

(assert (=> bm!53463 (= call!53466 call!53470)))

(declare-fun b!1150004 () Bool)

(assert (=> b!1150004 (= e!654128 (arrayContainsKey!0 _keys!1208 k0!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun call!53468 () ListLongMap!16441)

(declare-fun bm!53464 () Bool)

(assert (=> bm!53464 (= call!53468 (getCurrentListMapNoExtraKeys!4677 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1150005 () Bool)

(assert (=> b!1150005 (= e!654134 e!654129)))

(declare-fun c!113753 () Bool)

(assert (=> b!1150005 (= c!113753 (and (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!514471))))

(declare-fun b!1150006 () Bool)

(declare-fun e!654140 () Bool)

(assert (=> b!1150006 (= e!654126 e!654140)))

(declare-fun res!765077 () Bool)

(assert (=> b!1150006 (=> res!765077 e!654140)))

(assert (=> b!1150006 (= res!765077 (not (= from!1455 i!673)))))

(declare-fun lt!514488 () ListLongMap!16441)

(assert (=> b!1150006 (= lt!514488 (getCurrentListMapNoExtraKeys!4677 lt!514474 lt!514470 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(assert (=> b!1150006 (= lt!514470 (array!74521 (store (arr!35907 _values!996) i!673 (ValueCellFull!13719 lt!514485)) (size!36444 _values!996)))))

(declare-fun dynLambda!2707 (Int (_ BitVec 64)) V!43603)

(assert (=> b!1150006 (= lt!514485 (dynLambda!2707 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1150006 (= lt!514482 (getCurrentListMapNoExtraKeys!4677 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun bm!53465 () Bool)

(assert (=> bm!53465 (= call!53472 (+!3573 (ite c!113754 lt!514475 lt!514477) (ite c!113754 (tuple2!18461 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944) (ite c!113751 (tuple2!18461 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!18461 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944)))))))

(declare-fun mapIsEmpty!45110 () Bool)

(assert (=> mapIsEmpty!45110 mapRes!45110))

(declare-fun mapNonEmpty!45110 () Bool)

(declare-fun tp!85693 () Bool)

(assert (=> mapNonEmpty!45110 (= mapRes!45110 (and tp!85693 e!654131))))

(declare-fun mapValue!45110 () ValueCell!13719)

(declare-fun mapKey!45110 () (_ BitVec 32))

(declare-fun mapRest!45110 () (Array (_ BitVec 32) ValueCell!13719))

(assert (=> mapNonEmpty!45110 (= (arr!35907 _values!996) (store mapRest!45110 mapKey!45110 mapValue!45110))))

(declare-fun b!1150007 () Bool)

(declare-fun Unit!37736 () Unit!37732)

(assert (=> b!1150007 (= e!654139 Unit!37736)))

(assert (=> b!1150007 (= lt!514471 (= (bvand extraKeys!923 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(assert (=> b!1150007 (= c!113754 (and (not lt!514471) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun lt!514478 () Unit!37732)

(assert (=> b!1150007 (= lt!514478 e!654141)))

(declare-fun lt!514487 () Unit!37732)

(declare-fun lemmaListMapContainsThenArrayContainsFrom!459 (array!74518 array!74520 (_ BitVec 32) (_ BitVec 32) V!43603 V!43603 (_ BitVec 64) (_ BitVec 32) Int) Unit!37732)

(assert (=> b!1150007 (= lt!514487 (lemmaListMapContainsThenArrayContainsFrom!459 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun c!113749 () Bool)

(assert (=> b!1150007 (= c!113749 (and (not (= k0!934 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!934 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun res!765080 () Bool)

(assert (=> b!1150007 (= res!765080 e!654128)))

(assert (=> b!1150007 (=> (not res!765080) (not e!654127))))

(assert (=> b!1150007 e!654127))

(declare-fun lt!514483 () Unit!37732)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!74518 (_ BitVec 32) (_ BitVec 32)) Unit!37732)

(assert (=> b!1150007 (= lt!514483 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1208 #b00000000000000000000000000000000 from!1455))))

(declare-datatypes ((List!25254 0))(
  ( (Nil!25251) (Cons!25250 (h!26459 (_ BitVec 64)) (t!36580 List!25254)) )
))
(declare-fun arrayNoDuplicates!0 (array!74518 (_ BitVec 32) List!25254) Bool)

(assert (=> b!1150007 (arrayNoDuplicates!0 _keys!1208 from!1455 Nil!25251)))

(declare-fun lt!514480 () Unit!37732)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!74518 (_ BitVec 64) (_ BitVec 32) List!25254) Unit!37732)

(assert (=> b!1150007 (= lt!514480 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!1208 k0!934 from!1455 Nil!25251))))

(assert (=> b!1150007 false))

(declare-fun b!1150008 () Bool)

(assert (=> b!1150008 (= e!654135 tp_is_empty!28857)))

(declare-fun b!1150009 () Bool)

(declare-fun res!765082 () Bool)

(assert (=> b!1150009 (=> (not res!765082) (not e!654132))))

(assert (=> b!1150009 (= res!765082 (= (select (arr!35906 _keys!1208) i!673) k0!934))))

(declare-fun b!1150010 () Bool)

(assert (=> b!1150010 (= e!654140 e!654137)))

(declare-fun res!765083 () Bool)

(assert (=> b!1150010 (=> res!765083 e!654137)))

(assert (=> b!1150010 (= res!765083 (not (= (select (arr!35906 _keys!1208) from!1455) k0!934)))))

(declare-fun e!654133 () Bool)

(assert (=> b!1150010 e!654133))

(declare-fun c!113752 () Bool)

(assert (=> b!1150010 (= c!113752 (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673))))

(declare-fun lt!514491 () Unit!37732)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!563 (array!74518 array!74520 (_ BitVec 32) (_ BitVec 32) V!43603 V!43603 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!37732)

(assert (=> b!1150010 (= lt!514491 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!563 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1150011 () Bool)

(declare-fun res!765076 () Bool)

(assert (=> b!1150011 (=> (not res!765076) (not e!654138))))

(assert (=> b!1150011 (= res!765076 (arrayNoDuplicates!0 lt!514474 #b00000000000000000000000000000000 Nil!25251))))

(declare-fun b!1149999 () Bool)

(declare-fun call!53469 () ListLongMap!16441)

(assert (=> b!1149999 (= e!654133 (= call!53469 call!53468))))

(declare-fun res!765075 () Bool)

(assert (=> start!98758 (=> (not res!765075) (not e!654132))))

(assert (=> start!98758 (= res!765075 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!36443 _keys!1208))))))

(assert (=> start!98758 e!654132))

(assert (=> start!98758 tp_is_empty!28857))

(declare-fun array_inv!27378 (array!74518) Bool)

(assert (=> start!98758 (array_inv!27378 _keys!1208)))

(assert (=> start!98758 true))

(assert (=> start!98758 tp!85692))

(declare-fun array_inv!27379 (array!74520) Bool)

(assert (=> start!98758 (and (array_inv!27379 _values!996) e!654130)))

(declare-fun bm!53466 () Bool)

(declare-fun call!53471 () Unit!37732)

(assert (=> bm!53466 (= call!53471 call!53467)))

(declare-fun b!1150012 () Bool)

(assert (=> b!1150012 call!53466))

(declare-fun lt!514473 () Unit!37732)

(assert (=> b!1150012 (= lt!514473 call!53471)))

(assert (=> b!1150012 (= e!654129 lt!514473)))

(declare-fun bm!53467 () Bool)

(declare-fun call!53465 () ListLongMap!16441)

(assert (=> bm!53467 (= call!53465 call!53472)))

(declare-fun b!1150013 () Bool)

(declare-fun lt!514472 () Unit!37732)

(assert (=> b!1150013 (= e!654134 lt!514472)))

(assert (=> b!1150013 (= lt!514472 call!53471)))

(assert (=> b!1150013 call!53466))

(declare-fun b!1150014 () Bool)

(assert (=> b!1150014 (= e!654132 e!654138)))

(declare-fun res!765073 () Bool)

(assert (=> b!1150014 (=> (not res!765073) (not e!654138))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!74518 (_ BitVec 32)) Bool)

(assert (=> b!1150014 (= res!765073 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!514474 mask!1564))))

(assert (=> b!1150014 (= lt!514474 (array!74519 (store (arr!35906 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!36443 _keys!1208)))))

(declare-fun b!1150015 () Bool)

(declare-fun res!765074 () Bool)

(assert (=> b!1150015 (=> (not res!765074) (not e!654132))))

(assert (=> b!1150015 (= res!765074 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!25251))))

(declare-fun bm!53468 () Bool)

(assert (=> bm!53468 (= call!53469 (getCurrentListMapNoExtraKeys!4677 lt!514474 lt!514470 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1150016 () Bool)

(declare-fun res!765078 () Bool)

(assert (=> b!1150016 (=> (not res!765078) (not e!654132))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1150016 (= res!765078 (validKeyInArray!0 k0!934))))

(declare-fun bm!53469 () Bool)

(assert (=> bm!53469 (= call!53470 (contains!6731 (ite c!113754 lt!514475 call!53465) k0!934))))

(declare-fun b!1150017 () Bool)

(declare-fun res!765072 () Bool)

(assert (=> b!1150017 (=> (not res!765072) (not e!654132))))

(assert (=> b!1150017 (= res!765072 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1150018 () Bool)

(declare-fun res!765081 () Bool)

(assert (=> b!1150018 (=> (not res!765081) (not e!654132))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1150018 (= res!765081 (validMask!0 mask!1564))))

(declare-fun b!1150019 () Bool)

(assert (=> b!1150019 (= e!654133 (= call!53469 (-!1323 call!53468 k0!934)))))

(assert (= (and start!98758 res!765075) b!1150018))

(assert (= (and b!1150018 res!765081) b!1149994))

(assert (= (and b!1149994 res!765069) b!1150017))

(assert (= (and b!1150017 res!765072) b!1150015))

(assert (= (and b!1150015 res!765074) b!1149998))

(assert (= (and b!1149998 res!765070) b!1150016))

(assert (= (and b!1150016 res!765078) b!1150009))

(assert (= (and b!1150009 res!765082) b!1150014))

(assert (= (and b!1150014 res!765073) b!1150011))

(assert (= (and b!1150011 res!765076) b!1149992))

(assert (= (and b!1149992 (not res!765079)) b!1150006))

(assert (= (and b!1150006 (not res!765077)) b!1150010))

(assert (= (and b!1150010 c!113752) b!1150019))

(assert (= (and b!1150010 (not c!113752)) b!1149999))

(assert (= (or b!1150019 b!1149999) bm!53468))

(assert (= (or b!1150019 b!1149999) bm!53464))

(assert (= (and b!1150010 (not res!765083)) b!1149997))

(assert (= (and b!1149997 c!113750) b!1150007))

(assert (= (and b!1149997 (not c!113750)) b!1150000))

(assert (= (and b!1150007 c!113754) b!1150001))

(assert (= (and b!1150007 (not c!113754)) b!1149991))

(assert (= (and b!1149991 c!113751) b!1150013))

(assert (= (and b!1149991 (not c!113751)) b!1150005))

(assert (= (and b!1150005 c!113753) b!1150012))

(assert (= (and b!1150005 (not c!113753)) b!1149995))

(assert (= (or b!1150013 b!1150012) bm!53466))

(assert (= (or b!1150013 b!1150012) bm!53467))

(assert (= (or b!1150013 b!1150012) bm!53463))

(assert (= (or b!1150001 bm!53463) bm!53469))

(assert (= (or b!1150001 bm!53466) bm!53462))

(assert (= (or b!1150001 bm!53467) bm!53465))

(assert (= (and b!1150007 c!113749) b!1150004))

(assert (= (and b!1150007 (not c!113749)) b!1149996))

(assert (= (and b!1150007 res!765080) b!1149990))

(assert (= (and b!1149997 res!765071) b!1149993))

(assert (= (and b!1150002 condMapEmpty!45110) mapIsEmpty!45110))

(assert (= (and b!1150002 (not condMapEmpty!45110)) mapNonEmpty!45110))

(get-info :version)

(assert (= (and mapNonEmpty!45110 ((_ is ValueCellFull!13719) mapValue!45110)) b!1150003))

(assert (= (and b!1150002 ((_ is ValueCellFull!13719) mapDefault!45110)) b!1150008))

(assert (= start!98758 b!1150002))

(declare-fun b_lambda!19451 () Bool)

(assert (=> (not b_lambda!19451) (not b!1150006)))

(declare-fun t!36578 () Bool)

(declare-fun tb!9147 () Bool)

(assert (=> (and start!98758 (= defaultEntry!1004 defaultEntry!1004) t!36578) tb!9147))

(declare-fun result!18851 () Bool)

(assert (=> tb!9147 (= result!18851 tp_is_empty!28857)))

(assert (=> b!1150006 t!36578))

(declare-fun b_and!39519 () Bool)

(assert (= b_and!39517 (and (=> t!36578 result!18851) b_and!39519)))

(declare-fun m!1060335 () Bool)

(assert (=> b!1150004 m!1060335))

(declare-fun m!1060337 () Bool)

(assert (=> b!1150007 m!1060337))

(declare-fun m!1060339 () Bool)

(assert (=> b!1150007 m!1060339))

(declare-fun m!1060341 () Bool)

(assert (=> b!1150007 m!1060341))

(declare-fun m!1060343 () Bool)

(assert (=> b!1150007 m!1060343))

(declare-fun m!1060345 () Bool)

(assert (=> b!1150015 m!1060345))

(declare-fun m!1060347 () Bool)

(assert (=> b!1150001 m!1060347))

(declare-fun m!1060349 () Bool)

(assert (=> b!1150001 m!1060349))

(declare-fun m!1060351 () Bool)

(assert (=> b!1150001 m!1060351))

(declare-fun m!1060353 () Bool)

(assert (=> b!1149993 m!1060353))

(declare-fun m!1060355 () Bool)

(assert (=> b!1150009 m!1060355))

(declare-fun m!1060357 () Bool)

(assert (=> bm!53464 m!1060357))

(declare-fun m!1060359 () Bool)

(assert (=> b!1150016 m!1060359))

(declare-fun m!1060361 () Bool)

(assert (=> b!1150010 m!1060361))

(declare-fun m!1060363 () Bool)

(assert (=> b!1150010 m!1060363))

(declare-fun m!1060365 () Bool)

(assert (=> b!1150011 m!1060365))

(declare-fun m!1060367 () Bool)

(assert (=> b!1150014 m!1060367))

(declare-fun m!1060369 () Bool)

(assert (=> b!1150014 m!1060369))

(assert (=> b!1149990 m!1060335))

(declare-fun m!1060371 () Bool)

(assert (=> start!98758 m!1060371))

(declare-fun m!1060373 () Bool)

(assert (=> start!98758 m!1060373))

(declare-fun m!1060375 () Bool)

(assert (=> bm!53462 m!1060375))

(declare-fun m!1060377 () Bool)

(assert (=> b!1150019 m!1060377))

(declare-fun m!1060379 () Bool)

(assert (=> bm!53469 m!1060379))

(declare-fun m!1060381 () Bool)

(assert (=> b!1149992 m!1060381))

(declare-fun m!1060383 () Bool)

(assert (=> b!1149992 m!1060383))

(declare-fun m!1060385 () Bool)

(assert (=> bm!53465 m!1060385))

(assert (=> bm!53468 m!1060353))

(assert (=> b!1149997 m!1060357))

(assert (=> b!1149997 m!1060361))

(declare-fun m!1060387 () Bool)

(assert (=> b!1149997 m!1060387))

(declare-fun m!1060389 () Bool)

(assert (=> b!1149997 m!1060389))

(assert (=> b!1149997 m!1060389))

(declare-fun m!1060391 () Bool)

(assert (=> b!1149997 m!1060391))

(declare-fun m!1060393 () Bool)

(assert (=> b!1149997 m!1060393))

(assert (=> b!1149997 m!1060361))

(declare-fun m!1060395 () Bool)

(assert (=> b!1149997 m!1060395))

(assert (=> b!1149997 m!1060361))

(declare-fun m!1060397 () Bool)

(assert (=> b!1149997 m!1060397))

(declare-fun m!1060399 () Bool)

(assert (=> b!1149997 m!1060399))

(assert (=> b!1149997 m!1060395))

(declare-fun m!1060401 () Bool)

(assert (=> b!1150018 m!1060401))

(declare-fun m!1060403 () Bool)

(assert (=> b!1150017 m!1060403))

(declare-fun m!1060405 () Bool)

(assert (=> b!1150006 m!1060405))

(declare-fun m!1060407 () Bool)

(assert (=> b!1150006 m!1060407))

(declare-fun m!1060409 () Bool)

(assert (=> b!1150006 m!1060409))

(declare-fun m!1060411 () Bool)

(assert (=> b!1150006 m!1060411))

(declare-fun m!1060413 () Bool)

(assert (=> mapNonEmpty!45110 m!1060413))

(check-sat (not b!1150001) (not b!1150006) tp_is_empty!28857 (not b!1150017) b_and!39519 (not b!1150007) (not bm!53462) (not b!1150010) (not bm!53469) (not mapNonEmpty!45110) (not b!1150004) (not bm!53465) (not start!98758) (not b!1150014) (not b!1150019) (not b!1149997) (not b_lambda!19451) (not b!1150018) (not b!1150016) (not b!1149990) (not b!1149992) (not b_next!24327) (not bm!53468) (not b!1150015) (not b!1149993) (not bm!53464) (not b!1150011))
(check-sat b_and!39519 (not b_next!24327))
