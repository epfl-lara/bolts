; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!99662 () Bool)

(assert start!99662)

(declare-fun b_free!25205 () Bool)

(declare-fun b_next!25205 () Bool)

(assert (=> start!99662 (= b_free!25205 (not b_next!25205))))

(declare-fun tp!88329 () Bool)

(declare-fun b_and!41291 () Bool)

(assert (=> start!99662 (= tp!88329 b_and!41291)))

(declare-fun mapIsEmpty!46430 () Bool)

(declare-fun mapRes!46430 () Bool)

(assert (=> mapIsEmpty!46430 mapRes!46430))

(declare-fun b!1180485 () Bool)

(declare-fun e!671180 () Bool)

(declare-fun e!671182 () Bool)

(assert (=> b!1180485 (= e!671180 (not e!671182))))

(declare-fun res!784482 () Bool)

(assert (=> b!1180485 (=> res!784482 e!671182)))

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1180485 (= res!784482 (bvsgt from!1455 i!673))))

(declare-datatypes ((array!76238 0))(
  ( (array!76239 (arr!36765 (Array (_ BitVec 32) (_ BitVec 64))) (size!37302 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!76238)

(declare-fun k!934 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!76238 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1180485 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!38950 0))(
  ( (Unit!38951) )
))
(declare-fun lt!533738 () Unit!38950)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!76238 (_ BitVec 64) (_ BitVec 32)) Unit!38950)

(assert (=> b!1180485 (= lt!533738 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun b!1180487 () Bool)

(declare-fun e!671188 () Bool)

(assert (=> b!1180487 (= e!671188 true)))

(declare-fun e!671178 () Bool)

(assert (=> b!1180487 e!671178))

(declare-fun res!784480 () Bool)

(assert (=> b!1180487 (=> (not res!784480) (not e!671178))))

(assert (=> b!1180487 (= res!784480 (not (= (select (arr!36765 _keys!1208) from!1455) k!934)))))

(declare-fun lt!533733 () Unit!38950)

(declare-fun e!671183 () Unit!38950)

(assert (=> b!1180487 (= lt!533733 e!671183)))

(declare-fun c!116879 () Bool)

(assert (=> b!1180487 (= c!116879 (= (select (arr!36765 _keys!1208) from!1455) k!934))))

(declare-fun e!671176 () Bool)

(assert (=> b!1180487 e!671176))

(declare-fun res!784477 () Bool)

(assert (=> b!1180487 (=> (not res!784477) (not e!671176))))

(declare-datatypes ((V!44773 0))(
  ( (V!44774 (val!14924 Int)) )
))
(declare-datatypes ((tuple2!19232 0))(
  ( (tuple2!19233 (_1!9626 (_ BitVec 64)) (_2!9626 V!44773)) )
))
(declare-fun lt!533728 () tuple2!19232)

(declare-datatypes ((List!25994 0))(
  ( (Nil!25991) (Cons!25990 (h!27199 tuple2!19232) (t!38198 List!25994)) )
))
(declare-datatypes ((ListLongMap!17213 0))(
  ( (ListLongMap!17214 (toList!8622 List!25994)) )
))
(declare-fun lt!533731 () ListLongMap!17213)

(declare-fun lt!533737 () ListLongMap!17213)

(declare-fun +!3841 (ListLongMap!17213 tuple2!19232) ListLongMap!17213)

(assert (=> b!1180487 (= res!784477 (= lt!533731 (+!3841 lt!533737 lt!533728)))))

(declare-fun lt!533732 () V!44773)

(declare-datatypes ((ValueCell!14158 0))(
  ( (ValueCellFull!14158 (v!17563 V!44773)) (EmptyCell!14158) )
))
(declare-datatypes ((array!76240 0))(
  ( (array!76241 (arr!36766 (Array (_ BitVec 32) ValueCell!14158)) (size!37303 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!76240)

(declare-fun get!18833 (ValueCell!14158 V!44773) V!44773)

(assert (=> b!1180487 (= lt!533728 (tuple2!19233 (select (arr!36765 _keys!1208) from!1455) (get!18833 (select (arr!36766 _values!996) from!1455) lt!533732)))))

(declare-fun b!1180488 () Bool)

(declare-fun e!671186 () Bool)

(declare-fun e!671184 () Bool)

(assert (=> b!1180488 (= e!671186 (and e!671184 mapRes!46430))))

(declare-fun condMapEmpty!46430 () Bool)

(declare-fun mapDefault!46430 () ValueCell!14158)

