; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!98994 () Bool)

(assert start!98994)

(declare-fun b_free!24563 () Bool)

(declare-fun b_next!24563 () Bool)

(assert (=> start!98994 (= b_free!24563 (not b_next!24563))))

(declare-fun tp!86401 () Bool)

(declare-fun b_and!39989 () Bool)

(assert (=> start!98994 (= tp!86401 b_and!39989)))

(declare-fun b!1160846 () Bool)

(declare-fun e!660158 () Bool)

(declare-fun e!660150 () Bool)

(assert (=> b!1160846 (= e!660158 e!660150)))

(declare-fun res!770390 () Bool)

(assert (=> b!1160846 (=> res!770390 e!660150)))

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1160846 (= res!770390 (not (= from!1455 i!673)))))

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-datatypes ((array!74976 0))(
  ( (array!74977 (arr!36135 (Array (_ BitVec 32) (_ BitVec 64))) (size!36672 (_ BitVec 32))) )
))
(declare-fun lt!522276 () array!74976)

(declare-datatypes ((V!43917 0))(
  ( (V!43918 (val!14603 Int)) )
))
(declare-fun minValue!944 () V!43917)

(declare-datatypes ((ValueCell!13837 0))(
  ( (ValueCellFull!13837 (v!17241 V!43917)) (EmptyCell!13837) )
))
(declare-datatypes ((array!74978 0))(
  ( (array!74979 (arr!36136 (Array (_ BitVec 32) ValueCell!13837)) (size!36673 (_ BitVec 32))) )
))
(declare-fun lt!522269 () array!74978)

(declare-fun zeroValue!944 () V!43917)

(declare-datatypes ((tuple2!18676 0))(
  ( (tuple2!18677 (_1!9348 (_ BitVec 64)) (_2!9348 V!43917)) )
))
(declare-datatypes ((List!25454 0))(
  ( (Nil!25451) (Cons!25450 (h!26659 tuple2!18676) (t!37016 List!25454)) )
))
(declare-datatypes ((ListLongMap!16657 0))(
  ( (ListLongMap!16658 (toList!8344 List!25454)) )
))
(declare-fun lt!522261 () ListLongMap!16657)

(declare-fun getCurrentListMapNoExtraKeys!4780 (array!74976 array!74978 (_ BitVec 32) (_ BitVec 32) V!43917 V!43917 (_ BitVec 32) Int) ListLongMap!16657)

