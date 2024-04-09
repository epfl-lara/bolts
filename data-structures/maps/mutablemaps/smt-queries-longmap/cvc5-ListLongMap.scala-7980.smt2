; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!98756 () Bool)

(assert start!98756)

(declare-fun b_free!24325 () Bool)

(declare-fun b_next!24325 () Bool)

(assert (=> start!98756 (= b_free!24325 (not b_next!24325))))

(declare-fun tp!85686 () Bool)

(declare-fun b_and!39513 () Bool)

(assert (=> start!98756 (= tp!85686 b_and!39513)))

(declare-datatypes ((array!74514 0))(
  ( (array!74515 (arr!35904 (Array (_ BitVec 32) (_ BitVec 64))) (size!36441 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!74514)

(declare-fun e!654077 () Bool)

(declare-fun k!934 () (_ BitVec 64))

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun b!1149898 () Bool)

(declare-fun arrayContainsKey!0 (array!74514 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1149898 (= e!654077 (arrayContainsKey!0 _keys!1208 k!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun b!1149899 () Bool)

(declare-fun e!654074 () Bool)

(declare-fun e!654087 () Bool)

(assert (=> b!1149899 (= e!654074 (not e!654087))))

(declare-fun res!765034 () Bool)

(assert (=> b!1149899 (=> res!765034 e!654087)))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1149899 (= res!765034 (bvsgt from!1455 i!673))))

(assert (=> b!1149899 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!37730 0))(
  ( (Unit!37731) )
))
(declare-fun lt!514425 () Unit!37730)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!74514 (_ BitVec 64) (_ BitVec 32)) Unit!37730)

(assert (=> b!1149899 (= lt!514425 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun b!1149900 () Bool)

(declare-fun e!654086 () Bool)

(declare-fun e!654085 () Bool)

(declare-fun mapRes!45107 () Bool)

(assert (=> b!1149900 (= e!654086 (and e!654085 mapRes!45107))))

(declare-fun condMapEmpty!45107 () Bool)

(declare-datatypes ((V!43601 0))(
  ( (V!43602 (val!14484 Int)) )
))
(declare-datatypes ((ValueCell!13718 0))(
  ( (ValueCellFull!13718 (v!17122 V!43601)) (EmptyCell!13718) )
))
(declare-datatypes ((array!74516 0))(
  ( (array!74517 (arr!35905 (Array (_ BitVec 32) ValueCell!13718)) (size!36442 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!74516)

(declare-fun mapDefault!45107 () ValueCell!13718)

