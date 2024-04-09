; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!98962 () Bool)

(assert start!98962)

(declare-fun b_free!24531 () Bool)

(declare-fun b_next!24531 () Bool)

(assert (=> start!98962 (= b_free!24531 (not b_next!24531))))

(declare-fun tp!86305 () Bool)

(declare-fun b_and!39925 () Bool)

(assert (=> start!98962 (= tp!86305 b_and!39925)))

(declare-datatypes ((V!43875 0))(
  ( (V!43876 (val!14587 Int)) )
))
(declare-fun zeroValue!944 () V!43875)

(declare-fun bm!55910 () Bool)

(declare-datatypes ((tuple2!18644 0))(
  ( (tuple2!18645 (_1!9332 (_ BitVec 64)) (_2!9332 V!43875)) )
))
(declare-datatypes ((List!25422 0))(
  ( (Nil!25419) (Cons!25418 (h!26627 tuple2!18644) (t!36952 List!25422)) )
))
(declare-datatypes ((ListLongMap!16625 0))(
  ( (ListLongMap!16626 (toList!8328 List!25422)) )
))
(declare-fun lt!521221 () ListLongMap!16625)

(declare-fun c!115589 () Bool)

(declare-fun call!55916 () ListLongMap!16625)

(declare-fun c!115585 () Bool)

(declare-fun lt!521217 () ListLongMap!16625)

(declare-fun minValue!944 () V!43875)

(declare-fun +!3654 (ListLongMap!16625 tuple2!18644) ListLongMap!16625)

(assert (=> bm!55910 (= call!55916 (+!3654 (ite c!115589 lt!521221 lt!521217) (ite c!115589 (tuple2!18645 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944) (ite c!115585 (tuple2!18645 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!18645 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944)))))))

(declare-fun bm!55911 () Bool)

(declare-datatypes ((Unit!38102 0))(
  ( (Unit!38103) )
))
(declare-fun call!55920 () Unit!38102)

(declare-fun call!55919 () Unit!38102)

(assert (=> bm!55911 (= call!55920 call!55919)))

(declare-fun b!1159374 () Bool)

(declare-fun e!659335 () Bool)

(declare-fun e!659342 () Bool)

(assert (=> b!1159374 (= e!659335 e!659342)))

(declare-fun res!769666 () Bool)

(assert (=> b!1159374 (=> res!769666 e!659342)))

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1159374 (= res!769666 (not (= from!1455 i!673)))))

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-datatypes ((ValueCell!13821 0))(
  ( (ValueCellFull!13821 (v!17225 V!43875)) (EmptyCell!13821) )
))
(declare-datatypes ((array!74912 0))(
  ( (array!74913 (arr!36103 (Array (_ BitVec 32) ValueCell!13821)) (size!36640 (_ BitVec 32))) )
))
(declare-fun lt!521222 () array!74912)

(declare-fun lt!521203 () ListLongMap!16625)

(declare-fun defaultEntry!1004 () Int)

(declare-datatypes ((array!74914 0))(
  ( (array!74915 (arr!36104 (Array (_ BitVec 32) (_ BitVec 64))) (size!36641 (_ BitVec 32))) )
))
(declare-fun lt!521219 () array!74914)

(declare-fun getCurrentListMapNoExtraKeys!4764 (array!74914 array!74912 (_ BitVec 32) (_ BitVec 32) V!43875 V!43875 (_ BitVec 32) Int) ListLongMap!16625)

