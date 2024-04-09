; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!98980 () Bool)

(assert start!98980)

(declare-fun b_free!24549 () Bool)

(declare-fun b_next!24549 () Bool)

(assert (=> start!98980 (= b_free!24549 (not b_next!24549))))

(declare-fun tp!86359 () Bool)

(declare-fun b_and!39961 () Bool)

(assert (=> start!98980 (= tp!86359 b_and!39961)))

(declare-fun b!1160202 () Bool)

(declare-datatypes ((V!43899 0))(
  ( (V!43900 (val!14596 Int)) )
))
(declare-datatypes ((tuple2!18662 0))(
  ( (tuple2!18663 (_1!9341 (_ BitVec 64)) (_2!9341 V!43899)) )
))
(declare-datatypes ((List!25440 0))(
  ( (Nil!25437) (Cons!25436 (h!26645 tuple2!18662) (t!36988 List!25440)) )
))
(declare-datatypes ((ListLongMap!16643 0))(
  ( (ListLongMap!16644 (toList!8337 List!25440)) )
))
(declare-fun lt!521800 () ListLongMap!16643)

(declare-fun minValue!944 () V!43899)

(declare-fun k0!934 () (_ BitVec 64))

(declare-fun contains!6819 (ListLongMap!16643 (_ BitVec 64)) Bool)

(declare-fun +!3663 (ListLongMap!16643 tuple2!18662) ListLongMap!16643)

(assert (=> b!1160202 (contains!6819 (+!3663 lt!521800 (tuple2!18663 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944)) k0!934)))

(declare-datatypes ((Unit!38144 0))(
  ( (Unit!38145) )
))
(declare-fun lt!521798 () Unit!38144)

(declare-fun call!56129 () Unit!38144)

(assert (=> b!1160202 (= lt!521798 call!56129)))

(declare-fun call!56132 () Bool)

(assert (=> b!1160202 call!56132))

(declare-fun call!56131 () ListLongMap!16643)

(assert (=> b!1160202 (= lt!521800 call!56131)))

(declare-fun zeroValue!944 () V!43899)

(declare-fun lt!521813 () Unit!38144)

(declare-fun lt!521803 () ListLongMap!16643)

(declare-fun addStillContains!960 (ListLongMap!16643 (_ BitVec 64) V!43899 (_ BitVec 64)) Unit!38144)

(assert (=> b!1160202 (= lt!521813 (addStillContains!960 lt!521803 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944 k0!934))))

(declare-fun e!659792 () Unit!38144)

(assert (=> b!1160202 (= e!659792 lt!521798)))

(declare-fun b!1160203 () Bool)

(declare-fun e!659790 () Unit!38144)

(declare-fun Unit!38146 () Unit!38144)

(assert (=> b!1160203 (= e!659790 Unit!38146)))

(declare-fun b!1160204 () Bool)

(declare-fun res!770069 () Bool)

(declare-fun e!659796 () Bool)

(assert (=> b!1160204 (=> (not res!770069) (not e!659796))))

