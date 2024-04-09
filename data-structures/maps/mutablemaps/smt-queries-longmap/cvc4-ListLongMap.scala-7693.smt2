; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!96596 () Bool)

(assert start!96596)

(declare-fun b_free!23087 () Bool)

(declare-fun b_next!23087 () Bool)

(assert (=> start!96596 (= b_free!23087 (not b_next!23087))))

(declare-fun tp!81194 () Bool)

(declare-fun b_and!36883 () Bool)

(assert (=> start!96596 (= tp!81194 b_and!36883)))

(declare-fun mapNonEmpty!42472 () Bool)

(declare-fun mapRes!42472 () Bool)

(declare-fun tp!81195 () Bool)

(declare-fun e!626802 () Bool)

(assert (=> mapNonEmpty!42472 (= mapRes!42472 (and tp!81195 e!626802))))

(declare-datatypes ((V!41309 0))(
  ( (V!41310 (val!13625 Int)) )
))
(declare-datatypes ((ValueCell!12859 0))(
  ( (ValueCellFull!12859 (v!16249 V!41309)) (EmptyCell!12859) )
))
(declare-datatypes ((array!71138 0))(
  ( (array!71139 (arr!34235 (Array (_ BitVec 32) ValueCell!12859)) (size!34772 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!71138)

(declare-fun mapKey!42472 () (_ BitVec 32))

(declare-fun mapValue!42472 () ValueCell!12859)

(declare-fun mapRest!42472 () (Array (_ BitVec 32) ValueCell!12859))

(assert (=> mapNonEmpty!42472 (= (arr!34235 _values!874) (store mapRest!42472 mapKey!42472 mapValue!42472))))

(declare-fun mapIsEmpty!42472 () Bool)

(assert (=> mapIsEmpty!42472 mapRes!42472))

(declare-fun b!1098151 () Bool)

(declare-fun e!626804 () Bool)

(declare-fun e!626809 () Bool)

(assert (=> b!1098151 (= e!626804 (not e!626809))))

(declare-fun res!732998 () Bool)

(assert (=> b!1098151 (=> res!732998 e!626809)))

(declare-fun extraKeys!811 () (_ BitVec 32))

(assert (=> b!1098151 (= res!732998 (or (= (bvand extraKeys!811 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (= (bvand extraKeys!811 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun defaultEntry!882 () Int)

(declare-fun minValue!831 () V!41309)

(declare-fun mask!1414 () (_ BitVec 32))

(declare-datatypes ((tuple2!17372 0))(
  ( (tuple2!17373 (_1!8696 (_ BitVec 64)) (_2!8696 V!41309)) )
))
(declare-datatypes ((List!24049 0))(
  ( (Nil!24046) (Cons!24045 (h!25254 tuple2!17372) (t!34189 List!24049)) )
))
(declare-datatypes ((ListLongMap!15353 0))(
  ( (ListLongMap!15354 (toList!7692 List!24049)) )
))
(declare-fun lt!491136 () ListLongMap!15353)

(declare-fun zeroValue!831 () V!41309)

(declare-datatypes ((array!71140 0))(
  ( (array!71141 (arr!34236 (Array (_ BitVec 32) (_ BitVec 64))) (size!34773 (_ BitVec 32))) )
))
(declare-fun _keys!1070 () array!71140)

(declare-fun getCurrentListMap!4390 (array!71140 array!71138 (_ BitVec 32) (_ BitVec 32) V!41309 V!41309 (_ BitVec 32) Int) ListLongMap!15353)

(assert (=> b!1098151 (= lt!491136 (getCurrentListMap!4390 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun lt!491137 () array!71140)

(declare-fun lt!491132 () array!71138)

(declare-fun lt!491131 () ListLongMap!15353)

(assert (=> b!1098151 (= lt!491131 (getCurrentListMap!4390 lt!491137 lt!491132 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun lt!491139 () ListLongMap!15353)

(declare-fun lt!491133 () ListLongMap!15353)

(assert (=> b!1098151 (and (= lt!491139 lt!491133) (= lt!491133 lt!491139))))

(declare-fun lt!491130 () ListLongMap!15353)

(declare-fun k!904 () (_ BitVec 64))

(declare-fun -!937 (ListLongMap!15353 (_ BitVec 64)) ListLongMap!15353)

(assert (=> b!1098151 (= lt!491133 (-!937 lt!491130 k!904))))

(declare-fun i!650 () (_ BitVec 32))

(declare-datatypes ((Unit!36057 0))(
  ( (Unit!36058) )
))
(declare-fun lt!491134 () Unit!36057)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!202 (array!71140 array!71138 (_ BitVec 32) (_ BitVec 32) V!41309 V!41309 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!36057)

(assert (=> b!1098151 (= lt!491134 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!202 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 i!650 k!904 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun getCurrentListMapNoExtraKeys!4177 (array!71140 array!71138 (_ BitVec 32) (_ BitVec 32) V!41309 V!41309 (_ BitVec 32) Int) ListLongMap!15353)

(assert (=> b!1098151 (= lt!491139 (getCurrentListMapNoExtraKeys!4177 lt!491137 lt!491132 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun dynLambda!2308 (Int (_ BitVec 64)) V!41309)

(assert (=> b!1098151 (= lt!491132 (array!71139 (store (arr!34235 _values!874) i!650 (ValueCellFull!12859 (dynLambda!2308 defaultEntry!882 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!34772 _values!874)))))

(assert (=> b!1098151 (= lt!491130 (getCurrentListMapNoExtraKeys!4177 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun arrayContainsKey!0 (array!71140 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1098151 (arrayContainsKey!0 _keys!1070 k!904 #b00000000000000000000000000000000)))

(declare-fun lt!491140 () Unit!36057)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!71140 (_ BitVec 64) (_ BitVec 32)) Unit!36057)

(assert (=> b!1098151 (= lt!491140 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1070 k!904 i!650))))

(declare-fun b!1098152 () Bool)

(declare-fun res!732999 () Bool)

(assert (=> b!1098152 (=> (not res!732999) (not e!626804))))

(declare-datatypes ((List!24050 0))(
  ( (Nil!24047) (Cons!24046 (h!25255 (_ BitVec 64)) (t!34190 List!24050)) )
))
(declare-fun arrayNoDuplicates!0 (array!71140 (_ BitVec 32) List!24050) Bool)

(assert (=> b!1098152 (= res!732999 (arrayNoDuplicates!0 lt!491137 #b00000000000000000000000000000000 Nil!24047))))

(declare-fun b!1098153 () Bool)

(declare-fun res!733002 () Bool)

(declare-fun e!626805 () Bool)

(assert (=> b!1098153 (=> (not res!733002) (not e!626805))))

(assert (=> b!1098153 (= res!733002 (and (bvsge i!650 #b00000000000000000000000000000000) (bvslt i!650 (size!34773 _keys!1070))))))

(declare-fun b!1098154 () Bool)

(declare-fun res!732995 () Bool)

(assert (=> b!1098154 (=> (not res!732995) (not e!626805))))

(assert (=> b!1098154 (= res!732995 (= (select (arr!34236 _keys!1070) i!650) k!904))))

(declare-fun b!1098155 () Bool)

(declare-fun res!732996 () Bool)

(assert (=> b!1098155 (=> (not res!732996) (not e!626805))))

(assert (=> b!1098155 (= res!732996 (and (= (size!34772 _values!874) (bvadd #b00000000000000000000000000000001 mask!1414)) (= (size!34773 _keys!1070) (size!34772 _values!874)) (bvsge mask!1414 #b00000000000000000000000000000000) (bvsge extraKeys!811 #b00000000000000000000000000000000) (bvsle extraKeys!811 #b00000000000000000000000000000011)))))

(declare-fun b!1098156 () Bool)

(declare-fun res!732993 () Bool)

(assert (=> b!1098156 (=> (not res!732993) (not e!626805))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!71140 (_ BitVec 32)) Bool)

(assert (=> b!1098156 (= res!732993 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1070 mask!1414))))

(declare-fun b!1098157 () Bool)

(declare-fun res!733001 () Bool)

(assert (=> b!1098157 (=> (not res!733001) (not e!626805))))

(assert (=> b!1098157 (= res!733001 (arrayNoDuplicates!0 _keys!1070 #b00000000000000000000000000000000 Nil!24047))))

(declare-fun b!1098158 () Bool)

(assert (=> b!1098158 (= e!626805 e!626804)))

(declare-fun res!733000 () Bool)

(assert (=> b!1098158 (=> (not res!733000) (not e!626804))))

(assert (=> b!1098158 (= res!733000 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!491137 mask!1414))))

(assert (=> b!1098158 (= lt!491137 (array!71141 (store (arr!34236 _keys!1070) i!650 #b1000000000000000000000000000000000000000000000000000000000000000) (size!34773 _keys!1070)))))

(declare-fun b!1098159 () Bool)

(assert (=> b!1098159 (= e!626809 (not (= #b0000000000000000000000000000000000000000000000000000000000000000 k!904)))))

(declare-fun e!626803 () Bool)

(assert (=> b!1098159 e!626803))

(declare-fun res!732997 () Bool)

(assert (=> b!1098159 (=> (not res!732997) (not e!626803))))

(declare-fun lt!491135 () tuple2!17372)

(declare-fun lt!491138 () tuple2!17372)

(declare-fun +!3327 (ListLongMap!15353 tuple2!17372) ListLongMap!15353)

(assert (=> b!1098159 (= res!732997 (= lt!491131 (+!3327 (+!3327 lt!491139 lt!491138) lt!491135)))))

(assert (=> b!1098159 (= lt!491135 (tuple2!17373 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!831))))

(assert (=> b!1098159 (= lt!491138 (tuple2!17373 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!831))))

(declare-fun b!1098160 () Bool)

(declare-fun res!733003 () Bool)

(assert (=> b!1098160 (=> (not res!733003) (not e!626805))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1098160 (= res!733003 (validKeyInArray!0 k!904))))

(declare-fun b!1098161 () Bool)

(declare-fun e!626808 () Bool)

(declare-fun tp_is_empty!27137 () Bool)

(assert (=> b!1098161 (= e!626808 tp_is_empty!27137)))

(declare-fun b!1098162 () Bool)

(assert (=> b!1098162 (= e!626803 (= lt!491131 (+!3327 (+!3327 lt!491133 lt!491138) lt!491135)))))

(declare-fun b!1098150 () Bool)

(declare-fun res!732994 () Bool)

(assert (=> b!1098150 (=> (not res!732994) (not e!626803))))

(assert (=> b!1098150 (= res!732994 (= lt!491136 (+!3327 (+!3327 lt!491130 lt!491138) lt!491135)))))

(declare-fun res!733004 () Bool)

(assert (=> start!96596 (=> (not res!733004) (not e!626805))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!96596 (= res!733004 (validMask!0 mask!1414))))

(assert (=> start!96596 e!626805))

(assert (=> start!96596 tp!81194))

(assert (=> start!96596 true))

(assert (=> start!96596 tp_is_empty!27137))

(declare-fun array_inv!26232 (array!71140) Bool)

(assert (=> start!96596 (array_inv!26232 _keys!1070)))

(declare-fun e!626806 () Bool)

(declare-fun array_inv!26233 (array!71138) Bool)

(assert (=> start!96596 (and (array_inv!26233 _values!874) e!626806)))

(declare-fun b!1098163 () Bool)

(assert (=> b!1098163 (= e!626802 tp_is_empty!27137)))

(declare-fun b!1098164 () Bool)

(assert (=> b!1098164 (= e!626806 (and e!626808 mapRes!42472))))

(declare-fun condMapEmpty!42472 () Bool)

(declare-fun mapDefault!42472 () ValueCell!12859)

