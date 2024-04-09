; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!98688 () Bool)

(assert start!98688)

(declare-fun b_free!24257 () Bool)

(declare-fun b_next!24257 () Bool)

(assert (=> start!98688 (= b_free!24257 (not b_next!24257))))

(declare-fun tp!85482 () Bool)

(declare-fun b_and!39377 () Bool)

(assert (=> start!98688 (= tp!85482 b_and!39377)))

(declare-fun b!1146770 () Bool)

(declare-fun call!52629 () Bool)

(assert (=> b!1146770 call!52629))

(declare-datatypes ((Unit!37586 0))(
  ( (Unit!37587) )
))
(declare-fun lt!512249 () Unit!37586)

(declare-fun call!52630 () Unit!37586)

(assert (=> b!1146770 (= lt!512249 call!52630)))

(declare-fun e!652344 () Unit!37586)

(assert (=> b!1146770 (= e!652344 lt!512249)))

(declare-fun b!1146771 () Bool)

(declare-fun e!652353 () Unit!37586)

(declare-fun Unit!37588 () Unit!37586)

(assert (=> b!1146771 (= e!652353 Unit!37588)))

(declare-fun lt!512251 () Bool)

(declare-fun extraKeys!923 () (_ BitVec 32))

(assert (=> b!1146771 (= lt!512251 (= (bvand extraKeys!923 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(declare-fun c!113124 () Bool)

(assert (=> b!1146771 (= c!113124 (and (not lt!512251) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun lt!512246 () Unit!37586)

(declare-fun e!652347 () Unit!37586)

(assert (=> b!1146771 (= lt!512246 e!652347)))

(declare-datatypes ((V!43509 0))(
  ( (V!43510 (val!14450 Int)) )
))
(declare-fun zeroValue!944 () V!43509)

(declare-datatypes ((array!74378 0))(
  ( (array!74379 (arr!35836 (Array (_ BitVec 32) (_ BitVec 64))) (size!36373 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!74378)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-fun k!934 () (_ BitVec 64))

(declare-datatypes ((ValueCell!13684 0))(
  ( (ValueCellFull!13684 (v!17088 V!43509)) (EmptyCell!13684) )
))
(declare-datatypes ((array!74380 0))(
  ( (array!74381 (arr!35837 (Array (_ BitVec 32) ValueCell!13684)) (size!36374 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!74380)

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun lt!512239 () Unit!37586)

(declare-fun minValue!944 () V!43509)

(declare-fun lemmaListMapContainsThenArrayContainsFrom!432 (array!74378 array!74380 (_ BitVec 32) (_ BitVec 32) V!43509 V!43509 (_ BitVec 64) (_ BitVec 32) Int) Unit!37586)

(assert (=> b!1146771 (= lt!512239 (lemmaListMapContainsThenArrayContainsFrom!432 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun c!113122 () Bool)

(assert (=> b!1146771 (= c!113122 (and (not (= k!934 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!934 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun res!763501 () Bool)

(declare-fun e!652345 () Bool)

(assert (=> b!1146771 (= res!763501 e!652345)))

(declare-fun e!652356 () Bool)

(assert (=> b!1146771 (=> (not res!763501) (not e!652356))))

(assert (=> b!1146771 e!652356))

(declare-fun lt!512237 () Unit!37586)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!74378 (_ BitVec 32) (_ BitVec 32)) Unit!37586)

(assert (=> b!1146771 (= lt!512237 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1208 #b00000000000000000000000000000000 from!1455))))

(declare-datatypes ((List!25189 0))(
  ( (Nil!25186) (Cons!25185 (h!26394 (_ BitVec 64)) (t!36445 List!25189)) )
))
(declare-fun arrayNoDuplicates!0 (array!74378 (_ BitVec 32) List!25189) Bool)

(assert (=> b!1146771 (arrayNoDuplicates!0 _keys!1208 from!1455 Nil!25186)))

(declare-fun lt!512253 () Unit!37586)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!74378 (_ BitVec 64) (_ BitVec 32) List!25189) Unit!37586)

(assert (=> b!1146771 (= lt!512253 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!1208 k!934 from!1455 Nil!25186))))

(assert (=> b!1146771 false))

(declare-fun b!1146772 () Bool)

(declare-fun res!763496 () Bool)

(declare-fun e!652354 () Bool)

(assert (=> b!1146772 (=> (not res!763496) (not e!652354))))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1146772 (= res!763496 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!36373 _keys!1208))))))

(declare-fun b!1146773 () Bool)

(declare-fun e!652350 () Bool)

(declare-fun e!652352 () Bool)

(assert (=> b!1146773 (= e!652350 (not e!652352))))

(declare-fun res!763498 () Bool)

(assert (=> b!1146773 (=> res!763498 e!652352)))

(assert (=> b!1146773 (= res!763498 (bvsgt from!1455 i!673))))

(declare-fun arrayContainsKey!0 (array!74378 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1146773 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-fun lt!512241 () Unit!37586)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!74378 (_ BitVec 64) (_ BitVec 32)) Unit!37586)

(assert (=> b!1146773 (= lt!512241 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun b!1146774 () Bool)

(declare-fun e!652351 () Bool)

(declare-fun tp_is_empty!28787 () Bool)

(assert (=> b!1146774 (= e!652351 tp_is_empty!28787)))

(declare-fun b!1146775 () Bool)

(assert (=> b!1146775 (= e!652354 e!652350)))

(declare-fun res!763504 () Bool)

(assert (=> b!1146775 (=> (not res!763504) (not e!652350))))

(declare-fun lt!512233 () array!74378)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!74378 (_ BitVec 32)) Bool)

(assert (=> b!1146775 (= res!763504 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!512233 mask!1564))))

(assert (=> b!1146775 (= lt!512233 (array!74379 (store (arr!35836 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!36373 _keys!1208)))))

(declare-fun lt!512248 () array!74380)

(declare-fun c!113121 () Bool)

(declare-datatypes ((tuple2!18392 0))(
  ( (tuple2!18393 (_1!9206 (_ BitVec 64)) (_2!9206 V!43509)) )
))
(declare-datatypes ((List!25190 0))(
  ( (Nil!25187) (Cons!25186 (h!26395 tuple2!18392) (t!36446 List!25190)) )
))
(declare-datatypes ((ListLongMap!16373 0))(
  ( (ListLongMap!16374 (toList!8202 List!25190)) )
))
(declare-fun call!52626 () ListLongMap!16373)

(declare-fun bm!52622 () Bool)

(declare-fun getCurrentListMapNoExtraKeys!4644 (array!74378 array!74380 (_ BitVec 32) (_ BitVec 32) V!43509 V!43509 (_ BitVec 32) Int) ListLongMap!16373)

(assert (=> bm!52622 (= call!52626 (getCurrentListMapNoExtraKeys!4644 (ite c!113121 lt!512233 _keys!1208) (ite c!113121 lt!512248 _values!996) mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun call!52625 () ListLongMap!16373)

(declare-fun bm!52623 () Bool)

(assert (=> bm!52623 (= call!52625 (getCurrentListMapNoExtraKeys!4644 (ite c!113121 _keys!1208 lt!512233) (ite c!113121 _values!996 lt!512248) mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1146776 () Bool)

(declare-fun e!652355 () Bool)

(declare-fun e!652346 () Bool)

(assert (=> b!1146776 (= e!652355 e!652346)))

(declare-fun res!763495 () Bool)

(assert (=> b!1146776 (=> res!763495 e!652346)))

(assert (=> b!1146776 (= res!763495 (not (= (select (arr!35836 _keys!1208) from!1455) k!934)))))

(declare-fun e!652341 () Bool)

(assert (=> b!1146776 e!652341))

(assert (=> b!1146776 (= c!113121 (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673))))

(declare-fun lt!512234 () Unit!37586)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!542 (array!74378 array!74380 (_ BitVec 32) (_ BitVec 32) V!43509 V!43509 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!37586)

(assert (=> b!1146776 (= lt!512234 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!542 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1146777 () Bool)

(declare-fun c!113120 () Bool)

(assert (=> b!1146777 (= c!113120 (and (not lt!512251) (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun e!652342 () Unit!37586)

(assert (=> b!1146777 (= e!652347 e!652342)))

(declare-fun b!1146778 () Bool)

(declare-fun res!763500 () Bool)

(assert (=> b!1146778 (=> (not res!763500) (not e!652354))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1146778 (= res!763500 (validMask!0 mask!1564))))

(declare-fun lt!512236 () ListLongMap!16373)

(declare-fun lt!512252 () ListLongMap!16373)

(declare-fun bm!52624 () Bool)

(declare-fun call!52627 () Unit!37586)

(declare-fun addStillContains!841 (ListLongMap!16373 (_ BitVec 64) V!43509 (_ BitVec 64)) Unit!37586)

(assert (=> bm!52624 (= call!52627 (addStillContains!841 (ite c!113124 lt!512252 lt!512236) (ite c!113124 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!113120 #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000)) (ite c!113124 minValue!944 (ite c!113120 zeroValue!944 minValue!944)) k!934))))

(declare-fun b!1146779 () Bool)

(declare-fun Unit!37589 () Unit!37586)

(assert (=> b!1146779 (= e!652344 Unit!37589)))

(declare-fun b!1146780 () Bool)

(declare-fun lt!512247 () Unit!37586)

(assert (=> b!1146780 (= e!652342 lt!512247)))

(assert (=> b!1146780 (= lt!512247 call!52630)))

(assert (=> b!1146780 call!52629))

(declare-fun b!1146781 () Bool)

(assert (=> b!1146781 (= e!652341 (= call!52625 call!52626))))

(declare-fun mapNonEmpty!45005 () Bool)

(declare-fun mapRes!45005 () Bool)

(declare-fun tp!85483 () Bool)

(declare-fun e!652343 () Bool)

(assert (=> mapNonEmpty!45005 (= mapRes!45005 (and tp!85483 e!652343))))

(declare-fun mapValue!45005 () ValueCell!13684)

(declare-fun mapKey!45005 () (_ BitVec 32))

(declare-fun mapRest!45005 () (Array (_ BitVec 32) ValueCell!13684))

(assert (=> mapNonEmpty!45005 (= (arr!35837 _values!996) (store mapRest!45005 mapKey!45005 mapValue!45005))))

(declare-fun bm!52625 () Bool)

(assert (=> bm!52625 (= call!52630 call!52627)))

(declare-fun bm!52626 () Bool)

(declare-fun call!52628 () Bool)

(assert (=> bm!52626 (= call!52629 call!52628)))

(declare-fun bm!52627 () Bool)

(declare-fun call!52631 () ListLongMap!16373)

(declare-fun +!3544 (ListLongMap!16373 tuple2!18392) ListLongMap!16373)

(assert (=> bm!52627 (= call!52631 (+!3544 (ite c!113124 lt!512252 lt!512236) (ite c!113124 (tuple2!18393 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944) (ite c!113120 (tuple2!18393 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!18393 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944)))))))

(declare-fun b!1146782 () Bool)

(declare-fun res!763508 () Bool)

(assert (=> b!1146782 (=> (not res!763508) (not e!652354))))

(assert (=> b!1146782 (= res!763508 (= (select (arr!35836 _keys!1208) i!673) k!934))))

(declare-fun b!1146783 () Bool)

(declare-fun Unit!37590 () Unit!37586)

(assert (=> b!1146783 (= e!652353 Unit!37590)))

(declare-fun b!1146784 () Bool)

(assert (=> b!1146784 (= e!652346 true)))

(declare-fun e!652348 () Bool)

(assert (=> b!1146784 e!652348))

(declare-fun res!763502 () Bool)

(assert (=> b!1146784 (=> (not res!763502) (not e!652348))))

(declare-fun lt!512244 () V!43509)

(declare-fun -!1292 (ListLongMap!16373 (_ BitVec 64)) ListLongMap!16373)

(assert (=> b!1146784 (= res!763502 (= (-!1292 (+!3544 lt!512236 (tuple2!18393 (select (arr!35836 _keys!1208) from!1455) lt!512244)) (select (arr!35836 _keys!1208) from!1455)) lt!512236))))

(declare-fun lt!512250 () Unit!37586)

(declare-fun addThenRemoveForNewKeyIsSame!144 (ListLongMap!16373 (_ BitVec 64) V!43509) Unit!37586)

(assert (=> b!1146784 (= lt!512250 (addThenRemoveForNewKeyIsSame!144 lt!512236 (select (arr!35836 _keys!1208) from!1455) lt!512244))))

(declare-fun lt!512240 () V!43509)

(declare-fun get!18250 (ValueCell!13684 V!43509) V!43509)

(assert (=> b!1146784 (= lt!512244 (get!18250 (select (arr!35837 _values!996) from!1455) lt!512240))))

(declare-fun lt!512245 () Unit!37586)

(assert (=> b!1146784 (= lt!512245 e!652353)))

(declare-fun c!113123 () Bool)

(declare-fun contains!6701 (ListLongMap!16373 (_ BitVec 64)) Bool)

(assert (=> b!1146784 (= c!113123 (contains!6701 lt!512236 k!934))))

(assert (=> b!1146784 (= lt!512236 (getCurrentListMapNoExtraKeys!4644 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1146785 () Bool)

(assert (=> b!1146785 (= e!652345 (arrayContainsKey!0 _keys!1208 k!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun b!1146786 () Bool)

(assert (=> b!1146786 (= e!652352 e!652355)))

(declare-fun res!763503 () Bool)

(assert (=> b!1146786 (=> res!763503 e!652355)))

(assert (=> b!1146786 (= res!763503 (not (= from!1455 i!673)))))

(declare-fun lt!512235 () ListLongMap!16373)

(assert (=> b!1146786 (= lt!512235 (getCurrentListMapNoExtraKeys!4644 lt!512233 lt!512248 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(assert (=> b!1146786 (= lt!512248 (array!74381 (store (arr!35837 _values!996) i!673 (ValueCellFull!13684 lt!512240)) (size!36374 _values!996)))))

(declare-fun dynLambda!2682 (Int (_ BitVec 64)) V!43509)

(assert (=> b!1146786 (= lt!512240 (dynLambda!2682 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!512238 () ListLongMap!16373)

(assert (=> b!1146786 (= lt!512238 (getCurrentListMapNoExtraKeys!4644 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1146787 () Bool)

(declare-fun res!763499 () Bool)

(assert (=> b!1146787 (=> (not res!763499) (not e!652354))))

(assert (=> b!1146787 (= res!763499 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1146788 () Bool)

(declare-fun res!763497 () Bool)

(assert (=> b!1146788 (=> (not res!763497) (not e!652354))))

(assert (=> b!1146788 (= res!763497 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!25186))))

(declare-fun b!1146789 () Bool)

(declare-fun res!763494 () Bool)

(assert (=> b!1146789 (=> (not res!763494) (not e!652350))))

(assert (=> b!1146789 (= res!763494 (arrayNoDuplicates!0 lt!512233 #b00000000000000000000000000000000 Nil!25186))))

(declare-fun mapIsEmpty!45005 () Bool)

(assert (=> mapIsEmpty!45005 mapRes!45005))

(declare-fun res!763506 () Bool)

(assert (=> start!98688 (=> (not res!763506) (not e!652354))))

(assert (=> start!98688 (= res!763506 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!36373 _keys!1208))))))

(assert (=> start!98688 e!652354))

(assert (=> start!98688 tp_is_empty!28787))

(declare-fun array_inv!27334 (array!74378) Bool)

(assert (=> start!98688 (array_inv!27334 _keys!1208)))

(assert (=> start!98688 true))

(assert (=> start!98688 tp!85482))

(declare-fun e!652340 () Bool)

(declare-fun array_inv!27335 (array!74380) Bool)

(assert (=> start!98688 (and (array_inv!27335 _values!996) e!652340)))

(declare-fun b!1146790 () Bool)

(assert (=> b!1146790 (= e!652340 (and e!652351 mapRes!45005))))

(declare-fun condMapEmpty!45005 () Bool)

(declare-fun mapDefault!45005 () ValueCell!13684)

