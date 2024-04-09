; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!98560 () Bool)

(assert start!98560)

(declare-fun b_free!24129 () Bool)

(declare-fun b_next!24129 () Bool)

(assert (=> start!98560 (= b_free!24129 (not b_next!24129))))

(declare-fun tp!85099 () Bool)

(declare-fun b_and!39121 () Bool)

(assert (=> start!98560 (= tp!85099 b_and!39121)))

(declare-fun bm!51086 () Bool)

(declare-fun k0!934 () (_ BitVec 64))

(declare-datatypes ((V!43339 0))(
  ( (V!43340 (val!14386 Int)) )
))
(declare-datatypes ((tuple2!18278 0))(
  ( (tuple2!18279 (_1!9149 (_ BitVec 64)) (_2!9149 V!43339)) )
))
(declare-datatypes ((List!25080 0))(
  ( (Nil!25077) (Cons!25076 (h!26285 tuple2!18278) (t!36208 List!25080)) )
))
(declare-datatypes ((ListLongMap!16259 0))(
  ( (ListLongMap!16260 (toList!8145 List!25080)) )
))
(declare-fun lt!508207 () ListLongMap!16259)

(declare-fun c!111967 () Bool)

(declare-fun call!51091 () Bool)

(declare-fun call!51093 () ListLongMap!16259)

(declare-fun contains!6651 (ListLongMap!16259 (_ BitVec 64)) Bool)

(assert (=> bm!51086 (= call!51091 (contains!6651 (ite c!111967 lt!508207 call!51093) k0!934))))

(declare-fun zeroValue!944 () V!43339)

(declare-datatypes ((ValueCell!13620 0))(
  ( (ValueCellFull!13620 (v!17024 V!43339)) (EmptyCell!13620) )
))
(declare-datatypes ((array!74128 0))(
  ( (array!74129 (arr!35711 (Array (_ BitVec 32) ValueCell!13620)) (size!36248 (_ BitVec 32))) )
))
(declare-fun lt!508205 () array!74128)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun call!51095 () ListLongMap!16259)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-datatypes ((array!74130 0))(
  ( (array!74131 (arr!35712 (Array (_ BitVec 32) (_ BitVec 64))) (size!36249 (_ BitVec 32))) )
))
(declare-fun lt!508203 () array!74130)

(declare-fun bm!51087 () Bool)

(declare-fun minValue!944 () V!43339)

(declare-fun getCurrentListMapNoExtraKeys!4589 (array!74130 array!74128 (_ BitVec 32) (_ BitVec 32) V!43339 V!43339 (_ BitVec 32) Int) ListLongMap!16259)

