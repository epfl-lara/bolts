; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!96518 () Bool)

(assert start!96518)

(declare-fun b_free!23061 () Bool)

(declare-fun b_next!23061 () Bool)

(assert (=> start!96518 (= b_free!23061 (not b_next!23061))))

(declare-fun tp!81110 () Bool)

(declare-fun b_and!36803 () Bool)

(assert (=> start!96518 (= tp!81110 b_and!36803)))

(declare-fun b!1097194 () Bool)

(declare-fun e!626257 () Bool)

(declare-fun i!650 () (_ BitVec 32))

(declare-datatypes ((V!41275 0))(
  ( (V!41276 (val!13612 Int)) )
))
(declare-datatypes ((ValueCell!12846 0))(
  ( (ValueCellFull!12846 (v!16234 V!41275)) (EmptyCell!12846) )
))
(declare-datatypes ((array!71082 0))(
  ( (array!71083 (arr!34209 (Array (_ BitVec 32) ValueCell!12846)) (size!34746 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!71082)

(assert (=> b!1097194 (= e!626257 (not (bvslt i!650 (size!34746 _values!874))))))

(declare-datatypes ((tuple2!17350 0))(
  ( (tuple2!17351 (_1!8685 (_ BitVec 64)) (_2!8685 V!41275)) )
))
(declare-datatypes ((List!24028 0))(
  ( (Nil!24025) (Cons!24024 (h!25233 tuple2!17350) (t!34142 List!24028)) )
))
(declare-datatypes ((ListLongMap!15331 0))(
  ( (ListLongMap!15332 (toList!7681 List!24028)) )
))
(declare-fun lt!490428 () ListLongMap!15331)

(declare-fun lt!490425 () ListLongMap!15331)

(assert (=> b!1097194 (and (= lt!490428 lt!490425) (= lt!490425 lt!490428))))

(declare-fun lt!490429 () ListLongMap!15331)

(declare-fun k0!904 () (_ BitVec 64))

(declare-fun -!928 (ListLongMap!15331 (_ BitVec 64)) ListLongMap!15331)

(assert (=> b!1097194 (= lt!490425 (-!928 lt!490429 k0!904))))

(declare-fun defaultEntry!882 () Int)

(declare-fun minValue!831 () V!41275)

(declare-fun mask!1414 () (_ BitVec 32))

(declare-fun extraKeys!811 () (_ BitVec 32))

(declare-datatypes ((Unit!36035 0))(
  ( (Unit!36036) )
))
(declare-fun lt!490430 () Unit!36035)

(declare-fun zeroValue!831 () V!41275)

(declare-datatypes ((array!71084 0))(
  ( (array!71085 (arr!34210 (Array (_ BitVec 32) (_ BitVec 64))) (size!34747 (_ BitVec 32))) )
))
(declare-fun _keys!1070 () array!71084)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!193 (array!71084 array!71082 (_ BitVec 32) (_ BitVec 32) V!41275 V!41275 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!36035)

(assert (=> b!1097194 (= lt!490430 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!193 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 i!650 k0!904 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun lt!490426 () array!71084)

(declare-fun getCurrentListMapNoExtraKeys!4168 (array!71084 array!71082 (_ BitVec 32) (_ BitVec 32) V!41275 V!41275 (_ BitVec 32) Int) ListLongMap!15331)

(declare-fun dynLambda!2299 (Int (_ BitVec 64)) V!41275)

(assert (=> b!1097194 (= lt!490428 (getCurrentListMapNoExtraKeys!4168 lt!490426 (array!71083 (store (arr!34209 _values!874) i!650 (ValueCellFull!12846 (dynLambda!2299 defaultEntry!882 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!34746 _values!874)) mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(assert (=> b!1097194 (= lt!490429 (getCurrentListMapNoExtraKeys!4168 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun arrayContainsKey!0 (array!71084 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1097194 (arrayContainsKey!0 _keys!1070 k0!904 #b00000000000000000000000000000000)))

(declare-fun lt!490427 () Unit!36035)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!71084 (_ BitVec 64) (_ BitVec 32)) Unit!36035)

(assert (=> b!1097194 (= lt!490427 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1070 k0!904 i!650))))

(declare-fun b!1097195 () Bool)

(declare-fun res!732401 () Bool)

(declare-fun e!626255 () Bool)

(assert (=> b!1097195 (=> (not res!732401) (not e!626255))))

(assert (=> b!1097195 (= res!732401 (= (select (arr!34210 _keys!1070) i!650) k0!904))))

(declare-fun b!1097196 () Bool)

(declare-fun res!732406 () Bool)

(assert (=> b!1097196 (=> (not res!732406) (not e!626255))))

(assert (=> b!1097196 (= res!732406 (and (= (size!34746 _values!874) (bvadd #b00000000000000000000000000000001 mask!1414)) (= (size!34747 _keys!1070) (size!34746 _values!874)) (bvsge mask!1414 #b00000000000000000000000000000000) (bvsge extraKeys!811 #b00000000000000000000000000000000) (bvsle extraKeys!811 #b00000000000000000000000000000011)))))

(declare-fun b!1097197 () Bool)

(declare-fun res!732402 () Bool)

(assert (=> b!1097197 (=> (not res!732402) (not e!626255))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!71084 (_ BitVec 32)) Bool)

(assert (=> b!1097197 (= res!732402 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1070 mask!1414))))

(declare-fun b!1097198 () Bool)

(declare-fun res!732408 () Bool)

(assert (=> b!1097198 (=> (not res!732408) (not e!626255))))

(declare-datatypes ((List!24029 0))(
  ( (Nil!24026) (Cons!24025 (h!25234 (_ BitVec 64)) (t!34143 List!24029)) )
))
(declare-fun arrayNoDuplicates!0 (array!71084 (_ BitVec 32) List!24029) Bool)

(assert (=> b!1097198 (= res!732408 (arrayNoDuplicates!0 _keys!1070 #b00000000000000000000000000000000 Nil!24026))))

(declare-fun b!1097199 () Bool)

(declare-fun e!626259 () Bool)

(declare-fun e!626254 () Bool)

(declare-fun mapRes!42427 () Bool)

(assert (=> b!1097199 (= e!626259 (and e!626254 mapRes!42427))))

(declare-fun condMapEmpty!42427 () Bool)

(declare-fun mapDefault!42427 () ValueCell!12846)

(assert (=> b!1097199 (= condMapEmpty!42427 (= (arr!34209 _values!874) ((as const (Array (_ BitVec 32) ValueCell!12846)) mapDefault!42427)))))

(declare-fun b!1097200 () Bool)

(declare-fun res!732400 () Bool)

(assert (=> b!1097200 (=> (not res!732400) (not e!626257))))

(assert (=> b!1097200 (= res!732400 (arrayNoDuplicates!0 lt!490426 #b00000000000000000000000000000000 Nil!24026))))

(declare-fun res!732407 () Bool)

(assert (=> start!96518 (=> (not res!732407) (not e!626255))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!96518 (= res!732407 (validMask!0 mask!1414))))

(assert (=> start!96518 e!626255))

(assert (=> start!96518 tp!81110))

(assert (=> start!96518 true))

(declare-fun tp_is_empty!27111 () Bool)

(assert (=> start!96518 tp_is_empty!27111))

(declare-fun array_inv!26210 (array!71084) Bool)

(assert (=> start!96518 (array_inv!26210 _keys!1070)))

(declare-fun array_inv!26211 (array!71082) Bool)

(assert (=> start!96518 (and (array_inv!26211 _values!874) e!626259)))

(declare-fun mapIsEmpty!42427 () Bool)

(assert (=> mapIsEmpty!42427 mapRes!42427))

(declare-fun b!1097201 () Bool)

(declare-fun res!732403 () Bool)

(assert (=> b!1097201 (=> (not res!732403) (not e!626255))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1097201 (= res!732403 (validKeyInArray!0 k0!904))))

(declare-fun b!1097202 () Bool)

(assert (=> b!1097202 (= e!626255 e!626257)))

(declare-fun res!732405 () Bool)

(assert (=> b!1097202 (=> (not res!732405) (not e!626257))))

(assert (=> b!1097202 (= res!732405 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!490426 mask!1414))))

(assert (=> b!1097202 (= lt!490426 (array!71085 (store (arr!34210 _keys!1070) i!650 #b1000000000000000000000000000000000000000000000000000000000000000) (size!34747 _keys!1070)))))

(declare-fun b!1097203 () Bool)

(declare-fun res!732404 () Bool)

(assert (=> b!1097203 (=> (not res!732404) (not e!626255))))

(assert (=> b!1097203 (= res!732404 (and (bvsge i!650 #b00000000000000000000000000000000) (bvslt i!650 (size!34747 _keys!1070))))))

(declare-fun b!1097204 () Bool)

(declare-fun e!626256 () Bool)

(assert (=> b!1097204 (= e!626256 tp_is_empty!27111)))

(declare-fun mapNonEmpty!42427 () Bool)

(declare-fun tp!81111 () Bool)

(assert (=> mapNonEmpty!42427 (= mapRes!42427 (and tp!81111 e!626256))))

(declare-fun mapKey!42427 () (_ BitVec 32))

(declare-fun mapRest!42427 () (Array (_ BitVec 32) ValueCell!12846))

(declare-fun mapValue!42427 () ValueCell!12846)

(assert (=> mapNonEmpty!42427 (= (arr!34209 _values!874) (store mapRest!42427 mapKey!42427 mapValue!42427))))

(declare-fun b!1097205 () Bool)

(assert (=> b!1097205 (= e!626254 tp_is_empty!27111)))

(assert (= (and start!96518 res!732407) b!1097196))

(assert (= (and b!1097196 res!732406) b!1097197))

(assert (= (and b!1097197 res!732402) b!1097198))

(assert (= (and b!1097198 res!732408) b!1097203))

(assert (= (and b!1097203 res!732404) b!1097201))

(assert (= (and b!1097201 res!732403) b!1097195))

(assert (= (and b!1097195 res!732401) b!1097202))

(assert (= (and b!1097202 res!732405) b!1097200))

(assert (= (and b!1097200 res!732400) b!1097194))

(assert (= (and b!1097199 condMapEmpty!42427) mapIsEmpty!42427))

(assert (= (and b!1097199 (not condMapEmpty!42427)) mapNonEmpty!42427))

(get-info :version)

(assert (= (and mapNonEmpty!42427 ((_ is ValueCellFull!12846) mapValue!42427)) b!1097204))

(assert (= (and b!1097199 ((_ is ValueCellFull!12846) mapDefault!42427)) b!1097205))

(assert (= start!96518 b!1097199))

(declare-fun b_lambda!17749 () Bool)

(assert (=> (not b_lambda!17749) (not b!1097194)))

(declare-fun t!34141 () Bool)

(declare-fun tb!7935 () Bool)

(assert (=> (and start!96518 (= defaultEntry!882 defaultEntry!882) t!34141) tb!7935))

(declare-fun result!16385 () Bool)

(assert (=> tb!7935 (= result!16385 tp_is_empty!27111)))

(assert (=> b!1097194 t!34141))

(declare-fun b_and!36805 () Bool)

(assert (= b_and!36803 (and (=> t!34141 result!16385) b_and!36805)))

(declare-fun m!1016805 () Bool)

(assert (=> b!1097194 m!1016805))

(declare-fun m!1016807 () Bool)

(assert (=> b!1097194 m!1016807))

(declare-fun m!1016809 () Bool)

(assert (=> b!1097194 m!1016809))

(declare-fun m!1016811 () Bool)

(assert (=> b!1097194 m!1016811))

(declare-fun m!1016813 () Bool)

(assert (=> b!1097194 m!1016813))

(declare-fun m!1016815 () Bool)

(assert (=> b!1097194 m!1016815))

(declare-fun m!1016817 () Bool)

(assert (=> b!1097194 m!1016817))

(declare-fun m!1016819 () Bool)

(assert (=> b!1097194 m!1016819))

(declare-fun m!1016821 () Bool)

(assert (=> b!1097201 m!1016821))

(declare-fun m!1016823 () Bool)

(assert (=> b!1097200 m!1016823))

(declare-fun m!1016825 () Bool)

(assert (=> mapNonEmpty!42427 m!1016825))

(declare-fun m!1016827 () Bool)

(assert (=> b!1097198 m!1016827))

(declare-fun m!1016829 () Bool)

(assert (=> start!96518 m!1016829))

(declare-fun m!1016831 () Bool)

(assert (=> start!96518 m!1016831))

(declare-fun m!1016833 () Bool)

(assert (=> start!96518 m!1016833))

(declare-fun m!1016835 () Bool)

(assert (=> b!1097195 m!1016835))

(declare-fun m!1016837 () Bool)

(assert (=> b!1097202 m!1016837))

(declare-fun m!1016839 () Bool)

(assert (=> b!1097202 m!1016839))

(declare-fun m!1016841 () Bool)

(assert (=> b!1097197 m!1016841))

(check-sat tp_is_empty!27111 (not b!1097200) (not start!96518) (not b!1097197) (not b_next!23061) (not mapNonEmpty!42427) (not b!1097202) (not b!1097201) b_and!36805 (not b!1097198) (not b!1097194) (not b_lambda!17749))
(check-sat b_and!36805 (not b_next!23061))
