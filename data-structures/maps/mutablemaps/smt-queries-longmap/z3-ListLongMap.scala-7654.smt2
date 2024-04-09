; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!96282 () Bool)

(assert start!96282)

(declare-fun b_free!22899 () Bool)

(declare-fun b_next!22899 () Bool)

(assert (=> start!96282 (= b_free!22899 (not b_next!22899))))

(declare-fun tp!80546 () Bool)

(declare-fun b_and!36491 () Bool)

(assert (=> start!96282 (= tp!80546 b_and!36491)))

(declare-fun b!1093305 () Bool)

(declare-fun e!624319 () Bool)

(declare-fun tp_is_empty!26901 () Bool)

(assert (=> b!1093305 (= e!624319 tp_is_empty!26901)))

(declare-fun b!1093306 () Bool)

(declare-fun e!624320 () Bool)

(assert (=> b!1093306 (= e!624320 tp_is_empty!26901)))

(declare-fun b!1093307 () Bool)

(declare-fun res!729661 () Bool)

(declare-fun e!624317 () Bool)

(assert (=> b!1093307 (=> (not res!729661) (not e!624317))))

(declare-fun i!650 () (_ BitVec 32))

(declare-datatypes ((array!70676 0))(
  ( (array!70677 (arr!34008 (Array (_ BitVec 32) (_ BitVec 64))) (size!34545 (_ BitVec 32))) )
))
(declare-fun _keys!1070 () array!70676)

