; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!95870 () Bool)

(assert start!95870)

(declare-fun b_free!22487 () Bool)

(declare-fun b_next!22487 () Bool)

(assert (=> start!95870 (= b_free!22487 (not b_next!22487))))

(declare-fun tp!79310 () Bool)

(declare-fun b_and!35667 () Bool)

(assert (=> start!95870 (= tp!79310 b_and!35667)))

(declare-fun res!723035 () Bool)

(declare-fun e!619577 () Bool)

(assert (=> start!95870 (=> (not res!723035) (not e!619577))))

(declare-fun mask!1414 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!95870 (= res!723035 (validMask!0 mask!1414))))

(assert (=> start!95870 e!619577))

(assert (=> start!95870 tp!79310))

(assert (=> start!95870 true))

(declare-fun tp_is_empty!26489 () Bool)

(assert (=> start!95870 tp_is_empty!26489))

(declare-datatypes ((array!69880 0))(
  ( (array!69881 (arr!33610 (Array (_ BitVec 32) (_ BitVec 64))) (size!34147 (_ BitVec 32))) )
))
(declare-fun _keys!1070 () array!69880)

(declare-fun array_inv!25790 (array!69880) Bool)

(assert (=> start!95870 (array_inv!25790 _keys!1070)))

(declare-datatypes ((V!40445 0))(
  ( (V!40446 (val!13301 Int)) )
))
(declare-datatypes ((ValueCell!12535 0))(
  ( (ValueCellFull!12535 (v!15923 V!40445)) (EmptyCell!12535) )
))
(declare-datatypes ((array!69882 0))(
  ( (array!69883 (arr!33611 (Array (_ BitVec 32) ValueCell!12535)) (size!34148 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!69882)

(declare-fun e!619579 () Bool)

(declare-fun array_inv!25791 (array!69882) Bool)

(assert (=> start!95870 (and (array_inv!25791 _values!874) e!619579)))

(declare-fun b!1084415 () Bool)

(declare-fun e!619574 () Bool)

(assert (=> b!1084415 (= e!619577 e!619574)))

(declare-fun res!723037 () Bool)

(assert (=> b!1084415 (=> (not res!723037) (not e!619574))))

(declare-fun lt!480679 () array!69880)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!69880 (_ BitVec 32)) Bool)

(assert (=> b!1084415 (= res!723037 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!480679 mask!1414))))

(declare-fun i!650 () (_ BitVec 32))

(assert (=> b!1084415 (= lt!480679 (array!69881 (store (arr!33610 _keys!1070) i!650 #b1000000000000000000000000000000000000000000000000000000000000000) (size!34147 _keys!1070)))))

(declare-fun b!1084416 () Bool)

(declare-fun e!619578 () Bool)

(declare-fun mapRes!41488 () Bool)

(assert (=> b!1084416 (= e!619579 (and e!619578 mapRes!41488))))

(declare-fun condMapEmpty!41488 () Bool)

(declare-fun mapDefault!41488 () ValueCell!12535)

