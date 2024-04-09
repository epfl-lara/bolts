; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!98672 () Bool)

(assert start!98672)

(declare-fun b_free!24241 () Bool)

(declare-fun b_next!24241 () Bool)

(assert (=> start!98672 (= b_free!24241 (not b_next!24241))))

(declare-fun tp!85435 () Bool)

(declare-fun b_and!39345 () Bool)

(assert (=> start!98672 (= tp!85435 b_and!39345)))

(declare-fun b!1146034 () Bool)

(declare-fun e!651936 () Bool)

(declare-fun tp_is_empty!28771 () Bool)

(assert (=> b!1146034 (= e!651936 tp_is_empty!28771)))

(declare-fun b!1146035 () Bool)

(declare-fun e!651940 () Bool)

(assert (=> b!1146035 (= e!651940 true)))

(declare-fun e!651939 () Bool)

(assert (=> b!1146035 e!651939))

(declare-fun res!763136 () Bool)

(assert (=> b!1146035 (=> (not res!763136) (not e!651939))))

(declare-datatypes ((array!74348 0))(
  ( (array!74349 (arr!35821 (Array (_ BitVec 32) (_ BitVec 64))) (size!36358 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!74348)

(declare-datatypes ((V!43489 0))(
  ( (V!43490 (val!14442 Int)) )
))
(declare-fun lt!511748 () V!43489)

(declare-datatypes ((tuple2!18378 0))(
  ( (tuple2!18379 (_1!9199 (_ BitVec 64)) (_2!9199 V!43489)) )
))
(declare-datatypes ((List!25176 0))(
  ( (Nil!25173) (Cons!25172 (h!26381 tuple2!18378) (t!36416 List!25176)) )
))
(declare-datatypes ((ListLongMap!16359 0))(
  ( (ListLongMap!16360 (toList!8195 List!25176)) )
))
(declare-fun lt!511738 () ListLongMap!16359)

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun -!1285 (ListLongMap!16359 (_ BitVec 64)) ListLongMap!16359)

(declare-fun +!3537 (ListLongMap!16359 tuple2!18378) ListLongMap!16359)

(assert (=> b!1146035 (= res!763136 (= (-!1285 (+!3537 lt!511738 (tuple2!18379 (select (arr!35821 _keys!1208) from!1455) lt!511748)) (select (arr!35821 _keys!1208) from!1455)) lt!511738))))

(declare-datatypes ((Unit!37557 0))(
  ( (Unit!37558) )
))
(declare-fun lt!511740 () Unit!37557)

(declare-fun addThenRemoveForNewKeyIsSame!138 (ListLongMap!16359 (_ BitVec 64) V!43489) Unit!37557)

(assert (=> b!1146035 (= lt!511740 (addThenRemoveForNewKeyIsSame!138 lt!511738 (select (arr!35821 _keys!1208) from!1455) lt!511748))))

(declare-datatypes ((ValueCell!13676 0))(
  ( (ValueCellFull!13676 (v!17080 V!43489)) (EmptyCell!13676) )
))
(declare-datatypes ((array!74350 0))(
  ( (array!74351 (arr!35822 (Array (_ BitVec 32) ValueCell!13676)) (size!36359 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!74350)

(declare-fun lt!511741 () V!43489)

(declare-fun get!18240 (ValueCell!13676 V!43489) V!43489)

(assert (=> b!1146035 (= lt!511748 (get!18240 (select (arr!35822 _values!996) from!1455) lt!511741))))

(declare-fun lt!511742 () Unit!37557)

(declare-fun e!651946 () Unit!37557)

(assert (=> b!1146035 (= lt!511742 e!651946)))

(declare-fun c!112978 () Bool)

(declare-fun k!934 () (_ BitVec 64))

(declare-fun contains!6694 (ListLongMap!16359 (_ BitVec 64)) Bool)

(assert (=> b!1146035 (= c!112978 (contains!6694 lt!511738 k!934))))

(declare-fun zeroValue!944 () V!43489)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-fun minValue!944 () V!43489)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun getCurrentListMapNoExtraKeys!4637 (array!74348 array!74350 (_ BitVec 32) (_ BitVec 32) V!43489 V!43489 (_ BitVec 32) Int) ListLongMap!16359)

(assert (=> b!1146035 (= lt!511738 (getCurrentListMapNoExtraKeys!4637 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1146036 () Bool)

(declare-fun res!763145 () Bool)

(declare-fun e!651944 () Bool)

(assert (=> b!1146036 (=> (not res!763145) (not e!651944))))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1146036 (= res!763145 (= (select (arr!35821 _keys!1208) i!673) k!934))))

(declare-fun mapNonEmpty!44981 () Bool)

(declare-fun mapRes!44981 () Bool)

(declare-fun tp!85434 () Bool)

(declare-fun e!651932 () Bool)

(assert (=> mapNonEmpty!44981 (= mapRes!44981 (and tp!85434 e!651932))))

(declare-fun mapValue!44981 () ValueCell!13676)

(declare-fun mapKey!44981 () (_ BitVec 32))

(declare-fun mapRest!44981 () (Array (_ BitVec 32) ValueCell!13676))

(assert (=> mapNonEmpty!44981 (= (arr!35822 _values!996) (store mapRest!44981 mapKey!44981 mapValue!44981))))

(declare-fun b!1146037 () Bool)

(declare-fun e!651943 () Unit!37557)

(declare-fun Unit!37559 () Unit!37557)

(assert (=> b!1146037 (= e!651943 Unit!37559)))

(declare-fun b!1146038 () Bool)

(declare-fun e!651937 () Bool)

(declare-fun arrayContainsKey!0 (array!74348 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1146038 (= e!651937 (arrayContainsKey!0 _keys!1208 k!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun call!52433 () ListLongMap!16359)

(declare-fun bm!52430 () Bool)

(assert (=> bm!52430 (= call!52433 (getCurrentListMapNoExtraKeys!4637 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun call!52439 () Bool)

(declare-fun call!52436 () ListLongMap!16359)

(declare-fun c!112976 () Bool)

(declare-fun lt!511734 () ListLongMap!16359)

(declare-fun bm!52431 () Bool)

(assert (=> bm!52431 (= call!52439 (contains!6694 (ite c!112976 lt!511734 call!52436) k!934))))

(declare-fun b!1146040 () Bool)

(declare-fun e!651948 () Bool)

(assert (=> b!1146040 (= e!651948 (and e!651936 mapRes!44981))))

(declare-fun condMapEmpty!44981 () Bool)

(declare-fun mapDefault!44981 () ValueCell!13676)

