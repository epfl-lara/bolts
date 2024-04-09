; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!98868 () Bool)

(assert start!98868)

(declare-fun b_free!24437 () Bool)

(declare-fun b_next!24437 () Bool)

(assert (=> start!98868 (= b_free!24437 (not b_next!24437))))

(declare-fun tp!86023 () Bool)

(declare-fun b_and!39737 () Bool)

(assert (=> start!98868 (= tp!86023 b_and!39737)))

(declare-fun b!1155050 () Bool)

(declare-datatypes ((Unit!37931 0))(
  ( (Unit!37932) )
))
(declare-fun e!656941 () Unit!37931)

(declare-fun Unit!37933 () Unit!37931)

(assert (=> b!1155050 (= e!656941 Unit!37933)))

(declare-fun lt!518111 () Bool)

(declare-fun extraKeys!923 () (_ BitVec 32))

(assert (=> b!1155050 (= lt!518111 (= (bvand extraKeys!923 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(declare-fun c!114742 () Bool)

(assert (=> b!1155050 (= c!114742 (and (not lt!518111) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun lt!518120 () Unit!37931)

(declare-fun e!656942 () Unit!37931)

(assert (=> b!1155050 (= lt!518120 e!656942)))

(declare-datatypes ((V!43749 0))(
  ( (V!43750 (val!14540 Int)) )
))
(declare-fun zeroValue!944 () V!43749)

(declare-datatypes ((array!74730 0))(
  ( (array!74731 (arr!36012 (Array (_ BitVec 32) (_ BitVec 64))) (size!36549 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!74730)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun k!934 () (_ BitVec 64))

(declare-fun from!1455 () (_ BitVec 32))

(declare-datatypes ((ValueCell!13774 0))(
  ( (ValueCellFull!13774 (v!17178 V!43749)) (EmptyCell!13774) )
))
(declare-datatypes ((array!74732 0))(
  ( (array!74733 (arr!36013 (Array (_ BitVec 32) ValueCell!13774)) (size!36550 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!74732)

(declare-fun minValue!944 () V!43749)

(declare-fun lt!518106 () Unit!37931)

(declare-fun defaultEntry!1004 () Int)

(declare-fun lemmaListMapContainsThenArrayContainsFrom!494 (array!74730 array!74732 (_ BitVec 32) (_ BitVec 32) V!43749 V!43749 (_ BitVec 64) (_ BitVec 32) Int) Unit!37931)

(assert (=> b!1155050 (= lt!518106 (lemmaListMapContainsThenArrayContainsFrom!494 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun c!114739 () Bool)

(assert (=> b!1155050 (= c!114739 (and (not (= k!934 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!934 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun res!767548 () Bool)

(declare-fun e!656945 () Bool)

(assert (=> b!1155050 (= res!767548 e!656945)))

(declare-fun e!656935 () Bool)

(assert (=> b!1155050 (=> (not res!767548) (not e!656935))))

(assert (=> b!1155050 e!656935))

(declare-fun lt!518119 () Unit!37931)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!74730 (_ BitVec 32) (_ BitVec 32)) Unit!37931)

(assert (=> b!1155050 (= lt!518119 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1208 #b00000000000000000000000000000000 from!1455))))

(declare-datatypes ((List!25343 0))(
  ( (Nil!25340) (Cons!25339 (h!26548 (_ BitVec 64)) (t!36779 List!25343)) )
))
(declare-fun arrayNoDuplicates!0 (array!74730 (_ BitVec 32) List!25343) Bool)

(assert (=> b!1155050 (arrayNoDuplicates!0 _keys!1208 from!1455 Nil!25340)))

(declare-fun lt!518117 () Unit!37931)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!74730 (_ BitVec 64) (_ BitVec 32) List!25343) Unit!37931)

(assert (=> b!1155050 (= lt!518117 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!1208 k!934 from!1455 Nil!25340))))

(assert (=> b!1155050 false))

(declare-fun b!1155051 () Bool)

(declare-fun e!656946 () Bool)

(declare-fun e!656932 () Bool)

(declare-fun mapRes!45275 () Bool)

(assert (=> b!1155051 (= e!656946 (and e!656932 mapRes!45275))))

(declare-fun condMapEmpty!45275 () Bool)

(declare-fun mapDefault!45275 () ValueCell!13774)

