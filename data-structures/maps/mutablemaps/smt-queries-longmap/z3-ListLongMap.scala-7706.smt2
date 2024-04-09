; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!96830 () Bool)

(assert start!96830)

(declare-fun b_free!23163 () Bool)

(declare-fun b_next!23163 () Bool)

(assert (=> start!96830 (= b_free!23163 (not b_next!23163))))

(declare-fun tp!81440 () Bool)

(declare-fun b_and!37119 () Bool)

(assert (=> start!96830 (= tp!81440 b_and!37119)))

(declare-datatypes ((V!41411 0))(
  ( (V!41412 (val!13663 Int)) )
))
(declare-datatypes ((tuple2!17438 0))(
  ( (tuple2!17439 (_1!8729 (_ BitVec 64)) (_2!8729 V!41411)) )
))
(declare-datatypes ((List!24110 0))(
  ( (Nil!24107) (Cons!24106 (h!25315 tuple2!17438) (t!34326 List!24110)) )
))
(declare-datatypes ((ListLongMap!15419 0))(
  ( (ListLongMap!15420 (toList!7725 List!24110)) )
))
(declare-fun lt!493518 () ListLongMap!15419)

(declare-fun e!628462 () Bool)

(declare-fun b!1100999 () Bool)

(declare-fun lt!493516 () ListLongMap!15419)

(declare-fun lt!493513 () tuple2!17438)

(declare-fun +!3357 (ListLongMap!15419 tuple2!17438) ListLongMap!15419)

(assert (=> b!1100999 (= e!628462 (= lt!493518 (+!3357 lt!493516 lt!493513)))))

(declare-fun lt!493510 () ListLongMap!15419)

(assert (=> b!1100999 (= lt!493518 (+!3357 lt!493510 lt!493513))))

(declare-fun minValue!831 () V!41411)

(assert (=> b!1100999 (= lt!493513 (tuple2!17439 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!831))))

(declare-fun b!1101000 () Bool)

(declare-fun res!734765 () Bool)

(declare-fun e!628463 () Bool)

(assert (=> b!1101000 (=> (not res!734765) (not e!628463))))

(declare-fun k0!904 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1101000 (= res!734765 (validKeyInArray!0 k0!904))))

(declare-fun b!1101001 () Bool)

(declare-fun res!734769 () Bool)

(assert (=> b!1101001 (=> (not res!734769) (not e!628463))))

(declare-fun mask!1414 () (_ BitVec 32))

(declare-fun extraKeys!811 () (_ BitVec 32))

(declare-datatypes ((array!71296 0))(
  ( (array!71297 (arr!34308 (Array (_ BitVec 32) (_ BitVec 64))) (size!34845 (_ BitVec 32))) )
))
(declare-fun _keys!1070 () array!71296)