(assert (=> b!1160846 (= lt!522261 (getCurrentListMapNoExtraKeys!4780 lt!522276 lt!522269 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun lt!522264 () V!43917)

(declare-fun _values!996 () array!74978)

(assert (=> b!1160846 (= lt!522269 (array!74979 (store (arr!36136 _values!996) i!673 (ValueCellFull!13837 lt!522264)) (size!36673 _values!996)))))

(declare-fun dynLambda!2782 (Int (_ BitVec 64)) V!43917)

(assert (=> b!1160846 (= lt!522264 (dynLambda!2782 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun _keys!1208 () array!74976)

(declare-fun lt!522274 () ListLongMap!16657)

(assert (=> b!1160846 (= lt!522274 (getCurrentListMapNoExtraKeys!4780 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun e!660154 () Bool)

(declare-fun k!934 () (_ BitVec 64))

(declare-fun b!1160847 () Bool)

(declare-fun arrayContainsKey!0 (array!74976 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1160847 (= e!660154 (arrayContainsKey!0 _keys!1208 k!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun call!56300 () Bool)

(declare-fun c!115875 () Bool)

(declare-fun lt!522273 () ListLongMap!16657)

(declare-fun bm!56294 () Bool)

(declare-fun call!56303 () ListLongMap!16657)

(declare-fun contains!6825 (ListLongMap!16657 (_ BitVec 64)) Bool)

(assert (=> bm!56294 (= call!56300 (contains!6825 (ite c!115875 lt!522273 call!56303) k!934))))

(declare-fun b!1160848 () Bool)

(declare-fun e!660143 () Bool)

(assert (=> b!1160848 (= e!660143 (not e!660158))))

(declare-fun res!770384 () Bool)

(assert (=> b!1160848 (=> res!770384 e!660158)))

(assert (=> b!1160848 (= res!770384 (bvsgt from!1455 i!673))))

(assert (=> b!1160848 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!38179 0))(
  ( (Unit!38180) )
))
(declare-fun lt!522267 () Unit!38179)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!74976 (_ BitVec 64) (_ BitVec 32)) Unit!38179)

(assert (=> b!1160848 (= lt!522267 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun b!1160849 () Bool)

(declare-fun c!115874 () Bool)

(declare-fun lt!522279 () Bool)

(assert (=> b!1160849 (= c!115874 (and (not lt!522279) (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun e!660157 () Unit!38179)

(declare-fun e!660159 () Unit!38179)

(assert (=> b!1160849 (= e!660157 e!660159)))

(declare-fun b!1160850 () Bool)

(declare-fun e!660156 () Bool)

(assert (=> b!1160850 (= e!660156 e!660143)))

(declare-fun res!770385 () Bool)

(assert (=> b!1160850 (=> (not res!770385) (not e!660143))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!74976 (_ BitVec 32)) Bool)

(assert (=> b!1160850 (= res!770385 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!522276 mask!1564))))

(assert (=> b!1160850 (= lt!522276 (array!74977 (store (arr!36135 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!36672 _keys!1208)))))

(declare-fun bm!56296 () Bool)

(declare-fun call!56299 () ListLongMap!16657)

(assert (=> bm!56296 (= call!56299 (getCurrentListMapNoExtraKeys!4780 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1160851 () Bool)

(declare-fun +!3669 (ListLongMap!16657 tuple2!18676) ListLongMap!16657)

(assert (=> b!1160851 (contains!6825 (+!3669 lt!522273 (tuple2!18677 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944)) k!934)))

(declare-fun lt!522263 () Unit!38179)

(declare-fun addStillContains!966 (ListLongMap!16657 (_ BitVec 64) V!43917 (_ BitVec 64)) Unit!38179)

(assert (=> b!1160851 (= lt!522263 (addStillContains!966 lt!522273 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944 k!934))))

(assert (=> b!1160851 call!56300))

(declare-fun call!56297 () ListLongMap!16657)

(assert (=> b!1160851 (= lt!522273 call!56297)))

(declare-fun lt!522266 () Unit!38179)

(declare-fun call!56298 () Unit!38179)

(assert (=> b!1160851 (= lt!522266 call!56298)))

(assert (=> b!1160851 (= e!660157 lt!522263)))

(declare-fun bm!56297 () Bool)

(declare-fun call!56302 () ListLongMap!16657)

(assert (=> bm!56297 (= call!56302 (getCurrentListMapNoExtraKeys!4780 lt!522276 lt!522269 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1160852 () Bool)

(declare-fun lt!522271 () Unit!38179)

(assert (=> b!1160852 (= e!660159 lt!522271)))

(declare-fun call!56304 () Unit!38179)

(assert (=> b!1160852 (= lt!522271 call!56304)))

(declare-fun call!56301 () Bool)

(assert (=> b!1160852 call!56301))

(declare-fun b!1160853 () Bool)

(declare-fun e!660146 () Unit!38179)

(declare-fun Unit!38181 () Unit!38179)

(assert (=> b!1160853 (= e!660146 Unit!38181)))

(declare-fun b!1160854 () Bool)

(declare-fun e!660151 () Bool)

(assert (=> b!1160854 (= e!660150 e!660151)))

(declare-fun res!770380 () Bool)

(assert (=> b!1160854 (=> res!770380 e!660151)))

(assert (=> b!1160854 (= res!770380 (not (= (select (arr!36135 _keys!1208) from!1455) k!934)))))

(declare-fun e!660149 () Bool)

(assert (=> b!1160854 e!660149))

(declare-fun c!115877 () Bool)

(assert (=> b!1160854 (= c!115877 (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673))))

(declare-fun lt!522270 () Unit!38179)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!639 (array!74976 array!74978 (_ BitVec 32) (_ BitVec 32) V!43917 V!43917 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!38179)

(assert (=> b!1160854 (= lt!522270 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!639 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1160855 () Bool)

(declare-fun e!660152 () Bool)

(declare-fun lt!522265 () ListLongMap!16657)

(assert (=> b!1160855 (= e!660152 (= lt!522265 (getCurrentListMapNoExtraKeys!4780 lt!522276 lt!522269 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004)))))

(declare-fun b!1160856 () Bool)

(declare-fun res!770387 () Bool)

(assert (=> b!1160856 (=> (not res!770387) (not e!660156))))

(assert (=> b!1160856 (= res!770387 (= (select (arr!36135 _keys!1208) i!673) k!934))))

(declare-fun b!1160857 () Bool)

(declare-fun res!770379 () Bool)

(assert (=> b!1160857 (=> (not res!770379) (not e!660156))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1160857 (= res!770379 (validKeyInArray!0 k!934))))

(declare-fun b!1160858 () Bool)

(declare-fun res!770381 () Bool)

(assert (=> b!1160858 (=> (not res!770381) (not e!660156))))

(declare-datatypes ((List!25455 0))(
  ( (Nil!25452) (Cons!25451 (h!26660 (_ BitVec 64)) (t!37017 List!25455)) )
))
(declare-fun arrayNoDuplicates!0 (array!74976 (_ BitVec 32) List!25455) Bool)

(assert (=> b!1160858 (= res!770381 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!25452))))

(declare-fun mapIsEmpty!45464 () Bool)

(declare-fun mapRes!45464 () Bool)

(assert (=> mapIsEmpty!45464 mapRes!45464))

(declare-fun b!1160859 () Bool)

(declare-fun e!660147 () Bool)

(declare-fun tp_is_empty!29093 () Bool)

(assert (=> b!1160859 (= e!660147 tp_is_empty!29093)))

(declare-fun b!1160860 () Bool)

(declare-fun res!770392 () Bool)

(assert (=> b!1160860 (=> (not res!770392) (not e!660156))))

(assert (=> b!1160860 (= res!770392 (and (= (size!36673 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!36672 _keys!1208) (size!36673 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1160861 () Bool)

(declare-fun res!770382 () Bool)

(assert (=> b!1160861 (=> (not res!770382) (not e!660156))))

(assert (=> b!1160861 (= res!770382 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1160862 () Bool)

(assert (=> b!1160862 (= e!660149 (= call!56302 call!56299))))

(declare-fun b!1160863 () Bool)

(declare-fun -!1416 (ListLongMap!16657 (_ BitVec 64)) ListLongMap!16657)

(assert (=> b!1160863 (= e!660149 (= call!56302 (-!1416 call!56299 k!934)))))

(declare-fun e!660153 () Bool)

(declare-fun b!1160864 () Bool)

(assert (=> b!1160864 (= e!660153 (arrayContainsKey!0 _keys!1208 k!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun lt!522262 () ListLongMap!16657)

(declare-fun bm!56295 () Bool)

(assert (=> bm!56295 (= call!56298 (addStillContains!966 lt!522262 (ite (or c!115875 c!115874) #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000) (ite (or c!115875 c!115874) zeroValue!944 minValue!944) k!934))))

(declare-fun res!770383 () Bool)

(assert (=> start!98994 (=> (not res!770383) (not e!660156))))

(assert (=> start!98994 (= res!770383 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!36672 _keys!1208))))))

(assert (=> start!98994 e!660156))

(assert (=> start!98994 tp_is_empty!29093))

(declare-fun array_inv!27522 (array!74976) Bool)

(assert (=> start!98994 (array_inv!27522 _keys!1208)))

(assert (=> start!98994 true))

(assert (=> start!98994 tp!86401))

(declare-fun e!660145 () Bool)

(declare-fun array_inv!27523 (array!74978) Bool)

(assert (=> start!98994 (and (array_inv!27523 _values!996) e!660145)))

(declare-fun b!1160865 () Bool)

(assert (=> b!1160865 (= e!660154 (ite (= k!934 #b0000000000000000000000000000000000000000000000000000000000000000) (not lt!522279) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun bm!56298 () Bool)

(assert (=> bm!56298 (= call!56303 call!56297)))

(declare-fun b!1160866 () Bool)

(assert (=> b!1160866 (= e!660151 true)))

(assert (=> b!1160866 e!660152))

(declare-fun res!770393 () Bool)

(assert (=> b!1160866 (=> (not res!770393) (not e!660152))))

(assert (=> b!1160866 (= res!770393 (= lt!522265 lt!522262))))

(assert (=> b!1160866 (= lt!522265 (-!1416 lt!522274 k!934))))

(declare-fun lt!522259 () V!43917)

(assert (=> b!1160866 (= (-!1416 (+!3669 lt!522262 (tuple2!18677 (select (arr!36135 _keys!1208) from!1455) lt!522259)) (select (arr!36135 _keys!1208) from!1455)) lt!522262)))

(declare-fun lt!522278 () Unit!38179)

(declare-fun addThenRemoveForNewKeyIsSame!253 (ListLongMap!16657 (_ BitVec 64) V!43917) Unit!38179)

(assert (=> b!1160866 (= lt!522278 (addThenRemoveForNewKeyIsSame!253 lt!522262 (select (arr!36135 _keys!1208) from!1455) lt!522259))))

(declare-fun get!18461 (ValueCell!13837 V!43917) V!43917)

(assert (=> b!1160866 (= lt!522259 (get!18461 (select (arr!36136 _values!996) from!1455) lt!522264))))

(declare-fun lt!522260 () Unit!38179)

(declare-fun e!660148 () Unit!38179)

(assert (=> b!1160866 (= lt!522260 e!660148)))

(declare-fun c!115876 () Bool)

(assert (=> b!1160866 (= c!115876 (contains!6825 lt!522262 k!934))))

(assert (=> b!1160866 (= lt!522262 (getCurrentListMapNoExtraKeys!4780 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1160867 () Bool)

(declare-fun res!770388 () Bool)

(assert (=> b!1160867 (=> (not res!770388) (not e!660143))))

(assert (=> b!1160867 (= res!770388 (arrayNoDuplicates!0 lt!522276 #b00000000000000000000000000000000 Nil!25452))))

(declare-fun b!1160868 () Bool)

(declare-fun res!770391 () Bool)

(assert (=> b!1160868 (=> (not res!770391) (not e!660156))))

(assert (=> b!1160868 (= res!770391 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!36672 _keys!1208))))))

(declare-fun b!1160869 () Bool)

(assert (=> b!1160869 call!56301))

(declare-fun lt!522272 () Unit!38179)

(assert (=> b!1160869 (= lt!522272 call!56304)))

(assert (=> b!1160869 (= e!660146 lt!522272)))

(declare-fun b!1160870 () Bool)

(assert (=> b!1160870 (= e!660159 e!660146)))

(declare-fun c!115878 () Bool)

(assert (=> b!1160870 (= c!115878 (and (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!522279))))

(declare-fun b!1160871 () Bool)

(declare-fun e!660155 () Bool)

(assert (=> b!1160871 (= e!660155 tp_is_empty!29093)))

(declare-fun mapNonEmpty!45464 () Bool)

(declare-fun tp!86400 () Bool)

(assert (=> mapNonEmpty!45464 (= mapRes!45464 (and tp!86400 e!660155))))

(declare-fun mapValue!45464 () ValueCell!13837)

(declare-fun mapKey!45464 () (_ BitVec 32))

(declare-fun mapRest!45464 () (Array (_ BitVec 32) ValueCell!13837))

(assert (=> mapNonEmpty!45464 (= (arr!36136 _values!996) (store mapRest!45464 mapKey!45464 mapValue!45464))))

(declare-fun b!1160872 () Bool)

(declare-fun res!770386 () Bool)

(assert (=> b!1160872 (=> (not res!770386) (not e!660156))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1160872 (= res!770386 (validMask!0 mask!1564))))

(declare-fun bm!56299 () Bool)

(assert (=> bm!56299 (= call!56297 (+!3669 lt!522262 (ite (or c!115875 c!115874) (tuple2!18677 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!18677 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944))))))

(declare-fun bm!56300 () Bool)

(assert (=> bm!56300 (= call!56304 call!56298)))

(declare-fun bm!56301 () Bool)

(assert (=> bm!56301 (= call!56301 call!56300)))

(declare-fun b!1160873 () Bool)

(declare-fun Unit!38182 () Unit!38179)

(assert (=> b!1160873 (= e!660148 Unit!38182)))

(assert (=> b!1160873 (= lt!522279 (= (bvand extraKeys!923 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(assert (=> b!1160873 (= c!115875 (and (not lt!522279) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun lt!522258 () Unit!38179)

(assert (=> b!1160873 (= lt!522258 e!660157)))

(declare-fun lt!522268 () Unit!38179)

(declare-fun lemmaListMapContainsThenArrayContainsFrom!540 (array!74976 array!74978 (_ BitVec 32) (_ BitVec 32) V!43917 V!43917 (_ BitVec 64) (_ BitVec 32) Int) Unit!38179)

(assert (=> b!1160873 (= lt!522268 (lemmaListMapContainsThenArrayContainsFrom!540 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun c!115873 () Bool)

(assert (=> b!1160873 (= c!115873 (and (not (= k!934 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!934 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun res!770389 () Bool)

(assert (=> b!1160873 (= res!770389 e!660154)))

(assert (=> b!1160873 (=> (not res!770389) (not e!660153))))

(assert (=> b!1160873 e!660153))

(declare-fun lt!522277 () Unit!38179)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!74976 (_ BitVec 32) (_ BitVec 32)) Unit!38179)

(assert (=> b!1160873 (= lt!522277 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1208 #b00000000000000000000000000000000 from!1455))))

(assert (=> b!1160873 (arrayNoDuplicates!0 _keys!1208 from!1455 Nil!25452)))

(declare-fun lt!522275 () Unit!38179)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!74976 (_ BitVec 64) (_ BitVec 32) List!25455) Unit!38179)

(assert (=> b!1160873 (= lt!522275 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!1208 k!934 from!1455 Nil!25452))))

(assert (=> b!1160873 false))

(declare-fun b!1160874 () Bool)

(declare-fun Unit!38183 () Unit!38179)

(assert (=> b!1160874 (= e!660148 Unit!38183)))

(declare-fun b!1160875 () Bool)

(assert (=> b!1160875 (= e!660145 (and e!660147 mapRes!45464))))

(declare-fun condMapEmpty!45464 () Bool)

(declare-fun mapDefault!45464 () ValueCell!13837)

