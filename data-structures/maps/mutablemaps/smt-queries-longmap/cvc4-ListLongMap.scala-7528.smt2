; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!95482 () Bool)

(assert start!95482)

(declare-fun b!1077945 () Bool)

(declare-fun res!718356 () Bool)

(declare-fun e!616380 () Bool)

(assert (=> b!1077945 (=> (not res!718356) (not e!616380))))

(declare-datatypes ((array!69206 0))(
  ( (array!69207 (arr!33276 (Array (_ BitVec 32) (_ BitVec 64))) (size!33813 (_ BitVec 32))) )
))
(declare-fun _keys!1070 () array!69206)

(assert (=> b!1077945 (= res!718356 (and (bvsle #b00000000000000000000000000000000 (size!33813 _keys!1070)) (bvslt (size!33813 _keys!1070) #b01111111111111111111111111111111)))))

(declare-fun mapNonEmpty!40966 () Bool)

(declare-fun mapRes!40966 () Bool)

(declare-fun tp!78429 () Bool)

(declare-fun e!616379 () Bool)

(assert (=> mapNonEmpty!40966 (= mapRes!40966 (and tp!78429 e!616379))))

(declare-datatypes ((V!39989 0))(
  ( (V!39990 (val!13130 Int)) )
))
(declare-datatypes ((ValueCell!12364 0))(
  ( (ValueCellFull!12364 (v!15751 V!39989)) (EmptyCell!12364) )
))
(declare-fun mapValue!40966 () ValueCell!12364)

(declare-fun mapRest!40966 () (Array (_ BitVec 32) ValueCell!12364))

(declare-datatypes ((array!69208 0))(
  ( (array!69209 (arr!33277 (Array (_ BitVec 32) ValueCell!12364)) (size!33814 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!69208)

(declare-fun mapKey!40966 () (_ BitVec 32))

(assert (=> mapNonEmpty!40966 (= (arr!33277 _values!874) (store mapRest!40966 mapKey!40966 mapValue!40966))))

(declare-fun b!1077946 () Bool)

(declare-fun res!718351 () Bool)

(assert (=> b!1077946 (=> (not res!718351) (not e!616380))))

(declare-fun k!904 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1077946 (= res!718351 (validKeyInArray!0 k!904))))

(declare-fun b!1077947 () Bool)

(declare-fun res!718352 () Bool)

(assert (=> b!1077947 (=> (not res!718352) (not e!616380))))

(declare-fun mask!1414 () (_ BitVec 32))

(declare-fun i!650 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!69206 (_ BitVec 32)) Bool)

(assert (=> b!1077947 (= res!718352 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (array!69207 (store (arr!33276 _keys!1070) i!650 #b1000000000000000000000000000000000000000000000000000000000000000) (size!33813 _keys!1070)) mask!1414))))

(declare-fun b!1077948 () Bool)

(declare-fun res!718359 () Bool)

(assert (=> b!1077948 (=> (not res!718359) (not e!616380))))

(declare-fun extraKeys!811 () (_ BitVec 32))

(assert (=> b!1077948 (= res!718359 (and (= (size!33814 _values!874) (bvadd #b00000000000000000000000000000001 mask!1414)) (= (size!33813 _keys!1070) (size!33814 _values!874)) (bvsge mask!1414 #b00000000000000000000000000000000) (bvsge extraKeys!811 #b00000000000000000000000000000000) (bvsle extraKeys!811 #b00000000000000000000000000000011)))))

(declare-fun b!1077949 () Bool)

(declare-fun e!616381 () Bool)

(declare-fun e!616378 () Bool)

(assert (=> b!1077949 (= e!616381 (and e!616378 mapRes!40966))))

(declare-fun condMapEmpty!40966 () Bool)

(declare-fun mapDefault!40966 () ValueCell!12364)

