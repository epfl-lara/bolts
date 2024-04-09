; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!95582 () Bool)

(assert start!95582)

(declare-fun res!719146 () Bool)

(declare-fun e!616987 () Bool)

(assert (=> start!95582 (=> (not res!719146) (not e!616987))))

(declare-fun mask!1414 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!95582 (= res!719146 (validMask!0 mask!1414))))

(assert (=> start!95582 e!616987))

(assert (=> start!95582 true))

(declare-datatypes ((array!69314 0))(
  ( (array!69315 (arr!33327 (Array (_ BitVec 32) (_ BitVec 64))) (size!33864 (_ BitVec 32))) )
))
(declare-fun _keys!1070 () array!69314)

(declare-fun array_inv!25608 (array!69314) Bool)

(assert (=> start!95582 (array_inv!25608 _keys!1070)))

(declare-datatypes ((V!40061 0))(
  ( (V!40062 (val!13157 Int)) )
))
(declare-datatypes ((ValueCell!12391 0))(
  ( (ValueCellFull!12391 (v!15779 V!40061)) (EmptyCell!12391) )
))
(declare-datatypes ((array!69316 0))(
  ( (array!69317 (arr!33328 (Array (_ BitVec 32) ValueCell!12391)) (size!33865 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!69316)

(declare-fun e!616984 () Bool)

(declare-fun array_inv!25609 (array!69316) Bool)

(assert (=> start!95582 (and (array_inv!25609 _values!874) e!616984)))

(declare-fun b!1079047 () Bool)

(declare-fun e!616985 () Bool)

(declare-fun tp_is_empty!26201 () Bool)

(assert (=> b!1079047 (= e!616985 tp_is_empty!26201)))

(declare-fun b!1079048 () Bool)

(declare-fun e!616983 () Bool)

(assert (=> b!1079048 (= e!616983 (not true))))

(declare-fun k!904 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!69314 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1079048 (arrayContainsKey!0 _keys!1070 k!904 #b00000000000000000000000000000000)))

(declare-fun i!650 () (_ BitVec 32))

(declare-datatypes ((Unit!35425 0))(
  ( (Unit!35426) )
))
(declare-fun lt!478733 () Unit!35425)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!69314 (_ BitVec 64) (_ BitVec 32)) Unit!35425)

(assert (=> b!1079048 (= lt!478733 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1070 k!904 i!650))))

(declare-fun b!1079049 () Bool)

(assert (=> b!1079049 (= e!616987 e!616983)))

(declare-fun res!719142 () Bool)

(assert (=> b!1079049 (=> (not res!719142) (not e!616983))))

(declare-fun lt!478732 () array!69314)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!69314 (_ BitVec 32)) Bool)

(assert (=> b!1079049 (= res!719142 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!478732 mask!1414))))

(assert (=> b!1079049 (= lt!478732 (array!69315 (store (arr!33327 _keys!1070) i!650 #b1000000000000000000000000000000000000000000000000000000000000000) (size!33864 _keys!1070)))))

(declare-fun b!1079050 () Bool)

(declare-fun res!719144 () Bool)

(assert (=> b!1079050 (=> (not res!719144) (not e!616987))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1079050 (= res!719144 (validKeyInArray!0 k!904))))

(declare-fun mapIsEmpty!41056 () Bool)

(declare-fun mapRes!41056 () Bool)

(assert (=> mapIsEmpty!41056 mapRes!41056))

(declare-fun b!1079051 () Bool)

(declare-fun res!719143 () Bool)

(assert (=> b!1079051 (=> (not res!719143) (not e!616987))))

(assert (=> b!1079051 (= res!719143 (and (bvsge i!650 #b00000000000000000000000000000000) (bvslt i!650 (size!33864 _keys!1070))))))

(declare-fun b!1079052 () Bool)

(declare-fun e!616982 () Bool)

(assert (=> b!1079052 (= e!616982 tp_is_empty!26201)))

(declare-fun b!1079053 () Bool)

(declare-fun res!719148 () Bool)

(assert (=> b!1079053 (=> (not res!719148) (not e!616987))))

(declare-datatypes ((List!23367 0))(
  ( (Nil!23364) (Cons!23363 (h!24572 (_ BitVec 64)) (t!32733 List!23367)) )
))
(declare-fun arrayNoDuplicates!0 (array!69314 (_ BitVec 32) List!23367) Bool)

(assert (=> b!1079053 (= res!719148 (arrayNoDuplicates!0 _keys!1070 #b00000000000000000000000000000000 Nil!23364))))

(declare-fun mapNonEmpty!41056 () Bool)

(declare-fun tp!78519 () Bool)

(assert (=> mapNonEmpty!41056 (= mapRes!41056 (and tp!78519 e!616985))))

(declare-fun mapRest!41056 () (Array (_ BitVec 32) ValueCell!12391))

(declare-fun mapKey!41056 () (_ BitVec 32))

(declare-fun mapValue!41056 () ValueCell!12391)

(assert (=> mapNonEmpty!41056 (= (arr!33328 _values!874) (store mapRest!41056 mapKey!41056 mapValue!41056))))

(declare-fun b!1079054 () Bool)

(declare-fun res!719147 () Bool)

(assert (=> b!1079054 (=> (not res!719147) (not e!616983))))

(assert (=> b!1079054 (= res!719147 (arrayNoDuplicates!0 lt!478732 #b00000000000000000000000000000000 Nil!23364))))

(declare-fun b!1079055 () Bool)

(assert (=> b!1079055 (= e!616984 (and e!616982 mapRes!41056))))

(declare-fun condMapEmpty!41056 () Bool)

(declare-fun mapDefault!41056 () ValueCell!12391)

