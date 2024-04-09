; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!95436 () Bool)

(assert start!95436)

(declare-fun b!1077414 () Bool)

(declare-fun res!718000 () Bool)

(declare-fun e!616095 () Bool)

(assert (=> b!1077414 (=> (not res!718000) (not e!616095))))

(declare-fun k!904 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1077414 (= res!718000 (validKeyInArray!0 k!904))))

(declare-fun res!717995 () Bool)

(assert (=> start!95436 (=> (not res!717995) (not e!616095))))

(declare-fun mask!1414 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!95436 (= res!717995 (validMask!0 mask!1414))))

(assert (=> start!95436 e!616095))

(assert (=> start!95436 true))

(declare-datatypes ((array!69136 0))(
  ( (array!69137 (arr!33242 (Array (_ BitVec 32) (_ BitVec 64))) (size!33779 (_ BitVec 32))) )
))
(declare-fun _keys!1070 () array!69136)

(declare-fun array_inv!25544 (array!69136) Bool)

(assert (=> start!95436 (array_inv!25544 _keys!1070)))

(declare-datatypes ((V!39945 0))(
  ( (V!39946 (val!13113 Int)) )
))
(declare-datatypes ((ValueCell!12347 0))(
  ( (ValueCellFull!12347 (v!15734 V!39945)) (EmptyCell!12347) )
))
(declare-datatypes ((array!69138 0))(
  ( (array!69139 (arr!33243 (Array (_ BitVec 32) ValueCell!12347)) (size!33780 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!69138)

(declare-fun e!616092 () Bool)

(declare-fun array_inv!25545 (array!69138) Bool)

(assert (=> start!95436 (and (array_inv!25545 _values!874) e!616092)))

(declare-fun b!1077415 () Bool)

(declare-fun e!616094 () Bool)

(declare-fun tp_is_empty!26113 () Bool)

(assert (=> b!1077415 (= e!616094 tp_is_empty!26113)))

(declare-fun b!1077416 () Bool)

(declare-fun e!616096 () Bool)

(assert (=> b!1077416 (= e!616096 tp_is_empty!26113)))

(declare-fun b!1077417 () Bool)

(declare-fun res!717996 () Bool)

(assert (=> b!1077417 (=> (not res!717996) (not e!616095))))

(declare-fun extraKeys!811 () (_ BitVec 32))

(assert (=> b!1077417 (= res!717996 (and (= (size!33780 _values!874) (bvadd #b00000000000000000000000000000001 mask!1414)) (= (size!33779 _keys!1070) (size!33780 _values!874)) (bvsge mask!1414 #b00000000000000000000000000000000) (bvsge extraKeys!811 #b00000000000000000000000000000000) (bvsle extraKeys!811 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!40912 () Bool)

(declare-fun mapRes!40912 () Bool)

(declare-fun tp!78375 () Bool)

(assert (=> mapNonEmpty!40912 (= mapRes!40912 (and tp!78375 e!616094))))

(declare-fun mapKey!40912 () (_ BitVec 32))

(declare-fun mapValue!40912 () ValueCell!12347)

(declare-fun mapRest!40912 () (Array (_ BitVec 32) ValueCell!12347))

(assert (=> mapNonEmpty!40912 (= (arr!33243 _values!874) (store mapRest!40912 mapKey!40912 mapValue!40912))))

(declare-fun mapIsEmpty!40912 () Bool)

(assert (=> mapIsEmpty!40912 mapRes!40912))

(declare-fun b!1077418 () Bool)

(declare-fun i!650 () (_ BitVec 32))

(assert (=> b!1077418 (= e!616095 (and (= (select (arr!33242 _keys!1070) i!650) k!904) (not (= (size!33779 _keys!1070) (bvadd #b00000000000000000000000000000001 mask!1414)))))))

(declare-fun b!1077419 () Bool)

(declare-fun res!717998 () Bool)

(assert (=> b!1077419 (=> (not res!717998) (not e!616095))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!69136 (_ BitVec 32)) Bool)

(assert (=> b!1077419 (= res!717998 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1070 mask!1414))))

(declare-fun b!1077420 () Bool)

(assert (=> b!1077420 (= e!616092 (and e!616096 mapRes!40912))))

(declare-fun condMapEmpty!40912 () Bool)

(declare-fun mapDefault!40912 () ValueCell!12347)

