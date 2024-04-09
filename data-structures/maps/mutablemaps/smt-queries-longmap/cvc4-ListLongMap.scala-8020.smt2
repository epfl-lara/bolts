; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!99000 () Bool)

(assert start!99000)

(declare-fun b_free!24569 () Bool)

(declare-fun b_next!24569 () Bool)

(assert (=> start!99000 (= b_free!24569 (not b_next!24569))))

(declare-fun tp!86419 () Bool)

(declare-fun b_and!40001 () Bool)

(assert (=> start!99000 (= tp!86419 b_and!40001)))

(declare-fun b!1161122 () Bool)

(declare-fun e!660300 () Bool)

(declare-fun e!660299 () Bool)

(assert (=> b!1161122 (= e!660300 (not e!660299))))

(declare-fun res!770517 () Bool)

(assert (=> b!1161122 (=> res!770517 e!660299)))

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1161122 (= res!770517 (bvsgt from!1455 i!673))))

(declare-datatypes ((array!74988 0))(
  ( (array!74989 (arr!36141 (Array (_ BitVec 32) (_ BitVec 64))) (size!36678 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!74988)

(declare-fun k!934 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!74988 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1161122 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!38193 0))(
  ( (Unit!38194) )
))
(declare-fun lt!522472 () Unit!38193)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!74988 (_ BitVec 64) (_ BitVec 32)) Unit!38193)

(assert (=> b!1161122 (= lt!522472 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun b!1161123 () Bool)

(declare-fun res!770523 () Bool)

(declare-fun e!660303 () Bool)

(assert (=> b!1161123 (=> (not res!770523) (not e!660303))))

(declare-datatypes ((List!25460 0))(
  ( (Nil!25457) (Cons!25456 (h!26665 (_ BitVec 64)) (t!37028 List!25460)) )
))
(declare-fun arrayNoDuplicates!0 (array!74988 (_ BitVec 32) List!25460) Bool)

(assert (=> b!1161123 (= res!770523 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!25457))))

(declare-fun b!1161124 () Bool)

(declare-fun res!770522 () Bool)

(assert (=> b!1161124 (=> (not res!770522) (not e!660303))))

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-datatypes ((V!43925 0))(
  ( (V!43926 (val!14606 Int)) )
))
(declare-datatypes ((ValueCell!13840 0))(
  ( (ValueCellFull!13840 (v!17244 V!43925)) (EmptyCell!13840) )
))
(declare-datatypes ((array!74990 0))(
  ( (array!74991 (arr!36142 (Array (_ BitVec 32) ValueCell!13840)) (size!36679 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!74990)

(assert (=> b!1161124 (= res!770522 (and (= (size!36679 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!36678 _keys!1208) (size!36679 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1161125 () Bool)

(declare-datatypes ((tuple2!18682 0))(
  ( (tuple2!18683 (_1!9351 (_ BitVec 64)) (_2!9351 V!43925)) )
))
(declare-datatypes ((List!25461 0))(
  ( (Nil!25458) (Cons!25457 (h!26666 tuple2!18682) (t!37029 List!25461)) )
))
(declare-datatypes ((ListLongMap!16663 0))(
  ( (ListLongMap!16664 (toList!8347 List!25461)) )
))
(declare-fun lt!522477 () ListLongMap!16663)

(declare-fun minValue!944 () V!43925)

(declare-fun contains!6828 (ListLongMap!16663 (_ BitVec 64)) Bool)

(declare-fun +!3672 (ListLongMap!16663 tuple2!18682) ListLongMap!16663)

(assert (=> b!1161125 (contains!6828 (+!3672 lt!522477 (tuple2!18683 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944)) k!934)))

(declare-fun lt!522466 () Unit!38193)

(declare-fun addStillContains!969 (ListLongMap!16663 (_ BitVec 64) V!43925 (_ BitVec 64)) Unit!38193)

(assert (=> b!1161125 (= lt!522466 (addStillContains!969 lt!522477 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944 k!934))))

(declare-fun call!56376 () Bool)

(assert (=> b!1161125 call!56376))

(declare-fun call!56370 () ListLongMap!16663)

(assert (=> b!1161125 (= lt!522477 call!56370)))

(declare-fun lt!522471 () Unit!38193)

(declare-fun call!56369 () Unit!38193)

(assert (=> b!1161125 (= lt!522471 call!56369)))

(declare-fun e!660308 () Unit!38193)

(assert (=> b!1161125 (= e!660308 lt!522466)))

(declare-fun b!1161126 () Bool)

(declare-fun e!660302 () Unit!38193)

(declare-fun Unit!38195 () Unit!38193)

(assert (=> b!1161126 (= e!660302 Unit!38195)))

(declare-fun e!660305 () Bool)

(declare-fun b!1161128 () Bool)

(assert (=> b!1161128 (= e!660305 (arrayContainsKey!0 _keys!1208 k!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun b!1161129 () Bool)

(declare-fun e!660306 () Bool)

(declare-fun e!660297 () Bool)

(declare-fun mapRes!45473 () Bool)

(assert (=> b!1161129 (= e!660306 (and e!660297 mapRes!45473))))

(declare-fun condMapEmpty!45473 () Bool)

(declare-fun mapDefault!45473 () ValueCell!13840)

