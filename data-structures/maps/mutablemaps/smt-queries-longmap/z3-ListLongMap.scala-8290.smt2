; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!101050 () Bool)

(assert start!101050)

(declare-fun b_free!26013 () Bool)

(declare-fun b_next!26013 () Bool)

(assert (=> start!101050 (= b_free!26013 (not b_next!26013))))

(declare-fun tp!91055 () Bool)

(declare-fun b_and!43117 () Bool)

(assert (=> start!101050 (= tp!91055 b_and!43117)))

(declare-fun b!1210227 () Bool)

(declare-datatypes ((V!46083 0))(
  ( (V!46084 (val!15415 Int)) )
))
(declare-datatypes ((tuple2!19930 0))(
  ( (tuple2!19931 (_1!9975 (_ BitVec 64)) (_2!9975 V!46083)) )
))
(declare-datatypes ((List!26750 0))(
  ( (Nil!26747) (Cons!26746 (h!27955 tuple2!19930) (t!39750 List!26750)) )
))
(declare-datatypes ((ListLongMap!17911 0))(
  ( (ListLongMap!17912 (toList!8971 List!26750)) )
))
(declare-fun lt!549431 () ListLongMap!17911)

(declare-fun minValue!944 () V!46083)

(declare-fun k0!934 () (_ BitVec 64))

(declare-fun contains!6984 (ListLongMap!17911 (_ BitVec 64)) Bool)

(declare-fun +!3998 (ListLongMap!17911 tuple2!19930) ListLongMap!17911)

(assert (=> b!1210227 (contains!6984 (+!3998 lt!549431 (tuple2!19931 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944)) k0!934)))

(declare-datatypes ((Unit!40036 0))(
  ( (Unit!40037) )
))
(declare-fun lt!549443 () Unit!40036)

(declare-fun addStillContains!1061 (ListLongMap!17911 (_ BitVec 64) V!46083 (_ BitVec 64)) Unit!40036)

(assert (=> b!1210227 (= lt!549443 (addStillContains!1061 lt!549431 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944 k0!934))))

(declare-fun call!59595 () Bool)

(assert (=> b!1210227 call!59595))

(declare-fun call!59599 () ListLongMap!17911)

(assert (=> b!1210227 (= lt!549431 call!59599)))

(declare-fun lt!549440 () Unit!40036)

(declare-fun call!59600 () Unit!40036)

(assert (=> b!1210227 (= lt!549440 call!59600)))

(declare-fun e!687359 () Unit!40036)

(assert (=> b!1210227 (= e!687359 lt!549443)))

(declare-fun b!1210228 () Bool)

(declare-fun res!804290 () Bool)

(declare-fun e!687365 () Bool)

(assert (=> b!1210228 (=> (not res!804290) (not e!687365))))

(declare-datatypes ((array!78194 0))(
  ( (array!78195 (arr!37730 (Array (_ BitVec 32) (_ BitVec 64))) (size!38267 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!78194)

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1210228 (= res!804290 (= (select (arr!37730 _keys!1208) i!673) k0!934))))

(declare-fun b!1210229 () Bool)

(declare-fun res!804295 () Bool)

(assert (=> b!1210229 (=> (not res!804295) (not e!687365))))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1210229 (= res!804295 (validMask!0 mask!1564))))

(declare-fun b!1210230 () Bool)

(declare-fun e!687362 () Unit!40036)

(declare-fun Unit!40038 () Unit!40036)

(assert (=> b!1210230 (= e!687362 Unit!40038)))

(declare-fun e!687361 () Bool)

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun b!1210231 () Bool)

(declare-fun arrayContainsKey!0 (array!78194 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1210231 (= e!687361 (arrayContainsKey!0 _keys!1208 k0!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun b!1210232 () Bool)

(declare-fun res!804299 () Bool)

(assert (=> b!1210232 (=> (not res!804299) (not e!687365))))

(declare-datatypes ((List!26751 0))(
  ( (Nil!26748) (Cons!26747 (h!27956 (_ BitVec 64)) (t!39751 List!26751)) )
))
(declare-fun arrayNoDuplicates!0 (array!78194 (_ BitVec 32) List!26751) Bool)

(assert (=> b!1210232 (= res!804299 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!26748))))

(declare-fun res!804286 () Bool)

(assert (=> start!101050 (=> (not res!804286) (not e!687365))))

(assert (=> start!101050 (= res!804286 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!38267 _keys!1208))))))

