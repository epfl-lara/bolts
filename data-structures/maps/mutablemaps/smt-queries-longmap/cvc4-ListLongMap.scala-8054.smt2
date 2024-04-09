; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!99204 () Bool)

(assert start!99204)

(declare-fun b_free!24773 () Bool)

(declare-fun b_next!24773 () Bool)

(assert (=> start!99204 (= b_free!24773 (not b_next!24773))))

(declare-fun tp!87031 () Bool)

(declare-fun b_and!40409 () Bool)

(assert (=> start!99204 (= tp!87031 b_and!40409)))

(declare-fun b!1167155 () Bool)

(declare-fun e!663443 () Bool)

(declare-fun e!663437 () Bool)

(assert (=> b!1167155 (= e!663443 e!663437)))

(declare-fun res!774339 () Bool)

(assert (=> b!1167155 (=> (not res!774339) (not e!663437))))

(declare-datatypes ((array!75384 0))(
  ( (array!75385 (arr!36339 (Array (_ BitVec 32) (_ BitVec 64))) (size!36876 (_ BitVec 32))) )
))
(declare-fun lt!525497 () array!75384)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!75384 (_ BitVec 32)) Bool)

(assert (=> b!1167155 (= res!774339 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!525497 mask!1564))))

(declare-fun _keys!1208 () array!75384)

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1167155 (= lt!525497 (array!75385 (store (arr!36339 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!36876 _keys!1208)))))

(declare-fun b!1167156 () Bool)

(declare-fun e!663440 () Bool)

(assert (=> b!1167156 (= e!663437 (not e!663440))))

(declare-fun res!774333 () Bool)

(assert (=> b!1167156 (=> res!774333 e!663440)))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> b!1167156 (= res!774333 (bvsgt from!1455 i!673))))

(declare-fun k!934 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!75384 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1167156 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!38408 0))(
  ( (Unit!38409) )
))
(declare-fun lt!525496 () Unit!38408)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!75384 (_ BitVec 64) (_ BitVec 32)) Unit!38408)

(assert (=> b!1167156 (= lt!525496 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun b!1167157 () Bool)

(declare-fun res!774342 () Bool)

(assert (=> b!1167157 (=> (not res!774342) (not e!663443))))

(assert (=> b!1167157 (= res!774342 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!36876 _keys!1208))))))

(declare-fun b!1167158 () Bool)

(declare-fun e!663441 () Bool)

(assert (=> b!1167158 (= e!663441 true)))

(declare-datatypes ((V!44197 0))(
  ( (V!44198 (val!14708 Int)) )
))
(declare-fun zeroValue!944 () V!44197)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-datatypes ((ValueCell!13942 0))(
  ( (ValueCellFull!13942 (v!17346 V!44197)) (EmptyCell!13942) )
))
(declare-datatypes ((array!75386 0))(
  ( (array!75387 (arr!36340 (Array (_ BitVec 32) ValueCell!13942)) (size!36877 (_ BitVec 32))) )
))
(declare-fun lt!525499 () array!75386)

(declare-fun defaultEntry!1004 () Int)

(declare-fun _values!996 () array!75386)

(declare-fun minValue!944 () V!44197)

(declare-datatypes ((tuple2!18842 0))(
  ( (tuple2!18843 (_1!9431 (_ BitVec 64)) (_2!9431 V!44197)) )
))
(declare-datatypes ((List!25619 0))(
  ( (Nil!25616) (Cons!25615 (h!26824 tuple2!18842) (t!37391 List!25619)) )
))
(declare-datatypes ((ListLongMap!16823 0))(
  ( (ListLongMap!16824 (toList!8427 List!25619)) )
))
(declare-fun getCurrentListMapNoExtraKeys!4860 (array!75384 array!75386 (_ BitVec 32) (_ BitVec 32) V!44197 V!44197 (_ BitVec 32) Int) ListLongMap!16823)

(declare-fun -!1462 (ListLongMap!16823 (_ BitVec 64)) ListLongMap!16823)

(assert (=> b!1167158 (= (getCurrentListMapNoExtraKeys!4860 lt!525497 lt!525499 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004) (-!1462 (getCurrentListMapNoExtraKeys!4860 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004) k!934))))

(declare-fun lt!525501 () Unit!38408)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!686 (array!75384 array!75386 (_ BitVec 32) (_ BitVec 32) V!44197 V!44197 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!38408)

(assert (=> b!1167158 (= lt!525501 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!686 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1167159 () Bool)

(declare-fun e!663438 () Bool)

(declare-fun e!663442 () Bool)

(declare-fun mapRes!45779 () Bool)

(assert (=> b!1167159 (= e!663438 (and e!663442 mapRes!45779))))

(declare-fun condMapEmpty!45779 () Bool)

(declare-fun mapDefault!45779 () ValueCell!13942)

