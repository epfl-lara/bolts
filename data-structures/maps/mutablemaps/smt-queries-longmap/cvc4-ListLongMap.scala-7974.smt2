; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!98724 () Bool)

(assert start!98724)

(declare-fun b_free!24293 () Bool)

(declare-fun b_next!24293 () Bool)

(assert (=> start!98724 (= b_free!24293 (not b_next!24293))))

(declare-fun tp!85590 () Bool)

(declare-fun b_and!39449 () Bool)

(assert (=> start!98724 (= tp!85590 b_and!39449)))

(declare-datatypes ((V!43557 0))(
  ( (V!43558 (val!14468 Int)) )
))
(declare-datatypes ((tuple2!18428 0))(
  ( (tuple2!18429 (_1!9224 (_ BitVec 64)) (_2!9224 V!43557)) )
))
(declare-datatypes ((List!25221 0))(
  ( (Nil!25218) (Cons!25217 (h!26426 tuple2!18428) (t!36513 List!25221)) )
))
(declare-datatypes ((ListLongMap!16409 0))(
  ( (ListLongMap!16410 (toList!8220 List!25221)) )
))
(declare-fun call!53059 () ListLongMap!16409)

(declare-fun call!53061 () ListLongMap!16409)

(declare-fun e!653260 () Bool)

(declare-fun b!1148426 () Bool)

(declare-fun k!934 () (_ BitVec 64))

(declare-fun -!1309 (ListLongMap!16409 (_ BitVec 64)) ListLongMap!16409)

(assert (=> b!1148426 (= e!653260 (= call!53059 (-!1309 call!53061 k!934)))))

(declare-fun b!1148427 () Bool)

(declare-fun res!764315 () Bool)

(declare-fun e!653263 () Bool)

(assert (=> b!1148427 (=> (not res!764315) (not e!653263))))

(declare-datatypes ((array!74450 0))(
  ( (array!74451 (arr!35872 (Array (_ BitVec 32) (_ BitVec 64))) (size!36409 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!74450)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!74450 (_ BitVec 32)) Bool)

(assert (=> b!1148427 (= res!764315 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1148428 () Bool)

(declare-fun res!764308 () Bool)

(assert (=> b!1148428 (=> (not res!764308) (not e!653263))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1148428 (= res!764308 (validKeyInArray!0 k!934))))

(declare-fun bm!53054 () Bool)

(declare-fun call!53063 () Bool)

(declare-fun call!53060 () Bool)

(assert (=> bm!53054 (= call!53063 call!53060)))

(declare-fun bm!53055 () Bool)

(declare-fun call!53057 () ListLongMap!16409)

(declare-fun call!53058 () ListLongMap!16409)

(assert (=> bm!53055 (= call!53057 call!53058)))

(declare-fun b!1148429 () Bool)

(declare-fun res!764307 () Bool)

(assert (=> b!1148429 (=> (not res!764307) (not e!653263))))

(declare-datatypes ((List!25222 0))(
  ( (Nil!25219) (Cons!25218 (h!26427 (_ BitVec 64)) (t!36514 List!25222)) )
))
(declare-fun arrayNoDuplicates!0 (array!74450 (_ BitVec 32) List!25222) Bool)

(assert (=> b!1148429 (= res!764307 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!25219))))

(declare-fun b!1148430 () Bool)

(declare-fun e!653265 () Bool)

(declare-fun e!653258 () Bool)

(assert (=> b!1148430 (= e!653265 (not e!653258))))

(declare-fun res!764309 () Bool)

(assert (=> b!1148430 (=> res!764309 e!653258)))

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1148430 (= res!764309 (bvsgt from!1455 i!673))))

(declare-fun arrayContainsKey!0 (array!74450 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1148430 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!37660 0))(
  ( (Unit!37661) )
))
(declare-fun lt!513370 () Unit!37660)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!74450 (_ BitVec 64) (_ BitVec 32)) Unit!37660)

