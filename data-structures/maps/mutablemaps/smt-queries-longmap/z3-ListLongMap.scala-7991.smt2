; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!98824 () Bool)

(assert start!98824)

(declare-fun b_free!24393 () Bool)

(declare-fun b_next!24393 () Bool)

(assert (=> start!98824 (= b_free!24393 (not b_next!24393))))

(declare-fun tp!85890 () Bool)

(declare-fun b_and!39649 () Bool)

(assert (=> start!98824 (= tp!85890 b_and!39649)))

(declare-fun b!1153026 () Bool)

(declare-fun e!655815 () Bool)

(declare-fun e!655809 () Bool)

(assert (=> b!1153026 (= e!655815 e!655809)))

(declare-fun res!766559 () Bool)

(assert (=> b!1153026 (=> res!766559 e!655809)))

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1153026 (= res!766559 (not (= from!1455 i!673)))))

(declare-datatypes ((V!43691 0))(
  ( (V!43692 (val!14518 Int)) )
))
(declare-fun zeroValue!944 () V!43691)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-datatypes ((tuple2!18518 0))(
  ( (tuple2!18519 (_1!9269 (_ BitVec 64)) (_2!9269 V!43691)) )
))
(declare-datatypes ((List!25307 0))(
  ( (Nil!25304) (Cons!25303 (h!26512 tuple2!18518) (t!36699 List!25307)) )
))
(declare-datatypes ((ListLongMap!16499 0))(
  ( (ListLongMap!16500 (toList!8265 List!25307)) )
))
(declare-fun lt!516664 () ListLongMap!16499)

(declare-datatypes ((array!74644 0))(
  ( (array!74645 (arr!35969 (Array (_ BitVec 32) (_ BitVec 64))) (size!36506 (_ BitVec 32))) )
))
(declare-fun lt!516650 () array!74644)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-datatypes ((ValueCell!13752 0))(
  ( (ValueCellFull!13752 (v!17156 V!43691)) (EmptyCell!13752) )
))
(declare-datatypes ((array!74646 0))(
  ( (array!74647 (arr!35970 (Array (_ BitVec 32) ValueCell!13752)) (size!36507 (_ BitVec 32))) )
))
(declare-fun lt!516651 () array!74646)

(declare-fun minValue!944 () V!43691)

(declare-fun defaultEntry!1004 () Int)

(declare-fun getCurrentListMapNoExtraKeys!4705 (array!74644 array!74646 (_ BitVec 32) (_ BitVec 32) V!43691 V!43691 (_ BitVec 32) Int) ListLongMap!16499)

