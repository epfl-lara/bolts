; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!99460 () Bool)

(assert start!99460)

(declare-fun b_free!25003 () Bool)

(declare-fun b_next!25003 () Bool)

(assert (=> start!99460 (= b_free!25003 (not b_next!25003))))

(declare-fun tp!87723 () Bool)

(declare-fun b_and!40887 () Bool)

(assert (=> start!99460 (= tp!87723 b_and!40887)))

(declare-fun b!1173973 () Bool)

(declare-fun e!667339 () Bool)

(assert (=> b!1173973 (= e!667339 true)))

(declare-datatypes ((array!75842 0))(
  ( (array!75843 (arr!36567 (Array (_ BitVec 32) (_ BitVec 64))) (size!37104 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!75842)

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun k!934 () (_ BitVec 64))

(assert (=> b!1173973 (not (= (select (arr!36567 _keys!1208) from!1455) k!934))))

(declare-datatypes ((Unit!38631 0))(
  ( (Unit!38632) )
))
(declare-fun lt!529277 () Unit!38631)

(declare-fun e!667345 () Unit!38631)

(assert (=> b!1173973 (= lt!529277 e!667345)))

(declare-fun c!116576 () Bool)

(assert (=> b!1173973 (= c!116576 (= (select (arr!36567 _keys!1208) from!1455) k!934))))

(declare-fun e!667337 () Bool)

(assert (=> b!1173973 e!667337))

(declare-fun res!779682 () Bool)

(assert (=> b!1173973 (=> (not res!779682) (not e!667337))))

(declare-datatypes ((V!44505 0))(
  ( (V!44506 (val!14823 Int)) )
))
(declare-datatypes ((tuple2!19046 0))(
  ( (tuple2!19047 (_1!9533 (_ BitVec 64)) (_2!9533 V!44505)) )
))
(declare-datatypes ((List!25818 0))(
  ( (Nil!25815) (Cons!25814 (h!27023 tuple2!19046) (t!37820 List!25818)) )
))
(declare-datatypes ((ListLongMap!17027 0))(
  ( (ListLongMap!17028 (toList!8529 List!25818)) )
))
(declare-fun lt!529278 () ListLongMap!17027)

(declare-datatypes ((ValueCell!14057 0))(
  ( (ValueCellFull!14057 (v!17462 V!44505)) (EmptyCell!14057) )
))
(declare-datatypes ((array!75844 0))(
  ( (array!75845 (arr!36568 (Array (_ BitVec 32) ValueCell!14057)) (size!37105 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!75844)

(declare-fun lt!529280 () V!44505)

(declare-fun lt!529285 () ListLongMap!17027)

(declare-fun +!3763 (ListLongMap!17027 tuple2!19046) ListLongMap!17027)

(declare-fun get!18698 (ValueCell!14057 V!44505) V!44505)

(assert (=> b!1173973 (= res!779682 (= lt!529285 (+!3763 lt!529278 (tuple2!19047 (select (arr!36567 _keys!1208) from!1455) (get!18698 (select (arr!36568 _values!996) from!1455) lt!529280)))))))

(declare-fun e!667344 () Bool)

(declare-fun i!673 () (_ BitVec 32))

(declare-fun b!1173974 () Bool)

(declare-fun arrayContainsKey!0 (array!75842 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1173974 (= e!667344 (arrayContainsKey!0 _keys!1208 k!934 i!673))))

(declare-fun b!1173975 () Bool)

(declare-fun e!667335 () Bool)

(declare-fun e!667340 () Bool)

(declare-fun mapRes!46127 () Bool)

(assert (=> b!1173975 (= e!667335 (and e!667340 mapRes!46127))))

(declare-fun condMapEmpty!46127 () Bool)

(declare-fun mapDefault!46127 () ValueCell!14057)