(assert (=> b!1148430 (= lt!513370 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun b!1148431 () Bool)

(assert (=> b!1148431 call!53063))

(declare-fun lt!513387 () Unit!37660)

(declare-fun call!53064 () Unit!37660)

(assert (=> b!1148431 (= lt!513387 call!53064)))

(declare-fun e!653262 () Unit!37660)

(assert (=> b!1148431 (= e!653262 lt!513387)))

(declare-fun b!1148432 () Bool)

(assert (=> b!1148432 (= e!653263 e!653265)))

(declare-fun res!764310 () Bool)

(assert (=> b!1148432 (=> (not res!764310) (not e!653265))))

(declare-fun lt!513382 () array!74450)

(assert (=> b!1148432 (= res!764310 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!513382 mask!1564))))

(assert (=> b!1148432 (= lt!513382 (array!74451 (store (arr!35872 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!36409 _keys!1208)))))

(declare-fun mapNonEmpty!45059 () Bool)

(declare-fun mapRes!45059 () Bool)

(declare-fun tp!85591 () Bool)

(declare-fun e!653266 () Bool)

(assert (=> mapNonEmpty!45059 (= mapRes!45059 (and tp!85591 e!653266))))

(declare-datatypes ((ValueCell!13702 0))(
  ( (ValueCellFull!13702 (v!17106 V!43557)) (EmptyCell!13702) )
))
(declare-fun mapValue!45059 () ValueCell!13702)

(declare-datatypes ((array!74452 0))(
  ( (array!74453 (arr!35873 (Array (_ BitVec 32) ValueCell!13702)) (size!36410 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!74452)

(declare-fun mapKey!45059 () (_ BitVec 32))

(declare-fun mapRest!45059 () (Array (_ BitVec 32) ValueCell!13702))

(assert (=> mapNonEmpty!45059 (= (arr!35873 _values!996) (store mapRest!45059 mapKey!45059 mapValue!45059))))

(declare-fun b!1148433 () Bool)

(declare-fun lt!513369 () ListLongMap!16409)

(declare-fun minValue!944 () V!43557)

(declare-fun contains!6716 (ListLongMap!16409 (_ BitVec 64)) Bool)

(declare-fun +!3559 (ListLongMap!16409 tuple2!18428) ListLongMap!16409)

(assert (=> b!1148433 (contains!6716 (+!3559 lt!513369 (tuple2!18429 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944)) k!934)))

(declare-fun lt!513373 () Unit!37660)

(declare-fun addStillContains!858 (ListLongMap!16409 (_ BitVec 64) V!43557 (_ BitVec 64)) Unit!37660)

(assert (=> b!1148433 (= lt!513373 (addStillContains!858 lt!513369 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944 k!934))))

(assert (=> b!1148433 call!53060))

(assert (=> b!1148433 (= lt!513369 call!53058)))

(declare-fun lt!513379 () Unit!37660)

(declare-fun call!53062 () Unit!37660)

(assert (=> b!1148433 (= lt!513379 call!53062)))

(declare-fun e!653264 () Unit!37660)

(assert (=> b!1148433 (= e!653264 lt!513373)))

(declare-fun b!1148434 () Bool)

(declare-fun e!653267 () Bool)

(assert (=> b!1148434 (= e!653267 true)))

(declare-fun e!653270 () Bool)

(assert (=> b!1148434 e!653270))

(declare-fun res!764304 () Bool)

(assert (=> b!1148434 (=> (not res!764304) (not e!653270))))

(declare-fun lt!513380 () ListLongMap!16409)

(declare-fun lt!513371 () V!43557)

(assert (=> b!1148434 (= res!764304 (= (-!1309 (+!3559 lt!513380 (tuple2!18429 (select (arr!35872 _keys!1208) from!1455) lt!513371)) (select (arr!35872 _keys!1208) from!1455)) lt!513380))))

(declare-fun lt!513383 () Unit!37660)

(declare-fun addThenRemoveForNewKeyIsSame!158 (ListLongMap!16409 (_ BitVec 64) V!43557) Unit!37660)

(assert (=> b!1148434 (= lt!513383 (addThenRemoveForNewKeyIsSame!158 lt!513380 (select (arr!35872 _keys!1208) from!1455) lt!513371))))

(declare-fun lt!513385 () V!43557)

(declare-fun get!18276 (ValueCell!13702 V!43557) V!43557)

(assert (=> b!1148434 (= lt!513371 (get!18276 (select (arr!35873 _values!996) from!1455) lt!513385))))

(declare-fun lt!513367 () Unit!37660)

(declare-fun e!653261 () Unit!37660)

(assert (=> b!1148434 (= lt!513367 e!653261)))

(declare-fun c!113446 () Bool)

(assert (=> b!1148434 (= c!113446 (contains!6716 lt!513380 k!934))))

(declare-fun zeroValue!944 () V!43557)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-fun getCurrentListMapNoExtraKeys!4661 (array!74450 array!74452 (_ BitVec 32) (_ BitVec 32) V!43557 V!43557 (_ BitVec 32) Int) ListLongMap!16409)

(assert (=> b!1148434 (= lt!513380 (getCurrentListMapNoExtraKeys!4661 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1148435 () Bool)

(declare-fun Unit!37662 () Unit!37660)

(assert (=> b!1148435 (= e!653261 Unit!37662)))

(declare-fun b!1148436 () Bool)

(declare-fun e!653274 () Unit!37660)

(assert (=> b!1148436 (= e!653274 e!653262)))

(declare-fun c!113445 () Bool)

(declare-fun lt!513384 () Bool)

(assert (=> b!1148436 (= c!113445 (and (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!513384))))

(declare-fun b!1148437 () Bool)

(declare-fun lt!513381 () Unit!37660)

(assert (=> b!1148437 (= e!653274 lt!513381)))

(assert (=> b!1148437 (= lt!513381 call!53064)))

(assert (=> b!1148437 call!53063))

(declare-fun b!1148438 () Bool)

(declare-fun e!653272 () Bool)

(declare-fun e!653268 () Bool)

(assert (=> b!1148438 (= e!653272 (and e!653268 mapRes!45059))))

(declare-fun condMapEmpty!45059 () Bool)

(declare-fun mapDefault!45059 () ValueCell!13702)

