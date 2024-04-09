; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!96906 () Bool)

(assert start!96906)

(declare-fun b_free!23187 () Bool)

(declare-fun b_next!23187 () Bool)

(assert (=> start!96906 (= b_free!23187 (not b_next!23187))))

(declare-fun tp!81519 () Bool)

(declare-fun b_and!37195 () Bool)

(assert (=> start!96906 (= tp!81519 b_and!37195)))

(declare-fun mapNonEmpty!42646 () Bool)

(declare-fun mapRes!42646 () Bool)

(declare-fun tp!81518 () Bool)

(declare-fun e!629009 () Bool)

(assert (=> mapNonEmpty!42646 (= mapRes!42646 (and tp!81518 e!629009))))

(declare-datatypes ((V!41443 0))(
  ( (V!41444 (val!13675 Int)) )
))
(declare-datatypes ((ValueCell!12909 0))(
  ( (ValueCellFull!12909 (v!16307 V!41443)) (EmptyCell!12909) )
))
(declare-datatypes ((array!71348 0))(
  ( (array!71349 (arr!34332 (Array (_ BitVec 32) ValueCell!12909)) (size!34869 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!71348)

(declare-fun mapKey!42646 () (_ BitVec 32))

(declare-fun mapValue!42646 () ValueCell!12909)

(declare-fun mapRest!42646 () (Array (_ BitVec 32) ValueCell!12909))

(assert (=> mapNonEmpty!42646 (= (arr!34332 _values!874) (store mapRest!42646 mapKey!42646 mapValue!42646))))

(declare-fun b!1101934 () Bool)

(declare-fun tp_is_empty!27237 () Bool)

(assert (=> b!1101934 (= e!629009 tp_is_empty!27237)))

(declare-fun b!1101935 () Bool)

(declare-fun res!735351 () Bool)

(declare-fun e!629012 () Bool)

(assert (=> b!1101935 (=> (not res!735351) (not e!629012))))

(declare-datatypes ((array!71350 0))(
  ( (array!71351 (arr!34333 (Array (_ BitVec 32) (_ BitVec 64))) (size!34870 (_ BitVec 32))) )
))
(declare-fun _keys!1070 () array!71350)

(declare-fun mask!1414 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!71350 (_ BitVec 32)) Bool)

(assert (=> b!1101935 (= res!735351 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1070 mask!1414))))

(declare-fun b!1101936 () Bool)

(declare-fun res!735349 () Bool)

(assert (=> b!1101936 (=> (not res!735349) (not e!629012))))

(declare-fun i!650 () (_ BitVec 32))

(assert (=> b!1101936 (= res!735349 (and (bvsge i!650 #b00000000000000000000000000000000) (bvslt i!650 (size!34870 _keys!1070))))))

(declare-fun b!1101937 () Bool)

(declare-fun e!629007 () Bool)

(assert (=> b!1101937 (= e!629007 (bvslt i!650 (size!34869 _values!874)))))

(declare-datatypes ((tuple2!17460 0))(
  ( (tuple2!17461 (_1!8740 (_ BitVec 64)) (_2!8740 V!41443)) )
))
(declare-datatypes ((List!24131 0))(
  ( (Nil!24128) (Cons!24127 (h!25336 tuple2!17460) (t!34371 List!24131)) )
))
(declare-datatypes ((ListLongMap!15441 0))(
  ( (ListLongMap!15442 (toList!7736 List!24131)) )
))
(declare-fun lt!494231 () ListLongMap!15441)

(declare-fun k0!904 () (_ BitVec 64))

(declare-fun lt!494234 () ListLongMap!15441)

(declare-fun -!973 (ListLongMap!15441 (_ BitVec 64)) ListLongMap!15441)

(assert (=> b!1101937 (= (-!973 lt!494231 k0!904) lt!494234)))

(declare-fun minValue!831 () V!41443)

(declare-datatypes ((Unit!36145 0))(
  ( (Unit!36146) )
))
(declare-fun lt!494236 () Unit!36145)

(declare-fun lt!494237 () ListLongMap!15441)

(declare-fun addRemoveCommutativeForDiffKeys!140 (ListLongMap!15441 (_ BitVec 64) V!41443 (_ BitVec 64)) Unit!36145)

(assert (=> b!1101937 (= lt!494236 (addRemoveCommutativeForDiffKeys!140 lt!494237 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!831 k0!904))))

(declare-fun b!1101938 () Bool)

(declare-fun e!629011 () Bool)

(declare-fun e!629006 () Bool)

(assert (=> b!1101938 (= e!629011 (not e!629006))))

(declare-fun res!735356 () Bool)

(assert (=> b!1101938 (=> res!735356 e!629006)))

(declare-fun extraKeys!811 () (_ BitVec 32))

(assert (=> b!1101938 (= res!735356 (or (not (= (bvand extraKeys!811 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeys!811 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun defaultEntry!882 () Int)

(declare-fun zeroValue!831 () V!41443)

(declare-fun lt!494235 () ListLongMap!15441)

(declare-fun getCurrentListMap!4420 (array!71350 array!71348 (_ BitVec 32) (_ BitVec 32) V!41443 V!41443 (_ BitVec 32) Int) ListLongMap!15441)

(assert (=> b!1101938 (= lt!494235 (getCurrentListMap!4420 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun lt!494228 () array!71348)

(declare-fun lt!494225 () ListLongMap!15441)

(declare-fun lt!494226 () array!71350)

(assert (=> b!1101938 (= lt!494225 (getCurrentListMap!4420 lt!494226 lt!494228 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun lt!494230 () ListLongMap!15441)

(declare-fun lt!494232 () ListLongMap!15441)

(assert (=> b!1101938 (and (= lt!494230 lt!494232) (= lt!494232 lt!494230))))

(assert (=> b!1101938 (= lt!494232 (-!973 lt!494237 k0!904))))

(declare-fun lt!494227 () Unit!36145)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!232 (array!71350 array!71348 (_ BitVec 32) (_ BitVec 32) V!41443 V!41443 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!36145)

(assert (=> b!1101938 (= lt!494227 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!232 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 i!650 k0!904 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun getCurrentListMapNoExtraKeys!4207 (array!71350 array!71348 (_ BitVec 32) (_ BitVec 32) V!41443 V!41443 (_ BitVec 32) Int) ListLongMap!15441)

(assert (=> b!1101938 (= lt!494230 (getCurrentListMapNoExtraKeys!4207 lt!494226 lt!494228 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun dynLambda!2338 (Int (_ BitVec 64)) V!41443)

(assert (=> b!1101938 (= lt!494228 (array!71349 (store (arr!34332 _values!874) i!650 (ValueCellFull!12909 (dynLambda!2338 defaultEntry!882 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!34869 _values!874)))))

(assert (=> b!1101938 (= lt!494237 (getCurrentListMapNoExtraKeys!4207 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun arrayContainsKey!0 (array!71350 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1101938 (arrayContainsKey!0 _keys!1070 k0!904 #b00000000000000000000000000000000)))

(declare-fun lt!494233 () Unit!36145)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!71350 (_ BitVec 64) (_ BitVec 32)) Unit!36145)

(assert (=> b!1101938 (= lt!494233 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1070 k0!904 i!650))))

(declare-fun b!1101939 () Bool)

(declare-fun res!735353 () Bool)

(assert (=> b!1101939 (=> (not res!735353) (not e!629012))))

(assert (=> b!1101939 (= res!735353 (and (= (size!34869 _values!874) (bvadd #b00000000000000000000000000000001 mask!1414)) (= (size!34870 _keys!1070) (size!34869 _values!874)) (bvsge mask!1414 #b00000000000000000000000000000000) (bvsge extraKeys!811 #b00000000000000000000000000000000) (bvsle extraKeys!811 #b00000000000000000000000000000011)))))

(declare-fun res!735354 () Bool)

(assert (=> start!96906 (=> (not res!735354) (not e!629012))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!96906 (= res!735354 (validMask!0 mask!1414))))

(assert (=> start!96906 e!629012))

(assert (=> start!96906 tp!81519))

(assert (=> start!96906 true))

(assert (=> start!96906 tp_is_empty!27237))

(declare-fun array_inv!26300 (array!71350) Bool)

(assert (=> start!96906 (array_inv!26300 _keys!1070)))

(declare-fun e!629013 () Bool)

(declare-fun array_inv!26301 (array!71348) Bool)

(assert (=> start!96906 (and (array_inv!26301 _values!874) e!629013)))

(declare-fun b!1101940 () Bool)

(declare-fun res!735348 () Bool)

(assert (=> b!1101940 (=> (not res!735348) (not e!629012))))

(declare-datatypes ((List!24132 0))(
  ( (Nil!24129) (Cons!24128 (h!25337 (_ BitVec 64)) (t!34372 List!24132)) )
))
(declare-fun arrayNoDuplicates!0 (array!71350 (_ BitVec 32) List!24132) Bool)

(assert (=> b!1101940 (= res!735348 (arrayNoDuplicates!0 _keys!1070 #b00000000000000000000000000000000 Nil!24129))))

(declare-fun b!1101941 () Bool)

(declare-fun res!735352 () Bool)

(assert (=> b!1101941 (=> (not res!735352) (not e!629011))))

(assert (=> b!1101941 (= res!735352 (arrayNoDuplicates!0 lt!494226 #b00000000000000000000000000000000 Nil!24129))))

(declare-fun b!1101942 () Bool)

(assert (=> b!1101942 (= e!629012 e!629011)))

(declare-fun res!735350 () Bool)

(assert (=> b!1101942 (=> (not res!735350) (not e!629011))))

(assert (=> b!1101942 (= res!735350 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!494226 mask!1414))))

(assert (=> b!1101942 (= lt!494226 (array!71351 (store (arr!34333 _keys!1070) i!650 #b1000000000000000000000000000000000000000000000000000000000000000) (size!34870 _keys!1070)))))

(declare-fun mapIsEmpty!42646 () Bool)

(assert (=> mapIsEmpty!42646 mapRes!42646))

(declare-fun b!1101943 () Bool)

(declare-fun e!629010 () Bool)

(assert (=> b!1101943 (= e!629010 tp_is_empty!27237)))

(declare-fun b!1101944 () Bool)

(declare-fun res!735355 () Bool)

(assert (=> b!1101944 (=> (not res!735355) (not e!629012))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1101944 (= res!735355 (validKeyInArray!0 k0!904))))

(declare-fun b!1101945 () Bool)

(assert (=> b!1101945 (= e!629006 e!629007)))

(declare-fun res!735347 () Bool)

(assert (=> b!1101945 (=> res!735347 e!629007)))

(assert (=> b!1101945 (= res!735347 (= #b1000000000000000000000000000000000000000000000000000000000000000 k0!904))))

(assert (=> b!1101945 (= lt!494235 lt!494231)))

(declare-fun lt!494229 () tuple2!17460)

(declare-fun +!3366 (ListLongMap!15441 tuple2!17460) ListLongMap!15441)

(assert (=> b!1101945 (= lt!494231 (+!3366 lt!494237 lt!494229))))

(assert (=> b!1101945 (= lt!494225 lt!494234)))

(assert (=> b!1101945 (= lt!494234 (+!3366 lt!494232 lt!494229))))

(assert (=> b!1101945 (= lt!494225 (+!3366 lt!494230 lt!494229))))

(assert (=> b!1101945 (= lt!494229 (tuple2!17461 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!831))))

(declare-fun b!1101946 () Bool)

(assert (=> b!1101946 (= e!629013 (and e!629010 mapRes!42646))))

(declare-fun condMapEmpty!42646 () Bool)

(declare-fun mapDefault!42646 () ValueCell!12909)

(assert (=> b!1101946 (= condMapEmpty!42646 (= (arr!34332 _values!874) ((as const (Array (_ BitVec 32) ValueCell!12909)) mapDefault!42646)))))

(declare-fun b!1101947 () Bool)

(declare-fun res!735357 () Bool)

(assert (=> b!1101947 (=> (not res!735357) (not e!629012))))

(assert (=> b!1101947 (= res!735357 (= (select (arr!34333 _keys!1070) i!650) k0!904))))

(assert (= (and start!96906 res!735354) b!1101939))

(assert (= (and b!1101939 res!735353) b!1101935))

(assert (= (and b!1101935 res!735351) b!1101940))

(assert (= (and b!1101940 res!735348) b!1101936))

(assert (= (and b!1101936 res!735349) b!1101944))

(assert (= (and b!1101944 res!735355) b!1101947))

(assert (= (and b!1101947 res!735357) b!1101942))

(assert (= (and b!1101942 res!735350) b!1101941))

(assert (= (and b!1101941 res!735352) b!1101938))

(assert (= (and b!1101938 (not res!735356)) b!1101945))

(assert (= (and b!1101945 (not res!735347)) b!1101937))

(assert (= (and b!1101946 condMapEmpty!42646) mapIsEmpty!42646))

(assert (= (and b!1101946 (not condMapEmpty!42646)) mapNonEmpty!42646))

(get-info :version)

(assert (= (and mapNonEmpty!42646 ((_ is ValueCellFull!12909) mapValue!42646)) b!1101934))

(assert (= (and b!1101946 ((_ is ValueCellFull!12909) mapDefault!42646)) b!1101943))

(assert (= start!96906 b!1101946))

(declare-fun b_lambda!18175 () Bool)

(assert (=> (not b_lambda!18175) (not b!1101938)))

(declare-fun t!34370 () Bool)

(declare-fun tb!8061 () Bool)

(assert (=> (and start!96906 (= defaultEntry!882 defaultEntry!882) t!34370) tb!8061))

(declare-fun result!16657 () Bool)

(assert (=> tb!8061 (= result!16657 tp_is_empty!27237)))

(assert (=> b!1101938 t!34370))

(declare-fun b_and!37197 () Bool)

(assert (= b_and!37195 (and (=> t!34370 result!16657) b_and!37197)))

(declare-fun m!1022311 () Bool)

(assert (=> b!1101941 m!1022311))

(declare-fun m!1022313 () Bool)

(assert (=> b!1101944 m!1022313))

(declare-fun m!1022315 () Bool)

(assert (=> b!1101935 m!1022315))

(declare-fun m!1022317 () Bool)

(assert (=> b!1101947 m!1022317))

(declare-fun m!1022319 () Bool)

(assert (=> b!1101940 m!1022319))

(declare-fun m!1022321 () Bool)

(assert (=> b!1101937 m!1022321))

(declare-fun m!1022323 () Bool)

(assert (=> b!1101937 m!1022323))

(declare-fun m!1022325 () Bool)

(assert (=> b!1101938 m!1022325))

(declare-fun m!1022327 () Bool)

(assert (=> b!1101938 m!1022327))

(declare-fun m!1022329 () Bool)

(assert (=> b!1101938 m!1022329))

(declare-fun m!1022331 () Bool)

(assert (=> b!1101938 m!1022331))

(declare-fun m!1022333 () Bool)

(assert (=> b!1101938 m!1022333))

(declare-fun m!1022335 () Bool)

(assert (=> b!1101938 m!1022335))

(declare-fun m!1022337 () Bool)

(assert (=> b!1101938 m!1022337))

(declare-fun m!1022339 () Bool)

(assert (=> b!1101938 m!1022339))

(declare-fun m!1022341 () Bool)

(assert (=> b!1101938 m!1022341))

(declare-fun m!1022343 () Bool)

(assert (=> b!1101938 m!1022343))

(declare-fun m!1022345 () Bool)

(assert (=> mapNonEmpty!42646 m!1022345))

(declare-fun m!1022347 () Bool)

(assert (=> b!1101942 m!1022347))

(declare-fun m!1022349 () Bool)

(assert (=> b!1101942 m!1022349))

(declare-fun m!1022351 () Bool)

(assert (=> b!1101945 m!1022351))

(declare-fun m!1022353 () Bool)

(assert (=> b!1101945 m!1022353))

(declare-fun m!1022355 () Bool)

(assert (=> b!1101945 m!1022355))

(declare-fun m!1022357 () Bool)

(assert (=> start!96906 m!1022357))

(declare-fun m!1022359 () Bool)

(assert (=> start!96906 m!1022359))

(declare-fun m!1022361 () Bool)

(assert (=> start!96906 m!1022361))

(check-sat (not b!1101935) tp_is_empty!27237 (not b!1101940) (not b!1101944) (not b!1101937) (not start!96906) (not b!1101945) (not mapNonEmpty!42646) (not b!1101941) (not b!1101938) (not b_next!23187) b_and!37197 (not b!1101942) (not b_lambda!18175))
(check-sat b_and!37197 (not b_next!23187))
