; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!98806 () Bool)

(assert start!98806)

(declare-fun b_free!24375 () Bool)

(declare-fun b_next!24375 () Bool)

(assert (=> start!98806 (= b_free!24375 (not b_next!24375))))

(declare-fun tp!85836 () Bool)

(declare-fun b_and!39613 () Bool)

(assert (=> start!98806 (= tp!85836 b_and!39613)))

(declare-fun b!1152198 () Bool)

(declare-datatypes ((Unit!37817 0))(
  ( (Unit!37818) )
))
(declare-fun e!655356 () Unit!37817)

(declare-fun lt!516061 () Unit!37817)

(assert (=> b!1152198 (= e!655356 lt!516061)))

(declare-fun call!54041 () Unit!37817)

(assert (=> b!1152198 (= lt!516061 call!54041)))

(declare-fun call!54047 () Bool)

(assert (=> b!1152198 call!54047))

(declare-fun b!1152199 () Bool)

(declare-fun e!655358 () Bool)

(declare-fun e!655360 () Bool)

(assert (=> b!1152199 (= e!655358 e!655360)))

(declare-fun res!766160 () Bool)

(assert (=> b!1152199 (=> res!766160 e!655360)))

(declare-fun k0!934 () (_ BitVec 64))

(declare-fun from!1455 () (_ BitVec 32))

