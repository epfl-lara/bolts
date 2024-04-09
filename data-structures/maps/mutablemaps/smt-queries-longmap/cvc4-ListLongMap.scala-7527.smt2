; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!95464 () Bool)

(assert start!95464)

(declare-fun b!1077799 () Bool)

(declare-fun res!718258 () Bool)

(declare-fun e!616302 () Bool)

(assert (=> b!1077799 (=> (not res!718258) (not e!616302))))

(declare-fun mask!1414 () (_ BitVec 32))

(declare-fun extraKeys!811 () (_ BitVec 32))

(declare-datatypes ((array!69192 0))(
  ( (array!69193 (arr!33270 (Array (_ BitVec 32) (_ BitVec 64))) (size!33807 (_ BitVec 32))) )
))
(declare-fun _keys!1070 () array!69192)

(declare-datatypes ((V!39981 0))(
  ( (V!39982 (val!13127 Int)) )
))
(declare-datatypes ((ValueCell!12361 0))(
  ( (ValueCellFull!12361 (v!15748 V!39981)) (EmptyCell!12361) )
))
(declare-datatypes ((array!69194 0))(
  ( (array!69195 (arr!33271 (Array (_ BitVec 32) ValueCell!12361)) (size!33808 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!69194)

(assert (=> b!1077799 (= res!718258 (and (= (size!33808 _values!874) (bvadd #b00000000000000000000000000000001 mask!1414)) (= (size!33807 _keys!1070) (size!33808 _values!874)) (bvsge mask!1414 #b00000000000000000000000000000000) (bvsge extraKeys!811 #b00000000000000000000000000000000) (bvsle extraKeys!811 #b00000000000000000000000000000011)))))

(declare-fun b!1077800 () Bool)

(declare-fun res!718261 () Bool)

(assert (=> b!1077800 (=> (not res!718261) (not e!616302))))

(declare-fun k!904 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1077800 (= res!718261 (validKeyInArray!0 k!904))))

(declare-fun b!1077801 () Bool)

(declare-fun res!718260 () Bool)

(assert (=> b!1077801 (=> (not res!718260) (not e!616302))))

(declare-fun i!650 () (_ BitVec 32))

(assert (=> b!1077801 (= res!718260 (= (select (arr!33270 _keys!1070) i!650) k!904))))

(declare-fun b!1077802 () Bool)

(declare-fun res!718256 () Bool)

(assert (=> b!1077802 (=> (not res!718256) (not e!616302))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!69192 (_ BitVec 32)) Bool)

(assert (=> b!1077802 (= res!718256 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (array!69193 (store (arr!33270 _keys!1070) i!650 #b1000000000000000000000000000000000000000000000000000000000000000) (size!33807 _keys!1070)) mask!1414))))

(declare-fun b!1077803 () Bool)

(declare-fun e!616305 () Bool)

(declare-fun e!616304 () Bool)

(declare-fun mapRes!40954 () Bool)

(assert (=> b!1077803 (= e!616305 (and e!616304 mapRes!40954))))

(declare-fun condMapEmpty!40954 () Bool)

(declare-fun mapDefault!40954 () ValueCell!12361)

