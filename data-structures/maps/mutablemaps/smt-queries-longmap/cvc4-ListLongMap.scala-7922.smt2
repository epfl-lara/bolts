; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!98412 () Bool)

(assert start!98412)

(declare-fun b_free!23981 () Bool)

(declare-fun b_next!23981 () Bool)

(assert (=> start!98412 (= b_free!23981 (not b_next!23981))))

(declare-fun tp!84655 () Bool)

(declare-fun b_and!38825 () Bool)

(assert (=> start!98412 (= tp!84655 b_and!38825)))

(declare-fun bm!49310 () Bool)

(declare-fun call!49318 () Bool)

(declare-fun call!49314 () Bool)

(assert (=> bm!49310 (= call!49318 call!49314)))

(declare-fun b!1134253 () Bool)

(declare-fun e!645559 () Bool)

(declare-fun e!645565 () Bool)

(assert (=> b!1134253 (= e!645559 e!645565)))

(declare-fun res!757327 () Bool)

(assert (=> b!1134253 (=> res!757327 e!645565)))

(declare-datatypes ((array!73844 0))(
  ( (array!73845 (arr!35569 (Array (_ BitVec 32) (_ BitVec 64))) (size!36106 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!73844)

(declare-fun k!934 () (_ BitVec 64))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> b!1134253 (= res!757327 (not (= (select (arr!35569 _keys!1208) from!1455) k!934)))))

(declare-fun e!645560 () Bool)

(assert (=> b!1134253 e!645560))

(declare-fun c!110709 () Bool)

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1134253 (= c!110709 (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673))))