(assert (=> bm!51087 (= call!51095 (getCurrentListMapNoExtraKeys!4589 lt!508203 lt!508205 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1140985 () Bool)

(declare-fun lt!508220 () Bool)

(declare-fun e!649193 () Bool)

(assert (=> b!1140985 (= e!649193 (ite (= k0!934 #b0000000000000000000000000000000000000000000000000000000000000000) (not lt!508220) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!1140986 () Bool)

(declare-fun c!111970 () Bool)

(assert (=> b!1140986 (= c!111970 (and (not lt!508220) (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-datatypes ((Unit!37341 0))(
  ( (Unit!37342) )
))
(declare-fun e!649182 () Unit!37341)

(declare-fun e!649181 () Unit!37341)

(assert (=> b!1140986 (= e!649182 e!649181)))

(declare-fun _keys!1208 () array!74130)

(declare-fun b!1140987 () Bool)

(declare-fun arrayContainsKey!0 (array!74130 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1140987 (= e!649193 (arrayContainsKey!0 _keys!1208 k0!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun e!649184 () Bool)

(declare-fun b!1140988 () Bool)

(assert (=> b!1140988 (= e!649184 (arrayContainsKey!0 _keys!1208 k0!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun b!1140989 () Bool)

(declare-fun e!649189 () Bool)

(declare-fun e!649194 () Bool)

(assert (=> b!1140989 (= e!649189 e!649194)))

(declare-fun res!760718 () Bool)

(assert (=> b!1140989 (=> res!760718 e!649194)))

(assert (=> b!1140989 (= res!760718 (not (= (select (arr!35712 _keys!1208) from!1455) k0!934)))))

(declare-fun e!649185 () Bool)

(assert (=> b!1140989 e!649185))

(declare-fun c!111969 () Bool)

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1140989 (= c!111969 (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673))))

(declare-fun _values!996 () array!74128)

(declare-fun lt!508214 () Unit!37341)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!500 (array!74130 array!74128 (_ BitVec 32) (_ BitVec 32) V!43339 V!43339 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!37341)

(assert (=> b!1140989 (= lt!508214 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!500 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun res!760726 () Bool)

(declare-fun e!649187 () Bool)

(assert (=> start!98560 (=> (not res!760726) (not e!649187))))

(assert (=> start!98560 (= res!760726 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!36249 _keys!1208))))))

(assert (=> start!98560 e!649187))

(declare-fun tp_is_empty!28659 () Bool)

(assert (=> start!98560 tp_is_empty!28659))

(declare-fun array_inv!27244 (array!74130) Bool)

(assert (=> start!98560 (array_inv!27244 _keys!1208)))

(assert (=> start!98560 true))

(assert (=> start!98560 tp!85099))

(declare-fun e!649183 () Bool)

(declare-fun array_inv!27245 (array!74128) Bool)

(assert (=> start!98560 (and (array_inv!27245 _values!996) e!649183)))

(declare-fun b!1140990 () Bool)

(declare-fun e!649190 () Bool)

(declare-fun mapRes!44813 () Bool)

(assert (=> b!1140990 (= e!649183 (and e!649190 mapRes!44813))))

(declare-fun condMapEmpty!44813 () Bool)

(declare-fun mapDefault!44813 () ValueCell!13620)

(assert (=> b!1140990 (= condMapEmpty!44813 (= (arr!35711 _values!996) ((as const (Array (_ BitVec 32) ValueCell!13620)) mapDefault!44813)))))

(declare-fun b!1140991 () Bool)

(assert (=> b!1140991 (= e!649194 true)))

(declare-fun lt!508216 () V!43339)

(declare-fun lt!508218 () ListLongMap!16259)

(declare-fun -!1244 (ListLongMap!16259 (_ BitVec 64)) ListLongMap!16259)

(declare-fun +!3491 (ListLongMap!16259 tuple2!18278) ListLongMap!16259)

(assert (=> b!1140991 (= (-!1244 (+!3491 lt!508218 (tuple2!18279 (select (arr!35712 _keys!1208) from!1455) lt!508216)) (select (arr!35712 _keys!1208) from!1455)) lt!508218)))

(declare-fun lt!508201 () Unit!37341)

(declare-fun addThenRemoveForNewKeyIsSame!99 (ListLongMap!16259 (_ BitVec 64) V!43339) Unit!37341)

(assert (=> b!1140991 (= lt!508201 (addThenRemoveForNewKeyIsSame!99 lt!508218 (select (arr!35712 _keys!1208) from!1455) lt!508216))))

(declare-fun lt!508209 () V!43339)

(declare-fun get!18163 (ValueCell!13620 V!43339) V!43339)

(assert (=> b!1140991 (= lt!508216 (get!18163 (select (arr!35711 _values!996) from!1455) lt!508209))))

(declare-fun lt!508215 () Unit!37341)

(declare-fun e!649191 () Unit!37341)

(assert (=> b!1140991 (= lt!508215 e!649191)))

(declare-fun c!111968 () Bool)

(assert (=> b!1140991 (= c!111968 (contains!6651 lt!508218 k0!934))))

(assert (=> b!1140991 (= lt!508218 (getCurrentListMapNoExtraKeys!4589 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1140992 () Bool)

(declare-fun e!649192 () Unit!37341)

(assert (=> b!1140992 (= e!649181 e!649192)))

(declare-fun c!111972 () Bool)

(assert (=> b!1140992 (= c!111972 (and (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!508220))))

(declare-fun b!1140993 () Bool)

(declare-fun Unit!37343 () Unit!37341)

(assert (=> b!1140993 (= e!649191 Unit!37343)))

(declare-fun b!1140994 () Bool)

(declare-fun e!649179 () Bool)

(assert (=> b!1140994 (= e!649179 e!649189)))

(declare-fun res!760730 () Bool)

(assert (=> b!1140994 (=> res!760730 e!649189)))

(assert (=> b!1140994 (= res!760730 (not (= from!1455 i!673)))))

(declare-fun lt!508204 () ListLongMap!16259)

(assert (=> b!1140994 (= lt!508204 (getCurrentListMapNoExtraKeys!4589 lt!508203 lt!508205 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(assert (=> b!1140994 (= lt!508205 (array!74129 (store (arr!35711 _values!996) i!673 (ValueCellFull!13620 lt!508209)) (size!36248 _values!996)))))

(declare-fun dynLambda!2644 (Int (_ BitVec 64)) V!43339)

(assert (=> b!1140994 (= lt!508209 (dynLambda!2644 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!508217 () ListLongMap!16259)

(assert (=> b!1140994 (= lt!508217 (getCurrentListMapNoExtraKeys!4589 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun mapIsEmpty!44813 () Bool)

(assert (=> mapIsEmpty!44813 mapRes!44813))

(declare-fun b!1140995 () Bool)

(declare-fun lt!508219 () Unit!37341)

(assert (=> b!1140995 (= e!649181 lt!508219)))

(declare-fun call!51094 () Unit!37341)

(assert (=> b!1140995 (= lt!508219 call!51094)))

(declare-fun call!51096 () Bool)

(assert (=> b!1140995 call!51096))

(declare-fun b!1140996 () Bool)

(declare-fun res!760728 () Bool)

(assert (=> b!1140996 (=> (not res!760728) (not e!649187))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!74130 (_ BitVec 32)) Bool)

(assert (=> b!1140996 (= res!760728 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun bm!51088 () Bool)

(declare-fun call!51092 () ListLongMap!16259)

(assert (=> bm!51088 (= call!51092 (getCurrentListMapNoExtraKeys!4589 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1140997 () Bool)

(declare-fun res!760717 () Bool)

(assert (=> b!1140997 (=> (not res!760717) (not e!649187))))

(declare-datatypes ((List!25081 0))(
  ( (Nil!25078) (Cons!25077 (h!26286 (_ BitVec 64)) (t!36209 List!25081)) )
))
(declare-fun arrayNoDuplicates!0 (array!74130 (_ BitVec 32) List!25081) Bool)

(assert (=> b!1140997 (= res!760717 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!25078))))

(declare-fun b!1140998 () Bool)

(declare-fun res!760727 () Bool)

(declare-fun e!649180 () Bool)

(assert (=> b!1140998 (=> (not res!760727) (not e!649180))))

(assert (=> b!1140998 (= res!760727 (arrayNoDuplicates!0 lt!508203 #b00000000000000000000000000000000 Nil!25078))))

(declare-fun b!1140999 () Bool)

(assert (=> b!1140999 (= e!649185 (= call!51095 (-!1244 call!51092 k0!934)))))

(declare-fun b!1141000 () Bool)

(assert (=> b!1141000 (contains!6651 (+!3491 lt!508207 (tuple2!18279 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944)) k0!934)))

(declare-fun lt!508206 () Unit!37341)

(declare-fun addStillContains!792 (ListLongMap!16259 (_ BitVec 64) V!43339 (_ BitVec 64)) Unit!37341)

(assert (=> b!1141000 (= lt!508206 (addStillContains!792 lt!508207 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944 k0!934))))

(assert (=> b!1141000 call!51091))

(declare-fun call!51090 () ListLongMap!16259)

(assert (=> b!1141000 (= lt!508207 call!51090)))

(declare-fun lt!508212 () Unit!37341)

(declare-fun call!51089 () Unit!37341)

(assert (=> b!1141000 (= lt!508212 call!51089)))

(assert (=> b!1141000 (= e!649182 lt!508206)))

(declare-fun bm!51089 () Bool)

(assert (=> bm!51089 (= call!51089 (addStillContains!792 lt!508218 (ite (or c!111967 c!111970) #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000) (ite (or c!111967 c!111970) zeroValue!944 minValue!944) k0!934))))

(declare-fun bm!51090 () Bool)

(assert (=> bm!51090 (= call!51096 call!51091)))

(declare-fun b!1141001 () Bool)

(assert (=> b!1141001 (= e!649187 e!649180)))

(declare-fun res!760721 () Bool)

(assert (=> b!1141001 (=> (not res!760721) (not e!649180))))

(assert (=> b!1141001 (= res!760721 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!508203 mask!1564))))

(assert (=> b!1141001 (= lt!508203 (array!74131 (store (arr!35712 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!36249 _keys!1208)))))

(declare-fun b!1141002 () Bool)

(assert (=> b!1141002 (= e!649190 tp_is_empty!28659)))

(declare-fun bm!51091 () Bool)

(assert (=> bm!51091 (= call!51093 call!51090)))

(declare-fun b!1141003 () Bool)

(assert (=> b!1141003 (= e!649185 (= call!51095 call!51092))))

(declare-fun bm!51092 () Bool)

(assert (=> bm!51092 (= call!51094 call!51089)))

(declare-fun mapNonEmpty!44813 () Bool)

(declare-fun tp!85098 () Bool)

(declare-fun e!649188 () Bool)

(assert (=> mapNonEmpty!44813 (= mapRes!44813 (and tp!85098 e!649188))))

(declare-fun mapValue!44813 () ValueCell!13620)

(declare-fun mapKey!44813 () (_ BitVec 32))

(declare-fun mapRest!44813 () (Array (_ BitVec 32) ValueCell!13620))

(assert (=> mapNonEmpty!44813 (= (arr!35711 _values!996) (store mapRest!44813 mapKey!44813 mapValue!44813))))

(declare-fun bm!51093 () Bool)

(assert (=> bm!51093 (= call!51090 (+!3491 lt!508218 (ite (or c!111967 c!111970) (tuple2!18279 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!18279 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944))))))

(declare-fun b!1141004 () Bool)

(assert (=> b!1141004 (= e!649188 tp_is_empty!28659)))

(declare-fun b!1141005 () Bool)

(declare-fun res!760722 () Bool)

(assert (=> b!1141005 (=> (not res!760722) (not e!649187))))

(assert (=> b!1141005 (= res!760722 (and (= (size!36248 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!36249 _keys!1208) (size!36248 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1141006 () Bool)

(declare-fun res!760724 () Bool)

(assert (=> b!1141006 (=> (not res!760724) (not e!649187))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1141006 (= res!760724 (validKeyInArray!0 k0!934))))

(declare-fun b!1141007 () Bool)

(declare-fun Unit!37344 () Unit!37341)

(assert (=> b!1141007 (= e!649191 Unit!37344)))

(assert (=> b!1141007 (= lt!508220 (= (bvand extraKeys!923 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(assert (=> b!1141007 (= c!111967 (and (not lt!508220) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun lt!508208 () Unit!37341)

(assert (=> b!1141007 (= lt!508208 e!649182)))

(declare-fun lt!508213 () Unit!37341)

(declare-fun lemmaListMapContainsThenArrayContainsFrom!391 (array!74130 array!74128 (_ BitVec 32) (_ BitVec 32) V!43339 V!43339 (_ BitVec 64) (_ BitVec 32) Int) Unit!37341)

(assert (=> b!1141007 (= lt!508213 (lemmaListMapContainsThenArrayContainsFrom!391 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun c!111971 () Bool)

(assert (=> b!1141007 (= c!111971 (and (not (= k0!934 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!934 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun res!760719 () Bool)

(assert (=> b!1141007 (= res!760719 e!649193)))

(assert (=> b!1141007 (=> (not res!760719) (not e!649184))))

(assert (=> b!1141007 e!649184))

(declare-fun lt!508221 () Unit!37341)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!74130 (_ BitVec 32) (_ BitVec 32)) Unit!37341)

(assert (=> b!1141007 (= lt!508221 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1208 #b00000000000000000000000000000000 from!1455))))

(assert (=> b!1141007 (arrayNoDuplicates!0 _keys!1208 from!1455 Nil!25078)))

(declare-fun lt!508202 () Unit!37341)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!74130 (_ BitVec 64) (_ BitVec 32) List!25081) Unit!37341)

(assert (=> b!1141007 (= lt!508202 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!1208 k0!934 from!1455 Nil!25078))))

(assert (=> b!1141007 false))

(declare-fun b!1141008 () Bool)

(declare-fun Unit!37345 () Unit!37341)

(assert (=> b!1141008 (= e!649192 Unit!37345)))

(declare-fun b!1141009 () Bool)

(assert (=> b!1141009 (= e!649180 (not e!649179))))

(declare-fun res!760729 () Bool)

(assert (=> b!1141009 (=> res!760729 e!649179)))

(assert (=> b!1141009 (= res!760729 (bvsgt from!1455 i!673))))

(assert (=> b!1141009 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-fun lt!508210 () Unit!37341)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!74130 (_ BitVec 64) (_ BitVec 32)) Unit!37341)

(assert (=> b!1141009 (= lt!508210 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1141010 () Bool)

(assert (=> b!1141010 call!51096))

(declare-fun lt!508211 () Unit!37341)

(assert (=> b!1141010 (= lt!508211 call!51094)))

(assert (=> b!1141010 (= e!649192 lt!508211)))

(declare-fun b!1141011 () Bool)

(declare-fun res!760725 () Bool)

(assert (=> b!1141011 (=> (not res!760725) (not e!649187))))

(assert (=> b!1141011 (= res!760725 (= (select (arr!35712 _keys!1208) i!673) k0!934))))

(declare-fun b!1141012 () Bool)

(declare-fun res!760720 () Bool)

(assert (=> b!1141012 (=> (not res!760720) (not e!649187))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1141012 (= res!760720 (validMask!0 mask!1564))))

(declare-fun b!1141013 () Bool)

(declare-fun res!760723 () Bool)

(assert (=> b!1141013 (=> (not res!760723) (not e!649187))))

(assert (=> b!1141013 (= res!760723 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!36249 _keys!1208))))))

(assert (= (and start!98560 res!760726) b!1141012))

(assert (= (and b!1141012 res!760720) b!1141005))

(assert (= (and b!1141005 res!760722) b!1140996))

(assert (= (and b!1140996 res!760728) b!1140997))

(assert (= (and b!1140997 res!760717) b!1141013))

(assert (= (and b!1141013 res!760723) b!1141006))

(assert (= (and b!1141006 res!760724) b!1141011))

(assert (= (and b!1141011 res!760725) b!1141001))

(assert (= (and b!1141001 res!760721) b!1140998))

(assert (= (and b!1140998 res!760727) b!1141009))

(assert (= (and b!1141009 (not res!760729)) b!1140994))

(assert (= (and b!1140994 (not res!760730)) b!1140989))

(assert (= (and b!1140989 c!111969) b!1140999))

(assert (= (and b!1140989 (not c!111969)) b!1141003))

(assert (= (or b!1140999 b!1141003) bm!51087))

(assert (= (or b!1140999 b!1141003) bm!51088))

(assert (= (and b!1140989 (not res!760718)) b!1140991))

(assert (= (and b!1140991 c!111968) b!1141007))

(assert (= (and b!1140991 (not c!111968)) b!1140993))

(assert (= (and b!1141007 c!111967) b!1141000))

(assert (= (and b!1141007 (not c!111967)) b!1140986))

(assert (= (and b!1140986 c!111970) b!1140995))

(assert (= (and b!1140986 (not c!111970)) b!1140992))

(assert (= (and b!1140992 c!111972) b!1141010))

(assert (= (and b!1140992 (not c!111972)) b!1141008))

(assert (= (or b!1140995 b!1141010) bm!51092))

(assert (= (or b!1140995 b!1141010) bm!51091))

(assert (= (or b!1140995 b!1141010) bm!51090))

(assert (= (or b!1141000 bm!51090) bm!51086))

(assert (= (or b!1141000 bm!51092) bm!51089))

(assert (= (or b!1141000 bm!51091) bm!51093))

(assert (= (and b!1141007 c!111971) b!1140987))

(assert (= (and b!1141007 (not c!111971)) b!1140985))

(assert (= (and b!1141007 res!760719) b!1140988))

(assert (= (and b!1140990 condMapEmpty!44813) mapIsEmpty!44813))

(assert (= (and b!1140990 (not condMapEmpty!44813)) mapNonEmpty!44813))

(get-info :version)

(assert (= (and mapNonEmpty!44813 ((_ is ValueCellFull!13620) mapValue!44813)) b!1141004))

(assert (= (and b!1140990 ((_ is ValueCellFull!13620) mapDefault!44813)) b!1141002))

(assert (= start!98560 b!1140990))

(declare-fun b_lambda!19253 () Bool)

(assert (=> (not b_lambda!19253) (not b!1140994)))

(declare-fun t!36207 () Bool)

(declare-fun tb!8949 () Bool)

(assert (=> (and start!98560 (= defaultEntry!1004 defaultEntry!1004) t!36207) tb!8949))

(declare-fun result!18455 () Bool)

(assert (=> tb!8949 (= result!18455 tp_is_empty!28659)))

(assert (=> b!1140994 t!36207))

(declare-fun b_and!39123 () Bool)

(assert (= b_and!39121 (and (=> t!36207 result!18455) b_and!39123)))

(declare-fun m!1052475 () Bool)

(assert (=> b!1140987 m!1052475))

(declare-fun m!1052477 () Bool)

(assert (=> b!1141001 m!1052477))

(declare-fun m!1052479 () Bool)

(assert (=> b!1141001 m!1052479))

(declare-fun m!1052481 () Bool)

(assert (=> b!1141006 m!1052481))

(declare-fun m!1052483 () Bool)

(assert (=> bm!51087 m!1052483))

(declare-fun m!1052485 () Bool)

(assert (=> b!1141009 m!1052485))

(declare-fun m!1052487 () Bool)

(assert (=> b!1141009 m!1052487))

(declare-fun m!1052489 () Bool)

(assert (=> bm!51086 m!1052489))

(declare-fun m!1052491 () Bool)

(assert (=> bm!51093 m!1052491))

(declare-fun m!1052493 () Bool)

(assert (=> b!1140996 m!1052493))

(declare-fun m!1052495 () Bool)

(assert (=> b!1140997 m!1052495))

(declare-fun m!1052497 () Bool)

(assert (=> b!1141000 m!1052497))

(assert (=> b!1141000 m!1052497))

(declare-fun m!1052499 () Bool)

(assert (=> b!1141000 m!1052499))

(declare-fun m!1052501 () Bool)

(assert (=> b!1141000 m!1052501))

(declare-fun m!1052503 () Bool)

(assert (=> b!1141011 m!1052503))

(declare-fun m!1052505 () Bool)

(assert (=> b!1140989 m!1052505))

(declare-fun m!1052507 () Bool)

(assert (=> b!1140989 m!1052507))

(declare-fun m!1052509 () Bool)

(assert (=> start!98560 m!1052509))

(declare-fun m!1052511 () Bool)

(assert (=> start!98560 m!1052511))

(declare-fun m!1052513 () Bool)

(assert (=> bm!51089 m!1052513))

(declare-fun m!1052515 () Bool)

(assert (=> b!1141012 m!1052515))

(declare-fun m!1052517 () Bool)

(assert (=> b!1141007 m!1052517))

(declare-fun m!1052519 () Bool)

(assert (=> b!1141007 m!1052519))

(declare-fun m!1052521 () Bool)

(assert (=> b!1141007 m!1052521))

(declare-fun m!1052523 () Bool)

(assert (=> b!1141007 m!1052523))

(declare-fun m!1052525 () Bool)

(assert (=> bm!51088 m!1052525))

(assert (=> b!1140988 m!1052475))

(declare-fun m!1052527 () Bool)

(assert (=> b!1140999 m!1052527))

(declare-fun m!1052529 () Bool)

(assert (=> b!1140991 m!1052529))

(assert (=> b!1140991 m!1052505))

(declare-fun m!1052531 () Bool)

(assert (=> b!1140991 m!1052531))

(assert (=> b!1140991 m!1052525))

(declare-fun m!1052533 () Bool)

(assert (=> b!1140991 m!1052533))

(declare-fun m!1052535 () Bool)

(assert (=> b!1140991 m!1052535))

(assert (=> b!1140991 m!1052529))

(assert (=> b!1140991 m!1052505))

(declare-fun m!1052537 () Bool)

(assert (=> b!1140991 m!1052537))

(assert (=> b!1140991 m!1052533))

(declare-fun m!1052539 () Bool)

(assert (=> b!1140991 m!1052539))

(assert (=> b!1140991 m!1052505))

(declare-fun m!1052541 () Bool)

(assert (=> mapNonEmpty!44813 m!1052541))

(declare-fun m!1052543 () Bool)

(assert (=> b!1140994 m!1052543))

(declare-fun m!1052545 () Bool)

(assert (=> b!1140994 m!1052545))

(declare-fun m!1052547 () Bool)

(assert (=> b!1140994 m!1052547))

(declare-fun m!1052549 () Bool)

(assert (=> b!1140994 m!1052549))

(declare-fun m!1052551 () Bool)

(assert (=> b!1140998 m!1052551))

(check-sat (not bm!51093) b_and!39123 (not b!1140987) tp_is_empty!28659 (not mapNonEmpty!44813) (not b!1140999) (not b!1140996) (not b!1140998) (not bm!51086) (not b_lambda!19253) (not b!1141000) (not bm!51089) (not b!1140988) (not b!1140997) (not b!1140989) (not b!1140991) (not b_next!24129) (not b!1141007) (not start!98560) (not b!1141006) (not b!1140994) (not bm!51087) (not b!1141012) (not b!1141001) (not bm!51088) (not b!1141009))
(check-sat b_and!39123 (not b_next!24129))
