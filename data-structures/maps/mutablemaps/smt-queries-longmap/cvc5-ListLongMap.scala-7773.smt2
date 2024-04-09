; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!97418 () Bool)

(assert start!97418)

(declare-fun b_free!23353 () Bool)

(declare-fun b_next!23353 () Bool)

(assert (=> start!97418 (= b_free!23353 (not b_next!23353))))

(declare-fun tp!82358 () Bool)

(declare-fun b_and!37563 () Bool)

(assert (=> start!97418 (= tp!82358 b_and!37563)))

(declare-fun mapIsEmpty!43237 () Bool)

(declare-fun mapRes!43237 () Bool)

(assert (=> mapIsEmpty!43237 mapRes!43237))

(declare-fun b!1110194 () Bool)

(declare-fun res!740957 () Bool)

(declare-fun e!633215 () Bool)

(assert (=> b!1110194 (=> (not res!740957) (not e!633215))))

(declare-datatypes ((array!72092 0))(
  ( (array!72093 (arr!34695 (Array (_ BitVec 32) (_ BitVec 64))) (size!35232 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!72092)

(declare-fun i!673 () (_ BitVec 32))

(declare-fun k!934 () (_ BitVec 64))

(assert (=> b!1110194 (= res!740957 (= (select (arr!34695 _keys!1208) i!673) k!934))))

(declare-fun b!1110195 () Bool)

(declare-fun e!633213 () Bool)

(declare-fun e!633212 () Bool)

(assert (=> b!1110195 (= e!633213 (and e!633212 mapRes!43237))))

(declare-fun condMapEmpty!43237 () Bool)

(declare-datatypes ((V!41945 0))(
  ( (V!41946 (val!13863 Int)) )
))
(declare-datatypes ((ValueCell!13097 0))(
  ( (ValueCellFull!13097 (v!16497 V!41945)) (EmptyCell!13097) )
))
(declare-datatypes ((array!72094 0))(
  ( (array!72095 (arr!34696 (Array (_ BitVec 32) ValueCell!13097)) (size!35233 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!72094)

(declare-fun mapDefault!43237 () ValueCell!13097)

