; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!97826 () Bool)

(assert start!97826)

(declare-fun b_free!23491 () Bool)

(declare-fun b_next!23491 () Bool)

(assert (=> start!97826 (= b_free!23491 (not b_next!23491))))

(declare-fun tp!83178 () Bool)

(declare-fun b_and!37787 () Bool)

(assert (=> start!97826 (= tp!83178 b_and!37787)))

(declare-fun b!1118700 () Bool)

(declare-fun res!747276 () Bool)

(declare-fun e!637223 () Bool)

(assert (=> b!1118700 (=> (not res!747276) (not e!637223))))

(declare-fun i!673 () (_ BitVec 32))

(declare-datatypes ((array!72870 0))(
  ( (array!72871 (arr!35084 (Array (_ BitVec 32) (_ BitVec 64))) (size!35621 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!72870)

(assert (=> b!1118700 (= res!747276 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!35621 _keys!1208))))))

(declare-fun b!1118701 () Bool)

(declare-fun e!637221 () Bool)

(declare-fun e!637217 () Bool)

(declare-fun mapRes!43849 () Bool)

(assert (=> b!1118701 (= e!637221 (and e!637217 mapRes!43849))))

(declare-fun condMapEmpty!43849 () Bool)

(declare-datatypes ((V!42489 0))(
  ( (V!42490 (val!14067 Int)) )
))
(declare-datatypes ((ValueCell!13301 0))(
  ( (ValueCellFull!13301 (v!16701 V!42489)) (EmptyCell!13301) )
))
(declare-datatypes ((array!72872 0))(
  ( (array!72873 (arr!35085 (Array (_ BitVec 32) ValueCell!13301)) (size!35622 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!72872)

(declare-fun mapDefault!43849 () ValueCell!13301)

