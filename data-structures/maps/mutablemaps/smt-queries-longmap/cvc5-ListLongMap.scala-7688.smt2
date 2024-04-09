; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!96510 () Bool)

(assert start!96510)

(declare-fun b_free!23053 () Bool)

(declare-fun b_next!23053 () Bool)

(assert (=> start!96510 (= b_free!23053 (not b_next!23053))))

(declare-fun tp!81087 () Bool)

(declare-fun b_and!36787 () Bool)

(assert (=> start!96510 (= tp!81087 b_and!36787)))

(declare-fun b!1097042 () Bool)

(declare-fun res!732295 () Bool)

(declare-fun e!626183 () Bool)

(assert (=> b!1097042 (=> (not res!732295) (not e!626183))))

(declare-datatypes ((array!71066 0))(
  ( (array!71067 (arr!34201 (Array (_ BitVec 32) (_ BitVec 64))) (size!34738 (_ BitVec 32))) )
))
(declare-fun _keys!1070 () array!71066)

(declare-fun k!904 () (_ BitVec 64))

(declare-fun i!650 () (_ BitVec 32))

(assert (=> b!1097042 (= res!732295 (= (select (arr!34201 _keys!1070) i!650) k!904))))

(declare-fun b!1097043 () Bool)

(declare-fun res!732299 () Bool)

(assert (=> b!1097043 (=> (not res!732299) (not e!626183))))

(declare-fun mask!1414 () (_ BitVec 32))

(declare-fun extraKeys!811 () (_ BitVec 32))

