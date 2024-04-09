; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!98590 () Bool)

(assert start!98590)

(declare-fun b_free!24159 () Bool)

(declare-fun b_next!24159 () Bool)

(assert (=> start!98590 (= b_free!24159 (not b_next!24159))))

(declare-fun tp!85189 () Bool)

(declare-fun b_and!39181 () Bool)

(assert (=> start!98590 (= tp!85189 b_and!39181)))

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun b!1142320 () Bool)

(declare-fun lt!509159 () Bool)

(declare-fun k0!934 () (_ BitVec 64))

(declare-fun e!649906 () Bool)

(assert (=> b!1142320 (= e!649906 (ite (= k0!934 #b0000000000000000000000000000000000000000000000000000000000000000) (not lt!509159) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-datatypes ((array!74188 0))(
  ( (array!74189 (arr!35741 (Array (_ BitVec 32) (_ BitVec 64))) (size!36278 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!74188)

(declare-fun b!1142321 () Bool)

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun e!649899 () Bool)

(declare-fun arrayContainsKey!0 (array!74188 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1142321 (= e!649899 (arrayContainsKey!0 _keys!1208 k0!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun b!1142322 () Bool)

(declare-fun res!761351 () Bool)

(declare-fun e!649900 () Bool)

(assert (=> b!1142322 (=> (not res!761351) (not e!649900))))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1142322 (= res!761351 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!36278 _keys!1208))))))

(declare-fun bm!51446 () Bool)

(declare-datatypes ((V!43379 0))(
  ( (V!43380 (val!14401 Int)) )
))
(declare-datatypes ((tuple2!18308 0))(
  ( (tuple2!18309 (_1!9164 (_ BitVec 64)) (_2!9164 V!43379)) )
))
(declare-datatypes ((List!25108 0))(
  ( (Nil!25105) (Cons!25104 (h!26313 tuple2!18308) (t!36266 List!25108)) )
))
(declare-datatypes ((ListLongMap!16289 0))(
  ( (ListLongMap!16290 (toList!8160 List!25108)) )
))
(declare-fun lt!509160 () ListLongMap!16289)

(declare-fun c!112240 () Bool)

(declare-fun call!51454 () Bool)

(declare-fun call!51453 () ListLongMap!16289)

(declare-fun contains!6663 (ListLongMap!16289 (_ BitVec 64)) Bool)

(assert (=> bm!51446 (= call!51454 (contains!6663 (ite c!112240 lt!509160 call!51453) k0!934))))

(declare-fun call!51451 () ListLongMap!16289)

(declare-fun b!1142323 () Bool)

(declare-fun e!649913 () Bool)

(declare-fun call!51452 () ListLongMap!16289)

(declare-fun -!1254 (ListLongMap!16289 (_ BitVec 64)) ListLongMap!16289)

(assert (=> b!1142323 (= e!649913 (= call!51451 (-!1254 call!51452 k0!934)))))

(declare-fun b!1142324 () Bool)

(declare-fun e!649909 () Bool)

(assert (=> b!1142324 (= e!649900 e!649909)))

(declare-fun res!761347 () Bool)

(assert (=> b!1142324 (=> (not res!761347) (not e!649909))))

(declare-fun lt!509156 () array!74188)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!74188 (_ BitVec 32)) Bool)

(assert (=> b!1142324 (= res!761347 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!509156 mask!1564))))

(assert (=> b!1142324 (= lt!509156 (array!74189 (store (arr!35741 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!36278 _keys!1208)))))

(declare-fun b!1142325 () Bool)

(assert (=> b!1142325 (= e!649906 (arrayContainsKey!0 _keys!1208 k0!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun b!1142326 () Bool)

(declare-fun call!51456 () ListLongMap!16289)

(assert (=> b!1142326 (contains!6663 call!51456 k0!934)))

(declare-datatypes ((Unit!37399 0))(
  ( (Unit!37400) )
))
(declare-fun lt!509165 () Unit!37399)

(declare-fun call!51449 () Unit!37399)

(assert (=> b!1142326 (= lt!509165 call!51449)))

(assert (=> b!1142326 call!51454))

(declare-fun lt!509162 () ListLongMap!16289)

(declare-fun zeroValue!944 () V!43379)

(declare-fun +!3504 (ListLongMap!16289 tuple2!18308) ListLongMap!16289)

(assert (=> b!1142326 (= lt!509160 (+!3504 lt!509162 (tuple2!18309 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944)))))

(declare-fun lt!509161 () Unit!37399)

(declare-fun addStillContains!803 (ListLongMap!16289 (_ BitVec 64) V!43379 (_ BitVec 64)) Unit!37399)

(assert (=> b!1142326 (= lt!509161 (addStillContains!803 lt!509162 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944 k0!934))))

(declare-fun e!649903 () Unit!37399)

(assert (=> b!1142326 (= e!649903 lt!509165)))

(declare-fun bm!51447 () Bool)

(assert (=> bm!51447 (= call!51453 call!51456)))

(declare-fun b!1142327 () Bool)

(declare-fun c!112239 () Bool)

(assert (=> b!1142327 (= c!112239 (and (not lt!509159) (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun e!649902 () Unit!37399)

(assert (=> b!1142327 (= e!649903 e!649902)))

(declare-fun b!1142328 () Bool)

(declare-fun e!649911 () Unit!37399)

(declare-fun Unit!37401 () Unit!37399)

(assert (=> b!1142328 (= e!649911 Unit!37401)))

(assert (=> b!1142328 (= lt!509159 (= (bvand extraKeys!923 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(assert (=> b!1142328 (= c!112240 (and (not lt!509159) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun lt!509146 () Unit!37399)

(assert (=> b!1142328 (= lt!509146 e!649903)))

(declare-fun defaultEntry!1004 () Int)

(declare-datatypes ((ValueCell!13635 0))(
  ( (ValueCellFull!13635 (v!17039 V!43379)) (EmptyCell!13635) )
))
(declare-datatypes ((array!74190 0))(
  ( (array!74191 (arr!35742 (Array (_ BitVec 32) ValueCell!13635)) (size!36279 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!74190)

(declare-fun minValue!944 () V!43379)

(declare-fun lt!509158 () Unit!37399)

(declare-fun lemmaListMapContainsThenArrayContainsFrom!400 (array!74188 array!74190 (_ BitVec 32) (_ BitVec 32) V!43379 V!43379 (_ BitVec 64) (_ BitVec 32) Int) Unit!37399)

(assert (=> b!1142328 (= lt!509158 (lemmaListMapContainsThenArrayContainsFrom!400 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun c!112237 () Bool)

(assert (=> b!1142328 (= c!112237 (and (not (= k0!934 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!934 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun res!761352 () Bool)

(assert (=> b!1142328 (= res!761352 e!649906)))

(assert (=> b!1142328 (=> (not res!761352) (not e!649899))))

(assert (=> b!1142328 e!649899))

(declare-fun lt!509157 () Unit!37399)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!74188 (_ BitVec 32) (_ BitVec 32)) Unit!37399)

(assert (=> b!1142328 (= lt!509157 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1208 #b00000000000000000000000000000000 from!1455))))

(declare-datatypes ((List!25109 0))(
  ( (Nil!25106) (Cons!25105 (h!26314 (_ BitVec 64)) (t!36267 List!25109)) )
))
(declare-fun arrayNoDuplicates!0 (array!74188 (_ BitVec 32) List!25109) Bool)

(assert (=> b!1142328 (arrayNoDuplicates!0 _keys!1208 from!1455 Nil!25106)))

(declare-fun lt!509150 () Unit!37399)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!74188 (_ BitVec 64) (_ BitVec 32) List!25109) Unit!37399)

(assert (=> b!1142328 (= lt!509150 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!1208 k0!934 from!1455 Nil!25106))))

(assert (=> b!1142328 false))

(declare-fun b!1142329 () Bool)

(declare-fun e!649907 () Bool)

(declare-fun e!649910 () Bool)

(assert (=> b!1142329 (= e!649907 e!649910)))

(declare-fun res!761357 () Bool)

(assert (=> b!1142329 (=> res!761357 e!649910)))

(assert (=> b!1142329 (= res!761357 (not (= from!1455 i!673)))))

(declare-fun lt!509155 () ListLongMap!16289)

(declare-fun lt!509147 () array!74190)

(declare-fun getCurrentListMapNoExtraKeys!4603 (array!74188 array!74190 (_ BitVec 32) (_ BitVec 32) V!43379 V!43379 (_ BitVec 32) Int) ListLongMap!16289)

(assert (=> b!1142329 (= lt!509155 (getCurrentListMapNoExtraKeys!4603 lt!509156 lt!509147 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun lt!509163 () V!43379)

(assert (=> b!1142329 (= lt!509147 (array!74191 (store (arr!35742 _values!996) i!673 (ValueCellFull!13635 lt!509163)) (size!36279 _values!996)))))

(declare-fun dynLambda!2652 (Int (_ BitVec 64)) V!43379)

(assert (=> b!1142329 (= lt!509163 (dynLambda!2652 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!509154 () ListLongMap!16289)

(assert (=> b!1142329 (= lt!509154 (getCurrentListMapNoExtraKeys!4603 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1142330 () Bool)

(declare-fun call!51450 () Bool)

(assert (=> b!1142330 call!51450))

(declare-fun lt!509151 () Unit!37399)

(declare-fun call!51455 () Unit!37399)

(assert (=> b!1142330 (= lt!509151 call!51455)))

(declare-fun e!649908 () Unit!37399)

(assert (=> b!1142330 (= e!649908 lt!509151)))

(declare-fun b!1142331 () Bool)

(declare-fun res!761360 () Bool)

(assert (=> b!1142331 (=> (not res!761360) (not e!649900))))

(assert (=> b!1142331 (= res!761360 (= (select (arr!35741 _keys!1208) i!673) k0!934))))

(declare-fun b!1142332 () Bool)

(assert (=> b!1142332 (= e!649909 (not e!649907))))

(declare-fun res!761355 () Bool)

(assert (=> b!1142332 (=> res!761355 e!649907)))

(assert (=> b!1142332 (= res!761355 (bvsgt from!1455 i!673))))

(assert (=> b!1142332 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-fun lt!509148 () Unit!37399)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!74188 (_ BitVec 64) (_ BitVec 32)) Unit!37399)

(assert (=> b!1142332 (= lt!509148 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun bm!51448 () Bool)

(assert (=> bm!51448 (= call!51449 (addStillContains!803 (ite c!112240 lt!509160 lt!509162) (ite c!112240 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!112239 #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000)) (ite c!112240 minValue!944 (ite c!112239 zeroValue!944 minValue!944)) k0!934))))

(declare-fun b!1142333 () Bool)

(declare-fun e!649904 () Bool)

(declare-fun tp_is_empty!28689 () Bool)

(assert (=> b!1142333 (= e!649904 tp_is_empty!28689)))

(declare-fun b!1142334 () Bool)

(declare-fun res!761348 () Bool)

(assert (=> b!1142334 (=> (not res!761348) (not e!649900))))

(assert (=> b!1142334 (= res!761348 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!25106))))

(declare-fun bm!51449 () Bool)

(assert (=> bm!51449 (= call!51451 (getCurrentListMapNoExtraKeys!4603 lt!509156 lt!509147 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun mapNonEmpty!44858 () Bool)

(declare-fun mapRes!44858 () Bool)

(declare-fun tp!85188 () Bool)

(declare-fun e!649914 () Bool)

(assert (=> mapNonEmpty!44858 (= mapRes!44858 (and tp!85188 e!649914))))

(declare-fun mapValue!44858 () ValueCell!13635)

(declare-fun mapKey!44858 () (_ BitVec 32))

(declare-fun mapRest!44858 () (Array (_ BitVec 32) ValueCell!13635))

(assert (=> mapNonEmpty!44858 (= (arr!35742 _values!996) (store mapRest!44858 mapKey!44858 mapValue!44858))))

(declare-fun b!1142335 () Bool)

(declare-fun res!761349 () Bool)

(assert (=> b!1142335 (=> (not res!761349) (not e!649900))))

(assert (=> b!1142335 (= res!761349 (and (= (size!36279 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!36278 _keys!1208) (size!36279 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun bm!51450 () Bool)

(assert (=> bm!51450 (= call!51456 (+!3504 (ite c!112240 lt!509160 lt!509162) (ite c!112240 (tuple2!18309 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944) (ite c!112239 (tuple2!18309 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!18309 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944)))))))

(declare-fun bm!51451 () Bool)

(assert (=> bm!51451 (= call!51452 (getCurrentListMapNoExtraKeys!4603 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1142336 () Bool)

(declare-fun res!761350 () Bool)

(assert (=> b!1142336 (=> (not res!761350) (not e!649909))))

(assert (=> b!1142336 (= res!761350 (arrayNoDuplicates!0 lt!509156 #b00000000000000000000000000000000 Nil!25106))))

(declare-fun b!1142337 () Bool)

(assert (=> b!1142337 (= e!649913 (= call!51451 call!51452))))

(declare-fun b!1142338 () Bool)

(declare-fun e!649912 () Bool)

(assert (=> b!1142338 (= e!649912 true)))

(declare-fun lt!509166 () V!43379)

(assert (=> b!1142338 (= (-!1254 (+!3504 lt!509162 (tuple2!18309 (select (arr!35741 _keys!1208) from!1455) lt!509166)) (select (arr!35741 _keys!1208) from!1455)) lt!509162)))

(declare-fun lt!509152 () Unit!37399)

(declare-fun addThenRemoveForNewKeyIsSame!109 (ListLongMap!16289 (_ BitVec 64) V!43379) Unit!37399)

(assert (=> b!1142338 (= lt!509152 (addThenRemoveForNewKeyIsSame!109 lt!509162 (select (arr!35741 _keys!1208) from!1455) lt!509166))))

(declare-fun get!18183 (ValueCell!13635 V!43379) V!43379)

(assert (=> b!1142338 (= lt!509166 (get!18183 (select (arr!35742 _values!996) from!1455) lt!509163))))

(declare-fun lt!509153 () Unit!37399)

(assert (=> b!1142338 (= lt!509153 e!649911)))

(declare-fun c!112242 () Bool)

(assert (=> b!1142338 (= c!112242 (contains!6663 lt!509162 k0!934))))

(assert (=> b!1142338 (= lt!509162 (getCurrentListMapNoExtraKeys!4603 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1142339 () Bool)

(declare-fun e!649905 () Bool)

(assert (=> b!1142339 (= e!649905 (and e!649904 mapRes!44858))))

(declare-fun condMapEmpty!44858 () Bool)

(declare-fun mapDefault!44858 () ValueCell!13635)

(assert (=> b!1142339 (= condMapEmpty!44858 (= (arr!35742 _values!996) ((as const (Array (_ BitVec 32) ValueCell!13635)) mapDefault!44858)))))

(declare-fun mapIsEmpty!44858 () Bool)

(assert (=> mapIsEmpty!44858 mapRes!44858))

(declare-fun b!1142340 () Bool)

(declare-fun res!761358 () Bool)

(assert (=> b!1142340 (=> (not res!761358) (not e!649900))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1142340 (= res!761358 (validKeyInArray!0 k0!934))))

(declare-fun b!1142341 () Bool)

(declare-fun res!761353 () Bool)

(assert (=> b!1142341 (=> (not res!761353) (not e!649900))))

(assert (=> b!1142341 (= res!761353 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun bm!51452 () Bool)

(assert (=> bm!51452 (= call!51455 call!51449)))

(declare-fun b!1142342 () Bool)

(declare-fun res!761356 () Bool)

(assert (=> b!1142342 (=> (not res!761356) (not e!649900))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1142342 (= res!761356 (validMask!0 mask!1564))))

(declare-fun b!1142343 () Bool)

(assert (=> b!1142343 (= e!649910 e!649912)))

(declare-fun res!761354 () Bool)

(assert (=> b!1142343 (=> res!761354 e!649912)))

(assert (=> b!1142343 (= res!761354 (not (= (select (arr!35741 _keys!1208) from!1455) k0!934)))))

(assert (=> b!1142343 e!649913))

(declare-fun c!112238 () Bool)

(assert (=> b!1142343 (= c!112238 (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673))))

(declare-fun lt!509164 () Unit!37399)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!510 (array!74188 array!74190 (_ BitVec 32) (_ BitVec 32) V!43379 V!43379 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!37399)

(assert (=> b!1142343 (= lt!509164 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!510 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1142344 () Bool)

(declare-fun Unit!37402 () Unit!37399)

(assert (=> b!1142344 (= e!649911 Unit!37402)))

(declare-fun bm!51453 () Bool)

(assert (=> bm!51453 (= call!51450 call!51454)))

(declare-fun b!1142345 () Bool)

(declare-fun lt!509149 () Unit!37399)

(assert (=> b!1142345 (= e!649902 lt!509149)))

(assert (=> b!1142345 (= lt!509149 call!51455)))

(assert (=> b!1142345 call!51450))

(declare-fun b!1142346 () Bool)

(assert (=> b!1142346 (= e!649902 e!649908)))

(declare-fun c!112241 () Bool)

(assert (=> b!1142346 (= c!112241 (and (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!509159))))

(declare-fun res!761359 () Bool)

(assert (=> start!98590 (=> (not res!761359) (not e!649900))))

(assert (=> start!98590 (= res!761359 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!36278 _keys!1208))))))

(assert (=> start!98590 e!649900))

(assert (=> start!98590 tp_is_empty!28689))

(declare-fun array_inv!27264 (array!74188) Bool)

(assert (=> start!98590 (array_inv!27264 _keys!1208)))

(assert (=> start!98590 true))

(assert (=> start!98590 tp!85189))

(declare-fun array_inv!27265 (array!74190) Bool)

(assert (=> start!98590 (and (array_inv!27265 _values!996) e!649905)))

(declare-fun b!1142347 () Bool)

(declare-fun Unit!37403 () Unit!37399)

(assert (=> b!1142347 (= e!649908 Unit!37403)))

(declare-fun b!1142348 () Bool)

(assert (=> b!1142348 (= e!649914 tp_is_empty!28689)))

(assert (= (and start!98590 res!761359) b!1142342))

(assert (= (and b!1142342 res!761356) b!1142335))

(assert (= (and b!1142335 res!761349) b!1142341))

(assert (= (and b!1142341 res!761353) b!1142334))

(assert (= (and b!1142334 res!761348) b!1142322))

(assert (= (and b!1142322 res!761351) b!1142340))

(assert (= (and b!1142340 res!761358) b!1142331))

(assert (= (and b!1142331 res!761360) b!1142324))

(assert (= (and b!1142324 res!761347) b!1142336))

(assert (= (and b!1142336 res!761350) b!1142332))

(assert (= (and b!1142332 (not res!761355)) b!1142329))

(assert (= (and b!1142329 (not res!761357)) b!1142343))

(assert (= (and b!1142343 c!112238) b!1142323))

(assert (= (and b!1142343 (not c!112238)) b!1142337))

(assert (= (or b!1142323 b!1142337) bm!51449))

(assert (= (or b!1142323 b!1142337) bm!51451))

(assert (= (and b!1142343 (not res!761354)) b!1142338))

(assert (= (and b!1142338 c!112242) b!1142328))

(assert (= (and b!1142338 (not c!112242)) b!1142344))

(assert (= (and b!1142328 c!112240) b!1142326))

(assert (= (and b!1142328 (not c!112240)) b!1142327))

(assert (= (and b!1142327 c!112239) b!1142345))

(assert (= (and b!1142327 (not c!112239)) b!1142346))

(assert (= (and b!1142346 c!112241) b!1142330))

(assert (= (and b!1142346 (not c!112241)) b!1142347))

(assert (= (or b!1142345 b!1142330) bm!51452))

(assert (= (or b!1142345 b!1142330) bm!51447))

(assert (= (or b!1142345 b!1142330) bm!51453))

(assert (= (or b!1142326 bm!51453) bm!51446))

(assert (= (or b!1142326 bm!51452) bm!51448))

(assert (= (or b!1142326 bm!51447) bm!51450))

(assert (= (and b!1142328 c!112237) b!1142325))

(assert (= (and b!1142328 (not c!112237)) b!1142320))

(assert (= (and b!1142328 res!761352) b!1142321))

(assert (= (and b!1142339 condMapEmpty!44858) mapIsEmpty!44858))

(assert (= (and b!1142339 (not condMapEmpty!44858)) mapNonEmpty!44858))

(get-info :version)

(assert (= (and mapNonEmpty!44858 ((_ is ValueCellFull!13635) mapValue!44858)) b!1142348))

(assert (= (and b!1142339 ((_ is ValueCellFull!13635) mapDefault!44858)) b!1142333))

(assert (= start!98590 b!1142339))

(declare-fun b_lambda!19283 () Bool)

(assert (=> (not b_lambda!19283) (not b!1142329)))

(declare-fun t!36265 () Bool)

(declare-fun tb!8979 () Bool)

(assert (=> (and start!98590 (= defaultEntry!1004 defaultEntry!1004) t!36265) tb!8979))

(declare-fun result!18515 () Bool)

(assert (=> tb!8979 (= result!18515 tp_is_empty!28689)))

(assert (=> b!1142329 t!36265))

(declare-fun b_and!39183 () Bool)

(assert (= b_and!39181 (and (=> t!36265 result!18515) b_and!39183)))

(declare-fun m!1053647 () Bool)

(assert (=> b!1142341 m!1053647))

(declare-fun m!1053649 () Bool)

(assert (=> b!1142342 m!1053649))

(declare-fun m!1053651 () Bool)

(assert (=> bm!51446 m!1053651))

(declare-fun m!1053653 () Bool)

(assert (=> b!1142343 m!1053653))

(declare-fun m!1053655 () Bool)

(assert (=> b!1142343 m!1053655))

(declare-fun m!1053657 () Bool)

(assert (=> b!1142338 m!1053657))

(declare-fun m!1053659 () Bool)

(assert (=> b!1142338 m!1053659))

(declare-fun m!1053661 () Bool)

(assert (=> b!1142338 m!1053661))

(assert (=> b!1142338 m!1053661))

(declare-fun m!1053663 () Bool)

(assert (=> b!1142338 m!1053663))

(declare-fun m!1053665 () Bool)

(assert (=> b!1142338 m!1053665))

(assert (=> b!1142338 m!1053653))

(declare-fun m!1053667 () Bool)

(assert (=> b!1142338 m!1053667))

(assert (=> b!1142338 m!1053665))

(assert (=> b!1142338 m!1053653))

(declare-fun m!1053669 () Bool)

(assert (=> b!1142338 m!1053669))

(assert (=> b!1142338 m!1053653))

(declare-fun m!1053671 () Bool)

(assert (=> bm!51449 m!1053671))

(declare-fun m!1053673 () Bool)

(assert (=> b!1142332 m!1053673))

(declare-fun m!1053675 () Bool)

(assert (=> b!1142332 m!1053675))

(declare-fun m!1053677 () Bool)

(assert (=> start!98590 m!1053677))

(declare-fun m!1053679 () Bool)

(assert (=> start!98590 m!1053679))

(declare-fun m!1053681 () Bool)

(assert (=> bm!51448 m!1053681))

(assert (=> bm!51451 m!1053657))

(declare-fun m!1053683 () Bool)

(assert (=> b!1142334 m!1053683))

(declare-fun m!1053685 () Bool)

(assert (=> b!1142336 m!1053685))

(declare-fun m!1053687 () Bool)

(assert (=> b!1142325 m!1053687))

(declare-fun m!1053689 () Bool)

(assert (=> b!1142340 m!1053689))

(declare-fun m!1053691 () Bool)

(assert (=> b!1142329 m!1053691))

(declare-fun m!1053693 () Bool)

(assert (=> b!1142329 m!1053693))

(declare-fun m!1053695 () Bool)

(assert (=> b!1142329 m!1053695))

(declare-fun m!1053697 () Bool)

(assert (=> b!1142329 m!1053697))

(declare-fun m!1053699 () Bool)

(assert (=> b!1142331 m!1053699))

(declare-fun m!1053701 () Bool)

(assert (=> b!1142324 m!1053701))

(declare-fun m!1053703 () Bool)

(assert (=> b!1142324 m!1053703))

(declare-fun m!1053705 () Bool)

(assert (=> b!1142323 m!1053705))

(declare-fun m!1053707 () Bool)

(assert (=> b!1142326 m!1053707))

(declare-fun m!1053709 () Bool)

(assert (=> b!1142326 m!1053709))

(declare-fun m!1053711 () Bool)

(assert (=> b!1142326 m!1053711))

(declare-fun m!1053713 () Bool)

(assert (=> mapNonEmpty!44858 m!1053713))

(assert (=> b!1142321 m!1053687))

(declare-fun m!1053715 () Bool)

(assert (=> b!1142328 m!1053715))

(declare-fun m!1053717 () Bool)

(assert (=> b!1142328 m!1053717))

(declare-fun m!1053719 () Bool)

(assert (=> b!1142328 m!1053719))

(declare-fun m!1053721 () Bool)

(assert (=> b!1142328 m!1053721))

(declare-fun m!1053723 () Bool)

(assert (=> bm!51450 m!1053723))

(check-sat (not b!1142343) (not bm!51450) (not b!1142338) (not b!1142336) tp_is_empty!28689 (not b_next!24159) b_and!39183 (not bm!51449) (not b!1142325) (not b!1142329) (not mapNonEmpty!44858) (not bm!51448) (not b!1142334) (not b!1142323) (not b!1142328) (not b_lambda!19283) (not b!1142326) (not bm!51451) (not bm!51446) (not b!1142324) (not b!1142340) (not b!1142321) (not start!98590) (not b!1142341) (not b!1142342) (not b!1142332))
(check-sat b_and!39183 (not b_next!24159))
