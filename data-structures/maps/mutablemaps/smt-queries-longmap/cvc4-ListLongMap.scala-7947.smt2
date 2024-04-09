; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!98562 () Bool)

(assert start!98562)

(declare-fun b_free!24131 () Bool)

(declare-fun b_next!24131 () Bool)

(assert (=> start!98562 (= b_free!24131 (not b_next!24131))))

(declare-fun tp!85105 () Bool)

(declare-fun b_and!39125 () Bool)

(assert (=> start!98562 (= tp!85105 b_and!39125)))

(declare-datatypes ((array!74132 0))(
  ( (array!74133 (arr!35713 (Array (_ BitVec 32) (_ BitVec 64))) (size!36250 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!74132)

(declare-fun e!649228 () Bool)

(declare-fun k!934 () (_ BitVec 64))

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun b!1141074 () Bool)

(declare-fun arrayContainsKey!0 (array!74132 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1141074 (= e!649228 (arrayContainsKey!0 _keys!1208 k!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-datatypes ((V!43341 0))(
  ( (V!43342 (val!14387 Int)) )
))
(declare-fun zeroValue!944 () V!43341)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun bm!51110 () Bool)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-datatypes ((tuple2!18280 0))(
  ( (tuple2!18281 (_1!9150 (_ BitVec 64)) (_2!9150 V!43341)) )
))
(declare-datatypes ((List!25082 0))(
  ( (Nil!25079) (Cons!25078 (h!26287 tuple2!18280) (t!36212 List!25082)) )
))
(declare-datatypes ((ListLongMap!16261 0))(
  ( (ListLongMap!16262 (toList!8146 List!25082)) )
))
(declare-fun call!51118 () ListLongMap!16261)

(declare-datatypes ((ValueCell!13621 0))(
  ( (ValueCellFull!13621 (v!17025 V!43341)) (EmptyCell!13621) )
))
(declare-datatypes ((array!74134 0))(
  ( (array!74135 (arr!35714 (Array (_ BitVec 32) ValueCell!13621)) (size!36251 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!74134)

(declare-fun minValue!944 () V!43341)

(declare-fun getCurrentListMapNoExtraKeys!4590 (array!74132 array!74134 (_ BitVec 32) (_ BitVec 32) V!43341 V!43341 (_ BitVec 32) Int) ListLongMap!16261)

(assert (=> bm!51110 (= call!51118 (getCurrentListMapNoExtraKeys!4590 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1141075 () Bool)

(declare-datatypes ((Unit!37346 0))(
  ( (Unit!37347) )
))
(declare-fun e!649240 () Unit!37346)

(declare-fun Unit!37348 () Unit!37346)

(assert (=> b!1141075 (= e!649240 Unit!37348)))

(declare-fun mapIsEmpty!44816 () Bool)

(declare-fun mapRes!44816 () Bool)

(assert (=> mapIsEmpty!44816 mapRes!44816))

(declare-fun b!1141076 () Bool)

(declare-fun res!760769 () Bool)

(declare-fun e!649238 () Bool)

(assert (=> b!1141076 (=> (not res!760769) (not e!649238))))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1141076 (= res!760769 (= (select (arr!35713 _keys!1208) i!673) k!934))))

(declare-fun b!1141077 () Bool)

(declare-fun e!649232 () Unit!37346)

(declare-fun Unit!37349 () Unit!37346)

(assert (=> b!1141077 (= e!649232 Unit!37349)))

(declare-fun b!1141078 () Bool)

(declare-fun e!649229 () Bool)

(declare-fun e!649227 () Bool)

(assert (=> b!1141078 (= e!649229 (and e!649227 mapRes!44816))))

(declare-fun condMapEmpty!44816 () Bool)

(declare-fun mapDefault!44816 () ValueCell!13621)

