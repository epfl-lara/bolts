; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!96042 () Bool)

(assert start!96042)

(declare-fun b_free!22659 () Bool)

(declare-fun b_next!22659 () Bool)

(assert (=> start!96042 (= b_free!22659 (not b_next!22659))))

(declare-fun tp!79827 () Bool)

(declare-fun b_and!36011 () Bool)

(assert (=> start!96042 (= tp!79827 b_and!36011)))

(declare-fun b!1088188 () Bool)

(declare-fun e!621611 () Bool)

(declare-fun tp_is_empty!26661 () Bool)

(assert (=> b!1088188 (= e!621611 tp_is_empty!26661)))

(declare-fun b!1088189 () Bool)

(declare-fun res!725865 () Bool)

(declare-fun e!621616 () Bool)

(assert (=> b!1088189 (=> (not res!725865) (not e!621616))))

(declare-datatypes ((array!70214 0))(
  ( (array!70215 (arr!33777 (Array (_ BitVec 32) (_ BitVec 64))) (size!34314 (_ BitVec 32))) )
))
(declare-fun _keys!1070 () array!70214)

(declare-fun k0!904 () (_ BitVec 64))

(declare-fun i!650 () (_ BitVec 32))

(assert (=> b!1088189 (= res!725865 (= (select (arr!33777 _keys!1070) i!650) k0!904))))

(declare-fun res!725861 () Bool)

(assert (=> start!96042 (=> (not res!725861) (not e!621616))))

(declare-fun mask!1414 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!96042 (= res!725861 (validMask!0 mask!1414))))

(assert (=> start!96042 e!621616))

(assert (=> start!96042 tp!79827))

(assert (=> start!96042 true))

(assert (=> start!96042 tp_is_empty!26661))

(declare-fun array_inv!25914 (array!70214) Bool)

(assert (=> start!96042 (array_inv!25914 _keys!1070)))

