; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!96780 () Bool)

(assert start!96780)

(declare-fun b_free!23139 () Bool)

(declare-fun b_next!23139 () Bool)

(assert (=> start!96780 (= b_free!23139 (not b_next!23139))))

(declare-fun tp!81366 () Bool)

(declare-fun b_and!37057 () Bool)

(assert (=> start!96780 (= tp!81366 b_and!37057)))

(declare-fun b!1100288 () Bool)

(declare-fun res!734296 () Bool)

(declare-fun e!628060 () Bool)

(assert (=> b!1100288 (=> (not res!734296) (not e!628060))))

(declare-fun k0!904 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1100288 (= res!734296 (validKeyInArray!0 k0!904))))

(declare-fun b!1100289 () Bool)

(declare-fun e!628061 () Bool)

(assert (=> b!1100289 (= e!628061 true)))

(declare-datatypes ((V!41379 0))(
  ( (V!41380 (val!13651 Int)) )
))
(declare-datatypes ((tuple2!17416 0))(
  ( (tuple2!17417 (_1!8718 (_ BitVec 64)) (_2!8718 V!41379)) )
))
(declare-datatypes ((List!24089 0))(
  ( (Nil!24086) (Cons!24085 (h!25294 tuple2!17416) (t!34281 List!24089)) )
))
(declare-datatypes ((ListLongMap!15397 0))(
  ( (ListLongMap!15398 (toList!7714 List!24089)) )
))
(declare-fun lt!492954 () ListLongMap!15397)

(declare-fun lt!492947 () ListLongMap!15397)

(declare-fun -!954 (ListLongMap!15397 (_ BitVec 64)) ListLongMap!15397)

(assert (=> b!1100289 (= (-!954 lt!492954 k0!904) lt!492947)))

(declare-datatypes ((Unit!36101 0))(
  ( (Unit!36102) )
))
(declare-fun lt!492950 () Unit!36101)

(declare-fun lt!492951 () ListLongMap!15397)

(declare-fun zeroValue!831 () V!41379)

(declare-fun addRemoveCommutativeForDiffKeys!130 (ListLongMap!15397 (_ BitVec 64) V!41379 (_ BitVec 64)) Unit!36101)

(assert (=> b!1100289 (= lt!492950 (addRemoveCommutativeForDiffKeys!130 lt!492951 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!831 k0!904))))

(declare-fun mapNonEmpty!42565 () Bool)

(declare-fun mapRes!42565 () Bool)

(declare-fun tp!81365 () Bool)

(declare-fun e!628058 () Bool)

(assert (=> mapNonEmpty!42565 (= mapRes!42565 (and tp!81365 e!628058))))

