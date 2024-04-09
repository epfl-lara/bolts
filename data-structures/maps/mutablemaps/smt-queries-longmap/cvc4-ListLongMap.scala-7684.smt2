; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!96490 () Bool)

(assert start!96490)

(declare-fun b_free!23033 () Bool)

(declare-fun b_next!23033 () Bool)

(assert (=> start!96490 (= b_free!23033 (not b_next!23033))))

(declare-fun tp!81027 () Bool)

(declare-fun b_and!36747 () Bool)

(assert (=> start!96490 (= tp!81027 b_and!36747)))

(declare-fun b!1096662 () Bool)

(declare-fun res!732026 () Bool)

(declare-fun e!626004 () Bool)

(assert (=> b!1096662 (=> (not res!732026) (not e!626004))))

(declare-datatypes ((array!71026 0))(
  ( (array!71027 (arr!34181 (Array (_ BitVec 32) (_ BitVec 64))) (size!34718 (_ BitVec 32))) )
))
(declare-fun lt!490213 () array!71026)

(declare-datatypes ((List!24008 0))(
  ( (Nil!24005) (Cons!24004 (h!25213 (_ BitVec 64)) (t!34094 List!24008)) )
))
(declare-fun arrayNoDuplicates!0 (array!71026 (_ BitVec 32) List!24008) Bool)

