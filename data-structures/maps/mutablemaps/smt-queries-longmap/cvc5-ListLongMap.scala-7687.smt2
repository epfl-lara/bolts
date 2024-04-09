; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!96504 () Bool)

(assert start!96504)

(declare-fun b_free!23047 () Bool)

(declare-fun b_next!23047 () Bool)

(assert (=> start!96504 (= b_free!23047 (not b_next!23047))))

(declare-fun tp!81068 () Bool)

(declare-fun b_and!36775 () Bool)

(assert (=> start!96504 (= tp!81068 b_and!36775)))

(declare-fun b!1096928 () Bool)

(declare-fun e!626131 () Bool)

(declare-fun tp_is_empty!27097 () Bool)

(assert (=> b!1096928 (= e!626131 tp_is_empty!27097)))

(declare-fun b!1096929 () Bool)

(declare-fun res!732212 () Bool)

(declare-fun e!626133 () Bool)

(assert (=> b!1096929 (=> (not res!732212) (not e!626133))))

(declare-fun i!650 () (_ BitVec 32))

(declare-datatypes ((array!71054 0))(
  ( (array!71055 (arr!34195 (Array (_ BitVec 32) (_ BitVec 64))) (size!34732 (_ BitVec 32))) )
))
(declare-fun _keys!1070 () array!71054)