(declare-datatypes ((V!43141 0))(
  ( (V!43142 (val!14312 Int)) )
))
(declare-fun zeroValue!944 () V!43141)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-datatypes ((ValueCell!13546 0))(
  ( (ValueCellFull!13546 (v!16950 V!43141)) (EmptyCell!13546) )
))
(declare-datatypes ((array!73846 0))(
  ( (array!73847 (arr!35570 (Array (_ BitVec 32) ValueCell!13546)) (size!36107 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!73846)

(declare-fun minValue!944 () V!43141)

(declare-datatypes ((Unit!37106 0))(
  ( (Unit!37107) )
))
(declare-fun lt!504100 () Unit!37106)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!453 (array!73844 array!73846 (_ BitVec 32) (_ BitVec 32) V!43141 V!43141 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!37106)

(assert (=> b!1134253 (= lt!504100 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!453 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun bm!49311 () Bool)

(declare-fun call!49320 () Unit!37106)

(declare-fun call!49317 () Unit!37106)

(assert (=> bm!49311 (= call!49320 call!49317)))

(declare-fun c!110710 () Bool)

(declare-datatypes ((tuple2!18146 0))(
  ( (tuple2!18147 (_1!9083 (_ BitVec 64)) (_2!9083 V!43141)) )
))
(declare-datatypes ((List!24958 0))(
  ( (Nil!24955) (Cons!24954 (h!26163 tuple2!18146) (t!35938 List!24958)) )
))
(declare-datatypes ((ListLongMap!16127 0))(
  ( (ListLongMap!16128 (toList!8079 List!24958)) )
))
(declare-fun lt!504102 () ListLongMap!16127)

(declare-fun call!49313 () ListLongMap!16127)

(declare-fun bm!49312 () Bool)

(declare-fun contains!6571 (ListLongMap!16127 (_ BitVec 64)) Bool)

(assert (=> bm!49312 (= call!49314 (contains!6571 (ite c!110710 lt!504102 call!49313) k!934))))

(declare-fun b!1134254 () Bool)

(declare-fun res!757334 () Bool)

(declare-fun e!645558 () Bool)

(assert (=> b!1134254 (=> (not res!757334) (not e!645558))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!73844 (_ BitVec 32)) Bool)

(assert (=> b!1134254 (= res!757334 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun mapIsEmpty!44591 () Bool)

(declare-fun mapRes!44591 () Bool)

(assert (=> mapIsEmpty!44591 mapRes!44591))

(declare-fun b!1134255 () Bool)

(declare-fun res!757320 () Bool)

(declare-fun e!645555 () Bool)

(assert (=> b!1134255 (=> (not res!757320) (not e!645555))))

(declare-fun lt!504096 () array!73844)

(declare-datatypes ((List!24959 0))(
  ( (Nil!24956) (Cons!24955 (h!26164 (_ BitVec 64)) (t!35939 List!24959)) )
))
(declare-fun arrayNoDuplicates!0 (array!73844 (_ BitVec 32) List!24959) Bool)

(assert (=> b!1134255 (= res!757320 (arrayNoDuplicates!0 lt!504096 #b00000000000000000000000000000000 Nil!24956))))

(declare-fun b!1134256 () Bool)

(declare-fun c!110711 () Bool)

(declare-fun lt!504094 () Bool)

(assert (=> b!1134256 (= c!110711 (and (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!504094))))

(declare-fun e!645556 () Unit!37106)

(declare-fun e!645566 () Unit!37106)

(assert (=> b!1134256 (= e!645556 e!645566)))

(declare-fun b!1134257 () Bool)

(declare-fun res!757330 () Bool)

(assert (=> b!1134257 (=> (not res!757330) (not e!645558))))

(assert (=> b!1134257 (= res!757330 (= (select (arr!35569 _keys!1208) i!673) k!934))))

(declare-fun b!1134258 () Bool)

(declare-fun res!757325 () Bool)

(assert (=> b!1134258 (=> (not res!757325) (not e!645558))))

(assert (=> b!1134258 (= res!757325 (and (= (size!36107 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!36106 _keys!1208) (size!36107 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1134259 () Bool)

(declare-fun Unit!37108 () Unit!37106)

(assert (=> b!1134259 (= e!645566 Unit!37108)))

(declare-fun b!1134260 () Bool)

(declare-fun e!645561 () Bool)

(declare-fun tp_is_empty!28511 () Bool)

(assert (=> b!1134260 (= e!645561 tp_is_empty!28511)))

(declare-fun res!757332 () Bool)

(assert (=> start!98412 (=> (not res!757332) (not e!645558))))

(assert (=> start!98412 (= res!757332 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!36106 _keys!1208))))))

(assert (=> start!98412 e!645558))

(assert (=> start!98412 tp_is_empty!28511))

(declare-fun array_inv!27146 (array!73844) Bool)

(assert (=> start!98412 (array_inv!27146 _keys!1208)))

(assert (=> start!98412 true))

(assert (=> start!98412 tp!84655))

(declare-fun e!645568 () Bool)

(declare-fun array_inv!27147 (array!73846) Bool)

(assert (=> start!98412 (and (array_inv!27147 _values!996) e!645568)))

(declare-fun lt!504093 () array!73846)

(declare-fun bm!49313 () Bool)

(declare-fun call!49316 () ListLongMap!16127)

(declare-fun getCurrentListMapNoExtraKeys!4528 (array!73844 array!73846 (_ BitVec 32) (_ BitVec 32) V!43141 V!43141 (_ BitVec 32) Int) ListLongMap!16127)

(assert (=> bm!49313 (= call!49316 (getCurrentListMapNoExtraKeys!4528 lt!504096 lt!504093 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1134261 () Bool)

(declare-fun e!645554 () Bool)

(assert (=> b!1134261 (= e!645565 e!645554)))

(declare-fun res!757331 () Bool)

(assert (=> b!1134261 (=> res!757331 e!645554)))

(declare-fun lt!504108 () ListLongMap!16127)

(assert (=> b!1134261 (= res!757331 (not (contains!6571 lt!504108 k!934)))))

(assert (=> b!1134261 (= lt!504108 (getCurrentListMapNoExtraKeys!4528 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1134262 () Bool)

(declare-fun call!49315 () ListLongMap!16127)

(assert (=> b!1134262 (= e!645560 (= call!49316 call!49315))))

(declare-fun b!1134263 () Bool)

(declare-fun e!645562 () Unit!37106)

(declare-fun lt!504095 () Unit!37106)

(assert (=> b!1134263 (= e!645562 lt!504095)))

(declare-fun lt!504106 () Unit!37106)

(declare-fun addStillContains!737 (ListLongMap!16127 (_ BitVec 64) V!43141 (_ BitVec 64)) Unit!37106)

(assert (=> b!1134263 (= lt!504106 (addStillContains!737 lt!504108 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944 k!934))))

(declare-fun call!49319 () ListLongMap!16127)

(assert (=> b!1134263 (= lt!504102 call!49319)))

(assert (=> b!1134263 call!49314))

(assert (=> b!1134263 (= lt!504095 call!49317)))

(declare-fun +!3438 (ListLongMap!16127 tuple2!18146) ListLongMap!16127)

(assert (=> b!1134263 (contains!6571 (+!3438 lt!504102 (tuple2!18147 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944)) k!934)))

(declare-fun b!1134264 () Bool)

(declare-fun res!757326 () Bool)

(assert (=> b!1134264 (=> (not res!757326) (not e!645558))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1134264 (= res!757326 (validMask!0 mask!1564))))

(declare-fun bm!49314 () Bool)

(declare-fun c!110712 () Bool)

(assert (=> bm!49314 (= call!49319 (+!3438 lt!504108 (ite (or c!110710 c!110712) (tuple2!18147 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!18147 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944))))))

(declare-fun b!1134265 () Bool)

(declare-fun e!645564 () Bool)

(declare-fun arrayContainsKey!0 (array!73844 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1134265 (= e!645564 (arrayContainsKey!0 _keys!1208 k!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun b!1134266 () Bool)

(assert (=> b!1134266 call!49318))

(declare-fun lt!504101 () Unit!37106)

(assert (=> b!1134266 (= lt!504101 call!49320)))

(assert (=> b!1134266 (= e!645556 lt!504101)))

(declare-fun bm!49315 () Bool)

(assert (=> bm!49315 (= call!49315 (getCurrentListMapNoExtraKeys!4528 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1134267 () Bool)

(declare-fun e!645557 () Bool)

(assert (=> b!1134267 (= e!645554 e!645557)))

(declare-fun res!757333 () Bool)

(assert (=> b!1134267 (=> res!757333 e!645557)))

(assert (=> b!1134267 (= res!757333 (or (bvsge (size!36106 _keys!1208) #b01111111111111111111111111111111) (bvsge (bvadd #b00000000000000000000000000000001 from!1455) (size!36106 _keys!1208)) (bvsge from!1455 (size!36106 _keys!1208))))))

(assert (=> b!1134267 (arrayNoDuplicates!0 _keys!1208 from!1455 Nil!24956)))

(declare-fun lt!504103 () Unit!37106)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!73844 (_ BitVec 32) (_ BitVec 32)) Unit!37106)

(assert (=> b!1134267 (= lt!504103 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1208 #b00000000000000000000000000000000 from!1455))))

(assert (=> b!1134267 e!645564))

(declare-fun res!757329 () Bool)

(assert (=> b!1134267 (=> (not res!757329) (not e!645564))))

(declare-fun e!645563 () Bool)

(assert (=> b!1134267 (= res!757329 e!645563)))

(declare-fun c!110708 () Bool)

(assert (=> b!1134267 (= c!110708 (and (not (= k!934 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!934 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun lt!504098 () Unit!37106)

(declare-fun lemmaListMapContainsThenArrayContainsFrom!346 (array!73844 array!73846 (_ BitVec 32) (_ BitVec 32) V!43141 V!43141 (_ BitVec 64) (_ BitVec 32) Int) Unit!37106)

(assert (=> b!1134267 (= lt!504098 (lemmaListMapContainsThenArrayContainsFrom!346 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun lt!504092 () Unit!37106)

(assert (=> b!1134267 (= lt!504092 e!645562)))

(assert (=> b!1134267 (= c!110710 (and (not lt!504094) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> b!1134267 (= lt!504094 (= (bvand extraKeys!923 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(declare-fun b!1134268 () Bool)

(declare-fun e!645570 () Bool)

(assert (=> b!1134268 (= e!645555 (not e!645570))))

(declare-fun res!757323 () Bool)

(assert (=> b!1134268 (=> res!757323 e!645570)))

(assert (=> b!1134268 (= res!757323 (bvsgt from!1455 i!673))))

(assert (=> b!1134268 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-fun lt!504104 () Unit!37106)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!73844 (_ BitVec 64) (_ BitVec 32)) Unit!37106)

(assert (=> b!1134268 (= lt!504104 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun b!1134269 () Bool)

(declare-fun lt!504097 () Unit!37106)

(assert (=> b!1134269 (= e!645566 lt!504097)))

(assert (=> b!1134269 (= lt!504097 call!49320)))

(assert (=> b!1134269 call!49318))

(declare-fun bm!49316 () Bool)

(assert (=> bm!49316 (= call!49313 call!49319)))

(declare-fun b!1134270 () Bool)

(assert (=> b!1134270 (= e!645570 e!645559)))

(declare-fun res!757317 () Bool)

(assert (=> b!1134270 (=> res!757317 e!645559)))

(assert (=> b!1134270 (= res!757317 (not (= from!1455 i!673)))))

(declare-fun lt!504099 () ListLongMap!16127)

(assert (=> b!1134270 (= lt!504099 (getCurrentListMapNoExtraKeys!4528 lt!504096 lt!504093 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun dynLambda!2596 (Int (_ BitVec 64)) V!43141)

(assert (=> b!1134270 (= lt!504093 (array!73847 (store (arr!35570 _values!996) i!673 (ValueCellFull!13546 (dynLambda!2596 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!36107 _values!996)))))

(declare-fun lt!504105 () ListLongMap!16127)

(assert (=> b!1134270 (= lt!504105 (getCurrentListMapNoExtraKeys!4528 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1134271 () Bool)

(assert (=> b!1134271 (= e!645563 (ite (= k!934 #b0000000000000000000000000000000000000000000000000000000000000000) (not lt!504094) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!1134272 () Bool)

(declare-fun -!1196 (ListLongMap!16127 (_ BitVec 64)) ListLongMap!16127)

(assert (=> b!1134272 (= e!645560 (= call!49316 (-!1196 call!49315 k!934)))))

(declare-fun b!1134273 () Bool)

(assert (=> b!1134273 (= e!645563 (arrayContainsKey!0 _keys!1208 k!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun b!1134274 () Bool)

(declare-fun res!757328 () Bool)

(assert (=> b!1134274 (=> res!757328 e!645557)))

(declare-fun contains!6572 (List!24959 (_ BitVec 64)) Bool)

(assert (=> b!1134274 (= res!757328 (contains!6572 Nil!24956 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun bm!49317 () Bool)

(assert (=> bm!49317 (= call!49317 (addStillContains!737 (ite c!110710 lt!504102 lt!504108) (ite c!110710 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!110712 #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000)) (ite c!110710 minValue!944 (ite c!110712 zeroValue!944 minValue!944)) k!934))))

(declare-fun b!1134275 () Bool)

(declare-fun res!757322 () Bool)

(assert (=> b!1134275 (=> (not res!757322) (not e!645558))))

(assert (=> b!1134275 (= res!757322 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!36106 _keys!1208))))))

(declare-fun b!1134276 () Bool)

(declare-fun res!757321 () Bool)

(assert (=> b!1134276 (=> (not res!757321) (not e!645558))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1134276 (= res!757321 (validKeyInArray!0 k!934))))

(declare-fun b!1134277 () Bool)

(assert (=> b!1134277 (= e!645557 true)))

(declare-fun lt!504107 () Bool)

(assert (=> b!1134277 (= lt!504107 (contains!6572 Nil!24956 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1134278 () Bool)

(declare-fun res!757318 () Bool)

(assert (=> b!1134278 (=> (not res!757318) (not e!645558))))

(assert (=> b!1134278 (= res!757318 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!24956))))

(declare-fun b!1134279 () Bool)

(declare-fun e!645569 () Bool)

(assert (=> b!1134279 (= e!645569 tp_is_empty!28511)))

(declare-fun mapNonEmpty!44591 () Bool)

(declare-fun tp!84654 () Bool)

(assert (=> mapNonEmpty!44591 (= mapRes!44591 (and tp!84654 e!645561))))

(declare-fun mapKey!44591 () (_ BitVec 32))

(declare-fun mapRest!44591 () (Array (_ BitVec 32) ValueCell!13546))

(declare-fun mapValue!44591 () ValueCell!13546)

(assert (=> mapNonEmpty!44591 (= (arr!35570 _values!996) (store mapRest!44591 mapKey!44591 mapValue!44591))))

(declare-fun b!1134280 () Bool)

(assert (=> b!1134280 (= e!645568 (and e!645569 mapRes!44591))))

(declare-fun condMapEmpty!44591 () Bool)

(declare-fun mapDefault!44591 () ValueCell!13546)

