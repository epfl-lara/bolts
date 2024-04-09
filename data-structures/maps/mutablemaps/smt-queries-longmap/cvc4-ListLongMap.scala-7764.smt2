; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!97368 () Bool)

(assert start!97368)

(declare-fun b_free!23303 () Bool)

(declare-fun b_next!23303 () Bool)

(assert (=> start!97368 (= b_free!23303 (not b_next!23303))))

(declare-fun tp!82209 () Bool)

(declare-fun b_and!37459 () Bool)

(assert (=> start!97368 (= tp!82209 b_and!37459)))

(declare-fun mapIsEmpty!43162 () Bool)

(declare-fun mapRes!43162 () Bool)

(assert (=> mapIsEmpty!43162 mapRes!43162))

(declare-fun b!1108919 () Bool)

(declare-fun res!740123 () Bool)

(declare-fun e!632598 () Bool)

(assert (=> b!1108919 (=> (not res!740123) (not e!632598))))

(declare-datatypes ((array!71994 0))(
  ( (array!71995 (arr!34646 (Array (_ BitVec 32) (_ BitVec 64))) (size!35183 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!71994)

(declare-fun i!673 () (_ BitVec 32))

(declare-fun k!934 () (_ BitVec 64))

(assert (=> b!1108919 (= res!740123 (= (select (arr!34646 _keys!1208) i!673) k!934))))

(declare-fun b!1108920 () Bool)

(declare-fun res!740131 () Bool)

(assert (=> b!1108920 (=> (not res!740131) (not e!632598))))

(declare-datatypes ((List!24296 0))(
  ( (Nil!24293) (Cons!24292 (h!25501 (_ BitVec 64)) (t!34652 List!24296)) )
))
(declare-fun arrayNoDuplicates!0 (array!71994 (_ BitVec 32) List!24296) Bool)

(assert (=> b!1108920 (= res!740131 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!24293))))

(declare-fun b!1108921 () Bool)

(declare-fun e!632597 () Bool)

(declare-fun e!632599 () Bool)

(assert (=> b!1108921 (= e!632597 (and e!632599 mapRes!43162))))

(declare-fun condMapEmpty!43162 () Bool)

(declare-datatypes ((V!41877 0))(
  ( (V!41878 (val!13838 Int)) )
))
(declare-datatypes ((ValueCell!13072 0))(
  ( (ValueCellFull!13072 (v!16472 V!41877)) (EmptyCell!13072) )
))
(declare-datatypes ((array!71996 0))(
  ( (array!71997 (arr!34647 (Array (_ BitVec 32) ValueCell!13072)) (size!35184 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!71996)

(declare-fun mapDefault!43162 () ValueCell!13072)

