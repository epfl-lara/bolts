; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!95626 () Bool)

(assert start!95626)

(declare-fun b!1079839 () Bool)

(declare-fun e!617378 () Bool)

(declare-datatypes ((array!69396 0))(
  ( (array!69397 (arr!33368 (Array (_ BitVec 32) (_ BitVec 64))) (size!33905 (_ BitVec 32))) )
))
(declare-fun _keys!1070 () array!69396)

(assert (=> b!1079839 (= e!617378 (not (bvsle #b00000000000000000000000000000000 (size!33905 _keys!1070))))))

(declare-fun k!904 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!69396 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1079839 (arrayContainsKey!0 _keys!1070 k!904 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!35453 0))(
  ( (Unit!35454) )
))
(declare-fun lt!478865 () Unit!35453)

(declare-fun i!650 () (_ BitVec 32))

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!69396 (_ BitVec 64) (_ BitVec 32)) Unit!35453)

(assert (=> b!1079839 (= lt!478865 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1070 k!904 i!650))))

(declare-fun mapIsEmpty!41122 () Bool)

(declare-fun mapRes!41122 () Bool)

(assert (=> mapIsEmpty!41122 mapRes!41122))

(declare-fun b!1079840 () Bool)

(declare-fun res!719744 () Bool)

(declare-fun e!617381 () Bool)

(assert (=> b!1079840 (=> (not res!719744) (not e!617381))))

(assert (=> b!1079840 (= res!719744 (and (bvsge i!650 #b00000000000000000000000000000000) (bvslt i!650 (size!33905 _keys!1070))))))

(declare-fun b!1079841 () Bool)

(declare-fun e!617379 () Bool)

(declare-fun tp_is_empty!26245 () Bool)

(assert (=> b!1079841 (= e!617379 tp_is_empty!26245)))

(declare-fun b!1079842 () Bool)

(declare-fun res!719737 () Bool)

(assert (=> b!1079842 (=> (not res!719737) (not e!617381))))

(assert (=> b!1079842 (= res!719737 (= (select (arr!33368 _keys!1070) i!650) k!904))))

(declare-fun b!1079843 () Bool)

(declare-fun res!719740 () Bool)

(assert (=> b!1079843 (=> (not res!719740) (not e!617381))))

(declare-fun mask!1414 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!69396 (_ BitVec 32)) Bool)

(assert (=> b!1079843 (= res!719740 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1070 mask!1414))))

(declare-fun res!719736 () Bool)

(assert (=> start!95626 (=> (not res!719736) (not e!617381))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!95626 (= res!719736 (validMask!0 mask!1414))))

(assert (=> start!95626 e!617381))

(assert (=> start!95626 true))

(declare-fun array_inv!25630 (array!69396) Bool)

(assert (=> start!95626 (array_inv!25630 _keys!1070)))

(declare-datatypes ((V!40121 0))(
  ( (V!40122 (val!13179 Int)) )
))
(declare-datatypes ((ValueCell!12413 0))(
  ( (ValueCellFull!12413 (v!15801 V!40121)) (EmptyCell!12413) )
))
(declare-datatypes ((array!69398 0))(
  ( (array!69399 (arr!33369 (Array (_ BitVec 32) ValueCell!12413)) (size!33906 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!69398)

(declare-fun e!617382 () Bool)

(declare-fun array_inv!25631 (array!69398) Bool)

(assert (=> start!95626 (and (array_inv!25631 _values!874) e!617382)))

(declare-fun b!1079844 () Bool)

(declare-fun res!719742 () Bool)

(assert (=> b!1079844 (=> (not res!719742) (not e!617381))))

(declare-fun extraKeys!811 () (_ BitVec 32))

(assert (=> b!1079844 (= res!719742 (and (= (size!33906 _values!874) (bvadd #b00000000000000000000000000000001 mask!1414)) (= (size!33905 _keys!1070) (size!33906 _values!874)) (bvsge mask!1414 #b00000000000000000000000000000000) (bvsge extraKeys!811 #b00000000000000000000000000000000) (bvsle extraKeys!811 #b00000000000000000000000000000011)))))

(declare-fun b!1079845 () Bool)

(assert (=> b!1079845 (= e!617381 e!617378)))

(declare-fun res!719738 () Bool)

(assert (=> b!1079845 (=> (not res!719738) (not e!617378))))

(declare-fun lt!478864 () array!69396)

(assert (=> b!1079845 (= res!719738 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!478864 mask!1414))))

(assert (=> b!1079845 (= lt!478864 (array!69397 (store (arr!33368 _keys!1070) i!650 #b1000000000000000000000000000000000000000000000000000000000000000) (size!33905 _keys!1070)))))

(declare-fun b!1079846 () Bool)

(declare-fun res!719739 () Bool)

(assert (=> b!1079846 (=> (not res!719739) (not e!617381))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1079846 (= res!719739 (validKeyInArray!0 k!904))))

(declare-fun mapNonEmpty!41122 () Bool)

(declare-fun tp!78585 () Bool)

(declare-fun e!617383 () Bool)

(assert (=> mapNonEmpty!41122 (= mapRes!41122 (and tp!78585 e!617383))))

(declare-fun mapKey!41122 () (_ BitVec 32))

(declare-fun mapRest!41122 () (Array (_ BitVec 32) ValueCell!12413))

(declare-fun mapValue!41122 () ValueCell!12413)

(assert (=> mapNonEmpty!41122 (= (arr!33369 _values!874) (store mapRest!41122 mapKey!41122 mapValue!41122))))

(declare-fun b!1079847 () Bool)

(assert (=> b!1079847 (= e!617382 (and e!617379 mapRes!41122))))

(declare-fun condMapEmpty!41122 () Bool)

(declare-fun mapDefault!41122 () ValueCell!12413)

