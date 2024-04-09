; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!98416 () Bool)

(assert start!98416)

(declare-fun b_free!23985 () Bool)

(declare-fun b_next!23985 () Bool)

(assert (=> start!98416 (= b_free!23985 (not b_next!23985))))

(declare-fun tp!84666 () Bool)

(declare-fun b_and!38833 () Bool)

(assert (=> start!98416 (= tp!84666 b_and!38833)))

(declare-fun k0!934 () (_ BitVec 64))

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun b!1134443 () Bool)

(declare-fun e!645670 () Bool)

(declare-datatypes ((array!73852 0))(
  ( (array!73853 (arr!35573 (Array (_ BitVec 32) (_ BitVec 64))) (size!36110 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!73852)

(declare-fun arrayContainsKey!0 (array!73852 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1134443 (= e!645670 (arrayContainsKey!0 _keys!1208 k0!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun b!1134444 () Bool)

(declare-fun e!645659 () Bool)

(declare-fun e!645665 () Bool)

(assert (=> b!1134444 (= e!645659 (not e!645665))))

(declare-fun res!757438 () Bool)

(assert (=> b!1134444 (=> res!757438 e!645665)))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1134444 (= res!757438 (bvsgt from!1455 i!673))))

(assert (=> b!1134444 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!37112 0))(
  ( (Unit!37113) )
))
(declare-fun lt!504205 () Unit!37112)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!73852 (_ BitVec 64) (_ BitVec 32)) Unit!37112)

(assert (=> b!1134444 (= lt!504205 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-datatypes ((V!43147 0))(
  ( (V!43148 (val!14314 Int)) )
))
(declare-fun zeroValue!944 () V!43147)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun bm!49358 () Bool)

(declare-datatypes ((ValueCell!13548 0))(
  ( (ValueCellFull!13548 (v!16952 V!43147)) (EmptyCell!13548) )
))
(declare-datatypes ((array!73854 0))(
  ( (array!73855 (arr!35574 (Array (_ BitVec 32) ValueCell!13548)) (size!36111 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!73854)

(declare-fun minValue!944 () V!43147)

(declare-datatypes ((tuple2!18150 0))(
  ( (tuple2!18151 (_1!9085 (_ BitVec 64)) (_2!9085 V!43147)) )
))
(declare-datatypes ((List!24962 0))(
  ( (Nil!24959) (Cons!24958 (h!26167 tuple2!18150) (t!35946 List!24962)) )
))
(declare-datatypes ((ListLongMap!16131 0))(
  ( (ListLongMap!16132 (toList!8081 List!24962)) )
))
(declare-fun call!49362 () ListLongMap!16131)

(declare-fun defaultEntry!1004 () Int)

(declare-fun getCurrentListMapNoExtraKeys!4530 (array!73852 array!73854 (_ BitVec 32) (_ BitVec 32) V!43147 V!43147 (_ BitVec 32) Int) ListLongMap!16131)

(assert (=> bm!49358 (= call!49362 (getCurrentListMapNoExtraKeys!4530 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1134445 () Bool)

(declare-fun c!110740 () Bool)

(declare-fun lt!504196 () Bool)

(assert (=> b!1134445 (= c!110740 (and (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!504196))))

(declare-fun e!645661 () Unit!37112)

(declare-fun e!645672 () Unit!37112)

(assert (=> b!1134445 (= e!645661 e!645672)))

(declare-fun b!1134446 () Bool)

(declare-fun res!757439 () Bool)

(declare-fun e!645663 () Bool)

(assert (=> b!1134446 (=> (not res!757439) (not e!645663))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!73852 (_ BitVec 32)) Bool)

(assert (=> b!1134446 (= res!757439 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1134447 () Bool)

(declare-fun e!645668 () Bool)

(declare-fun tp_is_empty!28515 () Bool)

(assert (=> b!1134447 (= e!645668 tp_is_empty!28515)))

(declare-fun b!1134449 () Bool)

(declare-fun lt!504210 () Unit!37112)

(assert (=> b!1134449 (= e!645672 lt!504210)))

(declare-fun call!49363 () Unit!37112)

(assert (=> b!1134449 (= lt!504210 call!49363)))

(declare-fun call!49368 () Bool)

(assert (=> b!1134449 call!49368))

(declare-fun bm!49359 () Bool)

(declare-fun call!49367 () Unit!37112)

(assert (=> bm!49359 (= call!49363 call!49367)))

(declare-fun b!1134450 () Bool)

(declare-fun e!645664 () Unit!37112)

(assert (=> b!1134450 (= e!645664 e!645661)))

(declare-fun c!110738 () Bool)

(assert (=> b!1134450 (= c!110738 (and (not lt!504196) (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1134451 () Bool)

(declare-fun res!757427 () Bool)

(declare-fun e!645660 () Bool)

(assert (=> b!1134451 (=> res!757427 e!645660)))

(declare-datatypes ((List!24963 0))(
  ( (Nil!24960) (Cons!24959 (h!26168 (_ BitVec 64)) (t!35947 List!24963)) )
))
(declare-fun contains!6575 (List!24963 (_ BitVec 64)) Bool)

(assert (=> b!1134451 (= res!757427 (contains!6575 Nil!24960 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1134452 () Bool)

(declare-fun e!645658 () Bool)

(assert (=> b!1134452 (= e!645665 e!645658)))

(declare-fun res!757433 () Bool)

(assert (=> b!1134452 (=> res!757433 e!645658)))

(assert (=> b!1134452 (= res!757433 (not (= from!1455 i!673)))))

(declare-fun lt!504195 () ListLongMap!16131)

(declare-fun lt!504209 () array!73854)

(declare-fun lt!504207 () array!73852)

(assert (=> b!1134452 (= lt!504195 (getCurrentListMapNoExtraKeys!4530 lt!504207 lt!504209 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun dynLambda!2598 (Int (_ BitVec 64)) V!43147)

(assert (=> b!1134452 (= lt!504209 (array!73855 (store (arr!35574 _values!996) i!673 (ValueCellFull!13548 (dynLambda!2598 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!36111 _values!996)))))

(declare-fun lt!504198 () ListLongMap!16131)

(assert (=> b!1134452 (= lt!504198 (getCurrentListMapNoExtraKeys!4530 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1134453 () Bool)

(declare-fun e!645656 () Bool)

(assert (=> b!1134453 (= e!645656 e!645660)))

(declare-fun res!757430 () Bool)

(assert (=> b!1134453 (=> res!757430 e!645660)))

(assert (=> b!1134453 (= res!757430 (or (bvsge (size!36110 _keys!1208) #b01111111111111111111111111111111) (bvsge (bvadd #b00000000000000000000000000000001 from!1455) (size!36110 _keys!1208)) (bvsge from!1455 (size!36110 _keys!1208))))))

(declare-fun arrayNoDuplicates!0 (array!73852 (_ BitVec 32) List!24963) Bool)

(assert (=> b!1134453 (arrayNoDuplicates!0 _keys!1208 from!1455 Nil!24960)))

(declare-fun lt!504204 () Unit!37112)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!73852 (_ BitVec 32) (_ BitVec 32)) Unit!37112)

(assert (=> b!1134453 (= lt!504204 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1208 #b00000000000000000000000000000000 from!1455))))

(declare-fun e!645662 () Bool)

(assert (=> b!1134453 e!645662))

(declare-fun res!757441 () Bool)

(assert (=> b!1134453 (=> (not res!757441) (not e!645662))))

(assert (=> b!1134453 (= res!757441 e!645670)))

(declare-fun c!110742 () Bool)

(assert (=> b!1134453 (= c!110742 (and (not (= k0!934 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!934 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun lt!504202 () Unit!37112)

(declare-fun lemmaListMapContainsThenArrayContainsFrom!348 (array!73852 array!73854 (_ BitVec 32) (_ BitVec 32) V!43147 V!43147 (_ BitVec 64) (_ BitVec 32) Int) Unit!37112)

(assert (=> b!1134453 (= lt!504202 (lemmaListMapContainsThenArrayContainsFrom!348 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun lt!504201 () Unit!37112)

(assert (=> b!1134453 (= lt!504201 e!645664)))

(declare-fun c!110739 () Bool)

(assert (=> b!1134453 (= c!110739 (and (not lt!504196) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> b!1134453 (= lt!504196 (= (bvand extraKeys!923 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(declare-fun mapNonEmpty!44597 () Bool)

(declare-fun mapRes!44597 () Bool)

(declare-fun tp!84667 () Bool)

(declare-fun e!645657 () Bool)

(assert (=> mapNonEmpty!44597 (= mapRes!44597 (and tp!84667 e!645657))))

(declare-fun mapRest!44597 () (Array (_ BitVec 32) ValueCell!13548))

(declare-fun mapKey!44597 () (_ BitVec 32))

(declare-fun mapValue!44597 () ValueCell!13548)

(assert (=> mapNonEmpty!44597 (= (arr!35574 _values!996) (store mapRest!44597 mapKey!44597 mapValue!44597))))

(declare-fun b!1134454 () Bool)

(declare-fun res!757429 () Bool)

(assert (=> b!1134454 (=> res!757429 e!645660)))

(declare-fun noDuplicate!1609 (List!24963) Bool)

(assert (=> b!1134454 (= res!757429 (not (noDuplicate!1609 Nil!24960)))))

(declare-fun b!1134455 () Bool)

(assert (=> b!1134455 (= e!645662 (arrayContainsKey!0 _keys!1208 k0!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun b!1134456 () Bool)

(assert (=> b!1134456 (= e!645663 e!645659)))

(declare-fun res!757425 () Bool)

(assert (=> b!1134456 (=> (not res!757425) (not e!645659))))

(assert (=> b!1134456 (= res!757425 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!504207 mask!1564))))

(assert (=> b!1134456 (= lt!504207 (array!73853 (store (arr!35573 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!36110 _keys!1208)))))

(declare-fun b!1134457 () Bool)

(declare-fun lt!504208 () Unit!37112)

(assert (=> b!1134457 (= e!645664 lt!504208)))

(declare-fun lt!504197 () Unit!37112)

(assert (=> b!1134457 (= lt!504197 call!49367)))

(declare-fun lt!504206 () ListLongMap!16131)

(declare-fun call!49361 () ListLongMap!16131)

(assert (=> b!1134457 (= lt!504206 call!49361)))

(declare-fun call!49364 () Bool)

(assert (=> b!1134457 call!49364))

(declare-fun addStillContains!739 (ListLongMap!16131 (_ BitVec 64) V!43147 (_ BitVec 64)) Unit!37112)

(assert (=> b!1134457 (= lt!504208 (addStillContains!739 lt!504206 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944 k0!934))))

(declare-fun contains!6576 (ListLongMap!16131 (_ BitVec 64)) Bool)

(declare-fun +!3440 (ListLongMap!16131 tuple2!18150) ListLongMap!16131)

(assert (=> b!1134457 (contains!6576 (+!3440 lt!504206 (tuple2!18151 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944)) k0!934)))

(declare-fun b!1134458 () Bool)

(declare-fun res!757432 () Bool)

(assert (=> b!1134458 (=> (not res!757432) (not e!645663))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1134458 (= res!757432 (validMask!0 mask!1564))))

(declare-fun b!1134459 () Bool)

(declare-fun res!757440 () Bool)

(assert (=> b!1134459 (=> (not res!757440) (not e!645663))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1134459 (= res!757440 (validKeyInArray!0 k0!934))))

(declare-fun bm!49360 () Bool)

(assert (=> bm!49360 (= call!49368 call!49364)))

(declare-fun b!1134460 () Bool)

(declare-fun res!757426 () Bool)

(assert (=> b!1134460 (=> (not res!757426) (not e!645663))))

(assert (=> b!1134460 (= res!757426 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!24960))))

(declare-fun bm!49361 () Bool)

(declare-fun call!49365 () ListLongMap!16131)

(assert (=> bm!49361 (= call!49364 (contains!6576 (ite c!110739 lt!504206 call!49365) k0!934))))

(declare-fun b!1134448 () Bool)

(assert (=> b!1134448 call!49368))

(declare-fun lt!504203 () Unit!37112)

(assert (=> b!1134448 (= lt!504203 call!49363)))

(assert (=> b!1134448 (= e!645661 lt!504203)))

(declare-fun res!757435 () Bool)

(assert (=> start!98416 (=> (not res!757435) (not e!645663))))

(assert (=> start!98416 (= res!757435 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!36110 _keys!1208))))))

(assert (=> start!98416 e!645663))

(assert (=> start!98416 tp_is_empty!28515))

(declare-fun array_inv!27150 (array!73852) Bool)

(assert (=> start!98416 (array_inv!27150 _keys!1208)))

(assert (=> start!98416 true))

(assert (=> start!98416 tp!84666))

(declare-fun e!645671 () Bool)

(declare-fun array_inv!27151 (array!73854) Bool)

(assert (=> start!98416 (and (array_inv!27151 _values!996) e!645671)))

(declare-fun e!645666 () Bool)

(declare-fun call!49366 () ListLongMap!16131)

(declare-fun b!1134461 () Bool)

(declare-fun -!1198 (ListLongMap!16131 (_ BitVec 64)) ListLongMap!16131)

(assert (=> b!1134461 (= e!645666 (= call!49366 (-!1198 call!49362 k0!934)))))

(declare-fun b!1134462 () Bool)

(assert (=> b!1134462 (= e!645660 true)))

(declare-fun lt!504199 () Bool)

(assert (=> b!1134462 (= lt!504199 (contains!6575 Nil!24960 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun mapIsEmpty!44597 () Bool)

(assert (=> mapIsEmpty!44597 mapRes!44597))

(declare-fun b!1134463 () Bool)

(declare-fun Unit!37114 () Unit!37112)

(assert (=> b!1134463 (= e!645672 Unit!37114)))

(declare-fun bm!49362 () Bool)

(declare-fun lt!504200 () ListLongMap!16131)

(assert (=> bm!49362 (= call!49361 (+!3440 lt!504200 (ite (or c!110739 c!110738) (tuple2!18151 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!18151 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944))))))

(declare-fun b!1134464 () Bool)

(assert (=> b!1134464 (= e!645666 (= call!49366 call!49362))))

(declare-fun b!1134465 () Bool)

(declare-fun e!645667 () Bool)

(assert (=> b!1134465 (= e!645658 e!645667)))

(declare-fun res!757428 () Bool)

(assert (=> b!1134465 (=> res!757428 e!645667)))

(assert (=> b!1134465 (= res!757428 (not (= (select (arr!35573 _keys!1208) from!1455) k0!934)))))

(assert (=> b!1134465 e!645666))

(declare-fun c!110741 () Bool)

(assert (=> b!1134465 (= c!110741 (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673))))

(declare-fun lt!504194 () Unit!37112)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!454 (array!73852 array!73854 (_ BitVec 32) (_ BitVec 32) V!43147 V!43147 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!37112)

(assert (=> b!1134465 (= lt!504194 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!454 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1134466 () Bool)

(assert (=> b!1134466 (= e!645670 (ite (= k0!934 #b0000000000000000000000000000000000000000000000000000000000000000) (not lt!504196) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!1134467 () Bool)

(declare-fun res!757436 () Bool)

(assert (=> b!1134467 (=> (not res!757436) (not e!645663))))

(assert (=> b!1134467 (= res!757436 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!36110 _keys!1208))))))

(declare-fun bm!49363 () Bool)

(assert (=> bm!49363 (= call!49366 (getCurrentListMapNoExtraKeys!4530 lt!504207 lt!504209 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1134468 () Bool)

(declare-fun res!757434 () Bool)

(assert (=> b!1134468 (=> (not res!757434) (not e!645663))))

(assert (=> b!1134468 (= res!757434 (and (= (size!36111 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!36110 _keys!1208) (size!36111 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun bm!49364 () Bool)

(assert (=> bm!49364 (= call!49365 call!49361)))

(declare-fun b!1134469 () Bool)

(assert (=> b!1134469 (= e!645667 e!645656)))

(declare-fun res!757437 () Bool)

(assert (=> b!1134469 (=> res!757437 e!645656)))

(assert (=> b!1134469 (= res!757437 (not (contains!6576 lt!504200 k0!934)))))

(assert (=> b!1134469 (= lt!504200 (getCurrentListMapNoExtraKeys!4530 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1134470 () Bool)

(declare-fun res!757442 () Bool)

(assert (=> b!1134470 (=> (not res!757442) (not e!645659))))

(assert (=> b!1134470 (= res!757442 (arrayNoDuplicates!0 lt!504207 #b00000000000000000000000000000000 Nil!24960))))

(declare-fun b!1134471 () Bool)

(assert (=> b!1134471 (= e!645657 tp_is_empty!28515)))

(declare-fun bm!49365 () Bool)

(assert (=> bm!49365 (= call!49367 (addStillContains!739 lt!504200 (ite (or c!110739 c!110738) #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000) (ite (or c!110739 c!110738) zeroValue!944 minValue!944) k0!934))))

(declare-fun b!1134472 () Bool)

(assert (=> b!1134472 (= e!645671 (and e!645668 mapRes!44597))))

(declare-fun condMapEmpty!44597 () Bool)

(declare-fun mapDefault!44597 () ValueCell!13548)

(assert (=> b!1134472 (= condMapEmpty!44597 (= (arr!35574 _values!996) ((as const (Array (_ BitVec 32) ValueCell!13548)) mapDefault!44597)))))

(declare-fun b!1134473 () Bool)

(declare-fun res!757431 () Bool)

(assert (=> b!1134473 (=> (not res!757431) (not e!645663))))

(assert (=> b!1134473 (= res!757431 (= (select (arr!35573 _keys!1208) i!673) k0!934))))

(assert (= (and start!98416 res!757435) b!1134458))

(assert (= (and b!1134458 res!757432) b!1134468))

(assert (= (and b!1134468 res!757434) b!1134446))

(assert (= (and b!1134446 res!757439) b!1134460))

(assert (= (and b!1134460 res!757426) b!1134467))

(assert (= (and b!1134467 res!757436) b!1134459))

(assert (= (and b!1134459 res!757440) b!1134473))

(assert (= (and b!1134473 res!757431) b!1134456))

(assert (= (and b!1134456 res!757425) b!1134470))

(assert (= (and b!1134470 res!757442) b!1134444))

(assert (= (and b!1134444 (not res!757438)) b!1134452))

(assert (= (and b!1134452 (not res!757433)) b!1134465))

(assert (= (and b!1134465 c!110741) b!1134461))

(assert (= (and b!1134465 (not c!110741)) b!1134464))

(assert (= (or b!1134461 b!1134464) bm!49363))

(assert (= (or b!1134461 b!1134464) bm!49358))

(assert (= (and b!1134465 (not res!757428)) b!1134469))

(assert (= (and b!1134469 (not res!757437)) b!1134453))

(assert (= (and b!1134453 c!110739) b!1134457))

(assert (= (and b!1134453 (not c!110739)) b!1134450))

(assert (= (and b!1134450 c!110738) b!1134448))

(assert (= (and b!1134450 (not c!110738)) b!1134445))

(assert (= (and b!1134445 c!110740) b!1134449))

(assert (= (and b!1134445 (not c!110740)) b!1134463))

(assert (= (or b!1134448 b!1134449) bm!49359))

(assert (= (or b!1134448 b!1134449) bm!49364))

(assert (= (or b!1134448 b!1134449) bm!49360))

(assert (= (or b!1134457 bm!49360) bm!49361))

(assert (= (or b!1134457 bm!49359) bm!49365))

(assert (= (or b!1134457 bm!49364) bm!49362))

(assert (= (and b!1134453 c!110742) b!1134443))

(assert (= (and b!1134453 (not c!110742)) b!1134466))

(assert (= (and b!1134453 res!757441) b!1134455))

(assert (= (and b!1134453 (not res!757430)) b!1134454))

(assert (= (and b!1134454 (not res!757429)) b!1134451))

(assert (= (and b!1134451 (not res!757427)) b!1134462))

(assert (= (and b!1134472 condMapEmpty!44597) mapIsEmpty!44597))

(assert (= (and b!1134472 (not condMapEmpty!44597)) mapNonEmpty!44597))

(get-info :version)

(assert (= (and mapNonEmpty!44597 ((_ is ValueCellFull!13548) mapValue!44597)) b!1134471))

(assert (= (and b!1134472 ((_ is ValueCellFull!13548) mapDefault!44597)) b!1134447))

(assert (= start!98416 b!1134472))

(declare-fun b_lambda!19109 () Bool)

(assert (=> (not b_lambda!19109) (not b!1134452)))

(declare-fun t!35945 () Bool)

(declare-fun tb!8805 () Bool)

(assert (=> (and start!98416 (= defaultEntry!1004 defaultEntry!1004) t!35945) tb!8805))

(declare-fun result!18167 () Bool)

(assert (=> tb!8805 (= result!18167 tp_is_empty!28515)))

(assert (=> b!1134452 t!35945))

(declare-fun b_and!38835 () Bool)

(assert (= b_and!38833 (and (=> t!35945 result!18167) b_and!38835)))

(declare-fun m!1047291 () Bool)

(assert (=> b!1134462 m!1047291))

(declare-fun m!1047293 () Bool)

(assert (=> b!1134454 m!1047293))

(declare-fun m!1047295 () Bool)

(assert (=> b!1134473 m!1047295))

(declare-fun m!1047297 () Bool)

(assert (=> b!1134470 m!1047297))

(declare-fun m!1047299 () Bool)

(assert (=> b!1134458 m!1047299))

(declare-fun m!1047301 () Bool)

(assert (=> b!1134459 m!1047301))

(declare-fun m!1047303 () Bool)

(assert (=> b!1134460 m!1047303))

(declare-fun m!1047305 () Bool)

(assert (=> b!1134453 m!1047305))

(declare-fun m!1047307 () Bool)

(assert (=> b!1134453 m!1047307))

(declare-fun m!1047309 () Bool)

(assert (=> b!1134453 m!1047309))

(declare-fun m!1047311 () Bool)

(assert (=> bm!49365 m!1047311))

(declare-fun m!1047313 () Bool)

(assert (=> b!1134469 m!1047313))

(declare-fun m!1047315 () Bool)

(assert (=> b!1134469 m!1047315))

(declare-fun m!1047317 () Bool)

(assert (=> b!1134457 m!1047317))

(declare-fun m!1047319 () Bool)

(assert (=> b!1134457 m!1047319))

(assert (=> b!1134457 m!1047319))

(declare-fun m!1047321 () Bool)

(assert (=> b!1134457 m!1047321))

(declare-fun m!1047323 () Bool)

(assert (=> b!1134444 m!1047323))

(declare-fun m!1047325 () Bool)

(assert (=> b!1134444 m!1047325))

(declare-fun m!1047327 () Bool)

(assert (=> b!1134456 m!1047327))

(declare-fun m!1047329 () Bool)

(assert (=> b!1134456 m!1047329))

(declare-fun m!1047331 () Bool)

(assert (=> b!1134461 m!1047331))

(declare-fun m!1047333 () Bool)

(assert (=> b!1134465 m!1047333))

(declare-fun m!1047335 () Bool)

(assert (=> b!1134465 m!1047335))

(assert (=> bm!49358 m!1047315))

(declare-fun m!1047337 () Bool)

(assert (=> b!1134451 m!1047337))

(declare-fun m!1047339 () Bool)

(assert (=> mapNonEmpty!44597 m!1047339))

(declare-fun m!1047341 () Bool)

(assert (=> b!1134446 m!1047341))

(declare-fun m!1047343 () Bool)

(assert (=> b!1134452 m!1047343))

(declare-fun m!1047345 () Bool)

(assert (=> b!1134452 m!1047345))

(declare-fun m!1047347 () Bool)

(assert (=> b!1134452 m!1047347))

(declare-fun m!1047349 () Bool)

(assert (=> b!1134452 m!1047349))

(declare-fun m!1047351 () Bool)

(assert (=> bm!49363 m!1047351))

(declare-fun m!1047353 () Bool)

(assert (=> start!98416 m!1047353))

(declare-fun m!1047355 () Bool)

(assert (=> start!98416 m!1047355))

(declare-fun m!1047357 () Bool)

(assert (=> b!1134455 m!1047357))

(assert (=> b!1134443 m!1047357))

(declare-fun m!1047359 () Bool)

(assert (=> bm!49362 m!1047359))

(declare-fun m!1047361 () Bool)

(assert (=> bm!49361 m!1047361))

(check-sat (not b!1134465) (not bm!49363) (not bm!49365) (not b!1134460) (not b!1134452) (not mapNonEmpty!44597) (not b!1134456) (not b_lambda!19109) (not b!1134443) (not bm!49361) (not b!1134446) (not b!1134451) (not b!1134462) (not b!1134459) (not b!1134458) (not b!1134469) (not bm!49362) tp_is_empty!28515 b_and!38835 (not b!1134461) (not b!1134455) (not b!1134457) (not b!1134470) (not bm!49358) (not b!1134453) (not b_next!23985) (not b!1134444) (not start!98416) (not b!1134454))
(check-sat b_and!38835 (not b_next!23985))