(assert (=> start!101050 e!687365))

(declare-fun tp_is_empty!30717 () Bool)

(assert (=> start!101050 tp_is_empty!30717))

(declare-fun array_inv!28642 (array!78194) Bool)

(assert (=> start!101050 (array_inv!28642 _keys!1208)))

(assert (=> start!101050 true))

(assert (=> start!101050 tp!91055))

(declare-datatypes ((ValueCell!14649 0))(
  ( (ValueCellFull!14649 (v!18067 V!46083)) (EmptyCell!14649) )
))
(declare-datatypes ((array!78196 0))(
  ( (array!78197 (arr!37731 (Array (_ BitVec 32) ValueCell!14649)) (size!38268 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!78196)

(declare-fun e!687357 () Bool)

(declare-fun array_inv!28643 (array!78196) Bool)

(assert (=> start!101050 (and (array_inv!28643 _values!996) e!687357)))

(declare-fun call!59598 () ListLongMap!17911)

(declare-fun c!119174 () Bool)

(declare-fun bm!59592 () Bool)

(assert (=> bm!59592 (= call!59595 (contains!6984 (ite c!119174 lt!549431 call!59598) k0!934))))

(declare-fun bm!59593 () Bool)

(declare-fun call!59597 () Unit!40036)

(assert (=> bm!59593 (= call!59597 call!59600)))

(declare-fun b!1210233 () Bool)

(declare-fun e!687356 () Bool)

(assert (=> b!1210233 (= e!687365 e!687356)))

(declare-fun res!804296 () Bool)

(assert (=> b!1210233 (=> (not res!804296) (not e!687356))))

(declare-fun lt!549430 () array!78194)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!78194 (_ BitVec 32)) Bool)

(assert (=> b!1210233 (= res!804296 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!549430 mask!1564))))

(assert (=> b!1210233 (= lt!549430 (array!78195 (store (arr!37730 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!38267 _keys!1208)))))

(declare-fun b!1210234 () Bool)

(declare-fun e!687368 () Unit!40036)

(declare-fun lt!549434 () Unit!40036)

(assert (=> b!1210234 (= e!687368 lt!549434)))

(assert (=> b!1210234 (= lt!549434 call!59597)))

(declare-fun call!59596 () Bool)

(assert (=> b!1210234 call!59596))

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun lt!549429 () Bool)

(declare-fun b!1210235 () Bool)

(assert (=> b!1210235 (= e!687361 (ite (= k0!934 #b0000000000000000000000000000000000000000000000000000000000000000) (not lt!549429) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun zeroValue!944 () V!46083)

(declare-fun c!119177 () Bool)

(declare-fun lt!549437 () ListLongMap!17911)

(declare-fun bm!59594 () Bool)

(assert (=> bm!59594 (= call!59600 (addStillContains!1061 lt!549437 (ite (or c!119174 c!119177) #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000) (ite (or c!119174 c!119177) zeroValue!944 minValue!944) k0!934))))

(declare-fun b!1210236 () Bool)

(declare-fun Unit!40039 () Unit!40036)

(assert (=> b!1210236 (= e!687362 Unit!40039)))

(assert (=> b!1210236 (= lt!549429 (= (bvand extraKeys!923 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(assert (=> b!1210236 (= c!119174 (and (not lt!549429) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun lt!549442 () Unit!40036)

(assert (=> b!1210236 (= lt!549442 e!687359)))

(declare-fun defaultEntry!1004 () Int)

(declare-fun lt!549432 () Unit!40036)

(declare-fun lemmaListMapContainsThenArrayContainsFrom!598 (array!78194 array!78196 (_ BitVec 32) (_ BitVec 32) V!46083 V!46083 (_ BitVec 64) (_ BitVec 32) Int) Unit!40036)

(assert (=> b!1210236 (= lt!549432 (lemmaListMapContainsThenArrayContainsFrom!598 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun c!119173 () Bool)

(assert (=> b!1210236 (= c!119173 (and (not (= k0!934 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!934 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun res!804298 () Bool)

(assert (=> b!1210236 (= res!804298 e!687361)))

(declare-fun e!687369 () Bool)

(assert (=> b!1210236 (=> (not res!804298) (not e!687369))))

(assert (=> b!1210236 e!687369))

(declare-fun lt!549433 () Unit!40036)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!78194 (_ BitVec 32) (_ BitVec 32)) Unit!40036)

(assert (=> b!1210236 (= lt!549433 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1208 #b00000000000000000000000000000000 from!1455))))

(assert (=> b!1210236 (arrayNoDuplicates!0 _keys!1208 from!1455 Nil!26748)))

(declare-fun lt!549427 () Unit!40036)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!78194 (_ BitVec 64) (_ BitVec 32) List!26751) Unit!40036)

(assert (=> b!1210236 (= lt!549427 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!1208 k0!934 from!1455 Nil!26748))))

(assert (=> b!1210236 false))

(declare-fun b!1210237 () Bool)

(declare-fun res!804287 () Bool)

(assert (=> b!1210237 (=> (not res!804287) (not e!687365))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1210237 (= res!804287 (validKeyInArray!0 k0!934))))

(declare-fun b!1210238 () Bool)

(declare-fun e!687363 () Bool)

(assert (=> b!1210238 (= e!687363 tp_is_empty!30717)))

(declare-fun b!1210239 () Bool)

(declare-fun e!687360 () Bool)

(declare-fun e!687367 () Bool)

(assert (=> b!1210239 (= e!687360 e!687367)))

(declare-fun res!804297 () Bool)

(assert (=> b!1210239 (=> res!804297 e!687367)))

(assert (=> b!1210239 (= res!804297 (not (= from!1455 i!673)))))

(declare-fun lt!549441 () array!78196)

(declare-fun lt!549444 () ListLongMap!17911)

(declare-fun getCurrentListMapNoExtraKeys!5377 (array!78194 array!78196 (_ BitVec 32) (_ BitVec 32) V!46083 V!46083 (_ BitVec 32) Int) ListLongMap!17911)

(assert (=> b!1210239 (= lt!549444 (getCurrentListMapNoExtraKeys!5377 lt!549430 lt!549441 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun dynLambda!3293 (Int (_ BitVec 64)) V!46083)

(assert (=> b!1210239 (= lt!549441 (array!78197 (store (arr!37731 _values!996) i!673 (ValueCellFull!14649 (dynLambda!3293 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!38268 _values!996)))))

(declare-fun lt!549438 () ListLongMap!17911)

(assert (=> b!1210239 (= lt!549438 (getCurrentListMapNoExtraKeys!5377 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1210240 () Bool)

(declare-fun mapRes!47944 () Bool)

(assert (=> b!1210240 (= e!687357 (and e!687363 mapRes!47944))))

(declare-fun condMapEmpty!47944 () Bool)

(declare-fun mapDefault!47944 () ValueCell!14649)

(assert (=> b!1210240 (= condMapEmpty!47944 (= (arr!37731 _values!996) ((as const (Array (_ BitVec 32) ValueCell!14649)) mapDefault!47944)))))

(declare-fun b!1210241 () Bool)

(assert (=> b!1210241 call!59596))

(declare-fun lt!549439 () Unit!40036)

(assert (=> b!1210241 (= lt!549439 call!59597)))

(declare-fun e!687355 () Unit!40036)

(assert (=> b!1210241 (= e!687355 lt!549439)))

(declare-fun bm!59595 () Bool)

(declare-fun call!59602 () ListLongMap!17911)

(assert (=> bm!59595 (= call!59602 (getCurrentListMapNoExtraKeys!5377 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1210242 () Bool)

(declare-fun res!804288 () Bool)

(assert (=> b!1210242 (=> (not res!804288) (not e!687365))))

(assert (=> b!1210242 (= res!804288 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!38267 _keys!1208))))))

(declare-fun b!1210243 () Bool)

(declare-fun e!687364 () Bool)

(assert (=> b!1210243 (= e!687364 tp_is_empty!30717)))

(declare-fun b!1210244 () Bool)

(declare-fun e!687370 () Bool)

(declare-fun call!59601 () ListLongMap!17911)

(assert (=> b!1210244 (= e!687370 (= call!59601 call!59602))))

(declare-fun b!1210245 () Bool)

(declare-fun res!804292 () Bool)

(assert (=> b!1210245 (=> (not res!804292) (not e!687356))))

(assert (=> b!1210245 (= res!804292 (arrayNoDuplicates!0 lt!549430 #b00000000000000000000000000000000 Nil!26748))))

(declare-fun bm!59596 () Bool)

(assert (=> bm!59596 (= call!59599 (+!3998 lt!549437 (ite (or c!119174 c!119177) (tuple2!19931 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!19931 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944))))))

(declare-fun mapNonEmpty!47944 () Bool)

(declare-fun tp!91056 () Bool)

(assert (=> mapNonEmpty!47944 (= mapRes!47944 (and tp!91056 e!687364))))

(declare-fun mapKey!47944 () (_ BitVec 32))

(declare-fun mapRest!47944 () (Array (_ BitVec 32) ValueCell!14649))

(declare-fun mapValue!47944 () ValueCell!14649)

(assert (=> mapNonEmpty!47944 (= (arr!37731 _values!996) (store mapRest!47944 mapKey!47944 mapValue!47944))))

(declare-fun b!1210246 () Bool)

(declare-fun e!687358 () Bool)

(assert (=> b!1210246 (= e!687367 e!687358)))

(declare-fun res!804289 () Bool)

(assert (=> b!1210246 (=> res!804289 e!687358)))

(assert (=> b!1210246 (= res!804289 (not (= (select (arr!37730 _keys!1208) from!1455) k0!934)))))

(assert (=> b!1210246 e!687370))

(declare-fun c!119175 () Bool)

(assert (=> b!1210246 (= c!119175 (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673))))

(declare-fun lt!549436 () Unit!40036)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!1078 (array!78194 array!78196 (_ BitVec 32) (_ BitVec 32) V!46083 V!46083 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!40036)

(assert (=> b!1210246 (= lt!549436 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!1078 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun bm!59597 () Bool)

(assert (=> bm!59597 (= call!59601 (getCurrentListMapNoExtraKeys!5377 lt!549430 lt!549441 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1210247 () Bool)

(assert (=> b!1210247 (= e!687368 e!687355)))

(declare-fun c!119178 () Bool)

(assert (=> b!1210247 (= c!119178 (and (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!549429))))

(declare-fun bm!59598 () Bool)

(assert (=> bm!59598 (= call!59596 call!59595)))

(declare-fun mapIsEmpty!47944 () Bool)

(assert (=> mapIsEmpty!47944 mapRes!47944))

(declare-fun b!1210248 () Bool)

(declare-fun res!804291 () Bool)

(assert (=> b!1210248 (=> (not res!804291) (not e!687365))))

(assert (=> b!1210248 (= res!804291 (and (= (size!38268 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!38267 _keys!1208) (size!38268 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun bm!59599 () Bool)

(assert (=> bm!59599 (= call!59598 call!59599)))

(declare-fun b!1210249 () Bool)

(declare-fun Unit!40040 () Unit!40036)

(assert (=> b!1210249 (= e!687355 Unit!40040)))

(declare-fun b!1210250 () Bool)

(assert (=> b!1210250 (= e!687358 (bvslt from!1455 (size!38268 _values!996)))))

(declare-fun lt!549428 () Unit!40036)

(assert (=> b!1210250 (= lt!549428 e!687362)))

(declare-fun c!119176 () Bool)

(assert (=> b!1210250 (= c!119176 (contains!6984 lt!549437 k0!934))))

(assert (=> b!1210250 (= lt!549437 (getCurrentListMapNoExtraKeys!5377 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1210251 () Bool)

(assert (=> b!1210251 (= e!687356 (not e!687360))))

(declare-fun res!804294 () Bool)

(assert (=> b!1210251 (=> res!804294 e!687360)))

(assert (=> b!1210251 (= res!804294 (bvsgt from!1455 i!673))))

(assert (=> b!1210251 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-fun lt!549435 () Unit!40036)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!78194 (_ BitVec 64) (_ BitVec 32)) Unit!40036)

(assert (=> b!1210251 (= lt!549435 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1210252 () Bool)

(declare-fun res!804293 () Bool)

(assert (=> b!1210252 (=> (not res!804293) (not e!687365))))

(assert (=> b!1210252 (= res!804293 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1210253 () Bool)

(declare-fun -!1871 (ListLongMap!17911 (_ BitVec 64)) ListLongMap!17911)

(assert (=> b!1210253 (= e!687370 (= call!59601 (-!1871 call!59602 k0!934)))))

(declare-fun b!1210254 () Bool)

(assert (=> b!1210254 (= c!119177 (and (not lt!549429) (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(assert (=> b!1210254 (= e!687359 e!687368)))

(declare-fun b!1210255 () Bool)

(assert (=> b!1210255 (= e!687369 (arrayContainsKey!0 _keys!1208 k0!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(assert (= (and start!101050 res!804286) b!1210229))

(assert (= (and b!1210229 res!804295) b!1210248))

(assert (= (and b!1210248 res!804291) b!1210252))

(assert (= (and b!1210252 res!804293) b!1210232))

(assert (= (and b!1210232 res!804299) b!1210242))

(assert (= (and b!1210242 res!804288) b!1210237))

(assert (= (and b!1210237 res!804287) b!1210228))

(assert (= (and b!1210228 res!804290) b!1210233))

(assert (= (and b!1210233 res!804296) b!1210245))

(assert (= (and b!1210245 res!804292) b!1210251))

(assert (= (and b!1210251 (not res!804294)) b!1210239))

(assert (= (and b!1210239 (not res!804297)) b!1210246))

(assert (= (and b!1210246 c!119175) b!1210253))

(assert (= (and b!1210246 (not c!119175)) b!1210244))

(assert (= (or b!1210253 b!1210244) bm!59597))

(assert (= (or b!1210253 b!1210244) bm!59595))

(assert (= (and b!1210246 (not res!804289)) b!1210250))

(assert (= (and b!1210250 c!119176) b!1210236))

(assert (= (and b!1210250 (not c!119176)) b!1210230))

(assert (= (and b!1210236 c!119174) b!1210227))

(assert (= (and b!1210236 (not c!119174)) b!1210254))

(assert (= (and b!1210254 c!119177) b!1210234))

(assert (= (and b!1210254 (not c!119177)) b!1210247))

(assert (= (and b!1210247 c!119178) b!1210241))

(assert (= (and b!1210247 (not c!119178)) b!1210249))

(assert (= (or b!1210234 b!1210241) bm!59593))

(assert (= (or b!1210234 b!1210241) bm!59599))

(assert (= (or b!1210234 b!1210241) bm!59598))

(assert (= (or b!1210227 bm!59598) bm!59592))

(assert (= (or b!1210227 bm!59593) bm!59594))

(assert (= (or b!1210227 bm!59599) bm!59596))

(assert (= (and b!1210236 c!119173) b!1210231))

(assert (= (and b!1210236 (not c!119173)) b!1210235))

(assert (= (and b!1210236 res!804298) b!1210255))

(assert (= (and b!1210240 condMapEmpty!47944) mapIsEmpty!47944))

(assert (= (and b!1210240 (not condMapEmpty!47944)) mapNonEmpty!47944))

(get-info :version)

(assert (= (and mapNonEmpty!47944 ((_ is ValueCellFull!14649) mapValue!47944)) b!1210243))

(assert (= (and b!1210240 ((_ is ValueCellFull!14649) mapDefault!47944)) b!1210238))

(assert (= start!101050 b!1210240))

(declare-fun b_lambda!21623 () Bool)

(assert (=> (not b_lambda!21623) (not b!1210239)))

(declare-fun t!39749 () Bool)

(declare-fun tb!10821 () Bool)

(assert (=> (and start!101050 (= defaultEntry!1004 defaultEntry!1004) t!39749) tb!10821))

(declare-fun result!22227 () Bool)

(assert (=> tb!10821 (= result!22227 tp_is_empty!30717)))

(assert (=> b!1210239 t!39749))

(declare-fun b_and!43119 () Bool)

(assert (= b_and!43117 (and (=> t!39749 result!22227) b_and!43119)))

(declare-fun m!1115803 () Bool)

(assert (=> bm!59592 m!1115803))

(declare-fun m!1115805 () Bool)

(assert (=> b!1210255 m!1115805))

(declare-fun m!1115807 () Bool)

(assert (=> b!1210232 m!1115807))

(declare-fun m!1115809 () Bool)

(assert (=> b!1210227 m!1115809))

(assert (=> b!1210227 m!1115809))

(declare-fun m!1115811 () Bool)

(assert (=> b!1210227 m!1115811))

(declare-fun m!1115813 () Bool)

(assert (=> b!1210227 m!1115813))

(declare-fun m!1115815 () Bool)

(assert (=> b!1210252 m!1115815))

(declare-fun m!1115817 () Bool)

(assert (=> mapNonEmpty!47944 m!1115817))

(declare-fun m!1115819 () Bool)

(assert (=> start!101050 m!1115819))

(declare-fun m!1115821 () Bool)

(assert (=> start!101050 m!1115821))

(declare-fun m!1115823 () Bool)

(assert (=> b!1210228 m!1115823))

(declare-fun m!1115825 () Bool)

(assert (=> bm!59594 m!1115825))

(declare-fun m!1115827 () Bool)

(assert (=> b!1210250 m!1115827))

(declare-fun m!1115829 () Bool)

(assert (=> b!1210250 m!1115829))

(assert (=> b!1210231 m!1115805))

(declare-fun m!1115831 () Bool)

(assert (=> bm!59597 m!1115831))

(assert (=> bm!59595 m!1115829))

(declare-fun m!1115833 () Bool)

(assert (=> b!1210229 m!1115833))

(declare-fun m!1115835 () Bool)

(assert (=> b!1210245 m!1115835))

(declare-fun m!1115837 () Bool)

(assert (=> b!1210239 m!1115837))

(declare-fun m!1115839 () Bool)

(assert (=> b!1210239 m!1115839))

(declare-fun m!1115841 () Bool)

(assert (=> b!1210239 m!1115841))

(declare-fun m!1115843 () Bool)

(assert (=> b!1210239 m!1115843))

(declare-fun m!1115845 () Bool)

(assert (=> b!1210253 m!1115845))

(declare-fun m!1115847 () Bool)

(assert (=> b!1210233 m!1115847))

(declare-fun m!1115849 () Bool)

(assert (=> b!1210233 m!1115849))

(declare-fun m!1115851 () Bool)

(assert (=> bm!59596 m!1115851))

(declare-fun m!1115853 () Bool)

(assert (=> b!1210246 m!1115853))

(declare-fun m!1115855 () Bool)

(assert (=> b!1210246 m!1115855))

(declare-fun m!1115857 () Bool)

(assert (=> b!1210236 m!1115857))

(declare-fun m!1115859 () Bool)

(assert (=> b!1210236 m!1115859))

(declare-fun m!1115861 () Bool)

(assert (=> b!1210236 m!1115861))

(declare-fun m!1115863 () Bool)

(assert (=> b!1210236 m!1115863))

(declare-fun m!1115865 () Bool)

(assert (=> b!1210251 m!1115865))

(declare-fun m!1115867 () Bool)

(assert (=> b!1210251 m!1115867))

(declare-fun m!1115869 () Bool)

(assert (=> b!1210237 m!1115869))

(check-sat (not b!1210245) (not b!1210232) (not b!1210255) (not b!1210236) (not b!1210229) (not b!1210251) (not bm!59597) (not b!1210231) (not start!101050) (not bm!59596) (not bm!59595) tp_is_empty!30717 (not b!1210246) (not b!1210227) (not b_lambda!21623) (not mapNonEmpty!47944) (not b!1210233) (not bm!59592) b_and!43119 (not b_next!26013) (not b!1210252) (not b!1210239) (not b!1210250) (not b!1210253) (not b!1210237) (not bm!59594))
(check-sat b_and!43119 (not b_next!26013))
