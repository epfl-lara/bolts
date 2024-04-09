; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!99002 () Bool)

(assert start!99002)

(declare-fun b_free!24571 () Bool)

(declare-fun b_next!24571 () Bool)

(assert (=> start!99002 (= b_free!24571 (not b_next!24571))))

(declare-fun tp!86425 () Bool)

(declare-fun b_and!40005 () Bool)

(assert (=> start!99002 (= tp!86425 b_and!40005)))

(declare-fun bm!56390 () Bool)

(declare-fun call!56395 () Bool)

(declare-fun call!56396 () Bool)

(assert (=> bm!56390 (= call!56395 call!56396)))

(declare-datatypes ((V!43929 0))(
  ( (V!43930 (val!14607 Int)) )
))
(declare-fun zeroValue!944 () V!43929)

(declare-datatypes ((array!74992 0))(
  ( (array!74993 (arr!36143 (Array (_ BitVec 32) (_ BitVec 64))) (size!36680 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!74992)

(declare-fun c!115945 () Bool)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-datatypes ((ValueCell!13841 0))(
  ( (ValueCellFull!13841 (v!17245 V!43929)) (EmptyCell!13841) )
))
(declare-datatypes ((array!74994 0))(
  ( (array!74995 (arr!36144 (Array (_ BitVec 32) ValueCell!13841)) (size!36681 (_ BitVec 32))) )
))
(declare-fun lt!522529 () array!74994)

(declare-fun minValue!944 () V!43929)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun bm!56391 () Bool)

(declare-datatypes ((tuple2!18684 0))(
  ( (tuple2!18685 (_1!9352 (_ BitVec 64)) (_2!9352 V!43929)) )
))
(declare-datatypes ((List!25462 0))(
  ( (Nil!25459) (Cons!25458 (h!26667 tuple2!18684) (t!37032 List!25462)) )
))
(declare-datatypes ((ListLongMap!16665 0))(
  ( (ListLongMap!16666 (toList!8348 List!25462)) )
))
(declare-fun call!56397 () ListLongMap!16665)

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun _values!996 () array!74994)

(declare-fun lt!522536 () array!74992)

(declare-fun getCurrentListMapNoExtraKeys!4783 (array!74992 array!74994 (_ BitVec 32) (_ BitVec 32) V!43929 V!43929 (_ BitVec 32) Int) ListLongMap!16665)

(assert (=> bm!56391 (= call!56397 (getCurrentListMapNoExtraKeys!4783 (ite c!115945 _keys!1208 lt!522536) (ite c!115945 _values!996 lt!522529) mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1161214 () Bool)

(declare-fun res!770571 () Bool)

(declare-fun e!660356 () Bool)

(assert (=> b!1161214 (=> (not res!770571) (not e!660356))))

(declare-fun i!673 () (_ BitVec 32))

(declare-fun k!934 () (_ BitVec 64))

(assert (=> b!1161214 (= res!770571 (= (select (arr!36143 _keys!1208) i!673) k!934))))

(declare-fun lt!522537 () ListLongMap!16665)

(declare-fun c!115946 () Bool)

(declare-datatypes ((Unit!38196 0))(
  ( (Unit!38197) )
))
(declare-fun call!56394 () Unit!38196)

(declare-fun c!115948 () Bool)

(declare-fun bm!56392 () Bool)

(declare-fun lt!522525 () ListLongMap!16665)

(declare-fun addStillContains!970 (ListLongMap!16665 (_ BitVec 64) V!43929 (_ BitVec 64)) Unit!38196)

(assert (=> bm!56392 (= call!56394 (addStillContains!970 (ite c!115948 lt!522537 lt!522525) (ite c!115948 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!115946 #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000)) (ite c!115948 minValue!944 (ite c!115946 zeroValue!944 minValue!944)) k!934))))

(declare-fun bm!56393 () Bool)

(declare-fun call!56400 () ListLongMap!16665)

(declare-fun call!56398 () ListLongMap!16665)

(assert (=> bm!56393 (= call!56400 call!56398)))

(declare-fun b!1161215 () Bool)

(declare-fun e!660362 () Bool)

(declare-fun tp_is_empty!29101 () Bool)

(assert (=> b!1161215 (= e!660362 tp_is_empty!29101)))

(declare-fun b!1161216 () Bool)

(declare-fun e!660363 () Bool)

(declare-fun e!660351 () Bool)

(assert (=> b!1161216 (= e!660363 e!660351)))

(declare-fun res!770563 () Bool)

(assert (=> b!1161216 (=> res!770563 e!660351)))

(assert (=> b!1161216 (= res!770563 (not (= (select (arr!36143 _keys!1208) from!1455) k!934)))))

(declare-fun e!660354 () Bool)

(assert (=> b!1161216 e!660354))

(assert (=> b!1161216 (= c!115945 (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673))))

(declare-fun lt!522527 () Unit!38196)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!642 (array!74992 array!74994 (_ BitVec 32) (_ BitVec 32) V!43929 V!43929 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!38196)

(assert (=> b!1161216 (= lt!522527 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!642 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun e!660361 () Bool)

(declare-fun b!1161217 () Bool)

(declare-fun arrayContainsKey!0 (array!74992 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1161217 (= e!660361 (arrayContainsKey!0 _keys!1208 k!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun b!1161218 () Bool)

(declare-fun res!770568 () Bool)

(declare-fun e!660350 () Bool)

(assert (=> b!1161218 (=> (not res!770568) (not e!660350))))

(declare-datatypes ((List!25463 0))(
  ( (Nil!25460) (Cons!25459 (h!26668 (_ BitVec 64)) (t!37033 List!25463)) )
))
(declare-fun arrayNoDuplicates!0 (array!74992 (_ BitVec 32) List!25463) Bool)

(assert (=> b!1161218 (= res!770568 (arrayNoDuplicates!0 lt!522536 #b00000000000000000000000000000000 Nil!25460))))

(declare-fun b!1161219 () Bool)

(declare-fun e!660347 () Unit!38196)

(declare-fun lt!522538 () Unit!38196)

(assert (=> b!1161219 (= e!660347 lt!522538)))

(declare-fun call!56399 () Unit!38196)

(assert (=> b!1161219 (= lt!522538 call!56399)))

(assert (=> b!1161219 call!56395))

(declare-fun b!1161220 () Bool)

(declare-fun e!660358 () Bool)

(declare-fun mapRes!45476 () Bool)

(assert (=> b!1161220 (= e!660358 (and e!660362 mapRes!45476))))

(declare-fun condMapEmpty!45476 () Bool)

(declare-fun mapDefault!45476 () ValueCell!13841)

