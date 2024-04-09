; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!95372 () Bool)

(assert start!95372)

(declare-fun b!1077038 () Bool)

(declare-fun e!615808 () Bool)

(declare-fun tp_is_empty!26087 () Bool)

(assert (=> b!1077038 (= e!615808 tp_is_empty!26087)))

(declare-fun mapNonEmpty!40861 () Bool)

(declare-fun mapRes!40861 () Bool)

(declare-fun tp!78324 () Bool)

(declare-fun e!615812 () Bool)

(assert (=> mapNonEmpty!40861 (= mapRes!40861 (and tp!78324 e!615812))))

(declare-datatypes ((V!39909 0))(
  ( (V!39910 (val!13100 Int)) )
))
(declare-datatypes ((ValueCell!12334 0))(
  ( (ValueCellFull!12334 (v!15720 V!39909)) (EmptyCell!12334) )
))
(declare-fun mapValue!40861 () ValueCell!12334)

(declare-fun mapKey!40861 () (_ BitVec 32))

(declare-fun mapRest!40861 () (Array (_ BitVec 32) ValueCell!12334))

(declare-datatypes ((array!69086 0))(
  ( (array!69087 (arr!33221 (Array (_ BitVec 32) ValueCell!12334)) (size!33758 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!69086)

(assert (=> mapNonEmpty!40861 (= (arr!33221 _values!874) (store mapRest!40861 mapKey!40861 mapValue!40861))))

(declare-fun mapIsEmpty!40861 () Bool)

(assert (=> mapIsEmpty!40861 mapRes!40861))

(declare-fun b!1077039 () Bool)

(declare-fun res!717794 () Bool)

(declare-fun e!615809 () Bool)

(assert (=> b!1077039 (=> (not res!717794) (not e!615809))))

(declare-fun extraKeys!811 () (_ BitVec 32))

(declare-datatypes ((array!69088 0))(
  ( (array!69089 (arr!33222 (Array (_ BitVec 32) (_ BitVec 64))) (size!33759 (_ BitVec 32))) )
))
(declare-fun _keys!1070 () array!69088)

(declare-fun mask!1414 () (_ BitVec 32))

(assert (=> b!1077039 (= res!717794 (and (= (size!33758 _values!874) (bvadd #b00000000000000000000000000000001 mask!1414)) (= (size!33759 _keys!1070) (size!33758 _values!874)) (bvsge mask!1414 #b00000000000000000000000000000000) (bvsge extraKeys!811 #b00000000000000000000000000000000) (bvsle extraKeys!811 #b00000000000000000000000000000011)))))

(declare-fun res!717792 () Bool)

(assert (=> start!95372 (=> (not res!717792) (not e!615809))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!95372 (= res!717792 (validMask!0 mask!1414))))

(assert (=> start!95372 e!615809))

(assert (=> start!95372 true))

(declare-fun e!615811 () Bool)

(declare-fun array_inv!25528 (array!69086) Bool)

(assert (=> start!95372 (and (array_inv!25528 _values!874) e!615811)))

(declare-fun array_inv!25529 (array!69088) Bool)

(assert (=> start!95372 (array_inv!25529 _keys!1070)))

(declare-fun b!1077040 () Bool)

(assert (=> b!1077040 (= e!615812 tp_is_empty!26087)))

(declare-fun b!1077041 () Bool)

(assert (=> b!1077041 (= e!615811 (and e!615808 mapRes!40861))))

(declare-fun condMapEmpty!40861 () Bool)

(declare-fun mapDefault!40861 () ValueCell!12334)

