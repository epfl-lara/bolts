; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!96678 () Bool)

(assert start!96678)

(declare-fun b_free!23115 () Bool)

(declare-fun b_next!23115 () Bool)

(assert (=> start!96678 (= b_free!23115 (not b_next!23115))))

(declare-fun tp!81285 () Bool)

(declare-fun b_and!36967 () Bool)

(assert (=> start!96678 (= tp!81285 b_and!36967)))

(declare-fun b!1099167 () Bool)

(declare-fun res!733640 () Bool)

(declare-fun e!627393 () Bool)

(assert (=> b!1099167 (=> (not res!733640) (not e!627393))))

(declare-fun mask!1414 () (_ BitVec 32))

(declare-fun extraKeys!811 () (_ BitVec 32))

(declare-datatypes ((array!71198 0))(
  ( (array!71199 (arr!34263 (Array (_ BitVec 32) (_ BitVec 64))) (size!34800 (_ BitVec 32))) )
))
(declare-fun _keys!1070 () array!71198)

(declare-datatypes ((V!41347 0))(
  ( (V!41348 (val!13639 Int)) )
))
(declare-datatypes ((ValueCell!12873 0))(
  ( (ValueCellFull!12873 (v!16265 V!41347)) (EmptyCell!12873) )
))
(declare-datatypes ((array!71200 0))(
  ( (array!71201 (arr!34264 (Array (_ BitVec 32) ValueCell!12873)) (size!34801 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!71200)

(assert (=> b!1099167 (= res!733640 (and (= (size!34801 _values!874) (bvadd #b00000000000000000000000000000001 mask!1414)) (= (size!34800 _keys!1070) (size!34801 _values!874)) (bvsge mask!1414 #b00000000000000000000000000000000) (bvsge extraKeys!811 #b00000000000000000000000000000000) (bvsle extraKeys!811 #b00000000000000000000000000000011)))))

(declare-fun b!1099168 () Bool)

(declare-fun e!627396 () Bool)

(declare-fun e!627392 () Bool)

(declare-fun mapRes!42520 () Bool)

(assert (=> b!1099168 (= e!627396 (and e!627392 mapRes!42520))))

(declare-fun condMapEmpty!42520 () Bool)

(declare-fun mapDefault!42520 () ValueCell!12873)

(assert (=> b!1099168 (= condMapEmpty!42520 (= (arr!34264 _values!874) ((as const (Array (_ BitVec 32) ValueCell!12873)) mapDefault!42520)))))

(declare-fun b!1099169 () Bool)

(declare-fun res!733645 () Bool)

(assert (=> b!1099169 (=> (not res!733645) (not e!627393))))

(declare-fun k0!904 () (_ BitVec 64))

(declare-fun i!650 () (_ BitVec 32))

(assert (=> b!1099169 (= res!733645 (= (select (arr!34263 _keys!1070) i!650) k0!904))))

(declare-fun b!1099170 () Bool)

(declare-fun res!733643 () Bool)

(declare-fun e!627394 () Bool)

(assert (=> b!1099170 (=> (not res!733643) (not e!627394))))

(declare-fun lt!492114 () array!71198)

(declare-datatypes ((List!24073 0))(
  ( (Nil!24070) (Cons!24069 (h!25278 (_ BitVec 64)) (t!34241 List!24073)) )
))
(declare-fun arrayNoDuplicates!0 (array!71198 (_ BitVec 32) List!24073) Bool)

(assert (=> b!1099170 (= res!733643 (arrayNoDuplicates!0 lt!492114 #b00000000000000000000000000000000 Nil!24070))))

(declare-fun b!1099171 () Bool)

(declare-fun e!627395 () Bool)

(declare-fun tp_is_empty!27165 () Bool)

(assert (=> b!1099171 (= e!627395 tp_is_empty!27165)))

(declare-fun b!1099172 () Bool)

(declare-fun res!733641 () Bool)

(assert (=> b!1099172 (=> (not res!733641) (not e!627393))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!71198 (_ BitVec 32)) Bool)

(assert (=> b!1099172 (= res!733641 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1070 mask!1414))))

(declare-fun res!733637 () Bool)

(assert (=> start!96678 (=> (not res!733637) (not e!627393))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!96678 (= res!733637 (validMask!0 mask!1414))))

(assert (=> start!96678 e!627393))

(assert (=> start!96678 tp!81285))

(assert (=> start!96678 true))

(assert (=> start!96678 tp_is_empty!27165))

(declare-fun array_inv!26254 (array!71198) Bool)

(assert (=> start!96678 (array_inv!26254 _keys!1070)))

(declare-fun array_inv!26255 (array!71200) Bool)

(assert (=> start!96678 (and (array_inv!26255 _values!874) e!627396)))

(declare-fun b!1099173 () Bool)

(declare-fun res!733644 () Bool)

(assert (=> b!1099173 (=> (not res!733644) (not e!627393))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1099173 (= res!733644 (validKeyInArray!0 k0!904))))

(declare-fun mapIsEmpty!42520 () Bool)

(assert (=> mapIsEmpty!42520 mapRes!42520))

(declare-fun b!1099174 () Bool)

(assert (=> b!1099174 (= e!627393 e!627394)))

(declare-fun res!733636 () Bool)

(assert (=> b!1099174 (=> (not res!733636) (not e!627394))))

(assert (=> b!1099174 (= res!733636 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!492114 mask!1414))))

(assert (=> b!1099174 (= lt!492114 (array!71199 (store (arr!34263 _keys!1070) i!650 #b1000000000000000000000000000000000000000000000000000000000000000) (size!34800 _keys!1070)))))

(declare-fun b!1099175 () Bool)

(declare-fun e!627397 () Bool)

(assert (=> b!1099175 (= e!627394 (not e!627397))))

(declare-fun res!733639 () Bool)

(assert (=> b!1099175 (=> res!733639 e!627397)))

(assert (=> b!1099175 (= res!733639 (or (not (= (bvand extraKeys!811 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeys!811 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun defaultEntry!882 () Int)

(declare-datatypes ((tuple2!17398 0))(
  ( (tuple2!17399 (_1!8709 (_ BitVec 64)) (_2!8709 V!41347)) )
))
(declare-datatypes ((List!24074 0))(
  ( (Nil!24071) (Cons!24070 (h!25279 tuple2!17398) (t!34242 List!24074)) )
))
(declare-datatypes ((ListLongMap!15379 0))(
  ( (ListLongMap!15380 (toList!7705 List!24074)) )
))
(declare-fun lt!492121 () ListLongMap!15379)

(declare-fun minValue!831 () V!41347)

(declare-fun zeroValue!831 () V!41347)

(declare-fun getCurrentListMap!4398 (array!71198 array!71200 (_ BitVec 32) (_ BitVec 32) V!41347 V!41347 (_ BitVec 32) Int) ListLongMap!15379)

(assert (=> b!1099175 (= lt!492121 (getCurrentListMap!4398 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun lt!492117 () ListLongMap!15379)

(declare-fun lt!492115 () array!71200)

(assert (=> b!1099175 (= lt!492117 (getCurrentListMap!4398 lt!492114 lt!492115 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun lt!492119 () ListLongMap!15379)

(declare-fun lt!492118 () ListLongMap!15379)

(assert (=> b!1099175 (and (= lt!492119 lt!492118) (= lt!492118 lt!492119))))

(declare-fun lt!492113 () ListLongMap!15379)

(declare-fun -!949 (ListLongMap!15379 (_ BitVec 64)) ListLongMap!15379)

(assert (=> b!1099175 (= lt!492118 (-!949 lt!492113 k0!904))))

(declare-datatypes ((Unit!36085 0))(
  ( (Unit!36086) )
))
(declare-fun lt!492120 () Unit!36085)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!210 (array!71198 array!71200 (_ BitVec 32) (_ BitVec 32) V!41347 V!41347 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!36085)

(assert (=> b!1099175 (= lt!492120 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!210 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 i!650 k0!904 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun getCurrentListMapNoExtraKeys!4185 (array!71198 array!71200 (_ BitVec 32) (_ BitVec 32) V!41347 V!41347 (_ BitVec 32) Int) ListLongMap!15379)

(assert (=> b!1099175 (= lt!492119 (getCurrentListMapNoExtraKeys!4185 lt!492114 lt!492115 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun dynLambda!2316 (Int (_ BitVec 64)) V!41347)

(assert (=> b!1099175 (= lt!492115 (array!71201 (store (arr!34264 _values!874) i!650 (ValueCellFull!12873 (dynLambda!2316 defaultEntry!882 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!34801 _values!874)))))

(assert (=> b!1099175 (= lt!492113 (getCurrentListMapNoExtraKeys!4185 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun arrayContainsKey!0 (array!71198 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1099175 (arrayContainsKey!0 _keys!1070 k0!904 #b00000000000000000000000000000000)))

(declare-fun lt!492116 () Unit!36085)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!71198 (_ BitVec 64) (_ BitVec 32)) Unit!36085)

(assert (=> b!1099175 (= lt!492116 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1070 k0!904 i!650))))

(declare-fun b!1099176 () Bool)

(declare-fun res!733642 () Bool)

(assert (=> b!1099176 (=> (not res!733642) (not e!627393))))

(assert (=> b!1099176 (= res!733642 (and (bvsge i!650 #b00000000000000000000000000000000) (bvslt i!650 (size!34800 _keys!1070))))))

(declare-fun b!1099177 () Bool)

(declare-fun +!3340 (ListLongMap!15379 tuple2!17398) ListLongMap!15379)

(assert (=> b!1099177 (= e!627397 (= lt!492117 (+!3340 lt!492119 (tuple2!17399 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!831))))))

(declare-fun mapNonEmpty!42520 () Bool)

(declare-fun tp!81284 () Bool)

(assert (=> mapNonEmpty!42520 (= mapRes!42520 (and tp!81284 e!627395))))

(declare-fun mapKey!42520 () (_ BitVec 32))

(declare-fun mapValue!42520 () ValueCell!12873)

(declare-fun mapRest!42520 () (Array (_ BitVec 32) ValueCell!12873))

(assert (=> mapNonEmpty!42520 (= (arr!34264 _values!874) (store mapRest!42520 mapKey!42520 mapValue!42520))))

(declare-fun b!1099178 () Bool)

(assert (=> b!1099178 (= e!627392 tp_is_empty!27165)))

(declare-fun b!1099179 () Bool)

(declare-fun res!733638 () Bool)

(assert (=> b!1099179 (=> (not res!733638) (not e!627393))))

(assert (=> b!1099179 (= res!733638 (arrayNoDuplicates!0 _keys!1070 #b00000000000000000000000000000000 Nil!24070))))

(assert (= (and start!96678 res!733637) b!1099167))

(assert (= (and b!1099167 res!733640) b!1099172))

(assert (= (and b!1099172 res!733641) b!1099179))

(assert (= (and b!1099179 res!733638) b!1099176))

(assert (= (and b!1099176 res!733642) b!1099173))

(assert (= (and b!1099173 res!733644) b!1099169))

(assert (= (and b!1099169 res!733645) b!1099174))

(assert (= (and b!1099174 res!733636) b!1099170))

(assert (= (and b!1099170 res!733643) b!1099175))

(assert (= (and b!1099175 (not res!733639)) b!1099177))

(assert (= (and b!1099168 condMapEmpty!42520) mapIsEmpty!42520))

(assert (= (and b!1099168 (not condMapEmpty!42520)) mapNonEmpty!42520))

(get-info :version)

(assert (= (and mapNonEmpty!42520 ((_ is ValueCellFull!12873) mapValue!42520)) b!1099171))

(assert (= (and b!1099168 ((_ is ValueCellFull!12873) mapDefault!42520)) b!1099178))

(assert (= start!96678 b!1099168))

(declare-fun b_lambda!17923 () Bool)

(assert (=> (not b_lambda!17923) (not b!1099175)))

(declare-fun t!34240 () Bool)

(declare-fun tb!7989 () Bool)

(assert (=> (and start!96678 (= defaultEntry!882 defaultEntry!882) t!34240) tb!7989))

(declare-fun result!16501 () Bool)

(assert (=> tb!7989 (= result!16501 tp_is_empty!27165)))

(assert (=> b!1099175 t!34240))

(declare-fun b_and!36969 () Bool)

(assert (= b_and!36967 (and (=> t!34240 result!16501) b_and!36969)))

(declare-fun m!1019273 () Bool)

(assert (=> b!1099170 m!1019273))

(declare-fun m!1019275 () Bool)

(assert (=> mapNonEmpty!42520 m!1019275))

(declare-fun m!1019277 () Bool)

(assert (=> b!1099173 m!1019277))

(declare-fun m!1019279 () Bool)

(assert (=> b!1099179 m!1019279))

(declare-fun m!1019281 () Bool)

(assert (=> start!96678 m!1019281))

(declare-fun m!1019283 () Bool)

(assert (=> start!96678 m!1019283))

(declare-fun m!1019285 () Bool)

(assert (=> start!96678 m!1019285))

(declare-fun m!1019287 () Bool)

(assert (=> b!1099169 m!1019287))

(declare-fun m!1019289 () Bool)

(assert (=> b!1099177 m!1019289))

(declare-fun m!1019291 () Bool)

(assert (=> b!1099175 m!1019291))

(declare-fun m!1019293 () Bool)

(assert (=> b!1099175 m!1019293))

(declare-fun m!1019295 () Bool)

(assert (=> b!1099175 m!1019295))

(declare-fun m!1019297 () Bool)

(assert (=> b!1099175 m!1019297))

(declare-fun m!1019299 () Bool)

(assert (=> b!1099175 m!1019299))

(declare-fun m!1019301 () Bool)

(assert (=> b!1099175 m!1019301))

(declare-fun m!1019303 () Bool)

(assert (=> b!1099175 m!1019303))

(declare-fun m!1019305 () Bool)

(assert (=> b!1099175 m!1019305))

(declare-fun m!1019307 () Bool)

(assert (=> b!1099175 m!1019307))

(declare-fun m!1019309 () Bool)

(assert (=> b!1099175 m!1019309))

(declare-fun m!1019311 () Bool)

(assert (=> b!1099172 m!1019311))

(declare-fun m!1019313 () Bool)

(assert (=> b!1099174 m!1019313))

(declare-fun m!1019315 () Bool)

(assert (=> b!1099174 m!1019315))

(check-sat (not b_next!23115) (not b!1099172) (not b!1099175) (not mapNonEmpty!42520) tp_is_empty!27165 (not b!1099170) (not start!96678) (not b!1099179) (not b!1099173) b_and!36969 (not b!1099174) (not b!1099177) (not b_lambda!17923))
(check-sat b_and!36969 (not b_next!23115))
(get-model)

(declare-fun b_lambda!17927 () Bool)

(assert (= b_lambda!17923 (or (and start!96678 b_free!23115) b_lambda!17927)))

(check-sat (not b_lambda!17927) (not b_next!23115) (not b!1099172) (not b!1099175) (not mapNonEmpty!42520) tp_is_empty!27165 (not b!1099177) (not b!1099170) (not start!96678) (not b!1099179) (not b!1099173) b_and!36969 (not b!1099174))
(check-sat b_and!36969 (not b_next!23115))
(get-model)

(declare-fun d!130429 () Bool)

(assert (=> d!130429 (= (validMask!0 mask!1414) (and (or (= mask!1414 #b00000000000000000000000000000111) (= mask!1414 #b00000000000000000000000000001111) (= mask!1414 #b00000000000000000000000000011111) (= mask!1414 #b00000000000000000000000000111111) (= mask!1414 #b00000000000000000000000001111111) (= mask!1414 #b00000000000000000000000011111111) (= mask!1414 #b00000000000000000000000111111111) (= mask!1414 #b00000000000000000000001111111111) (= mask!1414 #b00000000000000000000011111111111) (= mask!1414 #b00000000000000000000111111111111) (= mask!1414 #b00000000000000000001111111111111) (= mask!1414 #b00000000000000000011111111111111) (= mask!1414 #b00000000000000000111111111111111) (= mask!1414 #b00000000000000001111111111111111) (= mask!1414 #b00000000000000011111111111111111) (= mask!1414 #b00000000000000111111111111111111) (= mask!1414 #b00000000000001111111111111111111) (= mask!1414 #b00000000000011111111111111111111) (= mask!1414 #b00000000000111111111111111111111) (= mask!1414 #b00000000001111111111111111111111) (= mask!1414 #b00000000011111111111111111111111) (= mask!1414 #b00000000111111111111111111111111) (= mask!1414 #b00000001111111111111111111111111) (= mask!1414 #b00000011111111111111111111111111) (= mask!1414 #b00000111111111111111111111111111) (= mask!1414 #b00001111111111111111111111111111) (= mask!1414 #b00011111111111111111111111111111) (= mask!1414 #b00111111111111111111111111111111)) (bvsle mask!1414 #b00111111111111111111111111111111)))))

(assert (=> start!96678 d!130429))

(declare-fun d!130431 () Bool)

(assert (=> d!130431 (= (array_inv!26254 _keys!1070) (bvsge (size!34800 _keys!1070) #b00000000000000000000000000000000))))

(assert (=> start!96678 d!130431))

(declare-fun d!130433 () Bool)

(assert (=> d!130433 (= (array_inv!26255 _values!874) (bvsge (size!34801 _values!874) #b00000000000000000000000000000000))))

(assert (=> start!96678 d!130433))

(declare-fun d!130435 () Bool)

(declare-fun res!733680 () Bool)

(declare-fun e!627424 () Bool)

(assert (=> d!130435 (=> res!733680 e!627424)))

(assert (=> d!130435 (= res!733680 (= (select (arr!34263 _keys!1070) #b00000000000000000000000000000000) k0!904))))

(assert (=> d!130435 (= (arrayContainsKey!0 _keys!1070 k0!904 #b00000000000000000000000000000000) e!627424)))

(declare-fun b!1099227 () Bool)

(declare-fun e!627425 () Bool)

(assert (=> b!1099227 (= e!627424 e!627425)))

(declare-fun res!733681 () Bool)

(assert (=> b!1099227 (=> (not res!733681) (not e!627425))))

(assert (=> b!1099227 (= res!733681 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!34800 _keys!1070)))))

(declare-fun b!1099228 () Bool)

(assert (=> b!1099228 (= e!627425 (arrayContainsKey!0 _keys!1070 k0!904 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!130435 (not res!733680)) b!1099227))

(assert (= (and b!1099227 res!733681) b!1099228))

(declare-fun m!1019361 () Bool)

(assert (=> d!130435 m!1019361))

(declare-fun m!1019363 () Bool)

(assert (=> b!1099228 m!1019363))

(assert (=> b!1099175 d!130435))

(declare-fun b!1099271 () Bool)

(declare-fun e!627458 () ListLongMap!15379)

(declare-fun call!45964 () ListLongMap!15379)

(assert (=> b!1099271 (= e!627458 (+!3340 call!45964 (tuple2!17399 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!831)))))

(declare-fun d!130437 () Bool)

(declare-fun e!627459 () Bool)

(assert (=> d!130437 e!627459))

(declare-fun res!733706 () Bool)

(assert (=> d!130437 (=> (not res!733706) (not e!627459))))

(assert (=> d!130437 (= res!733706 (or (bvsge #b00000000000000000000000000000000 (size!34800 _keys!1070)) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!34800 _keys!1070)))))))

(declare-fun lt!492210 () ListLongMap!15379)

(declare-fun lt!492197 () ListLongMap!15379)

(assert (=> d!130437 (= lt!492210 lt!492197)))

(declare-fun lt!492198 () Unit!36085)

(declare-fun e!627464 () Unit!36085)

(assert (=> d!130437 (= lt!492198 e!627464)))

(declare-fun c!108528 () Bool)

(declare-fun e!627454 () Bool)

(assert (=> d!130437 (= c!108528 e!627454)))

(declare-fun res!733704 () Bool)

(assert (=> d!130437 (=> (not res!733704) (not e!627454))))

(assert (=> d!130437 (= res!733704 (bvslt #b00000000000000000000000000000000 (size!34800 _keys!1070)))))

(assert (=> d!130437 (= lt!492197 e!627458)))

(declare-fun c!108526 () Bool)

(assert (=> d!130437 (= c!108526 (and (not (= (bvand extraKeys!811 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!811 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!130437 (validMask!0 mask!1414)))

(assert (=> d!130437 (= (getCurrentListMap!4398 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882) lt!492210)))

(declare-fun b!1099272 () Bool)

(declare-fun e!627460 () Bool)

(declare-fun apply!982 (ListLongMap!15379 (_ BitVec 64)) V!41347)

(declare-fun get!17642 (ValueCell!12873 V!41347) V!41347)

(assert (=> b!1099272 (= e!627460 (= (apply!982 lt!492210 (select (arr!34263 _keys!1070) #b00000000000000000000000000000000)) (get!17642 (select (arr!34264 _values!874) #b00000000000000000000000000000000) (dynLambda!2316 defaultEntry!882 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1099272 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!34801 _values!874)))))

(assert (=> b!1099272 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!34800 _keys!1070)))))

(declare-fun b!1099273 () Bool)

(declare-fun e!627453 () Bool)

(declare-fun call!45969 () Bool)

(assert (=> b!1099273 (= e!627453 (not call!45969))))

(declare-fun b!1099274 () Bool)

(declare-fun lt!492202 () Unit!36085)

(assert (=> b!1099274 (= e!627464 lt!492202)))

(declare-fun lt!492204 () ListLongMap!15379)

(assert (=> b!1099274 (= lt!492204 (getCurrentListMapNoExtraKeys!4185 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun lt!492201 () (_ BitVec 64))

(assert (=> b!1099274 (= lt!492201 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!492209 () (_ BitVec 64))

(assert (=> b!1099274 (= lt!492209 (select (arr!34263 _keys!1070) #b00000000000000000000000000000000))))

(declare-fun lt!492203 () Unit!36085)

(declare-fun addStillContains!664 (ListLongMap!15379 (_ BitVec 64) V!41347 (_ BitVec 64)) Unit!36085)

(assert (=> b!1099274 (= lt!492203 (addStillContains!664 lt!492204 lt!492201 zeroValue!831 lt!492209))))

(declare-fun contains!6402 (ListLongMap!15379 (_ BitVec 64)) Bool)

(assert (=> b!1099274 (contains!6402 (+!3340 lt!492204 (tuple2!17399 lt!492201 zeroValue!831)) lt!492209)))

(declare-fun lt!492194 () Unit!36085)

(assert (=> b!1099274 (= lt!492194 lt!492203)))

(declare-fun lt!492206 () ListLongMap!15379)

(assert (=> b!1099274 (= lt!492206 (getCurrentListMapNoExtraKeys!4185 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun lt!492211 () (_ BitVec 64))

(assert (=> b!1099274 (= lt!492211 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!492207 () (_ BitVec 64))

(assert (=> b!1099274 (= lt!492207 (select (arr!34263 _keys!1070) #b00000000000000000000000000000000))))

(declare-fun lt!492214 () Unit!36085)

(declare-fun addApplyDifferent!516 (ListLongMap!15379 (_ BitVec 64) V!41347 (_ BitVec 64)) Unit!36085)

(assert (=> b!1099274 (= lt!492214 (addApplyDifferent!516 lt!492206 lt!492211 minValue!831 lt!492207))))

(assert (=> b!1099274 (= (apply!982 (+!3340 lt!492206 (tuple2!17399 lt!492211 minValue!831)) lt!492207) (apply!982 lt!492206 lt!492207))))

(declare-fun lt!492193 () Unit!36085)

(assert (=> b!1099274 (= lt!492193 lt!492214)))

(declare-fun lt!492208 () ListLongMap!15379)

(assert (=> b!1099274 (= lt!492208 (getCurrentListMapNoExtraKeys!4185 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun lt!492199 () (_ BitVec 64))

(assert (=> b!1099274 (= lt!492199 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!492200 () (_ BitVec 64))

(assert (=> b!1099274 (= lt!492200 (select (arr!34263 _keys!1070) #b00000000000000000000000000000000))))

(declare-fun lt!492212 () Unit!36085)

(assert (=> b!1099274 (= lt!492212 (addApplyDifferent!516 lt!492208 lt!492199 zeroValue!831 lt!492200))))

(assert (=> b!1099274 (= (apply!982 (+!3340 lt!492208 (tuple2!17399 lt!492199 zeroValue!831)) lt!492200) (apply!982 lt!492208 lt!492200))))

(declare-fun lt!492196 () Unit!36085)

(assert (=> b!1099274 (= lt!492196 lt!492212)))

(declare-fun lt!492205 () ListLongMap!15379)

(assert (=> b!1099274 (= lt!492205 (getCurrentListMapNoExtraKeys!4185 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun lt!492195 () (_ BitVec 64))

(assert (=> b!1099274 (= lt!492195 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!492213 () (_ BitVec 64))

(assert (=> b!1099274 (= lt!492213 (select (arr!34263 _keys!1070) #b00000000000000000000000000000000))))

(assert (=> b!1099274 (= lt!492202 (addApplyDifferent!516 lt!492205 lt!492195 minValue!831 lt!492213))))

(assert (=> b!1099274 (= (apply!982 (+!3340 lt!492205 (tuple2!17399 lt!492195 minValue!831)) lt!492213) (apply!982 lt!492205 lt!492213))))

(declare-fun b!1099275 () Bool)

(declare-fun c!108523 () Bool)

(assert (=> b!1099275 (= c!108523 (and (not (= (bvand extraKeys!811 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeys!811 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun e!627457 () ListLongMap!15379)

(declare-fun e!627452 () ListLongMap!15379)

(assert (=> b!1099275 (= e!627457 e!627452)))

(declare-fun b!1099276 () Bool)

(declare-fun res!733705 () Bool)

(assert (=> b!1099276 (=> (not res!733705) (not e!627459))))

(declare-fun e!627463 () Bool)

(assert (=> b!1099276 (= res!733705 e!627463)))

(declare-fun res!733708 () Bool)

(assert (=> b!1099276 (=> res!733708 e!627463)))

(declare-fun e!627461 () Bool)

(assert (=> b!1099276 (= res!733708 (not e!627461))))

(declare-fun res!733700 () Bool)

(assert (=> b!1099276 (=> (not res!733700) (not e!627461))))

(assert (=> b!1099276 (= res!733700 (bvslt #b00000000000000000000000000000000 (size!34800 _keys!1070)))))

(declare-fun call!45965 () ListLongMap!15379)

(declare-fun bm!45961 () Bool)

(declare-fun c!108524 () Bool)

(declare-fun call!45968 () ListLongMap!15379)

(declare-fun call!45970 () ListLongMap!15379)

(assert (=> bm!45961 (= call!45964 (+!3340 (ite c!108526 call!45968 (ite c!108524 call!45965 call!45970)) (ite (or c!108526 c!108524) (tuple2!17399 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!831) (tuple2!17399 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!831))))))

(declare-fun bm!45962 () Bool)

(assert (=> bm!45962 (= call!45969 (contains!6402 lt!492210 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1099277 () Bool)

(declare-fun e!627462 () Bool)

(assert (=> b!1099277 (= e!627453 e!627462)))

(declare-fun res!733701 () Bool)

(assert (=> b!1099277 (= res!733701 call!45969)))

(assert (=> b!1099277 (=> (not res!733701) (not e!627462))))

(declare-fun b!1099278 () Bool)

(declare-fun Unit!36087 () Unit!36085)

(assert (=> b!1099278 (= e!627464 Unit!36087)))

(declare-fun b!1099279 () Bool)

(declare-fun call!45967 () ListLongMap!15379)

(assert (=> b!1099279 (= e!627457 call!45967)))

(declare-fun bm!45963 () Bool)

(assert (=> bm!45963 (= call!45967 call!45964)))

(declare-fun bm!45964 () Bool)

(declare-fun call!45966 () Bool)

(assert (=> bm!45964 (= call!45966 (contains!6402 lt!492210 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun bm!45965 () Bool)

(assert (=> bm!45965 (= call!45970 call!45965)))

(declare-fun b!1099280 () Bool)

(assert (=> b!1099280 (= e!627452 call!45967)))

(declare-fun b!1099281 () Bool)

(assert (=> b!1099281 (= e!627458 e!627457)))

(assert (=> b!1099281 (= c!108524 (and (not (= (bvand extraKeys!811 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeys!811 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1099282 () Bool)

(assert (=> b!1099282 (= e!627462 (= (apply!982 lt!492210 #b1000000000000000000000000000000000000000000000000000000000000000) minValue!831))))

(declare-fun bm!45966 () Bool)

(assert (=> bm!45966 (= call!45965 call!45968)))

(declare-fun b!1099283 () Bool)

(assert (=> b!1099283 (= e!627459 e!627453)))

(declare-fun c!108525 () Bool)

(assert (=> b!1099283 (= c!108525 (not (= (bvand extraKeys!811 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1099284 () Bool)

(assert (=> b!1099284 (= e!627461 (validKeyInArray!0 (select (arr!34263 _keys!1070) #b00000000000000000000000000000000)))))

(declare-fun b!1099285 () Bool)

(declare-fun e!627456 () Bool)

(assert (=> b!1099285 (= e!627456 (= (apply!982 lt!492210 #b0000000000000000000000000000000000000000000000000000000000000000) zeroValue!831))))

(declare-fun b!1099286 () Bool)

(assert (=> b!1099286 (= e!627463 e!627460)))

(declare-fun res!733707 () Bool)

(assert (=> b!1099286 (=> (not res!733707) (not e!627460))))

(assert (=> b!1099286 (= res!733707 (contains!6402 lt!492210 (select (arr!34263 _keys!1070) #b00000000000000000000000000000000)))))

(assert (=> b!1099286 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!34800 _keys!1070)))))

(declare-fun bm!45967 () Bool)

(assert (=> bm!45967 (= call!45968 (getCurrentListMapNoExtraKeys!4185 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun b!1099287 () Bool)

(declare-fun e!627455 () Bool)

(assert (=> b!1099287 (= e!627455 e!627456)))

(declare-fun res!733703 () Bool)

(assert (=> b!1099287 (= res!733703 call!45966)))

(assert (=> b!1099287 (=> (not res!733703) (not e!627456))))

(declare-fun b!1099288 () Bool)

(assert (=> b!1099288 (= e!627454 (validKeyInArray!0 (select (arr!34263 _keys!1070) #b00000000000000000000000000000000)))))

(declare-fun b!1099289 () Bool)

(assert (=> b!1099289 (= e!627455 (not call!45966))))

(declare-fun b!1099290 () Bool)

(assert (=> b!1099290 (= e!627452 call!45970)))

(declare-fun b!1099291 () Bool)

(declare-fun res!733702 () Bool)

(assert (=> b!1099291 (=> (not res!733702) (not e!627459))))

(assert (=> b!1099291 (= res!733702 e!627455)))

(declare-fun c!108527 () Bool)

(assert (=> b!1099291 (= c!108527 (not (= (bvand extraKeys!811 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (= (and d!130437 c!108526) b!1099271))

(assert (= (and d!130437 (not c!108526)) b!1099281))

(assert (= (and b!1099281 c!108524) b!1099279))

(assert (= (and b!1099281 (not c!108524)) b!1099275))

(assert (= (and b!1099275 c!108523) b!1099280))

(assert (= (and b!1099275 (not c!108523)) b!1099290))

(assert (= (or b!1099280 b!1099290) bm!45965))

(assert (= (or b!1099279 bm!45965) bm!45966))

(assert (= (or b!1099279 b!1099280) bm!45963))

(assert (= (or b!1099271 bm!45966) bm!45967))

(assert (= (or b!1099271 bm!45963) bm!45961))

(assert (= (and d!130437 res!733704) b!1099288))

(assert (= (and d!130437 c!108528) b!1099274))

(assert (= (and d!130437 (not c!108528)) b!1099278))

(assert (= (and d!130437 res!733706) b!1099276))

(assert (= (and b!1099276 res!733700) b!1099284))

(assert (= (and b!1099276 (not res!733708)) b!1099286))

(assert (= (and b!1099286 res!733707) b!1099272))

(assert (= (and b!1099276 res!733705) b!1099291))

(assert (= (and b!1099291 c!108527) b!1099287))

(assert (= (and b!1099291 (not c!108527)) b!1099289))

(assert (= (and b!1099287 res!733703) b!1099285))

(assert (= (or b!1099287 b!1099289) bm!45964))

(assert (= (and b!1099291 res!733702) b!1099283))

(assert (= (and b!1099283 c!108525) b!1099277))

(assert (= (and b!1099283 (not c!108525)) b!1099273))

(assert (= (and b!1099277 res!733701) b!1099282))

(assert (= (or b!1099277 b!1099273) bm!45962))

(declare-fun b_lambda!17929 () Bool)

(assert (=> (not b_lambda!17929) (not b!1099272)))

(assert (=> b!1099272 t!34240))

(declare-fun b_and!36975 () Bool)

(assert (= b_and!36969 (and (=> t!34240 result!16501) b_and!36975)))

(declare-fun m!1019365 () Bool)

(assert (=> b!1099282 m!1019365))

(assert (=> b!1099288 m!1019361))

(assert (=> b!1099288 m!1019361))

(declare-fun m!1019367 () Bool)

(assert (=> b!1099288 m!1019367))

(assert (=> bm!45967 m!1019301))

(declare-fun m!1019369 () Bool)

(assert (=> b!1099274 m!1019369))

(declare-fun m!1019371 () Bool)

(assert (=> b!1099274 m!1019371))

(declare-fun m!1019373 () Bool)

(assert (=> b!1099274 m!1019373))

(declare-fun m!1019375 () Bool)

(assert (=> b!1099274 m!1019375))

(declare-fun m!1019377 () Bool)

(assert (=> b!1099274 m!1019377))

(declare-fun m!1019379 () Bool)

(assert (=> b!1099274 m!1019379))

(declare-fun m!1019381 () Bool)

(assert (=> b!1099274 m!1019381))

(declare-fun m!1019383 () Bool)

(assert (=> b!1099274 m!1019383))

(assert (=> b!1099274 m!1019371))

(declare-fun m!1019385 () Bool)

(assert (=> b!1099274 m!1019385))

(declare-fun m!1019387 () Bool)

(assert (=> b!1099274 m!1019387))

(declare-fun m!1019389 () Bool)

(assert (=> b!1099274 m!1019389))

(declare-fun m!1019391 () Bool)

(assert (=> b!1099274 m!1019391))

(declare-fun m!1019393 () Bool)

(assert (=> b!1099274 m!1019393))

(declare-fun m!1019395 () Bool)

(assert (=> b!1099274 m!1019395))

(assert (=> b!1099274 m!1019301))

(assert (=> b!1099274 m!1019377))

(assert (=> b!1099274 m!1019361))

(assert (=> b!1099274 m!1019387))

(declare-fun m!1019397 () Bool)

(assert (=> b!1099274 m!1019397))

(assert (=> b!1099274 m!1019391))

(assert (=> b!1099286 m!1019361))

(assert (=> b!1099286 m!1019361))

(declare-fun m!1019399 () Bool)

(assert (=> b!1099286 m!1019399))

(declare-fun m!1019401 () Bool)

(assert (=> bm!45964 m!1019401))

(declare-fun m!1019403 () Bool)

(assert (=> b!1099271 m!1019403))

(assert (=> d!130437 m!1019281))

(assert (=> b!1099272 m!1019361))

(declare-fun m!1019405 () Bool)

(assert (=> b!1099272 m!1019405))

(declare-fun m!1019407 () Bool)

(assert (=> b!1099272 m!1019407))

(assert (=> b!1099272 m!1019407))

(assert (=> b!1099272 m!1019291))

(declare-fun m!1019409 () Bool)

(assert (=> b!1099272 m!1019409))

(assert (=> b!1099272 m!1019361))

(assert (=> b!1099272 m!1019291))

(declare-fun m!1019411 () Bool)

(assert (=> bm!45962 m!1019411))

(declare-fun m!1019413 () Bool)

(assert (=> bm!45961 m!1019413))

(assert (=> b!1099284 m!1019361))

(assert (=> b!1099284 m!1019361))

(assert (=> b!1099284 m!1019367))

(declare-fun m!1019415 () Bool)

(assert (=> b!1099285 m!1019415))

(assert (=> b!1099175 d!130437))

(declare-fun b!1099292 () Bool)

(declare-fun e!627471 () ListLongMap!15379)

(declare-fun call!45971 () ListLongMap!15379)

(assert (=> b!1099292 (= e!627471 (+!3340 call!45971 (tuple2!17399 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!831)))))

(declare-fun d!130439 () Bool)

(declare-fun e!627472 () Bool)

(assert (=> d!130439 e!627472))

(declare-fun res!733715 () Bool)

(assert (=> d!130439 (=> (not res!733715) (not e!627472))))

(assert (=> d!130439 (= res!733715 (or (bvsge #b00000000000000000000000000000000 (size!34800 lt!492114)) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!34800 lt!492114)))))))

(declare-fun lt!492232 () ListLongMap!15379)

(declare-fun lt!492219 () ListLongMap!15379)

(assert (=> d!130439 (= lt!492232 lt!492219)))

(declare-fun lt!492220 () Unit!36085)

(declare-fun e!627477 () Unit!36085)

(assert (=> d!130439 (= lt!492220 e!627477)))

(declare-fun c!108534 () Bool)

(declare-fun e!627467 () Bool)

(assert (=> d!130439 (= c!108534 e!627467)))

(declare-fun res!733713 () Bool)

(assert (=> d!130439 (=> (not res!733713) (not e!627467))))

(assert (=> d!130439 (= res!733713 (bvslt #b00000000000000000000000000000000 (size!34800 lt!492114)))))

(assert (=> d!130439 (= lt!492219 e!627471)))

(declare-fun c!108532 () Bool)

(assert (=> d!130439 (= c!108532 (and (not (= (bvand extraKeys!811 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!811 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!130439 (validMask!0 mask!1414)))

(assert (=> d!130439 (= (getCurrentListMap!4398 lt!492114 lt!492115 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882) lt!492232)))

(declare-fun b!1099293 () Bool)

(declare-fun e!627473 () Bool)

(assert (=> b!1099293 (= e!627473 (= (apply!982 lt!492232 (select (arr!34263 lt!492114) #b00000000000000000000000000000000)) (get!17642 (select (arr!34264 lt!492115) #b00000000000000000000000000000000) (dynLambda!2316 defaultEntry!882 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1099293 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!34801 lt!492115)))))

(assert (=> b!1099293 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!34800 lt!492114)))))

(declare-fun b!1099294 () Bool)

(declare-fun e!627466 () Bool)

(declare-fun call!45976 () Bool)

(assert (=> b!1099294 (= e!627466 (not call!45976))))

(declare-fun b!1099295 () Bool)

(declare-fun lt!492224 () Unit!36085)

(assert (=> b!1099295 (= e!627477 lt!492224)))

(declare-fun lt!492226 () ListLongMap!15379)

(assert (=> b!1099295 (= lt!492226 (getCurrentListMapNoExtraKeys!4185 lt!492114 lt!492115 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun lt!492223 () (_ BitVec 64))

(assert (=> b!1099295 (= lt!492223 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!492231 () (_ BitVec 64))

(assert (=> b!1099295 (= lt!492231 (select (arr!34263 lt!492114) #b00000000000000000000000000000000))))

(declare-fun lt!492225 () Unit!36085)

(assert (=> b!1099295 (= lt!492225 (addStillContains!664 lt!492226 lt!492223 zeroValue!831 lt!492231))))

(assert (=> b!1099295 (contains!6402 (+!3340 lt!492226 (tuple2!17399 lt!492223 zeroValue!831)) lt!492231)))

(declare-fun lt!492216 () Unit!36085)

(assert (=> b!1099295 (= lt!492216 lt!492225)))

(declare-fun lt!492228 () ListLongMap!15379)

(assert (=> b!1099295 (= lt!492228 (getCurrentListMapNoExtraKeys!4185 lt!492114 lt!492115 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun lt!492233 () (_ BitVec 64))

(assert (=> b!1099295 (= lt!492233 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!492229 () (_ BitVec 64))

(assert (=> b!1099295 (= lt!492229 (select (arr!34263 lt!492114) #b00000000000000000000000000000000))))

(declare-fun lt!492236 () Unit!36085)

(assert (=> b!1099295 (= lt!492236 (addApplyDifferent!516 lt!492228 lt!492233 minValue!831 lt!492229))))

(assert (=> b!1099295 (= (apply!982 (+!3340 lt!492228 (tuple2!17399 lt!492233 minValue!831)) lt!492229) (apply!982 lt!492228 lt!492229))))

(declare-fun lt!492215 () Unit!36085)

(assert (=> b!1099295 (= lt!492215 lt!492236)))

(declare-fun lt!492230 () ListLongMap!15379)

(assert (=> b!1099295 (= lt!492230 (getCurrentListMapNoExtraKeys!4185 lt!492114 lt!492115 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun lt!492221 () (_ BitVec 64))

(assert (=> b!1099295 (= lt!492221 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!492222 () (_ BitVec 64))

(assert (=> b!1099295 (= lt!492222 (select (arr!34263 lt!492114) #b00000000000000000000000000000000))))

(declare-fun lt!492234 () Unit!36085)

(assert (=> b!1099295 (= lt!492234 (addApplyDifferent!516 lt!492230 lt!492221 zeroValue!831 lt!492222))))

(assert (=> b!1099295 (= (apply!982 (+!3340 lt!492230 (tuple2!17399 lt!492221 zeroValue!831)) lt!492222) (apply!982 lt!492230 lt!492222))))

(declare-fun lt!492218 () Unit!36085)

(assert (=> b!1099295 (= lt!492218 lt!492234)))

(declare-fun lt!492227 () ListLongMap!15379)

(assert (=> b!1099295 (= lt!492227 (getCurrentListMapNoExtraKeys!4185 lt!492114 lt!492115 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun lt!492217 () (_ BitVec 64))

(assert (=> b!1099295 (= lt!492217 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!492235 () (_ BitVec 64))

(assert (=> b!1099295 (= lt!492235 (select (arr!34263 lt!492114) #b00000000000000000000000000000000))))

(assert (=> b!1099295 (= lt!492224 (addApplyDifferent!516 lt!492227 lt!492217 minValue!831 lt!492235))))

(assert (=> b!1099295 (= (apply!982 (+!3340 lt!492227 (tuple2!17399 lt!492217 minValue!831)) lt!492235) (apply!982 lt!492227 lt!492235))))

(declare-fun b!1099296 () Bool)

(declare-fun c!108529 () Bool)

(assert (=> b!1099296 (= c!108529 (and (not (= (bvand extraKeys!811 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeys!811 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun e!627470 () ListLongMap!15379)

(declare-fun e!627465 () ListLongMap!15379)

(assert (=> b!1099296 (= e!627470 e!627465)))

(declare-fun b!1099297 () Bool)

(declare-fun res!733714 () Bool)

(assert (=> b!1099297 (=> (not res!733714) (not e!627472))))

(declare-fun e!627476 () Bool)

(assert (=> b!1099297 (= res!733714 e!627476)))

(declare-fun res!733717 () Bool)

(assert (=> b!1099297 (=> res!733717 e!627476)))

(declare-fun e!627474 () Bool)

(assert (=> b!1099297 (= res!733717 (not e!627474))))

(declare-fun res!733709 () Bool)

(assert (=> b!1099297 (=> (not res!733709) (not e!627474))))

(assert (=> b!1099297 (= res!733709 (bvslt #b00000000000000000000000000000000 (size!34800 lt!492114)))))

(declare-fun call!45977 () ListLongMap!15379)

(declare-fun call!45975 () ListLongMap!15379)

(declare-fun bm!45968 () Bool)

(declare-fun call!45972 () ListLongMap!15379)

(declare-fun c!108530 () Bool)

(assert (=> bm!45968 (= call!45971 (+!3340 (ite c!108532 call!45975 (ite c!108530 call!45972 call!45977)) (ite (or c!108532 c!108530) (tuple2!17399 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!831) (tuple2!17399 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!831))))))

(declare-fun bm!45969 () Bool)

(assert (=> bm!45969 (= call!45976 (contains!6402 lt!492232 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1099298 () Bool)

(declare-fun e!627475 () Bool)

(assert (=> b!1099298 (= e!627466 e!627475)))

(declare-fun res!733710 () Bool)

(assert (=> b!1099298 (= res!733710 call!45976)))

(assert (=> b!1099298 (=> (not res!733710) (not e!627475))))

(declare-fun b!1099299 () Bool)

(declare-fun Unit!36088 () Unit!36085)

(assert (=> b!1099299 (= e!627477 Unit!36088)))

(declare-fun b!1099300 () Bool)

(declare-fun call!45974 () ListLongMap!15379)

(assert (=> b!1099300 (= e!627470 call!45974)))

(declare-fun bm!45970 () Bool)

(assert (=> bm!45970 (= call!45974 call!45971)))

(declare-fun bm!45971 () Bool)

(declare-fun call!45973 () Bool)

(assert (=> bm!45971 (= call!45973 (contains!6402 lt!492232 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun bm!45972 () Bool)

(assert (=> bm!45972 (= call!45977 call!45972)))

(declare-fun b!1099301 () Bool)

(assert (=> b!1099301 (= e!627465 call!45974)))

(declare-fun b!1099302 () Bool)

(assert (=> b!1099302 (= e!627471 e!627470)))

(assert (=> b!1099302 (= c!108530 (and (not (= (bvand extraKeys!811 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeys!811 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1099303 () Bool)

(assert (=> b!1099303 (= e!627475 (= (apply!982 lt!492232 #b1000000000000000000000000000000000000000000000000000000000000000) minValue!831))))

(declare-fun bm!45973 () Bool)

(assert (=> bm!45973 (= call!45972 call!45975)))

(declare-fun b!1099304 () Bool)

(assert (=> b!1099304 (= e!627472 e!627466)))

(declare-fun c!108531 () Bool)

(assert (=> b!1099304 (= c!108531 (not (= (bvand extraKeys!811 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1099305 () Bool)

(assert (=> b!1099305 (= e!627474 (validKeyInArray!0 (select (arr!34263 lt!492114) #b00000000000000000000000000000000)))))

(declare-fun b!1099306 () Bool)

(declare-fun e!627469 () Bool)

(assert (=> b!1099306 (= e!627469 (= (apply!982 lt!492232 #b0000000000000000000000000000000000000000000000000000000000000000) zeroValue!831))))

(declare-fun b!1099307 () Bool)

(assert (=> b!1099307 (= e!627476 e!627473)))

(declare-fun res!733716 () Bool)

(assert (=> b!1099307 (=> (not res!733716) (not e!627473))))

(assert (=> b!1099307 (= res!733716 (contains!6402 lt!492232 (select (arr!34263 lt!492114) #b00000000000000000000000000000000)))))

(assert (=> b!1099307 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!34800 lt!492114)))))

(declare-fun bm!45974 () Bool)

(assert (=> bm!45974 (= call!45975 (getCurrentListMapNoExtraKeys!4185 lt!492114 lt!492115 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun b!1099308 () Bool)

(declare-fun e!627468 () Bool)

(assert (=> b!1099308 (= e!627468 e!627469)))

(declare-fun res!733712 () Bool)

(assert (=> b!1099308 (= res!733712 call!45973)))

(assert (=> b!1099308 (=> (not res!733712) (not e!627469))))

(declare-fun b!1099309 () Bool)

(assert (=> b!1099309 (= e!627467 (validKeyInArray!0 (select (arr!34263 lt!492114) #b00000000000000000000000000000000)))))

(declare-fun b!1099310 () Bool)

(assert (=> b!1099310 (= e!627468 (not call!45973))))

(declare-fun b!1099311 () Bool)

(assert (=> b!1099311 (= e!627465 call!45977)))

(declare-fun b!1099312 () Bool)

(declare-fun res!733711 () Bool)

(assert (=> b!1099312 (=> (not res!733711) (not e!627472))))

(assert (=> b!1099312 (= res!733711 e!627468)))

(declare-fun c!108533 () Bool)

(assert (=> b!1099312 (= c!108533 (not (= (bvand extraKeys!811 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (= (and d!130439 c!108532) b!1099292))

(assert (= (and d!130439 (not c!108532)) b!1099302))

(assert (= (and b!1099302 c!108530) b!1099300))

(assert (= (and b!1099302 (not c!108530)) b!1099296))

(assert (= (and b!1099296 c!108529) b!1099301))

(assert (= (and b!1099296 (not c!108529)) b!1099311))

(assert (= (or b!1099301 b!1099311) bm!45972))

(assert (= (or b!1099300 bm!45972) bm!45973))

(assert (= (or b!1099300 b!1099301) bm!45970))

(assert (= (or b!1099292 bm!45973) bm!45974))

(assert (= (or b!1099292 bm!45970) bm!45968))

(assert (= (and d!130439 res!733713) b!1099309))

(assert (= (and d!130439 c!108534) b!1099295))

(assert (= (and d!130439 (not c!108534)) b!1099299))

(assert (= (and d!130439 res!733715) b!1099297))

(assert (= (and b!1099297 res!733709) b!1099305))

(assert (= (and b!1099297 (not res!733717)) b!1099307))

(assert (= (and b!1099307 res!733716) b!1099293))

(assert (= (and b!1099297 res!733714) b!1099312))

(assert (= (and b!1099312 c!108533) b!1099308))

(assert (= (and b!1099312 (not c!108533)) b!1099310))

(assert (= (and b!1099308 res!733712) b!1099306))

(assert (= (or b!1099308 b!1099310) bm!45971))

(assert (= (and b!1099312 res!733711) b!1099304))

(assert (= (and b!1099304 c!108531) b!1099298))

(assert (= (and b!1099304 (not c!108531)) b!1099294))

(assert (= (and b!1099298 res!733710) b!1099303))

(assert (= (or b!1099298 b!1099294) bm!45969))

(declare-fun b_lambda!17931 () Bool)

(assert (=> (not b_lambda!17931) (not b!1099293)))

(assert (=> b!1099293 t!34240))

(declare-fun b_and!36977 () Bool)

(assert (= b_and!36975 (and (=> t!34240 result!16501) b_and!36977)))

(declare-fun m!1019417 () Bool)

(assert (=> b!1099303 m!1019417))

(declare-fun m!1019419 () Bool)

(assert (=> b!1099309 m!1019419))

(assert (=> b!1099309 m!1019419))

(declare-fun m!1019421 () Bool)

(assert (=> b!1099309 m!1019421))

(assert (=> bm!45974 m!1019309))

(declare-fun m!1019423 () Bool)

(assert (=> b!1099295 m!1019423))

(declare-fun m!1019425 () Bool)

(assert (=> b!1099295 m!1019425))

(declare-fun m!1019427 () Bool)

(assert (=> b!1099295 m!1019427))

(declare-fun m!1019429 () Bool)

(assert (=> b!1099295 m!1019429))

(declare-fun m!1019431 () Bool)

(assert (=> b!1099295 m!1019431))

(declare-fun m!1019433 () Bool)

(assert (=> b!1099295 m!1019433))

(declare-fun m!1019435 () Bool)

(assert (=> b!1099295 m!1019435))

(declare-fun m!1019437 () Bool)

(assert (=> b!1099295 m!1019437))

(assert (=> b!1099295 m!1019425))

(declare-fun m!1019439 () Bool)

(assert (=> b!1099295 m!1019439))

(declare-fun m!1019441 () Bool)

(assert (=> b!1099295 m!1019441))

(declare-fun m!1019443 () Bool)

(assert (=> b!1099295 m!1019443))

(declare-fun m!1019445 () Bool)

(assert (=> b!1099295 m!1019445))

(declare-fun m!1019447 () Bool)

(assert (=> b!1099295 m!1019447))

(declare-fun m!1019449 () Bool)

(assert (=> b!1099295 m!1019449))

(assert (=> b!1099295 m!1019309))

(assert (=> b!1099295 m!1019431))

(assert (=> b!1099295 m!1019419))

(assert (=> b!1099295 m!1019441))

(declare-fun m!1019451 () Bool)

(assert (=> b!1099295 m!1019451))

(assert (=> b!1099295 m!1019445))

(assert (=> b!1099307 m!1019419))

(assert (=> b!1099307 m!1019419))

(declare-fun m!1019453 () Bool)

(assert (=> b!1099307 m!1019453))

(declare-fun m!1019455 () Bool)

(assert (=> bm!45971 m!1019455))

(declare-fun m!1019457 () Bool)

(assert (=> b!1099292 m!1019457))

(assert (=> d!130439 m!1019281))

(assert (=> b!1099293 m!1019419))

(declare-fun m!1019459 () Bool)

(assert (=> b!1099293 m!1019459))

(declare-fun m!1019461 () Bool)

(assert (=> b!1099293 m!1019461))

(assert (=> b!1099293 m!1019461))

(assert (=> b!1099293 m!1019291))

(declare-fun m!1019463 () Bool)

(assert (=> b!1099293 m!1019463))

(assert (=> b!1099293 m!1019419))

(assert (=> b!1099293 m!1019291))

(declare-fun m!1019465 () Bool)

(assert (=> bm!45969 m!1019465))

(declare-fun m!1019467 () Bool)

(assert (=> bm!45968 m!1019467))

(assert (=> b!1099305 m!1019419))

(assert (=> b!1099305 m!1019419))

(assert (=> b!1099305 m!1019421))

(declare-fun m!1019469 () Bool)

(assert (=> b!1099306 m!1019469))

(assert (=> b!1099175 d!130439))

(declare-fun b!1099337 () Bool)

(declare-fun e!627492 () ListLongMap!15379)

(assert (=> b!1099337 (= e!627492 (ListLongMap!15380 Nil!24071))))

(declare-fun b!1099338 () Bool)

(declare-fun lt!492252 () Unit!36085)

(declare-fun lt!492254 () Unit!36085)

(assert (=> b!1099338 (= lt!492252 lt!492254)))

(declare-fun lt!492253 () ListLongMap!15379)

(declare-fun lt!492255 () (_ BitVec 64))

(declare-fun lt!492251 () V!41347)

(declare-fun lt!492257 () (_ BitVec 64))

(assert (=> b!1099338 (not (contains!6402 (+!3340 lt!492253 (tuple2!17399 lt!492255 lt!492251)) lt!492257))))

(declare-fun addStillNotContains!277 (ListLongMap!15379 (_ BitVec 64) V!41347 (_ BitVec 64)) Unit!36085)

(assert (=> b!1099338 (= lt!492254 (addStillNotContains!277 lt!492253 lt!492255 lt!492251 lt!492257))))

(assert (=> b!1099338 (= lt!492257 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!1099338 (= lt!492251 (get!17642 (select (arr!34264 lt!492115) #b00000000000000000000000000000000) (dynLambda!2316 defaultEntry!882 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!1099338 (= lt!492255 (select (arr!34263 lt!492114) #b00000000000000000000000000000000))))

(declare-fun call!45980 () ListLongMap!15379)

(assert (=> b!1099338 (= lt!492253 call!45980)))

(declare-fun e!627495 () ListLongMap!15379)

(assert (=> b!1099338 (= e!627495 (+!3340 call!45980 (tuple2!17399 (select (arr!34263 lt!492114) #b00000000000000000000000000000000) (get!17642 (select (arr!34264 lt!492115) #b00000000000000000000000000000000) (dynLambda!2316 defaultEntry!882 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!1099339 () Bool)

(declare-fun e!627497 () Bool)

(assert (=> b!1099339 (= e!627497 (validKeyInArray!0 (select (arr!34263 lt!492114) #b00000000000000000000000000000000)))))

(assert (=> b!1099339 (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000)))

(declare-fun b!1099340 () Bool)

(declare-fun res!733727 () Bool)

(declare-fun e!627494 () Bool)

(assert (=> b!1099340 (=> (not res!733727) (not e!627494))))

(declare-fun lt!492256 () ListLongMap!15379)

(assert (=> b!1099340 (= res!733727 (not (contains!6402 lt!492256 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1099341 () Bool)

(declare-fun e!627496 () Bool)

(declare-fun e!627493 () Bool)

(assert (=> b!1099341 (= e!627496 e!627493)))

(declare-fun c!108544 () Bool)

(assert (=> b!1099341 (= c!108544 (bvslt #b00000000000000000000000000000000 (size!34800 lt!492114)))))

(declare-fun b!1099342 () Bool)

(assert (=> b!1099342 (= e!627493 (= lt!492256 (getCurrentListMapNoExtraKeys!4185 lt!492114 lt!492115 mask!1414 extraKeys!811 zeroValue!831 minValue!831 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) defaultEntry!882)))))

(declare-fun bm!45977 () Bool)

(assert (=> bm!45977 (= call!45980 (getCurrentListMapNoExtraKeys!4185 lt!492114 lt!492115 mask!1414 extraKeys!811 zeroValue!831 minValue!831 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) defaultEntry!882))))

(declare-fun b!1099344 () Bool)

(declare-fun isEmpty!968 (ListLongMap!15379) Bool)

(assert (=> b!1099344 (= e!627493 (isEmpty!968 lt!492256))))

(declare-fun b!1099345 () Bool)

(assert (=> b!1099345 (= e!627495 call!45980)))

(declare-fun b!1099346 () Bool)

(assert (=> b!1099346 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!34800 lt!492114)))))

(assert (=> b!1099346 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!34801 lt!492115)))))

(declare-fun e!627498 () Bool)

(assert (=> b!1099346 (= e!627498 (= (apply!982 lt!492256 (select (arr!34263 lt!492114) #b00000000000000000000000000000000)) (get!17642 (select (arr!34264 lt!492115) #b00000000000000000000000000000000) (dynLambda!2316 defaultEntry!882 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1099347 () Bool)

(assert (=> b!1099347 (= e!627494 e!627496)))

(declare-fun c!108543 () Bool)

(assert (=> b!1099347 (= c!108543 e!627497)))

(declare-fun res!733728 () Bool)

(assert (=> b!1099347 (=> (not res!733728) (not e!627497))))

(assert (=> b!1099347 (= res!733728 (bvslt #b00000000000000000000000000000000 (size!34800 lt!492114)))))

(declare-fun b!1099348 () Bool)

(assert (=> b!1099348 (= e!627492 e!627495)))

(declare-fun c!108546 () Bool)

(assert (=> b!1099348 (= c!108546 (validKeyInArray!0 (select (arr!34263 lt!492114) #b00000000000000000000000000000000)))))

(declare-fun b!1099343 () Bool)

(assert (=> b!1099343 (= e!627496 e!627498)))

(assert (=> b!1099343 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!34800 lt!492114)))))

(declare-fun res!733726 () Bool)

(assert (=> b!1099343 (= res!733726 (contains!6402 lt!492256 (select (arr!34263 lt!492114) #b00000000000000000000000000000000)))))

(assert (=> b!1099343 (=> (not res!733726) (not e!627498))))

(declare-fun d!130441 () Bool)

(assert (=> d!130441 e!627494))

(declare-fun res!733729 () Bool)

(assert (=> d!130441 (=> (not res!733729) (not e!627494))))

(assert (=> d!130441 (= res!733729 (not (contains!6402 lt!492256 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!130441 (= lt!492256 e!627492)))

(declare-fun c!108545 () Bool)

(assert (=> d!130441 (= c!108545 (bvsge #b00000000000000000000000000000000 (size!34800 lt!492114)))))

(assert (=> d!130441 (validMask!0 mask!1414)))

(assert (=> d!130441 (= (getCurrentListMapNoExtraKeys!4185 lt!492114 lt!492115 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882) lt!492256)))

(assert (= (and d!130441 c!108545) b!1099337))

(assert (= (and d!130441 (not c!108545)) b!1099348))

(assert (= (and b!1099348 c!108546) b!1099338))

(assert (= (and b!1099348 (not c!108546)) b!1099345))

(assert (= (or b!1099338 b!1099345) bm!45977))

(assert (= (and d!130441 res!733729) b!1099340))

(assert (= (and b!1099340 res!733727) b!1099347))

(assert (= (and b!1099347 res!733728) b!1099339))

(assert (= (and b!1099347 c!108543) b!1099343))

(assert (= (and b!1099347 (not c!108543)) b!1099341))

(assert (= (and b!1099343 res!733726) b!1099346))

(assert (= (and b!1099341 c!108544) b!1099342))

(assert (= (and b!1099341 (not c!108544)) b!1099344))

(declare-fun b_lambda!17933 () Bool)

(assert (=> (not b_lambda!17933) (not b!1099338)))

(assert (=> b!1099338 t!34240))

(declare-fun b_and!36979 () Bool)

(assert (= b_and!36977 (and (=> t!34240 result!16501) b_and!36979)))

(declare-fun b_lambda!17935 () Bool)

(assert (=> (not b_lambda!17935) (not b!1099346)))

(assert (=> b!1099346 t!34240))

(declare-fun b_and!36981 () Bool)

(assert (= b_and!36979 (and (=> t!34240 result!16501) b_and!36981)))

(assert (=> b!1099346 m!1019291))

(assert (=> b!1099346 m!1019461))

(assert (=> b!1099346 m!1019291))

(assert (=> b!1099346 m!1019463))

(assert (=> b!1099346 m!1019419))

(assert (=> b!1099346 m!1019461))

(assert (=> b!1099346 m!1019419))

(declare-fun m!1019471 () Bool)

(assert (=> b!1099346 m!1019471))

(declare-fun m!1019473 () Bool)

(assert (=> bm!45977 m!1019473))

(assert (=> b!1099348 m!1019419))

(assert (=> b!1099348 m!1019419))

(assert (=> b!1099348 m!1019421))

(declare-fun m!1019475 () Bool)

(assert (=> d!130441 m!1019475))

(assert (=> d!130441 m!1019281))

(assert (=> b!1099339 m!1019419))

(assert (=> b!1099339 m!1019419))

(assert (=> b!1099339 m!1019421))

(declare-fun m!1019477 () Bool)

(assert (=> b!1099340 m!1019477))

(assert (=> b!1099343 m!1019419))

(assert (=> b!1099343 m!1019419))

(declare-fun m!1019479 () Bool)

(assert (=> b!1099343 m!1019479))

(declare-fun m!1019481 () Bool)

(assert (=> b!1099338 m!1019481))

(assert (=> b!1099338 m!1019291))

(declare-fun m!1019483 () Bool)

(assert (=> b!1099338 m!1019483))

(assert (=> b!1099338 m!1019461))

(assert (=> b!1099338 m!1019291))

(assert (=> b!1099338 m!1019463))

(declare-fun m!1019485 () Bool)

(assert (=> b!1099338 m!1019485))

(assert (=> b!1099338 m!1019483))

(declare-fun m!1019487 () Bool)

(assert (=> b!1099338 m!1019487))

(assert (=> b!1099338 m!1019419))

(assert (=> b!1099338 m!1019461))

(assert (=> b!1099342 m!1019473))

(declare-fun m!1019489 () Bool)

(assert (=> b!1099344 m!1019489))

(assert (=> b!1099175 d!130441))

(declare-fun d!130443 () Bool)

(declare-fun lt!492260 () ListLongMap!15379)

(assert (=> d!130443 (not (contains!6402 lt!492260 k0!904))))

(declare-fun removeStrictlySorted!82 (List!24074 (_ BitVec 64)) List!24074)

(assert (=> d!130443 (= lt!492260 (ListLongMap!15380 (removeStrictlySorted!82 (toList!7705 lt!492113) k0!904)))))

(assert (=> d!130443 (= (-!949 lt!492113 k0!904) lt!492260)))

(declare-fun bs!32284 () Bool)

(assert (= bs!32284 d!130443))

(declare-fun m!1019491 () Bool)

(assert (=> bs!32284 m!1019491))

(declare-fun m!1019493 () Bool)

(assert (=> bs!32284 m!1019493))

(assert (=> b!1099175 d!130443))

(declare-fun bm!45982 () Bool)

(declare-fun call!45985 () ListLongMap!15379)

(assert (=> bm!45982 (= call!45985 (getCurrentListMapNoExtraKeys!4185 (array!71199 (store (arr!34263 _keys!1070) i!650 #b1000000000000000000000000000000000000000000000000000000000000000) (size!34800 _keys!1070)) (array!71201 (store (arr!34264 _values!874) i!650 (ValueCellFull!12873 (dynLambda!2316 defaultEntry!882 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!34801 _values!874)) mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun b!1099355 () Bool)

(declare-fun e!627503 () Bool)

(declare-fun call!45986 () ListLongMap!15379)

(assert (=> b!1099355 (= e!627503 (= call!45985 call!45986))))

(assert (=> b!1099355 (and (bvsge i!650 #b00000000000000000000000000000000) (bvslt i!650 (size!34801 _values!874)))))

(declare-fun b!1099356 () Bool)

(assert (=> b!1099356 (= e!627503 (= call!45985 (-!949 call!45986 k0!904)))))

(assert (=> b!1099356 (and (bvsge i!650 #b00000000000000000000000000000000) (bvslt i!650 (size!34801 _values!874)))))

(declare-fun b!1099357 () Bool)

(declare-fun e!627504 () Bool)

(assert (=> b!1099357 (= e!627504 e!627503)))

(declare-fun c!108549 () Bool)

(assert (=> b!1099357 (= c!108549 (bvsle #b00000000000000000000000000000000 i!650))))

(declare-fun d!130445 () Bool)

(assert (=> d!130445 e!627504))

(declare-fun res!733732 () Bool)

(assert (=> d!130445 (=> (not res!733732) (not e!627504))))

(assert (=> d!130445 (= res!733732 (and (or (not (bvsle #b00000000000000000000000000000000 i!650)) (and (bvsge i!650 #b00000000000000000000000000000000) (bvslt i!650 (size!34800 _keys!1070)))) (or (bvsle #b00000000000000000000000000000000 i!650) (and (bvsge i!650 #b00000000000000000000000000000000) (bvslt i!650 (size!34800 _keys!1070))))))))

(declare-fun lt!492263 () Unit!36085)

(declare-fun choose!1773 (array!71198 array!71200 (_ BitVec 32) (_ BitVec 32) V!41347 V!41347 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!36085)

(assert (=> d!130445 (= lt!492263 (choose!1773 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 i!650 k0!904 #b00000000000000000000000000000000 defaultEntry!882))))

(assert (=> d!130445 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvsle #b00000000000000000000000000000000 (size!34800 _keys!1070)))))

(assert (=> d!130445 (= (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!210 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 i!650 k0!904 #b00000000000000000000000000000000 defaultEntry!882) lt!492263)))

(declare-fun bm!45983 () Bool)

(assert (=> bm!45983 (= call!45986 (getCurrentListMapNoExtraKeys!4185 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(assert (= (and d!130445 res!733732) b!1099357))

(assert (= (and b!1099357 c!108549) b!1099356))

(assert (= (and b!1099357 (not c!108549)) b!1099355))

(assert (= (or b!1099356 b!1099355) bm!45983))

(assert (= (or b!1099356 b!1099355) bm!45982))

(declare-fun b_lambda!17937 () Bool)

(assert (=> (not b_lambda!17937) (not bm!45982)))

(assert (=> bm!45982 t!34240))

(declare-fun b_and!36983 () Bool)

(assert (= b_and!36981 (and (=> t!34240 result!16501) b_and!36983)))

(assert (=> bm!45982 m!1019315))

(assert (=> bm!45982 m!1019291))

(assert (=> bm!45982 m!1019293))

(declare-fun m!1019495 () Bool)

(assert (=> bm!45982 m!1019495))

(declare-fun m!1019497 () Bool)

(assert (=> b!1099356 m!1019497))

(declare-fun m!1019499 () Bool)

(assert (=> d!130445 m!1019499))

(assert (=> bm!45983 m!1019301))

(assert (=> b!1099175 d!130445))

(declare-fun b!1099358 () Bool)

(declare-fun e!627505 () ListLongMap!15379)

(assert (=> b!1099358 (= e!627505 (ListLongMap!15380 Nil!24071))))

(declare-fun b!1099359 () Bool)

(declare-fun lt!492265 () Unit!36085)

(declare-fun lt!492267 () Unit!36085)

(assert (=> b!1099359 (= lt!492265 lt!492267)))

(declare-fun lt!492268 () (_ BitVec 64))

(declare-fun lt!492266 () ListLongMap!15379)

(declare-fun lt!492264 () V!41347)

(declare-fun lt!492270 () (_ BitVec 64))

(assert (=> b!1099359 (not (contains!6402 (+!3340 lt!492266 (tuple2!17399 lt!492268 lt!492264)) lt!492270))))

(assert (=> b!1099359 (= lt!492267 (addStillNotContains!277 lt!492266 lt!492268 lt!492264 lt!492270))))

(assert (=> b!1099359 (= lt!492270 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!1099359 (= lt!492264 (get!17642 (select (arr!34264 _values!874) #b00000000000000000000000000000000) (dynLambda!2316 defaultEntry!882 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!1099359 (= lt!492268 (select (arr!34263 _keys!1070) #b00000000000000000000000000000000))))

(declare-fun call!45987 () ListLongMap!15379)

(assert (=> b!1099359 (= lt!492266 call!45987)))

(declare-fun e!627508 () ListLongMap!15379)

(assert (=> b!1099359 (= e!627508 (+!3340 call!45987 (tuple2!17399 (select (arr!34263 _keys!1070) #b00000000000000000000000000000000) (get!17642 (select (arr!34264 _values!874) #b00000000000000000000000000000000) (dynLambda!2316 defaultEntry!882 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!1099360 () Bool)

(declare-fun e!627510 () Bool)

(assert (=> b!1099360 (= e!627510 (validKeyInArray!0 (select (arr!34263 _keys!1070) #b00000000000000000000000000000000)))))

(assert (=> b!1099360 (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000)))

(declare-fun b!1099361 () Bool)

(declare-fun res!733734 () Bool)

(declare-fun e!627507 () Bool)

(assert (=> b!1099361 (=> (not res!733734) (not e!627507))))

(declare-fun lt!492269 () ListLongMap!15379)

(assert (=> b!1099361 (= res!733734 (not (contains!6402 lt!492269 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1099362 () Bool)

(declare-fun e!627509 () Bool)

(declare-fun e!627506 () Bool)

(assert (=> b!1099362 (= e!627509 e!627506)))

(declare-fun c!108551 () Bool)

(assert (=> b!1099362 (= c!108551 (bvslt #b00000000000000000000000000000000 (size!34800 _keys!1070)))))

(declare-fun b!1099363 () Bool)

(assert (=> b!1099363 (= e!627506 (= lt!492269 (getCurrentListMapNoExtraKeys!4185 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) defaultEntry!882)))))

(declare-fun bm!45984 () Bool)

(assert (=> bm!45984 (= call!45987 (getCurrentListMapNoExtraKeys!4185 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) defaultEntry!882))))

(declare-fun b!1099365 () Bool)

(assert (=> b!1099365 (= e!627506 (isEmpty!968 lt!492269))))

(declare-fun b!1099366 () Bool)

(assert (=> b!1099366 (= e!627508 call!45987)))

(declare-fun b!1099367 () Bool)

(assert (=> b!1099367 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!34800 _keys!1070)))))

(assert (=> b!1099367 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!34801 _values!874)))))

(declare-fun e!627511 () Bool)

(assert (=> b!1099367 (= e!627511 (= (apply!982 lt!492269 (select (arr!34263 _keys!1070) #b00000000000000000000000000000000)) (get!17642 (select (arr!34264 _values!874) #b00000000000000000000000000000000) (dynLambda!2316 defaultEntry!882 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1099368 () Bool)

(assert (=> b!1099368 (= e!627507 e!627509)))

(declare-fun c!108550 () Bool)

(assert (=> b!1099368 (= c!108550 e!627510)))

(declare-fun res!733735 () Bool)

(assert (=> b!1099368 (=> (not res!733735) (not e!627510))))

(assert (=> b!1099368 (= res!733735 (bvslt #b00000000000000000000000000000000 (size!34800 _keys!1070)))))

(declare-fun b!1099369 () Bool)

(assert (=> b!1099369 (= e!627505 e!627508)))

(declare-fun c!108553 () Bool)

(assert (=> b!1099369 (= c!108553 (validKeyInArray!0 (select (arr!34263 _keys!1070) #b00000000000000000000000000000000)))))

(declare-fun b!1099364 () Bool)

(assert (=> b!1099364 (= e!627509 e!627511)))

(assert (=> b!1099364 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!34800 _keys!1070)))))

(declare-fun res!733733 () Bool)

(assert (=> b!1099364 (= res!733733 (contains!6402 lt!492269 (select (arr!34263 _keys!1070) #b00000000000000000000000000000000)))))

(assert (=> b!1099364 (=> (not res!733733) (not e!627511))))

(declare-fun d!130447 () Bool)

(assert (=> d!130447 e!627507))

(declare-fun res!733736 () Bool)

(assert (=> d!130447 (=> (not res!733736) (not e!627507))))

(assert (=> d!130447 (= res!733736 (not (contains!6402 lt!492269 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!130447 (= lt!492269 e!627505)))

(declare-fun c!108552 () Bool)

(assert (=> d!130447 (= c!108552 (bvsge #b00000000000000000000000000000000 (size!34800 _keys!1070)))))

(assert (=> d!130447 (validMask!0 mask!1414)))

(assert (=> d!130447 (= (getCurrentListMapNoExtraKeys!4185 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882) lt!492269)))

(assert (= (and d!130447 c!108552) b!1099358))

(assert (= (and d!130447 (not c!108552)) b!1099369))

(assert (= (and b!1099369 c!108553) b!1099359))

(assert (= (and b!1099369 (not c!108553)) b!1099366))

(assert (= (or b!1099359 b!1099366) bm!45984))

(assert (= (and d!130447 res!733736) b!1099361))

(assert (= (and b!1099361 res!733734) b!1099368))

(assert (= (and b!1099368 res!733735) b!1099360))

(assert (= (and b!1099368 c!108550) b!1099364))

(assert (= (and b!1099368 (not c!108550)) b!1099362))

(assert (= (and b!1099364 res!733733) b!1099367))

(assert (= (and b!1099362 c!108551) b!1099363))

(assert (= (and b!1099362 (not c!108551)) b!1099365))

(declare-fun b_lambda!17939 () Bool)

(assert (=> (not b_lambda!17939) (not b!1099359)))

(assert (=> b!1099359 t!34240))

(declare-fun b_and!36985 () Bool)

(assert (= b_and!36983 (and (=> t!34240 result!16501) b_and!36985)))

(declare-fun b_lambda!17941 () Bool)

(assert (=> (not b_lambda!17941) (not b!1099367)))

(assert (=> b!1099367 t!34240))

(declare-fun b_and!36987 () Bool)

(assert (= b_and!36985 (and (=> t!34240 result!16501) b_and!36987)))

(assert (=> b!1099367 m!1019291))

(assert (=> b!1099367 m!1019407))

(assert (=> b!1099367 m!1019291))

(assert (=> b!1099367 m!1019409))

(assert (=> b!1099367 m!1019361))

(assert (=> b!1099367 m!1019407))

(assert (=> b!1099367 m!1019361))

(declare-fun m!1019501 () Bool)

(assert (=> b!1099367 m!1019501))

(declare-fun m!1019503 () Bool)

(assert (=> bm!45984 m!1019503))

(assert (=> b!1099369 m!1019361))

(assert (=> b!1099369 m!1019361))

(assert (=> b!1099369 m!1019367))

(declare-fun m!1019505 () Bool)

(assert (=> d!130447 m!1019505))

(assert (=> d!130447 m!1019281))

(assert (=> b!1099360 m!1019361))

(assert (=> b!1099360 m!1019361))

(assert (=> b!1099360 m!1019367))

(declare-fun m!1019507 () Bool)

(assert (=> b!1099361 m!1019507))

(assert (=> b!1099364 m!1019361))

(assert (=> b!1099364 m!1019361))

(declare-fun m!1019509 () Bool)

(assert (=> b!1099364 m!1019509))

(declare-fun m!1019511 () Bool)

(assert (=> b!1099359 m!1019511))

(assert (=> b!1099359 m!1019291))

(declare-fun m!1019513 () Bool)

(assert (=> b!1099359 m!1019513))

(assert (=> b!1099359 m!1019407))

(assert (=> b!1099359 m!1019291))

(assert (=> b!1099359 m!1019409))

(declare-fun m!1019515 () Bool)

(assert (=> b!1099359 m!1019515))

(assert (=> b!1099359 m!1019513))

(declare-fun m!1019517 () Bool)

(assert (=> b!1099359 m!1019517))

(assert (=> b!1099359 m!1019361))

(assert (=> b!1099359 m!1019407))

(assert (=> b!1099363 m!1019503))

(declare-fun m!1019519 () Bool)

(assert (=> b!1099365 m!1019519))

(assert (=> b!1099175 d!130447))

(declare-fun d!130449 () Bool)

(assert (=> d!130449 (arrayContainsKey!0 _keys!1070 k0!904 #b00000000000000000000000000000000)))

(declare-fun lt!492273 () Unit!36085)

(declare-fun choose!13 (array!71198 (_ BitVec 64) (_ BitVec 32)) Unit!36085)

(assert (=> d!130449 (= lt!492273 (choose!13 _keys!1070 k0!904 i!650))))

(assert (=> d!130449 (bvsge i!650 #b00000000000000000000000000000000)))

(assert (=> d!130449 (= (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1070 k0!904 i!650) lt!492273)))

(declare-fun bs!32285 () Bool)

(assert (= bs!32285 d!130449))

(assert (=> bs!32285 m!1019295))

(declare-fun m!1019521 () Bool)

(assert (=> bs!32285 m!1019521))

(assert (=> b!1099175 d!130449))

(declare-fun d!130451 () Bool)

(declare-fun res!733743 () Bool)

(declare-fun e!627520 () Bool)

(assert (=> d!130451 (=> res!733743 e!627520)))

(assert (=> d!130451 (= res!733743 (bvsge #b00000000000000000000000000000000 (size!34800 _keys!1070)))))

(assert (=> d!130451 (= (arrayNoDuplicates!0 _keys!1070 #b00000000000000000000000000000000 Nil!24070) e!627520)))

(declare-fun b!1099380 () Bool)

(declare-fun e!627522 () Bool)

(declare-fun call!45990 () Bool)

(assert (=> b!1099380 (= e!627522 call!45990)))

(declare-fun b!1099381 () Bool)

(declare-fun e!627523 () Bool)

(assert (=> b!1099381 (= e!627523 e!627522)))

(declare-fun c!108556 () Bool)

(assert (=> b!1099381 (= c!108556 (validKeyInArray!0 (select (arr!34263 _keys!1070) #b00000000000000000000000000000000)))))

(declare-fun bm!45987 () Bool)

(assert (=> bm!45987 (= call!45990 (arrayNoDuplicates!0 _keys!1070 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!108556 (Cons!24069 (select (arr!34263 _keys!1070) #b00000000000000000000000000000000) Nil!24070) Nil!24070)))))

(declare-fun b!1099382 () Bool)

(declare-fun e!627521 () Bool)

(declare-fun contains!6403 (List!24073 (_ BitVec 64)) Bool)

(assert (=> b!1099382 (= e!627521 (contains!6403 Nil!24070 (select (arr!34263 _keys!1070) #b00000000000000000000000000000000)))))

(declare-fun b!1099383 () Bool)

(assert (=> b!1099383 (= e!627522 call!45990)))

(declare-fun b!1099384 () Bool)

(assert (=> b!1099384 (= e!627520 e!627523)))

(declare-fun res!733744 () Bool)

(assert (=> b!1099384 (=> (not res!733744) (not e!627523))))

(assert (=> b!1099384 (= res!733744 (not e!627521))))

(declare-fun res!733745 () Bool)

(assert (=> b!1099384 (=> (not res!733745) (not e!627521))))

(assert (=> b!1099384 (= res!733745 (validKeyInArray!0 (select (arr!34263 _keys!1070) #b00000000000000000000000000000000)))))

(assert (= (and d!130451 (not res!733743)) b!1099384))

(assert (= (and b!1099384 res!733745) b!1099382))

(assert (= (and b!1099384 res!733744) b!1099381))

(assert (= (and b!1099381 c!108556) b!1099380))

(assert (= (and b!1099381 (not c!108556)) b!1099383))

(assert (= (or b!1099380 b!1099383) bm!45987))

(assert (=> b!1099381 m!1019361))

(assert (=> b!1099381 m!1019361))

(assert (=> b!1099381 m!1019367))

(assert (=> bm!45987 m!1019361))

(declare-fun m!1019523 () Bool)

(assert (=> bm!45987 m!1019523))

(assert (=> b!1099382 m!1019361))

(assert (=> b!1099382 m!1019361))

(declare-fun m!1019525 () Bool)

(assert (=> b!1099382 m!1019525))

(assert (=> b!1099384 m!1019361))

(assert (=> b!1099384 m!1019361))

(assert (=> b!1099384 m!1019367))

(assert (=> b!1099179 d!130451))

(declare-fun d!130453 () Bool)

(declare-fun res!733746 () Bool)

(declare-fun e!627524 () Bool)

(assert (=> d!130453 (=> res!733746 e!627524)))

(assert (=> d!130453 (= res!733746 (bvsge #b00000000000000000000000000000000 (size!34800 lt!492114)))))

(assert (=> d!130453 (= (arrayNoDuplicates!0 lt!492114 #b00000000000000000000000000000000 Nil!24070) e!627524)))

(declare-fun b!1099385 () Bool)

(declare-fun e!627526 () Bool)

(declare-fun call!45991 () Bool)

(assert (=> b!1099385 (= e!627526 call!45991)))

(declare-fun b!1099386 () Bool)

(declare-fun e!627527 () Bool)

(assert (=> b!1099386 (= e!627527 e!627526)))

(declare-fun c!108557 () Bool)

(assert (=> b!1099386 (= c!108557 (validKeyInArray!0 (select (arr!34263 lt!492114) #b00000000000000000000000000000000)))))

(declare-fun bm!45988 () Bool)

(assert (=> bm!45988 (= call!45991 (arrayNoDuplicates!0 lt!492114 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!108557 (Cons!24069 (select (arr!34263 lt!492114) #b00000000000000000000000000000000) Nil!24070) Nil!24070)))))

(declare-fun b!1099387 () Bool)

(declare-fun e!627525 () Bool)

(assert (=> b!1099387 (= e!627525 (contains!6403 Nil!24070 (select (arr!34263 lt!492114) #b00000000000000000000000000000000)))))

(declare-fun b!1099388 () Bool)

(assert (=> b!1099388 (= e!627526 call!45991)))

(declare-fun b!1099389 () Bool)

(assert (=> b!1099389 (= e!627524 e!627527)))

(declare-fun res!733747 () Bool)

(assert (=> b!1099389 (=> (not res!733747) (not e!627527))))

(assert (=> b!1099389 (= res!733747 (not e!627525))))

(declare-fun res!733748 () Bool)

(assert (=> b!1099389 (=> (not res!733748) (not e!627525))))

(assert (=> b!1099389 (= res!733748 (validKeyInArray!0 (select (arr!34263 lt!492114) #b00000000000000000000000000000000)))))

(assert (= (and d!130453 (not res!733746)) b!1099389))

(assert (= (and b!1099389 res!733748) b!1099387))

(assert (= (and b!1099389 res!733747) b!1099386))

(assert (= (and b!1099386 c!108557) b!1099385))

(assert (= (and b!1099386 (not c!108557)) b!1099388))

(assert (= (or b!1099385 b!1099388) bm!45988))

(assert (=> b!1099386 m!1019419))

(assert (=> b!1099386 m!1019419))

(assert (=> b!1099386 m!1019421))

(assert (=> bm!45988 m!1019419))

(declare-fun m!1019527 () Bool)

(assert (=> bm!45988 m!1019527))

(assert (=> b!1099387 m!1019419))

(assert (=> b!1099387 m!1019419))

(declare-fun m!1019529 () Bool)

(assert (=> b!1099387 m!1019529))

(assert (=> b!1099389 m!1019419))

(assert (=> b!1099389 m!1019419))

(assert (=> b!1099389 m!1019421))

(assert (=> b!1099170 d!130453))

(declare-fun d!130455 () Bool)

(declare-fun res!733754 () Bool)

(declare-fun e!627536 () Bool)

(assert (=> d!130455 (=> res!733754 e!627536)))

(assert (=> d!130455 (= res!733754 (bvsge #b00000000000000000000000000000000 (size!34800 lt!492114)))))

(assert (=> d!130455 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!492114 mask!1414) e!627536)))

(declare-fun b!1099398 () Bool)

(declare-fun e!627534 () Bool)

(declare-fun call!45994 () Bool)

(assert (=> b!1099398 (= e!627534 call!45994)))

(declare-fun bm!45991 () Bool)

(assert (=> bm!45991 (= call!45994 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) lt!492114 mask!1414))))

(declare-fun b!1099399 () Bool)

(assert (=> b!1099399 (= e!627536 e!627534)))

(declare-fun c!108560 () Bool)

(assert (=> b!1099399 (= c!108560 (validKeyInArray!0 (select (arr!34263 lt!492114) #b00000000000000000000000000000000)))))

(declare-fun b!1099400 () Bool)

(declare-fun e!627535 () Bool)

(assert (=> b!1099400 (= e!627535 call!45994)))

(declare-fun b!1099401 () Bool)

(assert (=> b!1099401 (= e!627534 e!627535)))

(declare-fun lt!492281 () (_ BitVec 64))

(assert (=> b!1099401 (= lt!492281 (select (arr!34263 lt!492114) #b00000000000000000000000000000000))))

(declare-fun lt!492280 () Unit!36085)

(assert (=> b!1099401 (= lt!492280 (lemmaArrayContainsFromImpliesContainsFromZero!0 lt!492114 lt!492281 #b00000000000000000000000000000000))))

(assert (=> b!1099401 (arrayContainsKey!0 lt!492114 lt!492281 #b00000000000000000000000000000000)))

(declare-fun lt!492282 () Unit!36085)

(assert (=> b!1099401 (= lt!492282 lt!492280)))

(declare-fun res!733753 () Bool)

(declare-datatypes ((SeekEntryResult!9907 0))(
  ( (MissingZero!9907 (index!41998 (_ BitVec 32))) (Found!9907 (index!41999 (_ BitVec 32))) (Intermediate!9907 (undefined!10719 Bool) (index!42000 (_ BitVec 32)) (x!98862 (_ BitVec 32))) (Undefined!9907) (MissingVacant!9907 (index!42001 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!71198 (_ BitVec 32)) SeekEntryResult!9907)

(assert (=> b!1099401 (= res!733753 (= (seekEntryOrOpen!0 (select (arr!34263 lt!492114) #b00000000000000000000000000000000) lt!492114 mask!1414) (Found!9907 #b00000000000000000000000000000000)))))

(assert (=> b!1099401 (=> (not res!733753) (not e!627535))))

(assert (= (and d!130455 (not res!733754)) b!1099399))

(assert (= (and b!1099399 c!108560) b!1099401))

(assert (= (and b!1099399 (not c!108560)) b!1099398))

(assert (= (and b!1099401 res!733753) b!1099400))

(assert (= (or b!1099400 b!1099398) bm!45991))

(declare-fun m!1019531 () Bool)

(assert (=> bm!45991 m!1019531))

(assert (=> b!1099399 m!1019419))

(assert (=> b!1099399 m!1019419))

(assert (=> b!1099399 m!1019421))

(assert (=> b!1099401 m!1019419))

(declare-fun m!1019533 () Bool)

(assert (=> b!1099401 m!1019533))

(declare-fun m!1019535 () Bool)

(assert (=> b!1099401 m!1019535))

(assert (=> b!1099401 m!1019419))

(declare-fun m!1019537 () Bool)

(assert (=> b!1099401 m!1019537))

(assert (=> b!1099174 d!130455))

(declare-fun d!130457 () Bool)

(assert (=> d!130457 (= (validKeyInArray!0 k0!904) (and (not (= k0!904 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!904 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1099173 d!130457))

(declare-fun d!130459 () Bool)

(declare-fun res!733756 () Bool)

(declare-fun e!627539 () Bool)

(assert (=> d!130459 (=> res!733756 e!627539)))

(assert (=> d!130459 (= res!733756 (bvsge #b00000000000000000000000000000000 (size!34800 _keys!1070)))))

(assert (=> d!130459 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1070 mask!1414) e!627539)))

(declare-fun b!1099402 () Bool)

(declare-fun e!627537 () Bool)

(declare-fun call!45995 () Bool)

(assert (=> b!1099402 (= e!627537 call!45995)))

(declare-fun bm!45992 () Bool)

(assert (=> bm!45992 (= call!45995 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) _keys!1070 mask!1414))))

(declare-fun b!1099403 () Bool)

(assert (=> b!1099403 (= e!627539 e!627537)))

(declare-fun c!108561 () Bool)

(assert (=> b!1099403 (= c!108561 (validKeyInArray!0 (select (arr!34263 _keys!1070) #b00000000000000000000000000000000)))))

(declare-fun b!1099404 () Bool)

(declare-fun e!627538 () Bool)

(assert (=> b!1099404 (= e!627538 call!45995)))

(declare-fun b!1099405 () Bool)

(assert (=> b!1099405 (= e!627537 e!627538)))

(declare-fun lt!492284 () (_ BitVec 64))

(assert (=> b!1099405 (= lt!492284 (select (arr!34263 _keys!1070) #b00000000000000000000000000000000))))

(declare-fun lt!492283 () Unit!36085)

(assert (=> b!1099405 (= lt!492283 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1070 lt!492284 #b00000000000000000000000000000000))))

(assert (=> b!1099405 (arrayContainsKey!0 _keys!1070 lt!492284 #b00000000000000000000000000000000)))

(declare-fun lt!492285 () Unit!36085)

(assert (=> b!1099405 (= lt!492285 lt!492283)))

(declare-fun res!733755 () Bool)

(assert (=> b!1099405 (= res!733755 (= (seekEntryOrOpen!0 (select (arr!34263 _keys!1070) #b00000000000000000000000000000000) _keys!1070 mask!1414) (Found!9907 #b00000000000000000000000000000000)))))

(assert (=> b!1099405 (=> (not res!733755) (not e!627538))))

(assert (= (and d!130459 (not res!733756)) b!1099403))

(assert (= (and b!1099403 c!108561) b!1099405))

(assert (= (and b!1099403 (not c!108561)) b!1099402))

(assert (= (and b!1099405 res!733755) b!1099404))

(assert (= (or b!1099404 b!1099402) bm!45992))

(declare-fun m!1019539 () Bool)

(assert (=> bm!45992 m!1019539))

(assert (=> b!1099403 m!1019361))

(assert (=> b!1099403 m!1019361))

(assert (=> b!1099403 m!1019367))

(assert (=> b!1099405 m!1019361))

(declare-fun m!1019541 () Bool)

(assert (=> b!1099405 m!1019541))

(declare-fun m!1019543 () Bool)

(assert (=> b!1099405 m!1019543))

(assert (=> b!1099405 m!1019361))

(declare-fun m!1019545 () Bool)

(assert (=> b!1099405 m!1019545))

(assert (=> b!1099172 d!130459))

(declare-fun d!130461 () Bool)

(declare-fun e!627542 () Bool)

(assert (=> d!130461 e!627542))

(declare-fun res!733761 () Bool)

(assert (=> d!130461 (=> (not res!733761) (not e!627542))))

(declare-fun lt!492296 () ListLongMap!15379)

(assert (=> d!130461 (= res!733761 (contains!6402 lt!492296 (_1!8709 (tuple2!17399 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!831))))))

(declare-fun lt!492294 () List!24074)

(assert (=> d!130461 (= lt!492296 (ListLongMap!15380 lt!492294))))

(declare-fun lt!492295 () Unit!36085)

(declare-fun lt!492297 () Unit!36085)

(assert (=> d!130461 (= lt!492295 lt!492297)))

(declare-datatypes ((Option!676 0))(
  ( (Some!675 (v!16267 V!41347)) (None!674) )
))
(declare-fun getValueByKey!625 (List!24074 (_ BitVec 64)) Option!676)

(assert (=> d!130461 (= (getValueByKey!625 lt!492294 (_1!8709 (tuple2!17399 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!831))) (Some!675 (_2!8709 (tuple2!17399 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!831))))))

(declare-fun lemmaContainsTupThenGetReturnValue!300 (List!24074 (_ BitVec 64) V!41347) Unit!36085)

(assert (=> d!130461 (= lt!492297 (lemmaContainsTupThenGetReturnValue!300 lt!492294 (_1!8709 (tuple2!17399 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!831)) (_2!8709 (tuple2!17399 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!831))))))

(declare-fun insertStrictlySorted!392 (List!24074 (_ BitVec 64) V!41347) List!24074)

(assert (=> d!130461 (= lt!492294 (insertStrictlySorted!392 (toList!7705 lt!492119) (_1!8709 (tuple2!17399 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!831)) (_2!8709 (tuple2!17399 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!831))))))

(assert (=> d!130461 (= (+!3340 lt!492119 (tuple2!17399 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!831)) lt!492296)))

(declare-fun b!1099410 () Bool)

(declare-fun res!733762 () Bool)

(assert (=> b!1099410 (=> (not res!733762) (not e!627542))))

(assert (=> b!1099410 (= res!733762 (= (getValueByKey!625 (toList!7705 lt!492296) (_1!8709 (tuple2!17399 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!831))) (Some!675 (_2!8709 (tuple2!17399 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!831)))))))

(declare-fun b!1099411 () Bool)

(declare-fun contains!6404 (List!24074 tuple2!17398) Bool)

(assert (=> b!1099411 (= e!627542 (contains!6404 (toList!7705 lt!492296) (tuple2!17399 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!831)))))

(assert (= (and d!130461 res!733761) b!1099410))

(assert (= (and b!1099410 res!733762) b!1099411))

(declare-fun m!1019547 () Bool)

(assert (=> d!130461 m!1019547))

(declare-fun m!1019549 () Bool)

(assert (=> d!130461 m!1019549))

(declare-fun m!1019551 () Bool)

(assert (=> d!130461 m!1019551))

(declare-fun m!1019553 () Bool)

(assert (=> d!130461 m!1019553))

(declare-fun m!1019555 () Bool)

(assert (=> b!1099410 m!1019555))

(declare-fun m!1019557 () Bool)

(assert (=> b!1099411 m!1019557))

(assert (=> b!1099177 d!130461))

(declare-fun mapNonEmpty!42526 () Bool)

(declare-fun mapRes!42526 () Bool)

(declare-fun tp!81294 () Bool)

(declare-fun e!627547 () Bool)

(assert (=> mapNonEmpty!42526 (= mapRes!42526 (and tp!81294 e!627547))))

(declare-fun mapRest!42526 () (Array (_ BitVec 32) ValueCell!12873))

(declare-fun mapKey!42526 () (_ BitVec 32))

(declare-fun mapValue!42526 () ValueCell!12873)

(assert (=> mapNonEmpty!42526 (= mapRest!42520 (store mapRest!42526 mapKey!42526 mapValue!42526))))

(declare-fun b!1099418 () Bool)

(assert (=> b!1099418 (= e!627547 tp_is_empty!27165)))

(declare-fun b!1099419 () Bool)

(declare-fun e!627548 () Bool)

(assert (=> b!1099419 (= e!627548 tp_is_empty!27165)))

(declare-fun mapIsEmpty!42526 () Bool)

(assert (=> mapIsEmpty!42526 mapRes!42526))

(declare-fun condMapEmpty!42526 () Bool)

(declare-fun mapDefault!42526 () ValueCell!12873)

(assert (=> mapNonEmpty!42520 (= condMapEmpty!42526 (= mapRest!42520 ((as const (Array (_ BitVec 32) ValueCell!12873)) mapDefault!42526)))))

(assert (=> mapNonEmpty!42520 (= tp!81284 (and e!627548 mapRes!42526))))

(assert (= (and mapNonEmpty!42520 condMapEmpty!42526) mapIsEmpty!42526))

(assert (= (and mapNonEmpty!42520 (not condMapEmpty!42526)) mapNonEmpty!42526))

(assert (= (and mapNonEmpty!42526 ((_ is ValueCellFull!12873) mapValue!42526)) b!1099418))

(assert (= (and mapNonEmpty!42520 ((_ is ValueCellFull!12873) mapDefault!42526)) b!1099419))

(declare-fun m!1019559 () Bool)

(assert (=> mapNonEmpty!42526 m!1019559))

(declare-fun b_lambda!17943 () Bool)

(assert (= b_lambda!17935 (or (and start!96678 b_free!23115) b_lambda!17943)))

(declare-fun b_lambda!17945 () Bool)

(assert (= b_lambda!17937 (or (and start!96678 b_free!23115) b_lambda!17945)))

(declare-fun b_lambda!17947 () Bool)

(assert (= b_lambda!17931 (or (and start!96678 b_free!23115) b_lambda!17947)))

(declare-fun b_lambda!17949 () Bool)

(assert (= b_lambda!17939 (or (and start!96678 b_free!23115) b_lambda!17949)))

(declare-fun b_lambda!17951 () Bool)

(assert (= b_lambda!17941 (or (and start!96678 b_free!23115) b_lambda!17951)))

(declare-fun b_lambda!17953 () Bool)

(assert (= b_lambda!17933 (or (and start!96678 b_free!23115) b_lambda!17953)))

(declare-fun b_lambda!17955 () Bool)

(assert (= b_lambda!17929 (or (and start!96678 b_free!23115) b_lambda!17955)))

(check-sat (not b!1099405) (not b!1099403) (not b_lambda!17955) (not bm!45971) (not bm!45974) (not bm!45984) (not b!1099364) (not b!1099344) (not d!130437) (not b_lambda!17927) (not b!1099293) (not bm!45969) (not d!130443) (not b!1099342) (not b!1099285) (not bm!45988) (not b_lambda!17947) (not b!1099339) (not bm!45967) (not b!1099274) (not b!1099360) (not b!1099359) (not b!1099295) (not bm!45982) (not b!1099389) (not b!1099288) (not d!130449) (not b_next!23115) (not b!1099271) (not b!1099307) (not b!1099348) (not bm!45983) (not b!1099401) (not b!1099411) (not b!1099309) (not b!1099286) (not b!1099356) (not b!1099346) (not b!1099292) (not d!130441) (not b!1099338) (not d!130447) (not bm!45991) (not b!1099343) (not mapNonEmpty!42526) (not b!1099381) (not b!1099272) (not b!1099363) (not bm!45968) (not b!1099384) (not d!130445) (not b_lambda!17943) (not b!1099305) (not b!1099410) (not b!1099282) (not b!1099386) (not b!1099228) (not bm!45987) (not bm!45992) (not b!1099340) (not bm!45962) (not b!1099361) (not b_lambda!17951) (not b!1099382) b_and!36987 (not b!1099365) (not d!130461) (not d!130439) (not bm!45977) (not b!1099399) (not b!1099387) (not b!1099367) (not b!1099303) (not b!1099306) (not b_lambda!17945) tp_is_empty!27165 (not bm!45961) (not b!1099369) (not b_lambda!17949) (not b!1099284) (not bm!45964) (not b_lambda!17953))
(check-sat b_and!36987 (not b_next!23115))
