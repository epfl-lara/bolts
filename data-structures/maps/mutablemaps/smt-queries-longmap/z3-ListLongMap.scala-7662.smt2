; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!96330 () Bool)

(assert start!96330)

(declare-fun b_free!22947 () Bool)

(declare-fun b_next!22947 () Bool)

(assert (=> start!96330 (= b_free!22947 (not b_next!22947))))

(declare-fun tp!80691 () Bool)

(declare-fun b_and!36587 () Bool)

(assert (=> start!96330 (= tp!80691 b_and!36587)))

(declare-fun b!1094217 () Bool)

(declare-fun e!624750 () Bool)

(declare-fun tp_is_empty!26949 () Bool)

(assert (=> b!1094217 (= e!624750 tp_is_empty!26949)))

(declare-fun b!1094218 () Bool)

(declare-fun res!730308 () Bool)

(declare-fun e!624752 () Bool)

(assert (=> b!1094218 (=> (not res!730308) (not e!624752))))

(declare-fun k0!904 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1094218 (= res!730308 (validKeyInArray!0 k0!904))))

(declare-fun b!1094219 () Bool)

(declare-fun e!624751 () Bool)

(assert (=> b!1094219 (= e!624751 tp_is_empty!26949)))

(declare-fun b!1094220 () Bool)

(declare-fun res!730310 () Bool)

(assert (=> b!1094220 (=> (not res!730310) (not e!624752))))

(declare-datatypes ((array!70770 0))(
  ( (array!70771 (arr!34055 (Array (_ BitVec 32) (_ BitVec 64))) (size!34592 (_ BitVec 32))) )
))
(declare-fun _keys!1070 () array!70770)

(declare-fun mask!1414 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!70770 (_ BitVec 32)) Bool)

(assert (=> b!1094220 (= res!730310 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1070 mask!1414))))

(declare-fun b!1094221 () Bool)

(declare-fun res!730305 () Bool)

(assert (=> b!1094221 (=> (not res!730305) (not e!624752))))

(declare-datatypes ((List!23931 0))(
  ( (Nil!23928) (Cons!23927 (h!25136 (_ BitVec 64)) (t!33943 List!23931)) )
))
(declare-fun arrayNoDuplicates!0 (array!70770 (_ BitVec 32) List!23931) Bool)

