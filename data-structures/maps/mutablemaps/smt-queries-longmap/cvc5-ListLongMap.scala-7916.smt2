; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!98342 () Bool)

(assert start!98342)

(declare-fun b_free!23941 () Bool)

(declare-fun b_next!23941 () Bool)

(assert (=> start!98342 (= b_free!23941 (not b_next!23941))))

(declare-fun tp!84532 () Bool)

(declare-fun b_and!38727 () Bool)

(assert (=> start!98342 (= tp!84532 b_and!38727)))

(declare-fun b!1132353 () Bool)

(declare-fun e!644487 () Bool)

(declare-fun e!644500 () Bool)

(assert (=> b!1132353 (= e!644487 e!644500)))

(declare-fun res!756334 () Bool)

(assert (=> b!1132353 (=> (not res!756334) (not e!644500))))

(declare-datatypes ((array!73762 0))(
  ( (array!73763 (arr!35529 (Array (_ BitVec 32) (_ BitVec 64))) (size!36066 (_ BitVec 32))) )
))
(declare-fun lt!503075 () array!73762)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!73762 (_ BitVec 32)) Bool)

(assert (=> b!1132353 (= res!756334 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!503075 mask!1564))))

(declare-fun _keys!1208 () array!73762)

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1132353 (= lt!503075 (array!73763 (store (arr!35529 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!36066 _keys!1208)))))

(declare-fun b!1132354 () Bool)

(declare-fun call!48813 () Bool)

(assert (=> b!1132354 call!48813))

(declare-datatypes ((Unit!37049 0))(
  ( (Unit!37050) )
))
(declare-fun lt!503081 () Unit!37049)

(declare-fun call!48819 () Unit!37049)

(assert (=> b!1132354 (= lt!503081 call!48819)))

(declare-fun e!644493 () Unit!37049)

(assert (=> b!1132354 (= e!644493 lt!503081)))

(declare-fun b!1132355 () Bool)

(declare-fun e!644498 () Unit!37049)

(assert (=> b!1132355 (= e!644498 e!644493)))

(declare-fun c!110368 () Bool)

(declare-fun lt!503073 () Bool)

(declare-fun extraKeys!923 () (_ BitVec 32))

