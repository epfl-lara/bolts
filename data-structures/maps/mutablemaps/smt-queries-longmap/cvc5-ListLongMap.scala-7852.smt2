; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!97892 () Bool)

(assert start!97892)

(declare-fun b_free!23557 () Bool)

(declare-fun b_next!23557 () Bool)

(assert (=> start!97892 (= b_free!23557 (not b_next!23557))))

(declare-fun tp!83375 () Bool)

(declare-fun b_and!37919 () Bool)

(assert (=> start!97892 (= tp!83375 b_and!37919)))

(declare-fun b!1120152 () Bool)

(declare-fun res!748371 () Bool)

(declare-fun e!637911 () Bool)

(assert (=> b!1120152 (=> (not res!748371) (not e!637911))))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1120152 (= res!748371 (validMask!0 mask!1564))))

(declare-fun b!1120153 () Bool)

(declare-fun e!637913 () Bool)

(declare-fun e!637910 () Bool)

(assert (=> b!1120153 (= e!637913 (not e!637910))))

(declare-fun res!748368 () Bool)

(assert (=> b!1120153 (=> res!748368 e!637910)))

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1120153 (= res!748368 (bvsgt from!1455 i!673))))

(declare-datatypes ((array!73000 0))(
  ( (array!73001 (arr!35149 (Array (_ BitVec 32) (_ BitVec 64))) (size!35686 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!73000)

(declare-fun k!934 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!73000 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1120153 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!36675 0))(
  ( (Unit!36676) )
))
(declare-fun lt!497932 () Unit!36675)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!73000 (_ BitVec 64) (_ BitVec 32)) Unit!36675)

(assert (=> b!1120153 (= lt!497932 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun b!1120154 () Bool)

(declare-fun res!748374 () Bool)

(assert (=> b!1120154 (=> (not res!748374) (not e!637913))))

(declare-fun lt!497934 () array!73000)

(declare-datatypes ((List!24584 0))(
  ( (Nil!24581) (Cons!24580 (h!25789 (_ BitVec 64)) (t!35140 List!24584)) )
))
(declare-fun arrayNoDuplicates!0 (array!73000 (_ BitVec 32) List!24584) Bool)

(assert (=> b!1120154 (= res!748374 (arrayNoDuplicates!0 lt!497934 #b00000000000000000000000000000000 Nil!24581))))

(declare-fun b!1120155 () Bool)

(declare-fun e!637914 () Bool)

(declare-fun e!637916 () Bool)

(declare-fun mapRes!43948 () Bool)

(assert (=> b!1120155 (= e!637914 (and e!637916 mapRes!43948))))

(declare-fun condMapEmpty!43948 () Bool)

(declare-datatypes ((V!42577 0))(
  ( (V!42578 (val!14100 Int)) )
))
(declare-datatypes ((ValueCell!13334 0))(
  ( (ValueCellFull!13334 (v!16734 V!42577)) (EmptyCell!13334) )
))
(declare-datatypes ((array!73002 0))(
  ( (array!73003 (arr!35150 (Array (_ BitVec 32) ValueCell!13334)) (size!35687 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!73002)

(declare-fun mapDefault!43948 () ValueCell!13334)