(declare-datatypes ((V!41265 0))(
  ( (V!41266 (val!13608 Int)) )
))
(declare-datatypes ((ValueCell!12842 0))(
  ( (ValueCellFull!12842 (v!16230 V!41265)) (EmptyCell!12842) )
))
(declare-datatypes ((array!71068 0))(
  ( (array!71069 (arr!34202 (Array (_ BitVec 32) ValueCell!12842)) (size!34739 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!71068)

(assert (=> b!1097043 (= res!732299 (and (= (size!34739 _values!874) (bvadd #b00000000000000000000000000000001 mask!1414)) (= (size!34738 _keys!1070) (size!34739 _values!874)) (bvsge mask!1414 #b00000000000000000000000000000000) (bvsge extraKeys!811 #b00000000000000000000000000000000) (bvsle extraKeys!811 #b00000000000000000000000000000011)))))

(declare-fun b!1097044 () Bool)

(declare-fun res!732300 () Bool)

(assert (=> b!1097044 (=> (not res!732300) (not e!626183))))

(declare-datatypes ((List!24022 0))(
  ( (Nil!24019) (Cons!24018 (h!25227 (_ BitVec 64)) (t!34128 List!24022)) )
))
(declare-fun arrayNoDuplicates!0 (array!71066 (_ BitVec 32) List!24022) Bool)

(assert (=> b!1097044 (= res!732300 (arrayNoDuplicates!0 _keys!1070 #b00000000000000000000000000000000 Nil!24019))))

(declare-fun b!1097045 () Bool)

(declare-fun e!626182 () Bool)

(assert (=> b!1097045 (= e!626182 (not true))))

(declare-datatypes ((tuple2!17344 0))(
  ( (tuple2!17345 (_1!8682 (_ BitVec 64)) (_2!8682 V!41265)) )
))
(declare-datatypes ((List!24023 0))(
  ( (Nil!24020) (Cons!24019 (h!25228 tuple2!17344) (t!34129 List!24023)) )
))
(declare-datatypes ((ListLongMap!15325 0))(
  ( (ListLongMap!15326 (toList!7678 List!24023)) )
))
(declare-fun lt!490353 () ListLongMap!15325)

(declare-fun lt!490357 () ListLongMap!15325)

(assert (=> b!1097045 (and (= lt!490353 lt!490357) (= lt!490357 lt!490353))))

(declare-fun lt!490355 () ListLongMap!15325)

(declare-fun -!925 (ListLongMap!15325 (_ BitVec 64)) ListLongMap!15325)

(assert (=> b!1097045 (= lt!490357 (-!925 lt!490355 k!904))))

(declare-fun defaultEntry!882 () Int)

(declare-fun minValue!831 () V!41265)

(declare-datatypes ((Unit!36029 0))(
  ( (Unit!36030) )
))
(declare-fun lt!490354 () Unit!36029)

(declare-fun zeroValue!831 () V!41265)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!190 (array!71066 array!71068 (_ BitVec 32) (_ BitVec 32) V!41265 V!41265 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!36029)

(assert (=> b!1097045 (= lt!490354 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!190 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 i!650 k!904 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun lt!490358 () array!71066)

(declare-fun getCurrentListMapNoExtraKeys!4165 (array!71066 array!71068 (_ BitVec 32) (_ BitVec 32) V!41265 V!41265 (_ BitVec 32) Int) ListLongMap!15325)

(declare-fun dynLambda!2296 (Int (_ BitVec 64)) V!41265)

(assert (=> b!1097045 (= lt!490353 (getCurrentListMapNoExtraKeys!4165 lt!490358 (array!71069 (store (arr!34202 _values!874) i!650 (ValueCellFull!12842 (dynLambda!2296 defaultEntry!882 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!34739 _values!874)) mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(assert (=> b!1097045 (= lt!490355 (getCurrentListMapNoExtraKeys!4165 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun arrayContainsKey!0 (array!71066 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1097045 (arrayContainsKey!0 _keys!1070 k!904 #b00000000000000000000000000000000)))

(declare-fun lt!490356 () Unit!36029)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!71066 (_ BitVec 64) (_ BitVec 32)) Unit!36029)

(assert (=> b!1097045 (= lt!490356 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1070 k!904 i!650))))

(declare-fun mapNonEmpty!42415 () Bool)

(declare-fun mapRes!42415 () Bool)

(declare-fun tp!81086 () Bool)

(declare-fun e!626184 () Bool)

(assert (=> mapNonEmpty!42415 (= mapRes!42415 (and tp!81086 e!626184))))

(declare-fun mapValue!42415 () ValueCell!12842)

(declare-fun mapRest!42415 () (Array (_ BitVec 32) ValueCell!12842))

(declare-fun mapKey!42415 () (_ BitVec 32))

(assert (=> mapNonEmpty!42415 (= (arr!34202 _values!874) (store mapRest!42415 mapKey!42415 mapValue!42415))))

(declare-fun res!732294 () Bool)

(assert (=> start!96510 (=> (not res!732294) (not e!626183))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!96510 (= res!732294 (validMask!0 mask!1414))))

(assert (=> start!96510 e!626183))

(assert (=> start!96510 tp!81087))

(assert (=> start!96510 true))

(declare-fun tp_is_empty!27103 () Bool)

(assert (=> start!96510 tp_is_empty!27103))

(declare-fun array_inv!26204 (array!71066) Bool)

(assert (=> start!96510 (array_inv!26204 _keys!1070)))

(declare-fun e!626186 () Bool)

(declare-fun array_inv!26205 (array!71068) Bool)

(assert (=> start!96510 (and (array_inv!26205 _values!874) e!626186)))

(declare-fun mapIsEmpty!42415 () Bool)

(assert (=> mapIsEmpty!42415 mapRes!42415))

(declare-fun b!1097046 () Bool)

(assert (=> b!1097046 (= e!626184 tp_is_empty!27103)))

(declare-fun b!1097047 () Bool)

(declare-fun res!732297 () Bool)

(assert (=> b!1097047 (=> (not res!732297) (not e!626183))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1097047 (= res!732297 (validKeyInArray!0 k!904))))

(declare-fun b!1097048 () Bool)

(assert (=> b!1097048 (= e!626183 e!626182)))

(declare-fun res!732293 () Bool)

(assert (=> b!1097048 (=> (not res!732293) (not e!626182))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!71066 (_ BitVec 32)) Bool)

(assert (=> b!1097048 (= res!732293 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!490358 mask!1414))))

(assert (=> b!1097048 (= lt!490358 (array!71067 (store (arr!34201 _keys!1070) i!650 #b1000000000000000000000000000000000000000000000000000000000000000) (size!34738 _keys!1070)))))

(declare-fun b!1097049 () Bool)

(declare-fun e!626187 () Bool)

(assert (=> b!1097049 (= e!626186 (and e!626187 mapRes!42415))))

(declare-fun condMapEmpty!42415 () Bool)

(declare-fun mapDefault!42415 () ValueCell!12842)

