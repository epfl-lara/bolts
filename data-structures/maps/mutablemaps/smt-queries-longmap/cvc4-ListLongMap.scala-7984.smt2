; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!98784 () Bool)

(assert start!98784)

(declare-fun b_free!24353 () Bool)

(declare-fun b_next!24353 () Bool)

(assert (=> start!98784 (= b_free!24353 (not b_next!24353))))

(declare-fun tp!85770 () Bool)

(declare-fun b_and!39569 () Bool)

(assert (=> start!98784 (= tp!85770 b_and!39569)))

(declare-fun b!1151186 () Bool)

(declare-fun res!765664 () Bool)

(declare-fun e!654797 () Bool)

(assert (=> b!1151186 (=> (not res!765664) (not e!654797))))

(declare-fun i!673 () (_ BitVec 32))

(declare-datatypes ((array!74570 0))(
  ( (array!74571 (arr!35932 (Array (_ BitVec 32) (_ BitVec 64))) (size!36469 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!74570)

(declare-fun k!934 () (_ BitVec 64))

(assert (=> b!1151186 (= res!765664 (= (select (arr!35932 _keys!1208) i!673) k!934))))

(declare-fun b!1151187 () Bool)

(declare-datatypes ((V!43637 0))(
  ( (V!43638 (val!14498 Int)) )
))
(declare-datatypes ((tuple2!18486 0))(
  ( (tuple2!18487 (_1!9253 (_ BitVec 64)) (_2!9253 V!43637)) )
))
(declare-datatypes ((List!25276 0))(
  ( (Nil!25273) (Cons!25272 (h!26481 tuple2!18486) (t!36628 List!25276)) )
))
(declare-datatypes ((ListLongMap!16467 0))(
  ( (ListLongMap!16468 (toList!8249 List!25276)) )
))
(declare-fun call!53781 () ListLongMap!16467)

(declare-fun call!53779 () ListLongMap!16467)

(declare-fun e!654804 () Bool)

(declare-fun -!1334 (ListLongMap!16467 (_ BitVec 64)) ListLongMap!16467)

(assert (=> b!1151187 (= e!654804 (= call!53779 (-!1334 call!53781 k!934)))))

(declare-fun b!1151188 () Bool)

(declare-fun e!654795 () Bool)

(declare-fun e!654788 () Bool)

(assert (=> b!1151188 (= e!654795 (not e!654788))))

(declare-fun res!765660 () Bool)

(assert (=> b!1151188 (=> res!765660 e!654788)))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> b!1151188 (= res!765660 (bvsgt from!1455 i!673))))

(declare-fun arrayContainsKey!0 (array!74570 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1151188 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!37785 0))(
  ( (Unit!37786) )
))
(declare-fun lt!515343 () Unit!37785)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!74570 (_ BitVec 64) (_ BitVec 32)) Unit!37785)

(assert (=> b!1151188 (= lt!515343 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun b!1151189 () Bool)

(declare-fun e!654803 () Bool)

(declare-fun e!654799 () Bool)

(declare-fun mapRes!45149 () Bool)

(assert (=> b!1151189 (= e!654803 (and e!654799 mapRes!45149))))

(declare-fun condMapEmpty!45149 () Bool)

(declare-datatypes ((ValueCell!13732 0))(
  ( (ValueCellFull!13732 (v!17136 V!43637)) (EmptyCell!13732) )
))
(declare-datatypes ((array!74572 0))(
  ( (array!74573 (arr!35933 (Array (_ BitVec 32) ValueCell!13732)) (size!36470 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!74572)

(declare-fun mapDefault!45149 () ValueCell!13732)

