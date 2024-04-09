; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!95460 () Bool)

(assert start!95460)

(declare-fun b!1077733 () Bool)

(declare-fun res!718211 () Bool)

(declare-fun e!616274 () Bool)

(assert (=> b!1077733 (=> (not res!718211) (not e!616274))))

(declare-datatypes ((array!69184 0))(
  ( (array!69185 (arr!33266 (Array (_ BitVec 32) (_ BitVec 64))) (size!33803 (_ BitVec 32))) )
))
(declare-fun _keys!1070 () array!69184)

(declare-fun mask!1414 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!69184 (_ BitVec 32)) Bool)

(assert (=> b!1077733 (= res!718211 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1070 mask!1414))))

(declare-fun mapNonEmpty!40948 () Bool)

(declare-fun mapRes!40948 () Bool)

(declare-fun tp!78411 () Bool)

(declare-fun e!616275 () Bool)

(assert (=> mapNonEmpty!40948 (= mapRes!40948 (and tp!78411 e!616275))))

(declare-fun mapKey!40948 () (_ BitVec 32))

(declare-datatypes ((V!39977 0))(
  ( (V!39978 (val!13125 Int)) )
))
(declare-datatypes ((ValueCell!12359 0))(
  ( (ValueCellFull!12359 (v!15746 V!39977)) (EmptyCell!12359) )
))
(declare-fun mapValue!40948 () ValueCell!12359)

(declare-datatypes ((array!69186 0))(
  ( (array!69187 (arr!33267 (Array (_ BitVec 32) ValueCell!12359)) (size!33804 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!69186)

(declare-fun mapRest!40948 () (Array (_ BitVec 32) ValueCell!12359))

(assert (=> mapNonEmpty!40948 (= (arr!33267 _values!874) (store mapRest!40948 mapKey!40948 mapValue!40948))))

(declare-fun mapIsEmpty!40948 () Bool)

(assert (=> mapIsEmpty!40948 mapRes!40948))

(declare-fun b!1077734 () Bool)

(assert (=> b!1077734 (= e!616274 (and (bvsle #b00000000000000000000000000000000 (size!33803 _keys!1070)) (bvsge (size!33803 _keys!1070) #b01111111111111111111111111111111)))))

(declare-fun b!1077735 () Bool)

(declare-fun res!718210 () Bool)

(assert (=> b!1077735 (=> (not res!718210) (not e!616274))))

(declare-fun k!904 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1077735 (= res!718210 (validKeyInArray!0 k!904))))

(declare-fun b!1077736 () Bool)

(declare-fun e!616273 () Bool)

(declare-fun tp_is_empty!26137 () Bool)

(assert (=> b!1077736 (= e!616273 tp_is_empty!26137)))

(declare-fun b!1077737 () Bool)

(declare-fun res!718208 () Bool)

(assert (=> b!1077737 (=> (not res!718208) (not e!616274))))

(declare-fun extraKeys!811 () (_ BitVec 32))

(assert (=> b!1077737 (= res!718208 (and (= (size!33804 _values!874) (bvadd #b00000000000000000000000000000001 mask!1414)) (= (size!33803 _keys!1070) (size!33804 _values!874)) (bvsge mask!1414 #b00000000000000000000000000000000) (bvsge extraKeys!811 #b00000000000000000000000000000000) (bvsle extraKeys!811 #b00000000000000000000000000000011)))))

(declare-fun b!1077738 () Bool)

(assert (=> b!1077738 (= e!616275 tp_is_empty!26137)))

(declare-fun res!718207 () Bool)

(assert (=> start!95460 (=> (not res!718207) (not e!616274))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!95460 (= res!718207 (validMask!0 mask!1414))))

(assert (=> start!95460 e!616274))

(assert (=> start!95460 true))

(declare-fun array_inv!25566 (array!69184) Bool)

(assert (=> start!95460 (array_inv!25566 _keys!1070)))

(declare-fun e!616276 () Bool)

(declare-fun array_inv!25567 (array!69186) Bool)

(assert (=> start!95460 (and (array_inv!25567 _values!874) e!616276)))

(declare-fun b!1077739 () Bool)

(declare-fun res!718213 () Bool)

(assert (=> b!1077739 (=> (not res!718213) (not e!616274))))

(declare-datatypes ((List!23343 0))(
  ( (Nil!23340) (Cons!23339 (h!24548 (_ BitVec 64)) (t!32709 List!23343)) )
))
(declare-fun arrayNoDuplicates!0 (array!69184 (_ BitVec 32) List!23343) Bool)

(assert (=> b!1077739 (= res!718213 (arrayNoDuplicates!0 _keys!1070 #b00000000000000000000000000000000 Nil!23340))))

(declare-fun b!1077740 () Bool)

(declare-fun res!718206 () Bool)

(assert (=> b!1077740 (=> (not res!718206) (not e!616274))))

(declare-fun i!650 () (_ BitVec 32))

(assert (=> b!1077740 (= res!718206 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (array!69185 (store (arr!33266 _keys!1070) i!650 #b1000000000000000000000000000000000000000000000000000000000000000) (size!33803 _keys!1070)) mask!1414))))

(declare-fun b!1077741 () Bool)

(declare-fun res!718209 () Bool)

(assert (=> b!1077741 (=> (not res!718209) (not e!616274))))

(assert (=> b!1077741 (= res!718209 (= (select (arr!33266 _keys!1070) i!650) k!904))))

(declare-fun b!1077742 () Bool)

(assert (=> b!1077742 (= e!616276 (and e!616273 mapRes!40948))))

(declare-fun condMapEmpty!40948 () Bool)

(declare-fun mapDefault!40948 () ValueCell!12359)

