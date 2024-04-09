; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!96234 () Bool)

(assert start!96234)

(declare-fun b_free!22851 () Bool)

(declare-fun b_next!22851 () Bool)

(assert (=> start!96234 (= b_free!22851 (not b_next!22851))))

(declare-fun tp!80403 () Bool)

(declare-fun b_and!36395 () Bool)

(assert (=> start!96234 (= tp!80403 b_and!36395)))

(declare-fun b!1092393 () Bool)

(declare-fun res!729008 () Bool)

(declare-fun e!623888 () Bool)

(assert (=> b!1092393 (=> (not res!729008) (not e!623888))))

(declare-fun i!650 () (_ BitVec 32))

(declare-datatypes ((array!70586 0))(
  ( (array!70587 (arr!33963 (Array (_ BitVec 32) (_ BitVec 64))) (size!34500 (_ BitVec 32))) )
))
(declare-fun _keys!1070 () array!70586)

(assert (=> b!1092393 (= res!729008 (and (bvsge i!650 #b00000000000000000000000000000000) (bvslt i!650 (size!34500 _keys!1070))))))

(declare-fun b!1092394 () Bool)

(declare-fun res!729009 () Bool)

(assert (=> b!1092394 (=> (not res!729009) (not e!623888))))

(declare-fun mask!1414 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!70586 (_ BitVec 32)) Bool)

(assert (=> b!1092394 (= res!729009 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1070 mask!1414))))

(declare-fun b!1092395 () Bool)

(declare-fun res!729007 () Bool)

(assert (=> b!1092395 (=> (not res!729007) (not e!623888))))

(declare-fun k0!904 () (_ BitVec 64))

(assert (=> b!1092395 (= res!729007 (= (select (arr!33963 _keys!1070) i!650) k0!904))))

(declare-fun b!1092396 () Bool)

(declare-fun e!623887 () Bool)

(assert (=> b!1092396 (= e!623888 e!623887)))

(declare-fun res!729012 () Bool)

(assert (=> b!1092396 (=> (not res!729012) (not e!623887))))

(declare-fun lt!488259 () array!70586)

(assert (=> b!1092396 (= res!729012 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!488259 mask!1414))))

(assert (=> b!1092396 (= lt!488259 (array!70587 (store (arr!33963 _keys!1070) i!650 #b1000000000000000000000000000000000000000000000000000000000000000) (size!34500 _keys!1070)))))

(declare-fun b!1092397 () Bool)

(declare-fun e!623886 () Bool)

(declare-fun e!623885 () Bool)

(declare-fun mapRes!42034 () Bool)

(assert (=> b!1092397 (= e!623886 (and e!623885 mapRes!42034))))

(declare-fun condMapEmpty!42034 () Bool)

(declare-datatypes ((V!40931 0))(
  ( (V!40932 (val!13483 Int)) )
))
(declare-datatypes ((ValueCell!12717 0))(
  ( (ValueCellFull!12717 (v!16105 V!40931)) (EmptyCell!12717) )
))
(declare-datatypes ((array!70588 0))(
  ( (array!70589 (arr!33964 (Array (_ BitVec 32) ValueCell!12717)) (size!34501 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!70588)

(declare-fun mapDefault!42034 () ValueCell!12717)

(assert (=> b!1092397 (= condMapEmpty!42034 (= (arr!33964 _values!874) ((as const (Array (_ BitVec 32) ValueCell!12717)) mapDefault!42034)))))

(declare-fun b!1092398 () Bool)

(assert (=> b!1092398 (= e!623887 (not true))))

(declare-fun defaultEntry!882 () Int)

(declare-fun minValue!831 () V!40931)

(declare-fun extraKeys!811 () (_ BitVec 32))

(declare-datatypes ((tuple2!17226 0))(
  ( (tuple2!17227 (_1!8623 (_ BitVec 64)) (_2!8623 V!40931)) )
))
(declare-datatypes ((List!23864 0))(
  ( (Nil!23861) (Cons!23860 (h!25069 tuple2!17226) (t!33780 List!23864)) )
))
(declare-datatypes ((ListLongMap!15207 0))(
  ( (ListLongMap!15208 (toList!7619 List!23864)) )
))
(declare-fun lt!488258 () ListLongMap!15207)

(declare-fun zeroValue!831 () V!40931)

(declare-fun getCurrentListMap!4354 (array!70586 array!70588 (_ BitVec 32) (_ BitVec 32) V!40931 V!40931 (_ BitVec 32) Int) ListLongMap!15207)

(assert (=> b!1092398 (= lt!488258 (getCurrentListMap!4354 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun lt!488264 () ListLongMap!15207)

(declare-fun lt!488260 () array!70588)

(assert (=> b!1092398 (= lt!488264 (getCurrentListMap!4354 lt!488259 lt!488260 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun lt!488256 () ListLongMap!15207)

(declare-fun lt!488262 () ListLongMap!15207)

(assert (=> b!1092398 (and (= lt!488256 lt!488262) (= lt!488262 lt!488256))))

(declare-fun lt!488261 () ListLongMap!15207)

(declare-fun -!895 (ListLongMap!15207 (_ BitVec 64)) ListLongMap!15207)

(assert (=> b!1092398 (= lt!488262 (-!895 lt!488261 k0!904))))

(declare-datatypes ((Unit!35905 0))(
  ( (Unit!35906) )
))
(declare-fun lt!488263 () Unit!35905)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!160 (array!70586 array!70588 (_ BitVec 32) (_ BitVec 32) V!40931 V!40931 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!35905)

(assert (=> b!1092398 (= lt!488263 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!160 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 i!650 k0!904 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun getCurrentListMapNoExtraKeys!4106 (array!70586 array!70588 (_ BitVec 32) (_ BitVec 32) V!40931 V!40931 (_ BitVec 32) Int) ListLongMap!15207)

(assert (=> b!1092398 (= lt!488256 (getCurrentListMapNoExtraKeys!4106 lt!488259 lt!488260 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun dynLambda!2242 (Int (_ BitVec 64)) V!40931)

(assert (=> b!1092398 (= lt!488260 (array!70589 (store (arr!33964 _values!874) i!650 (ValueCellFull!12717 (dynLambda!2242 defaultEntry!882 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!34501 _values!874)))))

(assert (=> b!1092398 (= lt!488261 (getCurrentListMapNoExtraKeys!4106 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun arrayContainsKey!0 (array!70586 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1092398 (arrayContainsKey!0 _keys!1070 k0!904 #b00000000000000000000000000000000)))

(declare-fun lt!488257 () Unit!35905)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!70586 (_ BitVec 64) (_ BitVec 32)) Unit!35905)

(assert (=> b!1092398 (= lt!488257 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1070 k0!904 i!650))))

(declare-fun b!1092399 () Bool)

(declare-fun res!729011 () Bool)

(assert (=> b!1092399 (=> (not res!729011) (not e!623888))))

(assert (=> b!1092399 (= res!729011 (and (= (size!34501 _values!874) (bvadd #b00000000000000000000000000000001 mask!1414)) (= (size!34500 _keys!1070) (size!34501 _values!874)) (bvsge mask!1414 #b00000000000000000000000000000000) (bvsge extraKeys!811 #b00000000000000000000000000000000) (bvsle extraKeys!811 #b00000000000000000000000000000011)))))

(declare-fun b!1092400 () Bool)

(declare-fun res!729010 () Bool)

(assert (=> b!1092400 (=> (not res!729010) (not e!623887))))

(declare-datatypes ((List!23865 0))(
  ( (Nil!23862) (Cons!23861 (h!25070 (_ BitVec 64)) (t!33781 List!23865)) )
))
(declare-fun arrayNoDuplicates!0 (array!70586 (_ BitVec 32) List!23865) Bool)

(assert (=> b!1092400 (= res!729010 (arrayNoDuplicates!0 lt!488259 #b00000000000000000000000000000000 Nil!23862))))

(declare-fun b!1092401 () Bool)

(declare-fun res!729014 () Bool)

(assert (=> b!1092401 (=> (not res!729014) (not e!623888))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1092401 (= res!729014 (validKeyInArray!0 k0!904))))

(declare-fun b!1092402 () Bool)

(declare-fun tp_is_empty!26853 () Bool)

(assert (=> b!1092402 (= e!623885 tp_is_empty!26853)))

(declare-fun mapNonEmpty!42034 () Bool)

(declare-fun tp!80402 () Bool)

(declare-fun e!623890 () Bool)

(assert (=> mapNonEmpty!42034 (= mapRes!42034 (and tp!80402 e!623890))))

(declare-fun mapKey!42034 () (_ BitVec 32))

(declare-fun mapValue!42034 () ValueCell!12717)

(declare-fun mapRest!42034 () (Array (_ BitVec 32) ValueCell!12717))

(assert (=> mapNonEmpty!42034 (= (arr!33964 _values!874) (store mapRest!42034 mapKey!42034 mapValue!42034))))

(declare-fun b!1092403 () Bool)

(declare-fun res!729013 () Bool)

(assert (=> b!1092403 (=> (not res!729013) (not e!623888))))

(assert (=> b!1092403 (= res!729013 (arrayNoDuplicates!0 _keys!1070 #b00000000000000000000000000000000 Nil!23862))))

(declare-fun res!729006 () Bool)

(assert (=> start!96234 (=> (not res!729006) (not e!623888))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!96234 (= res!729006 (validMask!0 mask!1414))))

(assert (=> start!96234 e!623888))

(assert (=> start!96234 tp!80403))

(assert (=> start!96234 true))

(assert (=> start!96234 tp_is_empty!26853))

(declare-fun array_inv!26038 (array!70586) Bool)

(assert (=> start!96234 (array_inv!26038 _keys!1070)))

(declare-fun array_inv!26039 (array!70588) Bool)

(assert (=> start!96234 (and (array_inv!26039 _values!874) e!623886)))

(declare-fun b!1092404 () Bool)

(assert (=> b!1092404 (= e!623890 tp_is_empty!26853)))

(declare-fun mapIsEmpty!42034 () Bool)

(assert (=> mapIsEmpty!42034 mapRes!42034))

(assert (= (and start!96234 res!729006) b!1092399))

(assert (= (and b!1092399 res!729011) b!1092394))

(assert (= (and b!1092394 res!729009) b!1092403))

(assert (= (and b!1092403 res!729013) b!1092393))

(assert (= (and b!1092393 res!729008) b!1092401))

(assert (= (and b!1092401 res!729014) b!1092395))

(assert (= (and b!1092395 res!729007) b!1092396))

(assert (= (and b!1092396 res!729012) b!1092400))

(assert (= (and b!1092400 res!729010) b!1092398))

(assert (= (and b!1092397 condMapEmpty!42034) mapIsEmpty!42034))

(assert (= (and b!1092397 (not condMapEmpty!42034)) mapNonEmpty!42034))

(get-info :version)

(assert (= (and mapNonEmpty!42034 ((_ is ValueCellFull!12717) mapValue!42034)) b!1092404))

(assert (= (and b!1092397 ((_ is ValueCellFull!12717) mapDefault!42034)) b!1092402))

(assert (= start!96234 b!1092397))

(declare-fun b_lambda!17551 () Bool)

(assert (=> (not b_lambda!17551) (not b!1092398)))

(declare-fun t!33779 () Bool)

(declare-fun tb!7737 () Bool)

(assert (=> (and start!96234 (= defaultEntry!882 defaultEntry!882) t!33779) tb!7737))

(declare-fun result!15985 () Bool)

(assert (=> tb!7737 (= result!15985 tp_is_empty!26853)))

(assert (=> b!1092398 t!33779))

(declare-fun b_and!36397 () Bool)

(assert (= b_and!36395 (and (=> t!33779 result!15985) b_and!36397)))

(declare-fun m!1012293 () Bool)

(assert (=> mapNonEmpty!42034 m!1012293))

(declare-fun m!1012295 () Bool)

(assert (=> b!1092400 m!1012295))

(declare-fun m!1012297 () Bool)

(assert (=> b!1092401 m!1012297))

(declare-fun m!1012299 () Bool)

(assert (=> b!1092394 m!1012299))

(declare-fun m!1012301 () Bool)

(assert (=> b!1092396 m!1012301))

(declare-fun m!1012303 () Bool)

(assert (=> b!1092396 m!1012303))

(declare-fun m!1012305 () Bool)

(assert (=> b!1092403 m!1012305))

(declare-fun m!1012307 () Bool)

(assert (=> start!96234 m!1012307))

(declare-fun m!1012309 () Bool)

(assert (=> start!96234 m!1012309))

(declare-fun m!1012311 () Bool)

(assert (=> start!96234 m!1012311))

(declare-fun m!1012313 () Bool)

(assert (=> b!1092398 m!1012313))

(declare-fun m!1012315 () Bool)

(assert (=> b!1092398 m!1012315))

(declare-fun m!1012317 () Bool)

(assert (=> b!1092398 m!1012317))

(declare-fun m!1012319 () Bool)

(assert (=> b!1092398 m!1012319))

(declare-fun m!1012321 () Bool)

(assert (=> b!1092398 m!1012321))

(declare-fun m!1012323 () Bool)

(assert (=> b!1092398 m!1012323))

(declare-fun m!1012325 () Bool)

(assert (=> b!1092398 m!1012325))

(declare-fun m!1012327 () Bool)

(assert (=> b!1092398 m!1012327))

(declare-fun m!1012329 () Bool)

(assert (=> b!1092398 m!1012329))

(declare-fun m!1012331 () Bool)

(assert (=> b!1092398 m!1012331))

(declare-fun m!1012333 () Bool)

(assert (=> b!1092395 m!1012333))

(check-sat (not b!1092394) (not b!1092401) (not b_next!22851) b_and!36397 (not b_lambda!17551) (not b!1092398) (not start!96234) (not b!1092403) (not mapNonEmpty!42034) (not b!1092396) (not b!1092400) tp_is_empty!26853)
(check-sat b_and!36397 (not b_next!22851))
