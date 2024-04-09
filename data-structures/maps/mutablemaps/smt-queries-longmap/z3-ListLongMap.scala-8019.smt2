; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!98992 () Bool)

(assert start!98992)

(declare-fun b_free!24561 () Bool)

(declare-fun b_next!24561 () Bool)

(assert (=> start!98992 (= b_free!24561 (not b_next!24561))))

(declare-fun tp!86395 () Bool)

(declare-fun b_and!39985 () Bool)

(assert (=> start!98992 (= tp!86395 b_and!39985)))

(declare-fun b!1160754 () Bool)

(declare-fun e!660094 () Bool)

(declare-fun tp_is_empty!29091 () Bool)

(assert (=> b!1160754 (= e!660094 tp_is_empty!29091)))

(declare-fun mapIsEmpty!45461 () Bool)

(declare-fun mapRes!45461 () Bool)

(assert (=> mapIsEmpty!45461 mapRes!45461))

(declare-fun k0!934 () (_ BitVec 64))

(declare-datatypes ((V!43915 0))(
  ( (V!43916 (val!14602 Int)) )
))
(declare-datatypes ((tuple2!18674 0))(
  ( (tuple2!18675 (_1!9347 (_ BitVec 64)) (_2!9347 V!43915)) )
))
(declare-datatypes ((List!25452 0))(
  ( (Nil!25449) (Cons!25448 (h!26657 tuple2!18674) (t!37012 List!25452)) )
))
(declare-datatypes ((ListLongMap!16655 0))(
  ( (ListLongMap!16656 (toList!8343 List!25452)) )
))
(declare-fun call!56278 () ListLongMap!16655)

(declare-fun b!1160755 () Bool)

(declare-fun e!660102 () Bool)

(declare-fun call!56280 () ListLongMap!16655)

(declare-fun -!1415 (ListLongMap!16655 (_ BitVec 64)) ListLongMap!16655)

(assert (=> b!1160755 (= e!660102 (= call!56280 (-!1415 call!56278 k0!934)))))

(declare-fun b!1160756 () Bool)

(declare-fun res!770343 () Bool)

(declare-fun e!660106 () Bool)

(assert (=> b!1160756 (=> (not res!770343) (not e!660106))))

