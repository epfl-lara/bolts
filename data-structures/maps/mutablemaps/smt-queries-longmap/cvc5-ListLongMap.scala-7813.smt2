; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!97658 () Bool)

(assert start!97658)

(declare-fun b!1115341 () Bool)

(declare-fun res!744680 () Bool)

(declare-fun e!635627 () Bool)

(assert (=> b!1115341 (=> (not res!744680) (not e!635627))))

(declare-datatypes ((array!72548 0))(
  ( (array!72549 (arr!34923 (Array (_ BitVec 32) (_ BitVec 64))) (size!35460 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!72548)

(declare-datatypes ((List!24453 0))(
  ( (Nil!24450) (Cons!24449 (h!25658 (_ BitVec 64)) (t!34941 List!24453)) )
))
(declare-fun arrayNoDuplicates!0 (array!72548 (_ BitVec 32) List!24453) Bool)

(assert (=> b!1115341 (= res!744680 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!24450))))

(declare-fun mapNonEmpty!43597 () Bool)

(declare-fun mapRes!43597 () Bool)

(declare-fun tp!82842 () Bool)

(declare-fun e!635626 () Bool)

(assert (=> mapNonEmpty!43597 (= mapRes!43597 (and tp!82842 e!635626))))

(declare-fun mapKey!43597 () (_ BitVec 32))

(declare-datatypes ((V!42265 0))(
  ( (V!42266 (val!13983 Int)) )
))
(declare-datatypes ((ValueCell!13217 0))(
  ( (ValueCellFull!13217 (v!16617 V!42265)) (EmptyCell!13217) )
))
(declare-datatypes ((array!72550 0))(
  ( (array!72551 (arr!34924 (Array (_ BitVec 32) ValueCell!13217)) (size!35461 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!72550)

(declare-fun mapRest!43597 () (Array (_ BitVec 32) ValueCell!13217))

(declare-fun mapValue!43597 () ValueCell!13217)

(assert (=> mapNonEmpty!43597 (= (arr!34924 _values!996) (store mapRest!43597 mapKey!43597 mapValue!43597))))

(declare-fun b!1115342 () Bool)

(declare-fun res!744675 () Bool)

(assert (=> b!1115342 (=> (not res!744675) (not e!635627))))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1115342 (= res!744675 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!35460 _keys!1208))))))

(declare-fun b!1115343 () Bool)

(declare-fun tp_is_empty!27853 () Bool)

(assert (=> b!1115343 (= e!635626 tp_is_empty!27853)))

(declare-fun b!1115344 () Bool)

(declare-fun e!635625 () Bool)

(declare-fun e!635623 () Bool)

(assert (=> b!1115344 (= e!635625 (and e!635623 mapRes!43597))))

(declare-fun condMapEmpty!43597 () Bool)

(declare-fun mapDefault!43597 () ValueCell!13217)

