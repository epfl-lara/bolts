; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!95608 () Bool)

(assert start!95608)

(declare-fun b!1079515 () Bool)

(declare-fun e!617221 () Bool)

(declare-fun tp_is_empty!26227 () Bool)

(assert (=> b!1079515 (= e!617221 tp_is_empty!26227)))

(declare-fun b!1079516 () Bool)

(declare-fun e!617218 () Bool)

(declare-fun e!617216 () Bool)

(assert (=> b!1079516 (= e!617218 e!617216)))

(declare-fun res!719498 () Bool)

(assert (=> b!1079516 (=> (not res!719498) (not e!617216))))

(declare-datatypes ((array!69364 0))(
  ( (array!69365 (arr!33352 (Array (_ BitVec 32) (_ BitVec 64))) (size!33889 (_ BitVec 32))) )
))
(declare-fun lt!478810 () array!69364)

(declare-fun mask!1414 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!69364 (_ BitVec 32)) Bool)

(assert (=> b!1079516 (= res!719498 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!478810 mask!1414))))

(declare-fun _keys!1070 () array!69364)

(declare-fun i!650 () (_ BitVec 32))

(assert (=> b!1079516 (= lt!478810 (array!69365 (store (arr!33352 _keys!1070) i!650 #b1000000000000000000000000000000000000000000000000000000000000000) (size!33889 _keys!1070)))))

(declare-fun b!1079517 () Bool)

(declare-fun e!617217 () Bool)

(assert (=> b!1079517 (= e!617217 tp_is_empty!26227)))

(declare-fun b!1079518 () Bool)

(assert (=> b!1079518 (= e!617216 (not true))))

(declare-fun k!904 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!69364 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1079518 (arrayContainsKey!0 _keys!1070 k!904 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!35441 0))(
  ( (Unit!35442) )
))
(declare-fun lt!478811 () Unit!35441)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!69364 (_ BitVec 64) (_ BitVec 32)) Unit!35441)

(assert (=> b!1079518 (= lt!478811 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1070 k!904 i!650))))

(declare-fun b!1079519 () Bool)

(declare-fun res!719494 () Bool)

(assert (=> b!1079519 (=> (not res!719494) (not e!617218))))

(declare-datatypes ((List!23378 0))(
  ( (Nil!23375) (Cons!23374 (h!24583 (_ BitVec 64)) (t!32744 List!23378)) )
))
(declare-fun arrayNoDuplicates!0 (array!69364 (_ BitVec 32) List!23378) Bool)

(assert (=> b!1079519 (= res!719494 (arrayNoDuplicates!0 _keys!1070 #b00000000000000000000000000000000 Nil!23375))))

(declare-fun b!1079520 () Bool)

(declare-fun res!719495 () Bool)

(assert (=> b!1079520 (=> (not res!719495) (not e!617218))))

(assert (=> b!1079520 (= res!719495 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1070 mask!1414))))

(declare-fun mapIsEmpty!41095 () Bool)

(declare-fun mapRes!41095 () Bool)

(assert (=> mapIsEmpty!41095 mapRes!41095))

(declare-fun b!1079521 () Bool)

(declare-fun res!719493 () Bool)

(assert (=> b!1079521 (=> (not res!719493) (not e!617218))))

(assert (=> b!1079521 (= res!719493 (and (bvsge i!650 #b00000000000000000000000000000000) (bvslt i!650 (size!33889 _keys!1070))))))

(declare-fun b!1079522 () Bool)

(declare-fun res!719499 () Bool)

(assert (=> b!1079522 (=> (not res!719499) (not e!617218))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1079522 (= res!719499 (validKeyInArray!0 k!904))))

(declare-fun b!1079523 () Bool)

(declare-fun res!719500 () Bool)

(assert (=> b!1079523 (=> (not res!719500) (not e!617218))))

(declare-fun extraKeys!811 () (_ BitVec 32))

(declare-datatypes ((V!40097 0))(
  ( (V!40098 (val!13170 Int)) )
))
(declare-datatypes ((ValueCell!12404 0))(
  ( (ValueCellFull!12404 (v!15792 V!40097)) (EmptyCell!12404) )
))
(declare-datatypes ((array!69366 0))(
  ( (array!69367 (arr!33353 (Array (_ BitVec 32) ValueCell!12404)) (size!33890 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!69366)

(assert (=> b!1079523 (= res!719500 (and (= (size!33890 _values!874) (bvadd #b00000000000000000000000000000001 mask!1414)) (= (size!33889 _keys!1070) (size!33890 _values!874)) (bvsge mask!1414 #b00000000000000000000000000000000) (bvsge extraKeys!811 #b00000000000000000000000000000000) (bvsle extraKeys!811 #b00000000000000000000000000000011)))))

(declare-fun b!1079524 () Bool)

(declare-fun e!617219 () Bool)

(assert (=> b!1079524 (= e!617219 (and e!617217 mapRes!41095))))

(declare-fun condMapEmpty!41095 () Bool)

(declare-fun mapDefault!41095 () ValueCell!12404)

