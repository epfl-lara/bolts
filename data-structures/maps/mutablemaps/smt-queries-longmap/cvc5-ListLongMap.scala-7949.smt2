; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!98570 () Bool)

(assert start!98570)

(declare-fun b_free!24139 () Bool)

(declare-fun b_next!24139 () Bool)

(assert (=> start!98570 (= b_free!24139 (not b_next!24139))))

(declare-fun tp!85129 () Bool)

(declare-fun b_and!39141 () Bool)

(assert (=> start!98570 (= tp!85129 b_and!39141)))

(declare-datatypes ((V!43353 0))(
  ( (V!43354 (val!14391 Int)) )
))
(declare-fun zeroValue!944 () V!43353)

(declare-datatypes ((tuple2!18288 0))(
  ( (tuple2!18289 (_1!9154 (_ BitVec 64)) (_2!9154 V!43353)) )
))
(declare-datatypes ((List!25089 0))(
  ( (Nil!25086) (Cons!25085 (h!26294 tuple2!18288) (t!36227 List!25089)) )
))
(declare-datatypes ((ListLongMap!16269 0))(
  ( (ListLongMap!16270 (toList!8150 List!25089)) )
))
(declare-fun lt!508516 () ListLongMap!16269)

(declare-fun k!934 () (_ BitVec 64))

(declare-datatypes ((Unit!37363 0))(
  ( (Unit!37364) )
))
(declare-fun call!51214 () Unit!37363)

(declare-fun c!112060 () Bool)

(declare-fun lt!508526 () ListLongMap!16269)

(declare-fun bm!51206 () Bool)

(declare-fun minValue!944 () V!43353)

(declare-fun c!112059 () Bool)

(declare-fun addStillContains!796 (ListLongMap!16269 (_ BitVec 64) V!43353 (_ BitVec 64)) Unit!37363)

