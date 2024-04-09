; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!97802 () Bool)

(assert start!97802)

(declare-fun b_free!23467 () Bool)

(declare-fun b_next!23467 () Bool)

(assert (=> start!97802 (= b_free!23467 (not b_next!23467))))

(declare-fun tp!83106 () Bool)

(declare-fun b_and!37763 () Bool)

(assert (=> start!97802 (= tp!83106 b_and!37763)))

(declare-fun b!1118196 () Bool)

(declare-fun res!746882 () Bool)

(declare-fun e!636967 () Bool)

(assert (=> b!1118196 (=> (not res!746882) (not e!636967))))

(declare-datatypes ((array!72824 0))(
  ( (array!72825 (arr!35061 (Array (_ BitVec 32) (_ BitVec 64))) (size!35598 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!72824)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-datatypes ((V!42457 0))(
  ( (V!42458 (val!14055 Int)) )
))
(declare-datatypes ((ValueCell!13289 0))(
  ( (ValueCellFull!13289 (v!16689 V!42457)) (EmptyCell!13289) )
))
(declare-datatypes ((array!72826 0))(
  ( (array!72827 (arr!35062 (Array (_ BitVec 32) ValueCell!13289)) (size!35599 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!72826)

(assert (=> b!1118196 (= res!746882 (and (= (size!35599 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!35598 _keys!1208) (size!35599 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1118197 () Bool)

(declare-fun res!746881 () Bool)

(assert (=> b!1118197 (=> (not res!746881) (not e!636967))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!72824 (_ BitVec 32)) Bool)

(assert (=> b!1118197 (= res!746881 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1118198 () Bool)

(declare-fun res!746884 () Bool)

(declare-fun e!636965 () Bool)

(assert (=> b!1118198 (=> (not res!746884) (not e!636965))))

(declare-fun lt!497427 () array!72824)

(declare-datatypes ((List!24518 0))(
  ( (Nil!24515) (Cons!24514 (h!25723 (_ BitVec 64)) (t!35006 List!24518)) )
))
(declare-fun arrayNoDuplicates!0 (array!72824 (_ BitVec 32) List!24518) Bool)

(assert (=> b!1118198 (= res!746884 (arrayNoDuplicates!0 lt!497427 #b00000000000000000000000000000000 Nil!24515))))

(declare-fun mapNonEmpty!43813 () Bool)

(declare-fun mapRes!43813 () Bool)

(declare-fun tp!83105 () Bool)

(declare-fun e!636968 () Bool)

(assert (=> mapNonEmpty!43813 (= mapRes!43813 (and tp!83105 e!636968))))

(declare-fun mapValue!43813 () ValueCell!13289)

(declare-fun mapRest!43813 () (Array (_ BitVec 32) ValueCell!13289))

(declare-fun mapKey!43813 () (_ BitVec 32))

(assert (=> mapNonEmpty!43813 (= (arr!35062 _values!996) (store mapRest!43813 mapKey!43813 mapValue!43813))))

(declare-fun b!1118199 () Bool)

(declare-fun e!636970 () Bool)

(declare-fun e!636966 () Bool)

(assert (=> b!1118199 (= e!636970 (and e!636966 mapRes!43813))))

(declare-fun condMapEmpty!43813 () Bool)

(declare-fun mapDefault!43813 () ValueCell!13289)

