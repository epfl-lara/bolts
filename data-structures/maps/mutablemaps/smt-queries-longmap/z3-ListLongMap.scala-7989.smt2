; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!98812 () Bool)

(assert start!98812)

(declare-fun b_free!24381 () Bool)

(declare-fun b_next!24381 () Bool)

(assert (=> start!98812 (= b_free!24381 (not b_next!24381))))

(declare-fun tp!85855 () Bool)

(declare-fun b_and!39625 () Bool)

(assert (=> start!98812 (= tp!85855 b_and!39625)))

(declare-fun res!766289 () Bool)

(declare-fun e!655503 () Bool)

(assert (=> start!98812 (=> (not res!766289) (not e!655503))))

(declare-fun from!1455 () (_ BitVec 32))

(declare-datatypes ((array!74620 0))(
  ( (array!74621 (arr!35957 (Array (_ BitVec 32) (_ BitVec 64))) (size!36494 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!74620)

(assert (=> start!98812 (= res!766289 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!36494 _keys!1208))))))

(assert (=> start!98812 e!655503))

(declare-fun tp_is_empty!28911 () Bool)

(assert (=> start!98812 tp_is_empty!28911))

(declare-fun array_inv!27408 (array!74620) Bool)

(assert (=> start!98812 (array_inv!27408 _keys!1208)))

(assert (=> start!98812 true))

(assert (=> start!98812 tp!85855))

(declare-datatypes ((V!43675 0))(
  ( (V!43676 (val!14512 Int)) )
))
(declare-datatypes ((ValueCell!13746 0))(
  ( (ValueCellFull!13746 (v!17150 V!43675)) (EmptyCell!13746) )
))
(declare-datatypes ((array!74622 0))(
  ( (array!74623 (arr!35958 (Array (_ BitVec 32) ValueCell!13746)) (size!36495 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!74622)

(declare-fun e!655516 () Bool)

(declare-fun array_inv!27409 (array!74622) Bool)

(assert (=> start!98812 (and (array_inv!27409 _values!996) e!655516)))

(declare-fun b!1152474 () Bool)

(declare-fun e!655518 () Bool)

(assert (=> b!1152474 (= e!655518 tp_is_empty!28911)))

(declare-fun b!1152475 () Bool)

(declare-fun res!766290 () Bool)

(assert (=> b!1152475 (=> (not res!766290) (not e!655503))))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!74620 (_ BitVec 32)) Bool)

(assert (=> b!1152475 (= res!766290 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun mapIsEmpty!45191 () Bool)

(declare-fun mapRes!45191 () Bool)

(assert (=> mapIsEmpty!45191 mapRes!45191))

(declare-fun b!1152476 () Bool)

(declare-fun res!766285 () Bool)

(declare-fun e!655504 () Bool)

(assert (=> b!1152476 (=> (not res!766285) (not e!655504))))

(declare-fun lt!516270 () array!74620)

(declare-datatypes ((List!25296 0))(
  ( (Nil!25293) (Cons!25292 (h!26501 (_ BitVec 64)) (t!36676 List!25296)) )
))
(declare-fun arrayNoDuplicates!0 (array!74620 (_ BitVec 32) List!25296) Bool)

(assert (=> b!1152476 (= res!766285 (arrayNoDuplicates!0 lt!516270 #b00000000000000000000000000000000 Nil!25293))))

(declare-fun zeroValue!944 () V!43675)

(declare-datatypes ((tuple2!18506 0))(
  ( (tuple2!18507 (_1!9263 (_ BitVec 64)) (_2!9263 V!43675)) )
))
(declare-datatypes ((List!25297 0))(
  ( (Nil!25294) (Cons!25293 (h!26502 tuple2!18506) (t!36677 List!25297)) )
))
(declare-datatypes ((ListLongMap!16487 0))(
  ( (ListLongMap!16488 (toList!8259 List!25297)) )
))
(declare-fun lt!516258 () ListLongMap!16487)

(declare-fun call!54116 () ListLongMap!16487)

(declare-fun c!114237 () Bool)

(declare-fun c!114240 () Bool)

(declare-fun minValue!944 () V!43675)

(declare-fun bm!54110 () Bool)

(declare-fun +!3594 (ListLongMap!16487 tuple2!18506) ListLongMap!16487)

(assert (=> bm!54110 (= call!54116 (+!3594 lt!516258 (ite (or c!114237 c!114240) (tuple2!18507 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!18507 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944))))))

(declare-fun b!1152477 () Bool)

(declare-datatypes ((Unit!37830 0))(
  ( (Unit!37831) )
))
(declare-fun e!655509 () Unit!37830)

(declare-fun Unit!37832 () Unit!37830)

(assert (=> b!1152477 (= e!655509 Unit!37832)))

(declare-fun lt!516263 () Bool)

(declare-fun extraKeys!923 () (_ BitVec 32))

(assert (=> b!1152477 (= lt!516263 (= (bvand extraKeys!923 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(assert (=> b!1152477 (= c!114237 (and (not lt!516263) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun lt!516259 () Unit!37830)

(declare-fun e!655511 () Unit!37830)

(assert (=> b!1152477 (= lt!516259 e!655511)))

(declare-fun lt!516253 () Unit!37830)

(declare-fun defaultEntry!1004 () Int)

(declare-fun k0!934 () (_ BitVec 64))

(declare-fun lemmaListMapContainsThenArrayContainsFrom!477 (array!74620 array!74622 (_ BitVec 32) (_ BitVec 32) V!43675 V!43675 (_ BitVec 64) (_ BitVec 32) Int) Unit!37830)

(assert (=> b!1152477 (= lt!516253 (lemmaListMapContainsThenArrayContainsFrom!477 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun c!114235 () Bool)

(assert (=> b!1152477 (= c!114235 (and (not (= k0!934 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!934 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun res!766286 () Bool)

(declare-fun e!655513 () Bool)

(assert (=> b!1152477 (= res!766286 e!655513)))

(declare-fun e!655510 () Bool)

(assert (=> b!1152477 (=> (not res!766286) (not e!655510))))

(assert (=> b!1152477 e!655510))

(declare-fun lt!516266 () Unit!37830)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!74620 (_ BitVec 32) (_ BitVec 32)) Unit!37830)

(assert (=> b!1152477 (= lt!516266 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1208 #b00000000000000000000000000000000 from!1455))))

(assert (=> b!1152477 (arrayNoDuplicates!0 _keys!1208 from!1455 Nil!25293)))

(declare-fun lt!516260 () Unit!37830)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!74620 (_ BitVec 64) (_ BitVec 32) List!25296) Unit!37830)

(assert (=> b!1152477 (= lt!516260 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!1208 k0!934 from!1455 Nil!25293))))

(assert (=> b!1152477 false))

(declare-fun call!54119 () ListLongMap!16487)

(declare-fun lt!516264 () array!74622)

(declare-fun bm!54111 () Bool)

(declare-fun getCurrentListMapNoExtraKeys!4699 (array!74620 array!74622 (_ BitVec 32) (_ BitVec 32) V!43675 V!43675 (_ BitVec 32) Int) ListLongMap!16487)

(assert (=> bm!54111 (= call!54119 (getCurrentListMapNoExtraKeys!4699 lt!516270 lt!516264 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1152478 () Bool)

(declare-fun res!766288 () Bool)

(assert (=> b!1152478 (=> (not res!766288) (not e!655503))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1152478 (= res!766288 (validMask!0 mask!1564))))

(declare-fun b!1152479 () Bool)

(assert (=> b!1152479 (= e!655513 (ite (= k0!934 #b0000000000000000000000000000000000000000000000000000000000000000) (not lt!516263) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!1152480 () Bool)

(declare-fun res!766292 () Bool)

(assert (=> b!1152480 (=> (not res!766292) (not e!655503))))

(assert (=> b!1152480 (= res!766292 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!25293))))

(declare-fun b!1152481 () Bool)

(assert (=> b!1152481 (= c!114240 (and (not lt!516263) (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun e!655517 () Unit!37830)

(assert (=> b!1152481 (= e!655511 e!655517)))

(declare-fun bm!54112 () Bool)

(declare-fun call!54118 () ListLongMap!16487)

(assert (=> bm!54112 (= call!54118 call!54116)))

(declare-fun b!1152482 () Bool)

(declare-fun e!655508 () Bool)

(assert (=> b!1152482 (= e!655508 tp_is_empty!28911)))

(declare-fun lt!516273 () ListLongMap!16487)

(declare-fun call!54113 () Bool)

(declare-fun bm!54113 () Bool)

(declare-fun contains!6752 (ListLongMap!16487 (_ BitVec 64)) Bool)

(assert (=> bm!54113 (= call!54113 (contains!6752 (ite c!114237 lt!516273 call!54118) k0!934))))

(declare-fun b!1152483 () Bool)

(declare-fun e!655514 () Bool)

(declare-fun e!655512 () Bool)

(assert (=> b!1152483 (= e!655514 e!655512)))

(declare-fun res!766284 () Bool)

(assert (=> b!1152483 (=> res!766284 e!655512)))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1152483 (= res!766284 (not (= from!1455 i!673)))))

(declare-fun lt!516256 () ListLongMap!16487)

(assert (=> b!1152483 (= lt!516256 (getCurrentListMapNoExtraKeys!4699 lt!516270 lt!516264 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun lt!516265 () V!43675)

(assert (=> b!1152483 (= lt!516264 (array!74623 (store (arr!35958 _values!996) i!673 (ValueCellFull!13746 lt!516265)) (size!36495 _values!996)))))

(declare-fun dynLambda!2724 (Int (_ BitVec 64)) V!43675)

(assert (=> b!1152483 (= lt!516265 (dynLambda!2724 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!516269 () ListLongMap!16487)

(assert (=> b!1152483 (= lt!516269 (getCurrentListMapNoExtraKeys!4699 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun bm!54114 () Bool)

(declare-fun call!54115 () ListLongMap!16487)

(assert (=> bm!54114 (= call!54115 (getCurrentListMapNoExtraKeys!4699 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1152484 () Bool)

(declare-fun e!655505 () Bool)

(assert (=> b!1152484 (= e!655505 true)))

(declare-fun e!655506 () Bool)

(assert (=> b!1152484 e!655506))

(declare-fun res!766295 () Bool)

(assert (=> b!1152484 (=> (not res!766295) (not e!655506))))

(declare-fun lt!516272 () ListLongMap!16487)

(assert (=> b!1152484 (= res!766295 (= lt!516272 lt!516258))))

(declare-fun -!1343 (ListLongMap!16487 (_ BitVec 64)) ListLongMap!16487)

(assert (=> b!1152484 (= lt!516272 (-!1343 lt!516269 k0!934))))

(declare-fun lt!516252 () V!43675)

(assert (=> b!1152484 (= (-!1343 (+!3594 lt!516258 (tuple2!18507 (select (arr!35957 _keys!1208) from!1455) lt!516252)) (select (arr!35957 _keys!1208) from!1455)) lt!516258)))

(declare-fun lt!516261 () Unit!37830)

(declare-fun addThenRemoveForNewKeyIsSame!189 (ListLongMap!16487 (_ BitVec 64) V!43675) Unit!37830)

(assert (=> b!1152484 (= lt!516261 (addThenRemoveForNewKeyIsSame!189 lt!516258 (select (arr!35957 _keys!1208) from!1455) lt!516252))))

(declare-fun get!18337 (ValueCell!13746 V!43675) V!43675)

(assert (=> b!1152484 (= lt!516252 (get!18337 (select (arr!35958 _values!996) from!1455) lt!516265))))

(declare-fun lt!516254 () Unit!37830)

(assert (=> b!1152484 (= lt!516254 e!655509)))

(declare-fun c!114239 () Bool)

(assert (=> b!1152484 (= c!114239 (contains!6752 lt!516258 k0!934))))

(assert (=> b!1152484 (= lt!516258 (getCurrentListMapNoExtraKeys!4699 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1152485 () Bool)

(declare-fun arrayContainsKey!0 (array!74620 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1152485 (= e!655510 (arrayContainsKey!0 _keys!1208 k0!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun b!1152486 () Bool)

(assert (=> b!1152486 (= e!655516 (and e!655518 mapRes!45191))))

(declare-fun condMapEmpty!45191 () Bool)

(declare-fun mapDefault!45191 () ValueCell!13746)

(assert (=> b!1152486 (= condMapEmpty!45191 (= (arr!35958 _values!996) ((as const (Array (_ BitVec 32) ValueCell!13746)) mapDefault!45191)))))

(declare-fun b!1152487 () Bool)

(declare-fun call!54120 () Bool)

(assert (=> b!1152487 call!54120))

(declare-fun lt!516257 () Unit!37830)

(declare-fun call!54114 () Unit!37830)

(assert (=> b!1152487 (= lt!516257 call!54114)))

(declare-fun e!655515 () Unit!37830)

(assert (=> b!1152487 (= e!655515 lt!516257)))

(declare-fun b!1152488 () Bool)

(declare-fun res!766298 () Bool)

(assert (=> b!1152488 (=> (not res!766298) (not e!655503))))

(assert (=> b!1152488 (= res!766298 (and (= (size!36495 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!36494 _keys!1208) (size!36495 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1152489 () Bool)

(declare-fun res!766291 () Bool)

(assert (=> b!1152489 (=> (not res!766291) (not e!655503))))

(assert (=> b!1152489 (= res!766291 (= (select (arr!35957 _keys!1208) i!673) k0!934))))

(declare-fun b!1152490 () Bool)

(declare-fun lt!516271 () Unit!37830)

(assert (=> b!1152490 (= e!655517 lt!516271)))

(assert (=> b!1152490 (= lt!516271 call!54114)))

(assert (=> b!1152490 call!54120))

(declare-fun b!1152491 () Bool)

(declare-fun res!766296 () Bool)

(assert (=> b!1152491 (=> (not res!766296) (not e!655503))))

(assert (=> b!1152491 (= res!766296 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!36494 _keys!1208))))))

(declare-fun b!1152492 () Bool)

(assert (=> b!1152492 (= e!655506 (= lt!516272 (getCurrentListMapNoExtraKeys!4699 lt!516270 lt!516264 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004)))))

(declare-fun b!1152493 () Bool)

(assert (=> b!1152493 (= e!655504 (not e!655514))))

(declare-fun res!766287 () Bool)

(assert (=> b!1152493 (=> res!766287 e!655514)))

(assert (=> b!1152493 (= res!766287 (bvsgt from!1455 i!673))))

(assert (=> b!1152493 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-fun lt!516262 () Unit!37830)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!74620 (_ BitVec 64) (_ BitVec 32)) Unit!37830)

(assert (=> b!1152493 (= lt!516262 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun call!54117 () Unit!37830)

(declare-fun bm!54115 () Bool)

(declare-fun addStillContains!893 (ListLongMap!16487 (_ BitVec 64) V!43675 (_ BitVec 64)) Unit!37830)

(assert (=> bm!54115 (= call!54117 (addStillContains!893 (ite c!114237 lt!516273 lt!516258) (ite c!114237 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!114240 #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000)) (ite c!114237 minValue!944 (ite c!114240 zeroValue!944 minValue!944)) k0!934))))

(declare-fun b!1152494 () Bool)

(assert (=> b!1152494 (= e!655512 e!655505)))

(declare-fun res!766293 () Bool)

(assert (=> b!1152494 (=> res!766293 e!655505)))

(assert (=> b!1152494 (= res!766293 (not (= (select (arr!35957 _keys!1208) from!1455) k0!934)))))

(declare-fun e!655507 () Bool)

(assert (=> b!1152494 e!655507))

(declare-fun c!114238 () Bool)

(assert (=> b!1152494 (= c!114238 (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673))))

(declare-fun lt!516267 () Unit!37830)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!578 (array!74620 array!74622 (_ BitVec 32) (_ BitVec 32) V!43675 V!43675 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!37830)

(assert (=> b!1152494 (= lt!516267 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!578 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1152495 () Bool)

(assert (=> b!1152495 (= e!655513 (arrayContainsKey!0 _keys!1208 k0!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun b!1152496 () Bool)

(assert (=> b!1152496 (= e!655507 (= call!54119 call!54115))))

(declare-fun b!1152497 () Bool)

(declare-fun Unit!37833 () Unit!37830)

(assert (=> b!1152497 (= e!655509 Unit!37833)))

(declare-fun b!1152498 () Bool)

(assert (=> b!1152498 (= e!655503 e!655504)))

(declare-fun res!766297 () Bool)

(assert (=> b!1152498 (=> (not res!766297) (not e!655504))))

(assert (=> b!1152498 (= res!766297 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!516270 mask!1564))))

(assert (=> b!1152498 (= lt!516270 (array!74621 (store (arr!35957 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!36494 _keys!1208)))))

(declare-fun bm!54116 () Bool)

(assert (=> bm!54116 (= call!54120 call!54113)))

(declare-fun b!1152499 () Bool)

(assert (=> b!1152499 (contains!6752 (+!3594 lt!516273 (tuple2!18507 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944)) k0!934)))

(declare-fun lt!516268 () Unit!37830)

(assert (=> b!1152499 (= lt!516268 call!54117)))

(assert (=> b!1152499 call!54113))

(assert (=> b!1152499 (= lt!516273 call!54116)))

(declare-fun lt!516255 () Unit!37830)

(assert (=> b!1152499 (= lt!516255 (addStillContains!893 lt!516258 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944 k0!934))))

(assert (=> b!1152499 (= e!655511 lt!516268)))

(declare-fun b!1152500 () Bool)

(declare-fun Unit!37834 () Unit!37830)

(assert (=> b!1152500 (= e!655515 Unit!37834)))

(declare-fun mapNonEmpty!45191 () Bool)

(declare-fun tp!85854 () Bool)

(assert (=> mapNonEmpty!45191 (= mapRes!45191 (and tp!85854 e!655508))))

(declare-fun mapKey!45191 () (_ BitVec 32))

(declare-fun mapRest!45191 () (Array (_ BitVec 32) ValueCell!13746))

(declare-fun mapValue!45191 () ValueCell!13746)

(assert (=> mapNonEmpty!45191 (= (arr!35958 _values!996) (store mapRest!45191 mapKey!45191 mapValue!45191))))

(declare-fun b!1152501 () Bool)

(declare-fun res!766294 () Bool)

(assert (=> b!1152501 (=> (not res!766294) (not e!655503))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1152501 (= res!766294 (validKeyInArray!0 k0!934))))

(declare-fun bm!54117 () Bool)

(assert (=> bm!54117 (= call!54114 call!54117)))

(declare-fun b!1152502 () Bool)

(assert (=> b!1152502 (= e!655507 (= call!54119 (-!1343 call!54115 k0!934)))))

(declare-fun b!1152503 () Bool)

(assert (=> b!1152503 (= e!655517 e!655515)))

(declare-fun c!114236 () Bool)

(assert (=> b!1152503 (= c!114236 (and (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!516263))))

(assert (= (and start!98812 res!766289) b!1152478))

(assert (= (and b!1152478 res!766288) b!1152488))

(assert (= (and b!1152488 res!766298) b!1152475))

(assert (= (and b!1152475 res!766290) b!1152480))

(assert (= (and b!1152480 res!766292) b!1152491))

(assert (= (and b!1152491 res!766296) b!1152501))

(assert (= (and b!1152501 res!766294) b!1152489))

(assert (= (and b!1152489 res!766291) b!1152498))

(assert (= (and b!1152498 res!766297) b!1152476))

(assert (= (and b!1152476 res!766285) b!1152493))

(assert (= (and b!1152493 (not res!766287)) b!1152483))

(assert (= (and b!1152483 (not res!766284)) b!1152494))

(assert (= (and b!1152494 c!114238) b!1152502))

(assert (= (and b!1152494 (not c!114238)) b!1152496))

(assert (= (or b!1152502 b!1152496) bm!54111))

(assert (= (or b!1152502 b!1152496) bm!54114))

(assert (= (and b!1152494 (not res!766293)) b!1152484))

(assert (= (and b!1152484 c!114239) b!1152477))

(assert (= (and b!1152484 (not c!114239)) b!1152497))

(assert (= (and b!1152477 c!114237) b!1152499))

(assert (= (and b!1152477 (not c!114237)) b!1152481))

(assert (= (and b!1152481 c!114240) b!1152490))

(assert (= (and b!1152481 (not c!114240)) b!1152503))

(assert (= (and b!1152503 c!114236) b!1152487))

(assert (= (and b!1152503 (not c!114236)) b!1152500))

(assert (= (or b!1152490 b!1152487) bm!54117))

(assert (= (or b!1152490 b!1152487) bm!54112))

(assert (= (or b!1152490 b!1152487) bm!54116))

(assert (= (or b!1152499 bm!54116) bm!54113))

(assert (= (or b!1152499 bm!54117) bm!54115))

(assert (= (or b!1152499 bm!54112) bm!54110))

(assert (= (and b!1152477 c!114235) b!1152495))

(assert (= (and b!1152477 (not c!114235)) b!1152479))

(assert (= (and b!1152477 res!766286) b!1152485))

(assert (= (and b!1152484 res!766295) b!1152492))

(assert (= (and b!1152486 condMapEmpty!45191) mapIsEmpty!45191))

(assert (= (and b!1152486 (not condMapEmpty!45191)) mapNonEmpty!45191))

(get-info :version)

(assert (= (and mapNonEmpty!45191 ((_ is ValueCellFull!13746) mapValue!45191)) b!1152482))

(assert (= (and b!1152486 ((_ is ValueCellFull!13746) mapDefault!45191)) b!1152474))

(assert (= start!98812 b!1152486))

(declare-fun b_lambda!19505 () Bool)

(assert (=> (not b_lambda!19505) (not b!1152483)))

(declare-fun t!36675 () Bool)

(declare-fun tb!9201 () Bool)

(assert (=> (and start!98812 (= defaultEntry!1004 defaultEntry!1004) t!36675) tb!9201))

(declare-fun result!18959 () Bool)

(assert (=> tb!9201 (= result!18959 tp_is_empty!28911)))

(assert (=> b!1152483 t!36675))

(declare-fun b_and!39627 () Bool)

(assert (= b_and!39625 (and (=> t!36675 result!18959) b_and!39627)))

(declare-fun m!1062499 () Bool)

(assert (=> b!1152478 m!1062499))

(declare-fun m!1062501 () Bool)

(assert (=> b!1152492 m!1062501))

(declare-fun m!1062503 () Bool)

(assert (=> mapNonEmpty!45191 m!1062503))

(declare-fun m!1062505 () Bool)

(assert (=> b!1152476 m!1062505))

(declare-fun m!1062507 () Bool)

(assert (=> bm!54113 m!1062507))

(declare-fun m!1062509 () Bool)

(assert (=> b!1152495 m!1062509))

(declare-fun m!1062511 () Bool)

(assert (=> b!1152475 m!1062511))

(declare-fun m!1062513 () Bool)

(assert (=> b!1152501 m!1062513))

(declare-fun m!1062515 () Bool)

(assert (=> b!1152489 m!1062515))

(declare-fun m!1062517 () Bool)

(assert (=> b!1152477 m!1062517))

(declare-fun m!1062519 () Bool)

(assert (=> b!1152477 m!1062519))

(declare-fun m!1062521 () Bool)

(assert (=> b!1152477 m!1062521))

(declare-fun m!1062523 () Bool)

(assert (=> b!1152477 m!1062523))

(declare-fun m!1062525 () Bool)

(assert (=> b!1152483 m!1062525))

(declare-fun m!1062527 () Bool)

(assert (=> b!1152483 m!1062527))

(declare-fun m!1062529 () Bool)

(assert (=> b!1152483 m!1062529))

(declare-fun m!1062531 () Bool)

(assert (=> b!1152483 m!1062531))

(declare-fun m!1062533 () Bool)

(assert (=> b!1152502 m!1062533))

(declare-fun m!1062535 () Bool)

(assert (=> b!1152493 m!1062535))

(declare-fun m!1062537 () Bool)

(assert (=> b!1152493 m!1062537))

(declare-fun m!1062539 () Bool)

(assert (=> b!1152494 m!1062539))

(declare-fun m!1062541 () Bool)

(assert (=> b!1152494 m!1062541))

(declare-fun m!1062543 () Bool)

(assert (=> b!1152480 m!1062543))

(declare-fun m!1062545 () Bool)

(assert (=> b!1152484 m!1062545))

(declare-fun m!1062547 () Bool)

(assert (=> b!1152484 m!1062547))

(assert (=> b!1152484 m!1062539))

(declare-fun m!1062549 () Bool)

(assert (=> b!1152484 m!1062549))

(assert (=> b!1152484 m!1062547))

(declare-fun m!1062551 () Bool)

(assert (=> b!1152484 m!1062551))

(assert (=> b!1152484 m!1062545))

(declare-fun m!1062553 () Bool)

(assert (=> b!1152484 m!1062553))

(assert (=> b!1152484 m!1062539))

(assert (=> b!1152484 m!1062539))

(declare-fun m!1062555 () Bool)

(assert (=> b!1152484 m!1062555))

(declare-fun m!1062557 () Bool)

(assert (=> b!1152484 m!1062557))

(declare-fun m!1062559 () Bool)

(assert (=> b!1152484 m!1062559))

(declare-fun m!1062561 () Bool)

(assert (=> b!1152499 m!1062561))

(assert (=> b!1152499 m!1062561))

(declare-fun m!1062563 () Bool)

(assert (=> b!1152499 m!1062563))

(declare-fun m!1062565 () Bool)

(assert (=> b!1152499 m!1062565))

(declare-fun m!1062567 () Bool)

(assert (=> start!98812 m!1062567))

(declare-fun m!1062569 () Bool)

(assert (=> start!98812 m!1062569))

(declare-fun m!1062571 () Bool)

(assert (=> b!1152498 m!1062571))

(declare-fun m!1062573 () Bool)

(assert (=> b!1152498 m!1062573))

(declare-fun m!1062575 () Bool)

(assert (=> bm!54115 m!1062575))

(assert (=> bm!54114 m!1062557))

(declare-fun m!1062577 () Bool)

(assert (=> bm!54110 m!1062577))

(assert (=> bm!54111 m!1062501))

(assert (=> b!1152485 m!1062509))

(check-sat (not bm!54110) (not bm!54113) (not b!1152493) (not b!1152485) (not b!1152477) (not b!1152476) (not bm!54114) (not b!1152494) (not bm!54115) (not bm!54111) b_and!39627 (not b!1152495) (not b_lambda!19505) tp_is_empty!28911 (not b!1152492) (not b!1152498) (not b!1152480) (not start!98812) (not b_next!24381) (not b!1152501) (not b!1152483) (not b!1152484) (not b!1152499) (not b!1152478) (not b!1152475) (not mapNonEmpty!45191) (not b!1152502))
(check-sat b_and!39627 (not b_next!24381))
