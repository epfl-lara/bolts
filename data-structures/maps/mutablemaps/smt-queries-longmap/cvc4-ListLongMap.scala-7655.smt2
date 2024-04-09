; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!96290 () Bool)

(assert start!96290)

(declare-fun b_free!22907 () Bool)

(declare-fun b_next!22907 () Bool)

(assert (=> start!96290 (= b_free!22907 (not b_next!22907))))

(declare-fun tp!80571 () Bool)

(declare-fun b_and!36507 () Bool)

(assert (=> start!96290 (= tp!80571 b_and!36507)))

(declare-fun b!1093457 () Bool)

(declare-fun e!624391 () Bool)

(declare-fun tp_is_empty!26909 () Bool)

(assert (=> b!1093457 (= e!624391 tp_is_empty!26909)))

(declare-fun b!1093458 () Bool)

(declare-fun res!729765 () Bool)

(declare-fun e!624394 () Bool)

(assert (=> b!1093458 (=> (not res!729765) (not e!624394))))

(declare-fun i!650 () (_ BitVec 32))

(declare-datatypes ((array!70692 0))(
  ( (array!70693 (arr!34016 (Array (_ BitVec 32) (_ BitVec 64))) (size!34553 (_ BitVec 32))) )
))
(declare-fun _keys!1070 () array!70692)