(assert (=> b!1096662 (= res!732026 (arrayNoDuplicates!0 lt!490213 #b00000000000000000000000000000000 Nil!24005))))

(declare-fun b!1096663 () Bool)

(assert (=> b!1096663 (= e!626004 (not true))))

(declare-fun defaultEntry!882 () Int)

(declare-datatypes ((V!41237 0))(
  ( (V!41238 (val!13598 Int)) )
))
(declare-datatypes ((tuple2!17332 0))(
  ( (tuple2!17333 (_1!8676 (_ BitVec 64)) (_2!8676 V!41237)) )
))
(declare-datatypes ((List!24009 0))(
  ( (Nil!24006) (Cons!24005 (h!25214 tuple2!17332) (t!34095 List!24009)) )
))
(declare-datatypes ((ListLongMap!15313 0))(
  ( (ListLongMap!15314 (toList!7672 List!24009)) )
))
(declare-fun lt!490212 () ListLongMap!15313)

(declare-datatypes ((ValueCell!12832 0))(
  ( (ValueCellFull!12832 (v!16220 V!41237)) (EmptyCell!12832) )
))
(declare-datatypes ((array!71028 0))(
  ( (array!71029 (arr!34182 (Array (_ BitVec 32) ValueCell!12832)) (size!34719 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!71028)

(declare-fun minValue!831 () V!41237)

(declare-fun mask!1414 () (_ BitVec 32))

(declare-fun i!650 () (_ BitVec 32))

(declare-fun extraKeys!811 () (_ BitVec 32))

(declare-fun zeroValue!831 () V!41237)

(declare-fun getCurrentListMapNoExtraKeys!4159 (array!71026 array!71028 (_ BitVec 32) (_ BitVec 32) V!41237 V!41237 (_ BitVec 32) Int) ListLongMap!15313)

(declare-fun dynLambda!2290 (Int (_ BitVec 64)) V!41237)

(assert (=> b!1096663 (= lt!490212 (getCurrentListMapNoExtraKeys!4159 lt!490213 (array!71029 (store (arr!34182 _values!874) i!650 (ValueCellFull!12832 (dynLambda!2290 defaultEntry!882 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!34719 _values!874)) mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun lt!490214 () ListLongMap!15313)

(declare-fun _keys!1070 () array!71026)

(assert (=> b!1096663 (= lt!490214 (getCurrentListMapNoExtraKeys!4159 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun k!904 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!71026 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1096663 (arrayContainsKey!0 _keys!1070 k!904 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!36017 0))(
  ( (Unit!36018) )
))
(declare-fun lt!490211 () Unit!36017)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!71026 (_ BitVec 64) (_ BitVec 32)) Unit!36017)

(assert (=> b!1096663 (= lt!490211 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1070 k!904 i!650))))

(declare-fun b!1096664 () Bool)

(declare-fun res!732025 () Bool)

(declare-fun e!626002 () Bool)

(assert (=> b!1096664 (=> (not res!732025) (not e!626002))))

(assert (=> b!1096664 (= res!732025 (and (bvsge i!650 #b00000000000000000000000000000000) (bvslt i!650 (size!34718 _keys!1070))))))

(declare-fun res!732027 () Bool)

(assert (=> start!96490 (=> (not res!732027) (not e!626002))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!96490 (= res!732027 (validMask!0 mask!1414))))

(assert (=> start!96490 e!626002))

(assert (=> start!96490 tp!81027))

(assert (=> start!96490 true))

(declare-fun tp_is_empty!27083 () Bool)

(assert (=> start!96490 tp_is_empty!27083))

(declare-fun array_inv!26192 (array!71026) Bool)

(assert (=> start!96490 (array_inv!26192 _keys!1070)))

(declare-fun e!626006 () Bool)

(declare-fun array_inv!26193 (array!71028) Bool)

(assert (=> start!96490 (and (array_inv!26193 _values!874) e!626006)))

(declare-fun b!1096665 () Bool)

(declare-fun res!732023 () Bool)

(assert (=> b!1096665 (=> (not res!732023) (not e!626002))))

(assert (=> b!1096665 (= res!732023 (and (= (size!34719 _values!874) (bvadd #b00000000000000000000000000000001 mask!1414)) (= (size!34718 _keys!1070) (size!34719 _values!874)) (bvsge mask!1414 #b00000000000000000000000000000000) (bvsge extraKeys!811 #b00000000000000000000000000000000) (bvsle extraKeys!811 #b00000000000000000000000000000011)))))

(declare-fun b!1096666 () Bool)

(declare-fun res!732024 () Bool)

(assert (=> b!1096666 (=> (not res!732024) (not e!626002))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1096666 (= res!732024 (validKeyInArray!0 k!904))))

(declare-fun b!1096667 () Bool)

(assert (=> b!1096667 (= e!626002 e!626004)))

(declare-fun res!732030 () Bool)

(assert (=> b!1096667 (=> (not res!732030) (not e!626004))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!71026 (_ BitVec 32)) Bool)

(assert (=> b!1096667 (= res!732030 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!490213 mask!1414))))

(assert (=> b!1096667 (= lt!490213 (array!71027 (store (arr!34181 _keys!1070) i!650 #b1000000000000000000000000000000000000000000000000000000000000000) (size!34718 _keys!1070)))))

(declare-fun b!1096668 () Bool)

(declare-fun res!732022 () Bool)

(assert (=> b!1096668 (=> (not res!732022) (not e!626002))))

(assert (=> b!1096668 (= res!732022 (arrayNoDuplicates!0 _keys!1070 #b00000000000000000000000000000000 Nil!24005))))

(declare-fun mapNonEmpty!42385 () Bool)

(declare-fun mapRes!42385 () Bool)

(declare-fun tp!81026 () Bool)

(declare-fun e!626005 () Bool)

(assert (=> mapNonEmpty!42385 (= mapRes!42385 (and tp!81026 e!626005))))

(declare-fun mapRest!42385 () (Array (_ BitVec 32) ValueCell!12832))

(declare-fun mapKey!42385 () (_ BitVec 32))

(declare-fun mapValue!42385 () ValueCell!12832)

(assert (=> mapNonEmpty!42385 (= (arr!34182 _values!874) (store mapRest!42385 mapKey!42385 mapValue!42385))))

(declare-fun mapIsEmpty!42385 () Bool)

(assert (=> mapIsEmpty!42385 mapRes!42385))

(declare-fun b!1096669 () Bool)

(assert (=> b!1096669 (= e!626005 tp_is_empty!27083)))

(declare-fun b!1096670 () Bool)

(declare-fun res!732028 () Bool)

(assert (=> b!1096670 (=> (not res!732028) (not e!626002))))

(assert (=> b!1096670 (= res!732028 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1070 mask!1414))))

(declare-fun b!1096671 () Bool)

(declare-fun e!626007 () Bool)

(assert (=> b!1096671 (= e!626006 (and e!626007 mapRes!42385))))

(declare-fun condMapEmpty!42385 () Bool)

(declare-fun mapDefault!42385 () ValueCell!12832)