(declare-datatypes ((array!74972 0))(
  ( (array!74973 (arr!36133 (Array (_ BitVec 32) (_ BitVec 64))) (size!36670 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!74972)

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1160756 (= res!770343 (= (select (arr!36133 _keys!1208) i!673) k0!934))))

(declare-fun b!1160757 () Bool)

(declare-fun c!115855 () Bool)

(declare-fun lt!522207 () Bool)

(declare-fun extraKeys!923 () (_ BitVec 32))

(assert (=> b!1160757 (= c!115855 (and (not lt!522207) (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-datatypes ((Unit!38174 0))(
  ( (Unit!38175) )
))
(declare-fun e!660107 () Unit!38174)

(declare-fun e!660095 () Unit!38174)

(assert (=> b!1160757 (= e!660107 e!660095)))

(declare-fun b!1160758 () Bool)

(declare-fun call!56276 () ListLongMap!16655)

(declare-fun contains!6824 (ListLongMap!16655 (_ BitVec 64)) Bool)

(assert (=> b!1160758 (contains!6824 call!56276 k0!934)))

(declare-fun lt!522205 () Unit!38174)

(declare-fun lt!522206 () ListLongMap!16655)

(declare-fun minValue!944 () V!43915)

(declare-fun addStillContains!965 (ListLongMap!16655 (_ BitVec 64) V!43915 (_ BitVec 64)) Unit!38174)

(assert (=> b!1160758 (= lt!522205 (addStillContains!965 lt!522206 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944 k0!934))))

(declare-fun call!56277 () Bool)

(assert (=> b!1160758 call!56277))

(declare-fun lt!522193 () ListLongMap!16655)

(declare-fun zeroValue!944 () V!43915)

(declare-fun +!3668 (ListLongMap!16655 tuple2!18674) ListLongMap!16655)

(assert (=> b!1160758 (= lt!522206 (+!3668 lt!522193 (tuple2!18675 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944)))))

(declare-fun lt!522208 () Unit!38174)

(declare-fun call!56273 () Unit!38174)

(assert (=> b!1160758 (= lt!522208 call!56273)))

(assert (=> b!1160758 (= e!660107 lt!522205)))

(declare-fun b!1160759 () Bool)

(declare-fun res!770342 () Bool)

(declare-fun e!660098 () Bool)

(assert (=> b!1160759 (=> (not res!770342) (not e!660098))))

(declare-fun lt!522197 () array!74972)

(declare-datatypes ((List!25453 0))(
  ( (Nil!25450) (Cons!25449 (h!26658 (_ BitVec 64)) (t!37013 List!25453)) )
))
(declare-fun arrayNoDuplicates!0 (array!74972 (_ BitVec 32) List!25453) Bool)

(assert (=> b!1160759 (= res!770342 (arrayNoDuplicates!0 lt!522197 #b00000000000000000000000000000000 Nil!25450))))

(declare-fun b!1160760 () Bool)

(declare-fun call!56279 () Bool)

(assert (=> b!1160760 call!56279))

(declare-fun lt!522204 () Unit!38174)

(declare-fun call!56275 () Unit!38174)

(assert (=> b!1160760 (= lt!522204 call!56275)))

(declare-fun e!660096 () Unit!38174)

(assert (=> b!1160760 (= e!660096 lt!522204)))

(declare-fun b!1160761 () Bool)

(assert (=> b!1160761 (= e!660106 e!660098)))

(declare-fun res!770347 () Bool)

(assert (=> b!1160761 (=> (not res!770347) (not e!660098))))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!74972 (_ BitVec 32)) Bool)

(assert (=> b!1160761 (= res!770347 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!522197 mask!1564))))

(assert (=> b!1160761 (= lt!522197 (array!74973 (store (arr!36133 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!36670 _keys!1208)))))

(declare-fun res!770346 () Bool)

(assert (=> start!98992 (=> (not res!770346) (not e!660106))))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> start!98992 (= res!770346 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!36670 _keys!1208))))))

(assert (=> start!98992 e!660106))

(assert (=> start!98992 tp_is_empty!29091))

(declare-fun array_inv!27520 (array!74972) Bool)

(assert (=> start!98992 (array_inv!27520 _keys!1208)))

(assert (=> start!98992 true))

(assert (=> start!98992 tp!86395))

(declare-datatypes ((ValueCell!13836 0))(
  ( (ValueCellFull!13836 (v!17240 V!43915)) (EmptyCell!13836) )
))
(declare-datatypes ((array!74974 0))(
  ( (array!74975 (arr!36134 (Array (_ BitVec 32) ValueCell!13836)) (size!36671 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!74974)

(declare-fun e!660092 () Bool)

(declare-fun array_inv!27521 (array!74974) Bool)

(assert (=> start!98992 (and (array_inv!27521 _values!996) e!660092)))

(declare-fun bm!56270 () Bool)

(declare-fun c!115857 () Bool)

(assert (=> bm!56270 (= call!56276 (+!3668 (ite c!115857 lt!522206 lt!522193) (ite c!115857 (tuple2!18675 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944) (ite c!115855 (tuple2!18675 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!18675 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944)))))))

(declare-fun b!1160762 () Bool)

(declare-fun e!660105 () Bool)

(assert (=> b!1160762 (= e!660105 (ite (= k0!934 #b0000000000000000000000000000000000000000000000000000000000000000) (not lt!522207) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!1160763 () Bool)

(declare-fun lt!522198 () Unit!38174)

(assert (=> b!1160763 (= e!660095 lt!522198)))

(assert (=> b!1160763 (= lt!522198 call!56275)))

(assert (=> b!1160763 call!56279))

(declare-fun b!1160764 () Bool)

(declare-fun res!770345 () Bool)

(assert (=> b!1160764 (=> (not res!770345) (not e!660106))))

(assert (=> b!1160764 (= res!770345 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!36670 _keys!1208))))))

(declare-fun b!1160765 () Bool)

(assert (=> b!1160765 (= e!660095 e!660096)))

(declare-fun c!115856 () Bool)

(assert (=> b!1160765 (= c!115856 (and (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!522207))))

(declare-fun b!1160766 () Bool)

(declare-fun e!660099 () Unit!38174)

(declare-fun Unit!38176 () Unit!38174)

(assert (=> b!1160766 (= e!660099 Unit!38176)))

(assert (=> b!1160766 (= lt!522207 (= (bvand extraKeys!923 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(assert (=> b!1160766 (= c!115857 (and (not lt!522207) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun lt!522192 () Unit!38174)

(assert (=> b!1160766 (= lt!522192 e!660107)))

(declare-fun lt!522213 () Unit!38174)

(declare-fun defaultEntry!1004 () Int)

(declare-fun lemmaListMapContainsThenArrayContainsFrom!539 (array!74972 array!74974 (_ BitVec 32) (_ BitVec 32) V!43915 V!43915 (_ BitVec 64) (_ BitVec 32) Int) Unit!38174)

(assert (=> b!1160766 (= lt!522213 (lemmaListMapContainsThenArrayContainsFrom!539 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun c!115860 () Bool)

(assert (=> b!1160766 (= c!115860 (and (not (= k0!934 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!934 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun res!770338 () Bool)

(assert (=> b!1160766 (= res!770338 e!660105)))

(declare-fun e!660108 () Bool)

(assert (=> b!1160766 (=> (not res!770338) (not e!660108))))

(assert (=> b!1160766 e!660108))

(declare-fun lt!522201 () Unit!38174)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!74972 (_ BitVec 32) (_ BitVec 32)) Unit!38174)

(assert (=> b!1160766 (= lt!522201 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1208 #b00000000000000000000000000000000 from!1455))))

(assert (=> b!1160766 (arrayNoDuplicates!0 _keys!1208 from!1455 Nil!25450)))

(declare-fun lt!522209 () Unit!38174)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!74972 (_ BitVec 64) (_ BitVec 32) List!25453) Unit!38174)

(assert (=> b!1160766 (= lt!522209 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!1208 k0!934 from!1455 Nil!25450))))

(assert (=> b!1160766 false))

(declare-fun mapNonEmpty!45461 () Bool)

(declare-fun tp!86394 () Bool)

(assert (=> mapNonEmpty!45461 (= mapRes!45461 (and tp!86394 e!660094))))

(declare-fun mapValue!45461 () ValueCell!13836)

(declare-fun mapRest!45461 () (Array (_ BitVec 32) ValueCell!13836))

(declare-fun mapKey!45461 () (_ BitVec 32))

(assert (=> mapNonEmpty!45461 (= (arr!36134 _values!996) (store mapRest!45461 mapKey!45461 mapValue!45461))))

(declare-fun b!1160767 () Bool)

(declare-fun e!660101 () Bool)

(assert (=> b!1160767 (= e!660092 (and e!660101 mapRes!45461))))

(declare-fun condMapEmpty!45461 () Bool)

(declare-fun mapDefault!45461 () ValueCell!13836)

(assert (=> b!1160767 (= condMapEmpty!45461 (= (arr!36134 _values!996) ((as const (Array (_ BitVec 32) ValueCell!13836)) mapDefault!45461)))))

(declare-fun b!1160768 () Bool)

(declare-fun Unit!38177 () Unit!38174)

(assert (=> b!1160768 (= e!660099 Unit!38177)))

(declare-fun b!1160769 () Bool)

(declare-fun arrayContainsKey!0 (array!74972 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1160769 (= e!660108 (arrayContainsKey!0 _keys!1208 k0!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun b!1160770 () Bool)

(declare-fun res!770334 () Bool)

(assert (=> b!1160770 (=> (not res!770334) (not e!660106))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1160770 (= res!770334 (validKeyInArray!0 k0!934))))

(declare-fun b!1160771 () Bool)

(assert (=> b!1160771 (= e!660105 (arrayContainsKey!0 _keys!1208 k0!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun b!1160772 () Bool)

(assert (=> b!1160772 (= e!660101 tp_is_empty!29091)))

(declare-fun bm!56271 () Bool)

(declare-fun getCurrentListMapNoExtraKeys!4779 (array!74972 array!74974 (_ BitVec 32) (_ BitVec 32) V!43915 V!43915 (_ BitVec 32) Int) ListLongMap!16655)

(assert (=> bm!56271 (= call!56278 (getCurrentListMapNoExtraKeys!4779 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1160773 () Bool)

(declare-fun res!770341 () Bool)

(assert (=> b!1160773 (=> (not res!770341) (not e!660106))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1160773 (= res!770341 (validMask!0 mask!1564))))

(declare-fun b!1160774 () Bool)

(declare-fun Unit!38178 () Unit!38174)

(assert (=> b!1160774 (= e!660096 Unit!38178)))

(declare-fun b!1160775 () Bool)

(assert (=> b!1160775 (= e!660102 (= call!56280 call!56278))))

(declare-fun b!1160776 () Bool)

(declare-fun e!660104 () Bool)

(declare-fun e!660103 () Bool)

(assert (=> b!1160776 (= e!660104 e!660103)))

(declare-fun res!770336 () Bool)

(assert (=> b!1160776 (=> res!770336 e!660103)))

(assert (=> b!1160776 (= res!770336 (not (= from!1455 i!673)))))

(declare-fun lt!522200 () array!74974)

(declare-fun lt!522194 () ListLongMap!16655)

(assert (=> b!1160776 (= lt!522194 (getCurrentListMapNoExtraKeys!4779 lt!522197 lt!522200 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun lt!522195 () V!43915)

(assert (=> b!1160776 (= lt!522200 (array!74975 (store (arr!36134 _values!996) i!673 (ValueCellFull!13836 lt!522195)) (size!36671 _values!996)))))

(declare-fun dynLambda!2781 (Int (_ BitVec 64)) V!43915)

(assert (=> b!1160776 (= lt!522195 (dynLambda!2781 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!522196 () ListLongMap!16655)

(assert (=> b!1160776 (= lt!522196 (getCurrentListMapNoExtraKeys!4779 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1160777 () Bool)

(declare-fun lt!522203 () ListLongMap!16655)

(declare-fun e!660097 () Bool)

(assert (=> b!1160777 (= e!660097 (= lt!522203 (getCurrentListMapNoExtraKeys!4779 lt!522197 lt!522200 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004)))))

(declare-fun b!1160778 () Bool)

(declare-fun e!660093 () Bool)

(assert (=> b!1160778 (= e!660103 e!660093)))

(declare-fun res!770339 () Bool)

(assert (=> b!1160778 (=> res!770339 e!660093)))

(assert (=> b!1160778 (= res!770339 (not (= (select (arr!36133 _keys!1208) from!1455) k0!934)))))

(assert (=> b!1160778 e!660102))

(declare-fun c!115859 () Bool)

(assert (=> b!1160778 (= c!115859 (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673))))

(declare-fun lt!522199 () Unit!38174)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!638 (array!74972 array!74974 (_ BitVec 32) (_ BitVec 32) V!43915 V!43915 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!38174)

(assert (=> b!1160778 (= lt!522199 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!638 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun bm!56272 () Bool)

(assert (=> bm!56272 (= call!56279 call!56277)))

(declare-fun b!1160779 () Bool)

(assert (=> b!1160779 (= e!660098 (not e!660104))))

(declare-fun res!770337 () Bool)

(assert (=> b!1160779 (=> res!770337 e!660104)))

(assert (=> b!1160779 (= res!770337 (bvsgt from!1455 i!673))))

(assert (=> b!1160779 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-fun lt!522211 () Unit!38174)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!74972 (_ BitVec 64) (_ BitVec 32)) Unit!38174)

(assert (=> b!1160779 (= lt!522211 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1160780 () Bool)

(declare-fun res!770344 () Bool)

(assert (=> b!1160780 (=> (not res!770344) (not e!660106))))

(assert (=> b!1160780 (= res!770344 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun bm!56273 () Bool)

(assert (=> bm!56273 (= call!56273 (addStillContains!965 lt!522193 (ite (or c!115857 c!115855) #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000) (ite (or c!115857 c!115855) zeroValue!944 minValue!944) k0!934))))

(declare-fun b!1160781 () Bool)

(declare-fun res!770340 () Bool)

(assert (=> b!1160781 (=> (not res!770340) (not e!660106))))

(assert (=> b!1160781 (= res!770340 (and (= (size!36671 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!36670 _keys!1208) (size!36671 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun bm!56274 () Bool)

(declare-fun call!56274 () ListLongMap!16655)

(assert (=> bm!56274 (= call!56274 call!56276)))

(declare-fun bm!56275 () Bool)

(assert (=> bm!56275 (= call!56280 (getCurrentListMapNoExtraKeys!4779 lt!522197 lt!522200 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun bm!56276 () Bool)

(assert (=> bm!56276 (= call!56275 call!56273)))

(declare-fun b!1160782 () Bool)

(assert (=> b!1160782 (= e!660093 true)))

(assert (=> b!1160782 e!660097))

(declare-fun res!770335 () Bool)

(assert (=> b!1160782 (=> (not res!770335) (not e!660097))))

(assert (=> b!1160782 (= res!770335 (= lt!522203 lt!522193))))

(assert (=> b!1160782 (= lt!522203 (-!1415 lt!522196 k0!934))))

(declare-fun lt!522202 () V!43915)

(assert (=> b!1160782 (= (-!1415 (+!3668 lt!522193 (tuple2!18675 (select (arr!36133 _keys!1208) from!1455) lt!522202)) (select (arr!36133 _keys!1208) from!1455)) lt!522193)))

(declare-fun lt!522212 () Unit!38174)

(declare-fun addThenRemoveForNewKeyIsSame!252 (ListLongMap!16655 (_ BitVec 64) V!43915) Unit!38174)

(assert (=> b!1160782 (= lt!522212 (addThenRemoveForNewKeyIsSame!252 lt!522193 (select (arr!36133 _keys!1208) from!1455) lt!522202))))

(declare-fun get!18460 (ValueCell!13836 V!43915) V!43915)

(assert (=> b!1160782 (= lt!522202 (get!18460 (select (arr!36134 _values!996) from!1455) lt!522195))))

(declare-fun lt!522210 () Unit!38174)

(assert (=> b!1160782 (= lt!522210 e!660099)))

(declare-fun c!115858 () Bool)

(assert (=> b!1160782 (= c!115858 (contains!6824 lt!522193 k0!934))))

(assert (=> b!1160782 (= lt!522193 (getCurrentListMapNoExtraKeys!4779 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun bm!56277 () Bool)

(assert (=> bm!56277 (= call!56277 (contains!6824 (ite c!115857 lt!522206 call!56274) k0!934))))

(declare-fun b!1160783 () Bool)

(declare-fun res!770348 () Bool)

(assert (=> b!1160783 (=> (not res!770348) (not e!660106))))

(assert (=> b!1160783 (= res!770348 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!25450))))

(assert (= (and start!98992 res!770346) b!1160773))

(assert (= (and b!1160773 res!770341) b!1160781))

(assert (= (and b!1160781 res!770340) b!1160780))

(assert (= (and b!1160780 res!770344) b!1160783))

(assert (= (and b!1160783 res!770348) b!1160764))

(assert (= (and b!1160764 res!770345) b!1160770))

(assert (= (and b!1160770 res!770334) b!1160756))

(assert (= (and b!1160756 res!770343) b!1160761))

(assert (= (and b!1160761 res!770347) b!1160759))

(assert (= (and b!1160759 res!770342) b!1160779))

(assert (= (and b!1160779 (not res!770337)) b!1160776))

(assert (= (and b!1160776 (not res!770336)) b!1160778))

(assert (= (and b!1160778 c!115859) b!1160755))

(assert (= (and b!1160778 (not c!115859)) b!1160775))

(assert (= (or b!1160755 b!1160775) bm!56275))

(assert (= (or b!1160755 b!1160775) bm!56271))

(assert (= (and b!1160778 (not res!770339)) b!1160782))

(assert (= (and b!1160782 c!115858) b!1160766))

(assert (= (and b!1160782 (not c!115858)) b!1160768))

(assert (= (and b!1160766 c!115857) b!1160758))

(assert (= (and b!1160766 (not c!115857)) b!1160757))

(assert (= (and b!1160757 c!115855) b!1160763))

(assert (= (and b!1160757 (not c!115855)) b!1160765))

(assert (= (and b!1160765 c!115856) b!1160760))

(assert (= (and b!1160765 (not c!115856)) b!1160774))

(assert (= (or b!1160763 b!1160760) bm!56276))

(assert (= (or b!1160763 b!1160760) bm!56274))

(assert (= (or b!1160763 b!1160760) bm!56272))

(assert (= (or b!1160758 bm!56272) bm!56277))

(assert (= (or b!1160758 bm!56276) bm!56273))

(assert (= (or b!1160758 bm!56274) bm!56270))

(assert (= (and b!1160766 c!115860) b!1160771))

(assert (= (and b!1160766 (not c!115860)) b!1160762))

(assert (= (and b!1160766 res!770338) b!1160769))

(assert (= (and b!1160782 res!770335) b!1160777))

(assert (= (and b!1160767 condMapEmpty!45461) mapIsEmpty!45461))

(assert (= (and b!1160767 (not condMapEmpty!45461)) mapNonEmpty!45461))

(get-info :version)

(assert (= (and mapNonEmpty!45461 ((_ is ValueCellFull!13836) mapValue!45461)) b!1160754))

(assert (= (and b!1160767 ((_ is ValueCellFull!13836) mapDefault!45461)) b!1160772))

(assert (= start!98992 b!1160767))

(declare-fun b_lambda!19685 () Bool)

(assert (=> (not b_lambda!19685) (not b!1160776)))

(declare-fun t!37011 () Bool)

(declare-fun tb!9381 () Bool)

(assert (=> (and start!98992 (= defaultEntry!1004 defaultEntry!1004) t!37011) tb!9381))

(declare-fun result!19319 () Bool)

(assert (=> tb!9381 (= result!19319 tp_is_empty!29091)))

(assert (=> b!1160776 t!37011))

(declare-fun b_and!39987 () Bool)

(assert (= b_and!39985 (and (=> t!37011 result!19319) b_and!39987)))

(declare-fun m!1069703 () Bool)

(assert (=> b!1160756 m!1069703))

(declare-fun m!1069705 () Bool)

(assert (=> bm!56277 m!1069705))

(declare-fun m!1069707 () Bool)

(assert (=> start!98992 m!1069707))

(declare-fun m!1069709 () Bool)

(assert (=> start!98992 m!1069709))

(declare-fun m!1069711 () Bool)

(assert (=> bm!56271 m!1069711))

(declare-fun m!1069713 () Bool)

(assert (=> b!1160778 m!1069713))

(declare-fun m!1069715 () Bool)

(assert (=> b!1160778 m!1069715))

(declare-fun m!1069717 () Bool)

(assert (=> bm!56270 m!1069717))

(declare-fun m!1069719 () Bool)

(assert (=> mapNonEmpty!45461 m!1069719))

(declare-fun m!1069721 () Bool)

(assert (=> b!1160761 m!1069721))

(declare-fun m!1069723 () Bool)

(assert (=> b!1160761 m!1069723))

(declare-fun m!1069725 () Bool)

(assert (=> b!1160771 m!1069725))

(declare-fun m!1069727 () Bool)

(assert (=> b!1160755 m!1069727))

(declare-fun m!1069729 () Bool)

(assert (=> bm!56273 m!1069729))

(assert (=> b!1160769 m!1069725))

(declare-fun m!1069731 () Bool)

(assert (=> b!1160758 m!1069731))

(declare-fun m!1069733 () Bool)

(assert (=> b!1160758 m!1069733))

(declare-fun m!1069735 () Bool)

(assert (=> b!1160758 m!1069735))

(assert (=> b!1160782 m!1069711))

(declare-fun m!1069737 () Bool)

(assert (=> b!1160782 m!1069737))

(declare-fun m!1069739 () Bool)

(assert (=> b!1160782 m!1069739))

(assert (=> b!1160782 m!1069739))

(declare-fun m!1069741 () Bool)

(assert (=> b!1160782 m!1069741))

(assert (=> b!1160782 m!1069737))

(assert (=> b!1160782 m!1069713))

(declare-fun m!1069743 () Bool)

(assert (=> b!1160782 m!1069743))

(declare-fun m!1069745 () Bool)

(assert (=> b!1160782 m!1069745))

(assert (=> b!1160782 m!1069713))

(assert (=> b!1160782 m!1069713))

(declare-fun m!1069747 () Bool)

(assert (=> b!1160782 m!1069747))

(declare-fun m!1069749 () Bool)

(assert (=> b!1160782 m!1069749))

(declare-fun m!1069751 () Bool)

(assert (=> b!1160773 m!1069751))

(declare-fun m!1069753 () Bool)

(assert (=> b!1160770 m!1069753))

(declare-fun m!1069755 () Bool)

(assert (=> b!1160759 m!1069755))

(declare-fun m!1069757 () Bool)

(assert (=> b!1160777 m!1069757))

(declare-fun m!1069759 () Bool)

(assert (=> b!1160780 m!1069759))

(assert (=> bm!56275 m!1069757))

(declare-fun m!1069761 () Bool)

(assert (=> b!1160779 m!1069761))

(declare-fun m!1069763 () Bool)

(assert (=> b!1160779 m!1069763))

(declare-fun m!1069765 () Bool)

(assert (=> b!1160776 m!1069765))

(declare-fun m!1069767 () Bool)

(assert (=> b!1160776 m!1069767))

(declare-fun m!1069769 () Bool)

(assert (=> b!1160776 m!1069769))

(declare-fun m!1069771 () Bool)

(assert (=> b!1160776 m!1069771))

(declare-fun m!1069773 () Bool)

(assert (=> b!1160783 m!1069773))

(declare-fun m!1069775 () Bool)

(assert (=> b!1160766 m!1069775))

(declare-fun m!1069777 () Bool)

(assert (=> b!1160766 m!1069777))

(declare-fun m!1069779 () Bool)

(assert (=> b!1160766 m!1069779))

(declare-fun m!1069781 () Bool)

(assert (=> b!1160766 m!1069781))

(check-sat (not b!1160769) (not b!1160761) (not bm!56273) (not bm!56270) tp_is_empty!29091 (not b!1160780) (not b_next!24561) (not b!1160778) (not b_lambda!19685) (not b!1160770) (not b!1160779) (not mapNonEmpty!45461) (not bm!56271) (not b!1160758) (not b!1160773) b_and!39987 (not b!1160766) (not b!1160759) (not b!1160782) (not b!1160776) (not bm!56277) (not bm!56275) (not b!1160755) (not b!1160783) (not b!1160777) (not b!1160771) (not start!98992))
(check-sat b_and!39987 (not b_next!24561))
