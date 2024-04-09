; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!99012 () Bool)

(assert start!99012)

(declare-fun b_free!24581 () Bool)

(declare-fun b_next!24581 () Bool)

(assert (=> start!99012 (= b_free!24581 (not b_next!24581))))

(declare-fun tp!86455 () Bool)

(declare-fun b_and!40025 () Bool)

(assert (=> start!99012 (= tp!86455 b_and!40025)))

(declare-fun b!1161674 () Bool)

(declare-fun c!116036 () Bool)

(declare-fun lt!522871 () Bool)

(declare-fun extraKeys!923 () (_ BitVec 32))

(assert (=> b!1161674 (= c!116036 (and (not lt!522871) (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-datatypes ((Unit!38215 0))(
  ( (Unit!38216) )
))
(declare-fun e!660609 () Unit!38215)

(declare-fun e!660607 () Unit!38215)

(assert (=> b!1161674 (= e!660609 e!660607)))

(declare-datatypes ((V!43941 0))(
  ( (V!43942 (val!14612 Int)) )
))
(declare-fun zeroValue!944 () V!43941)

(declare-fun e!660618 () Bool)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-datatypes ((array!75012 0))(
  ( (array!75013 (arr!36153 (Array (_ BitVec 32) (_ BitVec 64))) (size!36690 (_ BitVec 32))) )
))
(declare-fun lt!522872 () array!75012)

(declare-fun defaultEntry!1004 () Int)

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun b!1161675 () Bool)

(declare-datatypes ((ValueCell!13846 0))(
  ( (ValueCellFull!13846 (v!17250 V!43941)) (EmptyCell!13846) )
))
(declare-datatypes ((array!75014 0))(
  ( (array!75015 (arr!36154 (Array (_ BitVec 32) ValueCell!13846)) (size!36691 (_ BitVec 32))) )
))
(declare-fun lt!522873 () array!75014)

(declare-fun minValue!944 () V!43941)

(declare-datatypes ((tuple2!18694 0))(
  ( (tuple2!18695 (_1!9357 (_ BitVec 64)) (_2!9357 V!43941)) )
))
(declare-datatypes ((List!25472 0))(
  ( (Nil!25469) (Cons!25468 (h!26677 tuple2!18694) (t!37052 List!25472)) )
))
(declare-datatypes ((ListLongMap!16675 0))(
  ( (ListLongMap!16676 (toList!8353 List!25472)) )
))
(declare-fun lt!522864 () ListLongMap!16675)

(declare-fun getCurrentListMapNoExtraKeys!4788 (array!75012 array!75014 (_ BitVec 32) (_ BitVec 32) V!43941 V!43941 (_ BitVec 32) Int) ListLongMap!16675)

(assert (=> b!1161675 (= e!660618 (= lt!522864 (getCurrentListMapNoExtraKeys!4788 lt!522872 lt!522873 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004)))))

(declare-fun b!1161676 () Bool)

(declare-fun e!660603 () Bool)

(declare-fun e!660606 () Bool)

(assert (=> b!1161676 (= e!660603 (not e!660606))))

(declare-fun res!770792 () Bool)

(assert (=> b!1161676 (=> res!770792 e!660606)))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1161676 (= res!770792 (bvsgt from!1455 i!673))))

(declare-fun _keys!1208 () array!75012)

(declare-fun k!934 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!75012 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1161676 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-fun lt!522870 () Unit!38215)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!75012 (_ BitVec 64) (_ BitVec 32)) Unit!38215)

(assert (=> b!1161676 (= lt!522870 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun b!1161677 () Bool)

(declare-fun e!660616 () Bool)

(declare-fun e!660608 () Bool)

(declare-fun mapRes!45491 () Bool)

(assert (=> b!1161677 (= e!660616 (and e!660608 mapRes!45491))))

(declare-fun condMapEmpty!45491 () Bool)

(declare-fun _values!996 () array!75014)

(declare-fun mapDefault!45491 () ValueCell!13846)

