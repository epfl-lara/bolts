; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!78168 () Bool)

(assert start!78168)

(declare-fun b_free!16651 () Bool)

(declare-fun b_next!16651 () Bool)

(assert (=> start!78168 (= b_free!16651 (not b_next!16651))))

(declare-fun tp!58227 () Bool)

(declare-fun b_and!27243 () Bool)

(assert (=> start!78168 (= tp!58227 b_and!27243)))

(declare-fun mapIsEmpty!30328 () Bool)

(declare-fun mapRes!30328 () Bool)

(assert (=> mapIsEmpty!30328 mapRes!30328))

(declare-fun b!911827 () Bool)

(declare-fun res!615246 () Bool)

(declare-fun e!511487 () Bool)

(assert (=> b!911827 (=> (not res!615246) (not e!511487))))

(declare-datatypes ((V!30391 0))(
  ( (V!30392 (val!9585 Int)) )
))
(declare-datatypes ((ValueCell!9053 0))(
  ( (ValueCellFull!9053 (v!12095 V!30391)) (EmptyCell!9053) )
))
(declare-datatypes ((array!54146 0))(
  ( (array!54147 (arr!26024 (Array (_ BitVec 32) ValueCell!9053)) (size!26484 (_ BitVec 32))) )
))
(declare-fun _values!1152 () array!54146)

(declare-fun extraKeys!1073 () (_ BitVec 32))

(declare-fun mask!1756 () (_ BitVec 32))

(declare-datatypes ((array!54148 0))(
  ( (array!54149 (arr!26025 (Array (_ BitVec 32) (_ BitVec 64))) (size!26485 (_ BitVec 32))) )
))
(declare-fun _keys!1386 () array!54148)

(assert (=> b!911827 (= res!615246 (and (= (size!26484 _values!1152) (bvadd #b00000000000000000000000000000001 mask!1756)) (= (size!26485 _keys!1386) (size!26484 _values!1152)) (bvsge mask!1756 #b00000000000000000000000000000000) (bvsge extraKeys!1073 #b00000000000000000000000000000000) (bvsle extraKeys!1073 #b00000000000000000000000000000011)))))

(declare-fun b!911828 () Bool)

(assert (=> b!911828 (= e!511487 false)))

(declare-fun defaultEntry!1160 () Int)

(declare-fun k!1033 () (_ BitVec 64))

(declare-fun minValue!1094 () V!30391)

(declare-fun lt!410482 () Bool)

(declare-fun zeroValue!1094 () V!30391)

(declare-datatypes ((tuple2!12542 0))(
  ( (tuple2!12543 (_1!6281 (_ BitVec 64)) (_2!6281 V!30391)) )
))
(declare-datatypes ((List!18385 0))(
  ( (Nil!18382) (Cons!18381 (h!19527 tuple2!12542) (t!25980 List!18385)) )
))
(declare-datatypes ((ListLongMap!11253 0))(
  ( (ListLongMap!11254 (toList!5642 List!18385)) )
))
(declare-fun contains!4652 (ListLongMap!11253 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!2872 (array!54148 array!54146 (_ BitVec 32) (_ BitVec 32) V!30391 V!30391 (_ BitVec 32) Int) ListLongMap!11253)

(assert (=> b!911828 (= lt!410482 (contains!4652 (getCurrentListMap!2872 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 #b00000000000000000000000000000000 defaultEntry!1160) k!1033))))

(declare-fun b!911829 () Bool)

(declare-fun res!615247 () Bool)

(assert (=> b!911829 (=> (not res!615247) (not e!511487))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!54148 (_ BitVec 32)) Bool)

(assert (=> b!911829 (= res!615247 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1386 mask!1756))))

(declare-fun b!911830 () Bool)

(declare-fun e!511488 () Bool)

(declare-fun tp_is_empty!19069 () Bool)

(assert (=> b!911830 (= e!511488 tp_is_empty!19069)))

(declare-fun b!911831 () Bool)

(declare-fun e!511489 () Bool)

(assert (=> b!911831 (= e!511489 tp_is_empty!19069)))

(declare-fun mapNonEmpty!30328 () Bool)

(declare-fun tp!58228 () Bool)

(assert (=> mapNonEmpty!30328 (= mapRes!30328 (and tp!58228 e!511488))))

(declare-fun mapRest!30328 () (Array (_ BitVec 32) ValueCell!9053))

(declare-fun mapValue!30328 () ValueCell!9053)

(declare-fun mapKey!30328 () (_ BitVec 32))

(assert (=> mapNonEmpty!30328 (= (arr!26024 _values!1152) (store mapRest!30328 mapKey!30328 mapValue!30328))))

(declare-fun b!911832 () Bool)

(declare-fun e!511486 () Bool)

(assert (=> b!911832 (= e!511486 (and e!511489 mapRes!30328))))

(declare-fun condMapEmpty!30328 () Bool)

(declare-fun mapDefault!30328 () ValueCell!9053)