(assert (=> bm!51206 (= call!51214 (addStillContains!796 (ite c!112060 lt!508526 lt!508516) (ite c!112060 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!112059 #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000)) (ite c!112060 minValue!944 (ite c!112059 zeroValue!944 minValue!944)) k!934))))

(declare-fun b!1141430 () Bool)

(declare-fun e!649419 () Bool)

(declare-fun e!649432 () Bool)

(assert (=> b!1141430 (= e!649419 e!649432)))

(declare-fun res!760934 () Bool)

(assert (=> b!1141430 (=> res!760934 e!649432)))

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1141430 (= res!760934 (not (= from!1455 i!673)))))

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-datatypes ((array!74148 0))(
  ( (array!74149 (arr!35721 (Array (_ BitVec 32) (_ BitVec 64))) (size!36258 (_ BitVec 32))) )
))
(declare-fun lt!508528 () array!74148)

(declare-fun lt!508534 () ListLongMap!16269)

(declare-datatypes ((ValueCell!13625 0))(
  ( (ValueCellFull!13625 (v!17029 V!43353)) (EmptyCell!13625) )
))
(declare-datatypes ((array!74150 0))(
  ( (array!74151 (arr!35722 (Array (_ BitVec 32) ValueCell!13625)) (size!36259 (_ BitVec 32))) )
))
(declare-fun lt!508524 () array!74150)

(declare-fun getCurrentListMapNoExtraKeys!4594 (array!74148 array!74150 (_ BitVec 32) (_ BitVec 32) V!43353 V!43353 (_ BitVec 32) Int) ListLongMap!16269)

(assert (=> b!1141430 (= lt!508534 (getCurrentListMapNoExtraKeys!4594 lt!508528 lt!508524 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun _values!996 () array!74150)

(declare-fun lt!508531 () V!43353)

(assert (=> b!1141430 (= lt!508524 (array!74151 (store (arr!35722 _values!996) i!673 (ValueCellFull!13625 lt!508531)) (size!36259 _values!996)))))

(declare-fun dynLambda!2646 (Int (_ BitVec 64)) V!43353)

(assert (=> b!1141430 (= lt!508531 (dynLambda!2646 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun _keys!1208 () array!74148)

(declare-fun lt!508533 () ListLongMap!16269)

(assert (=> b!1141430 (= lt!508533 (getCurrentListMapNoExtraKeys!4594 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun e!649433 () Bool)

(declare-fun b!1141431 () Bool)

(declare-fun arrayContainsKey!0 (array!74148 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1141431 (= e!649433 (arrayContainsKey!0 _keys!1208 k!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun b!1141432 () Bool)

(declare-fun e!649431 () Bool)

(assert (=> b!1141432 (= e!649432 e!649431)))

(declare-fun res!760938 () Bool)

(assert (=> b!1141432 (=> res!760938 e!649431)))

(assert (=> b!1141432 (= res!760938 (not (= (select (arr!35721 _keys!1208) from!1455) k!934)))))

(declare-fun e!649424 () Bool)

(assert (=> b!1141432 e!649424))

(declare-fun c!112062 () Bool)

(assert (=> b!1141432 (= c!112062 (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673))))

(declare-fun lt!508521 () Unit!37363)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!503 (array!74148 array!74150 (_ BitVec 32) (_ BitVec 32) V!43353 V!43353 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!37363)

(assert (=> b!1141432 (= lt!508521 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!503 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1141433 () Bool)

(declare-fun e!649429 () Bool)

(assert (=> b!1141433 (= e!649429 (not e!649419))))

(declare-fun res!760932 () Bool)

(assert (=> b!1141433 (=> res!760932 e!649419)))

(assert (=> b!1141433 (= res!760932 (bvsgt from!1455 i!673))))

(assert (=> b!1141433 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-fun lt!508525 () Unit!37363)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!74148 (_ BitVec 64) (_ BitVec 32)) Unit!37363)

(assert (=> b!1141433 (= lt!508525 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun b!1141434 () Bool)

(declare-fun e!649422 () Unit!37363)

(declare-fun e!649421 () Unit!37363)

(assert (=> b!1141434 (= e!649422 e!649421)))

(declare-fun c!112057 () Bool)

(declare-fun lt!508536 () Bool)

(assert (=> b!1141434 (= c!112057 (and (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!508536))))

(declare-fun b!1141435 () Bool)

(declare-fun e!649430 () Bool)

(assert (=> b!1141435 (= e!649430 (arrayContainsKey!0 _keys!1208 k!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun mapNonEmpty!44828 () Bool)

(declare-fun mapRes!44828 () Bool)

(declare-fun tp!85128 () Bool)

(declare-fun e!649434 () Bool)

(assert (=> mapNonEmpty!44828 (= mapRes!44828 (and tp!85128 e!649434))))

(declare-fun mapRest!44828 () (Array (_ BitVec 32) ValueCell!13625))

(declare-fun mapKey!44828 () (_ BitVec 32))

(declare-fun mapValue!44828 () ValueCell!13625)

(assert (=> mapNonEmpty!44828 (= (arr!35722 _values!996) (store mapRest!44828 mapKey!44828 mapValue!44828))))

(declare-fun b!1141436 () Bool)

(declare-fun res!760940 () Bool)

(assert (=> b!1141436 (=> (not res!760940) (not e!649429))))

(declare-datatypes ((List!25090 0))(
  ( (Nil!25087) (Cons!25086 (h!26295 (_ BitVec 64)) (t!36228 List!25090)) )
))
(declare-fun arrayNoDuplicates!0 (array!74148 (_ BitVec 32) List!25090) Bool)

(assert (=> b!1141436 (= res!760940 (arrayNoDuplicates!0 lt!508528 #b00000000000000000000000000000000 Nil!25087))))

(declare-fun b!1141437 () Bool)

(declare-fun e!649426 () Unit!37363)

(declare-fun Unit!37365 () Unit!37363)

(assert (=> b!1141437 (= e!649426 Unit!37365)))

(assert (=> b!1141437 (= lt!508536 (= (bvand extraKeys!923 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(assert (=> b!1141437 (= c!112060 (and (not lt!508536) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun lt!508523 () Unit!37363)

(declare-fun e!649423 () Unit!37363)

(assert (=> b!1141437 (= lt!508523 e!649423)))

(declare-fun lt!508517 () Unit!37363)

(declare-fun lemmaListMapContainsThenArrayContainsFrom!394 (array!74148 array!74150 (_ BitVec 32) (_ BitVec 32) V!43353 V!43353 (_ BitVec 64) (_ BitVec 32) Int) Unit!37363)

(assert (=> b!1141437 (= lt!508517 (lemmaListMapContainsThenArrayContainsFrom!394 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun c!112061 () Bool)

(assert (=> b!1141437 (= c!112061 (and (not (= k!934 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!934 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun res!760929 () Bool)

(assert (=> b!1141437 (= res!760929 e!649430)))

(assert (=> b!1141437 (=> (not res!760929) (not e!649433))))

(assert (=> b!1141437 e!649433))

(declare-fun lt!508519 () Unit!37363)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!74148 (_ BitVec 32) (_ BitVec 32)) Unit!37363)

(assert (=> b!1141437 (= lt!508519 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1208 #b00000000000000000000000000000000 from!1455))))

(assert (=> b!1141437 (arrayNoDuplicates!0 _keys!1208 from!1455 Nil!25087)))

(declare-fun lt!508529 () Unit!37363)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!74148 (_ BitVec 64) (_ BitVec 32) List!25090) Unit!37363)

(assert (=> b!1141437 (= lt!508529 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!1208 k!934 from!1455 Nil!25087))))

(assert (=> b!1141437 false))

(declare-fun b!1141438 () Bool)

(declare-fun tp_is_empty!28669 () Bool)

(assert (=> b!1141438 (= e!649434 tp_is_empty!28669)))

(declare-fun b!1141439 () Bool)

(declare-fun Unit!37366 () Unit!37363)

(assert (=> b!1141439 (= e!649426 Unit!37366)))

(declare-fun mapIsEmpty!44828 () Bool)

(assert (=> mapIsEmpty!44828 mapRes!44828))

(declare-fun b!1141440 () Bool)

(assert (=> b!1141440 (= c!112059 (and (not lt!508536) (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(assert (=> b!1141440 (= e!649423 e!649422)))

(declare-fun b!1141441 () Bool)

(declare-fun res!760939 () Bool)

(declare-fun e!649425 () Bool)

(assert (=> b!1141441 (=> (not res!760939) (not e!649425))))

(assert (=> b!1141441 (= res!760939 (and (= (size!36259 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!36258 _keys!1208) (size!36259 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1141442 () Bool)

(assert (=> b!1141442 (= e!649425 e!649429)))

(declare-fun res!760936 () Bool)

(assert (=> b!1141442 (=> (not res!760936) (not e!649429))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!74148 (_ BitVec 32)) Bool)

(assert (=> b!1141442 (= res!760936 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!508528 mask!1564))))

(assert (=> b!1141442 (= lt!508528 (array!74149 (store (arr!35721 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!36258 _keys!1208)))))

(declare-fun bm!51208 () Bool)

(declare-fun call!51209 () Bool)

(declare-fun call!51215 () Bool)

(assert (=> bm!51208 (= call!51209 call!51215)))

(declare-fun b!1141443 () Bool)

(declare-fun Unit!37367 () Unit!37363)

(assert (=> b!1141443 (= e!649421 Unit!37367)))

(declare-fun bm!51209 () Bool)

(declare-fun call!51210 () ListLongMap!16269)

(declare-fun contains!6655 (ListLongMap!16269 (_ BitVec 64)) Bool)

(assert (=> bm!51209 (= call!51215 (contains!6655 (ite c!112060 lt!508526 call!51210) k!934))))

(declare-fun bm!51210 () Bool)

(declare-fun call!51216 () ListLongMap!16269)

(declare-fun +!3495 (ListLongMap!16269 tuple2!18288) ListLongMap!16269)

(assert (=> bm!51210 (= call!51216 (+!3495 (ite c!112060 lt!508526 lt!508516) (ite c!112060 (tuple2!18289 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944) (ite c!112059 (tuple2!18289 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!18289 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944)))))))

(declare-fun b!1141444 () Bool)

(declare-fun res!760931 () Bool)

(assert (=> b!1141444 (=> (not res!760931) (not e!649425))))

(assert (=> b!1141444 (= res!760931 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!25087))))

(declare-fun b!1141445 () Bool)

(declare-fun res!760937 () Bool)

(assert (=> b!1141445 (=> (not res!760937) (not e!649425))))

(assert (=> b!1141445 (= res!760937 (= (select (arr!35721 _keys!1208) i!673) k!934))))

(declare-fun res!760935 () Bool)

(assert (=> start!98570 (=> (not res!760935) (not e!649425))))

(assert (=> start!98570 (= res!760935 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!36258 _keys!1208))))))

(assert (=> start!98570 e!649425))

(assert (=> start!98570 tp_is_empty!28669))

(declare-fun array_inv!27250 (array!74148) Bool)

(assert (=> start!98570 (array_inv!27250 _keys!1208)))

(assert (=> start!98570 true))

(assert (=> start!98570 tp!85129))

(declare-fun e!649427 () Bool)

(declare-fun array_inv!27251 (array!74150) Bool)

(assert (=> start!98570 (and (array_inv!27251 _values!996) e!649427)))

(declare-fun bm!51207 () Bool)

(assert (=> bm!51207 (= call!51210 call!51216)))

(declare-fun b!1141446 () Bool)

(declare-fun res!760927 () Bool)

(assert (=> b!1141446 (=> (not res!760927) (not e!649425))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1141446 (= res!760927 (validKeyInArray!0 k!934))))

(declare-fun b!1141447 () Bool)

(declare-fun call!51213 () ListLongMap!16269)

(declare-fun call!51212 () ListLongMap!16269)

(assert (=> b!1141447 (= e!649424 (= call!51213 call!51212))))

(declare-fun bm!51211 () Bool)

(assert (=> bm!51211 (= call!51212 (getCurrentListMapNoExtraKeys!4594 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun bm!51212 () Bool)

(declare-fun call!51211 () Unit!37363)

(assert (=> bm!51212 (= call!51211 call!51214)))

(declare-fun b!1141448 () Bool)

(declare-fun res!760928 () Bool)

(assert (=> b!1141448 (=> (not res!760928) (not e!649425))))

(assert (=> b!1141448 (= res!760928 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!36258 _keys!1208))))))

(declare-fun b!1141449 () Bool)

(declare-fun -!1248 (ListLongMap!16269 (_ BitVec 64)) ListLongMap!16269)

(assert (=> b!1141449 (= e!649424 (= call!51213 (-!1248 call!51212 k!934)))))

(declare-fun b!1141450 () Bool)

(assert (=> b!1141450 (contains!6655 call!51216 k!934)))

(declare-fun lt!508535 () Unit!37363)

(assert (=> b!1141450 (= lt!508535 call!51214)))

(assert (=> b!1141450 call!51215))

(assert (=> b!1141450 (= lt!508526 (+!3495 lt!508516 (tuple2!18289 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944)))))

(declare-fun lt!508532 () Unit!37363)

(assert (=> b!1141450 (= lt!508532 (addStillContains!796 lt!508516 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944 k!934))))

(assert (=> b!1141450 (= e!649423 lt!508535)))

(declare-fun b!1141451 () Bool)

(declare-fun res!760930 () Bool)

(assert (=> b!1141451 (=> (not res!760930) (not e!649425))))

(assert (=> b!1141451 (= res!760930 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1141452 () Bool)

(declare-fun res!760933 () Bool)

(assert (=> b!1141452 (=> (not res!760933) (not e!649425))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1141452 (= res!760933 (validMask!0 mask!1564))))

(declare-fun b!1141453 () Bool)

(assert (=> b!1141453 (= e!649430 (ite (= k!934 #b0000000000000000000000000000000000000000000000000000000000000000) (not lt!508536) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun bm!51213 () Bool)

(assert (=> bm!51213 (= call!51213 (getCurrentListMapNoExtraKeys!4594 lt!508528 lt!508524 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1141454 () Bool)

(declare-fun lt!508522 () Unit!37363)

(assert (=> b!1141454 (= e!649422 lt!508522)))

(assert (=> b!1141454 (= lt!508522 call!51211)))

(assert (=> b!1141454 call!51209))

(declare-fun b!1141455 () Bool)

(assert (=> b!1141455 call!51209))

(declare-fun lt!508518 () Unit!37363)

(assert (=> b!1141455 (= lt!508518 call!51211)))

(assert (=> b!1141455 (= e!649421 lt!508518)))

(declare-fun b!1141456 () Bool)

(assert (=> b!1141456 (= e!649431 true)))

(declare-fun lt!508530 () V!43353)

(assert (=> b!1141456 (= (-!1248 (+!3495 lt!508516 (tuple2!18289 (select (arr!35721 _keys!1208) from!1455) lt!508530)) (select (arr!35721 _keys!1208) from!1455)) lt!508516)))

(declare-fun lt!508527 () Unit!37363)

(declare-fun addThenRemoveForNewKeyIsSame!103 (ListLongMap!16269 (_ BitVec 64) V!43353) Unit!37363)

(assert (=> b!1141456 (= lt!508527 (addThenRemoveForNewKeyIsSame!103 lt!508516 (select (arr!35721 _keys!1208) from!1455) lt!508530))))

(declare-fun get!18171 (ValueCell!13625 V!43353) V!43353)

(assert (=> b!1141456 (= lt!508530 (get!18171 (select (arr!35722 _values!996) from!1455) lt!508531))))

(declare-fun lt!508520 () Unit!37363)

(assert (=> b!1141456 (= lt!508520 e!649426)))

(declare-fun c!112058 () Bool)

(assert (=> b!1141456 (= c!112058 (contains!6655 lt!508516 k!934))))

(assert (=> b!1141456 (= lt!508516 (getCurrentListMapNoExtraKeys!4594 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1141457 () Bool)

(declare-fun e!649428 () Bool)

(assert (=> b!1141457 (= e!649427 (and e!649428 mapRes!44828))))

(declare-fun condMapEmpty!44828 () Bool)

(declare-fun mapDefault!44828 () ValueCell!13625)

