; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!98568 () Bool)

(assert start!98568)

(declare-fun b_free!24137 () Bool)

(declare-fun b_next!24137 () Bool)

(assert (=> start!98568 (= b_free!24137 (not b_next!24137))))

(declare-fun tp!85122 () Bool)

(declare-fun b_and!39137 () Bool)

(assert (=> start!98568 (= tp!85122 b_and!39137)))

(declare-datatypes ((V!43349 0))(
  ( (V!43350 (val!14390 Int)) )
))
(declare-datatypes ((tuple2!18286 0))(
  ( (tuple2!18287 (_1!9153 (_ BitVec 64)) (_2!9153 V!43349)) )
))
(declare-datatypes ((List!25087 0))(
  ( (Nil!25084) (Cons!25083 (h!26292 tuple2!18286) (t!36223 List!25087)) )
))
(declare-datatypes ((ListLongMap!16267 0))(
  ( (ListLongMap!16268 (toList!8149 List!25087)) )
))
(declare-fun lt!508457 () ListLongMap!16267)

(declare-fun call!51188 () Bool)

(declare-fun c!112043 () Bool)

(declare-fun k!934 () (_ BitVec 64))

(declare-fun call!51192 () ListLongMap!16267)

(declare-fun bm!51182 () Bool)

(declare-fun contains!6654 (ListLongMap!16267 (_ BitVec 64)) Bool)

(assert (=> bm!51182 (= call!51188 (contains!6654 (ite c!112043 lt!508457 call!51192) k!934))))

(declare-fun b!1141341 () Bool)

(declare-fun res!760894 () Bool)

(declare-fun e!649378 () Bool)

(assert (=> b!1141341 (=> (not res!760894) (not e!649378))))

