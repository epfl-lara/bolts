; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!96296 () Bool)

(assert start!96296)

(declare-fun b_free!22913 () Bool)

(declare-fun b_next!22913 () Bool)

(assert (=> start!96296 (= b_free!22913 (not b_next!22913))))

(declare-fun tp!80589 () Bool)

(declare-fun b_and!36519 () Bool)

(assert (=> start!96296 (= tp!80589 b_and!36519)))

(declare-fun b!1093571 () Bool)

(declare-fun e!624447 () Bool)

(assert (=> b!1093571 (= e!624447 (not true))))

(declare-fun defaultEntry!882 () Int)

(declare-datatypes ((V!41013 0))(
  ( (V!41014 (val!13514 Int)) )
))
(declare-fun minValue!831 () V!41013)

(declare-fun mask!1414 () (_ BitVec 32))

(declare-fun extraKeys!811 () (_ BitVec 32))

(declare-datatypes ((tuple2!17260 0))(
  ( (tuple2!17261 (_1!8640 (_ BitVec 64)) (_2!8640 V!41013)) )
))
(declare-datatypes ((List!23907 0))(
  ( (Nil!23904) (Cons!23903 (h!25112 tuple2!17260) (t!33885 List!23907)) )
))
(declare-datatypes ((ListLongMap!15241 0))(
  ( (ListLongMap!15242 (toList!7636 List!23907)) )
))
(declare-fun lt!489104 () ListLongMap!15241)

(declare-fun zeroValue!831 () V!41013)

(declare-datatypes ((array!70704 0))(
  ( (array!70705 (arr!34022 (Array (_ BitVec 32) (_ BitVec 64))) (size!34559 (_ BitVec 32))) )
))
(declare-fun _keys!1070 () array!70704)

(declare-datatypes ((ValueCell!12748 0))(
  ( (ValueCellFull!12748 (v!16136 V!41013)) (EmptyCell!12748) )
))
(declare-datatypes ((array!70706 0))(
  ( (array!70707 (arr!34023 (Array (_ BitVec 32) ValueCell!12748)) (size!34560 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!70706)

(declare-fun getCurrentListMap!4371 (array!70704 array!70706 (_ BitVec 32) (_ BitVec 32) V!41013 V!41013 (_ BitVec 32) Int) ListLongMap!15241)

(assert (=> b!1093571 (= lt!489104 (getCurrentListMap!4371 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun lt!489105 () array!70704)

(declare-fun lt!489103 () ListLongMap!15241)

(declare-fun lt!489102 () array!70706)

(assert (=> b!1093571 (= lt!489103 (getCurrentListMap!4371 lt!489105 lt!489102 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun lt!489108 () ListLongMap!15241)

(declare-fun lt!489106 () ListLongMap!15241)

(assert (=> b!1093571 (and (= lt!489108 lt!489106) (= lt!489106 lt!489108))))

(declare-fun lt!489110 () ListLongMap!15241)

(declare-fun k!904 () (_ BitVec 64))

(declare-fun -!912 (ListLongMap!15241 (_ BitVec 64)) ListLongMap!15241)

(assert (=> b!1093571 (= lt!489106 (-!912 lt!489110 k!904))))

(declare-fun i!650 () (_ BitVec 32))

(declare-datatypes ((Unit!35939 0))(
  ( (Unit!35940) )
))
(declare-fun lt!489109 () Unit!35939)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!177 (array!70704 array!70706 (_ BitVec 32) (_ BitVec 32) V!41013 V!41013 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!35939)

(assert (=> b!1093571 (= lt!489109 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!177 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 i!650 k!904 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun getCurrentListMapNoExtraKeys!4123 (array!70704 array!70706 (_ BitVec 32) (_ BitVec 32) V!41013 V!41013 (_ BitVec 32) Int) ListLongMap!15241)

(assert (=> b!1093571 (= lt!489108 (getCurrentListMapNoExtraKeys!4123 lt!489105 lt!489102 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun dynLambda!2259 (Int (_ BitVec 64)) V!41013)

(assert (=> b!1093571 (= lt!489102 (array!70707 (store (arr!34023 _values!874) i!650 (ValueCellFull!12748 (dynLambda!2259 defaultEntry!882 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!34560 _values!874)))))

(assert (=> b!1093571 (= lt!489110 (getCurrentListMapNoExtraKeys!4123 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun arrayContainsKey!0 (array!70704 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1093571 (arrayContainsKey!0 _keys!1070 k!904 #b00000000000000000000000000000000)))

(declare-fun lt!489107 () Unit!35939)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!70704 (_ BitVec 64) (_ BitVec 32)) Unit!35939)

(assert (=> b!1093571 (= lt!489107 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1070 k!904 i!650))))

(declare-fun b!1093572 () Bool)

(declare-fun e!624444 () Bool)

(declare-fun tp_is_empty!26915 () Bool)

(assert (=> b!1093572 (= e!624444 tp_is_empty!26915)))

(declare-fun b!1093573 () Bool)

(declare-fun e!624443 () Bool)

(declare-fun e!624448 () Bool)

(declare-fun mapRes!42127 () Bool)

(assert (=> b!1093573 (= e!624443 (and e!624448 mapRes!42127))))

(declare-fun condMapEmpty!42127 () Bool)

(declare-fun mapDefault!42127 () ValueCell!12748)

