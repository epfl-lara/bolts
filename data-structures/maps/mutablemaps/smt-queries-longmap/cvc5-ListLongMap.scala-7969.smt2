; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!98690 () Bool)

(assert start!98690)

(declare-fun b_free!24259 () Bool)

(declare-fun b_next!24259 () Bool)

(assert (=> start!98690 (= b_free!24259 (not b_next!24259))))

(declare-fun tp!85489 () Bool)

(declare-fun b_and!39381 () Bool)

(assert (=> start!98690 (= tp!85489 b_and!39381)))

(declare-datatypes ((V!43513 0))(
  ( (V!43514 (val!14451 Int)) )
))
(declare-datatypes ((tuple2!18394 0))(
  ( (tuple2!18395 (_1!9207 (_ BitVec 64)) (_2!9207 V!43513)) )
))
(declare-datatypes ((List!25191 0))(
  ( (Nil!25188) (Cons!25187 (h!26396 tuple2!18394) (t!36449 List!25191)) )
))
(declare-datatypes ((ListLongMap!16375 0))(
  ( (ListLongMap!16376 (toList!8203 List!25191)) )
))
(declare-fun lt!512314 () ListLongMap!16375)

(declare-fun k!934 () (_ BitVec 64))

(declare-fun b!1146862 () Bool)

(declare-fun e!652395 () Bool)

(declare-fun lt!512308 () ListLongMap!16375)

(declare-fun -!1293 (ListLongMap!16375 (_ BitVec 64)) ListLongMap!16375)

(assert (=> b!1146862 (= e!652395 (= (-!1293 lt!512308 k!934) lt!512314))))

(declare-fun zeroValue!944 () V!43513)

(declare-datatypes ((array!74382 0))(
  ( (array!74383 (arr!35838 (Array (_ BitVec 32) (_ BitVec 64))) (size!36375 (_ BitVec 32))) )
))
(declare-fun lt!512309 () array!74382)

(declare-datatypes ((ValueCell!13685 0))(
  ( (ValueCellFull!13685 (v!17089 V!43513)) (EmptyCell!13685) )
))
(declare-datatypes ((array!74384 0))(
  ( (array!74385 (arr!35839 (Array (_ BitVec 32) ValueCell!13685)) (size!36376 (_ BitVec 32))) )
))
(declare-fun lt!512311 () array!74384)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun call!52650 () ListLongMap!16375)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun bm!52646 () Bool)

(declare-fun minValue!944 () V!43513)

(declare-fun getCurrentListMapNoExtraKeys!4645 (array!74382 array!74384 (_ BitVec 32) (_ BitVec 32) V!43513 V!43513 (_ BitVec 32) Int) ListLongMap!16375)

(assert (=> bm!52646 (= call!52650 (getCurrentListMapNoExtraKeys!4645 lt!512309 lt!512311 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun c!113139 () Bool)

(declare-fun c!113137 () Bool)

(declare-fun bm!52647 () Bool)

(declare-datatypes ((Unit!37591 0))(
  ( (Unit!37592) )
))
(declare-fun call!52653 () Unit!37591)

(declare-fun addStillContains!842 (ListLongMap!16375 (_ BitVec 64) V!43513 (_ BitVec 64)) Unit!37591)

(assert (=> bm!52647 (= call!52653 (addStillContains!842 lt!512314 (ite (or c!113137 c!113139) #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000) (ite (or c!113137 c!113139) zeroValue!944 minValue!944) k!934))))

(declare-fun b!1146863 () Bool)

(declare-fun e!652401 () Bool)

(declare-fun e!652391 () Bool)

(assert (=> b!1146863 (= e!652401 (not e!652391))))

(declare-fun res!763549 () Bool)

(assert (=> b!1146863 (=> res!763549 e!652391)))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1146863 (= res!763549 (bvsgt from!1455 i!673))))

(declare-fun _keys!1208 () array!74382)

(declare-fun arrayContainsKey!0 (array!74382 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1146863 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-fun lt!512316 () Unit!37591)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!74382 (_ BitVec 64) (_ BitVec 32)) Unit!37591)

(assert (=> b!1146863 (= lt!512316 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun b!1146864 () Bool)

(declare-fun e!652396 () Unit!37591)

(declare-fun Unit!37593 () Unit!37591)

(assert (=> b!1146864 (= e!652396 Unit!37593)))

(declare-fun b!1146865 () Bool)

(declare-fun e!652392 () Bool)

(declare-fun e!652398 () Bool)

(declare-fun mapRes!45008 () Bool)

(assert (=> b!1146865 (= e!652392 (and e!652398 mapRes!45008))))

(declare-fun condMapEmpty!45008 () Bool)

(declare-fun _values!996 () array!74384)

(declare-fun mapDefault!45008 () ValueCell!13685)