(declare-datatypes ((array!74144 0))(
  ( (array!74145 (arr!35719 (Array (_ BitVec 32) (_ BitVec 64))) (size!36256 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!74144)

(declare-datatypes ((List!25088 0))(
  ( (Nil!25085) (Cons!25084 (h!26293 (_ BitVec 64)) (t!36224 List!25088)) )
))
(declare-fun arrayNoDuplicates!0 (array!74144 (_ BitVec 32) List!25088) Bool)

(assert (=> b!1141341 (= res!760894 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!25085))))

(declare-fun b!1141342 () Bool)

(declare-fun c!112044 () Bool)

(declare-fun lt!508465 () Bool)

(declare-fun extraKeys!923 () (_ BitVec 32))

(assert (=> b!1141342 (= c!112044 (and (not lt!508465) (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-datatypes ((Unit!37358 0))(
  ( (Unit!37359) )
))
(declare-fun e!649374 () Unit!37358)

(declare-fun e!649386 () Unit!37358)

(assert (=> b!1141342 (= e!649374 e!649386)))

(declare-fun zeroValue!944 () V!43349)

(declare-fun bm!51183 () Bool)

(declare-fun call!51191 () Unit!37358)

(declare-fun minValue!944 () V!43349)

(declare-fun lt!508473 () ListLongMap!16267)

(declare-fun addStillContains!795 (ListLongMap!16267 (_ BitVec 64) V!43349 (_ BitVec 64)) Unit!37358)

(assert (=> bm!51183 (= call!51191 (addStillContains!795 lt!508473 (ite (or c!112043 c!112044) #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000) (ite (or c!112043 c!112044) zeroValue!944 minValue!944) k!934))))

(declare-fun b!1141343 () Bool)

(declare-fun res!760895 () Bool)

(assert (=> b!1141343 (=> (not res!760895) (not e!649378))))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!74144 (_ BitVec 32)) Bool)

(assert (=> b!1141343 (= res!760895 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1141344 () Bool)

(declare-fun e!649379 () Bool)

(declare-fun e!649384 () Bool)

(assert (=> b!1141344 (= e!649379 e!649384)))

(declare-fun res!760890 () Bool)

(assert (=> b!1141344 (=> res!760890 e!649384)))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> b!1141344 (= res!760890 (not (= (select (arr!35719 _keys!1208) from!1455) k!934)))))

(declare-fun e!649377 () Bool)

(assert (=> b!1141344 e!649377))

(declare-fun c!112042 () Bool)

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1141344 (= c!112042 (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673))))

(declare-fun lt!508471 () Unit!37358)

(declare-fun defaultEntry!1004 () Int)

(declare-datatypes ((ValueCell!13624 0))(
  ( (ValueCellFull!13624 (v!17028 V!43349)) (EmptyCell!13624) )
))
(declare-datatypes ((array!74146 0))(
  ( (array!74147 (arr!35720 (Array (_ BitVec 32) ValueCell!13624)) (size!36257 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!74146)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!502 (array!74144 array!74146 (_ BitVec 32) (_ BitVec 32) V!43349 V!43349 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!37358)

(assert (=> b!1141344 (= lt!508471 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!502 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun mapNonEmpty!44825 () Bool)

(declare-fun mapRes!44825 () Bool)

(declare-fun tp!85123 () Bool)

(declare-fun e!649385 () Bool)

(assert (=> mapNonEmpty!44825 (= mapRes!44825 (and tp!85123 e!649385))))

(declare-fun mapKey!44825 () (_ BitVec 32))

(declare-fun mapValue!44825 () ValueCell!13624)

(declare-fun mapRest!44825 () (Array (_ BitVec 32) ValueCell!13624))

(assert (=> mapNonEmpty!44825 (= (arr!35720 _values!996) (store mapRest!44825 mapKey!44825 mapValue!44825))))

(declare-fun b!1141345 () Bool)

(assert (=> b!1141345 (= e!649384 true)))

(declare-fun lt!508459 () V!43349)

(declare-fun -!1247 (ListLongMap!16267 (_ BitVec 64)) ListLongMap!16267)

(declare-fun +!3494 (ListLongMap!16267 tuple2!18286) ListLongMap!16267)

(assert (=> b!1141345 (= (-!1247 (+!3494 lt!508473 (tuple2!18287 (select (arr!35719 _keys!1208) from!1455) lt!508459)) (select (arr!35719 _keys!1208) from!1455)) lt!508473)))

(declare-fun lt!508454 () Unit!37358)

(declare-fun addThenRemoveForNewKeyIsSame!102 (ListLongMap!16267 (_ BitVec 64) V!43349) Unit!37358)

(assert (=> b!1141345 (= lt!508454 (addThenRemoveForNewKeyIsSame!102 lt!508473 (select (arr!35719 _keys!1208) from!1455) lt!508459))))

(declare-fun lt!508462 () V!43349)

(declare-fun get!18168 (ValueCell!13624 V!43349) V!43349)

(assert (=> b!1141345 (= lt!508459 (get!18168 (select (arr!35720 _values!996) from!1455) lt!508462))))

(declare-fun lt!508467 () Unit!37358)

(declare-fun e!649371 () Unit!37358)

(assert (=> b!1141345 (= lt!508467 e!649371)))

(declare-fun c!112041 () Bool)

(assert (=> b!1141345 (= c!112041 (contains!6654 lt!508473 k!934))))

(declare-fun getCurrentListMapNoExtraKeys!4593 (array!74144 array!74146 (_ BitVec 32) (_ BitVec 32) V!43349 V!43349 (_ BitVec 32) Int) ListLongMap!16267)

(assert (=> b!1141345 (= lt!508473 (getCurrentListMapNoExtraKeys!4593 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun bm!51184 () Bool)

(declare-fun call!51189 () Unit!37358)

(assert (=> bm!51184 (= call!51189 call!51191)))

(declare-fun bm!51185 () Bool)

(declare-fun call!51185 () ListLongMap!16267)

(assert (=> bm!51185 (= call!51192 call!51185)))

(declare-fun bm!51186 () Bool)

(declare-fun call!51190 () Bool)

(assert (=> bm!51186 (= call!51190 call!51188)))

(declare-fun b!1141346 () Bool)

(declare-fun res!760886 () Bool)

(assert (=> b!1141346 (=> (not res!760886) (not e!649378))))

(assert (=> b!1141346 (= res!760886 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!36256 _keys!1208))))))

(declare-fun b!1141347 () Bool)

(assert (=> b!1141347 call!51190))

(declare-fun lt!508456 () Unit!37358)

(assert (=> b!1141347 (= lt!508456 call!51189)))

(declare-fun e!649372 () Unit!37358)

(assert (=> b!1141347 (= e!649372 lt!508456)))

(declare-fun b!1141348 () Bool)

(declare-fun e!649375 () Bool)

(assert (=> b!1141348 (= e!649378 e!649375)))

(declare-fun res!760888 () Bool)

(assert (=> b!1141348 (=> (not res!760888) (not e!649375))))

(declare-fun lt!508461 () array!74144)

(assert (=> b!1141348 (= res!760888 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!508461 mask!1564))))

(assert (=> b!1141348 (= lt!508461 (array!74145 (store (arr!35719 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!36256 _keys!1208)))))

(declare-fun b!1141349 () Bool)

(declare-fun res!760893 () Bool)

(assert (=> b!1141349 (=> (not res!760893) (not e!649378))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1141349 (= res!760893 (validKeyInArray!0 k!934))))

(declare-fun b!1141350 () Bool)

(declare-fun res!760897 () Bool)

(assert (=> b!1141350 (=> (not res!760897) (not e!649375))))

(assert (=> b!1141350 (= res!760897 (arrayNoDuplicates!0 lt!508461 #b00000000000000000000000000000000 Nil!25085))))

(declare-fun b!1141351 () Bool)

(declare-fun Unit!37360 () Unit!37358)

(assert (=> b!1141351 (= e!649371 Unit!37360)))

(assert (=> b!1141351 (= lt!508465 (= (bvand extraKeys!923 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(assert (=> b!1141351 (= c!112043 (and (not lt!508465) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun lt!508469 () Unit!37358)

(assert (=> b!1141351 (= lt!508469 e!649374)))

(declare-fun lt!508470 () Unit!37358)

(declare-fun lemmaListMapContainsThenArrayContainsFrom!393 (array!74144 array!74146 (_ BitVec 32) (_ BitVec 32) V!43349 V!43349 (_ BitVec 64) (_ BitVec 32) Int) Unit!37358)

(assert (=> b!1141351 (= lt!508470 (lemmaListMapContainsThenArrayContainsFrom!393 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun c!112039 () Bool)

(assert (=> b!1141351 (= c!112039 (and (not (= k!934 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!934 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun res!760891 () Bool)

(declare-fun e!649373 () Bool)

(assert (=> b!1141351 (= res!760891 e!649373)))

(declare-fun e!649380 () Bool)

(assert (=> b!1141351 (=> (not res!760891) (not e!649380))))

(assert (=> b!1141351 e!649380))

(declare-fun lt!508466 () Unit!37358)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!74144 (_ BitVec 32) (_ BitVec 32)) Unit!37358)

(assert (=> b!1141351 (= lt!508466 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1208 #b00000000000000000000000000000000 from!1455))))

(assert (=> b!1141351 (arrayNoDuplicates!0 _keys!1208 from!1455 Nil!25085)))

(declare-fun lt!508464 () Unit!37358)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!74144 (_ BitVec 64) (_ BitVec 32) List!25088) Unit!37358)

(assert (=> b!1141351 (= lt!508464 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!1208 k!934 from!1455 Nil!25085))))

(assert (=> b!1141351 false))

(declare-fun bm!51187 () Bool)

(assert (=> bm!51187 (= call!51185 (+!3494 (ite c!112043 lt!508457 lt!508473) (ite c!112043 (tuple2!18287 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944) (ite c!112044 (tuple2!18287 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!18287 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944)))))))

(declare-fun b!1141352 () Bool)

(declare-fun res!760896 () Bool)

(assert (=> b!1141352 (=> (not res!760896) (not e!649378))))

(assert (=> b!1141352 (= res!760896 (and (= (size!36257 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!36256 _keys!1208) (size!36257 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1141353 () Bool)

(declare-fun Unit!37361 () Unit!37358)

(assert (=> b!1141353 (= e!649372 Unit!37361)))

(declare-fun res!760889 () Bool)

(assert (=> start!98568 (=> (not res!760889) (not e!649378))))

(assert (=> start!98568 (= res!760889 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!36256 _keys!1208))))))

(assert (=> start!98568 e!649378))

(declare-fun tp_is_empty!28667 () Bool)

(assert (=> start!98568 tp_is_empty!28667))

(declare-fun array_inv!27248 (array!74144) Bool)

(assert (=> start!98568 (array_inv!27248 _keys!1208)))

(assert (=> start!98568 true))

(assert (=> start!98568 tp!85122))

(declare-fun e!649376 () Bool)

(declare-fun array_inv!27249 (array!74146) Bool)

(assert (=> start!98568 (and (array_inv!27249 _values!996) e!649376)))

(declare-fun bm!51188 () Bool)

(declare-fun lt!508460 () array!74146)

(declare-fun call!51187 () ListLongMap!16267)

(assert (=> bm!51188 (= call!51187 (getCurrentListMapNoExtraKeys!4593 lt!508461 lt!508460 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1141354 () Bool)

(declare-fun Unit!37362 () Unit!37358)

(assert (=> b!1141354 (= e!649371 Unit!37362)))

(declare-fun b!1141355 () Bool)

(declare-fun e!649381 () Bool)

(assert (=> b!1141355 (= e!649376 (and e!649381 mapRes!44825))))

(declare-fun condMapEmpty!44825 () Bool)

(declare-fun mapDefault!44825 () ValueCell!13624)