(declare-datatypes ((V!40675 0))(
  ( (V!40676 (val!13387 Int)) )
))
(declare-datatypes ((ValueCell!12621 0))(
  ( (ValueCellFull!12621 (v!16009 V!40675)) (EmptyCell!12621) )
))
(declare-datatypes ((array!70216 0))(
  ( (array!70217 (arr!33778 (Array (_ BitVec 32) ValueCell!12621)) (size!34315 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!70216)

(declare-fun e!621614 () Bool)

(declare-fun array_inv!25915 (array!70216) Bool)

(assert (=> start!96042 (and (array_inv!25915 _values!874) e!621614)))

(declare-fun b!1088190 () Bool)

(declare-fun res!725858 () Bool)

(assert (=> b!1088190 (=> (not res!725858) (not e!621616))))

(declare-fun extraKeys!811 () (_ BitVec 32))

(assert (=> b!1088190 (= res!725858 (and (= (size!34315 _values!874) (bvadd #b00000000000000000000000000000001 mask!1414)) (= (size!34314 _keys!1070) (size!34315 _values!874)) (bvsge mask!1414 #b00000000000000000000000000000000) (bvsge extraKeys!811 #b00000000000000000000000000000000) (bvsle extraKeys!811 #b00000000000000000000000000000011)))))

(declare-fun b!1088191 () Bool)

(declare-fun res!725859 () Bool)

(declare-fun e!621615 () Bool)

(assert (=> b!1088191 (=> (not res!725859) (not e!621615))))

(declare-fun lt!484602 () array!70214)

(declare-datatypes ((List!23705 0))(
  ( (Nil!23702) (Cons!23701 (h!24910 (_ BitVec 64)) (t!33429 List!23705)) )
))
(declare-fun arrayNoDuplicates!0 (array!70214 (_ BitVec 32) List!23705) Bool)

(assert (=> b!1088191 (= res!725859 (arrayNoDuplicates!0 lt!484602 #b00000000000000000000000000000000 Nil!23702))))

(declare-fun b!1088192 () Bool)

(assert (=> b!1088192 (= e!621616 e!621615)))

(declare-fun res!725867 () Bool)

(assert (=> b!1088192 (=> (not res!725867) (not e!621615))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!70214 (_ BitVec 32)) Bool)

(assert (=> b!1088192 (= res!725867 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!484602 mask!1414))))

(assert (=> b!1088192 (= lt!484602 (array!70215 (store (arr!33777 _keys!1070) i!650 #b1000000000000000000000000000000000000000000000000000000000000000) (size!34314 _keys!1070)))))

(declare-fun b!1088193 () Bool)

(declare-fun e!621612 () Bool)

(assert (=> b!1088193 (= e!621615 (not e!621612))))

(declare-fun res!725862 () Bool)

(assert (=> b!1088193 (=> res!725862 e!621612)))

(assert (=> b!1088193 (= res!725862 (or (not (= (bvand extraKeys!811 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeys!811 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun defaultEntry!882 () Int)

(declare-fun minValue!831 () V!40675)

(declare-datatypes ((tuple2!17064 0))(
  ( (tuple2!17065 (_1!8542 (_ BitVec 64)) (_2!8542 V!40675)) )
))
(declare-datatypes ((List!23706 0))(
  ( (Nil!23703) (Cons!23702 (h!24911 tuple2!17064) (t!33430 List!23706)) )
))
(declare-datatypes ((ListLongMap!15045 0))(
  ( (ListLongMap!15046 (toList!7538 List!23706)) )
))
(declare-fun lt!484599 () ListLongMap!15045)

(declare-fun zeroValue!831 () V!40675)

(declare-fun getCurrentListMap!4288 (array!70214 array!70216 (_ BitVec 32) (_ BitVec 32) V!40675 V!40675 (_ BitVec 32) Int) ListLongMap!15045)

(assert (=> b!1088193 (= lt!484599 (getCurrentListMap!4288 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun lt!484601 () array!70216)

(declare-fun lt!484595 () ListLongMap!15045)

(assert (=> b!1088193 (= lt!484595 (getCurrentListMap!4288 lt!484602 lt!484601 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun lt!484598 () ListLongMap!15045)

(declare-fun lt!484597 () ListLongMap!15045)

(assert (=> b!1088193 (and (= lt!484598 lt!484597) (= lt!484597 lt!484598))))

(declare-fun lt!484596 () ListLongMap!15045)

(declare-fun -!818 (ListLongMap!15045 (_ BitVec 64)) ListLongMap!15045)

(assert (=> b!1088193 (= lt!484597 (-!818 lt!484596 k0!904))))

(declare-datatypes ((Unit!35751 0))(
  ( (Unit!35752) )
))
(declare-fun lt!484605 () Unit!35751)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!94 (array!70214 array!70216 (_ BitVec 32) (_ BitVec 32) V!40675 V!40675 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!35751)

(assert (=> b!1088193 (= lt!484605 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!94 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 i!650 k0!904 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun getCurrentListMapNoExtraKeys!4040 (array!70214 array!70216 (_ BitVec 32) (_ BitVec 32) V!40675 V!40675 (_ BitVec 32) Int) ListLongMap!15045)

(assert (=> b!1088193 (= lt!484598 (getCurrentListMapNoExtraKeys!4040 lt!484602 lt!484601 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun dynLambda!2176 (Int (_ BitVec 64)) V!40675)

(assert (=> b!1088193 (= lt!484601 (array!70217 (store (arr!33778 _values!874) i!650 (ValueCellFull!12621 (dynLambda!2176 defaultEntry!882 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!34315 _values!874)))))

(assert (=> b!1088193 (= lt!484596 (getCurrentListMapNoExtraKeys!4040 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun arrayContainsKey!0 (array!70214 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1088193 (arrayContainsKey!0 _keys!1070 k0!904 #b00000000000000000000000000000000)))

(declare-fun lt!484600 () Unit!35751)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!70214 (_ BitVec 64) (_ BitVec 32)) Unit!35751)

(assert (=> b!1088193 (= lt!484600 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1070 k0!904 i!650))))

(declare-fun b!1088194 () Bool)

(declare-fun e!621613 () Bool)

(assert (=> b!1088194 (= e!621612 e!621613)))

(declare-fun res!725864 () Bool)

(assert (=> b!1088194 (=> res!725864 e!621613)))

(assert (=> b!1088194 (= res!725864 (= #b0000000000000000000000000000000000000000000000000000000000000000 k0!904))))

(declare-fun lt!484604 () ListLongMap!15045)

(assert (=> b!1088194 (= lt!484595 lt!484604)))

(declare-fun lt!484606 () tuple2!17064)

(declare-fun +!3259 (ListLongMap!15045 tuple2!17064) ListLongMap!15045)

(assert (=> b!1088194 (= lt!484604 (+!3259 lt!484597 lt!484606))))

(declare-fun lt!484607 () ListLongMap!15045)

(assert (=> b!1088194 (= lt!484599 lt!484607)))

(assert (=> b!1088194 (= lt!484607 (+!3259 lt!484596 lt!484606))))

(assert (=> b!1088194 (= lt!484595 (+!3259 lt!484598 lt!484606))))

(assert (=> b!1088194 (= lt!484606 (tuple2!17065 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!831))))

(declare-fun b!1088195 () Bool)

(declare-fun res!725857 () Bool)

(assert (=> b!1088195 (=> (not res!725857) (not e!621616))))

(assert (=> b!1088195 (= res!725857 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1070 mask!1414))))

(declare-fun b!1088196 () Bool)

(declare-fun res!725866 () Bool)

(assert (=> b!1088196 (=> (not res!725866) (not e!621616))))

(assert (=> b!1088196 (= res!725866 (and (bvsge i!650 #b00000000000000000000000000000000) (bvslt i!650 (size!34314 _keys!1070))))))

(declare-fun b!1088197 () Bool)

(assert (=> b!1088197 (= e!621613 true)))

(assert (=> b!1088197 (= (-!818 lt!484607 k0!904) lt!484604)))

(declare-fun lt!484603 () Unit!35751)

(declare-fun addRemoveCommutativeForDiffKeys!56 (ListLongMap!15045 (_ BitVec 64) V!40675 (_ BitVec 64)) Unit!35751)

(assert (=> b!1088197 (= lt!484603 (addRemoveCommutativeForDiffKeys!56 lt!484596 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!831 k0!904))))

(declare-fun mapIsEmpty!41746 () Bool)

(declare-fun mapRes!41746 () Bool)

(assert (=> mapIsEmpty!41746 mapRes!41746))

(declare-fun b!1088198 () Bool)

(declare-fun res!725863 () Bool)

(assert (=> b!1088198 (=> (not res!725863) (not e!621616))))

(assert (=> b!1088198 (= res!725863 (arrayNoDuplicates!0 _keys!1070 #b00000000000000000000000000000000 Nil!23702))))

(declare-fun b!1088199 () Bool)

(declare-fun res!725860 () Bool)

(assert (=> b!1088199 (=> (not res!725860) (not e!621616))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1088199 (= res!725860 (validKeyInArray!0 k0!904))))

(declare-fun b!1088200 () Bool)

(assert (=> b!1088200 (= e!621614 (and e!621611 mapRes!41746))))

(declare-fun condMapEmpty!41746 () Bool)

(declare-fun mapDefault!41746 () ValueCell!12621)

(assert (=> b!1088200 (= condMapEmpty!41746 (= (arr!33778 _values!874) ((as const (Array (_ BitVec 32) ValueCell!12621)) mapDefault!41746)))))

(declare-fun b!1088201 () Bool)

(declare-fun e!621609 () Bool)

(assert (=> b!1088201 (= e!621609 tp_is_empty!26661)))

(declare-fun mapNonEmpty!41746 () Bool)

(declare-fun tp!79826 () Bool)

(assert (=> mapNonEmpty!41746 (= mapRes!41746 (and tp!79826 e!621609))))

(declare-fun mapValue!41746 () ValueCell!12621)

(declare-fun mapKey!41746 () (_ BitVec 32))

(declare-fun mapRest!41746 () (Array (_ BitVec 32) ValueCell!12621))

(assert (=> mapNonEmpty!41746 (= (arr!33778 _values!874) (store mapRest!41746 mapKey!41746 mapValue!41746))))

(assert (= (and start!96042 res!725861) b!1088190))

(assert (= (and b!1088190 res!725858) b!1088195))

(assert (= (and b!1088195 res!725857) b!1088198))

(assert (= (and b!1088198 res!725863) b!1088196))

(assert (= (and b!1088196 res!725866) b!1088199))

(assert (= (and b!1088199 res!725860) b!1088189))

(assert (= (and b!1088189 res!725865) b!1088192))

(assert (= (and b!1088192 res!725867) b!1088191))

(assert (= (and b!1088191 res!725859) b!1088193))

(assert (= (and b!1088193 (not res!725862)) b!1088194))

(assert (= (and b!1088194 (not res!725864)) b!1088197))

(assert (= (and b!1088200 condMapEmpty!41746) mapIsEmpty!41746))

(assert (= (and b!1088200 (not condMapEmpty!41746)) mapNonEmpty!41746))

(get-info :version)

(assert (= (and mapNonEmpty!41746 ((_ is ValueCellFull!12621) mapValue!41746)) b!1088201))

(assert (= (and b!1088200 ((_ is ValueCellFull!12621) mapDefault!41746)) b!1088188))

(assert (= start!96042 b!1088200))

(declare-fun b_lambda!17359 () Bool)

(assert (=> (not b_lambda!17359) (not b!1088193)))

(declare-fun t!33428 () Bool)

(declare-fun tb!7545 () Bool)

(assert (=> (and start!96042 (= defaultEntry!882 defaultEntry!882) t!33428) tb!7545))

(declare-fun result!15601 () Bool)

(assert (=> tb!7545 (= result!15601 tp_is_empty!26661)))

(assert (=> b!1088193 t!33428))

(declare-fun b_and!36013 () Bool)

(assert (= b_and!36011 (and (=> t!33428 result!15601) b_and!36013)))

(declare-fun m!1007353 () Bool)

(assert (=> b!1088199 m!1007353))

(declare-fun m!1007355 () Bool)

(assert (=> b!1088195 m!1007355))

(declare-fun m!1007357 () Bool)

(assert (=> mapNonEmpty!41746 m!1007357))

(declare-fun m!1007359 () Bool)

(assert (=> b!1088192 m!1007359))

(declare-fun m!1007361 () Bool)

(assert (=> b!1088192 m!1007361))

(declare-fun m!1007363 () Bool)

(assert (=> b!1088189 m!1007363))

(declare-fun m!1007365 () Bool)

(assert (=> b!1088198 m!1007365))

(declare-fun m!1007367 () Bool)

(assert (=> b!1088194 m!1007367))

(declare-fun m!1007369 () Bool)

(assert (=> b!1088194 m!1007369))

(declare-fun m!1007371 () Bool)

(assert (=> b!1088194 m!1007371))

(declare-fun m!1007373 () Bool)

(assert (=> b!1088193 m!1007373))

(declare-fun m!1007375 () Bool)

(assert (=> b!1088193 m!1007375))

(declare-fun m!1007377 () Bool)

(assert (=> b!1088193 m!1007377))

(declare-fun m!1007379 () Bool)

(assert (=> b!1088193 m!1007379))

(declare-fun m!1007381 () Bool)

(assert (=> b!1088193 m!1007381))

(declare-fun m!1007383 () Bool)

(assert (=> b!1088193 m!1007383))

(declare-fun m!1007385 () Bool)

(assert (=> b!1088193 m!1007385))

(declare-fun m!1007387 () Bool)

(assert (=> b!1088193 m!1007387))

(declare-fun m!1007389 () Bool)

(assert (=> b!1088193 m!1007389))

(declare-fun m!1007391 () Bool)

(assert (=> b!1088193 m!1007391))

(declare-fun m!1007393 () Bool)

(assert (=> b!1088191 m!1007393))

(declare-fun m!1007395 () Bool)

(assert (=> start!96042 m!1007395))

(declare-fun m!1007397 () Bool)

(assert (=> start!96042 m!1007397))

(declare-fun m!1007399 () Bool)

(assert (=> start!96042 m!1007399))

(declare-fun m!1007401 () Bool)

(assert (=> b!1088197 m!1007401))

(declare-fun m!1007403 () Bool)

(assert (=> b!1088197 m!1007403))

(check-sat (not b!1088194) (not b!1088192) tp_is_empty!26661 (not b!1088198) b_and!36013 (not b!1088197) (not b_lambda!17359) (not b!1088195) (not b!1088199) (not mapNonEmpty!41746) (not b!1088193) (not start!96042) (not b_next!22659) (not b!1088191))
(check-sat b_and!36013 (not b_next!22659))