(declare-datatypes ((array!74948 0))(
  ( (array!74949 (arr!36121 (Array (_ BitVec 32) (_ BitVec 64))) (size!36658 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!74948)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-datatypes ((ValueCell!13830 0))(
  ( (ValueCellFull!13830 (v!17234 V!43899)) (EmptyCell!13830) )
))
(declare-datatypes ((array!74950 0))(
  ( (array!74951 (arr!36122 (Array (_ BitVec 32) ValueCell!13830)) (size!36659 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!74950)

(assert (=> b!1160204 (= res!770069 (and (= (size!36659 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!36658 _keys!1208) (size!36659 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1160205 () Bool)

(declare-fun e!659799 () Bool)

(declare-fun e!659793 () Bool)

(assert (=> b!1160205 (= e!659799 (not e!659793))))

(declare-fun res!770073 () Bool)

(assert (=> b!1160205 (=> res!770073 e!659793)))

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1160205 (= res!770073 (bvsgt from!1455 i!673))))

(declare-fun arrayContainsKey!0 (array!74948 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1160205 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-fun lt!521812 () Unit!38144)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!74948 (_ BitVec 64) (_ BitVec 32)) Unit!38144)

(assert (=> b!1160205 (= lt!521812 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun res!770065 () Bool)

(assert (=> start!98980 (=> (not res!770065) (not e!659796))))

(assert (=> start!98980 (= res!770065 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!36658 _keys!1208))))))

(assert (=> start!98980 e!659796))

(declare-fun tp_is_empty!29079 () Bool)

(assert (=> start!98980 tp_is_empty!29079))

(declare-fun array_inv!27508 (array!74948) Bool)

(assert (=> start!98980 (array_inv!27508 _keys!1208)))

(assert (=> start!98980 true))

(assert (=> start!98980 tp!86359))

(declare-fun e!659800 () Bool)

(declare-fun array_inv!27509 (array!74950) Bool)

(assert (=> start!98980 (and (array_inv!27509 _values!996) e!659800)))

(declare-fun b!1160206 () Bool)

(declare-fun e!659798 () Bool)

(assert (=> b!1160206 (= e!659798 true)))

(declare-fun e!659787 () Bool)

(assert (=> b!1160206 e!659787))

(declare-fun res!770067 () Bool)

(assert (=> b!1160206 (=> (not res!770067) (not e!659787))))

(declare-fun lt!521807 () ListLongMap!16643)

(assert (=> b!1160206 (= res!770067 (= lt!521807 lt!521803))))

(declare-fun lt!521810 () ListLongMap!16643)

(declare-fun -!1409 (ListLongMap!16643 (_ BitVec 64)) ListLongMap!16643)

(assert (=> b!1160206 (= lt!521807 (-!1409 lt!521810 k0!934))))

(declare-fun lt!521814 () V!43899)

(assert (=> b!1160206 (= (-!1409 (+!3663 lt!521803 (tuple2!18663 (select (arr!36121 _keys!1208) from!1455) lt!521814)) (select (arr!36121 _keys!1208) from!1455)) lt!521803)))

(declare-fun lt!521815 () Unit!38144)

(declare-fun addThenRemoveForNewKeyIsSame!247 (ListLongMap!16643 (_ BitVec 64) V!43899) Unit!38144)

(assert (=> b!1160206 (= lt!521815 (addThenRemoveForNewKeyIsSame!247 lt!521803 (select (arr!36121 _keys!1208) from!1455) lt!521814))))

(declare-fun lt!521799 () V!43899)

(declare-fun get!18451 (ValueCell!13830 V!43899) V!43899)

(assert (=> b!1160206 (= lt!521814 (get!18451 (select (arr!36122 _values!996) from!1455) lt!521799))))

(declare-fun lt!521806 () Unit!38144)

(assert (=> b!1160206 (= lt!521806 e!659790)))

(declare-fun c!115751 () Bool)

(assert (=> b!1160206 (= c!115751 (contains!6819 lt!521803 k0!934))))

(declare-fun defaultEntry!1004 () Int)

(declare-fun getCurrentListMapNoExtraKeys!4773 (array!74948 array!74950 (_ BitVec 32) (_ BitVec 32) V!43899 V!43899 (_ BitVec 32) Int) ListLongMap!16643)

(assert (=> b!1160206 (= lt!521803 (getCurrentListMapNoExtraKeys!4773 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun call!56135 () ListLongMap!16643)

(declare-fun bm!56126 () Bool)

(assert (=> bm!56126 (= call!56135 (getCurrentListMapNoExtraKeys!4773 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun c!115750 () Bool)

(declare-fun c!115748 () Bool)

(declare-fun bm!56127 () Bool)

(assert (=> bm!56127 (= call!56131 (+!3663 lt!521803 (ite (or c!115748 c!115750) (tuple2!18663 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!18663 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944))))))

(declare-fun mapIsEmpty!45443 () Bool)

(declare-fun mapRes!45443 () Bool)

(assert (=> mapIsEmpty!45443 mapRes!45443))

(declare-fun b!1160207 () Bool)

(declare-fun call!56134 () ListLongMap!16643)

(declare-fun e!659788 () Bool)

(assert (=> b!1160207 (= e!659788 (= call!56134 (-!1409 call!56135 k0!934)))))

(declare-fun b!1160208 () Bool)

(declare-fun e!659794 () Bool)

(assert (=> b!1160208 (= e!659800 (and e!659794 mapRes!45443))))

(declare-fun condMapEmpty!45443 () Bool)

(declare-fun mapDefault!45443 () ValueCell!13830)

(assert (=> b!1160208 (= condMapEmpty!45443 (= (arr!36122 _values!996) ((as const (Array (_ BitVec 32) ValueCell!13830)) mapDefault!45443)))))

(declare-fun b!1160209 () Bool)

(declare-fun res!770076 () Bool)

(assert (=> b!1160209 (=> (not res!770076) (not e!659796))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1160209 (= res!770076 (validMask!0 mask!1564))))

(declare-fun b!1160210 () Bool)

(declare-fun res!770064 () Bool)

(assert (=> b!1160210 (=> (not res!770064) (not e!659799))))

(declare-fun lt!521809 () array!74948)

(declare-datatypes ((List!25441 0))(
  ( (Nil!25438) (Cons!25437 (h!26646 (_ BitVec 64)) (t!36989 List!25441)) )
))
(declare-fun arrayNoDuplicates!0 (array!74948 (_ BitVec 32) List!25441) Bool)

(assert (=> b!1160210 (= res!770064 (arrayNoDuplicates!0 lt!521809 #b00000000000000000000000000000000 Nil!25438))))

(declare-fun b!1160211 () Bool)

(declare-fun res!770066 () Bool)

(assert (=> b!1160211 (=> (not res!770066) (not e!659796))))

(assert (=> b!1160211 (= res!770066 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!36658 _keys!1208))))))

(declare-fun b!1160212 () Bool)

(declare-fun e!659786 () Unit!38144)

(declare-fun Unit!38147 () Unit!38144)

(assert (=> b!1160212 (= e!659786 Unit!38147)))

(declare-fun b!1160213 () Bool)

(declare-fun res!770077 () Bool)

(assert (=> b!1160213 (=> (not res!770077) (not e!659796))))

(assert (=> b!1160213 (= res!770077 (= (select (arr!36121 _keys!1208) i!673) k0!934))))

(declare-fun b!1160214 () Bool)

(declare-fun e!659797 () Unit!38144)

(declare-fun lt!521808 () Unit!38144)

(assert (=> b!1160214 (= e!659797 lt!521808)))

(declare-fun call!56130 () Unit!38144)

(assert (=> b!1160214 (= lt!521808 call!56130)))

(declare-fun call!56133 () Bool)

(assert (=> b!1160214 call!56133))

(declare-fun b!1160215 () Bool)

(declare-fun res!770078 () Bool)

(assert (=> b!1160215 (=> (not res!770078) (not e!659796))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!74948 (_ BitVec 32)) Bool)

(assert (=> b!1160215 (= res!770078 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1160216 () Bool)

(declare-fun res!770072 () Bool)

(assert (=> b!1160216 (=> (not res!770072) (not e!659796))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1160216 (= res!770072 (validKeyInArray!0 k0!934))))

(declare-fun b!1160217 () Bool)

(assert (=> b!1160217 (= e!659797 e!659786)))

(declare-fun c!115752 () Bool)

(declare-fun lt!521796 () Bool)

(assert (=> b!1160217 (= c!115752 (and (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!521796))))

(declare-fun bm!56128 () Bool)

(declare-fun call!56136 () ListLongMap!16643)

(assert (=> bm!56128 (= call!56136 call!56131)))

(declare-fun b!1160218 () Bool)

(declare-fun e!659802 () Bool)

(assert (=> b!1160218 (= e!659802 (arrayContainsKey!0 _keys!1208 k0!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun bm!56129 () Bool)

(declare-fun lt!521797 () array!74950)

(assert (=> bm!56129 (= call!56134 (getCurrentListMapNoExtraKeys!4773 lt!521809 lt!521797 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1160219 () Bool)

(declare-fun e!659801 () Bool)

(assert (=> b!1160219 (= e!659801 e!659798)))

(declare-fun res!770070 () Bool)

(assert (=> b!1160219 (=> res!770070 e!659798)))

(assert (=> b!1160219 (= res!770070 (not (= (select (arr!36121 _keys!1208) from!1455) k0!934)))))

(assert (=> b!1160219 e!659788))

(declare-fun c!115749 () Bool)

(assert (=> b!1160219 (= c!115749 (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673))))

(declare-fun lt!521816 () Unit!38144)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!632 (array!74948 array!74950 (_ BitVec 32) (_ BitVec 32) V!43899 V!43899 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!38144)

(assert (=> b!1160219 (= lt!521816 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!632 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun bm!56130 () Bool)

(assert (=> bm!56130 (= call!56133 call!56132)))

(declare-fun b!1160220 () Bool)

(assert (=> b!1160220 (= e!659787 (= lt!521807 (getCurrentListMapNoExtraKeys!4773 lt!521809 lt!521797 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004)))))

(declare-fun b!1160221 () Bool)

(assert (=> b!1160221 (= e!659788 (= call!56134 call!56135))))

(declare-fun b!1160222 () Bool)

(assert (=> b!1160222 (= e!659796 e!659799)))

(declare-fun res!770075 () Bool)

(assert (=> b!1160222 (=> (not res!770075) (not e!659799))))

(assert (=> b!1160222 (= res!770075 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!521809 mask!1564))))

(assert (=> b!1160222 (= lt!521809 (array!74949 (store (arr!36121 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!36658 _keys!1208)))))

(declare-fun b!1160223 () Bool)

(assert (=> b!1160223 (= e!659794 tp_is_empty!29079)))

(declare-fun bm!56131 () Bool)

(assert (=> bm!56131 (= call!56130 call!56129)))

(declare-fun b!1160224 () Bool)

(assert (=> b!1160224 call!56133))

(declare-fun lt!521817 () Unit!38144)

(assert (=> b!1160224 (= lt!521817 call!56130)))

(assert (=> b!1160224 (= e!659786 lt!521817)))

(declare-fun b!1160225 () Bool)

(assert (=> b!1160225 (= c!115750 (and (not lt!521796) (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(assert (=> b!1160225 (= e!659792 e!659797)))

(declare-fun b!1160226 () Bool)

(declare-fun e!659791 () Bool)

(assert (=> b!1160226 (= e!659791 tp_is_empty!29079)))

(declare-fun b!1160227 () Bool)

(assert (=> b!1160227 (= e!659793 e!659801)))

(declare-fun res!770074 () Bool)

(assert (=> b!1160227 (=> res!770074 e!659801)))

(assert (=> b!1160227 (= res!770074 (not (= from!1455 i!673)))))

(declare-fun lt!521804 () ListLongMap!16643)

(assert (=> b!1160227 (= lt!521804 (getCurrentListMapNoExtraKeys!4773 lt!521809 lt!521797 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(assert (=> b!1160227 (= lt!521797 (array!74951 (store (arr!36122 _values!996) i!673 (ValueCellFull!13830 lt!521799)) (size!36659 _values!996)))))

(declare-fun dynLambda!2775 (Int (_ BitVec 64)) V!43899)

(assert (=> b!1160227 (= lt!521799 (dynLambda!2775 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1160227 (= lt!521810 (getCurrentListMapNoExtraKeys!4773 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun bm!56132 () Bool)

(assert (=> bm!56132 (= call!56132 (contains!6819 (ite c!115748 lt!521800 call!56136) k0!934))))

(declare-fun bm!56133 () Bool)

(assert (=> bm!56133 (= call!56129 (addStillContains!960 (ite c!115748 lt!521800 lt!521803) (ite c!115748 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!115750 #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000)) (ite c!115748 minValue!944 (ite c!115750 zeroValue!944 minValue!944)) k0!934))))

(declare-fun b!1160228 () Bool)

(declare-fun Unit!38148 () Unit!38144)

(assert (=> b!1160228 (= e!659790 Unit!38148)))

(assert (=> b!1160228 (= lt!521796 (= (bvand extraKeys!923 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(assert (=> b!1160228 (= c!115748 (and (not lt!521796) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun lt!521805 () Unit!38144)

(assert (=> b!1160228 (= lt!521805 e!659792)))

(declare-fun lt!521801 () Unit!38144)

(declare-fun lemmaListMapContainsThenArrayContainsFrom!533 (array!74948 array!74950 (_ BitVec 32) (_ BitVec 32) V!43899 V!43899 (_ BitVec 64) (_ BitVec 32) Int) Unit!38144)

(assert (=> b!1160228 (= lt!521801 (lemmaListMapContainsThenArrayContainsFrom!533 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun c!115747 () Bool)

(assert (=> b!1160228 (= c!115747 (and (not (= k0!934 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!934 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun res!770071 () Bool)

(declare-fun e!659789 () Bool)

(assert (=> b!1160228 (= res!770071 e!659789)))

(assert (=> b!1160228 (=> (not res!770071) (not e!659802))))

(assert (=> b!1160228 e!659802))

(declare-fun lt!521811 () Unit!38144)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!74948 (_ BitVec 32) (_ BitVec 32)) Unit!38144)

(assert (=> b!1160228 (= lt!521811 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1208 #b00000000000000000000000000000000 from!1455))))

(assert (=> b!1160228 (arrayNoDuplicates!0 _keys!1208 from!1455 Nil!25438)))

(declare-fun lt!521802 () Unit!38144)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!74948 (_ BitVec 64) (_ BitVec 32) List!25441) Unit!38144)

(assert (=> b!1160228 (= lt!521802 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!1208 k0!934 from!1455 Nil!25438))))

(assert (=> b!1160228 false))

(declare-fun b!1160229 () Bool)

(assert (=> b!1160229 (= e!659789 (arrayContainsKey!0 _keys!1208 k0!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun b!1160230 () Bool)

(declare-fun res!770068 () Bool)

(assert (=> b!1160230 (=> (not res!770068) (not e!659796))))

(assert (=> b!1160230 (= res!770068 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!25438))))

(declare-fun mapNonEmpty!45443 () Bool)

(declare-fun tp!86358 () Bool)

(assert (=> mapNonEmpty!45443 (= mapRes!45443 (and tp!86358 e!659791))))

(declare-fun mapKey!45443 () (_ BitVec 32))

(declare-fun mapValue!45443 () ValueCell!13830)

(declare-fun mapRest!45443 () (Array (_ BitVec 32) ValueCell!13830))

(assert (=> mapNonEmpty!45443 (= (arr!36122 _values!996) (store mapRest!45443 mapKey!45443 mapValue!45443))))

(declare-fun b!1160231 () Bool)

(assert (=> b!1160231 (= e!659789 (ite (= k0!934 #b0000000000000000000000000000000000000000000000000000000000000000) (not lt!521796) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (= (and start!98980 res!770065) b!1160209))

(assert (= (and b!1160209 res!770076) b!1160204))

(assert (= (and b!1160204 res!770069) b!1160215))

(assert (= (and b!1160215 res!770078) b!1160230))

(assert (= (and b!1160230 res!770068) b!1160211))

(assert (= (and b!1160211 res!770066) b!1160216))

(assert (= (and b!1160216 res!770072) b!1160213))

(assert (= (and b!1160213 res!770077) b!1160222))

(assert (= (and b!1160222 res!770075) b!1160210))

(assert (= (and b!1160210 res!770064) b!1160205))

(assert (= (and b!1160205 (not res!770073)) b!1160227))

(assert (= (and b!1160227 (not res!770074)) b!1160219))

(assert (= (and b!1160219 c!115749) b!1160207))

(assert (= (and b!1160219 (not c!115749)) b!1160221))

(assert (= (or b!1160207 b!1160221) bm!56129))

(assert (= (or b!1160207 b!1160221) bm!56126))

(assert (= (and b!1160219 (not res!770070)) b!1160206))

(assert (= (and b!1160206 c!115751) b!1160228))

(assert (= (and b!1160206 (not c!115751)) b!1160203))

(assert (= (and b!1160228 c!115748) b!1160202))

(assert (= (and b!1160228 (not c!115748)) b!1160225))

(assert (= (and b!1160225 c!115750) b!1160214))

(assert (= (and b!1160225 (not c!115750)) b!1160217))

(assert (= (and b!1160217 c!115752) b!1160224))

(assert (= (and b!1160217 (not c!115752)) b!1160212))

(assert (= (or b!1160214 b!1160224) bm!56131))

(assert (= (or b!1160214 b!1160224) bm!56128))

(assert (= (or b!1160214 b!1160224) bm!56130))

(assert (= (or b!1160202 bm!56130) bm!56132))

(assert (= (or b!1160202 bm!56131) bm!56133))

(assert (= (or b!1160202 bm!56128) bm!56127))

(assert (= (and b!1160228 c!115747) b!1160229))

(assert (= (and b!1160228 (not c!115747)) b!1160231))

(assert (= (and b!1160228 res!770071) b!1160218))

(assert (= (and b!1160206 res!770067) b!1160220))

(assert (= (and b!1160208 condMapEmpty!45443) mapIsEmpty!45443))

(assert (= (and b!1160208 (not condMapEmpty!45443)) mapNonEmpty!45443))

(get-info :version)

(assert (= (and mapNonEmpty!45443 ((_ is ValueCellFull!13830) mapValue!45443)) b!1160226))

(assert (= (and b!1160208 ((_ is ValueCellFull!13830) mapDefault!45443)) b!1160223))

(assert (= start!98980 b!1160208))

(declare-fun b_lambda!19673 () Bool)

(assert (=> (not b_lambda!19673) (not b!1160227)))

(declare-fun t!36987 () Bool)

(declare-fun tb!9369 () Bool)

(assert (=> (and start!98980 (= defaultEntry!1004 defaultEntry!1004) t!36987) tb!9369))

(declare-fun result!19295 () Bool)

(assert (=> tb!9369 (= result!19295 tp_is_empty!29079)))

(assert (=> b!1160227 t!36987))

(declare-fun b_and!39963 () Bool)

(assert (= b_and!39961 (and (=> t!36987 result!19295) b_and!39963)))

(declare-fun m!1069223 () Bool)

(assert (=> mapNonEmpty!45443 m!1069223))

(declare-fun m!1069225 () Bool)

(assert (=> b!1160218 m!1069225))

(declare-fun m!1069227 () Bool)

(assert (=> b!1160227 m!1069227))

(declare-fun m!1069229 () Bool)

(assert (=> b!1160227 m!1069229))

(declare-fun m!1069231 () Bool)

(assert (=> b!1160227 m!1069231))

(declare-fun m!1069233 () Bool)

(assert (=> b!1160227 m!1069233))

(declare-fun m!1069235 () Bool)

(assert (=> start!98980 m!1069235))

(declare-fun m!1069237 () Bool)

(assert (=> start!98980 m!1069237))

(declare-fun m!1069239 () Bool)

(assert (=> b!1160220 m!1069239))

(declare-fun m!1069241 () Bool)

(assert (=> b!1160222 m!1069241))

(declare-fun m!1069243 () Bool)

(assert (=> b!1160222 m!1069243))

(declare-fun m!1069245 () Bool)

(assert (=> b!1160205 m!1069245))

(declare-fun m!1069247 () Bool)

(assert (=> b!1160205 m!1069247))

(declare-fun m!1069249 () Bool)

(assert (=> bm!56132 m!1069249))

(declare-fun m!1069251 () Bool)

(assert (=> b!1160230 m!1069251))

(assert (=> b!1160229 m!1069225))

(declare-fun m!1069253 () Bool)

(assert (=> b!1160207 m!1069253))

(declare-fun m!1069255 () Bool)

(assert (=> b!1160215 m!1069255))

(declare-fun m!1069257 () Bool)

(assert (=> bm!56133 m!1069257))

(declare-fun m!1069259 () Bool)

(assert (=> b!1160202 m!1069259))

(assert (=> b!1160202 m!1069259))

(declare-fun m!1069261 () Bool)

(assert (=> b!1160202 m!1069261))

(declare-fun m!1069263 () Bool)

(assert (=> b!1160202 m!1069263))

(declare-fun m!1069265 () Bool)

(assert (=> b!1160209 m!1069265))

(declare-fun m!1069267 () Bool)

(assert (=> b!1160219 m!1069267))

(declare-fun m!1069269 () Bool)

(assert (=> b!1160219 m!1069269))

(declare-fun m!1069271 () Bool)

(assert (=> bm!56127 m!1069271))

(declare-fun m!1069273 () Bool)

(assert (=> b!1160228 m!1069273))

(declare-fun m!1069275 () Bool)

(assert (=> b!1160228 m!1069275))

(declare-fun m!1069277 () Bool)

(assert (=> b!1160228 m!1069277))

(declare-fun m!1069279 () Bool)

(assert (=> b!1160228 m!1069279))

(declare-fun m!1069281 () Bool)

(assert (=> b!1160210 m!1069281))

(declare-fun m!1069283 () Bool)

(assert (=> bm!56126 m!1069283))

(assert (=> b!1160206 m!1069283))

(declare-fun m!1069285 () Bool)

(assert (=> b!1160206 m!1069285))

(assert (=> b!1160206 m!1069267))

(declare-fun m!1069287 () Bool)

(assert (=> b!1160206 m!1069287))

(declare-fun m!1069289 () Bool)

(assert (=> b!1160206 m!1069289))

(declare-fun m!1069291 () Bool)

(assert (=> b!1160206 m!1069291))

(declare-fun m!1069293 () Bool)

(assert (=> b!1160206 m!1069293))

(assert (=> b!1160206 m!1069285))

(assert (=> b!1160206 m!1069267))

(declare-fun m!1069295 () Bool)

(assert (=> b!1160206 m!1069295))

(assert (=> b!1160206 m!1069289))

(declare-fun m!1069297 () Bool)

(assert (=> b!1160206 m!1069297))

(assert (=> b!1160206 m!1069267))

(declare-fun m!1069299 () Bool)

(assert (=> b!1160216 m!1069299))

(declare-fun m!1069301 () Bool)

(assert (=> b!1160213 m!1069301))

(assert (=> bm!56129 m!1069239))

(check-sat (not b!1160218) (not b!1160222) (not bm!56127) (not b!1160206) (not b!1160228) (not b!1160207) (not b_lambda!19673) (not b!1160209) (not b_next!24549) (not bm!56126) (not b!1160219) b_and!39963 (not b!1160202) (not bm!56132) (not bm!56129) tp_is_empty!29079 (not bm!56133) (not b!1160220) (not b!1160227) (not b!1160216) (not b!1160210) (not mapNonEmpty!45443) (not b!1160205) (not b!1160229) (not start!98980) (not b!1160215) (not b!1160230))
(check-sat b_and!39963 (not b_next!24549))
