; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!101408 () Bool)

(assert start!101408)

(declare-fun b_free!26243 () Bool)

(declare-fun b_next!26243 () Bool)

(assert (=> start!101408 (= b_free!26243 (not b_next!26243))))

(declare-fun tp!91757 () Bool)

(declare-fun b_and!43649 () Bool)

(assert (=> start!101408 (= tp!91757 b_and!43649)))

(declare-fun b!1218035 () Bool)

(declare-fun e!691578 () Bool)

(declare-fun tp_is_empty!30947 () Bool)

(assert (=> b!1218035 (= e!691578 tp_is_empty!30947)))

(declare-fun b!1218036 () Bool)

(declare-fun e!691580 () Bool)

(declare-fun e!691575 () Bool)

(assert (=> b!1218036 (= e!691580 e!691575)))

(declare-fun res!809009 () Bool)

(assert (=> b!1218036 (=> res!809009 e!691575)))

(declare-datatypes ((array!78644 0))(
  ( (array!78645 (arr!37951 (Array (_ BitVec 32) (_ BitVec 64))) (size!38488 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!78644)

(declare-fun k!934 () (_ BitVec 64))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> b!1218036 (= res!809009 (not (= (select (arr!37951 _keys!1208) from!1455) k!934)))))

(declare-fun b!1218037 () Bool)

(declare-fun e!691581 () Bool)

(declare-fun e!691573 () Bool)

(assert (=> b!1218037 (= e!691581 e!691573)))

(declare-fun res!809004 () Bool)

(assert (=> b!1218037 (=> (not res!809004) (not e!691573))))

(declare-fun lt!553652 () array!78644)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!78644 (_ BitVec 32)) Bool)

(assert (=> b!1218037 (= res!809004 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!553652 mask!1564))))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1218037 (= lt!553652 (array!78645 (store (arr!37951 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!38488 _keys!1208)))))

(declare-fun b!1218038 () Bool)

(declare-fun arrayContainsKey!0 (array!78644 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1218038 (= e!691575 (arrayContainsKey!0 _keys!1208 k!934 i!673))))

(declare-fun b!1218039 () Bool)

(declare-fun res!809003 () Bool)

(assert (=> b!1218039 (=> (not res!809003) (not e!691581))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1218039 (= res!809003 (validKeyInArray!0 k!934))))

(declare-fun b!1218040 () Bool)

(declare-fun res!809017 () Bool)

(assert (=> b!1218040 (=> (not res!809017) (not e!691581))))

(assert (=> b!1218040 (= res!809017 (= (select (arr!37951 _keys!1208) i!673) k!934))))

(declare-fun b!1218041 () Bool)

(declare-fun e!691582 () Bool)

(declare-fun mapRes!48301 () Bool)

(assert (=> b!1218041 (= e!691582 (and e!691578 mapRes!48301))))

(declare-fun condMapEmpty!48301 () Bool)

(declare-datatypes ((V!46389 0))(
  ( (V!46390 (val!15530 Int)) )
))
(declare-datatypes ((ValueCell!14764 0))(
  ( (ValueCellFull!14764 (v!18186 V!46389)) (EmptyCell!14764) )
))
(declare-datatypes ((array!78646 0))(
  ( (array!78647 (arr!37952 (Array (_ BitVec 32) ValueCell!14764)) (size!38489 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!78646)

(declare-fun mapDefault!48301 () ValueCell!14764)