(assert (=> b!1093307 (= res!729661 (and (bvsge i!650 #b00000000000000000000000000000000) (bvslt i!650 (size!34545 _keys!1070))))))

(declare-fun b!1093308 () Bool)

(declare-fun res!729662 () Bool)

(declare-fun e!624318 () Bool)

(assert (=> b!1093308 (=> (not res!729662) (not e!624318))))

(declare-fun lt!488920 () array!70676)

(declare-datatypes ((List!23896 0))(
  ( (Nil!23893) (Cons!23892 (h!25101 (_ BitVec 64)) (t!33860 List!23896)) )
))
(declare-fun arrayNoDuplicates!0 (array!70676 (_ BitVec 32) List!23896) Bool)

(assert (=> b!1093308 (= res!729662 (arrayNoDuplicates!0 lt!488920 #b00000000000000000000000000000000 Nil!23893))))

(declare-fun mapIsEmpty!42106 () Bool)

(declare-fun mapRes!42106 () Bool)

(assert (=> mapIsEmpty!42106 mapRes!42106))

(declare-fun mapNonEmpty!42106 () Bool)

(declare-fun tp!80547 () Bool)

(assert (=> mapNonEmpty!42106 (= mapRes!42106 (and tp!80547 e!624319))))

(declare-datatypes ((V!40995 0))(
  ( (V!40996 (val!13507 Int)) )
))
(declare-datatypes ((ValueCell!12741 0))(
  ( (ValueCellFull!12741 (v!16129 V!40995)) (EmptyCell!12741) )
))
(declare-datatypes ((array!70678 0))(
  ( (array!70679 (arr!34009 (Array (_ BitVec 32) ValueCell!12741)) (size!34546 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!70678)

(declare-fun mapValue!42106 () ValueCell!12741)

(declare-fun mapKey!42106 () (_ BitVec 32))

(declare-fun mapRest!42106 () (Array (_ BitVec 32) ValueCell!12741))

(assert (=> mapNonEmpty!42106 (= (arr!34009 _values!874) (store mapRest!42106 mapKey!42106 mapValue!42106))))

(declare-fun b!1093310 () Bool)

(declare-fun res!729657 () Bool)

(assert (=> b!1093310 (=> (not res!729657) (not e!624317))))

(declare-fun k0!904 () (_ BitVec 64))

(assert (=> b!1093310 (= res!729657 (= (select (arr!34008 _keys!1070) i!650) k0!904))))

(declare-fun b!1093311 () Bool)

(assert (=> b!1093311 (= e!624317 e!624318)))

(declare-fun res!729658 () Bool)

(assert (=> b!1093311 (=> (not res!729658) (not e!624318))))

(declare-fun mask!1414 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!70676 (_ BitVec 32)) Bool)

(assert (=> b!1093311 (= res!729658 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!488920 mask!1414))))

(assert (=> b!1093311 (= lt!488920 (array!70677 (store (arr!34008 _keys!1070) i!650 #b1000000000000000000000000000000000000000000000000000000000000000) (size!34545 _keys!1070)))))

(declare-fun b!1093312 () Bool)

(declare-fun res!729655 () Bool)

(assert (=> b!1093312 (=> (not res!729655) (not e!624317))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1093312 (= res!729655 (validKeyInArray!0 k0!904))))

(declare-fun b!1093313 () Bool)

(declare-fun res!729656 () Bool)

(assert (=> b!1093313 (=> (not res!729656) (not e!624317))))

(assert (=> b!1093313 (= res!729656 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1070 mask!1414))))

(declare-fun b!1093309 () Bool)

(declare-fun res!729654 () Bool)

(assert (=> b!1093309 (=> (not res!729654) (not e!624317))))

(assert (=> b!1093309 (= res!729654 (arrayNoDuplicates!0 _keys!1070 #b00000000000000000000000000000000 Nil!23893))))

(declare-fun res!729660 () Bool)

(assert (=> start!96282 (=> (not res!729660) (not e!624317))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!96282 (= res!729660 (validMask!0 mask!1414))))

(assert (=> start!96282 e!624317))

(assert (=> start!96282 tp!80546))

(assert (=> start!96282 true))

(assert (=> start!96282 tp_is_empty!26901))

(declare-fun array_inv!26064 (array!70676) Bool)

(assert (=> start!96282 (array_inv!26064 _keys!1070)))

(declare-fun e!624321 () Bool)

(declare-fun array_inv!26065 (array!70678) Bool)

(assert (=> start!96282 (and (array_inv!26065 _values!874) e!624321)))

(declare-fun b!1093314 () Bool)

(declare-fun res!729659 () Bool)

(assert (=> b!1093314 (=> (not res!729659) (not e!624317))))

(declare-fun extraKeys!811 () (_ BitVec 32))

(assert (=> b!1093314 (= res!729659 (and (= (size!34546 _values!874) (bvadd #b00000000000000000000000000000001 mask!1414)) (= (size!34545 _keys!1070) (size!34546 _values!874)) (bvsge mask!1414 #b00000000000000000000000000000000) (bvsge extraKeys!811 #b00000000000000000000000000000000) (bvsle extraKeys!811 #b00000000000000000000000000000011)))))

(declare-fun b!1093315 () Bool)

(assert (=> b!1093315 (= e!624318 (not true))))

(declare-fun defaultEntry!882 () Int)

(declare-fun zeroValue!831 () V!40995)

(declare-datatypes ((tuple2!17250 0))(
  ( (tuple2!17251 (_1!8635 (_ BitVec 64)) (_2!8635 V!40995)) )
))
(declare-datatypes ((List!23897 0))(
  ( (Nil!23894) (Cons!23893 (h!25102 tuple2!17250) (t!33861 List!23897)) )
))
(declare-datatypes ((ListLongMap!15231 0))(
  ( (ListLongMap!15232 (toList!7631 List!23897)) )
))
(declare-fun lt!488921 () ListLongMap!15231)

(declare-fun minValue!831 () V!40995)

(declare-fun getCurrentListMap!4366 (array!70676 array!70678 (_ BitVec 32) (_ BitVec 32) V!40995 V!40995 (_ BitVec 32) Int) ListLongMap!15231)

(assert (=> b!1093315 (= lt!488921 (getCurrentListMap!4366 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun lt!488916 () array!70678)

(declare-fun lt!488918 () ListLongMap!15231)

(assert (=> b!1093315 (= lt!488918 (getCurrentListMap!4366 lt!488920 lt!488916 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun lt!488914 () ListLongMap!15231)

(declare-fun lt!488913 () ListLongMap!15231)

(assert (=> b!1093315 (and (= lt!488914 lt!488913) (= lt!488913 lt!488914))))

(declare-fun lt!488919 () ListLongMap!15231)

(declare-fun -!907 (ListLongMap!15231 (_ BitVec 64)) ListLongMap!15231)

(assert (=> b!1093315 (= lt!488913 (-!907 lt!488919 k0!904))))

(declare-datatypes ((Unit!35929 0))(
  ( (Unit!35930) )
))
(declare-fun lt!488917 () Unit!35929)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!172 (array!70676 array!70678 (_ BitVec 32) (_ BitVec 32) V!40995 V!40995 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!35929)

(assert (=> b!1093315 (= lt!488917 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!172 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 i!650 k0!904 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun getCurrentListMapNoExtraKeys!4118 (array!70676 array!70678 (_ BitVec 32) (_ BitVec 32) V!40995 V!40995 (_ BitVec 32) Int) ListLongMap!15231)

(assert (=> b!1093315 (= lt!488914 (getCurrentListMapNoExtraKeys!4118 lt!488920 lt!488916 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun dynLambda!2254 (Int (_ BitVec 64)) V!40995)

(assert (=> b!1093315 (= lt!488916 (array!70679 (store (arr!34009 _values!874) i!650 (ValueCellFull!12741 (dynLambda!2254 defaultEntry!882 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!34546 _values!874)))))

(assert (=> b!1093315 (= lt!488919 (getCurrentListMapNoExtraKeys!4118 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun arrayContainsKey!0 (array!70676 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1093315 (arrayContainsKey!0 _keys!1070 k0!904 #b00000000000000000000000000000000)))

(declare-fun lt!488915 () Unit!35929)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!70676 (_ BitVec 64) (_ BitVec 32)) Unit!35929)

(assert (=> b!1093315 (= lt!488915 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1070 k0!904 i!650))))

(declare-fun b!1093316 () Bool)

(assert (=> b!1093316 (= e!624321 (and e!624320 mapRes!42106))))

(declare-fun condMapEmpty!42106 () Bool)

(declare-fun mapDefault!42106 () ValueCell!12741)

(assert (=> b!1093316 (= condMapEmpty!42106 (= (arr!34009 _values!874) ((as const (Array (_ BitVec 32) ValueCell!12741)) mapDefault!42106)))))

(assert (= (and start!96282 res!729660) b!1093314))

(assert (= (and b!1093314 res!729659) b!1093313))

(assert (= (and b!1093313 res!729656) b!1093309))

(assert (= (and b!1093309 res!729654) b!1093307))

(assert (= (and b!1093307 res!729661) b!1093312))

(assert (= (and b!1093312 res!729655) b!1093310))

(assert (= (and b!1093310 res!729657) b!1093311))

(assert (= (and b!1093311 res!729658) b!1093308))

(assert (= (and b!1093308 res!729662) b!1093315))

(assert (= (and b!1093316 condMapEmpty!42106) mapIsEmpty!42106))

(assert (= (and b!1093316 (not condMapEmpty!42106)) mapNonEmpty!42106))

(get-info :version)

(assert (= (and mapNonEmpty!42106 ((_ is ValueCellFull!12741) mapValue!42106)) b!1093305))

(assert (= (and b!1093316 ((_ is ValueCellFull!12741) mapDefault!42106)) b!1093306))

(assert (= start!96282 b!1093316))

(declare-fun b_lambda!17599 () Bool)

(assert (=> (not b_lambda!17599) (not b!1093315)))

(declare-fun t!33859 () Bool)

(declare-fun tb!7785 () Bool)

(assert (=> (and start!96282 (= defaultEntry!882 defaultEntry!882) t!33859) tb!7785))

(declare-fun result!16081 () Bool)

(assert (=> tb!7785 (= result!16081 tp_is_empty!26901)))

(assert (=> b!1093315 t!33859))

(declare-fun b_and!36493 () Bool)

(assert (= b_and!36491 (and (=> t!33859 result!16081) b_and!36493)))

(declare-fun m!1013301 () Bool)

(assert (=> b!1093310 m!1013301))

(declare-fun m!1013303 () Bool)

(assert (=> mapNonEmpty!42106 m!1013303))

(declare-fun m!1013305 () Bool)

(assert (=> b!1093315 m!1013305))

(declare-fun m!1013307 () Bool)

(assert (=> b!1093315 m!1013307))

(declare-fun m!1013309 () Bool)

(assert (=> b!1093315 m!1013309))

(declare-fun m!1013311 () Bool)

(assert (=> b!1093315 m!1013311))

(declare-fun m!1013313 () Bool)

(assert (=> b!1093315 m!1013313))

(declare-fun m!1013315 () Bool)

(assert (=> b!1093315 m!1013315))

(declare-fun m!1013317 () Bool)

(assert (=> b!1093315 m!1013317))

(declare-fun m!1013319 () Bool)

(assert (=> b!1093315 m!1013319))

(declare-fun m!1013321 () Bool)

(assert (=> b!1093315 m!1013321))

(declare-fun m!1013323 () Bool)

(assert (=> b!1093315 m!1013323))

(declare-fun m!1013325 () Bool)

(assert (=> b!1093309 m!1013325))

(declare-fun m!1013327 () Bool)

(assert (=> b!1093313 m!1013327))

(declare-fun m!1013329 () Bool)

(assert (=> b!1093312 m!1013329))

(declare-fun m!1013331 () Bool)

(assert (=> start!96282 m!1013331))

(declare-fun m!1013333 () Bool)

(assert (=> start!96282 m!1013333))

(declare-fun m!1013335 () Bool)

(assert (=> start!96282 m!1013335))

(declare-fun m!1013337 () Bool)

(assert (=> b!1093308 m!1013337))

(declare-fun m!1013339 () Bool)

(assert (=> b!1093311 m!1013339))

(declare-fun m!1013341 () Bool)

(assert (=> b!1093311 m!1013341))

(check-sat (not b!1093313) (not b!1093315) b_and!36493 (not b_lambda!17599) (not b!1093312) (not b_next!22899) (not b!1093308) (not b!1093309) tp_is_empty!26901 (not b!1093311) (not start!96282) (not mapNonEmpty!42106))
(check-sat b_and!36493 (not b_next!22899))