(assert (=> b!1093458 (= res!729765 (and (bvsge i!650 #b00000000000000000000000000000000) (bvslt i!650 (size!34553 _keys!1070))))))

(declare-fun mapIsEmpty!42118 () Bool)

(declare-fun mapRes!42118 () Bool)

(assert (=> mapIsEmpty!42118 mapRes!42118))

(declare-fun b!1093459 () Bool)

(declare-fun e!624392 () Bool)

(assert (=> b!1093459 (= e!624392 tp_is_empty!26909)))

(declare-fun res!729763 () Bool)

(assert (=> start!96290 (=> (not res!729763) (not e!624394))))

(declare-fun mask!1414 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!96290 (= res!729763 (validMask!0 mask!1414))))

(assert (=> start!96290 e!624394))

(assert (=> start!96290 tp!80571))

(assert (=> start!96290 true))

(assert (=> start!96290 tp_is_empty!26909))

(declare-fun array_inv!26072 (array!70692) Bool)

(assert (=> start!96290 (array_inv!26072 _keys!1070)))

(declare-datatypes ((V!41005 0))(
  ( (V!41006 (val!13511 Int)) )
))
(declare-datatypes ((ValueCell!12745 0))(
  ( (ValueCellFull!12745 (v!16133 V!41005)) (EmptyCell!12745) )
))
(declare-datatypes ((array!70694 0))(
  ( (array!70695 (arr!34017 (Array (_ BitVec 32) ValueCell!12745)) (size!34554 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!70694)

(declare-fun e!624393 () Bool)

(declare-fun array_inv!26073 (array!70694) Bool)

(assert (=> start!96290 (and (array_inv!26073 _values!874) e!624393)))

(declare-fun b!1093460 () Bool)

(declare-fun res!729767 () Bool)

(assert (=> b!1093460 (=> (not res!729767) (not e!624394))))

(declare-datatypes ((List!23903 0))(
  ( (Nil!23900) (Cons!23899 (h!25108 (_ BitVec 64)) (t!33875 List!23903)) )
))
(declare-fun arrayNoDuplicates!0 (array!70692 (_ BitVec 32) List!23903) Bool)

(assert (=> b!1093460 (= res!729767 (arrayNoDuplicates!0 _keys!1070 #b00000000000000000000000000000000 Nil!23900))))

(declare-fun b!1093461 () Bool)

(declare-fun e!624389 () Bool)

(assert (=> b!1093461 (= e!624389 (not true))))

(declare-fun defaultEntry!882 () Int)

(declare-fun minValue!831 () V!41005)

(declare-fun extraKeys!811 () (_ BitVec 32))

(declare-fun zeroValue!831 () V!41005)

(declare-datatypes ((tuple2!17256 0))(
  ( (tuple2!17257 (_1!8638 (_ BitVec 64)) (_2!8638 V!41005)) )
))
(declare-datatypes ((List!23904 0))(
  ( (Nil!23901) (Cons!23900 (h!25109 tuple2!17256) (t!33876 List!23904)) )
))
(declare-datatypes ((ListLongMap!15237 0))(
  ( (ListLongMap!15238 (toList!7634 List!23904)) )
))
(declare-fun lt!489025 () ListLongMap!15237)

(declare-fun getCurrentListMap!4369 (array!70692 array!70694 (_ BitVec 32) (_ BitVec 32) V!41005 V!41005 (_ BitVec 32) Int) ListLongMap!15237)

(assert (=> b!1093461 (= lt!489025 (getCurrentListMap!4369 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun lt!489028 () array!70692)

(declare-fun lt!489021 () ListLongMap!15237)

(declare-fun lt!489022 () array!70694)

(assert (=> b!1093461 (= lt!489021 (getCurrentListMap!4369 lt!489028 lt!489022 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun lt!489026 () ListLongMap!15237)

(declare-fun lt!489023 () ListLongMap!15237)

(assert (=> b!1093461 (and (= lt!489026 lt!489023) (= lt!489023 lt!489026))))

(declare-fun lt!489029 () ListLongMap!15237)

(declare-fun k!904 () (_ BitVec 64))

(declare-fun -!910 (ListLongMap!15237 (_ BitVec 64)) ListLongMap!15237)

(assert (=> b!1093461 (= lt!489023 (-!910 lt!489029 k!904))))

(declare-datatypes ((Unit!35935 0))(
  ( (Unit!35936) )
))
(declare-fun lt!489024 () Unit!35935)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!175 (array!70692 array!70694 (_ BitVec 32) (_ BitVec 32) V!41005 V!41005 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!35935)

(assert (=> b!1093461 (= lt!489024 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!175 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 i!650 k!904 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun getCurrentListMapNoExtraKeys!4121 (array!70692 array!70694 (_ BitVec 32) (_ BitVec 32) V!41005 V!41005 (_ BitVec 32) Int) ListLongMap!15237)

(assert (=> b!1093461 (= lt!489026 (getCurrentListMapNoExtraKeys!4121 lt!489028 lt!489022 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun dynLambda!2257 (Int (_ BitVec 64)) V!41005)

(assert (=> b!1093461 (= lt!489022 (array!70695 (store (arr!34017 _values!874) i!650 (ValueCellFull!12745 (dynLambda!2257 defaultEntry!882 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!34554 _values!874)))))

(assert (=> b!1093461 (= lt!489029 (getCurrentListMapNoExtraKeys!4121 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun arrayContainsKey!0 (array!70692 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1093461 (arrayContainsKey!0 _keys!1070 k!904 #b00000000000000000000000000000000)))

(declare-fun lt!489027 () Unit!35935)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!70692 (_ BitVec 64) (_ BitVec 32)) Unit!35935)

(assert (=> b!1093461 (= lt!489027 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1070 k!904 i!650))))

(declare-fun b!1093462 () Bool)

(declare-fun res!729766 () Bool)

(assert (=> b!1093462 (=> (not res!729766) (not e!624394))))

(assert (=> b!1093462 (= res!729766 (= (select (arr!34016 _keys!1070) i!650) k!904))))

(declare-fun b!1093463 () Bool)

(declare-fun res!729770 () Bool)

(assert (=> b!1093463 (=> (not res!729770) (not e!624394))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1093463 (= res!729770 (validKeyInArray!0 k!904))))

(declare-fun mapNonEmpty!42118 () Bool)

(declare-fun tp!80570 () Bool)

(assert (=> mapNonEmpty!42118 (= mapRes!42118 (and tp!80570 e!624391))))

(declare-fun mapValue!42118 () ValueCell!12745)

(declare-fun mapRest!42118 () (Array (_ BitVec 32) ValueCell!12745))

(declare-fun mapKey!42118 () (_ BitVec 32))

(assert (=> mapNonEmpty!42118 (= (arr!34017 _values!874) (store mapRest!42118 mapKey!42118 mapValue!42118))))

(declare-fun b!1093464 () Bool)

(declare-fun res!729769 () Bool)

(assert (=> b!1093464 (=> (not res!729769) (not e!624394))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!70692 (_ BitVec 32)) Bool)

(assert (=> b!1093464 (= res!729769 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1070 mask!1414))))

(declare-fun b!1093465 () Bool)

(assert (=> b!1093465 (= e!624393 (and e!624392 mapRes!42118))))

(declare-fun condMapEmpty!42118 () Bool)

(declare-fun mapDefault!42118 () ValueCell!12745)

