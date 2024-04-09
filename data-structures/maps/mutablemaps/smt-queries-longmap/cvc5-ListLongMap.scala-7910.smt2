; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!98240 () Bool)

(assert start!98240)

(declare-fun b_free!23905 () Bool)

(declare-fun b_next!23905 () Bool)

(assert (=> start!98240 (= b_free!23905 (not b_next!23905))))

(declare-fun tp!84420 () Bool)

(declare-fun b_and!38615 () Bool)

(assert (=> start!98240 (= tp!84420 b_and!38615)))

(declare-fun b!1130370 () Bool)

(declare-fun res!755351 () Bool)

(declare-fun e!643347 () Bool)

(assert (=> b!1130370 (=> (not res!755351) (not e!643347))))

(declare-datatypes ((array!73688 0))(
  ( (array!73689 (arr!35493 (Array (_ BitVec 32) (_ BitVec 64))) (size!36030 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!73688)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-datatypes ((V!43041 0))(
  ( (V!43042 (val!14274 Int)) )
))
(declare-datatypes ((ValueCell!13508 0))(
  ( (ValueCellFull!13508 (v!16908 V!43041)) (EmptyCell!13508) )
))
(declare-datatypes ((array!73690 0))(
  ( (array!73691 (arr!35494 (Array (_ BitVec 32) ValueCell!13508)) (size!36031 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!73690)

(assert (=> b!1130370 (= res!755351 (and (= (size!36031 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!36030 _keys!1208) (size!36031 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1130371 () Bool)

(declare-fun call!48338 () Bool)

(assert (=> b!1130371 call!48338))

(declare-datatypes ((Unit!36983 0))(
  ( (Unit!36984) )
))
(declare-fun lt!501952 () Unit!36983)

(declare-fun call!48340 () Unit!36983)

(assert (=> b!1130371 (= lt!501952 call!48340)))

(declare-fun e!643352 () Unit!36983)

(assert (=> b!1130371 (= e!643352 lt!501952)))

(declare-fun b!1130372 () Bool)

(declare-fun res!755347 () Bool)

(declare-fun e!643355 () Bool)

(assert (=> b!1130372 (=> (not res!755347) (not e!643355))))

(declare-fun lt!501947 () array!73688)

(declare-datatypes ((List!24891 0))(
  ( (Nil!24888) (Cons!24887 (h!26096 (_ BitVec 64)) (t!35795 List!24891)) )
))
(declare-fun arrayNoDuplicates!0 (array!73688 (_ BitVec 32) List!24891) Bool)

(assert (=> b!1130372 (= res!755347 (arrayNoDuplicates!0 lt!501947 #b00000000000000000000000000000000 Nil!24888))))

(declare-fun call!48341 () Bool)

(declare-datatypes ((tuple2!18072 0))(
  ( (tuple2!18073 (_1!9046 (_ BitVec 64)) (_2!9046 V!43041)) )
))
(declare-datatypes ((List!24892 0))(
  ( (Nil!24889) (Cons!24888 (h!26097 tuple2!18072) (t!35796 List!24892)) )
))
(declare-datatypes ((ListLongMap!16053 0))(
  ( (ListLongMap!16054 (toList!8042 List!24892)) )
))
(declare-fun lt!501949 () ListLongMap!16053)

(declare-fun call!48334 () ListLongMap!16053)

(declare-fun k!934 () (_ BitVec 64))

(declare-fun bm!48331 () Bool)

(declare-fun c!109979 () Bool)

(declare-fun contains!6536 (ListLongMap!16053 (_ BitVec 64)) Bool)

(assert (=> bm!48331 (= call!48341 (contains!6536 (ite c!109979 lt!501949 call!48334) k!934))))

(declare-fun mapNonEmpty!44470 () Bool)

(declare-fun mapRes!44470 () Bool)

(declare-fun tp!84419 () Bool)

(declare-fun e!643354 () Bool)

(assert (=> mapNonEmpty!44470 (= mapRes!44470 (and tp!84419 e!643354))))

(declare-fun mapKey!44470 () (_ BitVec 32))

(declare-fun mapValue!44470 () ValueCell!13508)

(declare-fun mapRest!44470 () (Array (_ BitVec 32) ValueCell!13508))

(assert (=> mapNonEmpty!44470 (= (arr!35494 _values!996) (store mapRest!44470 mapKey!44470 mapValue!44470))))

(declare-fun b!1130373 () Bool)

(declare-fun e!643358 () Bool)

(declare-fun e!643350 () Bool)

(assert (=> b!1130373 (= e!643358 e!643350)))

(declare-fun res!755349 () Bool)

(assert (=> b!1130373 (=> res!755349 e!643350)))

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1130373 (= res!755349 (not (= from!1455 i!673)))))

(declare-fun zeroValue!944 () V!43041)

(declare-fun defaultEntry!1004 () Int)

(declare-fun lt!501953 () ListLongMap!16053)

(declare-fun lt!501945 () array!73690)

(declare-fun minValue!944 () V!43041)

(declare-fun getCurrentListMapNoExtraKeys!4495 (array!73688 array!73690 (_ BitVec 32) (_ BitVec 32) V!43041 V!43041 (_ BitVec 32) Int) ListLongMap!16053)

(assert (=> b!1130373 (= lt!501953 (getCurrentListMapNoExtraKeys!4495 lt!501947 lt!501945 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun dynLambda!2571 (Int (_ BitVec 64)) V!43041)

(assert (=> b!1130373 (= lt!501945 (array!73691 (store (arr!35494 _values!996) i!673 (ValueCellFull!13508 (dynLambda!2571 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!36031 _values!996)))))

(declare-fun lt!501943 () ListLongMap!16053)

(assert (=> b!1130373 (= lt!501943 (getCurrentListMapNoExtraKeys!4495 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1130374 () Bool)

(declare-fun res!755339 () Bool)

(assert (=> b!1130374 (=> (not res!755339) (not e!643347))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1130374 (= res!755339 (validKeyInArray!0 k!934))))

(declare-fun call!48339 () ListLongMap!16053)

(declare-fun b!1130375 () Bool)

(declare-fun e!643349 () Bool)

(declare-fun call!48336 () ListLongMap!16053)

(declare-fun -!1170 (ListLongMap!16053 (_ BitVec 64)) ListLongMap!16053)

(assert (=> b!1130375 (= e!643349 (= call!48336 (-!1170 call!48339 k!934)))))

(declare-fun call!48335 () ListLongMap!16053)

(declare-fun lt!501954 () ListLongMap!16053)

(declare-fun bm!48332 () Bool)

(declare-fun c!109978 () Bool)

(declare-fun +!3409 (ListLongMap!16053 tuple2!18072) ListLongMap!16053)

(assert (=> bm!48332 (= call!48335 (+!3409 (ite c!109979 lt!501949 lt!501954) (ite c!109979 (tuple2!18073 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944) (ite c!109978 (tuple2!18073 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!18073 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944)))))))

(declare-fun bm!48333 () Bool)

(assert (=> bm!48333 (= call!48336 (getCurrentListMapNoExtraKeys!4495 lt!501947 lt!501945 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1130376 () Bool)

(declare-fun e!643348 () Bool)

(assert (=> b!1130376 (= e!643350 e!643348)))

(declare-fun res!755341 () Bool)

(assert (=> b!1130376 (=> res!755341 e!643348)))

(assert (=> b!1130376 (= res!755341 (not (= (select (arr!35493 _keys!1208) from!1455) k!934)))))

(assert (=> b!1130376 e!643349))

(declare-fun c!109976 () Bool)

(assert (=> b!1130376 (= c!109976 (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673))))

(declare-fun lt!501951 () Unit!36983)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!425 (array!73688 array!73690 (_ BitVec 32) (_ BitVec 32) V!43041 V!43041 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!36983)

(assert (=> b!1130376 (= lt!501951 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!425 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1130377 () Bool)

(assert (=> b!1130377 (= e!643349 (= call!48336 call!48339))))

(declare-fun b!1130378 () Bool)

(declare-fun e!643353 () Unit!36983)

(assert (=> b!1130378 (= e!643353 e!643352)))

(declare-fun lt!501941 () Bool)

(assert (=> b!1130378 (= c!109978 (and (not lt!501941) (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1130379 () Bool)

(declare-fun e!643351 () Unit!36983)

(declare-fun lt!501946 () Unit!36983)

(assert (=> b!1130379 (= e!643351 lt!501946)))

(assert (=> b!1130379 (= lt!501946 call!48340)))

(assert (=> b!1130379 call!48338))

(declare-fun bm!48334 () Bool)

(declare-fun call!48337 () Unit!36983)

(declare-fun addStillContains!709 (ListLongMap!16053 (_ BitVec 64) V!43041 (_ BitVec 64)) Unit!36983)

(assert (=> bm!48334 (= call!48337 (addStillContains!709 (ite c!109979 lt!501949 lt!501954) (ite c!109979 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!109978 #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000)) (ite c!109979 minValue!944 (ite c!109978 zeroValue!944 minValue!944)) k!934))))

(declare-fun b!1130380 () Bool)

(declare-fun e!643346 () Bool)

(assert (=> b!1130380 (= e!643348 e!643346)))

(declare-fun res!755350 () Bool)

(assert (=> b!1130380 (=> res!755350 e!643346)))

(assert (=> b!1130380 (= res!755350 (not (contains!6536 lt!501954 k!934)))))

(assert (=> b!1130380 (= lt!501954 (getCurrentListMapNoExtraKeys!4495 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1130381 () Bool)

(declare-fun c!109977 () Bool)

(assert (=> b!1130381 (= c!109977 (and (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!501941))))

(assert (=> b!1130381 (= e!643352 e!643351)))

(declare-fun b!1130382 () Bool)

(declare-fun e!643356 () Bool)

(declare-fun tp_is_empty!28435 () Bool)

(assert (=> b!1130382 (= e!643356 tp_is_empty!28435)))

(declare-fun b!1130383 () Bool)

(declare-fun res!755345 () Bool)

(assert (=> b!1130383 (=> (not res!755345) (not e!643347))))

(assert (=> b!1130383 (= res!755345 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!36030 _keys!1208))))))

(declare-fun b!1130384 () Bool)

(assert (=> b!1130384 (= e!643355 (not e!643358))))

(declare-fun res!755342 () Bool)

(assert (=> b!1130384 (=> res!755342 e!643358)))

(assert (=> b!1130384 (= res!755342 (bvsgt from!1455 i!673))))

(declare-fun arrayContainsKey!0 (array!73688 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1130384 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-fun lt!501950 () Unit!36983)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!73688 (_ BitVec 64) (_ BitVec 32)) Unit!36983)

(assert (=> b!1130384 (= lt!501950 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun res!755344 () Bool)

(assert (=> start!98240 (=> (not res!755344) (not e!643347))))

(assert (=> start!98240 (= res!755344 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!36030 _keys!1208))))))

(assert (=> start!98240 e!643347))

(assert (=> start!98240 tp_is_empty!28435))

(declare-fun array_inv!27096 (array!73688) Bool)

(assert (=> start!98240 (array_inv!27096 _keys!1208)))

(assert (=> start!98240 true))

(assert (=> start!98240 tp!84420))

(declare-fun e!643345 () Bool)

(declare-fun array_inv!27097 (array!73690) Bool)

(assert (=> start!98240 (and (array_inv!27097 _values!996) e!643345)))

(declare-fun bm!48335 () Bool)

(assert (=> bm!48335 (= call!48338 call!48341)))

(declare-fun b!1130385 () Bool)

(assert (=> b!1130385 (= e!643347 e!643355)))

(declare-fun res!755346 () Bool)

(assert (=> b!1130385 (=> (not res!755346) (not e!643355))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!73688 (_ BitVec 32)) Bool)

(assert (=> b!1130385 (= res!755346 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!501947 mask!1564))))

(assert (=> b!1130385 (= lt!501947 (array!73689 (store (arr!35493 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!36030 _keys!1208)))))

(declare-fun b!1130386 () Bool)

(declare-fun res!755338 () Bool)

(assert (=> b!1130386 (=> (not res!755338) (not e!643347))))

(assert (=> b!1130386 (= res!755338 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun bm!48336 () Bool)

(assert (=> bm!48336 (= call!48334 call!48335)))

(declare-fun b!1130387 () Bool)

(declare-fun lt!501948 () Unit!36983)

(assert (=> b!1130387 (= e!643353 lt!501948)))

(declare-fun lt!501944 () Unit!36983)

(assert (=> b!1130387 (= lt!501944 (addStillContains!709 lt!501954 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944 k!934))))

(assert (=> b!1130387 (= lt!501949 (+!3409 lt!501954 (tuple2!18073 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944)))))

(assert (=> b!1130387 call!48341))

(assert (=> b!1130387 (= lt!501948 call!48337)))

(assert (=> b!1130387 (contains!6536 call!48335 k!934)))

(declare-fun mapIsEmpty!44470 () Bool)

(assert (=> mapIsEmpty!44470 mapRes!44470))

(declare-fun b!1130388 () Bool)

(declare-fun Unit!36985 () Unit!36983)

(assert (=> b!1130388 (= e!643351 Unit!36985)))

(declare-fun b!1130389 () Bool)

(declare-fun res!755348 () Bool)

(assert (=> b!1130389 (=> (not res!755348) (not e!643347))))

(assert (=> b!1130389 (= res!755348 (= (select (arr!35493 _keys!1208) i!673) k!934))))

(declare-fun b!1130390 () Bool)

(declare-fun e!643357 () Bool)

(assert (=> b!1130390 (= e!643346 e!643357)))

(declare-fun res!755340 () Bool)

(assert (=> b!1130390 (=> res!755340 e!643357)))

(assert (=> b!1130390 (= res!755340 (or (bvslt (bvadd #b00000000000000000000000000000001 from!1455) #b00000000000000000000000000000000) (bvsge (bvadd #b00000000000000000000000000000001 from!1455) (size!36030 _keys!1208))))))

(declare-fun lt!501940 () Unit!36983)

(assert (=> b!1130390 (= lt!501940 e!643353)))

(assert (=> b!1130390 (= c!109979 (and (not lt!501941) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> b!1130390 (= lt!501941 (= (bvand extraKeys!923 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(declare-fun b!1130391 () Bool)

(assert (=> b!1130391 (= e!643357 true)))

(declare-fun lt!501942 () Bool)

(declare-fun getCurrentListMap!4446 (array!73688 array!73690 (_ BitVec 32) (_ BitVec 32) V!43041 V!43041 (_ BitVec 32) Int) ListLongMap!16053)

(assert (=> b!1130391 (= lt!501942 (contains!6536 (getCurrentListMap!4446 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004) k!934))))

(declare-fun b!1130392 () Bool)

(assert (=> b!1130392 (= e!643354 tp_is_empty!28435)))

(declare-fun b!1130393 () Bool)

(declare-fun res!755343 () Bool)

(assert (=> b!1130393 (=> (not res!755343) (not e!643347))))

(assert (=> b!1130393 (= res!755343 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!24888))))

(declare-fun bm!48337 () Bool)

(assert (=> bm!48337 (= call!48339 (getCurrentListMapNoExtraKeys!4495 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun bm!48338 () Bool)

(assert (=> bm!48338 (= call!48340 call!48337)))

(declare-fun b!1130394 () Bool)

(assert (=> b!1130394 (= e!643345 (and e!643356 mapRes!44470))))

(declare-fun condMapEmpty!44470 () Bool)

(declare-fun mapDefault!44470 () ValueCell!13508)

