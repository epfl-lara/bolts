; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!96626 () Bool)

(assert start!96626)

(declare-fun b_free!23091 () Bool)

(declare-fun b_next!23091 () Bool)

(assert (=> start!96626 (= b_free!23091 (not b_next!23091))))

(declare-fun tp!81209 () Bool)

(declare-fun b_and!36905 () Bool)

(assert (=> start!96626 (= tp!81209 b_and!36905)))

(declare-fun mapIsEmpty!42481 () Bool)

(declare-fun mapRes!42481 () Bool)

(assert (=> mapIsEmpty!42481 mapRes!42481))

(declare-fun b!1098441 () Bool)

(declare-fun e!626983 () Bool)

(declare-fun k0!904 () (_ BitVec 64))

(assert (=> b!1098441 (= e!626983 (not (= #b1000000000000000000000000000000000000000000000000000000000000000 k0!904)))))

(declare-datatypes ((V!41315 0))(
  ( (V!41316 (val!13627 Int)) )
))
(declare-datatypes ((tuple2!17376 0))(
  ( (tuple2!17377 (_1!8698 (_ BitVec 64)) (_2!8698 V!41315)) )
))
(declare-datatypes ((List!24053 0))(
  ( (Nil!24050) (Cons!24049 (h!25258 tuple2!17376) (t!34197 List!24053)) )
))
(declare-datatypes ((ListLongMap!15357 0))(
  ( (ListLongMap!15358 (toList!7694 List!24053)) )
))
(declare-fun lt!491389 () ListLongMap!15357)

(declare-fun lt!491380 () ListLongMap!15357)

(declare-fun -!939 (ListLongMap!15357 (_ BitVec 64)) ListLongMap!15357)

(assert (=> b!1098441 (= (-!939 lt!491389 k0!904) lt!491380)))

(declare-datatypes ((Unit!36063 0))(
  ( (Unit!36064) )
))
(declare-fun lt!491393 () Unit!36063)

(declare-fun lt!491387 () ListLongMap!15357)

(declare-fun zeroValue!831 () V!41315)

(declare-fun addRemoveCommutativeForDiffKeys!120 (ListLongMap!15357 (_ BitVec 64) V!41315 (_ BitVec 64)) Unit!36063)

(assert (=> b!1098441 (= lt!491393 (addRemoveCommutativeForDiffKeys!120 lt!491387 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!831 k0!904))))

(declare-fun lt!491381 () ListLongMap!15357)

(declare-fun lt!491390 () tuple2!17376)

(declare-fun +!3329 (ListLongMap!15357 tuple2!17376) ListLongMap!15357)

(assert (=> b!1098441 (= lt!491381 (+!3329 lt!491380 lt!491390))))

(declare-fun lt!491385 () ListLongMap!15357)

(declare-fun lt!491391 () tuple2!17376)

(assert (=> b!1098441 (= lt!491380 (+!3329 lt!491385 lt!491391))))

(declare-fun lt!491386 () ListLongMap!15357)

(assert (=> b!1098441 (= lt!491386 (+!3329 lt!491389 lt!491390))))

(assert (=> b!1098441 (= lt!491389 (+!3329 lt!491387 lt!491391))))

(declare-fun lt!491384 () ListLongMap!15357)

(assert (=> b!1098441 (= lt!491381 (+!3329 (+!3329 lt!491384 lt!491391) lt!491390))))

(declare-fun minValue!831 () V!41315)

(assert (=> b!1098441 (= lt!491390 (tuple2!17377 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!831))))

(assert (=> b!1098441 (= lt!491391 (tuple2!17377 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!831))))

(declare-fun b!1098442 () Bool)

(declare-fun res!733155 () Bool)

(declare-fun e!626985 () Bool)

(assert (=> b!1098442 (=> (not res!733155) (not e!626985))))

(declare-datatypes ((array!71148 0))(
  ( (array!71149 (arr!34239 (Array (_ BitVec 32) (_ BitVec 64))) (size!34776 (_ BitVec 32))) )
))
(declare-fun _keys!1070 () array!71148)

(declare-fun mask!1414 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!71148 (_ BitVec 32)) Bool)

(assert (=> b!1098442 (= res!733155 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1070 mask!1414))))

(declare-fun res!733161 () Bool)

(assert (=> start!96626 (=> (not res!733161) (not e!626985))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!96626 (= res!733161 (validMask!0 mask!1414))))

(assert (=> start!96626 e!626985))

(assert (=> start!96626 tp!81209))

(assert (=> start!96626 true))

(declare-fun tp_is_empty!27141 () Bool)

(assert (=> start!96626 tp_is_empty!27141))

(declare-fun array_inv!26236 (array!71148) Bool)

(assert (=> start!96626 (array_inv!26236 _keys!1070)))

(declare-datatypes ((ValueCell!12861 0))(
  ( (ValueCellFull!12861 (v!16252 V!41315)) (EmptyCell!12861) )
))
(declare-datatypes ((array!71150 0))(
  ( (array!71151 (arr!34240 (Array (_ BitVec 32) ValueCell!12861)) (size!34777 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!71150)

(declare-fun e!626979 () Bool)

(declare-fun array_inv!26237 (array!71150) Bool)

(assert (=> start!96626 (and (array_inv!26237 _values!874) e!626979)))

(declare-fun mapNonEmpty!42481 () Bool)

(declare-fun tp!81210 () Bool)

(declare-fun e!626984 () Bool)

(assert (=> mapNonEmpty!42481 (= mapRes!42481 (and tp!81210 e!626984))))

(declare-fun mapValue!42481 () ValueCell!12861)

(declare-fun mapRest!42481 () (Array (_ BitVec 32) ValueCell!12861))

(declare-fun mapKey!42481 () (_ BitVec 32))

(assert (=> mapNonEmpty!42481 (= (arr!34240 _values!874) (store mapRest!42481 mapKey!42481 mapValue!42481))))

(declare-fun b!1098443 () Bool)

(declare-fun res!733154 () Bool)

(assert (=> b!1098443 (=> (not res!733154) (not e!626985))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1098443 (= res!733154 (validKeyInArray!0 k0!904))))

(declare-fun b!1098444 () Bool)

(declare-fun e!626980 () Bool)

(assert (=> b!1098444 (= e!626980 tp_is_empty!27141)))

(declare-fun b!1098445 () Bool)

(assert (=> b!1098445 (= e!626979 (and e!626980 mapRes!42481))))

(declare-fun condMapEmpty!42481 () Bool)

(declare-fun mapDefault!42481 () ValueCell!12861)

(assert (=> b!1098445 (= condMapEmpty!42481 (= (arr!34240 _values!874) ((as const (Array (_ BitVec 32) ValueCell!12861)) mapDefault!42481)))))

(declare-fun b!1098446 () Bool)

(declare-fun res!733152 () Bool)

(assert (=> b!1098446 (=> (not res!733152) (not e!626985))))

(declare-fun i!650 () (_ BitVec 32))

(assert (=> b!1098446 (= res!733152 (and (bvsge i!650 #b00000000000000000000000000000000) (bvslt i!650 (size!34776 _keys!1070))))))

(declare-fun b!1098447 () Bool)

(declare-fun e!626982 () Bool)

(assert (=> b!1098447 (= e!626982 (not e!626983))))

(declare-fun res!733157 () Bool)

(assert (=> b!1098447 (=> res!733157 e!626983)))

(declare-fun extraKeys!811 () (_ BitVec 32))

(assert (=> b!1098447 (= res!733157 (or (= (bvand extraKeys!811 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (= (bvand extraKeys!811 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun defaultEntry!882 () Int)

(declare-fun getCurrentListMap!4391 (array!71148 array!71150 (_ BitVec 32) (_ BitVec 32) V!41315 V!41315 (_ BitVec 32) Int) ListLongMap!15357)

(assert (=> b!1098447 (= lt!491386 (getCurrentListMap!4391 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun lt!491388 () array!71150)

(declare-fun lt!491392 () array!71148)

(assert (=> b!1098447 (= lt!491381 (getCurrentListMap!4391 lt!491392 lt!491388 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(assert (=> b!1098447 (and (= lt!491384 lt!491385) (= lt!491385 lt!491384))))

(assert (=> b!1098447 (= lt!491385 (-!939 lt!491387 k0!904))))

(declare-fun lt!491382 () Unit!36063)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!203 (array!71148 array!71150 (_ BitVec 32) (_ BitVec 32) V!41315 V!41315 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!36063)

(assert (=> b!1098447 (= lt!491382 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!203 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 i!650 k0!904 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun getCurrentListMapNoExtraKeys!4178 (array!71148 array!71150 (_ BitVec 32) (_ BitVec 32) V!41315 V!41315 (_ BitVec 32) Int) ListLongMap!15357)

(assert (=> b!1098447 (= lt!491384 (getCurrentListMapNoExtraKeys!4178 lt!491392 lt!491388 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun dynLambda!2309 (Int (_ BitVec 64)) V!41315)

(assert (=> b!1098447 (= lt!491388 (array!71151 (store (arr!34240 _values!874) i!650 (ValueCellFull!12861 (dynLambda!2309 defaultEntry!882 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!34777 _values!874)))))

(assert (=> b!1098447 (= lt!491387 (getCurrentListMapNoExtraKeys!4178 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun arrayContainsKey!0 (array!71148 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1098447 (arrayContainsKey!0 _keys!1070 k0!904 #b00000000000000000000000000000000)))

(declare-fun lt!491383 () Unit!36063)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!71148 (_ BitVec 64) (_ BitVec 32)) Unit!36063)

(assert (=> b!1098447 (= lt!491383 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1070 k0!904 i!650))))

(declare-fun b!1098448 () Bool)

(assert (=> b!1098448 (= e!626984 tp_is_empty!27141)))

(declare-fun b!1098449 () Bool)

(declare-fun res!733156 () Bool)

(assert (=> b!1098449 (=> (not res!733156) (not e!626985))))

(assert (=> b!1098449 (= res!733156 (= (select (arr!34239 _keys!1070) i!650) k0!904))))

(declare-fun b!1098450 () Bool)

(assert (=> b!1098450 (= e!626985 e!626982)))

(declare-fun res!733159 () Bool)

(assert (=> b!1098450 (=> (not res!733159) (not e!626982))))

(assert (=> b!1098450 (= res!733159 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!491392 mask!1414))))

(assert (=> b!1098450 (= lt!491392 (array!71149 (store (arr!34239 _keys!1070) i!650 #b1000000000000000000000000000000000000000000000000000000000000000) (size!34776 _keys!1070)))))

(declare-fun b!1098451 () Bool)

(declare-fun res!733160 () Bool)

(assert (=> b!1098451 (=> (not res!733160) (not e!626982))))

(declare-datatypes ((List!24054 0))(
  ( (Nil!24051) (Cons!24050 (h!25259 (_ BitVec 64)) (t!34198 List!24054)) )
))
(declare-fun arrayNoDuplicates!0 (array!71148 (_ BitVec 32) List!24054) Bool)

(assert (=> b!1098451 (= res!733160 (arrayNoDuplicates!0 lt!491392 #b00000000000000000000000000000000 Nil!24051))))

(declare-fun b!1098452 () Bool)

(declare-fun res!733153 () Bool)

(assert (=> b!1098452 (=> (not res!733153) (not e!626985))))

(assert (=> b!1098452 (= res!733153 (arrayNoDuplicates!0 _keys!1070 #b00000000000000000000000000000000 Nil!24051))))

(declare-fun b!1098453 () Bool)

(declare-fun res!733158 () Bool)

(assert (=> b!1098453 (=> (not res!733158) (not e!626985))))

(assert (=> b!1098453 (= res!733158 (and (= (size!34777 _values!874) (bvadd #b00000000000000000000000000000001 mask!1414)) (= (size!34776 _keys!1070) (size!34777 _values!874)) (bvsge mask!1414 #b00000000000000000000000000000000) (bvsge extraKeys!811 #b00000000000000000000000000000000) (bvsle extraKeys!811 #b00000000000000000000000000000011)))))

(assert (= (and start!96626 res!733161) b!1098453))

(assert (= (and b!1098453 res!733158) b!1098442))

(assert (= (and b!1098442 res!733155) b!1098452))

(assert (= (and b!1098452 res!733153) b!1098446))

(assert (= (and b!1098446 res!733152) b!1098443))

(assert (= (and b!1098443 res!733154) b!1098449))

(assert (= (and b!1098449 res!733156) b!1098450))

(assert (= (and b!1098450 res!733159) b!1098451))

(assert (= (and b!1098451 res!733160) b!1098447))

(assert (= (and b!1098447 (not res!733157)) b!1098441))

(assert (= (and b!1098445 condMapEmpty!42481) mapIsEmpty!42481))

(assert (= (and b!1098445 (not condMapEmpty!42481)) mapNonEmpty!42481))

(get-info :version)

(assert (= (and mapNonEmpty!42481 ((_ is ValueCellFull!12861) mapValue!42481)) b!1098448))

(assert (= (and b!1098445 ((_ is ValueCellFull!12861) mapDefault!42481)) b!1098444))

(assert (= start!96626 b!1098445))

(declare-fun b_lambda!17869 () Bool)

(assert (=> (not b_lambda!17869) (not b!1098447)))

(declare-fun t!34196 () Bool)

(declare-fun tb!7965 () Bool)

(assert (=> (and start!96626 (= defaultEntry!882 defaultEntry!882) t!34196) tb!7965))

(declare-fun result!16451 () Bool)

(assert (=> tb!7965 (= result!16451 tp_is_empty!27141)))

(assert (=> b!1098447 t!34196))

(declare-fun b_and!36907 () Bool)

(assert (= b_and!36905 (and (=> t!34196 result!16451) b_and!36907)))

(declare-fun m!1018259 () Bool)

(assert (=> start!96626 m!1018259))

(declare-fun m!1018261 () Bool)

(assert (=> start!96626 m!1018261))

(declare-fun m!1018263 () Bool)

(assert (=> start!96626 m!1018263))

(declare-fun m!1018265 () Bool)

(assert (=> b!1098441 m!1018265))

(declare-fun m!1018267 () Bool)

(assert (=> b!1098441 m!1018267))

(declare-fun m!1018269 () Bool)

(assert (=> b!1098441 m!1018269))

(declare-fun m!1018271 () Bool)

(assert (=> b!1098441 m!1018271))

(declare-fun m!1018273 () Bool)

(assert (=> b!1098441 m!1018273))

(declare-fun m!1018275 () Bool)

(assert (=> b!1098441 m!1018275))

(assert (=> b!1098441 m!1018275))

(declare-fun m!1018277 () Bool)

(assert (=> b!1098441 m!1018277))

(declare-fun m!1018279 () Bool)

(assert (=> b!1098441 m!1018279))

(declare-fun m!1018281 () Bool)

(assert (=> b!1098452 m!1018281))

(declare-fun m!1018283 () Bool)

(assert (=> b!1098442 m!1018283))

(declare-fun m!1018285 () Bool)

(assert (=> mapNonEmpty!42481 m!1018285))

(declare-fun m!1018287 () Bool)

(assert (=> b!1098451 m!1018287))

(declare-fun m!1018289 () Bool)

(assert (=> b!1098449 m!1018289))

(declare-fun m!1018291 () Bool)

(assert (=> b!1098447 m!1018291))

(declare-fun m!1018293 () Bool)

(assert (=> b!1098447 m!1018293))

(declare-fun m!1018295 () Bool)

(assert (=> b!1098447 m!1018295))

(declare-fun m!1018297 () Bool)

(assert (=> b!1098447 m!1018297))

(declare-fun m!1018299 () Bool)

(assert (=> b!1098447 m!1018299))

(declare-fun m!1018301 () Bool)

(assert (=> b!1098447 m!1018301))

(declare-fun m!1018303 () Bool)

(assert (=> b!1098447 m!1018303))

(declare-fun m!1018305 () Bool)

(assert (=> b!1098447 m!1018305))

(declare-fun m!1018307 () Bool)

(assert (=> b!1098447 m!1018307))

(declare-fun m!1018309 () Bool)

(assert (=> b!1098447 m!1018309))

(declare-fun m!1018311 () Bool)

(assert (=> b!1098443 m!1018311))

(declare-fun m!1018313 () Bool)

(assert (=> b!1098450 m!1018313))

(declare-fun m!1018315 () Bool)

(assert (=> b!1098450 m!1018315))

(check-sat (not b!1098443) (not b_next!23091) (not b!1098452) (not b!1098450) (not b_lambda!17869) (not start!96626) (not b!1098451) b_and!36907 (not b!1098442) tp_is_empty!27141 (not b!1098441) (not mapNonEmpty!42481) (not b!1098447))
(check-sat b_and!36907 (not b_next!23091))
(get-model)

(declare-fun b_lambda!17873 () Bool)

(assert (= b_lambda!17869 (or (and start!96626 b_free!23091) b_lambda!17873)))

(check-sat (not b!1098443) (not b_next!23091) (not b!1098452) (not b_lambda!17873) (not b!1098450) (not start!96626) (not b!1098451) b_and!36907 (not b!1098442) tp_is_empty!27141 (not b!1098441) (not mapNonEmpty!42481) (not b!1098447))
(check-sat b_and!36907 (not b_next!23091))
(get-model)

(declare-fun d!130373 () Bool)

(assert (=> d!130373 (= (validKeyInArray!0 k0!904) (and (not (= k0!904 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!904 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1098443 d!130373))

(declare-fun d!130375 () Bool)

(assert (=> d!130375 (= (validMask!0 mask!1414) (and (or (= mask!1414 #b00000000000000000000000000000111) (= mask!1414 #b00000000000000000000000000001111) (= mask!1414 #b00000000000000000000000000011111) (= mask!1414 #b00000000000000000000000000111111) (= mask!1414 #b00000000000000000000000001111111) (= mask!1414 #b00000000000000000000000011111111) (= mask!1414 #b00000000000000000000000111111111) (= mask!1414 #b00000000000000000000001111111111) (= mask!1414 #b00000000000000000000011111111111) (= mask!1414 #b00000000000000000000111111111111) (= mask!1414 #b00000000000000000001111111111111) (= mask!1414 #b00000000000000000011111111111111) (= mask!1414 #b00000000000000000111111111111111) (= mask!1414 #b00000000000000001111111111111111) (= mask!1414 #b00000000000000011111111111111111) (= mask!1414 #b00000000000000111111111111111111) (= mask!1414 #b00000000000001111111111111111111) (= mask!1414 #b00000000000011111111111111111111) (= mask!1414 #b00000000000111111111111111111111) (= mask!1414 #b00000000001111111111111111111111) (= mask!1414 #b00000000011111111111111111111111) (= mask!1414 #b00000000111111111111111111111111) (= mask!1414 #b00000001111111111111111111111111) (= mask!1414 #b00000011111111111111111111111111) (= mask!1414 #b00000111111111111111111111111111) (= mask!1414 #b00001111111111111111111111111111) (= mask!1414 #b00011111111111111111111111111111) (= mask!1414 #b00111111111111111111111111111111)) (bvsle mask!1414 #b00111111111111111111111111111111)))))

(assert (=> start!96626 d!130375))

(declare-fun d!130377 () Bool)

(assert (=> d!130377 (= (array_inv!26236 _keys!1070) (bvsge (size!34776 _keys!1070) #b00000000000000000000000000000000))))

(assert (=> start!96626 d!130377))

(declare-fun d!130379 () Bool)

(assert (=> d!130379 (= (array_inv!26237 _values!874) (bvsge (size!34777 _values!874) #b00000000000000000000000000000000))))

(assert (=> start!96626 d!130379))

(declare-fun d!130381 () Bool)

(assert (=> d!130381 (= (-!939 (+!3329 lt!491387 (tuple2!17377 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!831)) k0!904) (+!3329 (-!939 lt!491387 k0!904) (tuple2!17377 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!831)))))

(declare-fun lt!491438 () Unit!36063)

(declare-fun choose!1771 (ListLongMap!15357 (_ BitVec 64) V!41315 (_ BitVec 64)) Unit!36063)

(assert (=> d!130381 (= lt!491438 (choose!1771 lt!491387 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!831 k0!904))))

(assert (=> d!130381 (not (= #b0000000000000000000000000000000000000000000000000000000000000000 k0!904))))

(assert (=> d!130381 (= (addRemoveCommutativeForDiffKeys!120 lt!491387 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!831 k0!904) lt!491438)))

(declare-fun bs!32268 () Bool)

(assert (= bs!32268 d!130381))

(assert (=> bs!32268 m!1018295))

(declare-fun m!1018375 () Bool)

(assert (=> bs!32268 m!1018375))

(declare-fun m!1018377 () Bool)

(assert (=> bs!32268 m!1018377))

(assert (=> bs!32268 m!1018375))

(declare-fun m!1018379 () Bool)

(assert (=> bs!32268 m!1018379))

(assert (=> bs!32268 m!1018295))

(declare-fun m!1018381 () Bool)

(assert (=> bs!32268 m!1018381))

(assert (=> b!1098441 d!130381))

(declare-fun d!130383 () Bool)

(declare-fun e!627009 () Bool)

(assert (=> d!130383 e!627009))

(declare-fun res!733197 () Bool)

(assert (=> d!130383 (=> (not res!733197) (not e!627009))))

(declare-fun lt!491450 () ListLongMap!15357)

(declare-fun contains!6399 (ListLongMap!15357 (_ BitVec 64)) Bool)

(assert (=> d!130383 (= res!733197 (contains!6399 lt!491450 (_1!8698 lt!491391)))))

(declare-fun lt!491449 () List!24053)

(assert (=> d!130383 (= lt!491450 (ListLongMap!15358 lt!491449))))

(declare-fun lt!491448 () Unit!36063)

(declare-fun lt!491447 () Unit!36063)

(assert (=> d!130383 (= lt!491448 lt!491447)))

(declare-datatypes ((Option!675 0))(
  ( (Some!674 (v!16254 V!41315)) (None!673) )
))
(declare-fun getValueByKey!624 (List!24053 (_ BitVec 64)) Option!675)

(assert (=> d!130383 (= (getValueByKey!624 lt!491449 (_1!8698 lt!491391)) (Some!674 (_2!8698 lt!491391)))))

(declare-fun lemmaContainsTupThenGetReturnValue!299 (List!24053 (_ BitVec 64) V!41315) Unit!36063)

(assert (=> d!130383 (= lt!491447 (lemmaContainsTupThenGetReturnValue!299 lt!491449 (_1!8698 lt!491391) (_2!8698 lt!491391)))))

(declare-fun insertStrictlySorted!391 (List!24053 (_ BitVec 64) V!41315) List!24053)

(assert (=> d!130383 (= lt!491449 (insertStrictlySorted!391 (toList!7694 lt!491384) (_1!8698 lt!491391) (_2!8698 lt!491391)))))

(assert (=> d!130383 (= (+!3329 lt!491384 lt!491391) lt!491450)))

(declare-fun b!1098501 () Bool)

(declare-fun res!733196 () Bool)

(assert (=> b!1098501 (=> (not res!733196) (not e!627009))))

(assert (=> b!1098501 (= res!733196 (= (getValueByKey!624 (toList!7694 lt!491450) (_1!8698 lt!491391)) (Some!674 (_2!8698 lt!491391))))))

(declare-fun b!1098502 () Bool)

(declare-fun contains!6400 (List!24053 tuple2!17376) Bool)

(assert (=> b!1098502 (= e!627009 (contains!6400 (toList!7694 lt!491450) lt!491391))))

(assert (= (and d!130383 res!733197) b!1098501))

(assert (= (and b!1098501 res!733196) b!1098502))

(declare-fun m!1018383 () Bool)

(assert (=> d!130383 m!1018383))

(declare-fun m!1018385 () Bool)

(assert (=> d!130383 m!1018385))

(declare-fun m!1018387 () Bool)

(assert (=> d!130383 m!1018387))

(declare-fun m!1018389 () Bool)

(assert (=> d!130383 m!1018389))

(declare-fun m!1018391 () Bool)

(assert (=> b!1098501 m!1018391))

(declare-fun m!1018393 () Bool)

(assert (=> b!1098502 m!1018393))

(assert (=> b!1098441 d!130383))

(declare-fun d!130385 () Bool)

(declare-fun e!627010 () Bool)

(assert (=> d!130385 e!627010))

(declare-fun res!733199 () Bool)

(assert (=> d!130385 (=> (not res!733199) (not e!627010))))

(declare-fun lt!491454 () ListLongMap!15357)

(assert (=> d!130385 (= res!733199 (contains!6399 lt!491454 (_1!8698 lt!491390)))))

(declare-fun lt!491453 () List!24053)

(assert (=> d!130385 (= lt!491454 (ListLongMap!15358 lt!491453))))

(declare-fun lt!491452 () Unit!36063)

(declare-fun lt!491451 () Unit!36063)

(assert (=> d!130385 (= lt!491452 lt!491451)))

(assert (=> d!130385 (= (getValueByKey!624 lt!491453 (_1!8698 lt!491390)) (Some!674 (_2!8698 lt!491390)))))

(assert (=> d!130385 (= lt!491451 (lemmaContainsTupThenGetReturnValue!299 lt!491453 (_1!8698 lt!491390) (_2!8698 lt!491390)))))

(assert (=> d!130385 (= lt!491453 (insertStrictlySorted!391 (toList!7694 lt!491389) (_1!8698 lt!491390) (_2!8698 lt!491390)))))

(assert (=> d!130385 (= (+!3329 lt!491389 lt!491390) lt!491454)))

(declare-fun b!1098503 () Bool)

(declare-fun res!733198 () Bool)

(assert (=> b!1098503 (=> (not res!733198) (not e!627010))))

(assert (=> b!1098503 (= res!733198 (= (getValueByKey!624 (toList!7694 lt!491454) (_1!8698 lt!491390)) (Some!674 (_2!8698 lt!491390))))))

(declare-fun b!1098504 () Bool)

(assert (=> b!1098504 (= e!627010 (contains!6400 (toList!7694 lt!491454) lt!491390))))

(assert (= (and d!130385 res!733199) b!1098503))

(assert (= (and b!1098503 res!733198) b!1098504))

(declare-fun m!1018395 () Bool)

(assert (=> d!130385 m!1018395))

(declare-fun m!1018397 () Bool)

(assert (=> d!130385 m!1018397))

(declare-fun m!1018399 () Bool)

(assert (=> d!130385 m!1018399))

(declare-fun m!1018401 () Bool)

(assert (=> d!130385 m!1018401))

(declare-fun m!1018403 () Bool)

(assert (=> b!1098503 m!1018403))

(declare-fun m!1018405 () Bool)

(assert (=> b!1098504 m!1018405))

(assert (=> b!1098441 d!130385))

(declare-fun d!130387 () Bool)

(declare-fun e!627011 () Bool)

(assert (=> d!130387 e!627011))

(declare-fun res!733201 () Bool)

(assert (=> d!130387 (=> (not res!733201) (not e!627011))))

(declare-fun lt!491458 () ListLongMap!15357)

(assert (=> d!130387 (= res!733201 (contains!6399 lt!491458 (_1!8698 lt!491391)))))

(declare-fun lt!491457 () List!24053)

(assert (=> d!130387 (= lt!491458 (ListLongMap!15358 lt!491457))))

(declare-fun lt!491456 () Unit!36063)

(declare-fun lt!491455 () Unit!36063)

(assert (=> d!130387 (= lt!491456 lt!491455)))

(assert (=> d!130387 (= (getValueByKey!624 lt!491457 (_1!8698 lt!491391)) (Some!674 (_2!8698 lt!491391)))))

(assert (=> d!130387 (= lt!491455 (lemmaContainsTupThenGetReturnValue!299 lt!491457 (_1!8698 lt!491391) (_2!8698 lt!491391)))))

(assert (=> d!130387 (= lt!491457 (insertStrictlySorted!391 (toList!7694 lt!491385) (_1!8698 lt!491391) (_2!8698 lt!491391)))))

(assert (=> d!130387 (= (+!3329 lt!491385 lt!491391) lt!491458)))

(declare-fun b!1098505 () Bool)

(declare-fun res!733200 () Bool)

(assert (=> b!1098505 (=> (not res!733200) (not e!627011))))

(assert (=> b!1098505 (= res!733200 (= (getValueByKey!624 (toList!7694 lt!491458) (_1!8698 lt!491391)) (Some!674 (_2!8698 lt!491391))))))

(declare-fun b!1098506 () Bool)

(assert (=> b!1098506 (= e!627011 (contains!6400 (toList!7694 lt!491458) lt!491391))))

(assert (= (and d!130387 res!733201) b!1098505))

(assert (= (and b!1098505 res!733200) b!1098506))

(declare-fun m!1018407 () Bool)

(assert (=> d!130387 m!1018407))

(declare-fun m!1018409 () Bool)

(assert (=> d!130387 m!1018409))

(declare-fun m!1018411 () Bool)

(assert (=> d!130387 m!1018411))

(declare-fun m!1018413 () Bool)

(assert (=> d!130387 m!1018413))

(declare-fun m!1018415 () Bool)

(assert (=> b!1098505 m!1018415))

(declare-fun m!1018417 () Bool)

(assert (=> b!1098506 m!1018417))

(assert (=> b!1098441 d!130387))

(declare-fun d!130389 () Bool)

(declare-fun lt!491461 () ListLongMap!15357)

(assert (=> d!130389 (not (contains!6399 lt!491461 k0!904))))

(declare-fun removeStrictlySorted!81 (List!24053 (_ BitVec 64)) List!24053)

(assert (=> d!130389 (= lt!491461 (ListLongMap!15358 (removeStrictlySorted!81 (toList!7694 lt!491389) k0!904)))))

(assert (=> d!130389 (= (-!939 lt!491389 k0!904) lt!491461)))

(declare-fun bs!32269 () Bool)

(assert (= bs!32269 d!130389))

(declare-fun m!1018419 () Bool)

(assert (=> bs!32269 m!1018419))

(declare-fun m!1018421 () Bool)

(assert (=> bs!32269 m!1018421))

(assert (=> b!1098441 d!130389))

(declare-fun d!130391 () Bool)

(declare-fun e!627012 () Bool)

(assert (=> d!130391 e!627012))

(declare-fun res!733203 () Bool)

(assert (=> d!130391 (=> (not res!733203) (not e!627012))))

(declare-fun lt!491465 () ListLongMap!15357)

(assert (=> d!130391 (= res!733203 (contains!6399 lt!491465 (_1!8698 lt!491390)))))

(declare-fun lt!491464 () List!24053)

(assert (=> d!130391 (= lt!491465 (ListLongMap!15358 lt!491464))))

(declare-fun lt!491463 () Unit!36063)

(declare-fun lt!491462 () Unit!36063)

(assert (=> d!130391 (= lt!491463 lt!491462)))

(assert (=> d!130391 (= (getValueByKey!624 lt!491464 (_1!8698 lt!491390)) (Some!674 (_2!8698 lt!491390)))))

(assert (=> d!130391 (= lt!491462 (lemmaContainsTupThenGetReturnValue!299 lt!491464 (_1!8698 lt!491390) (_2!8698 lt!491390)))))

(assert (=> d!130391 (= lt!491464 (insertStrictlySorted!391 (toList!7694 lt!491380) (_1!8698 lt!491390) (_2!8698 lt!491390)))))

(assert (=> d!130391 (= (+!3329 lt!491380 lt!491390) lt!491465)))

(declare-fun b!1098507 () Bool)

(declare-fun res!733202 () Bool)

(assert (=> b!1098507 (=> (not res!733202) (not e!627012))))

(assert (=> b!1098507 (= res!733202 (= (getValueByKey!624 (toList!7694 lt!491465) (_1!8698 lt!491390)) (Some!674 (_2!8698 lt!491390))))))

(declare-fun b!1098508 () Bool)

(assert (=> b!1098508 (= e!627012 (contains!6400 (toList!7694 lt!491465) lt!491390))))

(assert (= (and d!130391 res!733203) b!1098507))

(assert (= (and b!1098507 res!733202) b!1098508))

(declare-fun m!1018423 () Bool)

(assert (=> d!130391 m!1018423))

(declare-fun m!1018425 () Bool)

(assert (=> d!130391 m!1018425))

(declare-fun m!1018427 () Bool)

(assert (=> d!130391 m!1018427))

(declare-fun m!1018429 () Bool)

(assert (=> d!130391 m!1018429))

(declare-fun m!1018431 () Bool)

(assert (=> b!1098507 m!1018431))

(declare-fun m!1018433 () Bool)

(assert (=> b!1098508 m!1018433))

(assert (=> b!1098441 d!130391))

(declare-fun d!130393 () Bool)

(declare-fun e!627013 () Bool)

(assert (=> d!130393 e!627013))

(declare-fun res!733205 () Bool)

(assert (=> d!130393 (=> (not res!733205) (not e!627013))))

(declare-fun lt!491469 () ListLongMap!15357)

(assert (=> d!130393 (= res!733205 (contains!6399 lt!491469 (_1!8698 lt!491391)))))

(declare-fun lt!491468 () List!24053)

(assert (=> d!130393 (= lt!491469 (ListLongMap!15358 lt!491468))))

(declare-fun lt!491467 () Unit!36063)

(declare-fun lt!491466 () Unit!36063)

(assert (=> d!130393 (= lt!491467 lt!491466)))

(assert (=> d!130393 (= (getValueByKey!624 lt!491468 (_1!8698 lt!491391)) (Some!674 (_2!8698 lt!491391)))))

(assert (=> d!130393 (= lt!491466 (lemmaContainsTupThenGetReturnValue!299 lt!491468 (_1!8698 lt!491391) (_2!8698 lt!491391)))))

(assert (=> d!130393 (= lt!491468 (insertStrictlySorted!391 (toList!7694 lt!491387) (_1!8698 lt!491391) (_2!8698 lt!491391)))))

(assert (=> d!130393 (= (+!3329 lt!491387 lt!491391) lt!491469)))

(declare-fun b!1098509 () Bool)

(declare-fun res!733204 () Bool)

(assert (=> b!1098509 (=> (not res!733204) (not e!627013))))

(assert (=> b!1098509 (= res!733204 (= (getValueByKey!624 (toList!7694 lt!491469) (_1!8698 lt!491391)) (Some!674 (_2!8698 lt!491391))))))

(declare-fun b!1098510 () Bool)

(assert (=> b!1098510 (= e!627013 (contains!6400 (toList!7694 lt!491469) lt!491391))))

(assert (= (and d!130393 res!733205) b!1098509))

(assert (= (and b!1098509 res!733204) b!1098510))

(declare-fun m!1018435 () Bool)

(assert (=> d!130393 m!1018435))

(declare-fun m!1018437 () Bool)

(assert (=> d!130393 m!1018437))

(declare-fun m!1018439 () Bool)

(assert (=> d!130393 m!1018439))

(declare-fun m!1018441 () Bool)

(assert (=> d!130393 m!1018441))

(declare-fun m!1018443 () Bool)

(assert (=> b!1098509 m!1018443))

(declare-fun m!1018445 () Bool)

(assert (=> b!1098510 m!1018445))

(assert (=> b!1098441 d!130393))

(declare-fun d!130395 () Bool)

(declare-fun e!627014 () Bool)

(assert (=> d!130395 e!627014))

(declare-fun res!733207 () Bool)

(assert (=> d!130395 (=> (not res!733207) (not e!627014))))

(declare-fun lt!491473 () ListLongMap!15357)

(assert (=> d!130395 (= res!733207 (contains!6399 lt!491473 (_1!8698 lt!491390)))))

(declare-fun lt!491472 () List!24053)

(assert (=> d!130395 (= lt!491473 (ListLongMap!15358 lt!491472))))

(declare-fun lt!491471 () Unit!36063)

(declare-fun lt!491470 () Unit!36063)

(assert (=> d!130395 (= lt!491471 lt!491470)))

(assert (=> d!130395 (= (getValueByKey!624 lt!491472 (_1!8698 lt!491390)) (Some!674 (_2!8698 lt!491390)))))

(assert (=> d!130395 (= lt!491470 (lemmaContainsTupThenGetReturnValue!299 lt!491472 (_1!8698 lt!491390) (_2!8698 lt!491390)))))

(assert (=> d!130395 (= lt!491472 (insertStrictlySorted!391 (toList!7694 (+!3329 lt!491384 lt!491391)) (_1!8698 lt!491390) (_2!8698 lt!491390)))))

(assert (=> d!130395 (= (+!3329 (+!3329 lt!491384 lt!491391) lt!491390) lt!491473)))

(declare-fun b!1098511 () Bool)

(declare-fun res!733206 () Bool)

(assert (=> b!1098511 (=> (not res!733206) (not e!627014))))

(assert (=> b!1098511 (= res!733206 (= (getValueByKey!624 (toList!7694 lt!491473) (_1!8698 lt!491390)) (Some!674 (_2!8698 lt!491390))))))

(declare-fun b!1098512 () Bool)

(assert (=> b!1098512 (= e!627014 (contains!6400 (toList!7694 lt!491473) lt!491390))))

(assert (= (and d!130395 res!733207) b!1098511))

(assert (= (and b!1098511 res!733206) b!1098512))

(declare-fun m!1018447 () Bool)

(assert (=> d!130395 m!1018447))

(declare-fun m!1018449 () Bool)

(assert (=> d!130395 m!1018449))

(declare-fun m!1018451 () Bool)

(assert (=> d!130395 m!1018451))

(declare-fun m!1018453 () Bool)

(assert (=> d!130395 m!1018453))

(declare-fun m!1018455 () Bool)

(assert (=> b!1098511 m!1018455))

(declare-fun m!1018457 () Bool)

(assert (=> b!1098512 m!1018457))

(assert (=> b!1098441 d!130395))

(declare-fun bm!45903 () Bool)

(declare-fun call!45906 () Bool)

(declare-fun c!108462 () Bool)

(assert (=> bm!45903 (= call!45906 (arrayNoDuplicates!0 lt!491392 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!108462 (Cons!24050 (select (arr!34239 lt!491392) #b00000000000000000000000000000000) Nil!24051) Nil!24051)))))

(declare-fun d!130397 () Bool)

(declare-fun res!733214 () Bool)

(declare-fun e!627025 () Bool)

(assert (=> d!130397 (=> res!733214 e!627025)))

(assert (=> d!130397 (= res!733214 (bvsge #b00000000000000000000000000000000 (size!34776 lt!491392)))))

(assert (=> d!130397 (= (arrayNoDuplicates!0 lt!491392 #b00000000000000000000000000000000 Nil!24051) e!627025)))

(declare-fun b!1098523 () Bool)

(declare-fun e!627024 () Bool)

(assert (=> b!1098523 (= e!627025 e!627024)))

(declare-fun res!733215 () Bool)

(assert (=> b!1098523 (=> (not res!733215) (not e!627024))))

(declare-fun e!627026 () Bool)

(assert (=> b!1098523 (= res!733215 (not e!627026))))

(declare-fun res!733216 () Bool)

(assert (=> b!1098523 (=> (not res!733216) (not e!627026))))

(assert (=> b!1098523 (= res!733216 (validKeyInArray!0 (select (arr!34239 lt!491392) #b00000000000000000000000000000000)))))

(declare-fun b!1098524 () Bool)

(declare-fun e!627023 () Bool)

(assert (=> b!1098524 (= e!627024 e!627023)))

(assert (=> b!1098524 (= c!108462 (validKeyInArray!0 (select (arr!34239 lt!491392) #b00000000000000000000000000000000)))))

(declare-fun b!1098525 () Bool)

(declare-fun contains!6401 (List!24054 (_ BitVec 64)) Bool)

(assert (=> b!1098525 (= e!627026 (contains!6401 Nil!24051 (select (arr!34239 lt!491392) #b00000000000000000000000000000000)))))

(declare-fun b!1098526 () Bool)

(assert (=> b!1098526 (= e!627023 call!45906)))

(declare-fun b!1098527 () Bool)

(assert (=> b!1098527 (= e!627023 call!45906)))

(assert (= (and d!130397 (not res!733214)) b!1098523))

(assert (= (and b!1098523 res!733216) b!1098525))

(assert (= (and b!1098523 res!733215) b!1098524))

(assert (= (and b!1098524 c!108462) b!1098526))

(assert (= (and b!1098524 (not c!108462)) b!1098527))

(assert (= (or b!1098526 b!1098527) bm!45903))

(declare-fun m!1018459 () Bool)

(assert (=> bm!45903 m!1018459))

(declare-fun m!1018461 () Bool)

(assert (=> bm!45903 m!1018461))

(assert (=> b!1098523 m!1018459))

(assert (=> b!1098523 m!1018459))

(declare-fun m!1018463 () Bool)

(assert (=> b!1098523 m!1018463))

(assert (=> b!1098524 m!1018459))

(assert (=> b!1098524 m!1018459))

(assert (=> b!1098524 m!1018463))

(assert (=> b!1098525 m!1018459))

(assert (=> b!1098525 m!1018459))

(declare-fun m!1018465 () Bool)

(assert (=> b!1098525 m!1018465))

(assert (=> b!1098451 d!130397))

(declare-fun d!130399 () Bool)

(declare-fun res!733221 () Bool)

(declare-fun e!627035 () Bool)

(assert (=> d!130399 (=> res!733221 e!627035)))

(assert (=> d!130399 (= res!733221 (bvsge #b00000000000000000000000000000000 (size!34776 lt!491392)))))

(assert (=> d!130399 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!491392 mask!1414) e!627035)))

(declare-fun bm!45906 () Bool)

(declare-fun call!45909 () Bool)

(assert (=> bm!45906 (= call!45909 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) lt!491392 mask!1414))))

(declare-fun b!1098536 () Bool)

(declare-fun e!627034 () Bool)

(assert (=> b!1098536 (= e!627035 e!627034)))

(declare-fun c!108465 () Bool)

(assert (=> b!1098536 (= c!108465 (validKeyInArray!0 (select (arr!34239 lt!491392) #b00000000000000000000000000000000)))))

(declare-fun b!1098537 () Bool)

(declare-fun e!627033 () Bool)

(assert (=> b!1098537 (= e!627033 call!45909)))

(declare-fun b!1098538 () Bool)

(assert (=> b!1098538 (= e!627034 call!45909)))

(declare-fun b!1098539 () Bool)

(assert (=> b!1098539 (= e!627034 e!627033)))

(declare-fun lt!491482 () (_ BitVec 64))

(assert (=> b!1098539 (= lt!491482 (select (arr!34239 lt!491392) #b00000000000000000000000000000000))))

(declare-fun lt!491481 () Unit!36063)

(assert (=> b!1098539 (= lt!491481 (lemmaArrayContainsFromImpliesContainsFromZero!0 lt!491392 lt!491482 #b00000000000000000000000000000000))))

(assert (=> b!1098539 (arrayContainsKey!0 lt!491392 lt!491482 #b00000000000000000000000000000000)))

(declare-fun lt!491480 () Unit!36063)

(assert (=> b!1098539 (= lt!491480 lt!491481)))

(declare-fun res!733222 () Bool)

(declare-datatypes ((SeekEntryResult!9906 0))(
  ( (MissingZero!9906 (index!41994 (_ BitVec 32))) (Found!9906 (index!41995 (_ BitVec 32))) (Intermediate!9906 (undefined!10718 Bool) (index!41996 (_ BitVec 32)) (x!98794 (_ BitVec 32))) (Undefined!9906) (MissingVacant!9906 (index!41997 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!71148 (_ BitVec 32)) SeekEntryResult!9906)

(assert (=> b!1098539 (= res!733222 (= (seekEntryOrOpen!0 (select (arr!34239 lt!491392) #b00000000000000000000000000000000) lt!491392 mask!1414) (Found!9906 #b00000000000000000000000000000000)))))

(assert (=> b!1098539 (=> (not res!733222) (not e!627033))))

(assert (= (and d!130399 (not res!733221)) b!1098536))

(assert (= (and b!1098536 c!108465) b!1098539))

(assert (= (and b!1098536 (not c!108465)) b!1098538))

(assert (= (and b!1098539 res!733222) b!1098537))

(assert (= (or b!1098537 b!1098538) bm!45906))

(declare-fun m!1018467 () Bool)

(assert (=> bm!45906 m!1018467))

(assert (=> b!1098536 m!1018459))

(assert (=> b!1098536 m!1018459))

(assert (=> b!1098536 m!1018463))

(assert (=> b!1098539 m!1018459))

(declare-fun m!1018469 () Bool)

(assert (=> b!1098539 m!1018469))

(declare-fun m!1018471 () Bool)

(assert (=> b!1098539 m!1018471))

(assert (=> b!1098539 m!1018459))

(declare-fun m!1018473 () Bool)

(assert (=> b!1098539 m!1018473))

(assert (=> b!1098450 d!130399))

(declare-fun bm!45907 () Bool)

(declare-fun call!45910 () Bool)

(declare-fun c!108466 () Bool)

(assert (=> bm!45907 (= call!45910 (arrayNoDuplicates!0 _keys!1070 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!108466 (Cons!24050 (select (arr!34239 _keys!1070) #b00000000000000000000000000000000) Nil!24051) Nil!24051)))))

(declare-fun d!130401 () Bool)

(declare-fun res!733223 () Bool)

(declare-fun e!627038 () Bool)

(assert (=> d!130401 (=> res!733223 e!627038)))

(assert (=> d!130401 (= res!733223 (bvsge #b00000000000000000000000000000000 (size!34776 _keys!1070)))))

(assert (=> d!130401 (= (arrayNoDuplicates!0 _keys!1070 #b00000000000000000000000000000000 Nil!24051) e!627038)))

(declare-fun b!1098540 () Bool)

(declare-fun e!627037 () Bool)

(assert (=> b!1098540 (= e!627038 e!627037)))

(declare-fun res!733224 () Bool)

(assert (=> b!1098540 (=> (not res!733224) (not e!627037))))

(declare-fun e!627039 () Bool)

(assert (=> b!1098540 (= res!733224 (not e!627039))))

(declare-fun res!733225 () Bool)

(assert (=> b!1098540 (=> (not res!733225) (not e!627039))))

(assert (=> b!1098540 (= res!733225 (validKeyInArray!0 (select (arr!34239 _keys!1070) #b00000000000000000000000000000000)))))

(declare-fun b!1098541 () Bool)

(declare-fun e!627036 () Bool)

(assert (=> b!1098541 (= e!627037 e!627036)))

(assert (=> b!1098541 (= c!108466 (validKeyInArray!0 (select (arr!34239 _keys!1070) #b00000000000000000000000000000000)))))

(declare-fun b!1098542 () Bool)

(assert (=> b!1098542 (= e!627039 (contains!6401 Nil!24051 (select (arr!34239 _keys!1070) #b00000000000000000000000000000000)))))

(declare-fun b!1098543 () Bool)

(assert (=> b!1098543 (= e!627036 call!45910)))

(declare-fun b!1098544 () Bool)

(assert (=> b!1098544 (= e!627036 call!45910)))

(assert (= (and d!130401 (not res!733223)) b!1098540))

(assert (= (and b!1098540 res!733225) b!1098542))

(assert (= (and b!1098540 res!733224) b!1098541))

(assert (= (and b!1098541 c!108466) b!1098543))

(assert (= (and b!1098541 (not c!108466)) b!1098544))

(assert (= (or b!1098543 b!1098544) bm!45907))

(declare-fun m!1018475 () Bool)

(assert (=> bm!45907 m!1018475))

(declare-fun m!1018477 () Bool)

(assert (=> bm!45907 m!1018477))

(assert (=> b!1098540 m!1018475))

(assert (=> b!1098540 m!1018475))

(declare-fun m!1018479 () Bool)

(assert (=> b!1098540 m!1018479))

(assert (=> b!1098541 m!1018475))

(assert (=> b!1098541 m!1018475))

(assert (=> b!1098541 m!1018479))

(assert (=> b!1098542 m!1018475))

(assert (=> b!1098542 m!1018475))

(declare-fun m!1018481 () Bool)

(assert (=> b!1098542 m!1018481))

(assert (=> b!1098452 d!130401))

(declare-fun d!130403 () Bool)

(declare-fun res!733230 () Bool)

(declare-fun e!627044 () Bool)

(assert (=> d!130403 (=> res!733230 e!627044)))

(assert (=> d!130403 (= res!733230 (= (select (arr!34239 _keys!1070) #b00000000000000000000000000000000) k0!904))))

(assert (=> d!130403 (= (arrayContainsKey!0 _keys!1070 k0!904 #b00000000000000000000000000000000) e!627044)))

(declare-fun b!1098549 () Bool)

(declare-fun e!627045 () Bool)

(assert (=> b!1098549 (= e!627044 e!627045)))

(declare-fun res!733231 () Bool)

(assert (=> b!1098549 (=> (not res!733231) (not e!627045))))

(assert (=> b!1098549 (= res!733231 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!34776 _keys!1070)))))

(declare-fun b!1098550 () Bool)

(assert (=> b!1098550 (= e!627045 (arrayContainsKey!0 _keys!1070 k0!904 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!130403 (not res!733230)) b!1098549))

(assert (= (and b!1098549 res!733231) b!1098550))

(assert (=> d!130403 m!1018475))

(declare-fun m!1018483 () Bool)

(assert (=> b!1098550 m!1018483))

(assert (=> b!1098447 d!130403))

(declare-fun b!1098593 () Bool)

(declare-fun e!627081 () Bool)

(declare-fun e!627077 () Bool)

(assert (=> b!1098593 (= e!627081 e!627077)))

(declare-fun res!733256 () Bool)

(declare-fun call!45929 () Bool)

(assert (=> b!1098593 (= res!733256 call!45929)))

(assert (=> b!1098593 (=> (not res!733256) (not e!627077))))

(declare-fun b!1098594 () Bool)

(declare-fun e!627074 () ListLongMap!15357)

(declare-fun call!45928 () ListLongMap!15357)

(assert (=> b!1098594 (= e!627074 call!45928)))

(declare-fun b!1098595 () Bool)

(declare-fun call!45930 () ListLongMap!15357)

(assert (=> b!1098595 (= e!627074 call!45930)))

(declare-fun b!1098596 () Bool)

(declare-fun e!627084 () Bool)

(declare-fun e!627079 () Bool)

(assert (=> b!1098596 (= e!627084 e!627079)))

(declare-fun res!733255 () Bool)

(declare-fun call!45931 () Bool)

(assert (=> b!1098596 (= res!733255 call!45931)))

(assert (=> b!1098596 (=> (not res!733255) (not e!627079))))

(declare-fun b!1098597 () Bool)

(declare-fun c!108481 () Bool)

(assert (=> b!1098597 (= c!108481 (and (not (= (bvand extraKeys!811 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeys!811 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun e!627080 () ListLongMap!15357)

(assert (=> b!1098597 (= e!627080 e!627074)))

(declare-fun b!1098598 () Bool)

(declare-fun e!627078 () Bool)

(assert (=> b!1098598 (= e!627078 e!627081)))

(declare-fun c!108484 () Bool)

(assert (=> b!1098598 (= c!108484 (not (= (bvand extraKeys!811 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun lt!491540 () ListLongMap!15357)

(declare-fun b!1098599 () Bool)

(declare-fun e!627082 () Bool)

(declare-fun apply!981 (ListLongMap!15357 (_ BitVec 64)) V!41315)

(declare-fun get!17633 (ValueCell!12861 V!41315) V!41315)

(assert (=> b!1098599 (= e!627082 (= (apply!981 lt!491540 (select (arr!34239 _keys!1070) #b00000000000000000000000000000000)) (get!17633 (select (arr!34240 _values!874) #b00000000000000000000000000000000) (dynLambda!2309 defaultEntry!882 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1098599 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!34777 _values!874)))))

(assert (=> b!1098599 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!34776 _keys!1070)))))

(declare-fun b!1098600 () Bool)

(declare-fun e!627075 () Bool)

(assert (=> b!1098600 (= e!627075 (validKeyInArray!0 (select (arr!34239 _keys!1070) #b00000000000000000000000000000000)))))

(declare-fun bm!45922 () Bool)

(declare-fun call!45926 () ListLongMap!15357)

(assert (=> bm!45922 (= call!45930 call!45926)))

(declare-fun bm!45923 () Bool)

(declare-fun call!45925 () ListLongMap!15357)

(assert (=> bm!45923 (= call!45928 call!45925)))

(declare-fun bm!45924 () Bool)

(declare-fun call!45927 () ListLongMap!15357)

(assert (=> bm!45924 (= call!45926 call!45927)))

(declare-fun bm!45925 () Bool)

(assert (=> bm!45925 (= call!45927 (getCurrentListMapNoExtraKeys!4178 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun b!1098601 () Bool)

(assert (=> b!1098601 (= e!627079 (= (apply!981 lt!491540 #b0000000000000000000000000000000000000000000000000000000000000000) zeroValue!831))))

(declare-fun b!1098602 () Bool)

(declare-fun e!627083 () Bool)

(assert (=> b!1098602 (= e!627083 e!627082)))

(declare-fun res!733252 () Bool)

(assert (=> b!1098602 (=> (not res!733252) (not e!627082))))

(assert (=> b!1098602 (= res!733252 (contains!6399 lt!491540 (select (arr!34239 _keys!1070) #b00000000000000000000000000000000)))))

(assert (=> b!1098602 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!34776 _keys!1070)))))

(declare-fun d!130405 () Bool)

(assert (=> d!130405 e!627078))

(declare-fun res!733253 () Bool)

(assert (=> d!130405 (=> (not res!733253) (not e!627078))))

(assert (=> d!130405 (= res!733253 (or (bvsge #b00000000000000000000000000000000 (size!34776 _keys!1070)) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!34776 _keys!1070)))))))

(declare-fun lt!491538 () ListLongMap!15357)

(assert (=> d!130405 (= lt!491540 lt!491538)))

(declare-fun lt!491537 () Unit!36063)

(declare-fun e!627073 () Unit!36063)

(assert (=> d!130405 (= lt!491537 e!627073)))

(declare-fun c!108480 () Bool)

(assert (=> d!130405 (= c!108480 e!627075)))

(declare-fun res!733254 () Bool)

(assert (=> d!130405 (=> (not res!733254) (not e!627075))))

(assert (=> d!130405 (= res!733254 (bvslt #b00000000000000000000000000000000 (size!34776 _keys!1070)))))

(declare-fun e!627072 () ListLongMap!15357)

(assert (=> d!130405 (= lt!491538 e!627072)))

(declare-fun c!108482 () Bool)

(assert (=> d!130405 (= c!108482 (and (not (= (bvand extraKeys!811 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!811 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!130405 (validMask!0 mask!1414)))

(assert (=> d!130405 (= (getCurrentListMap!4391 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882) lt!491540)))

(declare-fun b!1098603 () Bool)

(assert (=> b!1098603 (= e!627080 call!45928)))

(declare-fun bm!45926 () Bool)

(assert (=> bm!45926 (= call!45931 (contains!6399 lt!491540 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1098604 () Bool)

(assert (=> b!1098604 (= e!627072 e!627080)))

(declare-fun c!108479 () Bool)

(assert (=> b!1098604 (= c!108479 (and (not (= (bvand extraKeys!811 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeys!811 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1098605 () Bool)

(assert (=> b!1098605 (= e!627084 (not call!45931))))

(declare-fun bm!45927 () Bool)

(assert (=> bm!45927 (= call!45925 (+!3329 (ite c!108482 call!45927 (ite c!108479 call!45926 call!45930)) (ite (or c!108482 c!108479) (tuple2!17377 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!831) (tuple2!17377 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!831))))))

(declare-fun b!1098606 () Bool)

(declare-fun res!733258 () Bool)

(assert (=> b!1098606 (=> (not res!733258) (not e!627078))))

(assert (=> b!1098606 (= res!733258 e!627083)))

(declare-fun res!733251 () Bool)

(assert (=> b!1098606 (=> res!733251 e!627083)))

(declare-fun e!627076 () Bool)

(assert (=> b!1098606 (= res!733251 (not e!627076))))

(declare-fun res!733250 () Bool)

(assert (=> b!1098606 (=> (not res!733250) (not e!627076))))

(assert (=> b!1098606 (= res!733250 (bvslt #b00000000000000000000000000000000 (size!34776 _keys!1070)))))

(declare-fun b!1098607 () Bool)

(assert (=> b!1098607 (= e!627077 (= (apply!981 lt!491540 #b1000000000000000000000000000000000000000000000000000000000000000) minValue!831))))

(declare-fun b!1098608 () Bool)

(assert (=> b!1098608 (= e!627076 (validKeyInArray!0 (select (arr!34239 _keys!1070) #b00000000000000000000000000000000)))))

(declare-fun b!1098609 () Bool)

(declare-fun lt!491542 () Unit!36063)

(assert (=> b!1098609 (= e!627073 lt!491542)))

(declare-fun lt!491534 () ListLongMap!15357)

(assert (=> b!1098609 (= lt!491534 (getCurrentListMapNoExtraKeys!4178 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun lt!491541 () (_ BitVec 64))

(assert (=> b!1098609 (= lt!491541 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!491539 () (_ BitVec 64))

(assert (=> b!1098609 (= lt!491539 (select (arr!34239 _keys!1070) #b00000000000000000000000000000000))))

(declare-fun lt!491546 () Unit!36063)

(declare-fun addStillContains!663 (ListLongMap!15357 (_ BitVec 64) V!41315 (_ BitVec 64)) Unit!36063)

(assert (=> b!1098609 (= lt!491546 (addStillContains!663 lt!491534 lt!491541 zeroValue!831 lt!491539))))

(assert (=> b!1098609 (contains!6399 (+!3329 lt!491534 (tuple2!17377 lt!491541 zeroValue!831)) lt!491539)))

(declare-fun lt!491547 () Unit!36063)

(assert (=> b!1098609 (= lt!491547 lt!491546)))

(declare-fun lt!491548 () ListLongMap!15357)

(assert (=> b!1098609 (= lt!491548 (getCurrentListMapNoExtraKeys!4178 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun lt!491528 () (_ BitVec 64))

(assert (=> b!1098609 (= lt!491528 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!491530 () (_ BitVec 64))

(assert (=> b!1098609 (= lt!491530 (select (arr!34239 _keys!1070) #b00000000000000000000000000000000))))

(declare-fun lt!491533 () Unit!36063)

(declare-fun addApplyDifferent!515 (ListLongMap!15357 (_ BitVec 64) V!41315 (_ BitVec 64)) Unit!36063)

(assert (=> b!1098609 (= lt!491533 (addApplyDifferent!515 lt!491548 lt!491528 minValue!831 lt!491530))))

(assert (=> b!1098609 (= (apply!981 (+!3329 lt!491548 (tuple2!17377 lt!491528 minValue!831)) lt!491530) (apply!981 lt!491548 lt!491530))))

(declare-fun lt!491535 () Unit!36063)

(assert (=> b!1098609 (= lt!491535 lt!491533)))

(declare-fun lt!491536 () ListLongMap!15357)

(assert (=> b!1098609 (= lt!491536 (getCurrentListMapNoExtraKeys!4178 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun lt!491545 () (_ BitVec 64))

(assert (=> b!1098609 (= lt!491545 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!491529 () (_ BitVec 64))

(assert (=> b!1098609 (= lt!491529 (select (arr!34239 _keys!1070) #b00000000000000000000000000000000))))

(declare-fun lt!491544 () Unit!36063)

(assert (=> b!1098609 (= lt!491544 (addApplyDifferent!515 lt!491536 lt!491545 zeroValue!831 lt!491529))))

(assert (=> b!1098609 (= (apply!981 (+!3329 lt!491536 (tuple2!17377 lt!491545 zeroValue!831)) lt!491529) (apply!981 lt!491536 lt!491529))))

(declare-fun lt!491532 () Unit!36063)

(assert (=> b!1098609 (= lt!491532 lt!491544)))

(declare-fun lt!491531 () ListLongMap!15357)

(assert (=> b!1098609 (= lt!491531 (getCurrentListMapNoExtraKeys!4178 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun lt!491527 () (_ BitVec 64))

(assert (=> b!1098609 (= lt!491527 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!491543 () (_ BitVec 64))

(assert (=> b!1098609 (= lt!491543 (select (arr!34239 _keys!1070) #b00000000000000000000000000000000))))

(assert (=> b!1098609 (= lt!491542 (addApplyDifferent!515 lt!491531 lt!491527 minValue!831 lt!491543))))

(assert (=> b!1098609 (= (apply!981 (+!3329 lt!491531 (tuple2!17377 lt!491527 minValue!831)) lt!491543) (apply!981 lt!491531 lt!491543))))

(declare-fun b!1098610 () Bool)

(assert (=> b!1098610 (= e!627081 (not call!45929))))

(declare-fun bm!45928 () Bool)

(assert (=> bm!45928 (= call!45929 (contains!6399 lt!491540 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1098611 () Bool)

(declare-fun Unit!36067 () Unit!36063)

(assert (=> b!1098611 (= e!627073 Unit!36067)))

(declare-fun b!1098612 () Bool)

(declare-fun res!733257 () Bool)

(assert (=> b!1098612 (=> (not res!733257) (not e!627078))))

(assert (=> b!1098612 (= res!733257 e!627084)))

(declare-fun c!108483 () Bool)

(assert (=> b!1098612 (= c!108483 (not (= (bvand extraKeys!811 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!1098613 () Bool)

(assert (=> b!1098613 (= e!627072 (+!3329 call!45925 (tuple2!17377 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!831)))))

(assert (= (and d!130405 c!108482) b!1098613))

(assert (= (and d!130405 (not c!108482)) b!1098604))

(assert (= (and b!1098604 c!108479) b!1098603))

(assert (= (and b!1098604 (not c!108479)) b!1098597))

(assert (= (and b!1098597 c!108481) b!1098594))

(assert (= (and b!1098597 (not c!108481)) b!1098595))

(assert (= (or b!1098594 b!1098595) bm!45922))

(assert (= (or b!1098603 bm!45922) bm!45924))

(assert (= (or b!1098603 b!1098594) bm!45923))

(assert (= (or b!1098613 bm!45924) bm!45925))

(assert (= (or b!1098613 bm!45923) bm!45927))

(assert (= (and d!130405 res!733254) b!1098600))

(assert (= (and d!130405 c!108480) b!1098609))

(assert (= (and d!130405 (not c!108480)) b!1098611))

(assert (= (and d!130405 res!733253) b!1098606))

(assert (= (and b!1098606 res!733250) b!1098608))

(assert (= (and b!1098606 (not res!733251)) b!1098602))

(assert (= (and b!1098602 res!733252) b!1098599))

(assert (= (and b!1098606 res!733258) b!1098612))

(assert (= (and b!1098612 c!108483) b!1098596))

(assert (= (and b!1098612 (not c!108483)) b!1098605))

(assert (= (and b!1098596 res!733255) b!1098601))

(assert (= (or b!1098596 b!1098605) bm!45926))

(assert (= (and b!1098612 res!733257) b!1098598))

(assert (= (and b!1098598 c!108484) b!1098593))

(assert (= (and b!1098598 (not c!108484)) b!1098610))

(assert (= (and b!1098593 res!733256) b!1098607))

(assert (= (or b!1098593 b!1098610) bm!45928))

(declare-fun b_lambda!17875 () Bool)

(assert (=> (not b_lambda!17875) (not b!1098599)))

(assert (=> b!1098599 t!34196))

(declare-fun b_and!36913 () Bool)

(assert (= b_and!36907 (and (=> t!34196 result!16451) b_and!36913)))

(assert (=> b!1098600 m!1018475))

(assert (=> b!1098600 m!1018475))

(assert (=> b!1098600 m!1018479))

(declare-fun m!1018485 () Bool)

(assert (=> b!1098601 m!1018485))

(assert (=> b!1098599 m!1018475))

(declare-fun m!1018487 () Bool)

(assert (=> b!1098599 m!1018487))

(declare-fun m!1018489 () Bool)

(assert (=> b!1098599 m!1018489))

(assert (=> b!1098599 m!1018291))

(assert (=> b!1098599 m!1018475))

(assert (=> b!1098599 m!1018489))

(assert (=> b!1098599 m!1018291))

(declare-fun m!1018491 () Bool)

(assert (=> b!1098599 m!1018491))

(assert (=> b!1098608 m!1018475))

(assert (=> b!1098608 m!1018475))

(assert (=> b!1098608 m!1018479))

(assert (=> d!130405 m!1018259))

(declare-fun m!1018493 () Bool)

(assert (=> b!1098609 m!1018493))

(declare-fun m!1018495 () Bool)

(assert (=> b!1098609 m!1018495))

(declare-fun m!1018497 () Bool)

(assert (=> b!1098609 m!1018497))

(declare-fun m!1018499 () Bool)

(assert (=> b!1098609 m!1018499))

(declare-fun m!1018501 () Bool)

(assert (=> b!1098609 m!1018501))

(assert (=> b!1098609 m!1018497))

(declare-fun m!1018503 () Bool)

(assert (=> b!1098609 m!1018503))

(declare-fun m!1018505 () Bool)

(assert (=> b!1098609 m!1018505))

(declare-fun m!1018507 () Bool)

(assert (=> b!1098609 m!1018507))

(assert (=> b!1098609 m!1018301))

(assert (=> b!1098609 m!1018495))

(declare-fun m!1018509 () Bool)

(assert (=> b!1098609 m!1018509))

(assert (=> b!1098609 m!1018507))

(declare-fun m!1018511 () Bool)

(assert (=> b!1098609 m!1018511))

(declare-fun m!1018513 () Bool)

(assert (=> b!1098609 m!1018513))

(declare-fun m!1018515 () Bool)

(assert (=> b!1098609 m!1018515))

(declare-fun m!1018517 () Bool)

(assert (=> b!1098609 m!1018517))

(declare-fun m!1018519 () Bool)

(assert (=> b!1098609 m!1018519))

(assert (=> b!1098609 m!1018499))

(declare-fun m!1018521 () Bool)

(assert (=> b!1098609 m!1018521))

(assert (=> b!1098609 m!1018475))

(declare-fun m!1018523 () Bool)

(assert (=> b!1098607 m!1018523))

(assert (=> b!1098602 m!1018475))

(assert (=> b!1098602 m!1018475))

(declare-fun m!1018525 () Bool)

(assert (=> b!1098602 m!1018525))

(declare-fun m!1018527 () Bool)

(assert (=> bm!45926 m!1018527))

(declare-fun m!1018529 () Bool)

(assert (=> bm!45927 m!1018529))

(declare-fun m!1018531 () Bool)

(assert (=> bm!45928 m!1018531))

(declare-fun m!1018533 () Bool)

(assert (=> b!1098613 m!1018533))

(assert (=> bm!45925 m!1018301))

(assert (=> b!1098447 d!130405))

(declare-fun d!130407 () Bool)

(declare-fun lt!491549 () ListLongMap!15357)

(assert (=> d!130407 (not (contains!6399 lt!491549 k0!904))))

(assert (=> d!130407 (= lt!491549 (ListLongMap!15358 (removeStrictlySorted!81 (toList!7694 lt!491387) k0!904)))))

(assert (=> d!130407 (= (-!939 lt!491387 k0!904) lt!491549)))

(declare-fun bs!32270 () Bool)

(assert (= bs!32270 d!130407))

(declare-fun m!1018535 () Bool)

(assert (=> bs!32270 m!1018535))

(declare-fun m!1018537 () Bool)

(assert (=> bs!32270 m!1018537))

(assert (=> b!1098447 d!130407))

(declare-fun b!1098620 () Bool)

(declare-fun e!627090 () Bool)

(declare-fun e!627089 () Bool)

(assert (=> b!1098620 (= e!627090 e!627089)))

(declare-fun c!108487 () Bool)

(assert (=> b!1098620 (= c!108487 (bvsle #b00000000000000000000000000000000 i!650))))

(declare-fun call!45936 () ListLongMap!15357)

(declare-fun bm!45933 () Bool)

(assert (=> bm!45933 (= call!45936 (getCurrentListMapNoExtraKeys!4178 (array!71149 (store (arr!34239 _keys!1070) i!650 #b1000000000000000000000000000000000000000000000000000000000000000) (size!34776 _keys!1070)) (array!71151 (store (arr!34240 _values!874) i!650 (ValueCellFull!12861 (dynLambda!2309 defaultEntry!882 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!34777 _values!874)) mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun call!45937 () ListLongMap!15357)

(declare-fun b!1098621 () Bool)

(assert (=> b!1098621 (= e!627089 (= call!45936 (-!939 call!45937 k0!904)))))

(assert (=> b!1098621 (and (bvsge i!650 #b00000000000000000000000000000000) (bvslt i!650 (size!34777 _values!874)))))

(declare-fun b!1098622 () Bool)

(assert (=> b!1098622 (= e!627089 (= call!45936 call!45937))))

(assert (=> b!1098622 (and (bvsge i!650 #b00000000000000000000000000000000) (bvslt i!650 (size!34777 _values!874)))))

(declare-fun d!130409 () Bool)

(assert (=> d!130409 e!627090))

(declare-fun res!733261 () Bool)

(assert (=> d!130409 (=> (not res!733261) (not e!627090))))

(assert (=> d!130409 (= res!733261 (and (or (not (bvsle #b00000000000000000000000000000000 i!650)) (and (bvsge i!650 #b00000000000000000000000000000000) (bvslt i!650 (size!34776 _keys!1070)))) (or (bvsle #b00000000000000000000000000000000 i!650) (and (bvsge i!650 #b00000000000000000000000000000000) (bvslt i!650 (size!34776 _keys!1070))))))))

(declare-fun lt!491552 () Unit!36063)

(declare-fun choose!1772 (array!71148 array!71150 (_ BitVec 32) (_ BitVec 32) V!41315 V!41315 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!36063)

(assert (=> d!130409 (= lt!491552 (choose!1772 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 i!650 k0!904 #b00000000000000000000000000000000 defaultEntry!882))))

(assert (=> d!130409 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvsle #b00000000000000000000000000000000 (size!34776 _keys!1070)))))

(assert (=> d!130409 (= (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!203 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 i!650 k0!904 #b00000000000000000000000000000000 defaultEntry!882) lt!491552)))

(declare-fun bm!45934 () Bool)

(assert (=> bm!45934 (= call!45937 (getCurrentListMapNoExtraKeys!4178 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(assert (= (and d!130409 res!733261) b!1098620))

(assert (= (and b!1098620 c!108487) b!1098621))

(assert (= (and b!1098620 (not c!108487)) b!1098622))

(assert (= (or b!1098621 b!1098622) bm!45934))

(assert (= (or b!1098621 b!1098622) bm!45933))

(declare-fun b_lambda!17877 () Bool)

(assert (=> (not b_lambda!17877) (not bm!45933)))

(assert (=> bm!45933 t!34196))

(declare-fun b_and!36915 () Bool)

(assert (= b_and!36913 (and (=> t!34196 result!16451) b_and!36915)))

(assert (=> bm!45933 m!1018315))

(assert (=> bm!45933 m!1018291))

(assert (=> bm!45933 m!1018293))

(declare-fun m!1018539 () Bool)

(assert (=> bm!45933 m!1018539))

(declare-fun m!1018541 () Bool)

(assert (=> b!1098621 m!1018541))

(declare-fun m!1018543 () Bool)

(assert (=> d!130409 m!1018543))

(assert (=> bm!45934 m!1018301))

(assert (=> b!1098447 d!130409))

(declare-fun b!1098623 () Bool)

(declare-fun e!627100 () Bool)

(declare-fun e!627096 () Bool)

(assert (=> b!1098623 (= e!627100 e!627096)))

(declare-fun res!733268 () Bool)

(declare-fun call!45942 () Bool)

(assert (=> b!1098623 (= res!733268 call!45942)))

(assert (=> b!1098623 (=> (not res!733268) (not e!627096))))

(declare-fun b!1098624 () Bool)

(declare-fun e!627093 () ListLongMap!15357)

(declare-fun call!45941 () ListLongMap!15357)

(assert (=> b!1098624 (= e!627093 call!45941)))

(declare-fun b!1098625 () Bool)

(declare-fun call!45943 () ListLongMap!15357)

(assert (=> b!1098625 (= e!627093 call!45943)))

(declare-fun b!1098626 () Bool)

(declare-fun e!627103 () Bool)

(declare-fun e!627098 () Bool)

(assert (=> b!1098626 (= e!627103 e!627098)))

(declare-fun res!733267 () Bool)

(declare-fun call!45944 () Bool)

(assert (=> b!1098626 (= res!733267 call!45944)))

(assert (=> b!1098626 (=> (not res!733267) (not e!627098))))

(declare-fun b!1098627 () Bool)

(declare-fun c!108490 () Bool)

(assert (=> b!1098627 (= c!108490 (and (not (= (bvand extraKeys!811 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeys!811 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun e!627099 () ListLongMap!15357)

(assert (=> b!1098627 (= e!627099 e!627093)))

(declare-fun b!1098628 () Bool)

(declare-fun e!627097 () Bool)

(assert (=> b!1098628 (= e!627097 e!627100)))

(declare-fun c!108493 () Bool)

(assert (=> b!1098628 (= c!108493 (not (= (bvand extraKeys!811 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1098629 () Bool)

(declare-fun e!627101 () Bool)

(declare-fun lt!491566 () ListLongMap!15357)

(assert (=> b!1098629 (= e!627101 (= (apply!981 lt!491566 (select (arr!34239 lt!491392) #b00000000000000000000000000000000)) (get!17633 (select (arr!34240 lt!491388) #b00000000000000000000000000000000) (dynLambda!2309 defaultEntry!882 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1098629 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!34777 lt!491388)))))

(assert (=> b!1098629 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!34776 lt!491392)))))

(declare-fun b!1098630 () Bool)

(declare-fun e!627094 () Bool)

(assert (=> b!1098630 (= e!627094 (validKeyInArray!0 (select (arr!34239 lt!491392) #b00000000000000000000000000000000)))))

(declare-fun bm!45935 () Bool)

(declare-fun call!45939 () ListLongMap!15357)

(assert (=> bm!45935 (= call!45943 call!45939)))

(declare-fun bm!45936 () Bool)

(declare-fun call!45938 () ListLongMap!15357)

(assert (=> bm!45936 (= call!45941 call!45938)))

(declare-fun bm!45937 () Bool)

(declare-fun call!45940 () ListLongMap!15357)

(assert (=> bm!45937 (= call!45939 call!45940)))

(declare-fun bm!45938 () Bool)

(assert (=> bm!45938 (= call!45940 (getCurrentListMapNoExtraKeys!4178 lt!491392 lt!491388 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun b!1098631 () Bool)

(assert (=> b!1098631 (= e!627098 (= (apply!981 lt!491566 #b0000000000000000000000000000000000000000000000000000000000000000) zeroValue!831))))

(declare-fun b!1098632 () Bool)

(declare-fun e!627102 () Bool)

(assert (=> b!1098632 (= e!627102 e!627101)))

(declare-fun res!733264 () Bool)

(assert (=> b!1098632 (=> (not res!733264) (not e!627101))))

(assert (=> b!1098632 (= res!733264 (contains!6399 lt!491566 (select (arr!34239 lt!491392) #b00000000000000000000000000000000)))))

(assert (=> b!1098632 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!34776 lt!491392)))))

(declare-fun d!130411 () Bool)

(assert (=> d!130411 e!627097))

(declare-fun res!733265 () Bool)

(assert (=> d!130411 (=> (not res!733265) (not e!627097))))

(assert (=> d!130411 (= res!733265 (or (bvsge #b00000000000000000000000000000000 (size!34776 lt!491392)) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!34776 lt!491392)))))))

(declare-fun lt!491564 () ListLongMap!15357)

(assert (=> d!130411 (= lt!491566 lt!491564)))

(declare-fun lt!491563 () Unit!36063)

(declare-fun e!627092 () Unit!36063)

(assert (=> d!130411 (= lt!491563 e!627092)))

(declare-fun c!108489 () Bool)

(assert (=> d!130411 (= c!108489 e!627094)))

(declare-fun res!733266 () Bool)

(assert (=> d!130411 (=> (not res!733266) (not e!627094))))

(assert (=> d!130411 (= res!733266 (bvslt #b00000000000000000000000000000000 (size!34776 lt!491392)))))

(declare-fun e!627091 () ListLongMap!15357)

(assert (=> d!130411 (= lt!491564 e!627091)))

(declare-fun c!108491 () Bool)

(assert (=> d!130411 (= c!108491 (and (not (= (bvand extraKeys!811 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!811 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!130411 (validMask!0 mask!1414)))

(assert (=> d!130411 (= (getCurrentListMap!4391 lt!491392 lt!491388 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882) lt!491566)))

(declare-fun b!1098633 () Bool)

(assert (=> b!1098633 (= e!627099 call!45941)))

(declare-fun bm!45939 () Bool)

(assert (=> bm!45939 (= call!45944 (contains!6399 lt!491566 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1098634 () Bool)

(assert (=> b!1098634 (= e!627091 e!627099)))

(declare-fun c!108488 () Bool)

(assert (=> b!1098634 (= c!108488 (and (not (= (bvand extraKeys!811 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeys!811 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1098635 () Bool)

(assert (=> b!1098635 (= e!627103 (not call!45944))))

(declare-fun bm!45940 () Bool)

(assert (=> bm!45940 (= call!45938 (+!3329 (ite c!108491 call!45940 (ite c!108488 call!45939 call!45943)) (ite (or c!108491 c!108488) (tuple2!17377 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!831) (tuple2!17377 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!831))))))

(declare-fun b!1098636 () Bool)

(declare-fun res!733270 () Bool)

(assert (=> b!1098636 (=> (not res!733270) (not e!627097))))

(assert (=> b!1098636 (= res!733270 e!627102)))

(declare-fun res!733263 () Bool)

(assert (=> b!1098636 (=> res!733263 e!627102)))

(declare-fun e!627095 () Bool)

(assert (=> b!1098636 (= res!733263 (not e!627095))))

(declare-fun res!733262 () Bool)

(assert (=> b!1098636 (=> (not res!733262) (not e!627095))))

(assert (=> b!1098636 (= res!733262 (bvslt #b00000000000000000000000000000000 (size!34776 lt!491392)))))

(declare-fun b!1098637 () Bool)

(assert (=> b!1098637 (= e!627096 (= (apply!981 lt!491566 #b1000000000000000000000000000000000000000000000000000000000000000) minValue!831))))

(declare-fun b!1098638 () Bool)

(assert (=> b!1098638 (= e!627095 (validKeyInArray!0 (select (arr!34239 lt!491392) #b00000000000000000000000000000000)))))

(declare-fun b!1098639 () Bool)

(declare-fun lt!491568 () Unit!36063)

(assert (=> b!1098639 (= e!627092 lt!491568)))

(declare-fun lt!491560 () ListLongMap!15357)

(assert (=> b!1098639 (= lt!491560 (getCurrentListMapNoExtraKeys!4178 lt!491392 lt!491388 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun lt!491567 () (_ BitVec 64))

(assert (=> b!1098639 (= lt!491567 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!491565 () (_ BitVec 64))

(assert (=> b!1098639 (= lt!491565 (select (arr!34239 lt!491392) #b00000000000000000000000000000000))))

(declare-fun lt!491572 () Unit!36063)

(assert (=> b!1098639 (= lt!491572 (addStillContains!663 lt!491560 lt!491567 zeroValue!831 lt!491565))))

(assert (=> b!1098639 (contains!6399 (+!3329 lt!491560 (tuple2!17377 lt!491567 zeroValue!831)) lt!491565)))

(declare-fun lt!491573 () Unit!36063)

(assert (=> b!1098639 (= lt!491573 lt!491572)))

(declare-fun lt!491574 () ListLongMap!15357)

(assert (=> b!1098639 (= lt!491574 (getCurrentListMapNoExtraKeys!4178 lt!491392 lt!491388 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun lt!491554 () (_ BitVec 64))

(assert (=> b!1098639 (= lt!491554 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!491556 () (_ BitVec 64))

(assert (=> b!1098639 (= lt!491556 (select (arr!34239 lt!491392) #b00000000000000000000000000000000))))

(declare-fun lt!491559 () Unit!36063)

(assert (=> b!1098639 (= lt!491559 (addApplyDifferent!515 lt!491574 lt!491554 minValue!831 lt!491556))))

(assert (=> b!1098639 (= (apply!981 (+!3329 lt!491574 (tuple2!17377 lt!491554 minValue!831)) lt!491556) (apply!981 lt!491574 lt!491556))))

(declare-fun lt!491561 () Unit!36063)

(assert (=> b!1098639 (= lt!491561 lt!491559)))

(declare-fun lt!491562 () ListLongMap!15357)

(assert (=> b!1098639 (= lt!491562 (getCurrentListMapNoExtraKeys!4178 lt!491392 lt!491388 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun lt!491571 () (_ BitVec 64))

(assert (=> b!1098639 (= lt!491571 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!491555 () (_ BitVec 64))

(assert (=> b!1098639 (= lt!491555 (select (arr!34239 lt!491392) #b00000000000000000000000000000000))))

(declare-fun lt!491570 () Unit!36063)

(assert (=> b!1098639 (= lt!491570 (addApplyDifferent!515 lt!491562 lt!491571 zeroValue!831 lt!491555))))

(assert (=> b!1098639 (= (apply!981 (+!3329 lt!491562 (tuple2!17377 lt!491571 zeroValue!831)) lt!491555) (apply!981 lt!491562 lt!491555))))

(declare-fun lt!491558 () Unit!36063)

(assert (=> b!1098639 (= lt!491558 lt!491570)))

(declare-fun lt!491557 () ListLongMap!15357)

(assert (=> b!1098639 (= lt!491557 (getCurrentListMapNoExtraKeys!4178 lt!491392 lt!491388 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun lt!491553 () (_ BitVec 64))

(assert (=> b!1098639 (= lt!491553 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!491569 () (_ BitVec 64))

(assert (=> b!1098639 (= lt!491569 (select (arr!34239 lt!491392) #b00000000000000000000000000000000))))

(assert (=> b!1098639 (= lt!491568 (addApplyDifferent!515 lt!491557 lt!491553 minValue!831 lt!491569))))

(assert (=> b!1098639 (= (apply!981 (+!3329 lt!491557 (tuple2!17377 lt!491553 minValue!831)) lt!491569) (apply!981 lt!491557 lt!491569))))

(declare-fun b!1098640 () Bool)

(assert (=> b!1098640 (= e!627100 (not call!45942))))

(declare-fun bm!45941 () Bool)

(assert (=> bm!45941 (= call!45942 (contains!6399 lt!491566 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1098641 () Bool)

(declare-fun Unit!36068 () Unit!36063)

(assert (=> b!1098641 (= e!627092 Unit!36068)))

(declare-fun b!1098642 () Bool)

(declare-fun res!733269 () Bool)

(assert (=> b!1098642 (=> (not res!733269) (not e!627097))))

(assert (=> b!1098642 (= res!733269 e!627103)))

(declare-fun c!108492 () Bool)

(assert (=> b!1098642 (= c!108492 (not (= (bvand extraKeys!811 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!1098643 () Bool)

(assert (=> b!1098643 (= e!627091 (+!3329 call!45938 (tuple2!17377 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!831)))))

(assert (= (and d!130411 c!108491) b!1098643))

(assert (= (and d!130411 (not c!108491)) b!1098634))

(assert (= (and b!1098634 c!108488) b!1098633))

(assert (= (and b!1098634 (not c!108488)) b!1098627))

(assert (= (and b!1098627 c!108490) b!1098624))

(assert (= (and b!1098627 (not c!108490)) b!1098625))

(assert (= (or b!1098624 b!1098625) bm!45935))

(assert (= (or b!1098633 bm!45935) bm!45937))

(assert (= (or b!1098633 b!1098624) bm!45936))

(assert (= (or b!1098643 bm!45937) bm!45938))

(assert (= (or b!1098643 bm!45936) bm!45940))

(assert (= (and d!130411 res!733266) b!1098630))

(assert (= (and d!130411 c!108489) b!1098639))

(assert (= (and d!130411 (not c!108489)) b!1098641))

(assert (= (and d!130411 res!733265) b!1098636))

(assert (= (and b!1098636 res!733262) b!1098638))

(assert (= (and b!1098636 (not res!733263)) b!1098632))

(assert (= (and b!1098632 res!733264) b!1098629))

(assert (= (and b!1098636 res!733270) b!1098642))

(assert (= (and b!1098642 c!108492) b!1098626))

(assert (= (and b!1098642 (not c!108492)) b!1098635))

(assert (= (and b!1098626 res!733267) b!1098631))

(assert (= (or b!1098626 b!1098635) bm!45939))

(assert (= (and b!1098642 res!733269) b!1098628))

(assert (= (and b!1098628 c!108493) b!1098623))

(assert (= (and b!1098628 (not c!108493)) b!1098640))

(assert (= (and b!1098623 res!733268) b!1098637))

(assert (= (or b!1098623 b!1098640) bm!45941))

(declare-fun b_lambda!17879 () Bool)

(assert (=> (not b_lambda!17879) (not b!1098629)))

(assert (=> b!1098629 t!34196))

(declare-fun b_and!36917 () Bool)

(assert (= b_and!36915 (and (=> t!34196 result!16451) b_and!36917)))

(assert (=> b!1098630 m!1018459))

(assert (=> b!1098630 m!1018459))

(assert (=> b!1098630 m!1018463))

(declare-fun m!1018545 () Bool)

(assert (=> b!1098631 m!1018545))

(assert (=> b!1098629 m!1018459))

(declare-fun m!1018547 () Bool)

(assert (=> b!1098629 m!1018547))

(declare-fun m!1018549 () Bool)

(assert (=> b!1098629 m!1018549))

(assert (=> b!1098629 m!1018291))

(assert (=> b!1098629 m!1018459))

(assert (=> b!1098629 m!1018549))

(assert (=> b!1098629 m!1018291))

(declare-fun m!1018551 () Bool)

(assert (=> b!1098629 m!1018551))

(assert (=> b!1098638 m!1018459))

(assert (=> b!1098638 m!1018459))

(assert (=> b!1098638 m!1018463))

(assert (=> d!130411 m!1018259))

(declare-fun m!1018553 () Bool)

(assert (=> b!1098639 m!1018553))

(declare-fun m!1018555 () Bool)

(assert (=> b!1098639 m!1018555))

(declare-fun m!1018557 () Bool)

(assert (=> b!1098639 m!1018557))

(declare-fun m!1018559 () Bool)

(assert (=> b!1098639 m!1018559))

(declare-fun m!1018561 () Bool)

(assert (=> b!1098639 m!1018561))

(assert (=> b!1098639 m!1018557))

(declare-fun m!1018563 () Bool)

(assert (=> b!1098639 m!1018563))

(declare-fun m!1018565 () Bool)

(assert (=> b!1098639 m!1018565))

(declare-fun m!1018567 () Bool)

(assert (=> b!1098639 m!1018567))

(assert (=> b!1098639 m!1018305))

(assert (=> b!1098639 m!1018555))

(declare-fun m!1018569 () Bool)

(assert (=> b!1098639 m!1018569))

(assert (=> b!1098639 m!1018567))

(declare-fun m!1018571 () Bool)

(assert (=> b!1098639 m!1018571))

(declare-fun m!1018573 () Bool)

(assert (=> b!1098639 m!1018573))

(declare-fun m!1018575 () Bool)

(assert (=> b!1098639 m!1018575))

(declare-fun m!1018577 () Bool)

(assert (=> b!1098639 m!1018577))

(declare-fun m!1018579 () Bool)

(assert (=> b!1098639 m!1018579))

(assert (=> b!1098639 m!1018559))

(declare-fun m!1018581 () Bool)

(assert (=> b!1098639 m!1018581))

(assert (=> b!1098639 m!1018459))

(declare-fun m!1018583 () Bool)

(assert (=> b!1098637 m!1018583))

(assert (=> b!1098632 m!1018459))

(assert (=> b!1098632 m!1018459))

(declare-fun m!1018585 () Bool)

(assert (=> b!1098632 m!1018585))

(declare-fun m!1018587 () Bool)

(assert (=> bm!45939 m!1018587))

(declare-fun m!1018589 () Bool)

(assert (=> bm!45940 m!1018589))

(declare-fun m!1018591 () Bool)

(assert (=> bm!45941 m!1018591))

(declare-fun m!1018593 () Bool)

(assert (=> b!1098643 m!1018593))

(assert (=> bm!45938 m!1018305))

(assert (=> b!1098447 d!130411))

(declare-fun b!1098668 () Bool)

(declare-fun e!627118 () ListLongMap!15357)

(declare-fun call!45947 () ListLongMap!15357)

(assert (=> b!1098668 (= e!627118 call!45947)))

(declare-fun d!130413 () Bool)

(declare-fun e!627119 () Bool)

(assert (=> d!130413 e!627119))

(declare-fun res!733282 () Bool)

(assert (=> d!130413 (=> (not res!733282) (not e!627119))))

(declare-fun lt!491591 () ListLongMap!15357)

(assert (=> d!130413 (= res!733282 (not (contains!6399 lt!491591 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun e!627122 () ListLongMap!15357)

(assert (=> d!130413 (= lt!491591 e!627122)))

(declare-fun c!108504 () Bool)

(assert (=> d!130413 (= c!108504 (bvsge #b00000000000000000000000000000000 (size!34776 lt!491392)))))

(assert (=> d!130413 (validMask!0 mask!1414)))

(assert (=> d!130413 (= (getCurrentListMapNoExtraKeys!4178 lt!491392 lt!491388 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882) lt!491591)))

(declare-fun b!1098669 () Bool)

(assert (=> b!1098669 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!34776 lt!491392)))))

(assert (=> b!1098669 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!34777 lt!491388)))))

(declare-fun e!627120 () Bool)

(assert (=> b!1098669 (= e!627120 (= (apply!981 lt!491591 (select (arr!34239 lt!491392) #b00000000000000000000000000000000)) (get!17633 (select (arr!34240 lt!491388) #b00000000000000000000000000000000) (dynLambda!2309 defaultEntry!882 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1098670 () Bool)

(declare-fun e!627123 () Bool)

(assert (=> b!1098670 (= e!627123 e!627120)))

(assert (=> b!1098670 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!34776 lt!491392)))))

(declare-fun res!733279 () Bool)

(assert (=> b!1098670 (= res!733279 (contains!6399 lt!491591 (select (arr!34239 lt!491392) #b00000000000000000000000000000000)))))

(assert (=> b!1098670 (=> (not res!733279) (not e!627120))))

(declare-fun b!1098671 () Bool)

(declare-fun res!733281 () Bool)

(assert (=> b!1098671 (=> (not res!733281) (not e!627119))))

(assert (=> b!1098671 (= res!733281 (not (contains!6399 lt!491591 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1098672 () Bool)

(assert (=> b!1098672 (= e!627122 e!627118)))

(declare-fun c!108503 () Bool)

(assert (=> b!1098672 (= c!108503 (validKeyInArray!0 (select (arr!34239 lt!491392) #b00000000000000000000000000000000)))))

(declare-fun b!1098673 () Bool)

(assert (=> b!1098673 (= e!627119 e!627123)))

(declare-fun c!108502 () Bool)

(declare-fun e!627124 () Bool)

(assert (=> b!1098673 (= c!108502 e!627124)))

(declare-fun res!733280 () Bool)

(assert (=> b!1098673 (=> (not res!733280) (not e!627124))))

(assert (=> b!1098673 (= res!733280 (bvslt #b00000000000000000000000000000000 (size!34776 lt!491392)))))

(declare-fun b!1098674 () Bool)

(assert (=> b!1098674 (= e!627122 (ListLongMap!15358 Nil!24050))))

(declare-fun b!1098675 () Bool)

(declare-fun e!627121 () Bool)

(assert (=> b!1098675 (= e!627123 e!627121)))

(declare-fun c!108505 () Bool)

(assert (=> b!1098675 (= c!108505 (bvslt #b00000000000000000000000000000000 (size!34776 lt!491392)))))

(declare-fun b!1098676 () Bool)

(assert (=> b!1098676 (= e!627124 (validKeyInArray!0 (select (arr!34239 lt!491392) #b00000000000000000000000000000000)))))

(assert (=> b!1098676 (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000)))

(declare-fun b!1098677 () Bool)

(assert (=> b!1098677 (= e!627121 (= lt!491591 (getCurrentListMapNoExtraKeys!4178 lt!491392 lt!491388 mask!1414 extraKeys!811 zeroValue!831 minValue!831 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) defaultEntry!882)))))

(declare-fun bm!45944 () Bool)

(assert (=> bm!45944 (= call!45947 (getCurrentListMapNoExtraKeys!4178 lt!491392 lt!491388 mask!1414 extraKeys!811 zeroValue!831 minValue!831 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) defaultEntry!882))))

(declare-fun b!1098678 () Bool)

(declare-fun lt!491592 () Unit!36063)

(declare-fun lt!491595 () Unit!36063)

(assert (=> b!1098678 (= lt!491592 lt!491595)))

(declare-fun lt!491590 () (_ BitVec 64))

(declare-fun lt!491589 () ListLongMap!15357)

(declare-fun lt!491593 () (_ BitVec 64))

(declare-fun lt!491594 () V!41315)

(assert (=> b!1098678 (not (contains!6399 (+!3329 lt!491589 (tuple2!17377 lt!491593 lt!491594)) lt!491590))))

(declare-fun addStillNotContains!276 (ListLongMap!15357 (_ BitVec 64) V!41315 (_ BitVec 64)) Unit!36063)

(assert (=> b!1098678 (= lt!491595 (addStillNotContains!276 lt!491589 lt!491593 lt!491594 lt!491590))))

(assert (=> b!1098678 (= lt!491590 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!1098678 (= lt!491594 (get!17633 (select (arr!34240 lt!491388) #b00000000000000000000000000000000) (dynLambda!2309 defaultEntry!882 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!1098678 (= lt!491593 (select (arr!34239 lt!491392) #b00000000000000000000000000000000))))

(assert (=> b!1098678 (= lt!491589 call!45947)))

(assert (=> b!1098678 (= e!627118 (+!3329 call!45947 (tuple2!17377 (select (arr!34239 lt!491392) #b00000000000000000000000000000000) (get!17633 (select (arr!34240 lt!491388) #b00000000000000000000000000000000) (dynLambda!2309 defaultEntry!882 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!1098679 () Bool)

(declare-fun isEmpty!967 (ListLongMap!15357) Bool)

(assert (=> b!1098679 (= e!627121 (isEmpty!967 lt!491591))))

(assert (= (and d!130413 c!108504) b!1098674))

(assert (= (and d!130413 (not c!108504)) b!1098672))

(assert (= (and b!1098672 c!108503) b!1098678))

(assert (= (and b!1098672 (not c!108503)) b!1098668))

(assert (= (or b!1098678 b!1098668) bm!45944))

(assert (= (and d!130413 res!733282) b!1098671))

(assert (= (and b!1098671 res!733281) b!1098673))

(assert (= (and b!1098673 res!733280) b!1098676))

(assert (= (and b!1098673 c!108502) b!1098670))

(assert (= (and b!1098673 (not c!108502)) b!1098675))

(assert (= (and b!1098670 res!733279) b!1098669))

(assert (= (and b!1098675 c!108505) b!1098677))

(assert (= (and b!1098675 (not c!108505)) b!1098679))

(declare-fun b_lambda!17881 () Bool)

(assert (=> (not b_lambda!17881) (not b!1098669)))

(assert (=> b!1098669 t!34196))

(declare-fun b_and!36919 () Bool)

(assert (= b_and!36917 (and (=> t!34196 result!16451) b_and!36919)))

(declare-fun b_lambda!17883 () Bool)

(assert (=> (not b_lambda!17883) (not b!1098678)))

(assert (=> b!1098678 t!34196))

(declare-fun b_and!36921 () Bool)

(assert (= b_and!36919 (and (=> t!34196 result!16451) b_and!36921)))

(assert (=> b!1098669 m!1018459))

(declare-fun m!1018595 () Bool)

(assert (=> b!1098669 m!1018595))

(assert (=> b!1098669 m!1018291))

(assert (=> b!1098669 m!1018549))

(assert (=> b!1098669 m!1018291))

(assert (=> b!1098669 m!1018551))

(assert (=> b!1098669 m!1018459))

(assert (=> b!1098669 m!1018549))

(assert (=> b!1098672 m!1018459))

(assert (=> b!1098672 m!1018459))

(assert (=> b!1098672 m!1018463))

(declare-fun m!1018597 () Bool)

(assert (=> b!1098671 m!1018597))

(assert (=> b!1098678 m!1018291))

(declare-fun m!1018599 () Bool)

(assert (=> b!1098678 m!1018599))

(assert (=> b!1098678 m!1018549))

(assert (=> b!1098678 m!1018291))

(assert (=> b!1098678 m!1018551))

(assert (=> b!1098678 m!1018599))

(declare-fun m!1018601 () Bool)

(assert (=> b!1098678 m!1018601))

(declare-fun m!1018603 () Bool)

(assert (=> b!1098678 m!1018603))

(declare-fun m!1018605 () Bool)

(assert (=> b!1098678 m!1018605))

(assert (=> b!1098678 m!1018459))

(assert (=> b!1098678 m!1018549))

(assert (=> b!1098670 m!1018459))

(assert (=> b!1098670 m!1018459))

(declare-fun m!1018607 () Bool)

(assert (=> b!1098670 m!1018607))

(declare-fun m!1018609 () Bool)

(assert (=> d!130413 m!1018609))

(assert (=> d!130413 m!1018259))

(assert (=> b!1098676 m!1018459))

(assert (=> b!1098676 m!1018459))

(assert (=> b!1098676 m!1018463))

(declare-fun m!1018611 () Bool)

(assert (=> b!1098679 m!1018611))

(declare-fun m!1018613 () Bool)

(assert (=> bm!45944 m!1018613))

(assert (=> b!1098677 m!1018613))

(assert (=> b!1098447 d!130413))

(declare-fun b!1098680 () Bool)

(declare-fun e!627125 () ListLongMap!15357)

(declare-fun call!45948 () ListLongMap!15357)

(assert (=> b!1098680 (= e!627125 call!45948)))

(declare-fun d!130415 () Bool)

(declare-fun e!627126 () Bool)

(assert (=> d!130415 e!627126))

(declare-fun res!733286 () Bool)

(assert (=> d!130415 (=> (not res!733286) (not e!627126))))

(declare-fun lt!491598 () ListLongMap!15357)

(assert (=> d!130415 (= res!733286 (not (contains!6399 lt!491598 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun e!627129 () ListLongMap!15357)

(assert (=> d!130415 (= lt!491598 e!627129)))

(declare-fun c!108508 () Bool)

(assert (=> d!130415 (= c!108508 (bvsge #b00000000000000000000000000000000 (size!34776 _keys!1070)))))

(assert (=> d!130415 (validMask!0 mask!1414)))

(assert (=> d!130415 (= (getCurrentListMapNoExtraKeys!4178 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882) lt!491598)))

(declare-fun b!1098681 () Bool)

(assert (=> b!1098681 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!34776 _keys!1070)))))

(assert (=> b!1098681 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!34777 _values!874)))))

(declare-fun e!627127 () Bool)

(assert (=> b!1098681 (= e!627127 (= (apply!981 lt!491598 (select (arr!34239 _keys!1070) #b00000000000000000000000000000000)) (get!17633 (select (arr!34240 _values!874) #b00000000000000000000000000000000) (dynLambda!2309 defaultEntry!882 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1098682 () Bool)

(declare-fun e!627130 () Bool)

(assert (=> b!1098682 (= e!627130 e!627127)))

(assert (=> b!1098682 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!34776 _keys!1070)))))

(declare-fun res!733283 () Bool)

(assert (=> b!1098682 (= res!733283 (contains!6399 lt!491598 (select (arr!34239 _keys!1070) #b00000000000000000000000000000000)))))

(assert (=> b!1098682 (=> (not res!733283) (not e!627127))))

(declare-fun b!1098683 () Bool)

(declare-fun res!733285 () Bool)

(assert (=> b!1098683 (=> (not res!733285) (not e!627126))))

(assert (=> b!1098683 (= res!733285 (not (contains!6399 lt!491598 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1098684 () Bool)

(assert (=> b!1098684 (= e!627129 e!627125)))

(declare-fun c!108507 () Bool)

(assert (=> b!1098684 (= c!108507 (validKeyInArray!0 (select (arr!34239 _keys!1070) #b00000000000000000000000000000000)))))

(declare-fun b!1098685 () Bool)

(assert (=> b!1098685 (= e!627126 e!627130)))

(declare-fun c!108506 () Bool)

(declare-fun e!627131 () Bool)

(assert (=> b!1098685 (= c!108506 e!627131)))

(declare-fun res!733284 () Bool)

(assert (=> b!1098685 (=> (not res!733284) (not e!627131))))

(assert (=> b!1098685 (= res!733284 (bvslt #b00000000000000000000000000000000 (size!34776 _keys!1070)))))

(declare-fun b!1098686 () Bool)

(assert (=> b!1098686 (= e!627129 (ListLongMap!15358 Nil!24050))))

(declare-fun b!1098687 () Bool)

(declare-fun e!627128 () Bool)

(assert (=> b!1098687 (= e!627130 e!627128)))

(declare-fun c!108509 () Bool)

(assert (=> b!1098687 (= c!108509 (bvslt #b00000000000000000000000000000000 (size!34776 _keys!1070)))))

(declare-fun b!1098688 () Bool)

(assert (=> b!1098688 (= e!627131 (validKeyInArray!0 (select (arr!34239 _keys!1070) #b00000000000000000000000000000000)))))

(assert (=> b!1098688 (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000)))

(declare-fun b!1098689 () Bool)

(assert (=> b!1098689 (= e!627128 (= lt!491598 (getCurrentListMapNoExtraKeys!4178 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) defaultEntry!882)))))

(declare-fun bm!45945 () Bool)

(assert (=> bm!45945 (= call!45948 (getCurrentListMapNoExtraKeys!4178 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) defaultEntry!882))))

(declare-fun b!1098690 () Bool)

(declare-fun lt!491599 () Unit!36063)

(declare-fun lt!491602 () Unit!36063)

(assert (=> b!1098690 (= lt!491599 lt!491602)))

(declare-fun lt!491601 () V!41315)

(declare-fun lt!491597 () (_ BitVec 64))

(declare-fun lt!491596 () ListLongMap!15357)

(declare-fun lt!491600 () (_ BitVec 64))

(assert (=> b!1098690 (not (contains!6399 (+!3329 lt!491596 (tuple2!17377 lt!491600 lt!491601)) lt!491597))))

(assert (=> b!1098690 (= lt!491602 (addStillNotContains!276 lt!491596 lt!491600 lt!491601 lt!491597))))

(assert (=> b!1098690 (= lt!491597 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!1098690 (= lt!491601 (get!17633 (select (arr!34240 _values!874) #b00000000000000000000000000000000) (dynLambda!2309 defaultEntry!882 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!1098690 (= lt!491600 (select (arr!34239 _keys!1070) #b00000000000000000000000000000000))))

(assert (=> b!1098690 (= lt!491596 call!45948)))

(assert (=> b!1098690 (= e!627125 (+!3329 call!45948 (tuple2!17377 (select (arr!34239 _keys!1070) #b00000000000000000000000000000000) (get!17633 (select (arr!34240 _values!874) #b00000000000000000000000000000000) (dynLambda!2309 defaultEntry!882 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!1098691 () Bool)

(assert (=> b!1098691 (= e!627128 (isEmpty!967 lt!491598))))

(assert (= (and d!130415 c!108508) b!1098686))

(assert (= (and d!130415 (not c!108508)) b!1098684))

(assert (= (and b!1098684 c!108507) b!1098690))

(assert (= (and b!1098684 (not c!108507)) b!1098680))

(assert (= (or b!1098690 b!1098680) bm!45945))

(assert (= (and d!130415 res!733286) b!1098683))

(assert (= (and b!1098683 res!733285) b!1098685))

(assert (= (and b!1098685 res!733284) b!1098688))

(assert (= (and b!1098685 c!108506) b!1098682))

(assert (= (and b!1098685 (not c!108506)) b!1098687))

(assert (= (and b!1098682 res!733283) b!1098681))

(assert (= (and b!1098687 c!108509) b!1098689))

(assert (= (and b!1098687 (not c!108509)) b!1098691))

(declare-fun b_lambda!17885 () Bool)

(assert (=> (not b_lambda!17885) (not b!1098681)))

(assert (=> b!1098681 t!34196))

(declare-fun b_and!36923 () Bool)

(assert (= b_and!36921 (and (=> t!34196 result!16451) b_and!36923)))

(declare-fun b_lambda!17887 () Bool)

(assert (=> (not b_lambda!17887) (not b!1098690)))

(assert (=> b!1098690 t!34196))

(declare-fun b_and!36925 () Bool)

(assert (= b_and!36923 (and (=> t!34196 result!16451) b_and!36925)))

(assert (=> b!1098681 m!1018475))

(declare-fun m!1018615 () Bool)

(assert (=> b!1098681 m!1018615))

(assert (=> b!1098681 m!1018291))

(assert (=> b!1098681 m!1018489))

(assert (=> b!1098681 m!1018291))

(assert (=> b!1098681 m!1018491))

(assert (=> b!1098681 m!1018475))

(assert (=> b!1098681 m!1018489))

(assert (=> b!1098684 m!1018475))

(assert (=> b!1098684 m!1018475))

(assert (=> b!1098684 m!1018479))

(declare-fun m!1018617 () Bool)

(assert (=> b!1098683 m!1018617))

(assert (=> b!1098690 m!1018291))

(declare-fun m!1018619 () Bool)

(assert (=> b!1098690 m!1018619))

(assert (=> b!1098690 m!1018489))

(assert (=> b!1098690 m!1018291))

(assert (=> b!1098690 m!1018491))

(assert (=> b!1098690 m!1018619))

(declare-fun m!1018621 () Bool)

(assert (=> b!1098690 m!1018621))

(declare-fun m!1018623 () Bool)

(assert (=> b!1098690 m!1018623))

(declare-fun m!1018625 () Bool)

(assert (=> b!1098690 m!1018625))

(assert (=> b!1098690 m!1018475))

(assert (=> b!1098690 m!1018489))

(assert (=> b!1098682 m!1018475))

(assert (=> b!1098682 m!1018475))

(declare-fun m!1018627 () Bool)

(assert (=> b!1098682 m!1018627))

(declare-fun m!1018629 () Bool)

(assert (=> d!130415 m!1018629))

(assert (=> d!130415 m!1018259))

(assert (=> b!1098688 m!1018475))

(assert (=> b!1098688 m!1018475))

(assert (=> b!1098688 m!1018479))

(declare-fun m!1018631 () Bool)

(assert (=> b!1098691 m!1018631))

(declare-fun m!1018633 () Bool)

(assert (=> bm!45945 m!1018633))

(assert (=> b!1098689 m!1018633))

(assert (=> b!1098447 d!130415))

(declare-fun d!130417 () Bool)

(assert (=> d!130417 (arrayContainsKey!0 _keys!1070 k0!904 #b00000000000000000000000000000000)))

(declare-fun lt!491605 () Unit!36063)

(declare-fun choose!13 (array!71148 (_ BitVec 64) (_ BitVec 32)) Unit!36063)

(assert (=> d!130417 (= lt!491605 (choose!13 _keys!1070 k0!904 i!650))))

(assert (=> d!130417 (bvsge i!650 #b00000000000000000000000000000000)))

(assert (=> d!130417 (= (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1070 k0!904 i!650) lt!491605)))

(declare-fun bs!32271 () Bool)

(assert (= bs!32271 d!130417))

(assert (=> bs!32271 m!1018297))

(declare-fun m!1018635 () Bool)

(assert (=> bs!32271 m!1018635))

(assert (=> b!1098447 d!130417))

(declare-fun d!130419 () Bool)

(declare-fun res!733287 () Bool)

(declare-fun e!627134 () Bool)

(assert (=> d!130419 (=> res!733287 e!627134)))

(assert (=> d!130419 (= res!733287 (bvsge #b00000000000000000000000000000000 (size!34776 _keys!1070)))))

(assert (=> d!130419 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1070 mask!1414) e!627134)))

(declare-fun bm!45946 () Bool)

(declare-fun call!45949 () Bool)

(assert (=> bm!45946 (= call!45949 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) _keys!1070 mask!1414))))

(declare-fun b!1098692 () Bool)

(declare-fun e!627133 () Bool)

(assert (=> b!1098692 (= e!627134 e!627133)))

(declare-fun c!108510 () Bool)

(assert (=> b!1098692 (= c!108510 (validKeyInArray!0 (select (arr!34239 _keys!1070) #b00000000000000000000000000000000)))))

(declare-fun b!1098693 () Bool)

(declare-fun e!627132 () Bool)

(assert (=> b!1098693 (= e!627132 call!45949)))

(declare-fun b!1098694 () Bool)

(assert (=> b!1098694 (= e!627133 call!45949)))

(declare-fun b!1098695 () Bool)

(assert (=> b!1098695 (= e!627133 e!627132)))

(declare-fun lt!491608 () (_ BitVec 64))

(assert (=> b!1098695 (= lt!491608 (select (arr!34239 _keys!1070) #b00000000000000000000000000000000))))

(declare-fun lt!491607 () Unit!36063)

(assert (=> b!1098695 (= lt!491607 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1070 lt!491608 #b00000000000000000000000000000000))))

(assert (=> b!1098695 (arrayContainsKey!0 _keys!1070 lt!491608 #b00000000000000000000000000000000)))

(declare-fun lt!491606 () Unit!36063)

(assert (=> b!1098695 (= lt!491606 lt!491607)))

(declare-fun res!733288 () Bool)

(assert (=> b!1098695 (= res!733288 (= (seekEntryOrOpen!0 (select (arr!34239 _keys!1070) #b00000000000000000000000000000000) _keys!1070 mask!1414) (Found!9906 #b00000000000000000000000000000000)))))

(assert (=> b!1098695 (=> (not res!733288) (not e!627132))))

(assert (= (and d!130419 (not res!733287)) b!1098692))

(assert (= (and b!1098692 c!108510) b!1098695))

(assert (= (and b!1098692 (not c!108510)) b!1098694))

(assert (= (and b!1098695 res!733288) b!1098693))

(assert (= (or b!1098693 b!1098694) bm!45946))

(declare-fun m!1018637 () Bool)

(assert (=> bm!45946 m!1018637))

(assert (=> b!1098692 m!1018475))

(assert (=> b!1098692 m!1018475))

(assert (=> b!1098692 m!1018479))

(assert (=> b!1098695 m!1018475))

(declare-fun m!1018639 () Bool)

(assert (=> b!1098695 m!1018639))

(declare-fun m!1018641 () Bool)

(assert (=> b!1098695 m!1018641))

(assert (=> b!1098695 m!1018475))

(declare-fun m!1018643 () Bool)

(assert (=> b!1098695 m!1018643))

(assert (=> b!1098442 d!130419))

(declare-fun condMapEmpty!42487 () Bool)

(declare-fun mapDefault!42487 () ValueCell!12861)

(assert (=> mapNonEmpty!42481 (= condMapEmpty!42487 (= mapRest!42481 ((as const (Array (_ BitVec 32) ValueCell!12861)) mapDefault!42487)))))

(declare-fun e!627139 () Bool)

(declare-fun mapRes!42487 () Bool)

(assert (=> mapNonEmpty!42481 (= tp!81210 (and e!627139 mapRes!42487))))

(declare-fun mapNonEmpty!42487 () Bool)

(declare-fun tp!81219 () Bool)

(declare-fun e!627140 () Bool)

(assert (=> mapNonEmpty!42487 (= mapRes!42487 (and tp!81219 e!627140))))

(declare-fun mapKey!42487 () (_ BitVec 32))

(declare-fun mapValue!42487 () ValueCell!12861)

(declare-fun mapRest!42487 () (Array (_ BitVec 32) ValueCell!12861))

(assert (=> mapNonEmpty!42487 (= mapRest!42481 (store mapRest!42487 mapKey!42487 mapValue!42487))))

(declare-fun b!1098702 () Bool)

(assert (=> b!1098702 (= e!627140 tp_is_empty!27141)))

(declare-fun mapIsEmpty!42487 () Bool)

(assert (=> mapIsEmpty!42487 mapRes!42487))

(declare-fun b!1098703 () Bool)

(assert (=> b!1098703 (= e!627139 tp_is_empty!27141)))

(assert (= (and mapNonEmpty!42481 condMapEmpty!42487) mapIsEmpty!42487))

(assert (= (and mapNonEmpty!42481 (not condMapEmpty!42487)) mapNonEmpty!42487))

(assert (= (and mapNonEmpty!42487 ((_ is ValueCellFull!12861) mapValue!42487)) b!1098702))

(assert (= (and mapNonEmpty!42481 ((_ is ValueCellFull!12861) mapDefault!42487)) b!1098703))

(declare-fun m!1018645 () Bool)

(assert (=> mapNonEmpty!42487 m!1018645))

(declare-fun b_lambda!17889 () Bool)

(assert (= b_lambda!17887 (or (and start!96626 b_free!23091) b_lambda!17889)))

(declare-fun b_lambda!17891 () Bool)

(assert (= b_lambda!17885 (or (and start!96626 b_free!23091) b_lambda!17891)))

(declare-fun b_lambda!17893 () Bool)

(assert (= b_lambda!17877 (or (and start!96626 b_free!23091) b_lambda!17893)))

(declare-fun b_lambda!17895 () Bool)

(assert (= b_lambda!17875 (or (and start!96626 b_free!23091) b_lambda!17895)))

(declare-fun b_lambda!17897 () Bool)

(assert (= b_lambda!17879 (or (and start!96626 b_free!23091) b_lambda!17897)))

(declare-fun b_lambda!17899 () Bool)

(assert (= b_lambda!17881 (or (and start!96626 b_free!23091) b_lambda!17899)))

(declare-fun b_lambda!17901 () Bool)

(assert (= b_lambda!17883 (or (and start!96626 b_free!23091) b_lambda!17901)))

(check-sat (not d!130387) (not b!1098508) (not bm!45906) (not bm!45938) (not b!1098540) (not b!1098523) (not bm!45928) (not b!1098621) (not d!130405) (not b!1098679) (not bm!45926) (not b_lambda!17899) (not d!130391) (not b_next!23091) (not b!1098503) (not b!1098639) (not bm!45944) (not b!1098539) (not b!1098691) (not b!1098550) (not b!1098502) (not b!1098599) (not d!130415) (not b!1098524) (not b!1098643) (not b!1098670) (not b!1098671) (not b_lambda!17889) (not bm!45946) (not b!1098609) (not b!1098613) (not b!1098695) (not b!1098505) (not b!1098601) (not b!1098681) (not b!1098629) (not b!1098510) (not bm!45927) (not b!1098631) (not b!1098637) (not mapNonEmpty!42487) (not d!130385) (not b!1098677) (not d!130407) (not d!130413) (not b!1098542) (not d!130395) (not b!1098536) (not bm!45939) (not b!1098690) (not b!1098689) (not d!130409) (not b!1098692) (not b!1098506) (not b!1098638) (not b_lambda!17901) (not b!1098630) (not b_lambda!17873) (not d!130389) b_and!36925 (not b!1098669) (not b!1098511) (not b!1098504) (not b!1098678) (not b!1098600) (not bm!45925) (not d!130381) (not d!130383) (not b!1098507) (not b!1098608) (not b!1098512) (not bm!45933) tp_is_empty!27141 (not b!1098525) (not b!1098632) (not bm!45934) (not bm!45903) (not b!1098684) (not bm!45945) (not b!1098509) (not b!1098501) (not d!130393) (not b_lambda!17893) (not b!1098683) (not b!1098541) (not b!1098676) (not b_lambda!17895) (not b!1098682) (not b_lambda!17891) (not bm!45941) (not b!1098607) (not d!130417) (not b!1098688) (not b_lambda!17897) (not bm!45907) (not b!1098672) (not bm!45940) (not b!1098602) (not d!130411))
(check-sat b_and!36925 (not b_next!23091))
