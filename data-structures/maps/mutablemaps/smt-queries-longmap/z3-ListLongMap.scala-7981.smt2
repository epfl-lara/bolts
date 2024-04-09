; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!98764 () Bool)

(assert start!98764)

(declare-fun b_free!24333 () Bool)

(declare-fun b_next!24333 () Bool)

(assert (=> start!98764 (= b_free!24333 (not b_next!24333))))

(declare-fun tp!85711 () Bool)

(declare-fun b_and!39529 () Bool)

(assert (=> start!98764 (= tp!85711 b_and!39529)))

(declare-fun b!1150266 () Bool)

(declare-fun e!654285 () Bool)

(declare-datatypes ((V!43611 0))(
  ( (V!43612 (val!14488 Int)) )
))
(declare-datatypes ((tuple2!18466 0))(
  ( (tuple2!18467 (_1!9243 (_ BitVec 64)) (_2!9243 V!43611)) )
))
(declare-datatypes ((List!25258 0))(
  ( (Nil!25255) (Cons!25254 (h!26463 tuple2!18466) (t!36590 List!25258)) )
))
(declare-datatypes ((ListLongMap!16447 0))(
  ( (ListLongMap!16448 (toList!8239 List!25258)) )
))
(declare-fun call!53538 () ListLongMap!16447)

(declare-fun call!53542 () ListLongMap!16447)

(assert (=> b!1150266 (= e!654285 (= call!53538 call!53542))))

(declare-fun k0!934 () (_ BitVec 64))

(declare-fun b!1150267 () Bool)

(declare-fun -!1326 (ListLongMap!16447 (_ BitVec 64)) ListLongMap!16447)

(assert (=> b!1150267 (= e!654285 (= call!53538 (-!1326 call!53542 k0!934)))))

(declare-fun b!1150268 () Bool)

(declare-datatypes ((array!74530 0))(
  ( (array!74531 (arr!35912 (Array (_ BitVec 32) (_ BitVec 64))) (size!36449 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!74530)

(declare-fun e!654287 () Bool)

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun arrayContainsKey!0 (array!74530 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1150268 (= e!654287 (arrayContainsKey!0 _keys!1208 k0!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun b!1150269 () Bool)

(declare-fun res!765206 () Bool)

(declare-fun e!654281 () Bool)

(assert (=> b!1150269 (=> (not res!765206) (not e!654281))))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1150269 (= res!765206 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!36449 _keys!1208))))))

(declare-fun b!1150270 () Bool)

(declare-fun res!765214 () Bool)

(assert (=> b!1150270 (=> (not res!765214) (not e!654281))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1150270 (= res!765214 (validKeyInArray!0 k0!934))))

(declare-fun b!1150271 () Bool)

(declare-fun res!765210 () Bool)

(assert (=> b!1150271 (=> (not res!765210) (not e!654281))))

(assert (=> b!1150271 (= res!765210 (= (select (arr!35912 _keys!1208) i!673) k0!934))))

(declare-fun b!1150272 () Bool)

(declare-fun res!765207 () Bool)

(assert (=> b!1150272 (=> (not res!765207) (not e!654281))))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1150272 (= res!765207 (validMask!0 mask!1564))))

(declare-fun b!1150273 () Bool)

(declare-fun res!765211 () Bool)

(declare-fun e!654291 () Bool)

(assert (=> b!1150273 (=> (not res!765211) (not e!654291))))

(declare-fun lt!514671 () array!74530)

(declare-datatypes ((List!25259 0))(
  ( (Nil!25256) (Cons!25255 (h!26464 (_ BitVec 64)) (t!36591 List!25259)) )
))
(declare-fun arrayNoDuplicates!0 (array!74530 (_ BitVec 32) List!25259) Bool)