(declare-datatypes ((ValueCell!12885 0))(
  ( (ValueCellFull!12885 (v!16280 V!41379)) (EmptyCell!12885) )
))
(declare-datatypes ((array!71246 0))(
  ( (array!71247 (arr!34284 (Array (_ BitVec 32) ValueCell!12885)) (size!34821 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!71246)

(declare-fun mapRest!42565 () (Array (_ BitVec 32) ValueCell!12885))

(declare-fun mapKey!42565 () (_ BitVec 32))

(declare-fun mapValue!42565 () ValueCell!12885)

(assert (=> mapNonEmpty!42565 (= (arr!34284 _values!874) (store mapRest!42565 mapKey!42565 mapValue!42565))))

(declare-fun b!1100290 () Bool)

(declare-fun res!734302 () Bool)

(assert (=> b!1100290 (=> (not res!734302) (not e!628060))))

(declare-datatypes ((array!71248 0))(
  ( (array!71249 (arr!34285 (Array (_ BitVec 32) (_ BitVec 64))) (size!34822 (_ BitVec 32))) )
))
(declare-fun _keys!1070 () array!71248)

(declare-fun mask!1414 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!71248 (_ BitVec 32)) Bool)

(assert (=> b!1100290 (= res!734302 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1070 mask!1414))))

(declare-fun b!1100291 () Bool)

(declare-fun e!628064 () Bool)

(declare-fun tp_is_empty!27189 () Bool)

(assert (=> b!1100291 (= e!628064 tp_is_empty!27189)))

(declare-fun b!1100292 () Bool)

(assert (=> b!1100292 (= e!628058 tp_is_empty!27189)))

(declare-fun b!1100293 () Bool)

(declare-fun res!734301 () Bool)

(declare-fun e!628059 () Bool)

(assert (=> b!1100293 (=> (not res!734301) (not e!628059))))

(declare-fun lt!492945 () array!71248)

(declare-datatypes ((List!24090 0))(
  ( (Nil!24087) (Cons!24086 (h!25295 (_ BitVec 64)) (t!34282 List!24090)) )
))
(declare-fun arrayNoDuplicates!0 (array!71248 (_ BitVec 32) List!24090) Bool)

(assert (=> b!1100293 (= res!734301 (arrayNoDuplicates!0 lt!492945 #b00000000000000000000000000000000 Nil!24087))))

(declare-fun b!1100294 () Bool)

(declare-fun res!734303 () Bool)

(assert (=> b!1100294 (=> (not res!734303) (not e!628060))))

(declare-fun extraKeys!811 () (_ BitVec 32))

(assert (=> b!1100294 (= res!734303 (and (= (size!34821 _values!874) (bvadd #b00000000000000000000000000000001 mask!1414)) (= (size!34822 _keys!1070) (size!34821 _values!874)) (bvsge mask!1414 #b00000000000000000000000000000000) (bvsge extraKeys!811 #b00000000000000000000000000000000) (bvsle extraKeys!811 #b00000000000000000000000000000011)))))

(declare-fun b!1100295 () Bool)

(declare-fun res!734295 () Bool)

(assert (=> b!1100295 (=> (not res!734295) (not e!628060))))

(assert (=> b!1100295 (= res!734295 (arrayNoDuplicates!0 _keys!1070 #b00000000000000000000000000000000 Nil!24087))))

(declare-fun b!1100296 () Bool)

(declare-fun e!628063 () Bool)

(assert (=> b!1100296 (= e!628059 (not e!628063))))

(declare-fun res!734304 () Bool)

(assert (=> b!1100296 (=> res!734304 e!628063)))

(assert (=> b!1100296 (= res!734304 (or (not (= (bvand extraKeys!811 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeys!811 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun defaultEntry!882 () Int)

(declare-fun minValue!831 () V!41379)

(declare-fun lt!492952 () ListLongMap!15397)

(declare-fun getCurrentListMap!4403 (array!71248 array!71246 (_ BitVec 32) (_ BitVec 32) V!41379 V!41379 (_ BitVec 32) Int) ListLongMap!15397)

(assert (=> b!1100296 (= lt!492952 (getCurrentListMap!4403 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun lt!492943 () ListLongMap!15397)

(declare-fun lt!492944 () array!71246)

(assert (=> b!1100296 (= lt!492943 (getCurrentListMap!4403 lt!492945 lt!492944 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun lt!492953 () ListLongMap!15397)

(declare-fun lt!492949 () ListLongMap!15397)

(assert (=> b!1100296 (and (= lt!492953 lt!492949) (= lt!492949 lt!492953))))

(assert (=> b!1100296 (= lt!492949 (-!954 lt!492951 k0!904))))

(declare-fun lt!492948 () Unit!36101)

(declare-fun i!650 () (_ BitVec 32))

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!215 (array!71248 array!71246 (_ BitVec 32) (_ BitVec 32) V!41379 V!41379 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!36101)

(assert (=> b!1100296 (= lt!492948 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!215 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 i!650 k0!904 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun getCurrentListMapNoExtraKeys!4190 (array!71248 array!71246 (_ BitVec 32) (_ BitVec 32) V!41379 V!41379 (_ BitVec 32) Int) ListLongMap!15397)

(assert (=> b!1100296 (= lt!492953 (getCurrentListMapNoExtraKeys!4190 lt!492945 lt!492944 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun dynLambda!2321 (Int (_ BitVec 64)) V!41379)

(assert (=> b!1100296 (= lt!492944 (array!71247 (store (arr!34284 _values!874) i!650 (ValueCellFull!12885 (dynLambda!2321 defaultEntry!882 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!34821 _values!874)))))

(assert (=> b!1100296 (= lt!492951 (getCurrentListMapNoExtraKeys!4190 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun arrayContainsKey!0 (array!71248 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1100296 (arrayContainsKey!0 _keys!1070 k0!904 #b00000000000000000000000000000000)))

(declare-fun lt!492955 () Unit!36101)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!71248 (_ BitVec 64) (_ BitVec 32)) Unit!36101)

(assert (=> b!1100296 (= lt!492955 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1070 k0!904 i!650))))

(declare-fun b!1100297 () Bool)

(declare-fun e!628057 () Bool)

(assert (=> b!1100297 (= e!628057 (and e!628064 mapRes!42565))))

(declare-fun condMapEmpty!42565 () Bool)

(declare-fun mapDefault!42565 () ValueCell!12885)

(assert (=> b!1100297 (= condMapEmpty!42565 (= (arr!34284 _values!874) ((as const (Array (_ BitVec 32) ValueCell!12885)) mapDefault!42565)))))

(declare-fun b!1100298 () Bool)

(assert (=> b!1100298 (= e!628060 e!628059)))

(declare-fun res!734300 () Bool)

(assert (=> b!1100298 (=> (not res!734300) (not e!628059))))

(assert (=> b!1100298 (= res!734300 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!492945 mask!1414))))

(assert (=> b!1100298 (= lt!492945 (array!71249 (store (arr!34285 _keys!1070) i!650 #b1000000000000000000000000000000000000000000000000000000000000000) (size!34822 _keys!1070)))))

(declare-fun b!1100299 () Bool)

(assert (=> b!1100299 (= e!628063 e!628061)))

(declare-fun res!734305 () Bool)

(assert (=> b!1100299 (=> res!734305 e!628061)))

(assert (=> b!1100299 (= res!734305 (= #b0000000000000000000000000000000000000000000000000000000000000000 k0!904))))

(assert (=> b!1100299 (= lt!492943 lt!492947)))

(declare-fun lt!492946 () tuple2!17416)

(declare-fun +!3349 (ListLongMap!15397 tuple2!17416) ListLongMap!15397)

(assert (=> b!1100299 (= lt!492947 (+!3349 lt!492949 lt!492946))))

(assert (=> b!1100299 (= lt!492952 lt!492954)))

(assert (=> b!1100299 (= lt!492954 (+!3349 lt!492951 lt!492946))))

(assert (=> b!1100299 (= lt!492943 (+!3349 lt!492953 lt!492946))))

(assert (=> b!1100299 (= lt!492946 (tuple2!17417 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!831))))

(declare-fun res!734297 () Bool)

(assert (=> start!96780 (=> (not res!734297) (not e!628060))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!96780 (= res!734297 (validMask!0 mask!1414))))

(assert (=> start!96780 e!628060))

(assert (=> start!96780 tp!81366))

(assert (=> start!96780 true))

(assert (=> start!96780 tp_is_empty!27189))

(declare-fun array_inv!26268 (array!71248) Bool)

(assert (=> start!96780 (array_inv!26268 _keys!1070)))

(declare-fun array_inv!26269 (array!71246) Bool)

(assert (=> start!96780 (and (array_inv!26269 _values!874) e!628057)))

(declare-fun mapIsEmpty!42565 () Bool)

(assert (=> mapIsEmpty!42565 mapRes!42565))

(declare-fun b!1100300 () Bool)

(declare-fun res!734298 () Bool)

(assert (=> b!1100300 (=> (not res!734298) (not e!628060))))

(assert (=> b!1100300 (= res!734298 (and (bvsge i!650 #b00000000000000000000000000000000) (bvslt i!650 (size!34822 _keys!1070))))))

(declare-fun b!1100301 () Bool)

(declare-fun res!734299 () Bool)

(assert (=> b!1100301 (=> (not res!734299) (not e!628060))))

(assert (=> b!1100301 (= res!734299 (= (select (arr!34285 _keys!1070) i!650) k0!904))))

(assert (= (and start!96780 res!734297) b!1100294))

(assert (= (and b!1100294 res!734303) b!1100290))

(assert (= (and b!1100290 res!734302) b!1100295))

(assert (= (and b!1100295 res!734295) b!1100300))

(assert (= (and b!1100300 res!734298) b!1100288))

(assert (= (and b!1100288 res!734296) b!1100301))

(assert (= (and b!1100301 res!734299) b!1100298))

(assert (= (and b!1100298 res!734300) b!1100293))

(assert (= (and b!1100293 res!734301) b!1100296))

(assert (= (and b!1100296 (not res!734304)) b!1100299))

(assert (= (and b!1100299 (not res!734305)) b!1100289))

(assert (= (and b!1100297 condMapEmpty!42565) mapIsEmpty!42565))

(assert (= (and b!1100297 (not condMapEmpty!42565)) mapNonEmpty!42565))

(get-info :version)

(assert (= (and mapNonEmpty!42565 ((_ is ValueCellFull!12885) mapValue!42565)) b!1100292))

(assert (= (and b!1100297 ((_ is ValueCellFull!12885) mapDefault!42565)) b!1100291))

(assert (= start!96780 b!1100297))

(declare-fun b_lambda!18037 () Bool)

(assert (=> (not b_lambda!18037) (not b!1100296)))

(declare-fun t!34280 () Bool)

(declare-fun tb!8013 () Bool)

(assert (=> (and start!96780 (= defaultEntry!882 defaultEntry!882) t!34280) tb!8013))

(declare-fun result!16555 () Bool)

(assert (=> tb!8013 (= result!16555 tp_is_empty!27189)))

(assert (=> b!1100296 t!34280))

(declare-fun b_and!37059 () Bool)

(assert (= b_and!37057 (and (=> t!34280 result!16555) b_and!37059)))

(declare-fun m!1020475 () Bool)

(assert (=> b!1100290 m!1020475))

(declare-fun m!1020477 () Bool)

(assert (=> b!1100301 m!1020477))

(declare-fun m!1020479 () Bool)

(assert (=> b!1100289 m!1020479))

(declare-fun m!1020481 () Bool)

(assert (=> b!1100289 m!1020481))

(declare-fun m!1020483 () Bool)

(assert (=> b!1100296 m!1020483))

(declare-fun m!1020485 () Bool)

(assert (=> b!1100296 m!1020485))

(declare-fun m!1020487 () Bool)

(assert (=> b!1100296 m!1020487))

(declare-fun m!1020489 () Bool)

(assert (=> b!1100296 m!1020489))

(declare-fun m!1020491 () Bool)

(assert (=> b!1100296 m!1020491))

(declare-fun m!1020493 () Bool)

(assert (=> b!1100296 m!1020493))

(declare-fun m!1020495 () Bool)

(assert (=> b!1100296 m!1020495))

(declare-fun m!1020497 () Bool)

(assert (=> b!1100296 m!1020497))

(declare-fun m!1020499 () Bool)

(assert (=> b!1100296 m!1020499))

(declare-fun m!1020501 () Bool)

(assert (=> b!1100296 m!1020501))

(declare-fun m!1020503 () Bool)

(assert (=> b!1100299 m!1020503))

(declare-fun m!1020505 () Bool)

(assert (=> b!1100299 m!1020505))

(declare-fun m!1020507 () Bool)

(assert (=> b!1100299 m!1020507))

(declare-fun m!1020509 () Bool)

(assert (=> b!1100298 m!1020509))

(declare-fun m!1020511 () Bool)

(assert (=> b!1100298 m!1020511))

(declare-fun m!1020513 () Bool)

(assert (=> b!1100295 m!1020513))

(declare-fun m!1020515 () Bool)

(assert (=> start!96780 m!1020515))

(declare-fun m!1020517 () Bool)

(assert (=> start!96780 m!1020517))

(declare-fun m!1020519 () Bool)

(assert (=> start!96780 m!1020519))

(declare-fun m!1020521 () Bool)

(assert (=> b!1100293 m!1020521))

(declare-fun m!1020523 () Bool)

(assert (=> b!1100288 m!1020523))

(declare-fun m!1020525 () Bool)

(assert (=> mapNonEmpty!42565 m!1020525))

(check-sat (not b_next!23139) (not b_lambda!18037) (not b!1100296) (not mapNonEmpty!42565) (not start!96780) (not b!1100293) b_and!37059 (not b!1100289) (not b!1100290) (not b!1100299) (not b!1100298) tp_is_empty!27189 (not b!1100288) (not b!1100295))
(check-sat b_and!37059 (not b_next!23139))
