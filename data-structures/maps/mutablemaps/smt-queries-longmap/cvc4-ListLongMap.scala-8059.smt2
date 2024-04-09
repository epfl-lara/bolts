; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!99234 () Bool)

(assert start!99234)

(declare-fun b_free!24803 () Bool)

(declare-fun b_next!24803 () Bool)

(assert (=> start!99234 (= b_free!24803 (not b_next!24803))))

(declare-fun tp!87121 () Bool)

(declare-fun b_and!40469 () Bool)

(assert (=> start!99234 (= tp!87121 b_and!40469)))

(declare-fun b!1167860 () Bool)

(declare-fun res!774875 () Bool)

(declare-fun e!663799 () Bool)

(assert (=> b!1167860 (=> (not res!774875) (not e!663799))))

(declare-datatypes ((array!75444 0))(
  ( (array!75445 (arr!36369 (Array (_ BitVec 32) (_ BitVec 64))) (size!36906 (_ BitVec 32))) )
))
(declare-fun lt!525766 () array!75444)

(declare-datatypes ((List!25645 0))(
  ( (Nil!25642) (Cons!25641 (h!26850 (_ BitVec 64)) (t!37447 List!25645)) )
))
(declare-fun arrayNoDuplicates!0 (array!75444 (_ BitVec 32) List!25645) Bool)

(assert (=> b!1167860 (= res!774875 (arrayNoDuplicates!0 lt!525766 #b00000000000000000000000000000000 Nil!25642))))

(declare-fun b!1167861 () Bool)

(declare-fun e!663804 () Bool)

(declare-fun e!663798 () Bool)

(declare-fun mapRes!45824 () Bool)

(assert (=> b!1167861 (= e!663804 (and e!663798 mapRes!45824))))

(declare-fun condMapEmpty!45824 () Bool)

(declare-datatypes ((V!44237 0))(
  ( (V!44238 (val!14723 Int)) )
))
(declare-datatypes ((ValueCell!13957 0))(
  ( (ValueCellFull!13957 (v!17361 V!44237)) (EmptyCell!13957) )
))
(declare-datatypes ((array!75446 0))(
  ( (array!75447 (arr!36370 (Array (_ BitVec 32) ValueCell!13957)) (size!36907 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!75446)

(declare-fun mapDefault!45824 () ValueCell!13957)

