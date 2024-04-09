; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!98192 () Bool)

(assert start!98192)

(declare-fun b_free!23857 () Bool)

(declare-fun b_next!23857 () Bool)

(assert (=> start!98192 (= b_free!23857 (not b_next!23857))))

(declare-fun tp!84275 () Bool)

(declare-fun b_and!38519 () Bool)

(assert (=> start!98192 (= tp!84275 b_and!38519)))

(declare-fun b!1128571 () Bool)

(declare-fun res!754283 () Bool)

(declare-fun e!642346 () Bool)

(assert (=> b!1128571 (=> (not res!754283) (not e!642346))))

(declare-fun k!934 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1128571 (= res!754283 (validKeyInArray!0 k!934))))

(declare-datatypes ((V!42977 0))(
  ( (V!42978 (val!14250 Int)) )
))
(declare-datatypes ((tuple2!18024 0))(
  ( (tuple2!18025 (_1!9022 (_ BitVec 64)) (_2!9022 V!42977)) )
))
(declare-datatypes ((List!24845 0))(
  ( (Nil!24842) (Cons!24841 (h!26050 tuple2!18024) (t!35701 List!24845)) )
))
(declare-datatypes ((ListLongMap!16005 0))(
  ( (ListLongMap!16006 (toList!8018 List!24845)) )
))
(declare-fun call!47855 () ListLongMap!16005)

(declare-fun e!642344 () Bool)

(declare-fun b!1128572 () Bool)

(declare-fun call!47854 () ListLongMap!16005)

(declare-fun -!1153 (ListLongMap!16005 (_ BitVec 64)) ListLongMap!16005)

(assert (=> b!1128572 (= e!642344 (= call!47855 (-!1153 call!47854 k!934)))))

(declare-fun b!1128573 () Bool)

(declare-fun e!642349 () Bool)

(declare-fun e!642352 () Bool)

(declare-fun mapRes!44398 () Bool)

(assert (=> b!1128573 (= e!642349 (and e!642352 mapRes!44398))))

(declare-fun condMapEmpty!44398 () Bool)

(declare-datatypes ((ValueCell!13484 0))(
  ( (ValueCellFull!13484 (v!16884 V!42977)) (EmptyCell!13484) )
))
(declare-datatypes ((array!73594 0))(
  ( (array!73595 (arr!35446 (Array (_ BitVec 32) ValueCell!13484)) (size!35983 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!73594)

(declare-fun mapDefault!44398 () ValueCell!13484)