(assert (=> b!1153026 (= lt!516664 (getCurrentListMapNoExtraKeys!4705 lt!516650 lt!516651 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun lt!516669 () V!43691)

(declare-fun _values!996 () array!74646)

(assert (=> b!1153026 (= lt!516651 (array!74647 (store (arr!35970 _values!996) i!673 (ValueCellFull!13752 lt!516669)) (size!36507 _values!996)))))

(declare-fun dynLambda!2728 (Int (_ BitVec 64)) V!43691)

(assert (=> b!1153026 (= lt!516669 (dynLambda!2728 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun _keys!1208 () array!74644)

(declare-fun lt!516656 () ListLongMap!16499)

(assert (=> b!1153026 (= lt!516656 (getCurrentListMapNoExtraKeys!4705 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun mapNonEmpty!45209 () Bool)

(declare-fun mapRes!45209 () Bool)

(declare-fun tp!85891 () Bool)

(declare-fun e!655822 () Bool)

(assert (=> mapNonEmpty!45209 (= mapRes!45209 (and tp!85891 e!655822))))

(declare-fun mapKey!45209 () (_ BitVec 32))

(declare-fun mapValue!45209 () ValueCell!13752)

(declare-fun mapRest!45209 () (Array (_ BitVec 32) ValueCell!13752))

(assert (=> mapNonEmpty!45209 (= (arr!35970 _values!996) (store mapRest!45209 mapKey!45209 mapValue!45209))))

(declare-fun b!1153027 () Bool)

(declare-fun res!766563 () Bool)

(declare-fun e!655823 () Bool)

(assert (=> b!1153027 (=> (not res!766563) (not e!655823))))

(declare-datatypes ((List!25308 0))(
  ( (Nil!25305) (Cons!25304 (h!26513 (_ BitVec 64)) (t!36700 List!25308)) )
))
(declare-fun arrayNoDuplicates!0 (array!74644 (_ BitVec 32) List!25308) Bool)

(assert (=> b!1153027 (= res!766563 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!25305))))

(declare-fun bm!54254 () Bool)

(declare-fun call!54264 () ListLongMap!16499)

(declare-fun call!54262 () ListLongMap!16499)

(assert (=> bm!54254 (= call!54264 call!54262)))

(declare-fun b!1153029 () Bool)

(declare-datatypes ((Unit!37853 0))(
  ( (Unit!37854) )
))
(declare-fun e!655810 () Unit!37853)

(declare-fun e!655816 () Unit!37853)

(assert (=> b!1153029 (= e!655810 e!655816)))

(declare-fun c!114347 () Bool)

(declare-fun lt!516667 () Bool)

(assert (=> b!1153029 (= c!114347 (and (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!516667))))

(declare-fun b!1153030 () Bool)

(declare-fun e!655811 () Bool)

(declare-fun e!655820 () Bool)

(assert (=> b!1153030 (= e!655811 (and e!655820 mapRes!45209))))

(declare-fun condMapEmpty!45209 () Bool)

(declare-fun mapDefault!45209 () ValueCell!13752)

(assert (=> b!1153030 (= condMapEmpty!45209 (= (arr!35970 _values!996) ((as const (Array (_ BitVec 32) ValueCell!13752)) mapDefault!45209)))))

(declare-fun b!1153031 () Bool)

(declare-fun tp_is_empty!28923 () Bool)

(assert (=> b!1153031 (= e!655822 tp_is_empty!28923)))

(declare-fun b!1153032 () Bool)

(declare-fun e!655814 () Bool)

(declare-fun k0!934 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!74644 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1153032 (= e!655814 (arrayContainsKey!0 _keys!1208 k0!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun b!1153033 () Bool)

(declare-fun res!766557 () Bool)

(assert (=> b!1153033 (=> (not res!766557) (not e!655823))))

(assert (=> b!1153033 (= res!766557 (= (select (arr!35969 _keys!1208) i!673) k0!934))))

(declare-fun bm!54255 () Bool)

(declare-fun call!54259 () ListLongMap!16499)

(assert (=> bm!54255 (= call!54259 (getCurrentListMapNoExtraKeys!4705 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1153034 () Bool)

(declare-fun e!655808 () Bool)

(assert (=> b!1153034 (= e!655808 (not e!655815))))

(declare-fun res!766558 () Bool)

(assert (=> b!1153034 (=> res!766558 e!655815)))

(assert (=> b!1153034 (= res!766558 (bvsgt from!1455 i!673))))

(assert (=> b!1153034 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-fun lt!516668 () Unit!37853)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!74644 (_ BitVec 64) (_ BitVec 32)) Unit!37853)

(assert (=> b!1153034 (= lt!516668 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun call!54258 () ListLongMap!16499)

(declare-fun b!1153035 () Bool)

(declare-fun e!655819 () Bool)

(declare-fun -!1347 (ListLongMap!16499 (_ BitVec 64)) ListLongMap!16499)

(assert (=> b!1153035 (= e!655819 (= call!54258 (-!1347 call!54259 k0!934)))))

(declare-fun b!1153036 () Bool)

(assert (=> b!1153036 (= e!655814 (ite (= k0!934 #b0000000000000000000000000000000000000000000000000000000000000000) (not lt!516667) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!1153037 () Bool)

(declare-fun e!655817 () Bool)

(assert (=> b!1153037 (= e!655809 e!655817)))

(declare-fun res!766567 () Bool)

(assert (=> b!1153037 (=> res!766567 e!655817)))

(assert (=> b!1153037 (= res!766567 (not (= (select (arr!35969 _keys!1208) from!1455) k0!934)))))

(assert (=> b!1153037 e!655819))

(declare-fun c!114348 () Bool)

(assert (=> b!1153037 (= c!114348 (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673))))

(declare-fun lt!516648 () Unit!37853)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!581 (array!74644 array!74646 (_ BitVec 32) (_ BitVec 32) V!43691 V!43691 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!37853)

(assert (=> b!1153037 (= lt!516648 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!581 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1153038 () Bool)

(declare-fun res!766568 () Bool)

(assert (=> b!1153038 (=> (not res!766568) (not e!655823))))

(assert (=> b!1153038 (= res!766568 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!36506 _keys!1208))))))

(declare-fun b!1153039 () Bool)

(declare-fun e!655813 () Bool)

(declare-fun lt!516661 () ListLongMap!16499)

(assert (=> b!1153039 (= e!655813 (= lt!516661 (getCurrentListMapNoExtraKeys!4705 lt!516650 lt!516651 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004)))))

(declare-fun bm!54256 () Bool)

(declare-fun call!54263 () Bool)

(declare-fun call!54261 () Bool)

(assert (=> bm!54256 (= call!54263 call!54261)))

(declare-fun e!655824 () Bool)

(declare-fun b!1153040 () Bool)

(assert (=> b!1153040 (= e!655824 (arrayContainsKey!0 _keys!1208 k0!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun b!1153041 () Bool)

(declare-fun lt!516659 () Unit!37853)

(assert (=> b!1153041 (= e!655810 lt!516659)))

(declare-fun call!54257 () Unit!37853)

(assert (=> b!1153041 (= lt!516659 call!54257)))

(assert (=> b!1153041 call!54263))

(declare-fun mapIsEmpty!45209 () Bool)

(assert (=> mapIsEmpty!45209 mapRes!45209))

(declare-fun c!114346 () Bool)

(declare-fun lt!516662 () ListLongMap!16499)

(declare-fun bm!54257 () Bool)

(declare-fun call!54260 () Unit!37853)

(declare-fun lt!516657 () ListLongMap!16499)

(declare-fun c!114345 () Bool)

(declare-fun addStillContains!898 (ListLongMap!16499 (_ BitVec 64) V!43691 (_ BitVec 64)) Unit!37853)

(assert (=> bm!54257 (= call!54260 (addStillContains!898 (ite c!114345 lt!516662 lt!516657) (ite c!114345 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!114346 #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000)) (ite c!114345 minValue!944 (ite c!114346 zeroValue!944 minValue!944)) k0!934))))

(declare-fun b!1153042 () Bool)

(assert (=> b!1153042 (= c!114346 (and (not lt!516667) (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun e!655818 () Unit!37853)

(assert (=> b!1153042 (= e!655818 e!655810)))

(declare-fun b!1153043 () Bool)

(assert (=> b!1153043 (= e!655817 true)))

(assert (=> b!1153043 e!655813))

(declare-fun res!766561 () Bool)

(assert (=> b!1153043 (=> (not res!766561) (not e!655813))))

(assert (=> b!1153043 (= res!766561 (= lt!516661 lt!516657))))

(assert (=> b!1153043 (= lt!516661 (-!1347 lt!516656 k0!934))))

(declare-fun lt!516658 () V!43691)

(declare-fun +!3600 (ListLongMap!16499 tuple2!18518) ListLongMap!16499)

(assert (=> b!1153043 (= (-!1347 (+!3600 lt!516657 (tuple2!18519 (select (arr!35969 _keys!1208) from!1455) lt!516658)) (select (arr!35969 _keys!1208) from!1455)) lt!516657)))

(declare-fun lt!516654 () Unit!37853)

(declare-fun addThenRemoveForNewKeyIsSame!192 (ListLongMap!16499 (_ BitVec 64) V!43691) Unit!37853)

(assert (=> b!1153043 (= lt!516654 (addThenRemoveForNewKeyIsSame!192 lt!516657 (select (arr!35969 _keys!1208) from!1455) lt!516658))))

(declare-fun get!18344 (ValueCell!13752 V!43691) V!43691)

(assert (=> b!1153043 (= lt!516658 (get!18344 (select (arr!35970 _values!996) from!1455) lt!516669))))

(declare-fun lt!516655 () Unit!37853)

(declare-fun e!655821 () Unit!37853)

(assert (=> b!1153043 (= lt!516655 e!655821)))

(declare-fun c!114343 () Bool)

(declare-fun contains!6757 (ListLongMap!16499 (_ BitVec 64)) Bool)

(assert (=> b!1153043 (= c!114343 (contains!6757 lt!516657 k0!934))))

(assert (=> b!1153043 (= lt!516657 (getCurrentListMapNoExtraKeys!4705 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1153044 () Bool)

(declare-fun res!766564 () Bool)

(assert (=> b!1153044 (=> (not res!766564) (not e!655823))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!74644 (_ BitVec 32)) Bool)

(assert (=> b!1153044 (= res!766564 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1153045 () Bool)

(declare-fun res!766566 () Bool)

(assert (=> b!1153045 (=> (not res!766566) (not e!655823))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1153045 (= res!766566 (validMask!0 mask!1564))))

(declare-fun b!1153046 () Bool)

(declare-fun res!766560 () Bool)

(assert (=> b!1153046 (=> (not res!766560) (not e!655823))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1153046 (= res!766560 (validKeyInArray!0 k0!934))))

(declare-fun res!766562 () Bool)

(assert (=> start!98824 (=> (not res!766562) (not e!655823))))

(assert (=> start!98824 (= res!766562 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!36506 _keys!1208))))))

(assert (=> start!98824 e!655823))

(assert (=> start!98824 tp_is_empty!28923))

(declare-fun array_inv!27414 (array!74644) Bool)

(assert (=> start!98824 (array_inv!27414 _keys!1208)))

(assert (=> start!98824 true))

(assert (=> start!98824 tp!85890))

(declare-fun array_inv!27415 (array!74646) Bool)

(assert (=> start!98824 (and (array_inv!27415 _values!996) e!655811)))

(declare-fun b!1153028 () Bool)

(assert (=> b!1153028 (= e!655819 (= call!54258 call!54259))))

(declare-fun b!1153047 () Bool)

(assert (=> b!1153047 (= e!655820 tp_is_empty!28923)))

(declare-fun b!1153048 () Bool)

(assert (=> b!1153048 (contains!6757 call!54262 k0!934)))

(declare-fun lt!516649 () Unit!37853)

(assert (=> b!1153048 (= lt!516649 call!54260)))

(assert (=> b!1153048 call!54261))

(assert (=> b!1153048 (= lt!516662 (+!3600 lt!516657 (tuple2!18519 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944)))))

(declare-fun lt!516665 () Unit!37853)

(assert (=> b!1153048 (= lt!516665 (addStillContains!898 lt!516657 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944 k0!934))))

(assert (=> b!1153048 (= e!655818 lt!516649)))

(declare-fun b!1153049 () Bool)

(assert (=> b!1153049 (= e!655823 e!655808)))

(declare-fun res!766565 () Bool)

(assert (=> b!1153049 (=> (not res!766565) (not e!655808))))

(assert (=> b!1153049 (= res!766565 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!516650 mask!1564))))

(assert (=> b!1153049 (= lt!516650 (array!74645 (store (arr!35969 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!36506 _keys!1208)))))

(declare-fun bm!54258 () Bool)

(assert (=> bm!54258 (= call!54258 (getCurrentListMapNoExtraKeys!4705 lt!516650 lt!516651 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1153050 () Bool)

(declare-fun res!766554 () Bool)

(assert (=> b!1153050 (=> (not res!766554) (not e!655808))))

(assert (=> b!1153050 (= res!766554 (arrayNoDuplicates!0 lt!516650 #b00000000000000000000000000000000 Nil!25305))))

(declare-fun b!1153051 () Bool)

(declare-fun Unit!37855 () Unit!37853)

(assert (=> b!1153051 (= e!655821 Unit!37855)))

(assert (=> b!1153051 (= lt!516667 (= (bvand extraKeys!923 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(assert (=> b!1153051 (= c!114345 (and (not lt!516667) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun lt!516663 () Unit!37853)

(assert (=> b!1153051 (= lt!516663 e!655818)))

(declare-fun lt!516652 () Unit!37853)

(declare-fun lemmaListMapContainsThenArrayContainsFrom!481 (array!74644 array!74646 (_ BitVec 32) (_ BitVec 32) V!43691 V!43691 (_ BitVec 64) (_ BitVec 32) Int) Unit!37853)

(assert (=> b!1153051 (= lt!516652 (lemmaListMapContainsThenArrayContainsFrom!481 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun c!114344 () Bool)

(assert (=> b!1153051 (= c!114344 (and (not (= k0!934 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!934 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun res!766555 () Bool)

(assert (=> b!1153051 (= res!766555 e!655814)))

(assert (=> b!1153051 (=> (not res!766555) (not e!655824))))

(assert (=> b!1153051 e!655824))

(declare-fun lt!516653 () Unit!37853)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!74644 (_ BitVec 32) (_ BitVec 32)) Unit!37853)

(assert (=> b!1153051 (= lt!516653 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1208 #b00000000000000000000000000000000 from!1455))))

(assert (=> b!1153051 (arrayNoDuplicates!0 _keys!1208 from!1455 Nil!25305)))

(declare-fun lt!516660 () Unit!37853)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!74644 (_ BitVec 64) (_ BitVec 32) List!25308) Unit!37853)

(assert (=> b!1153051 (= lt!516660 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!1208 k0!934 from!1455 Nil!25305))))

(assert (=> b!1153051 false))

(declare-fun bm!54259 () Bool)

(assert (=> bm!54259 (= call!54261 (contains!6757 (ite c!114345 lt!516662 call!54264) k0!934))))

(declare-fun bm!54260 () Bool)

(assert (=> bm!54260 (= call!54257 call!54260)))

(declare-fun b!1153052 () Bool)

(declare-fun Unit!37856 () Unit!37853)

(assert (=> b!1153052 (= e!655816 Unit!37856)))

(declare-fun b!1153053 () Bool)

(declare-fun Unit!37857 () Unit!37853)

(assert (=> b!1153053 (= e!655821 Unit!37857)))

(declare-fun b!1153054 () Bool)

(declare-fun res!766556 () Bool)

(assert (=> b!1153054 (=> (not res!766556) (not e!655823))))

(assert (=> b!1153054 (= res!766556 (and (= (size!36507 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!36506 _keys!1208) (size!36507 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun bm!54261 () Bool)

(assert (=> bm!54261 (= call!54262 (+!3600 (ite c!114345 lt!516662 lt!516657) (ite c!114345 (tuple2!18519 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944) (ite c!114346 (tuple2!18519 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!18519 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944)))))))

(declare-fun b!1153055 () Bool)

(assert (=> b!1153055 call!54263))

(declare-fun lt!516666 () Unit!37853)

(assert (=> b!1153055 (= lt!516666 call!54257)))

(assert (=> b!1153055 (= e!655816 lt!516666)))

(assert (= (and start!98824 res!766562) b!1153045))

(assert (= (and b!1153045 res!766566) b!1153054))

(assert (= (and b!1153054 res!766556) b!1153044))

(assert (= (and b!1153044 res!766564) b!1153027))

(assert (= (and b!1153027 res!766563) b!1153038))

(assert (= (and b!1153038 res!766568) b!1153046))

(assert (= (and b!1153046 res!766560) b!1153033))

(assert (= (and b!1153033 res!766557) b!1153049))

(assert (= (and b!1153049 res!766565) b!1153050))

(assert (= (and b!1153050 res!766554) b!1153034))

(assert (= (and b!1153034 (not res!766558)) b!1153026))

(assert (= (and b!1153026 (not res!766559)) b!1153037))

(assert (= (and b!1153037 c!114348) b!1153035))

(assert (= (and b!1153037 (not c!114348)) b!1153028))

(assert (= (or b!1153035 b!1153028) bm!54258))

(assert (= (or b!1153035 b!1153028) bm!54255))

(assert (= (and b!1153037 (not res!766567)) b!1153043))

(assert (= (and b!1153043 c!114343) b!1153051))

(assert (= (and b!1153043 (not c!114343)) b!1153053))

(assert (= (and b!1153051 c!114345) b!1153048))

(assert (= (and b!1153051 (not c!114345)) b!1153042))

(assert (= (and b!1153042 c!114346) b!1153041))

(assert (= (and b!1153042 (not c!114346)) b!1153029))

(assert (= (and b!1153029 c!114347) b!1153055))

(assert (= (and b!1153029 (not c!114347)) b!1153052))

(assert (= (or b!1153041 b!1153055) bm!54260))

(assert (= (or b!1153041 b!1153055) bm!54254))

(assert (= (or b!1153041 b!1153055) bm!54256))

(assert (= (or b!1153048 bm!54256) bm!54259))

(assert (= (or b!1153048 bm!54260) bm!54257))

(assert (= (or b!1153048 bm!54254) bm!54261))

(assert (= (and b!1153051 c!114344) b!1153032))

(assert (= (and b!1153051 (not c!114344)) b!1153036))

(assert (= (and b!1153051 res!766555) b!1153040))

(assert (= (and b!1153043 res!766561) b!1153039))

(assert (= (and b!1153030 condMapEmpty!45209) mapIsEmpty!45209))

(assert (= (and b!1153030 (not condMapEmpty!45209)) mapNonEmpty!45209))

(get-info :version)

(assert (= (and mapNonEmpty!45209 ((_ is ValueCellFull!13752) mapValue!45209)) b!1153031))

(assert (= (and b!1153030 ((_ is ValueCellFull!13752) mapDefault!45209)) b!1153047))

(assert (= start!98824 b!1153030))

(declare-fun b_lambda!19517 () Bool)

(assert (=> (not b_lambda!19517) (not b!1153026)))

(declare-fun t!36698 () Bool)

(declare-fun tb!9213 () Bool)

(assert (=> (and start!98824 (= defaultEntry!1004 defaultEntry!1004) t!36698) tb!9213))

(declare-fun result!18983 () Bool)

(assert (=> tb!9213 (= result!18983 tp_is_empty!28923)))

(assert (=> b!1153026 t!36698))

(declare-fun b_and!39651 () Bool)

(assert (= b_and!39649 (and (=> t!36698 result!18983) b_and!39651)))

(declare-fun m!1062979 () Bool)

(assert (=> b!1153027 m!1062979))

(declare-fun m!1062981 () Bool)

(assert (=> b!1153048 m!1062981))

(declare-fun m!1062983 () Bool)

(assert (=> b!1153048 m!1062983))

(declare-fun m!1062985 () Bool)

(assert (=> b!1153048 m!1062985))

(declare-fun m!1062987 () Bool)

(assert (=> bm!54261 m!1062987))

(declare-fun m!1062989 () Bool)

(assert (=> b!1153044 m!1062989))

(declare-fun m!1062991 () Bool)

(assert (=> b!1153046 m!1062991))

(declare-fun m!1062993 () Bool)

(assert (=> b!1153051 m!1062993))

(declare-fun m!1062995 () Bool)

(assert (=> b!1153051 m!1062995))

(declare-fun m!1062997 () Bool)

(assert (=> b!1153051 m!1062997))

(declare-fun m!1062999 () Bool)

(assert (=> b!1153051 m!1062999))

(declare-fun m!1063001 () Bool)

(assert (=> bm!54257 m!1063001))

(declare-fun m!1063003 () Bool)

(assert (=> b!1153037 m!1063003))

(declare-fun m!1063005 () Bool)

(assert (=> b!1153037 m!1063005))

(declare-fun m!1063007 () Bool)

(assert (=> b!1153049 m!1063007))

(declare-fun m!1063009 () Bool)

(assert (=> b!1153049 m!1063009))

(declare-fun m!1063011 () Bool)

(assert (=> b!1153039 m!1063011))

(declare-fun m!1063013 () Bool)

(assert (=> b!1153050 m!1063013))

(declare-fun m!1063015 () Bool)

(assert (=> bm!54255 m!1063015))

(declare-fun m!1063017 () Bool)

(assert (=> b!1153032 m!1063017))

(declare-fun m!1063019 () Bool)

(assert (=> start!98824 m!1063019))

(declare-fun m!1063021 () Bool)

(assert (=> start!98824 m!1063021))

(declare-fun m!1063023 () Bool)

(assert (=> bm!54259 m!1063023))

(declare-fun m!1063025 () Bool)

(assert (=> b!1153026 m!1063025))

(declare-fun m!1063027 () Bool)

(assert (=> b!1153026 m!1063027))

(declare-fun m!1063029 () Bool)

(assert (=> b!1153026 m!1063029))

(declare-fun m!1063031 () Bool)

(assert (=> b!1153026 m!1063031))

(assert (=> b!1153043 m!1063015))

(declare-fun m!1063033 () Bool)

(assert (=> b!1153043 m!1063033))

(assert (=> b!1153043 m!1063003))

(declare-fun m!1063035 () Bool)

(assert (=> b!1153043 m!1063035))

(assert (=> b!1153043 m!1063033))

(declare-fun m!1063037 () Bool)

(assert (=> b!1153043 m!1063037))

(declare-fun m!1063039 () Bool)

(assert (=> b!1153043 m!1063039))

(assert (=> b!1153043 m!1063003))

(declare-fun m!1063041 () Bool)

(assert (=> b!1153043 m!1063041))

(declare-fun m!1063043 () Bool)

(assert (=> b!1153043 m!1063043))

(assert (=> b!1153043 m!1063039))

(declare-fun m!1063045 () Bool)

(assert (=> b!1153043 m!1063045))

(assert (=> b!1153043 m!1063003))

(assert (=> b!1153040 m!1063017))

(assert (=> bm!54258 m!1063011))

(declare-fun m!1063047 () Bool)

(assert (=> b!1153034 m!1063047))

(declare-fun m!1063049 () Bool)

(assert (=> b!1153034 m!1063049))

(declare-fun m!1063051 () Bool)

(assert (=> mapNonEmpty!45209 m!1063051))

(declare-fun m!1063053 () Bool)

(assert (=> b!1153033 m!1063053))

(declare-fun m!1063055 () Bool)

(assert (=> b!1153035 m!1063055))

(declare-fun m!1063057 () Bool)

(assert (=> b!1153045 m!1063057))

(check-sat (not b!1153027) (not b!1153050) (not b!1153034) b_and!39651 (not b!1153051) (not bm!54261) (not start!98824) tp_is_empty!28923 (not bm!54258) (not b!1153045) (not b!1153049) (not b!1153044) (not bm!54259) (not b!1153043) (not b!1153032) (not b!1153040) (not b!1153037) (not b!1153039) (not b!1153046) (not b!1153048) (not bm!54257) (not mapNonEmpty!45209) (not b!1153035) (not b!1153026) (not bm!54255) (not b_next!24393) (not b_lambda!19517))
(check-sat b_and!39651 (not b_next!24393))
