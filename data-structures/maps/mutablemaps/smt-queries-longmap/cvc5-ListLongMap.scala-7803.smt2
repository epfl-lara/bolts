; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!97598 () Bool)

(assert start!97598)

(declare-fun mapNonEmpty!43507 () Bool)

(declare-fun mapRes!43507 () Bool)

(declare-fun tp!82752 () Bool)

(declare-fun e!635085 () Bool)

(assert (=> mapNonEmpty!43507 (= mapRes!43507 (and tp!82752 e!635085))))

(declare-datatypes ((V!42185 0))(
  ( (V!42186 (val!13953 Int)) )
))
(declare-datatypes ((ValueCell!13187 0))(
  ( (ValueCellFull!13187 (v!16587 V!42185)) (EmptyCell!13187) )
))
(declare-fun mapValue!43507 () ValueCell!13187)

(declare-fun mapRest!43507 () (Array (_ BitVec 32) ValueCell!13187))

(declare-fun mapKey!43507 () (_ BitVec 32))

(declare-datatypes ((array!72434 0))(
  ( (array!72435 (arr!34866 (Array (_ BitVec 32) ValueCell!13187)) (size!35403 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!72434)

(assert (=> mapNonEmpty!43507 (= (arr!34866 _values!996) (store mapRest!43507 mapKey!43507 mapValue!43507))))

(declare-fun mapIsEmpty!43507 () Bool)

(assert (=> mapIsEmpty!43507 mapRes!43507))

(declare-fun res!743781 () Bool)

(declare-fun e!635086 () Bool)

(assert (=> start!97598 (=> (not res!743781) (not e!635086))))

(declare-fun from!1455 () (_ BitVec 32))

(declare-datatypes ((array!72436 0))(
  ( (array!72437 (arr!34867 (Array (_ BitVec 32) (_ BitVec 64))) (size!35404 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!72436)

(assert (=> start!97598 (= res!743781 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!35404 _keys!1208))))))

(assert (=> start!97598 e!635086))

(declare-fun array_inv!26672 (array!72436) Bool)

(assert (=> start!97598 (array_inv!26672 _keys!1208)))

(assert (=> start!97598 true))

(declare-fun e!635084 () Bool)

(declare-fun array_inv!26673 (array!72434) Bool)

(assert (=> start!97598 (and (array_inv!26673 _values!996) e!635084)))

(declare-fun b!1114171 () Bool)

(declare-fun res!743774 () Bool)

(assert (=> b!1114171 (=> (not res!743774) (not e!635086))))

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(assert (=> b!1114171 (= res!743774 (and (= (size!35403 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!35404 _keys!1208) (size!35403 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1114172 () Bool)

(declare-fun e!635082 () Bool)

(declare-fun tp_is_empty!27793 () Bool)

(assert (=> b!1114172 (= e!635082 tp_is_empty!27793)))

(declare-fun b!1114173 () Bool)

(assert (=> b!1114173 (= e!635084 (and e!635082 mapRes!43507))))

(declare-fun condMapEmpty!43507 () Bool)

(declare-fun mapDefault!43507 () ValueCell!13187)