(assert (=> b!1094221 (= res!730305 (arrayNoDuplicates!0 _keys!1070 #b00000000000000000000000000000000 Nil!23928))))

(declare-fun mapNonEmpty!42178 () Bool)

(declare-fun mapRes!42178 () Bool)

(declare-fun tp!80690 () Bool)

(assert (=> mapNonEmpty!42178 (= mapRes!42178 (and tp!80690 e!624751))))

(declare-datatypes ((V!41059 0))(
  ( (V!41060 (val!13531 Int)) )
))
(declare-datatypes ((ValueCell!12765 0))(
  ( (ValueCellFull!12765 (v!16153 V!41059)) (EmptyCell!12765) )
))
(declare-datatypes ((array!70772 0))(
  ( (array!70773 (arr!34056 (Array (_ BitVec 32) ValueCell!12765)) (size!34593 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!70772)

(declare-fun mapKey!42178 () (_ BitVec 32))

(declare-fun mapValue!42178 () ValueCell!12765)

(declare-fun mapRest!42178 () (Array (_ BitVec 32) ValueCell!12765))

(assert (=> mapNonEmpty!42178 (= (arr!34056 _values!874) (store mapRest!42178 mapKey!42178 mapValue!42178))))

(declare-fun b!1094222 () Bool)

(declare-fun e!624754 () Bool)

(assert (=> b!1094222 (= e!624752 e!624754)))

(declare-fun res!730307 () Bool)

(assert (=> b!1094222 (=> (not res!730307) (not e!624754))))

(declare-fun lt!489567 () array!70770)

(assert (=> b!1094222 (= res!730307 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!489567 mask!1414))))

(declare-fun i!650 () (_ BitVec 32))

(assert (=> b!1094222 (= lt!489567 (array!70771 (store (arr!34055 _keys!1070) i!650 #b1000000000000000000000000000000000000000000000000000000000000000) (size!34592 _keys!1070)))))

(declare-fun mapIsEmpty!42178 () Bool)

(assert (=> mapIsEmpty!42178 mapRes!42178))

(declare-fun b!1094223 () Bool)

(declare-fun res!730306 () Bool)

(assert (=> b!1094223 (=> (not res!730306) (not e!624752))))

(assert (=> b!1094223 (= res!730306 (and (bvsge i!650 #b00000000000000000000000000000000) (bvslt i!650 (size!34592 _keys!1070))))))

(declare-fun b!1094224 () Bool)

(declare-fun res!730309 () Bool)

(assert (=> b!1094224 (=> (not res!730309) (not e!624752))))

(assert (=> b!1094224 (= res!730309 (= (select (arr!34055 _keys!1070) i!650) k0!904))))

(declare-fun b!1094225 () Bool)

(declare-fun e!624749 () Bool)

(assert (=> b!1094225 (= e!624749 (and e!624750 mapRes!42178))))

(declare-fun condMapEmpty!42178 () Bool)

(declare-fun mapDefault!42178 () ValueCell!12765)

(assert (=> b!1094225 (= condMapEmpty!42178 (= (arr!34056 _values!874) ((as const (Array (_ BitVec 32) ValueCell!12765)) mapDefault!42178)))))

(declare-datatypes ((tuple2!17280 0))(
  ( (tuple2!17281 (_1!8650 (_ BitVec 64)) (_2!8650 V!41059)) )
))
(declare-datatypes ((List!23932 0))(
  ( (Nil!23929) (Cons!23928 (h!25137 tuple2!17280) (t!33944 List!23932)) )
))
(declare-datatypes ((ListLongMap!15261 0))(
  ( (ListLongMap!15262 (toList!7646 List!23932)) )
))
(declare-fun lt!489574 () ListLongMap!15261)

(declare-fun extraKeys!811 () (_ BitVec 32))

(declare-fun lt!489571 () Bool)

(declare-fun b!1094226 () Bool)

(declare-fun lt!489575 () ListLongMap!15261)

(assert (=> b!1094226 (= e!624754 (not (or (and (not lt!489571) (not (= (bvand extraKeys!811 #b00000000000000000000000000000010) #b00000000000000000000000000000000))) (and (not lt!489571) (= (bvand extraKeys!811 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (and (not (= (bvand extraKeys!811 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!489571) (not (= lt!489574 lt!489575)) (bvsle #b00000000000000000000000000000000 (size!34592 _keys!1070)))))))

(assert (=> b!1094226 (= lt!489571 (= (bvand extraKeys!811 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(declare-fun defaultEntry!882 () Int)

(declare-fun lt!489568 () ListLongMap!15261)

(declare-fun minValue!831 () V!41059)

(declare-fun zeroValue!831 () V!41059)

(declare-fun getCurrentListMap!4381 (array!70770 array!70772 (_ BitVec 32) (_ BitVec 32) V!41059 V!41059 (_ BitVec 32) Int) ListLongMap!15261)

(assert (=> b!1094226 (= lt!489568 (getCurrentListMap!4381 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun lt!489570 () array!70772)

(assert (=> b!1094226 (= lt!489574 (getCurrentListMap!4381 lt!489567 lt!489570 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun lt!489572 () ListLongMap!15261)

(assert (=> b!1094226 (and (= lt!489575 lt!489572) (= lt!489572 lt!489575))))

(declare-fun lt!489573 () ListLongMap!15261)

(declare-fun -!922 (ListLongMap!15261 (_ BitVec 64)) ListLongMap!15261)

(assert (=> b!1094226 (= lt!489572 (-!922 lt!489573 k0!904))))

(declare-datatypes ((Unit!35959 0))(
  ( (Unit!35960) )
))
(declare-fun lt!489569 () Unit!35959)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!187 (array!70770 array!70772 (_ BitVec 32) (_ BitVec 32) V!41059 V!41059 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!35959)

(assert (=> b!1094226 (= lt!489569 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!187 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 i!650 k0!904 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun getCurrentListMapNoExtraKeys!4133 (array!70770 array!70772 (_ BitVec 32) (_ BitVec 32) V!41059 V!41059 (_ BitVec 32) Int) ListLongMap!15261)

(assert (=> b!1094226 (= lt!489575 (getCurrentListMapNoExtraKeys!4133 lt!489567 lt!489570 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun dynLambda!2269 (Int (_ BitVec 64)) V!41059)

(assert (=> b!1094226 (= lt!489570 (array!70773 (store (arr!34056 _values!874) i!650 (ValueCellFull!12765 (dynLambda!2269 defaultEntry!882 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!34593 _values!874)))))

(assert (=> b!1094226 (= lt!489573 (getCurrentListMapNoExtraKeys!4133 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun arrayContainsKey!0 (array!70770 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1094226 (arrayContainsKey!0 _keys!1070 k0!904 #b00000000000000000000000000000000)))

(declare-fun lt!489566 () Unit!35959)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!70770 (_ BitVec 64) (_ BitVec 32)) Unit!35959)

(assert (=> b!1094226 (= lt!489566 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1070 k0!904 i!650))))

(declare-fun b!1094227 () Bool)

(declare-fun res!730302 () Bool)

(assert (=> b!1094227 (=> (not res!730302) (not e!624752))))

(assert (=> b!1094227 (= res!730302 (and (= (size!34593 _values!874) (bvadd #b00000000000000000000000000000001 mask!1414)) (= (size!34592 _keys!1070) (size!34593 _values!874)) (bvsge mask!1414 #b00000000000000000000000000000000) (bvsge extraKeys!811 #b00000000000000000000000000000000) (bvsle extraKeys!811 #b00000000000000000000000000000011)))))

(declare-fun res!730303 () Bool)

(assert (=> start!96330 (=> (not res!730303) (not e!624752))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!96330 (= res!730303 (validMask!0 mask!1414))))

(assert (=> start!96330 e!624752))

(assert (=> start!96330 tp!80691))

(assert (=> start!96330 true))

(assert (=> start!96330 tp_is_empty!26949))

(declare-fun array_inv!26096 (array!70770) Bool)

(assert (=> start!96330 (array_inv!26096 _keys!1070)))

(declare-fun array_inv!26097 (array!70772) Bool)

(assert (=> start!96330 (and (array_inv!26097 _values!874) e!624749)))

(declare-fun b!1094228 () Bool)

(declare-fun res!730304 () Bool)

(assert (=> b!1094228 (=> (not res!730304) (not e!624754))))

(assert (=> b!1094228 (= res!730304 (arrayNoDuplicates!0 lt!489567 #b00000000000000000000000000000000 Nil!23928))))

(assert (= (and start!96330 res!730303) b!1094227))

(assert (= (and b!1094227 res!730302) b!1094220))

(assert (= (and b!1094220 res!730310) b!1094221))

(assert (= (and b!1094221 res!730305) b!1094223))

(assert (= (and b!1094223 res!730306) b!1094218))

(assert (= (and b!1094218 res!730308) b!1094224))

(assert (= (and b!1094224 res!730309) b!1094222))

(assert (= (and b!1094222 res!730307) b!1094228))

(assert (= (and b!1094228 res!730304) b!1094226))

(assert (= (and b!1094225 condMapEmpty!42178) mapIsEmpty!42178))

(assert (= (and b!1094225 (not condMapEmpty!42178)) mapNonEmpty!42178))

(get-info :version)

(assert (= (and mapNonEmpty!42178 ((_ is ValueCellFull!12765) mapValue!42178)) b!1094219))

(assert (= (and b!1094225 ((_ is ValueCellFull!12765) mapDefault!42178)) b!1094217))

(assert (= start!96330 b!1094225))

(declare-fun b_lambda!17647 () Bool)

(assert (=> (not b_lambda!17647) (not b!1094226)))

(declare-fun t!33942 () Bool)

(declare-fun tb!7833 () Bool)

(assert (=> (and start!96330 (= defaultEntry!882 defaultEntry!882) t!33942) tb!7833))

(declare-fun result!16177 () Bool)

(assert (=> tb!7833 (= result!16177 tp_is_empty!26949)))

(assert (=> b!1094226 t!33942))

(declare-fun b_and!36589 () Bool)

(assert (= b_and!36587 (and (=> t!33942 result!16177) b_and!36589)))

(declare-fun m!1014309 () Bool)

(assert (=> b!1094224 m!1014309))

(declare-fun m!1014311 () Bool)

(assert (=> b!1094218 m!1014311))

(declare-fun m!1014313 () Bool)

(assert (=> start!96330 m!1014313))

(declare-fun m!1014315 () Bool)

(assert (=> start!96330 m!1014315))

(declare-fun m!1014317 () Bool)

(assert (=> start!96330 m!1014317))

(declare-fun m!1014319 () Bool)

(assert (=> b!1094222 m!1014319))

(declare-fun m!1014321 () Bool)

(assert (=> b!1094222 m!1014321))

(declare-fun m!1014323 () Bool)

(assert (=> mapNonEmpty!42178 m!1014323))

(declare-fun m!1014325 () Bool)

(assert (=> b!1094221 m!1014325))

(declare-fun m!1014327 () Bool)

(assert (=> b!1094226 m!1014327))

(declare-fun m!1014329 () Bool)

(assert (=> b!1094226 m!1014329))

(declare-fun m!1014331 () Bool)

(assert (=> b!1094226 m!1014331))

(declare-fun m!1014333 () Bool)

(assert (=> b!1094226 m!1014333))

(declare-fun m!1014335 () Bool)

(assert (=> b!1094226 m!1014335))

(declare-fun m!1014337 () Bool)

(assert (=> b!1094226 m!1014337))

(declare-fun m!1014339 () Bool)

(assert (=> b!1094226 m!1014339))

(declare-fun m!1014341 () Bool)

(assert (=> b!1094226 m!1014341))

(declare-fun m!1014343 () Bool)

(assert (=> b!1094226 m!1014343))

(declare-fun m!1014345 () Bool)

(assert (=> b!1094226 m!1014345))

(declare-fun m!1014347 () Bool)

(assert (=> b!1094220 m!1014347))

(declare-fun m!1014349 () Bool)

(assert (=> b!1094228 m!1014349))

(check-sat (not mapNonEmpty!42178) (not b_next!22947) (not b!1094220) (not b!1094228) (not b!1094222) tp_is_empty!26949 (not b!1094221) (not b!1094218) b_and!36589 (not start!96330) (not b!1094226) (not b_lambda!17647))
(check-sat b_and!36589 (not b_next!22947))
