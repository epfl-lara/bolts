; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!96266 () Bool)

(assert start!96266)

(declare-fun b_free!22883 () Bool)

(declare-fun b_next!22883 () Bool)

(assert (=> start!96266 (= b_free!22883 (not b_next!22883))))

(declare-fun tp!80499 () Bool)

(declare-fun b_and!36459 () Bool)

(assert (=> start!96266 (= tp!80499 b_and!36459)))

(declare-fun b!1093001 () Bool)

(declare-fun res!729442 () Bool)

(declare-fun e!624175 () Bool)

(assert (=> b!1093001 (=> (not res!729442) (not e!624175))))

(declare-fun k!904 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1093001 (= res!729442 (validKeyInArray!0 k!904))))

(declare-fun b!1093002 () Bool)

(declare-fun e!624176 () Bool)

(declare-fun tp_is_empty!26885 () Bool)

(assert (=> b!1093002 (= e!624176 tp_is_empty!26885)))

(declare-fun b!1093003 () Bool)

(declare-fun res!729439 () Bool)

(assert (=> b!1093003 (=> (not res!729439) (not e!624175))))

(declare-datatypes ((array!70644 0))(
  ( (array!70645 (arr!33992 (Array (_ BitVec 32) (_ BitVec 64))) (size!34529 (_ BitVec 32))) )
))
(declare-fun _keys!1070 () array!70644)

(declare-datatypes ((List!23883 0))(
  ( (Nil!23880) (Cons!23879 (h!25088 (_ BitVec 64)) (t!33831 List!23883)) )
))
(declare-fun arrayNoDuplicates!0 (array!70644 (_ BitVec 32) List!23883) Bool)

(assert (=> b!1093003 (= res!729439 (arrayNoDuplicates!0 _keys!1070 #b00000000000000000000000000000000 Nil!23880))))

(declare-fun b!1093004 () Bool)

(declare-fun e!624177 () Bool)

(assert (=> b!1093004 (= e!624175 e!624177)))

(declare-fun res!729446 () Bool)

(assert (=> b!1093004 (=> (not res!729446) (not e!624177))))

(declare-fun lt!488695 () array!70644)

(declare-fun mask!1414 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!70644 (_ BitVec 32)) Bool)

(assert (=> b!1093004 (= res!729446 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!488695 mask!1414))))

(declare-fun i!650 () (_ BitVec 32))

(assert (=> b!1093004 (= lt!488695 (array!70645 (store (arr!33992 _keys!1070) i!650 #b1000000000000000000000000000000000000000000000000000000000000000) (size!34529 _keys!1070)))))

(declare-fun b!1093005 () Bool)

(assert (=> b!1093005 (= e!624177 (not true))))

(declare-fun defaultEntry!882 () Int)

(declare-datatypes ((V!40973 0))(
  ( (V!40974 (val!13499 Int)) )
))
(declare-fun minValue!831 () V!40973)

(declare-datatypes ((tuple2!17240 0))(
  ( (tuple2!17241 (_1!8630 (_ BitVec 64)) (_2!8630 V!40973)) )
))
(declare-datatypes ((List!23884 0))(
  ( (Nil!23881) (Cons!23880 (h!25089 tuple2!17240) (t!33832 List!23884)) )
))
(declare-datatypes ((ListLongMap!15221 0))(
  ( (ListLongMap!15222 (toList!7626 List!23884)) )
))
(declare-fun lt!488690 () ListLongMap!15221)

(declare-fun extraKeys!811 () (_ BitVec 32))

(declare-fun zeroValue!831 () V!40973)

(declare-datatypes ((ValueCell!12733 0))(
  ( (ValueCellFull!12733 (v!16121 V!40973)) (EmptyCell!12733) )
))
(declare-datatypes ((array!70646 0))(
  ( (array!70647 (arr!33993 (Array (_ BitVec 32) ValueCell!12733)) (size!34530 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!70646)

(declare-fun getCurrentListMap!4361 (array!70644 array!70646 (_ BitVec 32) (_ BitVec 32) V!40973 V!40973 (_ BitVec 32) Int) ListLongMap!15221)

(assert (=> b!1093005 (= lt!488690 (getCurrentListMap!4361 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun lt!488696 () array!70646)

(declare-fun lt!488693 () ListLongMap!15221)

(assert (=> b!1093005 (= lt!488693 (getCurrentListMap!4361 lt!488695 lt!488696 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun lt!488688 () ListLongMap!15221)

(declare-fun lt!488689 () ListLongMap!15221)

(assert (=> b!1093005 (and (= lt!488688 lt!488689) (= lt!488689 lt!488688))))

(declare-fun lt!488691 () ListLongMap!15221)

(declare-fun -!902 (ListLongMap!15221 (_ BitVec 64)) ListLongMap!15221)

(assert (=> b!1093005 (= lt!488689 (-!902 lt!488691 k!904))))

(declare-datatypes ((Unit!35919 0))(
  ( (Unit!35920) )
))
(declare-fun lt!488694 () Unit!35919)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!167 (array!70644 array!70646 (_ BitVec 32) (_ BitVec 32) V!40973 V!40973 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!35919)

(assert (=> b!1093005 (= lt!488694 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!167 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 i!650 k!904 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun getCurrentListMapNoExtraKeys!4113 (array!70644 array!70646 (_ BitVec 32) (_ BitVec 32) V!40973 V!40973 (_ BitVec 32) Int) ListLongMap!15221)

(assert (=> b!1093005 (= lt!488688 (getCurrentListMapNoExtraKeys!4113 lt!488695 lt!488696 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun dynLambda!2249 (Int (_ BitVec 64)) V!40973)

(assert (=> b!1093005 (= lt!488696 (array!70647 (store (arr!33993 _values!874) i!650 (ValueCellFull!12733 (dynLambda!2249 defaultEntry!882 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!34530 _values!874)))))

(assert (=> b!1093005 (= lt!488691 (getCurrentListMapNoExtraKeys!4113 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun arrayContainsKey!0 (array!70644 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1093005 (arrayContainsKey!0 _keys!1070 k!904 #b00000000000000000000000000000000)))

(declare-fun lt!488692 () Unit!35919)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!70644 (_ BitVec 64) (_ BitVec 32)) Unit!35919)

(assert (=> b!1093005 (= lt!488692 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1070 k!904 i!650))))

(declare-fun b!1093006 () Bool)

(declare-fun e!624174 () Bool)

(declare-fun mapRes!42082 () Bool)

(assert (=> b!1093006 (= e!624174 (and e!624176 mapRes!42082))))

(declare-fun condMapEmpty!42082 () Bool)

(declare-fun mapDefault!42082 () ValueCell!12733)

