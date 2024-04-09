; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!97646 () Bool)

(assert start!97646)

(declare-fun b!1115107 () Bool)

(declare-fun e!635514 () Bool)

(declare-fun tp_is_empty!27841 () Bool)

(assert (=> b!1115107 (= e!635514 tp_is_empty!27841)))

(declare-fun mapNonEmpty!43579 () Bool)

(declare-fun mapRes!43579 () Bool)

(declare-fun tp!82824 () Bool)

(assert (=> mapNonEmpty!43579 (= mapRes!43579 (and tp!82824 e!635514))))

(declare-datatypes ((V!42249 0))(
  ( (V!42250 (val!13977 Int)) )
))
(declare-datatypes ((ValueCell!13211 0))(
  ( (ValueCellFull!13211 (v!16611 V!42249)) (EmptyCell!13211) )
))
(declare-fun mapRest!43579 () (Array (_ BitVec 32) ValueCell!13211))

(declare-fun mapKey!43579 () (_ BitVec 32))

(declare-fun mapValue!43579 () ValueCell!13211)

(declare-datatypes ((array!72528 0))(
  ( (array!72529 (arr!34913 (Array (_ BitVec 32) ValueCell!13211)) (size!35450 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!72528)

(assert (=> mapNonEmpty!43579 (= (arr!34913 _values!996) (store mapRest!43579 mapKey!43579 mapValue!43579))))

(declare-fun b!1115108 () Bool)

(declare-fun e!635516 () Bool)

(declare-fun e!635517 () Bool)

(assert (=> b!1115108 (= e!635516 (and e!635517 mapRes!43579))))

(declare-fun condMapEmpty!43579 () Bool)

(declare-fun mapDefault!43579 () ValueCell!13211)