(assert (=> b!1159374 (= lt!521203 (getCurrentListMapNoExtraKeys!4764 lt!521219 lt!521222 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun _values!996 () array!74912)

(declare-fun lt!521223 () V!43875)

(assert (=> b!1159374 (= lt!521222 (array!74913 (store (arr!36103 _values!996) i!673 (ValueCellFull!13821 lt!521223)) (size!36640 _values!996)))))

(declare-fun dynLambda!2768 (Int (_ BitVec 64)) V!43875)

(assert (=> b!1159374 (= lt!521223 (dynLambda!2768 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun _keys!1208 () array!74914)

(declare-fun lt!521212 () ListLongMap!16625)

(assert (=> b!1159374 (= lt!521212 (getCurrentListMapNoExtraKeys!4764 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1159375 () Bool)

(declare-fun e!659332 () Unit!38102)

(declare-fun lt!521204 () Unit!38102)

(assert (=> b!1159375 (= e!659332 lt!521204)))

(assert (=> b!1159375 (= lt!521204 call!55920)))

(declare-fun call!55917 () Bool)

(assert (=> b!1159375 call!55917))

(declare-fun b!1159376 () Bool)

(declare-fun e!659340 () Bool)

(declare-fun k0!934 () (_ BitVec 64))

(declare-fun lt!521210 () Bool)

(assert (=> b!1159376 (= e!659340 (ite (= k0!934 #b0000000000000000000000000000000000000000000000000000000000000000) (not lt!521210) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!1159377 () Bool)

(assert (=> b!1159377 call!55917))

(declare-fun lt!521213 () Unit!38102)

(assert (=> b!1159377 (= lt!521213 call!55920)))

(declare-fun e!659334 () Unit!38102)

(assert (=> b!1159377 (= e!659334 lt!521213)))

(declare-fun call!55918 () ListLongMap!16625)

(declare-fun bm!55912 () Bool)

(declare-fun call!55913 () Bool)

(declare-fun contains!6810 (ListLongMap!16625 (_ BitVec 64)) Bool)

(assert (=> bm!55912 (= call!55913 (contains!6810 (ite c!115589 lt!521221 call!55918) k0!934))))

(declare-fun mapIsEmpty!45416 () Bool)

(declare-fun mapRes!45416 () Bool)

(assert (=> mapIsEmpty!45416 mapRes!45416))

(declare-fun res!769667 () Bool)

(declare-fun e!659329 () Bool)

(assert (=> start!98962 (=> (not res!769667) (not e!659329))))

(assert (=> start!98962 (= res!769667 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!36641 _keys!1208))))))

(assert (=> start!98962 e!659329))

(declare-fun tp_is_empty!29061 () Bool)

(assert (=> start!98962 tp_is_empty!29061))

(declare-fun array_inv!27492 (array!74914) Bool)

(assert (=> start!98962 (array_inv!27492 _keys!1208)))

(assert (=> start!98962 true))

(assert (=> start!98962 tp!86305))

(declare-fun e!659331 () Bool)

(declare-fun array_inv!27493 (array!74912) Bool)

(assert (=> start!98962 (and (array_inv!27493 _values!996) e!659331)))

(declare-fun b!1159378 () Bool)

(declare-fun res!769660 () Bool)

(assert (=> b!1159378 (=> (not res!769660) (not e!659329))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!74914 (_ BitVec 32)) Bool)

(assert (=> b!1159378 (= res!769660 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1159379 () Bool)

(declare-fun e!659343 () Bool)

(assert (=> b!1159379 (= e!659329 e!659343)))

(declare-fun res!769673 () Bool)

(assert (=> b!1159379 (=> (not res!769673) (not e!659343))))

(assert (=> b!1159379 (= res!769673 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!521219 mask!1564))))

(assert (=> b!1159379 (= lt!521219 (array!74915 (store (arr!36104 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!36641 _keys!1208)))))

(declare-fun b!1159380 () Bool)

(assert (=> b!1159380 (= e!659343 (not e!659335))))

(declare-fun res!769668 () Bool)

(assert (=> b!1159380 (=> res!769668 e!659335)))

(assert (=> b!1159380 (= res!769668 (bvsgt from!1455 i!673))))

(declare-fun arrayContainsKey!0 (array!74914 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1159380 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-fun lt!521211 () Unit!38102)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!74914 (_ BitVec 64) (_ BitVec 32)) Unit!38102)

(assert (=> b!1159380 (= lt!521211 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun mapNonEmpty!45416 () Bool)

(declare-fun tp!86304 () Bool)

(declare-fun e!659327 () Bool)

(assert (=> mapNonEmpty!45416 (= mapRes!45416 (and tp!86304 e!659327))))

(declare-fun mapRest!45416 () (Array (_ BitVec 32) ValueCell!13821))

(declare-fun mapKey!45416 () (_ BitVec 32))

(declare-fun mapValue!45416 () ValueCell!13821)

(assert (=> mapNonEmpty!45416 (= (arr!36103 _values!996) (store mapRest!45416 mapKey!45416 mapValue!45416))))

(declare-fun b!1159381 () Bool)

(declare-fun res!769672 () Bool)

(assert (=> b!1159381 (=> (not res!769672) (not e!659329))))

(assert (=> b!1159381 (= res!769672 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!36641 _keys!1208))))))

(declare-fun b!1159382 () Bool)

(declare-fun e!659339 () Bool)

(assert (=> b!1159382 (= e!659331 (and e!659339 mapRes!45416))))

(declare-fun condMapEmpty!45416 () Bool)

(declare-fun mapDefault!45416 () ValueCell!13821)

(assert (=> b!1159382 (= condMapEmpty!45416 (= (arr!36103 _values!996) ((as const (Array (_ BitVec 32) ValueCell!13821)) mapDefault!45416)))))

(declare-fun call!55915 () ListLongMap!16625)

(declare-fun bm!55913 () Bool)

(assert (=> bm!55913 (= call!55915 (getCurrentListMapNoExtraKeys!4764 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun e!659338 () Bool)

(declare-fun b!1159383 () Bool)

(assert (=> b!1159383 (= e!659338 (arrayContainsKey!0 _keys!1208 k0!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun bm!55914 () Bool)

(assert (=> bm!55914 (= call!55918 call!55916)))

(declare-fun b!1159384 () Bool)

(declare-fun res!769662 () Bool)

(assert (=> b!1159384 (=> (not res!769662) (not e!659329))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1159384 (= res!769662 (validKeyInArray!0 k0!934))))

(declare-fun bm!55915 () Bool)

(declare-fun addStillContains!951 (ListLongMap!16625 (_ BitVec 64) V!43875 (_ BitVec 64)) Unit!38102)

(assert (=> bm!55915 (= call!55919 (addStillContains!951 lt!521217 (ite (or c!115589 c!115585) #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000) (ite (or c!115589 c!115585) zeroValue!944 minValue!944) k0!934))))

(declare-fun b!1159385 () Bool)

(assert (=> b!1159385 (= e!659339 tp_is_empty!29061)))

(declare-fun b!1159386 () Bool)

(declare-fun Unit!38104 () Unit!38102)

(assert (=> b!1159386 (= e!659334 Unit!38104)))

(declare-fun b!1159387 () Bool)

(declare-fun e!659330 () Bool)

(declare-fun call!55914 () ListLongMap!16625)

(assert (=> b!1159387 (= e!659330 (= call!55914 call!55915))))

(declare-fun b!1159388 () Bool)

(declare-fun res!769669 () Bool)

(assert (=> b!1159388 (=> (not res!769669) (not e!659329))))

(declare-datatypes ((List!25423 0))(
  ( (Nil!25420) (Cons!25419 (h!26628 (_ BitVec 64)) (t!36953 List!25423)) )
))
(declare-fun arrayNoDuplicates!0 (array!74914 (_ BitVec 32) List!25423) Bool)

(assert (=> b!1159388 (= res!769669 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!25420))))

(declare-fun bm!55916 () Bool)

(assert (=> bm!55916 (= call!55914 (getCurrentListMapNoExtraKeys!4764 lt!521219 lt!521222 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1159389 () Bool)

(assert (=> b!1159389 (contains!6810 call!55916 k0!934)))

(declare-fun lt!521220 () Unit!38102)

(assert (=> b!1159389 (= lt!521220 (addStillContains!951 lt!521221 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944 k0!934))))

(assert (=> b!1159389 call!55913))

(assert (=> b!1159389 (= lt!521221 (+!3654 lt!521217 (tuple2!18645 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944)))))

(declare-fun lt!521206 () Unit!38102)

(assert (=> b!1159389 (= lt!521206 call!55919)))

(declare-fun e!659341 () Unit!38102)

(assert (=> b!1159389 (= e!659341 lt!521220)))

(declare-fun b!1159390 () Bool)

(declare-fun -!1400 (ListLongMap!16625 (_ BitVec 64)) ListLongMap!16625)

(assert (=> b!1159390 (= e!659330 (= call!55914 (-!1400 call!55915 k0!934)))))

(declare-fun b!1159391 () Bool)

(declare-fun res!769665 () Bool)

(assert (=> b!1159391 (=> (not res!769665) (not e!659343))))

(assert (=> b!1159391 (= res!769665 (arrayNoDuplicates!0 lt!521219 #b00000000000000000000000000000000 Nil!25420))))

(declare-fun b!1159392 () Bool)

(declare-fun lt!521215 () ListLongMap!16625)

(declare-fun e!659337 () Bool)

(assert (=> b!1159392 (= e!659337 (= lt!521215 (getCurrentListMapNoExtraKeys!4764 lt!521219 lt!521222 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004)))))

(declare-fun b!1159393 () Bool)

(assert (=> b!1159393 (= e!659340 (arrayContainsKey!0 _keys!1208 k0!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun b!1159394 () Bool)

(declare-fun res!769671 () Bool)

(assert (=> b!1159394 (=> (not res!769671) (not e!659329))))

(assert (=> b!1159394 (= res!769671 (= (select (arr!36104 _keys!1208) i!673) k0!934))))

(declare-fun b!1159395 () Bool)

(declare-fun e!659333 () Unit!38102)

(declare-fun Unit!38105 () Unit!38102)

(assert (=> b!1159395 (= e!659333 Unit!38105)))

(declare-fun bm!55917 () Bool)

(assert (=> bm!55917 (= call!55917 call!55913)))

(declare-fun b!1159396 () Bool)

(assert (=> b!1159396 (= e!659332 e!659334)))

(declare-fun c!115590 () Bool)

(assert (=> b!1159396 (= c!115590 (and (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!521210))))

(declare-fun b!1159397 () Bool)

(declare-fun Unit!38106 () Unit!38102)

(assert (=> b!1159397 (= e!659333 Unit!38106)))

(assert (=> b!1159397 (= lt!521210 (= (bvand extraKeys!923 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(assert (=> b!1159397 (= c!115589 (and (not lt!521210) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun lt!521209 () Unit!38102)

(assert (=> b!1159397 (= lt!521209 e!659341)))

(declare-fun lt!521205 () Unit!38102)

(declare-fun lemmaListMapContainsThenArrayContainsFrom!525 (array!74914 array!74912 (_ BitVec 32) (_ BitVec 32) V!43875 V!43875 (_ BitVec 64) (_ BitVec 32) Int) Unit!38102)

(assert (=> b!1159397 (= lt!521205 (lemmaListMapContainsThenArrayContainsFrom!525 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun c!115588 () Bool)

(assert (=> b!1159397 (= c!115588 (and (not (= k0!934 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!934 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun res!769663 () Bool)

(assert (=> b!1159397 (= res!769663 e!659340)))

(assert (=> b!1159397 (=> (not res!769663) (not e!659338))))

(assert (=> b!1159397 e!659338))

(declare-fun lt!521208 () Unit!38102)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!74914 (_ BitVec 32) (_ BitVec 32)) Unit!38102)

(assert (=> b!1159397 (= lt!521208 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1208 #b00000000000000000000000000000000 from!1455))))

(assert (=> b!1159397 (arrayNoDuplicates!0 _keys!1208 from!1455 Nil!25420)))

(declare-fun lt!521216 () Unit!38102)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!74914 (_ BitVec 64) (_ BitVec 32) List!25423) Unit!38102)

(assert (=> b!1159397 (= lt!521216 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!1208 k0!934 from!1455 Nil!25420))))

(assert (=> b!1159397 false))

(declare-fun b!1159398 () Bool)

(assert (=> b!1159398 (= e!659327 tp_is_empty!29061)))

(declare-fun b!1159399 () Bool)

(declare-fun e!659328 () Bool)

(assert (=> b!1159399 (= e!659342 e!659328)))

(declare-fun res!769664 () Bool)

(assert (=> b!1159399 (=> res!769664 e!659328)))

(assert (=> b!1159399 (= res!769664 (not (= (select (arr!36104 _keys!1208) from!1455) k0!934)))))

(assert (=> b!1159399 e!659330))

(declare-fun c!115586 () Bool)

(assert (=> b!1159399 (= c!115586 (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673))))

(declare-fun lt!521214 () Unit!38102)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!625 (array!74914 array!74912 (_ BitVec 32) (_ BitVec 32) V!43875 V!43875 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!38102)

(assert (=> b!1159399 (= lt!521214 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!625 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1159400 () Bool)

(assert (=> b!1159400 (= c!115585 (and (not lt!521210) (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(assert (=> b!1159400 (= e!659341 e!659332)))

(declare-fun b!1159401 () Bool)

(declare-fun res!769661 () Bool)

(assert (=> b!1159401 (=> (not res!769661) (not e!659329))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1159401 (= res!769661 (validMask!0 mask!1564))))

(declare-fun b!1159402 () Bool)

(assert (=> b!1159402 (= e!659328 true)))

(assert (=> b!1159402 e!659337))

(declare-fun res!769670 () Bool)

(assert (=> b!1159402 (=> (not res!769670) (not e!659337))))

(assert (=> b!1159402 (= res!769670 (= lt!521215 lt!521217))))

(assert (=> b!1159402 (= lt!521215 (-!1400 lt!521212 k0!934))))

(declare-fun lt!521218 () V!43875)

(assert (=> b!1159402 (= (-!1400 (+!3654 lt!521217 (tuple2!18645 (select (arr!36104 _keys!1208) from!1455) lt!521218)) (select (arr!36104 _keys!1208) from!1455)) lt!521217)))

(declare-fun lt!521207 () Unit!38102)

(declare-fun addThenRemoveForNewKeyIsSame!238 (ListLongMap!16625 (_ BitVec 64) V!43875) Unit!38102)

(assert (=> b!1159402 (= lt!521207 (addThenRemoveForNewKeyIsSame!238 lt!521217 (select (arr!36104 _keys!1208) from!1455) lt!521218))))

(declare-fun get!18436 (ValueCell!13821 V!43875) V!43875)

(assert (=> b!1159402 (= lt!521218 (get!18436 (select (arr!36103 _values!996) from!1455) lt!521223))))

(declare-fun lt!521202 () Unit!38102)

(assert (=> b!1159402 (= lt!521202 e!659333)))

(declare-fun c!115587 () Bool)

(assert (=> b!1159402 (= c!115587 (contains!6810 lt!521217 k0!934))))

(assert (=> b!1159402 (= lt!521217 (getCurrentListMapNoExtraKeys!4764 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1159403 () Bool)

(declare-fun res!769659 () Bool)

(assert (=> b!1159403 (=> (not res!769659) (not e!659329))))

(assert (=> b!1159403 (= res!769659 (and (= (size!36640 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!36641 _keys!1208) (size!36640 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(assert (= (and start!98962 res!769667) b!1159401))

(assert (= (and b!1159401 res!769661) b!1159403))

(assert (= (and b!1159403 res!769659) b!1159378))

(assert (= (and b!1159378 res!769660) b!1159388))

(assert (= (and b!1159388 res!769669) b!1159381))

(assert (= (and b!1159381 res!769672) b!1159384))

(assert (= (and b!1159384 res!769662) b!1159394))

(assert (= (and b!1159394 res!769671) b!1159379))

(assert (= (and b!1159379 res!769673) b!1159391))

(assert (= (and b!1159391 res!769665) b!1159380))

(assert (= (and b!1159380 (not res!769668)) b!1159374))

(assert (= (and b!1159374 (not res!769666)) b!1159399))

(assert (= (and b!1159399 c!115586) b!1159390))

(assert (= (and b!1159399 (not c!115586)) b!1159387))

(assert (= (or b!1159390 b!1159387) bm!55916))

(assert (= (or b!1159390 b!1159387) bm!55913))

(assert (= (and b!1159399 (not res!769664)) b!1159402))

(assert (= (and b!1159402 c!115587) b!1159397))

(assert (= (and b!1159402 (not c!115587)) b!1159395))

(assert (= (and b!1159397 c!115589) b!1159389))

(assert (= (and b!1159397 (not c!115589)) b!1159400))

(assert (= (and b!1159400 c!115585) b!1159375))

(assert (= (and b!1159400 (not c!115585)) b!1159396))

(assert (= (and b!1159396 c!115590) b!1159377))

(assert (= (and b!1159396 (not c!115590)) b!1159386))

(assert (= (or b!1159375 b!1159377) bm!55911))

(assert (= (or b!1159375 b!1159377) bm!55914))

(assert (= (or b!1159375 b!1159377) bm!55917))

(assert (= (or b!1159389 bm!55917) bm!55912))

(assert (= (or b!1159389 bm!55911) bm!55915))

(assert (= (or b!1159389 bm!55914) bm!55910))

(assert (= (and b!1159397 c!115588) b!1159393))

(assert (= (and b!1159397 (not c!115588)) b!1159376))

(assert (= (and b!1159397 res!769663) b!1159383))

(assert (= (and b!1159402 res!769670) b!1159392))

(assert (= (and b!1159382 condMapEmpty!45416) mapIsEmpty!45416))

(assert (= (and b!1159382 (not condMapEmpty!45416)) mapNonEmpty!45416))

(get-info :version)

(assert (= (and mapNonEmpty!45416 ((_ is ValueCellFull!13821) mapValue!45416)) b!1159398))

(assert (= (and b!1159382 ((_ is ValueCellFull!13821) mapDefault!45416)) b!1159385))

(assert (= start!98962 b!1159382))

(declare-fun b_lambda!19655 () Bool)

(assert (=> (not b_lambda!19655) (not b!1159374)))

(declare-fun t!36951 () Bool)

(declare-fun tb!9351 () Bool)

(assert (=> (and start!98962 (= defaultEntry!1004 defaultEntry!1004) t!36951) tb!9351))

(declare-fun result!19259 () Bool)

(assert (=> tb!9351 (= result!19259 tp_is_empty!29061)))

(assert (=> b!1159374 t!36951))

(declare-fun b_and!39927 () Bool)

(assert (= b_and!39925 (and (=> t!36951 result!19259) b_and!39927)))

(declare-fun m!1068503 () Bool)

(assert (=> bm!55915 m!1068503))

(declare-fun m!1068505 () Bool)

(assert (=> b!1159397 m!1068505))

(declare-fun m!1068507 () Bool)

(assert (=> b!1159397 m!1068507))

(declare-fun m!1068509 () Bool)

(assert (=> b!1159397 m!1068509))

(declare-fun m!1068511 () Bool)

(assert (=> b!1159397 m!1068511))

(declare-fun m!1068513 () Bool)

(assert (=> mapNonEmpty!45416 m!1068513))

(declare-fun m!1068515 () Bool)

(assert (=> b!1159394 m!1068515))

(declare-fun m!1068517 () Bool)

(assert (=> b!1159374 m!1068517))

(declare-fun m!1068519 () Bool)

(assert (=> b!1159374 m!1068519))

(declare-fun m!1068521 () Bool)

(assert (=> b!1159374 m!1068521))

(declare-fun m!1068523 () Bool)

(assert (=> b!1159374 m!1068523))

(declare-fun m!1068525 () Bool)

(assert (=> bm!55910 m!1068525))

(declare-fun m!1068527 () Bool)

(assert (=> bm!55916 m!1068527))

(declare-fun m!1068529 () Bool)

(assert (=> b!1159379 m!1068529))

(declare-fun m!1068531 () Bool)

(assert (=> b!1159379 m!1068531))

(declare-fun m!1068533 () Bool)

(assert (=> b!1159401 m!1068533))

(declare-fun m!1068535 () Bool)

(assert (=> b!1159388 m!1068535))

(declare-fun m!1068537 () Bool)

(assert (=> b!1159390 m!1068537))

(declare-fun m!1068539 () Bool)

(assert (=> b!1159384 m!1068539))

(declare-fun m!1068541 () Bool)

(assert (=> bm!55912 m!1068541))

(declare-fun m!1068543 () Bool)

(assert (=> b!1159380 m!1068543))

(declare-fun m!1068545 () Bool)

(assert (=> b!1159380 m!1068545))

(declare-fun m!1068547 () Bool)

(assert (=> b!1159391 m!1068547))

(declare-fun m!1068549 () Bool)

(assert (=> b!1159399 m!1068549))

(declare-fun m!1068551 () Bool)

(assert (=> b!1159399 m!1068551))

(declare-fun m!1068553 () Bool)

(assert (=> b!1159389 m!1068553))

(declare-fun m!1068555 () Bool)

(assert (=> b!1159389 m!1068555))

(declare-fun m!1068557 () Bool)

(assert (=> b!1159389 m!1068557))

(declare-fun m!1068559 () Bool)

(assert (=> bm!55913 m!1068559))

(declare-fun m!1068561 () Bool)

(assert (=> start!98962 m!1068561))

(declare-fun m!1068563 () Bool)

(assert (=> start!98962 m!1068563))

(declare-fun m!1068565 () Bool)

(assert (=> b!1159383 m!1068565))

(declare-fun m!1068567 () Bool)

(assert (=> b!1159402 m!1068567))

(declare-fun m!1068569 () Bool)

(assert (=> b!1159402 m!1068569))

(assert (=> b!1159402 m!1068559))

(assert (=> b!1159402 m!1068567))

(declare-fun m!1068571 () Bool)

(assert (=> b!1159402 m!1068571))

(assert (=> b!1159402 m!1068549))

(declare-fun m!1068573 () Bool)

(assert (=> b!1159402 m!1068573))

(assert (=> b!1159402 m!1068549))

(declare-fun m!1068575 () Bool)

(assert (=> b!1159402 m!1068575))

(declare-fun m!1068577 () Bool)

(assert (=> b!1159402 m!1068577))

(assert (=> b!1159402 m!1068549))

(declare-fun m!1068579 () Bool)

(assert (=> b!1159402 m!1068579))

(assert (=> b!1159402 m!1068573))

(declare-fun m!1068581 () Bool)

(assert (=> b!1159378 m!1068581))

(assert (=> b!1159393 m!1068565))

(assert (=> b!1159392 m!1068527))

(check-sat (not b!1159392) tp_is_empty!29061 (not b_next!24531) (not b!1159393) (not b!1159389) (not b!1159391) (not bm!55916) (not b_lambda!19655) (not b!1159379) (not b!1159378) (not b!1159402) (not b!1159397) (not b!1159384) (not b!1159390) (not bm!55912) (not b!1159383) (not b!1159401) (not bm!55910) (not mapNonEmpty!45416) (not bm!55913) b_and!39927 (not b!1159374) (not start!98962) (not b!1159388) (not b!1159380) (not b!1159399) (not bm!55915))
(check-sat b_and!39927 (not b_next!24531))
