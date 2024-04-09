; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!96298 () Bool)

(assert start!96298)

(declare-fun b_free!22915 () Bool)

(declare-fun b_next!22915 () Bool)

(assert (=> start!96298 (= b_free!22915 (not b_next!22915))))

(declare-fun tp!80595 () Bool)

(declare-fun b_and!36523 () Bool)

(assert (=> start!96298 (= tp!80595 b_and!36523)))

(declare-fun mapNonEmpty!42130 () Bool)

(declare-fun mapRes!42130 () Bool)

(declare-fun tp!80594 () Bool)

(declare-fun e!624466 () Bool)

(assert (=> mapNonEmpty!42130 (= mapRes!42130 (and tp!80594 e!624466))))

(declare-datatypes ((V!41017 0))(
  ( (V!41018 (val!13515 Int)) )
))
(declare-datatypes ((ValueCell!12749 0))(
  ( (ValueCellFull!12749 (v!16137 V!41017)) (EmptyCell!12749) )
))
(declare-datatypes ((array!70708 0))(
  ( (array!70709 (arr!34024 (Array (_ BitVec 32) ValueCell!12749)) (size!34561 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!70708)

(declare-fun mapValue!42130 () ValueCell!12749)

(declare-fun mapKey!42130 () (_ BitVec 32))

(declare-fun mapRest!42130 () (Array (_ BitVec 32) ValueCell!12749))

(assert (=> mapNonEmpty!42130 (= (arr!34024 _values!874) (store mapRest!42130 mapKey!42130 mapValue!42130))))

(declare-fun b!1093609 () Bool)

(declare-fun res!729870 () Bool)

(declare-fun e!624465 () Bool)

(assert (=> b!1093609 (=> (not res!729870) (not e!624465))))

(declare-datatypes ((array!70710 0))(
  ( (array!70711 (arr!34025 (Array (_ BitVec 32) (_ BitVec 64))) (size!34562 (_ BitVec 32))) )
))
(declare-fun _keys!1070 () array!70710)

(declare-fun k!904 () (_ BitVec 64))

(declare-fun i!650 () (_ BitVec 32))

(assert (=> b!1093609 (= res!729870 (= (select (arr!34025 _keys!1070) i!650) k!904))))

(declare-fun res!729873 () Bool)

(assert (=> start!96298 (=> (not res!729873) (not e!624465))))

(declare-fun mask!1414 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!96298 (= res!729873 (validMask!0 mask!1414))))

(assert (=> start!96298 e!624465))

(assert (=> start!96298 tp!80595))

(assert (=> start!96298 true))

(declare-fun tp_is_empty!26917 () Bool)

(assert (=> start!96298 tp_is_empty!26917))

(declare-fun array_inv!26076 (array!70710) Bool)

(assert (=> start!96298 (array_inv!26076 _keys!1070)))

(declare-fun e!624463 () Bool)

(declare-fun array_inv!26077 (array!70708) Bool)

(assert (=> start!96298 (and (array_inv!26077 _values!874) e!624463)))

(declare-fun b!1093610 () Bool)

(assert (=> b!1093610 (= e!624466 tp_is_empty!26917)))

(declare-fun b!1093611 () Bool)

(declare-fun e!624464 () Bool)

(assert (=> b!1093611 (= e!624464 (not true))))

(declare-fun defaultEntry!882 () Int)

(declare-fun minValue!831 () V!41017)

(declare-fun extraKeys!811 () (_ BitVec 32))

(declare-datatypes ((tuple2!17262 0))(
  ( (tuple2!17263 (_1!8641 (_ BitVec 64)) (_2!8641 V!41017)) )
))
(declare-datatypes ((List!23908 0))(
  ( (Nil!23905) (Cons!23904 (h!25113 tuple2!17262) (t!33888 List!23908)) )
))
(declare-datatypes ((ListLongMap!15243 0))(
  ( (ListLongMap!15244 (toList!7637 List!23908)) )
))
(declare-fun lt!489129 () ListLongMap!15243)

(declare-fun zeroValue!831 () V!41017)

(declare-fun getCurrentListMap!4372 (array!70710 array!70708 (_ BitVec 32) (_ BitVec 32) V!41017 V!41017 (_ BitVec 32) Int) ListLongMap!15243)

(assert (=> b!1093611 (= lt!489129 (getCurrentListMap!4372 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun lt!489136 () ListLongMap!15243)

(declare-fun lt!489130 () array!70708)

(declare-fun lt!489131 () array!70710)

(assert (=> b!1093611 (= lt!489136 (getCurrentListMap!4372 lt!489131 lt!489130 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun lt!489135 () ListLongMap!15243)

(declare-fun lt!489137 () ListLongMap!15243)

(assert (=> b!1093611 (and (= lt!489135 lt!489137) (= lt!489137 lt!489135))))

(declare-fun lt!489132 () ListLongMap!15243)

(declare-fun -!913 (ListLongMap!15243 (_ BitVec 64)) ListLongMap!15243)

(assert (=> b!1093611 (= lt!489137 (-!913 lt!489132 k!904))))

(declare-datatypes ((Unit!35941 0))(
  ( (Unit!35942) )
))
(declare-fun lt!489134 () Unit!35941)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!178 (array!70710 array!70708 (_ BitVec 32) (_ BitVec 32) V!41017 V!41017 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!35941)

(assert (=> b!1093611 (= lt!489134 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!178 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 i!650 k!904 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun getCurrentListMapNoExtraKeys!4124 (array!70710 array!70708 (_ BitVec 32) (_ BitVec 32) V!41017 V!41017 (_ BitVec 32) Int) ListLongMap!15243)

(assert (=> b!1093611 (= lt!489135 (getCurrentListMapNoExtraKeys!4124 lt!489131 lt!489130 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun dynLambda!2260 (Int (_ BitVec 64)) V!41017)

(assert (=> b!1093611 (= lt!489130 (array!70709 (store (arr!34024 _values!874) i!650 (ValueCellFull!12749 (dynLambda!2260 defaultEntry!882 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!34561 _values!874)))))

(assert (=> b!1093611 (= lt!489132 (getCurrentListMapNoExtraKeys!4124 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun arrayContainsKey!0 (array!70710 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1093611 (arrayContainsKey!0 _keys!1070 k!904 #b00000000000000000000000000000000)))

(declare-fun lt!489133 () Unit!35941)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!70710 (_ BitVec 64) (_ BitVec 32)) Unit!35941)

(assert (=> b!1093611 (= lt!489133 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1070 k!904 i!650))))

(declare-fun b!1093612 () Bool)

(declare-fun res!729875 () Bool)

(assert (=> b!1093612 (=> (not res!729875) (not e!624465))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!70710 (_ BitVec 32)) Bool)

(assert (=> b!1093612 (= res!729875 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1070 mask!1414))))

(declare-fun b!1093613 () Bool)

(declare-fun res!729874 () Bool)

(assert (=> b!1093613 (=> (not res!729874) (not e!624465))))

(declare-datatypes ((List!23909 0))(
  ( (Nil!23906) (Cons!23905 (h!25114 (_ BitVec 64)) (t!33889 List!23909)) )
))
(declare-fun arrayNoDuplicates!0 (array!70710 (_ BitVec 32) List!23909) Bool)

(assert (=> b!1093613 (= res!729874 (arrayNoDuplicates!0 _keys!1070 #b00000000000000000000000000000000 Nil!23906))))

(declare-fun mapIsEmpty!42130 () Bool)

(assert (=> mapIsEmpty!42130 mapRes!42130))

(declare-fun b!1093614 () Bool)

(declare-fun res!729878 () Bool)

(assert (=> b!1093614 (=> (not res!729878) (not e!624465))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1093614 (= res!729878 (validKeyInArray!0 k!904))))

(declare-fun b!1093615 () Bool)

(declare-fun res!729877 () Bool)

(assert (=> b!1093615 (=> (not res!729877) (not e!624464))))

(assert (=> b!1093615 (= res!729877 (arrayNoDuplicates!0 lt!489131 #b00000000000000000000000000000000 Nil!23906))))

(declare-fun b!1093616 () Bool)

(declare-fun res!729871 () Bool)

(assert (=> b!1093616 (=> (not res!729871) (not e!624465))))

(assert (=> b!1093616 (= res!729871 (and (bvsge i!650 #b00000000000000000000000000000000) (bvslt i!650 (size!34562 _keys!1070))))))

(declare-fun b!1093617 () Bool)

(declare-fun e!624462 () Bool)

(assert (=> b!1093617 (= e!624462 tp_is_empty!26917)))

(declare-fun b!1093618 () Bool)

(assert (=> b!1093618 (= e!624463 (and e!624462 mapRes!42130))))

(declare-fun condMapEmpty!42130 () Bool)

(declare-fun mapDefault!42130 () ValueCell!12749)

