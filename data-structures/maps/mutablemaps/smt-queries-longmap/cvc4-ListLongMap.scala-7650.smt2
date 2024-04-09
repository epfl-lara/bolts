; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!96260 () Bool)

(assert start!96260)

(declare-fun b_free!22877 () Bool)

(declare-fun b_next!22877 () Bool)

(assert (=> start!96260 (= b_free!22877 (not b_next!22877))))

(declare-fun tp!80480 () Bool)

(declare-fun b_and!36447 () Bool)

(assert (=> start!96260 (= tp!80480 b_and!36447)))

(declare-fun b!1092887 () Bool)

(declare-fun res!729359 () Bool)

(declare-fun e!624120 () Bool)

(assert (=> b!1092887 (=> (not res!729359) (not e!624120))))

(declare-datatypes ((array!70632 0))(
  ( (array!70633 (arr!33986 (Array (_ BitVec 32) (_ BitVec 64))) (size!34523 (_ BitVec 32))) )
))
(declare-fun _keys!1070 () array!70632)

(declare-datatypes ((List!23878 0))(
  ( (Nil!23875) (Cons!23874 (h!25083 (_ BitVec 64)) (t!33820 List!23878)) )
))
(declare-fun arrayNoDuplicates!0 (array!70632 (_ BitVec 32) List!23878) Bool)

(assert (=> b!1092887 (= res!729359 (arrayNoDuplicates!0 _keys!1070 #b00000000000000000000000000000000 Nil!23875))))

(declare-fun b!1092888 () Bool)

(declare-fun e!624124 () Bool)

(declare-fun tp_is_empty!26879 () Bool)

(assert (=> b!1092888 (= e!624124 tp_is_empty!26879)))

(declare-fun b!1092889 () Bool)

(declare-fun e!624122 () Bool)

(assert (=> b!1092889 (= e!624120 e!624122)))

(declare-fun res!729362 () Bool)

(assert (=> b!1092889 (=> (not res!729362) (not e!624122))))

(declare-fun lt!488608 () array!70632)

(declare-fun mask!1414 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!70632 (_ BitVec 32)) Bool)

(assert (=> b!1092889 (= res!729362 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!488608 mask!1414))))

(declare-fun i!650 () (_ BitVec 32))

(assert (=> b!1092889 (= lt!488608 (array!70633 (store (arr!33986 _keys!1070) i!650 #b1000000000000000000000000000000000000000000000000000000000000000) (size!34523 _keys!1070)))))

(declare-fun b!1092890 () Bool)

(declare-fun e!624123 () Bool)

(assert (=> b!1092890 (= e!624123 tp_is_empty!26879)))

(declare-fun b!1092891 () Bool)

(declare-fun res!729358 () Bool)

(assert (=> b!1092891 (=> (not res!729358) (not e!624120))))

(assert (=> b!1092891 (= res!729358 (and (bvsge i!650 #b00000000000000000000000000000000) (bvslt i!650 (size!34523 _keys!1070))))))

(declare-fun b!1092892 () Bool)

(assert (=> b!1092892 (= e!624122 (not true))))

(declare-fun defaultEntry!882 () Int)

(declare-datatypes ((V!40965 0))(
  ( (V!40966 (val!13496 Int)) )
))
(declare-fun minValue!831 () V!40965)

(declare-datatypes ((tuple2!17236 0))(
  ( (tuple2!17237 (_1!8628 (_ BitVec 64)) (_2!8628 V!40965)) )
))
(declare-datatypes ((List!23879 0))(
  ( (Nil!23876) (Cons!23875 (h!25084 tuple2!17236) (t!33821 List!23879)) )
))
(declare-datatypes ((ListLongMap!15217 0))(
  ( (ListLongMap!15218 (toList!7624 List!23879)) )
))
(declare-fun lt!488612 () ListLongMap!15217)

(declare-fun extraKeys!811 () (_ BitVec 32))

(declare-fun zeroValue!831 () V!40965)

(declare-datatypes ((ValueCell!12730 0))(
  ( (ValueCellFull!12730 (v!16118 V!40965)) (EmptyCell!12730) )
))
(declare-datatypes ((array!70634 0))(
  ( (array!70635 (arr!33987 (Array (_ BitVec 32) ValueCell!12730)) (size!34524 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!70634)

(declare-fun getCurrentListMap!4359 (array!70632 array!70634 (_ BitVec 32) (_ BitVec 32) V!40965 V!40965 (_ BitVec 32) Int) ListLongMap!15217)

(assert (=> b!1092892 (= lt!488612 (getCurrentListMap!4359 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun lt!488611 () array!70634)

(declare-fun lt!488609 () ListLongMap!15217)

(assert (=> b!1092892 (= lt!488609 (getCurrentListMap!4359 lt!488608 lt!488611 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun lt!488615 () ListLongMap!15217)

(declare-fun lt!488614 () ListLongMap!15217)

(assert (=> b!1092892 (and (= lt!488615 lt!488614) (= lt!488614 lt!488615))))

(declare-fun lt!488613 () ListLongMap!15217)

(declare-fun k!904 () (_ BitVec 64))

(declare-fun -!900 (ListLongMap!15217 (_ BitVec 64)) ListLongMap!15217)

(assert (=> b!1092892 (= lt!488614 (-!900 lt!488613 k!904))))

(declare-datatypes ((Unit!35915 0))(
  ( (Unit!35916) )
))
(declare-fun lt!488607 () Unit!35915)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!165 (array!70632 array!70634 (_ BitVec 32) (_ BitVec 32) V!40965 V!40965 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!35915)

(assert (=> b!1092892 (= lt!488607 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!165 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 i!650 k!904 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun getCurrentListMapNoExtraKeys!4111 (array!70632 array!70634 (_ BitVec 32) (_ BitVec 32) V!40965 V!40965 (_ BitVec 32) Int) ListLongMap!15217)

(assert (=> b!1092892 (= lt!488615 (getCurrentListMapNoExtraKeys!4111 lt!488608 lt!488611 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun dynLambda!2247 (Int (_ BitVec 64)) V!40965)

(assert (=> b!1092892 (= lt!488611 (array!70635 (store (arr!33987 _values!874) i!650 (ValueCellFull!12730 (dynLambda!2247 defaultEntry!882 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!34524 _values!874)))))

(assert (=> b!1092892 (= lt!488613 (getCurrentListMapNoExtraKeys!4111 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun arrayContainsKey!0 (array!70632 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1092892 (arrayContainsKey!0 _keys!1070 k!904 #b00000000000000000000000000000000)))

(declare-fun lt!488610 () Unit!35915)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!70632 (_ BitVec 64) (_ BitVec 32)) Unit!35915)

(assert (=> b!1092892 (= lt!488610 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1070 k!904 i!650))))

(declare-fun b!1092893 () Bool)

(declare-fun e!624121 () Bool)

(declare-fun mapRes!42073 () Bool)

(assert (=> b!1092893 (= e!624121 (and e!624123 mapRes!42073))))

(declare-fun condMapEmpty!42073 () Bool)

(declare-fun mapDefault!42073 () ValueCell!12730)