(assert (=> b!1096929 (= res!732212 (and (bvsge i!650 #b00000000000000000000000000000000) (bvslt i!650 (size!34732 _keys!1070))))))

(declare-fun b!1096930 () Bool)

(declare-fun e!626132 () Bool)

(assert (=> b!1096930 (= e!626133 e!626132)))

(declare-fun res!732211 () Bool)

(assert (=> b!1096930 (=> (not res!732211) (not e!626132))))

(declare-fun lt!490302 () array!71054)

(declare-fun mask!1414 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!71054 (_ BitVec 32)) Bool)

(assert (=> b!1096930 (= res!732211 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!490302 mask!1414))))

(assert (=> b!1096930 (= lt!490302 (array!71055 (store (arr!34195 _keys!1070) i!650 #b1000000000000000000000000000000000000000000000000000000000000000) (size!34732 _keys!1070)))))

(declare-fun mapIsEmpty!42406 () Bool)

(declare-fun mapRes!42406 () Bool)

(assert (=> mapIsEmpty!42406 mapRes!42406))

(declare-fun res!732215 () Bool)

(assert (=> start!96504 (=> (not res!732215) (not e!626133))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!96504 (= res!732215 (validMask!0 mask!1414))))

(assert (=> start!96504 e!626133))

(assert (=> start!96504 tp!81068))

(assert (=> start!96504 true))

(assert (=> start!96504 tp_is_empty!27097))

(declare-fun array_inv!26200 (array!71054) Bool)

(assert (=> start!96504 (array_inv!26200 _keys!1070)))

(declare-datatypes ((V!41257 0))(
  ( (V!41258 (val!13605 Int)) )
))
(declare-datatypes ((ValueCell!12839 0))(
  ( (ValueCellFull!12839 (v!16227 V!41257)) (EmptyCell!12839) )
))
(declare-datatypes ((array!71056 0))(
  ( (array!71057 (arr!34196 (Array (_ BitVec 32) ValueCell!12839)) (size!34733 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!71056)

(declare-fun e!626129 () Bool)

(declare-fun array_inv!26201 (array!71056) Bool)

(assert (=> start!96504 (and (array_inv!26201 _values!874) e!626129)))

(declare-fun b!1096931 () Bool)

(declare-fun res!732213 () Bool)

(assert (=> b!1096931 (=> (not res!732213) (not e!626132))))

(declare-datatypes ((List!24017 0))(
  ( (Nil!24014) (Cons!24013 (h!25222 (_ BitVec 64)) (t!34117 List!24017)) )
))
(declare-fun arrayNoDuplicates!0 (array!71054 (_ BitVec 32) List!24017) Bool)

(assert (=> b!1096931 (= res!732213 (arrayNoDuplicates!0 lt!490302 #b00000000000000000000000000000000 Nil!24014))))

(declare-fun mapNonEmpty!42406 () Bool)

(declare-fun tp!81069 () Bool)

(declare-fun e!626128 () Bool)

(assert (=> mapNonEmpty!42406 (= mapRes!42406 (and tp!81069 e!626128))))

(declare-fun mapKey!42406 () (_ BitVec 32))

(declare-fun mapValue!42406 () ValueCell!12839)

(declare-fun mapRest!42406 () (Array (_ BitVec 32) ValueCell!12839))

(assert (=> mapNonEmpty!42406 (= (arr!34196 _values!874) (store mapRest!42406 mapKey!42406 mapValue!42406))))

(declare-fun b!1096932 () Bool)

(declare-fun res!732217 () Bool)

(assert (=> b!1096932 (=> (not res!732217) (not e!626133))))

(assert (=> b!1096932 (= res!732217 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1070 mask!1414))))

(declare-fun b!1096933 () Bool)

(declare-datatypes ((tuple2!17340 0))(
  ( (tuple2!17341 (_1!8680 (_ BitVec 64)) (_2!8680 V!41257)) )
))
(declare-datatypes ((List!24018 0))(
  ( (Nil!24015) (Cons!24014 (h!25223 tuple2!17340) (t!34118 List!24018)) )
))
(declare-datatypes ((ListLongMap!15321 0))(
  ( (ListLongMap!15322 (toList!7676 List!24018)) )
))
(declare-fun lt!490303 () ListLongMap!15321)

(declare-fun lt!490299 () ListLongMap!15321)

(assert (=> b!1096933 (= e!626132 (not (= lt!490303 lt!490299)))))

(assert (=> b!1096933 (= lt!490299 lt!490303)))

(declare-fun lt!490301 () ListLongMap!15321)

(declare-fun k!904 () (_ BitVec 64))

(declare-fun -!923 (ListLongMap!15321 (_ BitVec 64)) ListLongMap!15321)

(assert (=> b!1096933 (= lt!490303 (-!923 lt!490301 k!904))))

(declare-fun defaultEntry!882 () Int)

(declare-fun minValue!831 () V!41257)

(declare-fun extraKeys!811 () (_ BitVec 32))

(declare-datatypes ((Unit!36025 0))(
  ( (Unit!36026) )
))
(declare-fun lt!490304 () Unit!36025)

(declare-fun zeroValue!831 () V!41257)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!188 (array!71054 array!71056 (_ BitVec 32) (_ BitVec 32) V!41257 V!41257 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!36025)

(assert (=> b!1096933 (= lt!490304 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!188 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 i!650 k!904 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun getCurrentListMapNoExtraKeys!4163 (array!71054 array!71056 (_ BitVec 32) (_ BitVec 32) V!41257 V!41257 (_ BitVec 32) Int) ListLongMap!15321)

(declare-fun dynLambda!2294 (Int (_ BitVec 64)) V!41257)

(assert (=> b!1096933 (= lt!490299 (getCurrentListMapNoExtraKeys!4163 lt!490302 (array!71057 (store (arr!34196 _values!874) i!650 (ValueCellFull!12839 (dynLambda!2294 defaultEntry!882 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!34733 _values!874)) mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(assert (=> b!1096933 (= lt!490301 (getCurrentListMapNoExtraKeys!4163 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun arrayContainsKey!0 (array!71054 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1096933 (arrayContainsKey!0 _keys!1070 k!904 #b00000000000000000000000000000000)))

(declare-fun lt!490300 () Unit!36025)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!71054 (_ BitVec 64) (_ BitVec 32)) Unit!36025)

(assert (=> b!1096933 (= lt!490300 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1070 k!904 i!650))))

(declare-fun b!1096934 () Bool)

(declare-fun res!732214 () Bool)

(assert (=> b!1096934 (=> (not res!732214) (not e!626133))))

(assert (=> b!1096934 (= res!732214 (arrayNoDuplicates!0 _keys!1070 #b00000000000000000000000000000000 Nil!24014))))

(declare-fun b!1096935 () Bool)

(declare-fun res!732219 () Bool)

(assert (=> b!1096935 (=> (not res!732219) (not e!626133))))

(assert (=> b!1096935 (= res!732219 (and (= (size!34733 _values!874) (bvadd #b00000000000000000000000000000001 mask!1414)) (= (size!34732 _keys!1070) (size!34733 _values!874)) (bvsge mask!1414 #b00000000000000000000000000000000) (bvsge extraKeys!811 #b00000000000000000000000000000000) (bvsle extraKeys!811 #b00000000000000000000000000000011)))))

(declare-fun b!1096936 () Bool)

(declare-fun res!732216 () Bool)

(assert (=> b!1096936 (=> (not res!732216) (not e!626133))))

(assert (=> b!1096936 (= res!732216 (= (select (arr!34195 _keys!1070) i!650) k!904))))

(declare-fun b!1096937 () Bool)

(assert (=> b!1096937 (= e!626128 tp_is_empty!27097)))

(declare-fun b!1096938 () Bool)

(assert (=> b!1096938 (= e!626129 (and e!626131 mapRes!42406))))

(declare-fun condMapEmpty!42406 () Bool)

(declare-fun mapDefault!42406 () ValueCell!12839)