(assert (=> b!1150273 (= res!765211 (arrayNoDuplicates!0 lt!514671 #b00000000000000000000000000000000 Nil!25256))))

(declare-fun bm!53534 () Bool)

(declare-fun call!53544 () Bool)

(declare-fun call!53539 () Bool)

(assert (=> bm!53534 (= call!53544 call!53539)))

(declare-fun b!1150274 () Bool)

(declare-datatypes ((Unit!37743 0))(
  ( (Unit!37744) )
))
(declare-fun e!654280 () Unit!37743)

(declare-fun Unit!37745 () Unit!37743)

(assert (=> b!1150274 (= e!654280 Unit!37745)))

(declare-fun b!1150275 () Bool)

(declare-fun e!654286 () Bool)

(declare-fun tp_is_empty!28863 () Bool)

(assert (=> b!1150275 (= e!654286 tp_is_empty!28863)))

(declare-fun c!113806 () Bool)

(declare-fun lt!514687 () ListLongMap!16447)

(declare-fun call!53540 () ListLongMap!16447)

(declare-fun bm!53535 () Bool)

(declare-fun contains!6734 (ListLongMap!16447 (_ BitVec 64)) Bool)

(assert (=> bm!53535 (= call!53539 (contains!6734 (ite c!113806 lt!514687 call!53540) k0!934))))

(declare-fun zeroValue!944 () V!43611)

(declare-fun defaultEntry!1004 () Int)

(declare-datatypes ((ValueCell!13722 0))(
  ( (ValueCellFull!13722 (v!17126 V!43611)) (EmptyCell!13722) )
))
(declare-datatypes ((array!74532 0))(
  ( (array!74533 (arr!35913 (Array (_ BitVec 32) ValueCell!13722)) (size!36450 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!74532)

(declare-fun minValue!944 () V!43611)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun bm!53536 () Bool)

(declare-fun getCurrentListMapNoExtraKeys!4680 (array!74530 array!74532 (_ BitVec 32) (_ BitVec 32) V!43611 V!43611 (_ BitVec 32) Int) ListLongMap!16447)

(assert (=> bm!53536 (= call!53542 (getCurrentListMapNoExtraKeys!4680 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1150276 () Bool)

(declare-fun e!654290 () Unit!37743)

(declare-fun lt!514689 () Unit!37743)

(assert (=> b!1150276 (= e!654290 lt!514689)))

(declare-fun call!53537 () Unit!37743)

(assert (=> b!1150276 (= lt!514689 call!53537)))

(assert (=> b!1150276 call!53544))

(declare-fun mapIsEmpty!45119 () Bool)

(declare-fun mapRes!45119 () Bool)

(assert (=> mapIsEmpty!45119 mapRes!45119))

(declare-fun bm!53537 () Bool)

(declare-fun call!53541 () Unit!37743)

(assert (=> bm!53537 (= call!53537 call!53541)))

(declare-fun b!1150277 () Bool)

(assert (=> b!1150277 call!53544))

(declare-fun lt!514678 () Unit!37743)

(assert (=> b!1150277 (= lt!514678 call!53537)))

(declare-fun e!654288 () Unit!37743)

(assert (=> b!1150277 (= e!654288 lt!514678)))

(declare-fun b!1150278 () Bool)

(declare-fun +!3576 (ListLongMap!16447 tuple2!18466) ListLongMap!16447)

(assert (=> b!1150278 (contains!6734 (+!3576 lt!514687 (tuple2!18467 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944)) k0!934)))

(declare-fun lt!514668 () Unit!37743)

(assert (=> b!1150278 (= lt!514668 call!53541)))

(assert (=> b!1150278 call!53539))

(declare-fun call!53543 () ListLongMap!16447)

(assert (=> b!1150278 (= lt!514687 call!53543)))

(declare-fun lt!514676 () Unit!37743)

(declare-fun lt!514681 () ListLongMap!16447)

(declare-fun addStillContains!876 (ListLongMap!16447 (_ BitVec 64) V!43611 (_ BitVec 64)) Unit!37743)

(assert (=> b!1150278 (= lt!514676 (addStillContains!876 lt!514681 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944 k0!934))))

(declare-fun e!654279 () Unit!37743)

(assert (=> b!1150278 (= e!654279 lt!514668)))

(declare-fun b!1150279 () Bool)

(assert (=> b!1150279 (= e!654281 e!654291)))

(declare-fun res!765204 () Bool)

(assert (=> b!1150279 (=> (not res!765204) (not e!654291))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!74530 (_ BitVec 32)) Bool)

(assert (=> b!1150279 (= res!765204 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!514671 mask!1564))))

(assert (=> b!1150279 (= lt!514671 (array!74531 (store (arr!35912 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!36449 _keys!1208)))))

(declare-fun b!1150280 () Bool)

(declare-fun res!765213 () Bool)

(assert (=> b!1150280 (=> (not res!765213) (not e!654281))))

(assert (=> b!1150280 (= res!765213 (and (= (size!36450 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!36449 _keys!1208) (size!36450 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun lt!514684 () Bool)

(declare-fun b!1150281 () Bool)

(assert (=> b!1150281 (= e!654287 (ite (= k0!934 #b0000000000000000000000000000000000000000000000000000000000000000) (not lt!514684) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun mapNonEmpty!45119 () Bool)

(declare-fun tp!85710 () Bool)

(declare-fun e!654294 () Bool)

(assert (=> mapNonEmpty!45119 (= mapRes!45119 (and tp!85710 e!654294))))

(declare-fun mapRest!45119 () (Array (_ BitVec 32) ValueCell!13722))

(declare-fun mapValue!45119 () ValueCell!13722)

(declare-fun mapKey!45119 () (_ BitVec 32))

(assert (=> mapNonEmpty!45119 (= (arr!35913 _values!996) (store mapRest!45119 mapKey!45119 mapValue!45119))))

(declare-fun b!1150282 () Bool)

(declare-fun Unit!37746 () Unit!37743)

(assert (=> b!1150282 (= e!654288 Unit!37746)))

(declare-fun bm!53538 () Bool)

(assert (=> bm!53538 (= call!53540 call!53543)))

(declare-fun b!1150283 () Bool)

(declare-fun res!765218 () Bool)

(assert (=> b!1150283 (=> (not res!765218) (not e!654281))))

(assert (=> b!1150283 (= res!765218 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1150284 () Bool)

(declare-fun e!654289 () Bool)

(assert (=> b!1150284 (= e!654291 (not e!654289))))

(declare-fun res!765217 () Bool)

(assert (=> b!1150284 (=> res!765217 e!654289)))

(assert (=> b!1150284 (= res!765217 (bvsgt from!1455 i!673))))

(assert (=> b!1150284 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-fun lt!514669 () Unit!37743)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!74530 (_ BitVec 64) (_ BitVec 32)) Unit!37743)

(assert (=> b!1150284 (= lt!514669 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun lt!514672 () array!74532)

(declare-fun bm!53539 () Bool)

(assert (=> bm!53539 (= call!53538 (getCurrentListMapNoExtraKeys!4680 lt!514671 lt!514672 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun res!765216 () Bool)

(assert (=> start!98764 (=> (not res!765216) (not e!654281))))

(assert (=> start!98764 (= res!765216 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!36449 _keys!1208))))))

(assert (=> start!98764 e!654281))

(assert (=> start!98764 tp_is_empty!28863))

(declare-fun array_inv!27384 (array!74530) Bool)

(assert (=> start!98764 (array_inv!27384 _keys!1208)))

(assert (=> start!98764 true))

(assert (=> start!98764 tp!85711))

(declare-fun e!654292 () Bool)

(declare-fun array_inv!27385 (array!74532) Bool)

(assert (=> start!98764 (and (array_inv!27385 _values!996) e!654292)))

(declare-fun c!113803 () Bool)

(declare-fun bm!53540 () Bool)

(assert (=> bm!53540 (= call!53543 (+!3576 lt!514681 (ite (or c!113806 c!113803) (tuple2!18467 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!18467 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944))))))

(declare-fun b!1150285 () Bool)

(assert (=> b!1150285 (= e!654292 (and e!654286 mapRes!45119))))

(declare-fun condMapEmpty!45119 () Bool)

(declare-fun mapDefault!45119 () ValueCell!13722)

(assert (=> b!1150285 (= condMapEmpty!45119 (= (arr!35913 _values!996) ((as const (Array (_ BitVec 32) ValueCell!13722)) mapDefault!45119)))))

(declare-fun b!1150286 () Bool)

(assert (=> b!1150286 (= e!654294 tp_is_empty!28863)))

(declare-fun b!1150287 () Bool)

(declare-fun e!654282 () Bool)

(assert (=> b!1150287 (= e!654282 (arrayContainsKey!0 _keys!1208 k0!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun b!1150288 () Bool)

(assert (=> b!1150288 (= c!113803 (and (not lt!514684) (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(assert (=> b!1150288 (= e!654279 e!654290)))

(declare-fun b!1150289 () Bool)

(declare-fun e!654283 () Bool)

(assert (=> b!1150289 (= e!654283 true)))

(declare-fun e!654284 () Bool)

(assert (=> b!1150289 e!654284))

(declare-fun res!765208 () Bool)

(assert (=> b!1150289 (=> (not res!765208) (not e!654284))))

(declare-fun lt!514683 () ListLongMap!16447)

(assert (=> b!1150289 (= res!765208 (= lt!514683 lt!514681))))

(declare-fun lt!514686 () ListLongMap!16447)

(assert (=> b!1150289 (= lt!514683 (-!1326 lt!514686 k0!934))))

(declare-fun lt!514680 () V!43611)

(assert (=> b!1150289 (= (-!1326 (+!3576 lt!514681 (tuple2!18467 (select (arr!35912 _keys!1208) from!1455) lt!514680)) (select (arr!35912 _keys!1208) from!1455)) lt!514681)))

(declare-fun lt!514670 () Unit!37743)

(declare-fun addThenRemoveForNewKeyIsSame!175 (ListLongMap!16447 (_ BitVec 64) V!43611) Unit!37743)

(assert (=> b!1150289 (= lt!514670 (addThenRemoveForNewKeyIsSame!175 lt!514681 (select (arr!35912 _keys!1208) from!1455) lt!514680))))

(declare-fun lt!514685 () V!43611)

(declare-fun get!18307 (ValueCell!13722 V!43611) V!43611)

(assert (=> b!1150289 (= lt!514680 (get!18307 (select (arr!35913 _values!996) from!1455) lt!514685))))

(declare-fun lt!514677 () Unit!37743)

(assert (=> b!1150289 (= lt!514677 e!654280)))

(declare-fun c!113807 () Bool)

(assert (=> b!1150289 (= c!113807 (contains!6734 lt!514681 k0!934))))

(assert (=> b!1150289 (= lt!514681 (getCurrentListMapNoExtraKeys!4680 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1150290 () Bool)

(declare-fun res!765215 () Bool)

(assert (=> b!1150290 (=> (not res!765215) (not e!654281))))

(assert (=> b!1150290 (= res!765215 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!25256))))

(declare-fun b!1150291 () Bool)

(declare-fun Unit!37747 () Unit!37743)

(assert (=> b!1150291 (= e!654280 Unit!37747)))

(assert (=> b!1150291 (= lt!514684 (= (bvand extraKeys!923 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(assert (=> b!1150291 (= c!113806 (and (not lt!514684) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun lt!514688 () Unit!37743)

(assert (=> b!1150291 (= lt!514688 e!654279)))

(declare-fun lt!514682 () Unit!37743)

(declare-fun lemmaListMapContainsThenArrayContainsFrom!461 (array!74530 array!74532 (_ BitVec 32) (_ BitVec 32) V!43611 V!43611 (_ BitVec 64) (_ BitVec 32) Int) Unit!37743)

(assert (=> b!1150291 (= lt!514682 (lemmaListMapContainsThenArrayContainsFrom!461 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun c!113808 () Bool)

(assert (=> b!1150291 (= c!113808 (and (not (= k0!934 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!934 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun res!765209 () Bool)

(assert (=> b!1150291 (= res!765209 e!654287)))

(assert (=> b!1150291 (=> (not res!765209) (not e!654282))))

(assert (=> b!1150291 e!654282))

(declare-fun lt!514674 () Unit!37743)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!74530 (_ BitVec 32) (_ BitVec 32)) Unit!37743)

(assert (=> b!1150291 (= lt!514674 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1208 #b00000000000000000000000000000000 from!1455))))

(assert (=> b!1150291 (arrayNoDuplicates!0 _keys!1208 from!1455 Nil!25256)))

(declare-fun lt!514673 () Unit!37743)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!74530 (_ BitVec 64) (_ BitVec 32) List!25259) Unit!37743)

(assert (=> b!1150291 (= lt!514673 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!1208 k0!934 from!1455 Nil!25256))))

(assert (=> b!1150291 false))

(declare-fun b!1150292 () Bool)

(declare-fun e!654278 () Bool)

(assert (=> b!1150292 (= e!654289 e!654278)))

(declare-fun res!765205 () Bool)

(assert (=> b!1150292 (=> res!765205 e!654278)))

(assert (=> b!1150292 (= res!765205 (not (= from!1455 i!673)))))

(declare-fun lt!514679 () ListLongMap!16447)

(assert (=> b!1150292 (= lt!514679 (getCurrentListMapNoExtraKeys!4680 lt!514671 lt!514672 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(assert (=> b!1150292 (= lt!514672 (array!74533 (store (arr!35913 _values!996) i!673 (ValueCellFull!13722 lt!514685)) (size!36450 _values!996)))))

(declare-fun dynLambda!2709 (Int (_ BitVec 64)) V!43611)

(assert (=> b!1150292 (= lt!514685 (dynLambda!2709 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1150292 (= lt!514686 (getCurrentListMapNoExtraKeys!4680 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1150293 () Bool)

(assert (=> b!1150293 (= e!654278 e!654283)))

(declare-fun res!765212 () Bool)

(assert (=> b!1150293 (=> res!765212 e!654283)))

(assert (=> b!1150293 (= res!765212 (not (= (select (arr!35912 _keys!1208) from!1455) k0!934)))))

(assert (=> b!1150293 e!654285))

(declare-fun c!113805 () Bool)

(assert (=> b!1150293 (= c!113805 (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673))))

(declare-fun lt!514675 () Unit!37743)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!565 (array!74530 array!74532 (_ BitVec 32) (_ BitVec 32) V!43611 V!43611 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!37743)

(assert (=> b!1150293 (= lt!514675 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!565 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1150294 () Bool)

(assert (=> b!1150294 (= e!654284 (= lt!514683 (getCurrentListMapNoExtraKeys!4680 lt!514671 lt!514672 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004)))))

(declare-fun b!1150295 () Bool)

(assert (=> b!1150295 (= e!654290 e!654288)))

(declare-fun c!113804 () Bool)

(assert (=> b!1150295 (= c!113804 (and (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!514684))))

(declare-fun bm!53541 () Bool)

(assert (=> bm!53541 (= call!53541 (addStillContains!876 (ite c!113806 lt!514687 lt!514681) (ite c!113806 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!113803 #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000)) (ite c!113806 minValue!944 (ite c!113803 zeroValue!944 minValue!944)) k0!934))))

(assert (= (and start!98764 res!765216) b!1150272))

(assert (= (and b!1150272 res!765207) b!1150280))

(assert (= (and b!1150280 res!765213) b!1150283))

(assert (= (and b!1150283 res!765218) b!1150290))

(assert (= (and b!1150290 res!765215) b!1150269))

(assert (= (and b!1150269 res!765206) b!1150270))

(assert (= (and b!1150270 res!765214) b!1150271))

(assert (= (and b!1150271 res!765210) b!1150279))

(assert (= (and b!1150279 res!765204) b!1150273))

(assert (= (and b!1150273 res!765211) b!1150284))

(assert (= (and b!1150284 (not res!765217)) b!1150292))

(assert (= (and b!1150292 (not res!765205)) b!1150293))

(assert (= (and b!1150293 c!113805) b!1150267))

(assert (= (and b!1150293 (not c!113805)) b!1150266))

(assert (= (or b!1150267 b!1150266) bm!53539))

(assert (= (or b!1150267 b!1150266) bm!53536))

(assert (= (and b!1150293 (not res!765212)) b!1150289))

(assert (= (and b!1150289 c!113807) b!1150291))

(assert (= (and b!1150289 (not c!113807)) b!1150274))

(assert (= (and b!1150291 c!113806) b!1150278))

(assert (= (and b!1150291 (not c!113806)) b!1150288))

(assert (= (and b!1150288 c!113803) b!1150276))

(assert (= (and b!1150288 (not c!113803)) b!1150295))

(assert (= (and b!1150295 c!113804) b!1150277))

(assert (= (and b!1150295 (not c!113804)) b!1150282))

(assert (= (or b!1150276 b!1150277) bm!53537))

(assert (= (or b!1150276 b!1150277) bm!53538))

(assert (= (or b!1150276 b!1150277) bm!53534))

(assert (= (or b!1150278 bm!53534) bm!53535))

(assert (= (or b!1150278 bm!53537) bm!53541))

(assert (= (or b!1150278 bm!53538) bm!53540))

(assert (= (and b!1150291 c!113808) b!1150268))

(assert (= (and b!1150291 (not c!113808)) b!1150281))

(assert (= (and b!1150291 res!765209) b!1150287))

(assert (= (and b!1150289 res!765208) b!1150294))

(assert (= (and b!1150285 condMapEmpty!45119) mapIsEmpty!45119))

(assert (= (and b!1150285 (not condMapEmpty!45119)) mapNonEmpty!45119))

(get-info :version)

(assert (= (and mapNonEmpty!45119 ((_ is ValueCellFull!13722) mapValue!45119)) b!1150286))

(assert (= (and b!1150285 ((_ is ValueCellFull!13722) mapDefault!45119)) b!1150275))

(assert (= start!98764 b!1150285))

(declare-fun b_lambda!19457 () Bool)

(assert (=> (not b_lambda!19457) (not b!1150292)))

(declare-fun t!36589 () Bool)

(declare-fun tb!9153 () Bool)

(assert (=> (and start!98764 (= defaultEntry!1004 defaultEntry!1004) t!36589) tb!9153))

(declare-fun result!18863 () Bool)

(assert (=> tb!9153 (= result!18863 tp_is_empty!28863)))

(assert (=> b!1150292 t!36589))

(declare-fun b_and!39531 () Bool)

(assert (= b_and!39529 (and (=> t!36589 result!18863) b_and!39531)))

(declare-fun m!1060575 () Bool)

(assert (=> b!1150294 m!1060575))

(declare-fun m!1060577 () Bool)

(assert (=> bm!53541 m!1060577))

(declare-fun m!1060579 () Bool)

(assert (=> b!1150290 m!1060579))

(declare-fun m!1060581 () Bool)

(assert (=> b!1150289 m!1060581))

(declare-fun m!1060583 () Bool)

(assert (=> b!1150289 m!1060583))

(declare-fun m!1060585 () Bool)

(assert (=> b!1150289 m!1060585))

(declare-fun m!1060587 () Bool)

(assert (=> b!1150289 m!1060587))

(declare-fun m!1060589 () Bool)

(assert (=> b!1150289 m!1060589))

(declare-fun m!1060591 () Bool)

(assert (=> b!1150289 m!1060591))

(declare-fun m!1060593 () Bool)

(assert (=> b!1150289 m!1060593))

(assert (=> b!1150289 m!1060589))

(assert (=> b!1150289 m!1060585))

(declare-fun m!1060595 () Bool)

(assert (=> b!1150289 m!1060595))

(assert (=> b!1150289 m!1060583))

(assert (=> b!1150289 m!1060589))

(declare-fun m!1060597 () Bool)

(assert (=> b!1150289 m!1060597))

(declare-fun m!1060599 () Bool)

(assert (=> b!1150270 m!1060599))

(declare-fun m!1060601 () Bool)

(assert (=> b!1150278 m!1060601))

(assert (=> b!1150278 m!1060601))

(declare-fun m!1060603 () Bool)

(assert (=> b!1150278 m!1060603))

(declare-fun m!1060605 () Bool)

(assert (=> b!1150278 m!1060605))

(declare-fun m!1060607 () Bool)

(assert (=> b!1150283 m!1060607))

(declare-fun m!1060609 () Bool)

(assert (=> start!98764 m!1060609))

(declare-fun m!1060611 () Bool)

(assert (=> start!98764 m!1060611))

(declare-fun m!1060613 () Bool)

(assert (=> b!1150271 m!1060613))

(assert (=> b!1150293 m!1060589))

(declare-fun m!1060615 () Bool)

(assert (=> b!1150293 m!1060615))

(declare-fun m!1060617 () Bool)

(assert (=> b!1150291 m!1060617))

(declare-fun m!1060619 () Bool)

(assert (=> b!1150291 m!1060619))

(declare-fun m!1060621 () Bool)

(assert (=> b!1150291 m!1060621))

(declare-fun m!1060623 () Bool)

(assert (=> b!1150291 m!1060623))

(declare-fun m!1060625 () Bool)

(assert (=> b!1150272 m!1060625))

(declare-fun m!1060627 () Bool)

(assert (=> bm!53535 m!1060627))

(declare-fun m!1060629 () Bool)

(assert (=> mapNonEmpty!45119 m!1060629))

(declare-fun m!1060631 () Bool)

(assert (=> bm!53540 m!1060631))

(declare-fun m!1060633 () Bool)

(assert (=> b!1150279 m!1060633))

(declare-fun m!1060635 () Bool)

(assert (=> b!1150279 m!1060635))

(declare-fun m!1060637 () Bool)

(assert (=> b!1150284 m!1060637))

(declare-fun m!1060639 () Bool)

(assert (=> b!1150284 m!1060639))

(declare-fun m!1060641 () Bool)

(assert (=> b!1150287 m!1060641))

(declare-fun m!1060643 () Bool)

(assert (=> b!1150267 m!1060643))

(assert (=> bm!53536 m!1060581))

(assert (=> b!1150268 m!1060641))

(assert (=> bm!53539 m!1060575))

(declare-fun m!1060645 () Bool)

(assert (=> b!1150292 m!1060645))

(declare-fun m!1060647 () Bool)

(assert (=> b!1150292 m!1060647))

(declare-fun m!1060649 () Bool)

(assert (=> b!1150292 m!1060649))

(declare-fun m!1060651 () Bool)

(assert (=> b!1150292 m!1060651))

(declare-fun m!1060653 () Bool)

(assert (=> b!1150273 m!1060653))

(check-sat tp_is_empty!28863 (not b!1150279) (not mapNonEmpty!45119) (not b!1150289) (not bm!53536) (not start!98764) (not bm!53535) (not b!1150270) (not b!1150292) (not b!1150293) (not b!1150268) (not b_next!24333) (not b!1150291) (not b!1150267) (not b!1150272) (not bm!53539) (not b!1150287) (not b!1150290) (not b!1150283) (not b!1150294) (not bm!53541) b_and!39531 (not b!1150278) (not b_lambda!19457) (not bm!53540) (not b!1150284) (not b!1150273))
(check-sat b_and!39531 (not b_next!24333))
