; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!98438 () Bool)

(assert start!98438)

(declare-fun b_free!24007 () Bool)

(declare-fun b_next!24007 () Bool)

(assert (=> start!98438 (= b_free!24007 (not b_next!24007))))

(declare-fun tp!84732 () Bool)

(declare-fun b_and!38877 () Bool)

(assert (=> start!98438 (= tp!84732 b_and!38877)))

(declare-fun b!1135488 () Bool)

(declare-fun e!646219 () Bool)

(declare-fun e!646217 () Bool)

(assert (=> b!1135488 (= e!646219 e!646217)))

(declare-fun res!758034 () Bool)

(assert (=> b!1135488 (=> res!758034 e!646217)))

(declare-datatypes ((V!43177 0))(
  ( (V!43178 (val!14325 Int)) )
))
(declare-datatypes ((tuple2!18172 0))(
  ( (tuple2!18173 (_1!9096 (_ BitVec 64)) (_2!9096 V!43177)) )
))
(declare-datatypes ((List!24983 0))(
  ( (Nil!24980) (Cons!24979 (h!26188 tuple2!18172) (t!35989 List!24983)) )
))
(declare-datatypes ((ListLongMap!16153 0))(
  ( (ListLongMap!16154 (toList!8092 List!24983)) )
))
(declare-fun lt!504770 () ListLongMap!16153)

(declare-fun k!934 () (_ BitVec 64))

(declare-fun contains!6594 (ListLongMap!16153 (_ BitVec 64)) Bool)

(assert (=> b!1135488 (= res!758034 (not (contains!6594 lt!504770 k!934)))))

(declare-datatypes ((array!73896 0))(
  ( (array!73897 (arr!35595 (Array (_ BitVec 32) (_ BitVec 64))) (size!36132 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!73896)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-fun from!1455 () (_ BitVec 32))

(declare-datatypes ((ValueCell!13559 0))(
  ( (ValueCellFull!13559 (v!16963 V!43177)) (EmptyCell!13559) )
))
(declare-datatypes ((array!73898 0))(
  ( (array!73899 (arr!35596 (Array (_ BitVec 32) ValueCell!13559)) (size!36133 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!73898)

(declare-fun minValue!944 () V!43177)

(declare-fun zeroValue!944 () V!43177)

(declare-fun getCurrentListMapNoExtraKeys!4540 (array!73896 array!73898 (_ BitVec 32) (_ BitVec 32) V!43177 V!43177 (_ BitVec 32) Int) ListLongMap!16153)

(assert (=> b!1135488 (= lt!504770 (getCurrentListMapNoExtraKeys!4540 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun c!110903 () Bool)

(declare-fun bm!49622 () Bool)

(declare-fun c!110907 () Bool)

(declare-datatypes ((Unit!37139 0))(
  ( (Unit!37140) )
))
(declare-fun call!49629 () Unit!37139)

(declare-fun addStillContains!747 (ListLongMap!16153 (_ BitVec 64) V!43177 (_ BitVec 64)) Unit!37139)

(assert (=> bm!49622 (= call!49629 (addStillContains!747 lt!504770 (ite (or c!110903 c!110907) #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000) (ite (or c!110903 c!110907) zeroValue!944 minValue!944) k!934))))

(declare-fun b!1135489 () Bool)

(declare-fun e!646218 () Bool)

(declare-fun call!49632 () ListLongMap!16153)

(declare-fun call!49630 () ListLongMap!16153)

(assert (=> b!1135489 (= e!646218 (= call!49632 call!49630))))

(declare-fun b!1135490 () Bool)

(declare-fun e!646230 () Bool)

(declare-fun e!646226 () Bool)

(declare-fun mapRes!44630 () Bool)

(assert (=> b!1135490 (= e!646230 (and e!646226 mapRes!44630))))

(declare-fun condMapEmpty!44630 () Bool)

(declare-fun mapDefault!44630 () ValueCell!13559)

