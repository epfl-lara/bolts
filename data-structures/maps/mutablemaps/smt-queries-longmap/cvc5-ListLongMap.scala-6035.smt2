; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!78138 () Bool)

(assert start!78138)

(declare-fun b_free!16621 () Bool)

(declare-fun b_next!16621 () Bool)

(assert (=> start!78138 (= b_free!16621 (not b_next!16621))))

(declare-fun tp!58137 () Bool)

(declare-fun b_and!27213 () Bool)

(assert (=> start!78138 (= tp!58137 b_and!27213)))

(declare-fun b!911512 () Bool)

(declare-fun e!511261 () Bool)

(declare-fun tp_is_empty!19039 () Bool)

(assert (=> b!911512 (= e!511261 tp_is_empty!19039)))

(declare-fun res!615065 () Bool)

(declare-fun e!511264 () Bool)

(assert (=> start!78138 (=> (not res!615065) (not e!511264))))

(declare-fun mask!1756 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!78138 (= res!615065 (validMask!0 mask!1756))))

(assert (=> start!78138 e!511264))

(declare-datatypes ((V!30351 0))(
  ( (V!30352 (val!9570 Int)) )
))
(declare-datatypes ((ValueCell!9038 0))(
  ( (ValueCellFull!9038 (v!12080 V!30351)) (EmptyCell!9038) )
))
(declare-datatypes ((array!54086 0))(
  ( (array!54087 (arr!25994 (Array (_ BitVec 32) ValueCell!9038)) (size!26454 (_ BitVec 32))) )
))
(declare-fun _values!1152 () array!54086)

(declare-fun e!511263 () Bool)

(declare-fun array_inv!20298 (array!54086) Bool)

(assert (=> start!78138 (and (array_inv!20298 _values!1152) e!511263)))

(assert (=> start!78138 tp!58137))

(assert (=> start!78138 true))

(assert (=> start!78138 tp_is_empty!19039))

(declare-datatypes ((array!54088 0))(
  ( (array!54089 (arr!25995 (Array (_ BitVec 32) (_ BitVec 64))) (size!26455 (_ BitVec 32))) )
))
(declare-fun _keys!1386 () array!54088)

(declare-fun array_inv!20299 (array!54088) Bool)

(assert (=> start!78138 (array_inv!20299 _keys!1386)))

(declare-fun mapIsEmpty!30283 () Bool)

(declare-fun mapRes!30283 () Bool)

(assert (=> mapIsEmpty!30283 mapRes!30283))

(declare-fun b!911513 () Bool)

(assert (=> b!911513 (= e!511264 false)))

(declare-fun defaultEntry!1160 () Int)

(declare-fun zeroValue!1094 () V!30351)

(declare-fun k!1033 () (_ BitVec 64))

(declare-fun lt!410437 () Bool)

(declare-fun extraKeys!1073 () (_ BitVec 32))

(declare-fun minValue!1094 () V!30351)

(declare-datatypes ((tuple2!12518 0))(
  ( (tuple2!12519 (_1!6269 (_ BitVec 64)) (_2!6269 V!30351)) )
))
(declare-datatypes ((List!18362 0))(
  ( (Nil!18359) (Cons!18358 (h!19504 tuple2!12518) (t!25957 List!18362)) )
))
(declare-datatypes ((ListLongMap!11229 0))(
  ( (ListLongMap!11230 (toList!5630 List!18362)) )
))
(declare-fun contains!4640 (ListLongMap!11229 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!2860 (array!54088 array!54086 (_ BitVec 32) (_ BitVec 32) V!30351 V!30351 (_ BitVec 32) Int) ListLongMap!11229)

(assert (=> b!911513 (= lt!410437 (contains!4640 (getCurrentListMap!2860 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 #b00000000000000000000000000000000 defaultEntry!1160) k!1033))))

(declare-fun b!911514 () Bool)

(declare-fun res!615067 () Bool)

(assert (=> b!911514 (=> (not res!615067) (not e!511264))))

(declare-datatypes ((List!18363 0))(
  ( (Nil!18360) (Cons!18359 (h!19505 (_ BitVec 64)) (t!25958 List!18363)) )
))
(declare-fun arrayNoDuplicates!0 (array!54088 (_ BitVec 32) List!18363) Bool)

(assert (=> b!911514 (= res!615067 (arrayNoDuplicates!0 _keys!1386 #b00000000000000000000000000000000 Nil!18360))))

(declare-fun mapNonEmpty!30283 () Bool)

(declare-fun tp!58138 () Bool)

(declare-fun e!511262 () Bool)

(assert (=> mapNonEmpty!30283 (= mapRes!30283 (and tp!58138 e!511262))))

(declare-fun mapKey!30283 () (_ BitVec 32))

(declare-fun mapValue!30283 () ValueCell!9038)

(declare-fun mapRest!30283 () (Array (_ BitVec 32) ValueCell!9038))

(assert (=> mapNonEmpty!30283 (= (arr!25994 _values!1152) (store mapRest!30283 mapKey!30283 mapValue!30283))))

(declare-fun b!911515 () Bool)

(declare-fun res!615066 () Bool)

(assert (=> b!911515 (=> (not res!615066) (not e!511264))))

(assert (=> b!911515 (= res!615066 (and (= (size!26454 _values!1152) (bvadd #b00000000000000000000000000000001 mask!1756)) (= (size!26455 _keys!1386) (size!26454 _values!1152)) (bvsge mask!1756 #b00000000000000000000000000000000) (bvsge extraKeys!1073 #b00000000000000000000000000000000) (bvsle extraKeys!1073 #b00000000000000000000000000000011)))))

(declare-fun b!911516 () Bool)

(assert (=> b!911516 (= e!511262 tp_is_empty!19039)))

(declare-fun b!911517 () Bool)

(assert (=> b!911517 (= e!511263 (and e!511261 mapRes!30283))))

(declare-fun condMapEmpty!30283 () Bool)

(declare-fun mapDefault!30283 () ValueCell!9038)

