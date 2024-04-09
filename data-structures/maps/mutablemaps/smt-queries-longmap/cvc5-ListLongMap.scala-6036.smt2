; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!78144 () Bool)

(assert start!78144)

(declare-fun b_free!16627 () Bool)

(declare-fun b_next!16627 () Bool)

(assert (=> start!78144 (= b_free!16627 (not b_next!16627))))

(declare-fun tp!58155 () Bool)

(declare-fun b_and!27219 () Bool)

(assert (=> start!78144 (= tp!58155 b_and!27219)))

(declare-fun b!911575 () Bool)

(declare-fun res!615102 () Bool)

(declare-fun e!511307 () Bool)

(assert (=> b!911575 (=> (not res!615102) (not e!511307))))

(declare-datatypes ((array!54098 0))(
  ( (array!54099 (arr!26000 (Array (_ BitVec 32) (_ BitVec 64))) (size!26460 (_ BitVec 32))) )
))
(declare-fun _keys!1386 () array!54098)

(declare-datatypes ((List!18368 0))(
  ( (Nil!18365) (Cons!18364 (h!19510 (_ BitVec 64)) (t!25963 List!18368)) )
))
(declare-fun arrayNoDuplicates!0 (array!54098 (_ BitVec 32) List!18368) Bool)

(assert (=> b!911575 (= res!615102 (arrayNoDuplicates!0 _keys!1386 #b00000000000000000000000000000000 Nil!18365))))

(declare-fun b!911576 () Bool)

(declare-fun res!615103 () Bool)

(assert (=> b!911576 (=> (not res!615103) (not e!511307))))

(declare-fun mask!1756 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!54098 (_ BitVec 32)) Bool)

(assert (=> b!911576 (= res!615103 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1386 mask!1756))))

(declare-fun res!615101 () Bool)

(assert (=> start!78144 (=> (not res!615101) (not e!511307))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!78144 (= res!615101 (validMask!0 mask!1756))))

(assert (=> start!78144 e!511307))

(declare-datatypes ((V!30359 0))(
  ( (V!30360 (val!9573 Int)) )
))
(declare-datatypes ((ValueCell!9041 0))(
  ( (ValueCellFull!9041 (v!12083 V!30359)) (EmptyCell!9041) )
))
(declare-datatypes ((array!54100 0))(
  ( (array!54101 (arr!26001 (Array (_ BitVec 32) ValueCell!9041)) (size!26461 (_ BitVec 32))) )
))
(declare-fun _values!1152 () array!54100)

(declare-fun e!511308 () Bool)

(declare-fun array_inv!20304 (array!54100) Bool)

(assert (=> start!78144 (and (array_inv!20304 _values!1152) e!511308)))

(assert (=> start!78144 tp!58155))

(assert (=> start!78144 true))

(declare-fun tp_is_empty!19045 () Bool)

(assert (=> start!78144 tp_is_empty!19045))

(declare-fun array_inv!20305 (array!54098) Bool)

(assert (=> start!78144 (array_inv!20305 _keys!1386)))

(declare-fun b!911577 () Bool)

(declare-fun e!511309 () Bool)

(assert (=> b!911577 (= e!511309 tp_is_empty!19045)))

(declare-fun b!911578 () Bool)

(declare-fun res!615100 () Bool)

(assert (=> b!911578 (=> (not res!615100) (not e!511307))))

(declare-fun extraKeys!1073 () (_ BitVec 32))

(assert (=> b!911578 (= res!615100 (and (= (size!26461 _values!1152) (bvadd #b00000000000000000000000000000001 mask!1756)) (= (size!26460 _keys!1386) (size!26461 _values!1152)) (bvsge mask!1756 #b00000000000000000000000000000000) (bvsge extraKeys!1073 #b00000000000000000000000000000000) (bvsle extraKeys!1073 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!30292 () Bool)

(declare-fun mapRes!30292 () Bool)

(declare-fun tp!58156 () Bool)

(assert (=> mapNonEmpty!30292 (= mapRes!30292 (and tp!58156 e!511309))))

(declare-fun mapValue!30292 () ValueCell!9041)

(declare-fun mapRest!30292 () (Array (_ BitVec 32) ValueCell!9041))

(declare-fun mapKey!30292 () (_ BitVec 32))

(assert (=> mapNonEmpty!30292 (= (arr!26001 _values!1152) (store mapRest!30292 mapKey!30292 mapValue!30292))))

(declare-fun b!911579 () Bool)

(assert (=> b!911579 (= e!511307 false)))

(declare-fun defaultEntry!1160 () Int)

(declare-fun zeroValue!1094 () V!30359)

(declare-fun k!1033 () (_ BitVec 64))

(declare-fun lt!410446 () Bool)

(declare-fun minValue!1094 () V!30359)

(declare-datatypes ((tuple2!12524 0))(
  ( (tuple2!12525 (_1!6272 (_ BitVec 64)) (_2!6272 V!30359)) )
))
(declare-datatypes ((List!18369 0))(
  ( (Nil!18366) (Cons!18365 (h!19511 tuple2!12524) (t!25964 List!18369)) )
))
(declare-datatypes ((ListLongMap!11235 0))(
  ( (ListLongMap!11236 (toList!5633 List!18369)) )
))
(declare-fun contains!4643 (ListLongMap!11235 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!2863 (array!54098 array!54100 (_ BitVec 32) (_ BitVec 32) V!30359 V!30359 (_ BitVec 32) Int) ListLongMap!11235)

(assert (=> b!911579 (= lt!410446 (contains!4643 (getCurrentListMap!2863 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 #b00000000000000000000000000000000 defaultEntry!1160) k!1033))))

(declare-fun b!911580 () Bool)

(declare-fun e!511310 () Bool)

(assert (=> b!911580 (= e!511310 tp_is_empty!19045)))

(declare-fun mapIsEmpty!30292 () Bool)

(assert (=> mapIsEmpty!30292 mapRes!30292))

(declare-fun b!911581 () Bool)

(assert (=> b!911581 (= e!511308 (and e!511310 mapRes!30292))))

(declare-fun condMapEmpty!30292 () Bool)

(declare-fun mapDefault!30292 () ValueCell!9041)