(declare-datatypes ((array!74608 0))(
  ( (array!74609 (arr!35951 (Array (_ BitVec 32) (_ BitVec 64))) (size!36488 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!74608)

(assert (=> b!1152199 (= res!766160 (not (= (select (arr!35951 _keys!1208) from!1455) k0!934)))))

(declare-fun e!655363 () Bool)

(assert (=> b!1152199 e!655363))

(declare-fun c!114182 () Bool)

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1152199 (= c!114182 (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673))))

(declare-datatypes ((V!43667 0))(
  ( (V!43668 (val!14509 Int)) )
))
(declare-fun zeroValue!944 () V!43667)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-fun lt!516075 () Unit!37817)

(declare-datatypes ((ValueCell!13743 0))(
  ( (ValueCellFull!13743 (v!17147 V!43667)) (EmptyCell!13743) )
))
(declare-datatypes ((array!74610 0))(
  ( (array!74611 (arr!35952 (Array (_ BitVec 32) ValueCell!13743)) (size!36489 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!74610)

(declare-fun minValue!944 () V!43667)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!576 (array!74608 array!74610 (_ BitVec 32) (_ BitVec 32) V!43667 V!43667 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!37817)

(assert (=> b!1152199 (= lt!516075 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!576 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1152200 () Bool)

(declare-fun e!655361 () Bool)

(declare-fun arrayContainsKey!0 (array!74608 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1152200 (= e!655361 (arrayContainsKey!0 _keys!1208 k0!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun b!1152201 () Bool)

(declare-fun res!766155 () Bool)

(declare-fun e!655352 () Bool)

(assert (=> b!1152201 (=> (not res!766155) (not e!655352))))

(declare-datatypes ((List!25290 0))(
  ( (Nil!25287) (Cons!25286 (h!26495 (_ BitVec 64)) (t!36664 List!25290)) )
))
(declare-fun arrayNoDuplicates!0 (array!74608 (_ BitVec 32) List!25290) Bool)

(assert (=> b!1152201 (= res!766155 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!25287))))

(declare-fun bm!54038 () Bool)

(declare-datatypes ((tuple2!18500 0))(
  ( (tuple2!18501 (_1!9260 (_ BitVec 64)) (_2!9260 V!43667)) )
))
(declare-datatypes ((List!25291 0))(
  ( (Nil!25288) (Cons!25287 (h!26496 tuple2!18500) (t!36665 List!25291)) )
))
(declare-datatypes ((ListLongMap!16481 0))(
  ( (ListLongMap!16482 (toList!8256 List!25291)) )
))
(declare-fun call!54045 () ListLongMap!16481)

(declare-fun c!114183 () Bool)

(declare-fun lt!516058 () ListLongMap!16481)

(declare-fun c!114186 () Bool)

(declare-fun +!3591 (ListLongMap!16481 tuple2!18500) ListLongMap!16481)

(assert (=> bm!54038 (= call!54045 (+!3591 lt!516058 (ite (or c!114186 c!114183) (tuple2!18501 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!18501 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944))))))

(declare-fun b!1152202 () Bool)

(declare-fun e!655359 () Bool)

(assert (=> b!1152202 (= e!655352 e!655359)))

(declare-fun res!766151 () Bool)

(assert (=> b!1152202 (=> (not res!766151) (not e!655359))))

(declare-fun lt!516073 () array!74608)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!74608 (_ BitVec 32)) Bool)

(assert (=> b!1152202 (= res!766151 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!516073 mask!1564))))

(assert (=> b!1152202 (= lt!516073 (array!74609 (store (arr!35951 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!36488 _keys!1208)))))

(declare-fun b!1152203 () Bool)

(assert (=> b!1152203 call!54047))

(declare-fun lt!516057 () Unit!37817)

(assert (=> b!1152203 (= lt!516057 call!54041)))

(declare-fun e!655365 () Unit!37817)

(assert (=> b!1152203 (= e!655365 lt!516057)))

(declare-fun b!1152204 () Bool)

(declare-fun e!655354 () Bool)

(declare-fun e!655353 () Bool)

(declare-fun mapRes!45182 () Bool)

(assert (=> b!1152204 (= e!655354 (and e!655353 mapRes!45182))))

(declare-fun condMapEmpty!45182 () Bool)

(declare-fun mapDefault!45182 () ValueCell!13743)

(assert (=> b!1152204 (= condMapEmpty!45182 (= (arr!35952 _values!996) ((as const (Array (_ BitVec 32) ValueCell!13743)) mapDefault!45182)))))

(declare-fun bm!54039 () Bool)

(declare-fun call!54044 () Bool)

(assert (=> bm!54039 (= call!54047 call!54044)))

(declare-fun res!766161 () Bool)

(assert (=> start!98806 (=> (not res!766161) (not e!655352))))

(assert (=> start!98806 (= res!766161 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!36488 _keys!1208))))))

(assert (=> start!98806 e!655352))

(declare-fun tp_is_empty!28905 () Bool)

(assert (=> start!98806 tp_is_empty!28905))

(declare-fun array_inv!27404 (array!74608) Bool)

(assert (=> start!98806 (array_inv!27404 _keys!1208)))

(assert (=> start!98806 true))

(assert (=> start!98806 tp!85836))

(declare-fun array_inv!27405 (array!74610) Bool)

(assert (=> start!98806 (and (array_inv!27405 _values!996) e!655354)))

(declare-fun bm!54040 () Bool)

(declare-fun call!54043 () Unit!37817)

(assert (=> bm!54040 (= call!54041 call!54043)))

(declare-fun call!54042 () ListLongMap!16481)

(declare-fun bm!54041 () Bool)

(declare-fun getCurrentListMapNoExtraKeys!4696 (array!74608 array!74610 (_ BitVec 32) (_ BitVec 32) V!43667 V!43667 (_ BitVec 32) Int) ListLongMap!16481)

(assert (=> bm!54041 (= call!54042 (getCurrentListMapNoExtraKeys!4696 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun lt!516070 () array!74610)

(declare-fun b!1152205 () Bool)

(declare-fun lt!516055 () ListLongMap!16481)

(declare-fun e!655351 () Bool)

(assert (=> b!1152205 (= e!655351 (= lt!516055 (getCurrentListMapNoExtraKeys!4696 lt!516073 lt!516070 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004)))))

(declare-fun b!1152206 () Bool)

(declare-fun e!655349 () Bool)

(assert (=> b!1152206 (= e!655349 (arrayContainsKey!0 _keys!1208 k0!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun b!1152207 () Bool)

(declare-fun lt!516071 () Bool)

(assert (=> b!1152207 (= e!655361 (ite (= k0!934 #b0000000000000000000000000000000000000000000000000000000000000000) (not lt!516071) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!1152208 () Bool)

(assert (=> b!1152208 (= e!655360 true)))

(assert (=> b!1152208 e!655351))

(declare-fun res!766157 () Bool)

(assert (=> b!1152208 (=> (not res!766157) (not e!655351))))

(assert (=> b!1152208 (= res!766157 (= lt!516055 lt!516058))))

(declare-fun lt!516072 () ListLongMap!16481)

(declare-fun -!1341 (ListLongMap!16481 (_ BitVec 64)) ListLongMap!16481)

(assert (=> b!1152208 (= lt!516055 (-!1341 lt!516072 k0!934))))

(declare-fun lt!516066 () V!43667)

(assert (=> b!1152208 (= (-!1341 (+!3591 lt!516058 (tuple2!18501 (select (arr!35951 _keys!1208) from!1455) lt!516066)) (select (arr!35951 _keys!1208) from!1455)) lt!516058)))

(declare-fun lt!516069 () Unit!37817)

(declare-fun addThenRemoveForNewKeyIsSame!188 (ListLongMap!16481 (_ BitVec 64) V!43667) Unit!37817)

(assert (=> b!1152208 (= lt!516069 (addThenRemoveForNewKeyIsSame!188 lt!516058 (select (arr!35951 _keys!1208) from!1455) lt!516066))))

(declare-fun lt!516064 () V!43667)

(declare-fun get!18334 (ValueCell!13743 V!43667) V!43667)

(assert (=> b!1152208 (= lt!516066 (get!18334 (select (arr!35952 _values!996) from!1455) lt!516064))))

(declare-fun lt!516062 () Unit!37817)

(declare-fun e!655364 () Unit!37817)

(assert (=> b!1152208 (= lt!516062 e!655364)))

(declare-fun c!114181 () Bool)

(declare-fun contains!6749 (ListLongMap!16481 (_ BitVec 64)) Bool)

(assert (=> b!1152208 (= c!114181 (contains!6749 lt!516058 k0!934))))

(assert (=> b!1152208 (= lt!516058 (getCurrentListMapNoExtraKeys!4696 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1152209 () Bool)

(declare-fun call!54048 () ListLongMap!16481)

(assert (=> b!1152209 (= e!655363 (= call!54048 call!54042))))

(declare-fun b!1152210 () Bool)

(declare-fun e!655362 () Bool)

(assert (=> b!1152210 (= e!655362 tp_is_empty!28905)))

(declare-fun b!1152211 () Bool)

(assert (=> b!1152211 (= e!655353 tp_is_empty!28905)))

(declare-fun b!1152212 () Bool)

(declare-fun lt!516067 () ListLongMap!16481)

(assert (=> b!1152212 (contains!6749 (+!3591 lt!516067 (tuple2!18501 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944)) k0!934)))

(declare-fun lt!516063 () Unit!37817)

(declare-fun addStillContains!891 (ListLongMap!16481 (_ BitVec 64) V!43667 (_ BitVec 64)) Unit!37817)

(assert (=> b!1152212 (= lt!516063 (addStillContains!891 lt!516067 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944 k0!934))))

(assert (=> b!1152212 call!54044))

(assert (=> b!1152212 (= lt!516067 call!54045)))

(declare-fun lt!516059 () Unit!37817)

(assert (=> b!1152212 (= lt!516059 call!54043)))

(declare-fun e!655355 () Unit!37817)

(assert (=> b!1152212 (= e!655355 lt!516063)))

(declare-fun b!1152213 () Bool)

(declare-fun res!766158 () Bool)

(assert (=> b!1152213 (=> (not res!766158) (not e!655352))))

(assert (=> b!1152213 (= res!766158 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1152214 () Bool)

(assert (=> b!1152214 (= e!655363 (= call!54048 (-!1341 call!54042 k0!934)))))

(declare-fun b!1152215 () Bool)

(assert (=> b!1152215 (= c!114183 (and (not lt!516071) (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(assert (=> b!1152215 (= e!655355 e!655356)))

(declare-fun bm!54042 () Bool)

(assert (=> bm!54042 (= call!54048 (getCurrentListMapNoExtraKeys!4696 lt!516073 lt!516070 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun call!54046 () ListLongMap!16481)

(declare-fun bm!54043 () Bool)

(assert (=> bm!54043 (= call!54044 (contains!6749 (ite c!114186 lt!516067 call!54046) k0!934))))

(declare-fun mapNonEmpty!45182 () Bool)

(declare-fun tp!85837 () Bool)

(assert (=> mapNonEmpty!45182 (= mapRes!45182 (and tp!85837 e!655362))))

(declare-fun mapKey!45182 () (_ BitVec 32))

(declare-fun mapValue!45182 () ValueCell!13743)

(declare-fun mapRest!45182 () (Array (_ BitVec 32) ValueCell!13743))

(assert (=> mapNonEmpty!45182 (= (arr!35952 _values!996) (store mapRest!45182 mapKey!45182 mapValue!45182))))

(declare-fun b!1152216 () Bool)

(assert (=> b!1152216 (= e!655356 e!655365)))

(declare-fun c!114184 () Bool)

(assert (=> b!1152216 (= c!114184 (and (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!516071))))

(declare-fun b!1152217 () Bool)

(declare-fun res!766152 () Bool)

(assert (=> b!1152217 (=> (not res!766152) (not e!655352))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1152217 (= res!766152 (validMask!0 mask!1564))))

(declare-fun b!1152218 () Bool)

(declare-fun res!766159 () Bool)

(assert (=> b!1152218 (=> (not res!766159) (not e!655352))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1152218 (= res!766159 (validKeyInArray!0 k0!934))))

(declare-fun mapIsEmpty!45182 () Bool)

(assert (=> mapIsEmpty!45182 mapRes!45182))

(declare-fun b!1152219 () Bool)

(declare-fun Unit!37819 () Unit!37817)

(assert (=> b!1152219 (= e!655365 Unit!37819)))

(declare-fun b!1152220 () Bool)

(declare-fun res!766149 () Bool)

(assert (=> b!1152220 (=> (not res!766149) (not e!655359))))

(assert (=> b!1152220 (= res!766149 (arrayNoDuplicates!0 lt!516073 #b00000000000000000000000000000000 Nil!25287))))

(declare-fun b!1152221 () Bool)

(declare-fun Unit!37820 () Unit!37817)

(assert (=> b!1152221 (= e!655364 Unit!37820)))

(declare-fun b!1152222 () Bool)

(declare-fun res!766162 () Bool)

(assert (=> b!1152222 (=> (not res!766162) (not e!655352))))

(assert (=> b!1152222 (= res!766162 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!36488 _keys!1208))))))

(declare-fun bm!54044 () Bool)

(assert (=> bm!54044 (= call!54043 (addStillContains!891 lt!516058 (ite (or c!114186 c!114183) #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000) (ite (or c!114186 c!114183) zeroValue!944 minValue!944) k0!934))))

(declare-fun b!1152223 () Bool)

(declare-fun res!766163 () Bool)

(assert (=> b!1152223 (=> (not res!766163) (not e!655352))))

(assert (=> b!1152223 (= res!766163 (and (= (size!36489 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!36488 _keys!1208) (size!36489 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1152224 () Bool)

(declare-fun e!655350 () Bool)

(assert (=> b!1152224 (= e!655350 e!655358)))

(declare-fun res!766150 () Bool)

(assert (=> b!1152224 (=> res!766150 e!655358)))

(assert (=> b!1152224 (= res!766150 (not (= from!1455 i!673)))))

(declare-fun lt!516054 () ListLongMap!16481)

(assert (=> b!1152224 (= lt!516054 (getCurrentListMapNoExtraKeys!4696 lt!516073 lt!516070 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(assert (=> b!1152224 (= lt!516070 (array!74611 (store (arr!35952 _values!996) i!673 (ValueCellFull!13743 lt!516064)) (size!36489 _values!996)))))

(declare-fun dynLambda!2722 (Int (_ BitVec 64)) V!43667)

(assert (=> b!1152224 (= lt!516064 (dynLambda!2722 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1152224 (= lt!516072 (getCurrentListMapNoExtraKeys!4696 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun bm!54045 () Bool)

(assert (=> bm!54045 (= call!54046 call!54045)))

(declare-fun b!1152225 () Bool)

(declare-fun Unit!37821 () Unit!37817)

(assert (=> b!1152225 (= e!655364 Unit!37821)))

(assert (=> b!1152225 (= lt!516071 (= (bvand extraKeys!923 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(assert (=> b!1152225 (= c!114186 (and (not lt!516071) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun lt!516065 () Unit!37817)

(assert (=> b!1152225 (= lt!516065 e!655355)))

(declare-fun lt!516068 () Unit!37817)

(declare-fun lemmaListMapContainsThenArrayContainsFrom!475 (array!74608 array!74610 (_ BitVec 32) (_ BitVec 32) V!43667 V!43667 (_ BitVec 64) (_ BitVec 32) Int) Unit!37817)

(assert (=> b!1152225 (= lt!516068 (lemmaListMapContainsThenArrayContainsFrom!475 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun c!114185 () Bool)

(assert (=> b!1152225 (= c!114185 (and (not (= k0!934 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!934 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun res!766153 () Bool)

(assert (=> b!1152225 (= res!766153 e!655361)))

(assert (=> b!1152225 (=> (not res!766153) (not e!655349))))

(assert (=> b!1152225 e!655349))

(declare-fun lt!516060 () Unit!37817)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!74608 (_ BitVec 32) (_ BitVec 32)) Unit!37817)

(assert (=> b!1152225 (= lt!516060 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1208 #b00000000000000000000000000000000 from!1455))))

(assert (=> b!1152225 (arrayNoDuplicates!0 _keys!1208 from!1455 Nil!25287)))

(declare-fun lt!516074 () Unit!37817)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!74608 (_ BitVec 64) (_ BitVec 32) List!25290) Unit!37817)

(assert (=> b!1152225 (= lt!516074 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!1208 k0!934 from!1455 Nil!25287))))

(assert (=> b!1152225 false))

(declare-fun b!1152226 () Bool)

(declare-fun res!766156 () Bool)

(assert (=> b!1152226 (=> (not res!766156) (not e!655352))))

(assert (=> b!1152226 (= res!766156 (= (select (arr!35951 _keys!1208) i!673) k0!934))))

(declare-fun b!1152227 () Bool)

(assert (=> b!1152227 (= e!655359 (not e!655350))))

(declare-fun res!766154 () Bool)

(assert (=> b!1152227 (=> res!766154 e!655350)))

(assert (=> b!1152227 (= res!766154 (bvsgt from!1455 i!673))))

(assert (=> b!1152227 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-fun lt!516056 () Unit!37817)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!74608 (_ BitVec 64) (_ BitVec 32)) Unit!37817)

(assert (=> b!1152227 (= lt!516056 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(assert (= (and start!98806 res!766161) b!1152217))

(assert (= (and b!1152217 res!766152) b!1152223))

(assert (= (and b!1152223 res!766163) b!1152213))

(assert (= (and b!1152213 res!766158) b!1152201))

(assert (= (and b!1152201 res!766155) b!1152222))

(assert (= (and b!1152222 res!766162) b!1152218))

(assert (= (and b!1152218 res!766159) b!1152226))

(assert (= (and b!1152226 res!766156) b!1152202))

(assert (= (and b!1152202 res!766151) b!1152220))

(assert (= (and b!1152220 res!766149) b!1152227))

(assert (= (and b!1152227 (not res!766154)) b!1152224))

(assert (= (and b!1152224 (not res!766150)) b!1152199))

(assert (= (and b!1152199 c!114182) b!1152214))

(assert (= (and b!1152199 (not c!114182)) b!1152209))

(assert (= (or b!1152214 b!1152209) bm!54042))

(assert (= (or b!1152214 b!1152209) bm!54041))

(assert (= (and b!1152199 (not res!766160)) b!1152208))

(assert (= (and b!1152208 c!114181) b!1152225))

(assert (= (and b!1152208 (not c!114181)) b!1152221))

(assert (= (and b!1152225 c!114186) b!1152212))

(assert (= (and b!1152225 (not c!114186)) b!1152215))

(assert (= (and b!1152215 c!114183) b!1152198))

(assert (= (and b!1152215 (not c!114183)) b!1152216))

(assert (= (and b!1152216 c!114184) b!1152203))

(assert (= (and b!1152216 (not c!114184)) b!1152219))

(assert (= (or b!1152198 b!1152203) bm!54040))

(assert (= (or b!1152198 b!1152203) bm!54045))

(assert (= (or b!1152198 b!1152203) bm!54039))

(assert (= (or b!1152212 bm!54039) bm!54043))

(assert (= (or b!1152212 bm!54040) bm!54044))

(assert (= (or b!1152212 bm!54045) bm!54038))

(assert (= (and b!1152225 c!114185) b!1152200))

(assert (= (and b!1152225 (not c!114185)) b!1152207))

(assert (= (and b!1152225 res!766153) b!1152206))

(assert (= (and b!1152208 res!766157) b!1152205))

(assert (= (and b!1152204 condMapEmpty!45182) mapIsEmpty!45182))

(assert (= (and b!1152204 (not condMapEmpty!45182)) mapNonEmpty!45182))

(get-info :version)

(assert (= (and mapNonEmpty!45182 ((_ is ValueCellFull!13743) mapValue!45182)) b!1152210))

(assert (= (and b!1152204 ((_ is ValueCellFull!13743) mapDefault!45182)) b!1152211))

(assert (= start!98806 b!1152204))

(declare-fun b_lambda!19499 () Bool)

(assert (=> (not b_lambda!19499) (not b!1152224)))

(declare-fun t!36663 () Bool)

(declare-fun tb!9195 () Bool)

(assert (=> (and start!98806 (= defaultEntry!1004 defaultEntry!1004) t!36663) tb!9195))

(declare-fun result!18947 () Bool)

(assert (=> tb!9195 (= result!18947 tp_is_empty!28905)))

(assert (=> b!1152224 t!36663))

(declare-fun b_and!39615 () Bool)

(assert (= b_and!39613 (and (=> t!36663 result!18947) b_and!39615)))

(declare-fun m!1062259 () Bool)

(assert (=> mapNonEmpty!45182 m!1062259))

(declare-fun m!1062261 () Bool)

(assert (=> b!1152199 m!1062261))

(declare-fun m!1062263 () Bool)

(assert (=> b!1152199 m!1062263))

(declare-fun m!1062265 () Bool)

(assert (=> b!1152225 m!1062265))

(declare-fun m!1062267 () Bool)

(assert (=> b!1152225 m!1062267))

(declare-fun m!1062269 () Bool)

(assert (=> b!1152225 m!1062269))

(declare-fun m!1062271 () Bool)

(assert (=> b!1152225 m!1062271))

(declare-fun m!1062273 () Bool)

(assert (=> b!1152206 m!1062273))

(declare-fun m!1062275 () Bool)

(assert (=> bm!54042 m!1062275))

(declare-fun m!1062277 () Bool)

(assert (=> b!1152214 m!1062277))

(declare-fun m!1062279 () Bool)

(assert (=> b!1152227 m!1062279))

(declare-fun m!1062281 () Bool)

(assert (=> b!1152227 m!1062281))

(declare-fun m!1062283 () Bool)

(assert (=> b!1152212 m!1062283))

(assert (=> b!1152212 m!1062283))

(declare-fun m!1062285 () Bool)

(assert (=> b!1152212 m!1062285))

(declare-fun m!1062287 () Bool)

(assert (=> b!1152212 m!1062287))

(declare-fun m!1062289 () Bool)

(assert (=> b!1152208 m!1062289))

(declare-fun m!1062291 () Bool)

(assert (=> b!1152208 m!1062291))

(assert (=> b!1152208 m!1062291))

(declare-fun m!1062293 () Bool)

(assert (=> b!1152208 m!1062293))

(declare-fun m!1062295 () Bool)

(assert (=> b!1152208 m!1062295))

(declare-fun m!1062297 () Bool)

(assert (=> b!1152208 m!1062297))

(assert (=> b!1152208 m!1062261))

(declare-fun m!1062299 () Bool)

(assert (=> b!1152208 m!1062299))

(assert (=> b!1152208 m!1062261))

(declare-fun m!1062301 () Bool)

(assert (=> b!1152208 m!1062301))

(assert (=> b!1152208 m!1062297))

(assert (=> b!1152208 m!1062261))

(declare-fun m!1062303 () Bool)

(assert (=> b!1152208 m!1062303))

(declare-fun m!1062305 () Bool)

(assert (=> start!98806 m!1062305))

(declare-fun m!1062307 () Bool)

(assert (=> start!98806 m!1062307))

(declare-fun m!1062309 () Bool)

(assert (=> b!1152220 m!1062309))

(declare-fun m!1062311 () Bool)

(assert (=> bm!54043 m!1062311))

(declare-fun m!1062313 () Bool)

(assert (=> bm!54038 m!1062313))

(assert (=> bm!54041 m!1062289))

(assert (=> b!1152200 m!1062273))

(declare-fun m!1062315 () Bool)

(assert (=> bm!54044 m!1062315))

(declare-fun m!1062317 () Bool)

(assert (=> b!1152201 m!1062317))

(declare-fun m!1062319 () Bool)

(assert (=> b!1152218 m!1062319))

(declare-fun m!1062321 () Bool)

(assert (=> b!1152202 m!1062321))

(declare-fun m!1062323 () Bool)

(assert (=> b!1152202 m!1062323))

(assert (=> b!1152205 m!1062275))

(declare-fun m!1062325 () Bool)

(assert (=> b!1152213 m!1062325))

(declare-fun m!1062327 () Bool)

(assert (=> b!1152226 m!1062327))

(declare-fun m!1062329 () Bool)

(assert (=> b!1152217 m!1062329))

(declare-fun m!1062331 () Bool)

(assert (=> b!1152224 m!1062331))

(declare-fun m!1062333 () Bool)

(assert (=> b!1152224 m!1062333))

(declare-fun m!1062335 () Bool)

(assert (=> b!1152224 m!1062335))

(declare-fun m!1062337 () Bool)

(assert (=> b!1152224 m!1062337))

(check-sat (not b!1152227) (not b!1152205) (not b!1152214) (not mapNonEmpty!45182) (not bm!54038) (not b!1152224) (not b!1152213) (not b!1152201) (not b_lambda!19499) (not b!1152200) (not b!1152217) (not b!1152220) (not b!1152206) (not bm!54041) (not b!1152208) b_and!39615 (not b_next!24375) (not b!1152218) (not start!98806) tp_is_empty!28905 (not bm!54044) (not b!1152199) (not b!1152202) (not b!1152212) (not b!1152225) (not bm!54042) (not bm!54043))
(check-sat b_and!39615 (not b_next!24375))