(assert (=> b!1132355 (= c!110368 (and (not lt!503073) (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1132356 () Bool)

(declare-fun e!644497 () Bool)

(declare-fun e!644492 () Bool)

(assert (=> b!1132356 (= e!644497 e!644492)))

(declare-fun res!756342 () Bool)

(assert (=> b!1132356 (=> res!756342 e!644492)))

(declare-fun k!934 () (_ BitVec 64))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> b!1132356 (= res!756342 (not (= (select (arr!35529 _keys!1208) from!1455) k!934)))))

(declare-fun e!644488 () Bool)

(assert (=> b!1132356 e!644488))

(declare-fun c!110367 () Bool)

(assert (=> b!1132356 (= c!110367 (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673))))

(declare-datatypes ((V!43089 0))(
  ( (V!43090 (val!14292 Int)) )
))
(declare-fun zeroValue!944 () V!43089)

(declare-fun defaultEntry!1004 () Int)

(declare-fun lt!503072 () Unit!37049)

(declare-datatypes ((ValueCell!13526 0))(
  ( (ValueCellFull!13526 (v!16929 V!43089)) (EmptyCell!13526) )
))
(declare-datatypes ((array!73764 0))(
  ( (array!73765 (arr!35530 (Array (_ BitVec 32) ValueCell!13526)) (size!36067 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!73764)

(declare-fun minValue!944 () V!43089)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!436 (array!73762 array!73764 (_ BitVec 32) (_ BitVec 32) V!43089 V!43089 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!37049)

(assert (=> b!1132356 (= lt!503072 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!436 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1132357 () Bool)

(declare-fun e!644494 () Bool)

(assert (=> b!1132357 (= e!644494 (or (bvslt (bvadd #b00000000000000000000000000000001 from!1455) #b00000000000000000000000000000000) (bvsge (bvadd #b00000000000000000000000000000001 from!1455) (size!36066 _keys!1208)) (bvslt (size!36066 _keys!1208) #b01111111111111111111111111111111)))))

(declare-fun e!644491 () Bool)

(assert (=> b!1132357 e!644491))

(declare-fun c!110366 () Bool)

(assert (=> b!1132357 (= c!110366 (and (not (= k!934 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!934 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun lt!503074 () Unit!37049)

(declare-fun lemmaListMapContainsThenArrayContainsFrom!331 (array!73762 array!73764 (_ BitVec 32) (_ BitVec 32) V!43089 V!43089 (_ BitVec 64) (_ BitVec 32) Int) Unit!37049)

(assert (=> b!1132357 (= lt!503074 (lemmaListMapContainsThenArrayContainsFrom!331 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun lt!503079 () Unit!37049)

(assert (=> b!1132357 (= lt!503079 e!644498)))

(declare-fun c!110369 () Bool)

(assert (=> b!1132357 (= c!110369 (and (not lt!503073) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> b!1132357 (= lt!503073 (= (bvand extraKeys!923 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(declare-fun b!1132358 () Bool)

(declare-datatypes ((tuple2!18106 0))(
  ( (tuple2!18107 (_1!9063 (_ BitVec 64)) (_2!9063 V!43089)) )
))
(declare-datatypes ((List!24919 0))(
  ( (Nil!24916) (Cons!24915 (h!26124 tuple2!18106) (t!35859 List!24919)) )
))
(declare-datatypes ((ListLongMap!16087 0))(
  ( (ListLongMap!16088 (toList!8059 List!24919)) )
))
(declare-fun call!48815 () ListLongMap!16087)

(declare-fun call!48818 () ListLongMap!16087)

(assert (=> b!1132358 (= e!644488 (= call!48815 call!48818))))

(declare-fun lt!503077 () ListLongMap!16087)

(declare-fun bm!48810 () Bool)

(declare-fun call!48817 () ListLongMap!16087)

(declare-fun call!48816 () Bool)

(declare-fun contains!6550 (ListLongMap!16087 (_ BitVec 64)) Bool)

(assert (=> bm!48810 (= call!48816 (contains!6550 (ite c!110369 lt!503077 call!48817) k!934))))

(declare-fun b!1132359 () Bool)

(declare-fun res!756339 () Bool)

(assert (=> b!1132359 (=> (not res!756339) (not e!644487))))

(declare-datatypes ((List!24920 0))(
  ( (Nil!24917) (Cons!24916 (h!26125 (_ BitVec 64)) (t!35860 List!24920)) )
))
(declare-fun arrayNoDuplicates!0 (array!73762 (_ BitVec 32) List!24920) Bool)

(assert (=> b!1132359 (= res!756339 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!24917))))

(declare-fun bm!48811 () Bool)

(declare-fun call!48820 () ListLongMap!16087)

(assert (=> bm!48811 (= call!48817 call!48820)))

(declare-fun bm!48812 () Bool)

(declare-fun getCurrentListMapNoExtraKeys!4510 (array!73762 array!73764 (_ BitVec 32) (_ BitVec 32) V!43089 V!43089 (_ BitVec 32) Int) ListLongMap!16087)

(assert (=> bm!48812 (= call!48818 (getCurrentListMapNoExtraKeys!4510 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1132360 () Bool)

(assert (=> b!1132360 (= e!644491 (ite (= k!934 #b0000000000000000000000000000000000000000000000000000000000000000) (not lt!503073) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!1132361 () Bool)

(declare-fun res!756337 () Bool)

(assert (=> b!1132361 (=> (not res!756337) (not e!644487))))

(assert (=> b!1132361 (= res!756337 (= (select (arr!35529 _keys!1208) i!673) k!934))))

(declare-fun bm!48813 () Bool)

(declare-fun lt!503078 () ListLongMap!16087)

(declare-fun +!3421 (ListLongMap!16087 tuple2!18106) ListLongMap!16087)

(assert (=> bm!48813 (= call!48820 (+!3421 (ite c!110369 lt!503077 lt!503078) (ite c!110369 (tuple2!18107 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944) (ite c!110368 (tuple2!18107 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!18107 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944)))))))

(declare-fun b!1132362 () Bool)

(declare-fun arrayContainsKey!0 (array!73762 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1132362 (= e!644491 (arrayContainsKey!0 _keys!1208 k!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun bm!48814 () Bool)

(assert (=> bm!48814 (= call!48813 call!48816)))

(declare-fun b!1132363 () Bool)

(assert (=> b!1132363 (= e!644492 e!644494)))

(declare-fun res!756341 () Bool)

(assert (=> b!1132363 (=> res!756341 e!644494)))

(assert (=> b!1132363 (= res!756341 (not (contains!6550 lt!503078 k!934)))))

(assert (=> b!1132363 (= lt!503078 (getCurrentListMapNoExtraKeys!4510 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1132364 () Bool)

(declare-fun res!756343 () Bool)

(assert (=> b!1132364 (=> (not res!756343) (not e!644487))))

(assert (=> b!1132364 (= res!756343 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!36066 _keys!1208))))))

(declare-fun b!1132365 () Bool)

(declare-fun e!644490 () Unit!37049)

(declare-fun lt!503083 () Unit!37049)

(assert (=> b!1132365 (= e!644490 lt!503083)))

(assert (=> b!1132365 (= lt!503083 call!48819)))

(assert (=> b!1132365 call!48813))

(declare-fun res!756340 () Bool)

(assert (=> start!98342 (=> (not res!756340) (not e!644487))))

(assert (=> start!98342 (= res!756340 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!36066 _keys!1208))))))

(assert (=> start!98342 e!644487))

(declare-fun tp_is_empty!28471 () Bool)

(assert (=> start!98342 tp_is_empty!28471))

(declare-fun array_inv!27118 (array!73762) Bool)

(assert (=> start!98342 (array_inv!27118 _keys!1208)))

(assert (=> start!98342 true))

(assert (=> start!98342 tp!84532))

(declare-fun e!644496 () Bool)

(declare-fun array_inv!27119 (array!73764) Bool)

(assert (=> start!98342 (and (array_inv!27119 _values!996) e!644496)))

(declare-fun b!1132366 () Bool)

(declare-fun e!644489 () Bool)

(assert (=> b!1132366 (= e!644500 (not e!644489))))

(declare-fun res!756332 () Bool)

(assert (=> b!1132366 (=> res!756332 e!644489)))

(assert (=> b!1132366 (= res!756332 (bvsgt from!1455 i!673))))

(assert (=> b!1132366 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-fun lt!503084 () Unit!37049)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!73762 (_ BitVec 64) (_ BitVec 32)) Unit!37049)

(assert (=> b!1132366 (= lt!503084 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun mapIsEmpty!44528 () Bool)

(declare-fun mapRes!44528 () Bool)

(assert (=> mapIsEmpty!44528 mapRes!44528))

(declare-fun b!1132367 () Bool)

(declare-fun -!1180 (ListLongMap!16087 (_ BitVec 64)) ListLongMap!16087)

(assert (=> b!1132367 (= e!644488 (= call!48815 (-!1180 call!48818 k!934)))))

(declare-fun b!1132368 () Bool)

(declare-fun res!756344 () Bool)

(assert (=> b!1132368 (=> (not res!756344) (not e!644487))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1132368 (= res!756344 (validKeyInArray!0 k!934))))

(declare-fun b!1132369 () Bool)

(declare-fun e!644486 () Bool)

(assert (=> b!1132369 (= e!644486 tp_is_empty!28471)))

(declare-fun mapNonEmpty!44528 () Bool)

(declare-fun tp!84531 () Bool)

(assert (=> mapNonEmpty!44528 (= mapRes!44528 (and tp!84531 e!644486))))

(declare-fun mapValue!44528 () ValueCell!13526)

(declare-fun mapRest!44528 () (Array (_ BitVec 32) ValueCell!13526))

(declare-fun mapKey!44528 () (_ BitVec 32))

(assert (=> mapNonEmpty!44528 (= (arr!35530 _values!996) (store mapRest!44528 mapKey!44528 mapValue!44528))))

(declare-fun b!1132370 () Bool)

(declare-fun c!110365 () Bool)

(assert (=> b!1132370 (= c!110365 (and (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!503073))))

(assert (=> b!1132370 (= e!644493 e!644490)))

(declare-fun b!1132371 () Bool)

(declare-fun res!756335 () Bool)

(assert (=> b!1132371 (=> (not res!756335) (not e!644500))))

(assert (=> b!1132371 (= res!756335 (arrayNoDuplicates!0 lt!503075 #b00000000000000000000000000000000 Nil!24917))))

(declare-fun b!1132372 () Bool)

(declare-fun e!644495 () Bool)

(assert (=> b!1132372 (= e!644495 tp_is_empty!28471)))

(declare-fun b!1132373 () Bool)

(declare-fun res!756336 () Bool)

(assert (=> b!1132373 (=> (not res!756336) (not e!644487))))

(assert (=> b!1132373 (= res!756336 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun bm!48815 () Bool)

(declare-fun lt!503080 () array!73764)

(assert (=> bm!48815 (= call!48815 (getCurrentListMapNoExtraKeys!4510 lt!503075 lt!503080 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1132374 () Bool)

(assert (=> b!1132374 (= e!644489 e!644497)))

(declare-fun res!756338 () Bool)

(assert (=> b!1132374 (=> res!756338 e!644497)))

(assert (=> b!1132374 (= res!756338 (not (= from!1455 i!673)))))

(declare-fun lt!503076 () ListLongMap!16087)

(assert (=> b!1132374 (= lt!503076 (getCurrentListMapNoExtraKeys!4510 lt!503075 lt!503080 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun dynLambda!2581 (Int (_ BitVec 64)) V!43089)

(assert (=> b!1132374 (= lt!503080 (array!73765 (store (arr!35530 _values!996) i!673 (ValueCellFull!13526 (dynLambda!2581 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!36067 _values!996)))))

(declare-fun lt!503070 () ListLongMap!16087)

(assert (=> b!1132374 (= lt!503070 (getCurrentListMapNoExtraKeys!4510 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1132375 () Bool)

(declare-fun Unit!37051 () Unit!37049)

(assert (=> b!1132375 (= e!644490 Unit!37051)))

(declare-fun b!1132376 () Bool)

(assert (=> b!1132376 (= e!644496 (and e!644495 mapRes!44528))))

(declare-fun condMapEmpty!44528 () Bool)

(declare-fun mapDefault!44528 () ValueCell!13526)