(declare-datatypes ((ValueCell!12897 0))(
  ( (ValueCellFull!12897 (v!16293 V!41411)) (EmptyCell!12897) )
))
(declare-datatypes ((array!71298 0))(
  ( (array!71299 (arr!34309 (Array (_ BitVec 32) ValueCell!12897)) (size!34846 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!71298)

(assert (=> b!1101001 (= res!734769 (and (= (size!34846 _values!874) (bvadd #b00000000000000000000000000000001 mask!1414)) (= (size!34845 _keys!1070) (size!34846 _values!874)) (bvsge mask!1414 #b00000000000000000000000000000000) (bvsge extraKeys!811 #b00000000000000000000000000000000) (bvsle extraKeys!811 #b00000000000000000000000000000011)))))

(declare-fun b!1101002 () Bool)

(declare-fun e!628464 () Bool)

(declare-fun e!628460 () Bool)

(declare-fun mapRes!42604 () Bool)

(assert (=> b!1101002 (= e!628464 (and e!628460 mapRes!42604))))

(declare-fun condMapEmpty!42604 () Bool)

(declare-fun mapDefault!42604 () ValueCell!12897)

(assert (=> b!1101002 (= condMapEmpty!42604 (= (arr!34309 _values!874) ((as const (Array (_ BitVec 32) ValueCell!12897)) mapDefault!42604)))))

(declare-fun b!1101003 () Bool)

(declare-fun tp_is_empty!27213 () Bool)

(assert (=> b!1101003 (= e!628460 tp_is_empty!27213)))

(declare-fun b!1101004 () Bool)

(declare-fun e!628465 () Bool)

(assert (=> b!1101004 (= e!628465 (not e!628462))))

(declare-fun res!734766 () Bool)

(assert (=> b!1101004 (=> res!734766 e!628462)))

(assert (=> b!1101004 (= res!734766 (or (not (= (bvand extraKeys!811 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeys!811 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun zeroValue!831 () V!41411)

(declare-fun lt!493514 () ListLongMap!15419)

(declare-fun defaultEntry!882 () Int)

(declare-fun getCurrentListMap!4412 (array!71296 array!71298 (_ BitVec 32) (_ BitVec 32) V!41411 V!41411 (_ BitVec 32) Int) ListLongMap!15419)

(assert (=> b!1101004 (= lt!493514 (getCurrentListMap!4412 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun lt!493509 () array!71298)

(declare-fun lt!493512 () array!71296)

(assert (=> b!1101004 (= lt!493518 (getCurrentListMap!4412 lt!493512 lt!493509 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(assert (=> b!1101004 (and (= lt!493510 lt!493516) (= lt!493516 lt!493510))))

(declare-fun lt!493517 () ListLongMap!15419)

(declare-fun -!964 (ListLongMap!15419 (_ BitVec 64)) ListLongMap!15419)

(assert (=> b!1101004 (= lt!493516 (-!964 lt!493517 k0!904))))

(declare-fun i!650 () (_ BitVec 32))

(declare-datatypes ((Unit!36123 0))(
  ( (Unit!36124) )
))
(declare-fun lt!493515 () Unit!36123)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!224 (array!71296 array!71298 (_ BitVec 32) (_ BitVec 32) V!41411 V!41411 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!36123)

(assert (=> b!1101004 (= lt!493515 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!224 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 i!650 k0!904 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun getCurrentListMapNoExtraKeys!4199 (array!71296 array!71298 (_ BitVec 32) (_ BitVec 32) V!41411 V!41411 (_ BitVec 32) Int) ListLongMap!15419)

(assert (=> b!1101004 (= lt!493510 (getCurrentListMapNoExtraKeys!4199 lt!493512 lt!493509 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun dynLambda!2330 (Int (_ BitVec 64)) V!41411)

(assert (=> b!1101004 (= lt!493509 (array!71299 (store (arr!34309 _values!874) i!650 (ValueCellFull!12897 (dynLambda!2330 defaultEntry!882 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!34846 _values!874)))))

(assert (=> b!1101004 (= lt!493517 (getCurrentListMapNoExtraKeys!4199 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun arrayContainsKey!0 (array!71296 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1101004 (arrayContainsKey!0 _keys!1070 k0!904 #b00000000000000000000000000000000)))

(declare-fun lt!493511 () Unit!36123)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!71296 (_ BitVec 64) (_ BitVec 32)) Unit!36123)

(assert (=> b!1101004 (= lt!493511 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1070 k0!904 i!650))))

(declare-fun mapIsEmpty!42604 () Bool)

(assert (=> mapIsEmpty!42604 mapRes!42604))

(declare-fun b!1101005 () Bool)

(declare-fun res!734771 () Bool)

(assert (=> b!1101005 (=> (not res!734771) (not e!628463))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!71296 (_ BitVec 32)) Bool)

(assert (=> b!1101005 (= res!734771 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1070 mask!1414))))

(declare-fun b!1101006 () Bool)

(declare-fun res!734770 () Bool)

(assert (=> b!1101006 (=> (not res!734770) (not e!628465))))

(declare-datatypes ((List!24111 0))(
  ( (Nil!24108) (Cons!24107 (h!25316 (_ BitVec 64)) (t!34327 List!24111)) )
))
(declare-fun arrayNoDuplicates!0 (array!71296 (_ BitVec 32) List!24111) Bool)

(assert (=> b!1101006 (= res!734770 (arrayNoDuplicates!0 lt!493512 #b00000000000000000000000000000000 Nil!24108))))

(declare-fun b!1101007 () Bool)

(declare-fun res!734773 () Bool)

(assert (=> b!1101007 (=> (not res!734773) (not e!628463))))

(assert (=> b!1101007 (= res!734773 (and (bvsge i!650 #b00000000000000000000000000000000) (bvslt i!650 (size!34845 _keys!1070))))))

(declare-fun b!1101008 () Bool)

(assert (=> b!1101008 (= e!628463 e!628465)))

(declare-fun res!734768 () Bool)

(assert (=> b!1101008 (=> (not res!734768) (not e!628465))))

(assert (=> b!1101008 (= res!734768 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!493512 mask!1414))))

(assert (=> b!1101008 (= lt!493512 (array!71297 (store (arr!34308 _keys!1070) i!650 #b1000000000000000000000000000000000000000000000000000000000000000) (size!34845 _keys!1070)))))

(declare-fun b!1101009 () Bool)

(declare-fun res!734767 () Bool)

(assert (=> b!1101009 (=> (not res!734767) (not e!628463))))

(assert (=> b!1101009 (= res!734767 (arrayNoDuplicates!0 _keys!1070 #b00000000000000000000000000000000 Nil!24108))))

(declare-fun res!734764 () Bool)

(assert (=> start!96830 (=> (not res!734764) (not e!628463))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!96830 (= res!734764 (validMask!0 mask!1414))))

(assert (=> start!96830 e!628463))

(assert (=> start!96830 tp!81440))

(assert (=> start!96830 true))

(assert (=> start!96830 tp_is_empty!27213))

(declare-fun array_inv!26284 (array!71296) Bool)

(assert (=> start!96830 (array_inv!26284 _keys!1070)))

(declare-fun array_inv!26285 (array!71298) Bool)

(assert (=> start!96830 (and (array_inv!26285 _values!874) e!628464)))

(declare-fun mapNonEmpty!42604 () Bool)

(declare-fun tp!81441 () Bool)

(declare-fun e!628466 () Bool)

(assert (=> mapNonEmpty!42604 (= mapRes!42604 (and tp!81441 e!628466))))

(declare-fun mapRest!42604 () (Array (_ BitVec 32) ValueCell!12897))

(declare-fun mapKey!42604 () (_ BitVec 32))

(declare-fun mapValue!42604 () ValueCell!12897)

(assert (=> mapNonEmpty!42604 (= (arr!34309 _values!874) (store mapRest!42604 mapKey!42604 mapValue!42604))))

(declare-fun b!1101010 () Bool)

(declare-fun res!734772 () Bool)

(assert (=> b!1101010 (=> (not res!734772) (not e!628463))))

(assert (=> b!1101010 (= res!734772 (= (select (arr!34308 _keys!1070) i!650) k0!904))))

(declare-fun b!1101011 () Bool)

(assert (=> b!1101011 (= e!628466 tp_is_empty!27213)))

(assert (= (and start!96830 res!734764) b!1101001))

(assert (= (and b!1101001 res!734769) b!1101005))

(assert (= (and b!1101005 res!734771) b!1101009))

(assert (= (and b!1101009 res!734767) b!1101007))

(assert (= (and b!1101007 res!734773) b!1101000))

(assert (= (and b!1101000 res!734765) b!1101010))

(assert (= (and b!1101010 res!734772) b!1101008))

(assert (= (and b!1101008 res!734768) b!1101006))

(assert (= (and b!1101006 res!734770) b!1101004))

(assert (= (and b!1101004 (not res!734766)) b!1100999))

(assert (= (and b!1101002 condMapEmpty!42604) mapIsEmpty!42604))

(assert (= (and b!1101002 (not condMapEmpty!42604)) mapNonEmpty!42604))

(get-info :version)

(assert (= (and mapNonEmpty!42604 ((_ is ValueCellFull!12897) mapValue!42604)) b!1101011))

(assert (= (and b!1101002 ((_ is ValueCellFull!12897) mapDefault!42604)) b!1101003))

(assert (= start!96830 b!1101002))

(declare-fun b_lambda!18091 () Bool)

(assert (=> (not b_lambda!18091) (not b!1101004)))

(declare-fun t!34325 () Bool)

(declare-fun tb!8037 () Bool)

(assert (=> (and start!96830 (= defaultEntry!882 defaultEntry!882) t!34325) tb!8037))

(declare-fun result!16605 () Bool)

(assert (=> tb!8037 (= result!16605 tp_is_empty!27213)))

(assert (=> b!1101004 t!34325))

(declare-fun b_and!37121 () Bool)

(assert (= b_and!37119 (and (=> t!34325 result!16605) b_and!37121)))

(declare-fun m!1021275 () Bool)

(assert (=> mapNonEmpty!42604 m!1021275))

(declare-fun m!1021277 () Bool)

(assert (=> b!1101005 m!1021277))

(declare-fun m!1021279 () Bool)

(assert (=> b!1101010 m!1021279))

(declare-fun m!1021281 () Bool)

(assert (=> b!1100999 m!1021281))

(declare-fun m!1021283 () Bool)

(assert (=> b!1100999 m!1021283))

(declare-fun m!1021285 () Bool)

(assert (=> b!1101004 m!1021285))

(declare-fun m!1021287 () Bool)

(assert (=> b!1101004 m!1021287))

(declare-fun m!1021289 () Bool)

(assert (=> b!1101004 m!1021289))

(declare-fun m!1021291 () Bool)

(assert (=> b!1101004 m!1021291))

(declare-fun m!1021293 () Bool)

(assert (=> b!1101004 m!1021293))

(declare-fun m!1021295 () Bool)

(assert (=> b!1101004 m!1021295))

(declare-fun m!1021297 () Bool)

(assert (=> b!1101004 m!1021297))

(declare-fun m!1021299 () Bool)

(assert (=> b!1101004 m!1021299))

(declare-fun m!1021301 () Bool)

(assert (=> b!1101004 m!1021301))

(declare-fun m!1021303 () Bool)

(assert (=> b!1101004 m!1021303))

(declare-fun m!1021305 () Bool)

(assert (=> b!1101009 m!1021305))

(declare-fun m!1021307 () Bool)

(assert (=> start!96830 m!1021307))

(declare-fun m!1021309 () Bool)

(assert (=> start!96830 m!1021309))

(declare-fun m!1021311 () Bool)

(assert (=> start!96830 m!1021311))

(declare-fun m!1021313 () Bool)

(assert (=> b!1101006 m!1021313))

(declare-fun m!1021315 () Bool)

(assert (=> b!1101000 m!1021315))

(declare-fun m!1021317 () Bool)

(assert (=> b!1101008 m!1021317))

(declare-fun m!1021319 () Bool)

(assert (=> b!1101008 m!1021319))

(check-sat (not b!1101000) tp_is_empty!27213 (not b!1100999) (not b!1101009) (not b!1101008) b_and!37121 (not b_lambda!18091) (not b!1101004) (not start!96830) (not b!1101005) (not mapNonEmpty!42604) (not b_next!23163) (not b!1101006))
(check-sat b_and!37121 (not b_next!23163))
