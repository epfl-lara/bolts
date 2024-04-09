; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!96524 () Bool)

(assert start!96524)

(declare-fun b_free!23067 () Bool)

(declare-fun b_next!23067 () Bool)

(assert (=> start!96524 (= b_free!23067 (not b_next!23067))))

(declare-fun tp!81128 () Bool)

(declare-fun b_and!36815 () Bool)

(assert (=> start!96524 (= tp!81128 b_and!36815)))

(declare-fun b!1097313 () Bool)

(declare-fun res!732493 () Bool)

(declare-fun e!626318 () Bool)

(assert (=> b!1097313 (=> (not res!732493) (not e!626318))))

(declare-fun i!650 () (_ BitVec 32))

(declare-datatypes ((array!71094 0))(
  ( (array!71095 (arr!34215 (Array (_ BitVec 32) (_ BitVec 64))) (size!34752 (_ BitVec 32))) )
))
(declare-fun _keys!1070 () array!71094)

(assert (=> b!1097313 (= res!732493 (and (bvsge i!650 #b00000000000000000000000000000000) (bvslt i!650 (size!34752 _keys!1070))))))

(declare-fun b!1097314 () Bool)

(declare-fun res!732489 () Bool)

(assert (=> b!1097314 (=> (not res!732489) (not e!626318))))

(declare-fun mask!1414 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!71094 (_ BitVec 32)) Bool)

(assert (=> b!1097314 (= res!732489 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1070 mask!1414))))

(declare-fun res!732492 () Bool)

(assert (=> start!96524 (=> (not res!732492) (not e!626318))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!96524 (= res!732492 (validMask!0 mask!1414))))

(assert (=> start!96524 e!626318))

(assert (=> start!96524 tp!81128))

(assert (=> start!96524 true))

(declare-fun tp_is_empty!27117 () Bool)

(assert (=> start!96524 tp_is_empty!27117))

(declare-fun array_inv!26216 (array!71094) Bool)

(assert (=> start!96524 (array_inv!26216 _keys!1070)))

(declare-datatypes ((V!41283 0))(
  ( (V!41284 (val!13615 Int)) )
))
(declare-datatypes ((ValueCell!12849 0))(
  ( (ValueCellFull!12849 (v!16237 V!41283)) (EmptyCell!12849) )
))
(declare-datatypes ((array!71096 0))(
  ( (array!71097 (arr!34216 (Array (_ BitVec 32) ValueCell!12849)) (size!34753 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!71096)

(declare-fun e!626317 () Bool)

(declare-fun array_inv!26217 (array!71096) Bool)

(assert (=> start!96524 (and (array_inv!26217 _values!874) e!626317)))

(declare-fun mapNonEmpty!42436 () Bool)

(declare-fun mapRes!42436 () Bool)

(declare-fun tp!81129 () Bool)

(declare-fun e!626314 () Bool)

(assert (=> mapNonEmpty!42436 (= mapRes!42436 (and tp!81129 e!626314))))

(declare-fun mapValue!42436 () ValueCell!12849)

(declare-fun mapRest!42436 () (Array (_ BitVec 32) ValueCell!12849))

(declare-fun mapKey!42436 () (_ BitVec 32))

(assert (=> mapNonEmpty!42436 (= (arr!34216 _values!874) (store mapRest!42436 mapKey!42436 mapValue!42436))))

(declare-fun b!1097315 () Bool)

(declare-fun res!732491 () Bool)

(assert (=> b!1097315 (=> (not res!732491) (not e!626318))))

(declare-fun k0!904 () (_ BitVec 64))

(assert (=> b!1097315 (= res!732491 (= (select (arr!34215 _keys!1070) i!650) k0!904))))

(declare-datatypes ((tuple2!17352 0))(
  ( (tuple2!17353 (_1!8686 (_ BitVec 64)) (_2!8686 V!41283)) )
))
(declare-datatypes ((List!24031 0))(
  ( (Nil!24028) (Cons!24027 (h!25236 tuple2!17352) (t!34151 List!24031)) )
))
(declare-datatypes ((ListLongMap!15333 0))(
  ( (ListLongMap!15334 (toList!7682 List!24031)) )
))
(declare-fun lt!490501 () ListLongMap!15333)

(declare-fun minValue!831 () V!41283)

(declare-fun b!1097316 () Bool)

(declare-fun zeroValue!831 () V!41283)

(declare-fun e!626315 () Bool)

(declare-fun lt!490498 () ListLongMap!15333)

(declare-fun +!3317 (ListLongMap!15333 tuple2!17352) ListLongMap!15333)

(assert (=> b!1097316 (= e!626315 (= lt!490501 (+!3317 (+!3317 lt!490498 (tuple2!17353 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!831)) (tuple2!17353 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!831))))))

(declare-fun b!1097317 () Bool)

(assert (=> b!1097317 (= e!626314 tp_is_empty!27117)))

(declare-fun b!1097318 () Bool)

(declare-fun e!626319 () Bool)

(assert (=> b!1097318 (= e!626317 (and e!626319 mapRes!42436))))

(declare-fun condMapEmpty!42436 () Bool)

(declare-fun mapDefault!42436 () ValueCell!12849)

(assert (=> b!1097318 (= condMapEmpty!42436 (= (arr!34216 _values!874) ((as const (Array (_ BitVec 32) ValueCell!12849)) mapDefault!42436)))))

(declare-fun b!1097319 () Bool)

(declare-fun e!626313 () Bool)

(assert (=> b!1097319 (= e!626313 (not e!626315))))

(declare-fun res!732494 () Bool)

(assert (=> b!1097319 (=> res!732494 e!626315)))

(declare-fun extraKeys!811 () (_ BitVec 32))

(assert (=> b!1097319 (= res!732494 (or (= (bvand extraKeys!811 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (= (bvand extraKeys!811 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun defaultEntry!882 () Int)

(declare-fun lt!490495 () ListLongMap!15333)

(declare-fun getCurrentListMap!4382 (array!71094 array!71096 (_ BitVec 32) (_ BitVec 32) V!41283 V!41283 (_ BitVec 32) Int) ListLongMap!15333)

(assert (=> b!1097319 (= lt!490495 (getCurrentListMap!4382 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun lt!490496 () array!71096)

(declare-fun lt!490494 () array!71094)

(assert (=> b!1097319 (= lt!490501 (getCurrentListMap!4382 lt!490494 lt!490496 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun lt!490502 () ListLongMap!15333)

(assert (=> b!1097319 (and (= lt!490498 lt!490502) (= lt!490502 lt!490498))))

(declare-fun lt!490497 () ListLongMap!15333)

(declare-fun -!929 (ListLongMap!15333 (_ BitVec 64)) ListLongMap!15333)

(assert (=> b!1097319 (= lt!490502 (-!929 lt!490497 k0!904))))

(declare-datatypes ((Unit!36037 0))(
  ( (Unit!36038) )
))
(declare-fun lt!490499 () Unit!36037)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!194 (array!71094 array!71096 (_ BitVec 32) (_ BitVec 32) V!41283 V!41283 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!36037)

(assert (=> b!1097319 (= lt!490499 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!194 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 i!650 k0!904 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun getCurrentListMapNoExtraKeys!4169 (array!71094 array!71096 (_ BitVec 32) (_ BitVec 32) V!41283 V!41283 (_ BitVec 32) Int) ListLongMap!15333)

(assert (=> b!1097319 (= lt!490498 (getCurrentListMapNoExtraKeys!4169 lt!490494 lt!490496 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun dynLambda!2300 (Int (_ BitVec 64)) V!41283)

(assert (=> b!1097319 (= lt!490496 (array!71097 (store (arr!34216 _values!874) i!650 (ValueCellFull!12849 (dynLambda!2300 defaultEntry!882 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!34753 _values!874)))))

(assert (=> b!1097319 (= lt!490497 (getCurrentListMapNoExtraKeys!4169 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun arrayContainsKey!0 (array!71094 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1097319 (arrayContainsKey!0 _keys!1070 k0!904 #b00000000000000000000000000000000)))

(declare-fun lt!490500 () Unit!36037)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!71094 (_ BitVec 64) (_ BitVec 32)) Unit!36037)

(assert (=> b!1097319 (= lt!490500 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1070 k0!904 i!650))))

(declare-fun b!1097320 () Bool)

(declare-fun res!732490 () Bool)

(assert (=> b!1097320 (=> (not res!732490) (not e!626318))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1097320 (= res!732490 (validKeyInArray!0 k0!904))))

(declare-fun b!1097321 () Bool)

(assert (=> b!1097321 (= e!626318 e!626313)))

(declare-fun res!732495 () Bool)

(assert (=> b!1097321 (=> (not res!732495) (not e!626313))))

(assert (=> b!1097321 (= res!732495 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!490494 mask!1414))))

(assert (=> b!1097321 (= lt!490494 (array!71095 (store (arr!34215 _keys!1070) i!650 #b1000000000000000000000000000000000000000000000000000000000000000) (size!34752 _keys!1070)))))

(declare-fun mapIsEmpty!42436 () Bool)

(assert (=> mapIsEmpty!42436 mapRes!42436))

(declare-fun b!1097322 () Bool)

(declare-fun res!732486 () Bool)

(assert (=> b!1097322 (=> (not res!732486) (not e!626318))))

(declare-datatypes ((List!24032 0))(
  ( (Nil!24029) (Cons!24028 (h!25237 (_ BitVec 64)) (t!34152 List!24032)) )
))
(declare-fun arrayNoDuplicates!0 (array!71094 (_ BitVec 32) List!24032) Bool)

(assert (=> b!1097322 (= res!732486 (arrayNoDuplicates!0 _keys!1070 #b00000000000000000000000000000000 Nil!24029))))

(declare-fun b!1097323 () Bool)

(assert (=> b!1097323 (= e!626319 tp_is_empty!27117)))

(declare-fun b!1097324 () Bool)

(declare-fun res!732487 () Bool)

(assert (=> b!1097324 (=> (not res!732487) (not e!626313))))

(assert (=> b!1097324 (= res!732487 (arrayNoDuplicates!0 lt!490494 #b00000000000000000000000000000000 Nil!24029))))

(declare-fun b!1097325 () Bool)

(declare-fun res!732488 () Bool)

(assert (=> b!1097325 (=> (not res!732488) (not e!626318))))

(assert (=> b!1097325 (= res!732488 (and (= (size!34753 _values!874) (bvadd #b00000000000000000000000000000001 mask!1414)) (= (size!34752 _keys!1070) (size!34753 _values!874)) (bvsge mask!1414 #b00000000000000000000000000000000) (bvsge extraKeys!811 #b00000000000000000000000000000000) (bvsle extraKeys!811 #b00000000000000000000000000000011)))))

(assert (= (and start!96524 res!732492) b!1097325))

(assert (= (and b!1097325 res!732488) b!1097314))

(assert (= (and b!1097314 res!732489) b!1097322))

(assert (= (and b!1097322 res!732486) b!1097313))

(assert (= (and b!1097313 res!732493) b!1097320))

(assert (= (and b!1097320 res!732490) b!1097315))

(assert (= (and b!1097315 res!732491) b!1097321))

(assert (= (and b!1097321 res!732495) b!1097324))

(assert (= (and b!1097324 res!732487) b!1097319))

(assert (= (and b!1097319 (not res!732494)) b!1097316))

(assert (= (and b!1097318 condMapEmpty!42436) mapIsEmpty!42436))

(assert (= (and b!1097318 (not condMapEmpty!42436)) mapNonEmpty!42436))

(get-info :version)

(assert (= (and mapNonEmpty!42436 ((_ is ValueCellFull!12849) mapValue!42436)) b!1097317))

(assert (= (and b!1097318 ((_ is ValueCellFull!12849) mapDefault!42436)) b!1097323))

(assert (= start!96524 b!1097318))

(declare-fun b_lambda!17755 () Bool)

(assert (=> (not b_lambda!17755) (not b!1097319)))

(declare-fun t!34150 () Bool)

(declare-fun tb!7941 () Bool)

(assert (=> (and start!96524 (= defaultEntry!882 defaultEntry!882) t!34150) tb!7941))

(declare-fun result!16397 () Bool)

(assert (=> tb!7941 (= result!16397 tp_is_empty!27117)))

(assert (=> b!1097319 t!34150))

(declare-fun b_and!36817 () Bool)

(assert (= b_and!36815 (and (=> t!34150 result!16397) b_and!36817)))

(declare-fun m!1016927 () Bool)

(assert (=> b!1097315 m!1016927))

(declare-fun m!1016929 () Bool)

(assert (=> b!1097322 m!1016929))

(declare-fun m!1016931 () Bool)

(assert (=> b!1097320 m!1016931))

(declare-fun m!1016933 () Bool)

(assert (=> b!1097314 m!1016933))

(declare-fun m!1016935 () Bool)

(assert (=> b!1097319 m!1016935))

(declare-fun m!1016937 () Bool)

(assert (=> b!1097319 m!1016937))

(declare-fun m!1016939 () Bool)

(assert (=> b!1097319 m!1016939))

(declare-fun m!1016941 () Bool)

(assert (=> b!1097319 m!1016941))

(declare-fun m!1016943 () Bool)

(assert (=> b!1097319 m!1016943))

(declare-fun m!1016945 () Bool)

(assert (=> b!1097319 m!1016945))

(declare-fun m!1016947 () Bool)

(assert (=> b!1097319 m!1016947))

(declare-fun m!1016949 () Bool)

(assert (=> b!1097319 m!1016949))

(declare-fun m!1016951 () Bool)

(assert (=> b!1097319 m!1016951))

(declare-fun m!1016953 () Bool)

(assert (=> b!1097319 m!1016953))

(declare-fun m!1016955 () Bool)

(assert (=> mapNonEmpty!42436 m!1016955))

(declare-fun m!1016957 () Bool)

(assert (=> b!1097321 m!1016957))

(declare-fun m!1016959 () Bool)

(assert (=> b!1097321 m!1016959))

(declare-fun m!1016961 () Bool)

(assert (=> b!1097316 m!1016961))

(assert (=> b!1097316 m!1016961))

(declare-fun m!1016963 () Bool)

(assert (=> b!1097316 m!1016963))

(declare-fun m!1016965 () Bool)

(assert (=> start!96524 m!1016965))

(declare-fun m!1016967 () Bool)

(assert (=> start!96524 m!1016967))

(declare-fun m!1016969 () Bool)

(assert (=> start!96524 m!1016969))

(declare-fun m!1016971 () Bool)

(assert (=> b!1097324 m!1016971))

(check-sat (not b!1097316) (not b_next!23067) (not b!1097319) (not start!96524) b_and!36817 (not b_lambda!17755) (not b!1097322) (not mapNonEmpty!42436) (not b!1097324) tp_is_empty!27117 (not b!1097314) (not b!1097320) (not b!1097321))
(check-sat b_and!36817 (not b_next!23067))
(get-model)

(declare-fun b_lambda!17759 () Bool)

(assert (= b_lambda!17755 (or (and start!96524 b_free!23067) b_lambda!17759)))

(check-sat (not b!1097316) (not b_lambda!17759) (not b_next!23067) (not b!1097319) (not start!96524) b_and!36817 (not b!1097322) (not mapNonEmpty!42436) (not b!1097324) tp_is_empty!27117 (not b!1097314) (not b!1097320) (not b!1097321))
(check-sat b_and!36817 (not b_next!23067))
(get-model)

(declare-fun d!130245 () Bool)

(declare-fun res!732530 () Bool)

(declare-fun e!626349 () Bool)

(assert (=> d!130245 (=> res!732530 e!626349)))

(assert (=> d!130245 (= res!732530 (bvsge #b00000000000000000000000000000000 (size!34752 _keys!1070)))))

(assert (=> d!130245 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1070 mask!1414) e!626349)))

(declare-fun b!1097377 () Bool)

(declare-fun e!626348 () Bool)

(assert (=> b!1097377 (= e!626349 e!626348)))

(declare-fun c!108309 () Bool)

(assert (=> b!1097377 (= c!108309 (validKeyInArray!0 (select (arr!34215 _keys!1070) #b00000000000000000000000000000000)))))

(declare-fun b!1097378 () Bool)

(declare-fun call!45768 () Bool)

(assert (=> b!1097378 (= e!626348 call!45768)))

(declare-fun bm!45765 () Bool)

(assert (=> bm!45765 (= call!45768 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) _keys!1070 mask!1414))))

(declare-fun b!1097379 () Bool)

(declare-fun e!626347 () Bool)

(assert (=> b!1097379 (= e!626347 call!45768)))

(declare-fun b!1097380 () Bool)

(assert (=> b!1097380 (= e!626348 e!626347)))

(declare-fun lt!490536 () (_ BitVec 64))

(assert (=> b!1097380 (= lt!490536 (select (arr!34215 _keys!1070) #b00000000000000000000000000000000))))

(declare-fun lt!490537 () Unit!36037)

(assert (=> b!1097380 (= lt!490537 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1070 lt!490536 #b00000000000000000000000000000000))))

(assert (=> b!1097380 (arrayContainsKey!0 _keys!1070 lt!490536 #b00000000000000000000000000000000)))

(declare-fun lt!490538 () Unit!36037)

(assert (=> b!1097380 (= lt!490538 lt!490537)))

(declare-fun res!732531 () Bool)

(declare-datatypes ((SeekEntryResult!9903 0))(
  ( (MissingZero!9903 (index!41982 (_ BitVec 32))) (Found!9903 (index!41983 (_ BitVec 32))) (Intermediate!9903 (undefined!10715 Bool) (index!41984 (_ BitVec 32)) (x!98702 (_ BitVec 32))) (Undefined!9903) (MissingVacant!9903 (index!41985 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!71094 (_ BitVec 32)) SeekEntryResult!9903)

(assert (=> b!1097380 (= res!732531 (= (seekEntryOrOpen!0 (select (arr!34215 _keys!1070) #b00000000000000000000000000000000) _keys!1070 mask!1414) (Found!9903 #b00000000000000000000000000000000)))))

(assert (=> b!1097380 (=> (not res!732531) (not e!626347))))

(assert (= (and d!130245 (not res!732530)) b!1097377))

(assert (= (and b!1097377 c!108309) b!1097380))

(assert (= (and b!1097377 (not c!108309)) b!1097378))

(assert (= (and b!1097380 res!732531) b!1097379))

(assert (= (or b!1097379 b!1097378) bm!45765))

(declare-fun m!1017019 () Bool)

(assert (=> b!1097377 m!1017019))

(assert (=> b!1097377 m!1017019))

(declare-fun m!1017021 () Bool)

(assert (=> b!1097377 m!1017021))

(declare-fun m!1017023 () Bool)

(assert (=> bm!45765 m!1017023))

(assert (=> b!1097380 m!1017019))

(declare-fun m!1017025 () Bool)

(assert (=> b!1097380 m!1017025))

(declare-fun m!1017027 () Bool)

(assert (=> b!1097380 m!1017027))

(assert (=> b!1097380 m!1017019))

(declare-fun m!1017029 () Bool)

(assert (=> b!1097380 m!1017029))

(assert (=> b!1097314 d!130245))

(declare-fun d!130247 () Bool)

(declare-fun res!732536 () Bool)

(declare-fun e!626354 () Bool)

(assert (=> d!130247 (=> res!732536 e!626354)))

(assert (=> d!130247 (= res!732536 (= (select (arr!34215 _keys!1070) #b00000000000000000000000000000000) k0!904))))

(assert (=> d!130247 (= (arrayContainsKey!0 _keys!1070 k0!904 #b00000000000000000000000000000000) e!626354)))

(declare-fun b!1097385 () Bool)

(declare-fun e!626355 () Bool)

(assert (=> b!1097385 (= e!626354 e!626355)))

(declare-fun res!732537 () Bool)

(assert (=> b!1097385 (=> (not res!732537) (not e!626355))))

(assert (=> b!1097385 (= res!732537 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!34752 _keys!1070)))))

(declare-fun b!1097386 () Bool)

(assert (=> b!1097386 (= e!626355 (arrayContainsKey!0 _keys!1070 k0!904 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!130247 (not res!732536)) b!1097385))

(assert (= (and b!1097385 res!732537) b!1097386))

(assert (=> d!130247 m!1017019))

(declare-fun m!1017031 () Bool)

(assert (=> b!1097386 m!1017031))

(assert (=> b!1097319 d!130247))

(declare-fun bm!45780 () Bool)

(declare-fun call!45787 () ListLongMap!15333)

(declare-fun call!45783 () ListLongMap!15333)

(assert (=> bm!45780 (= call!45787 call!45783)))

(declare-fun bm!45781 () Bool)

(declare-fun call!45785 () ListLongMap!15333)

(declare-fun call!45789 () ListLongMap!15333)

(assert (=> bm!45781 (= call!45785 call!45789)))

(declare-fun b!1097429 () Bool)

(declare-fun c!108327 () Bool)

(assert (=> b!1097429 (= c!108327 (and (not (= (bvand extraKeys!811 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeys!811 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun e!626386 () ListLongMap!15333)

(declare-fun e!626393 () ListLongMap!15333)

(assert (=> b!1097429 (= e!626386 e!626393)))

(declare-fun bm!45782 () Bool)

(declare-fun call!45788 () Bool)

(declare-fun lt!490599 () ListLongMap!15333)

(declare-fun contains!6390 (ListLongMap!15333 (_ BitVec 64)) Bool)

(assert (=> bm!45782 (= call!45788 (contains!6390 lt!490599 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1097430 () Bool)

(declare-fun e!626382 () Bool)

(declare-fun call!45786 () Bool)

(assert (=> b!1097430 (= e!626382 (not call!45786))))

(declare-fun b!1097431 () Bool)

(declare-fun e!626392 () Bool)

(declare-fun e!626391 () Bool)

(assert (=> b!1097431 (= e!626392 e!626391)))

(declare-fun c!108326 () Bool)

(assert (=> b!1097431 (= c!108326 (not (= (bvand extraKeys!811 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1097432 () Bool)

(declare-fun res!732562 () Bool)

(assert (=> b!1097432 (=> (not res!732562) (not e!626392))))

(declare-fun e!626388 () Bool)

(assert (=> b!1097432 (= res!732562 e!626388)))

(declare-fun res!732564 () Bool)

(assert (=> b!1097432 (=> res!732564 e!626388)))

(declare-fun e!626394 () Bool)

(assert (=> b!1097432 (= res!732564 (not e!626394))))

(declare-fun res!732560 () Bool)

(assert (=> b!1097432 (=> (not res!732560) (not e!626394))))

(assert (=> b!1097432 (= res!732560 (bvslt #b00000000000000000000000000000000 (size!34752 _keys!1070)))))

(declare-fun b!1097433 () Bool)

(declare-fun e!626389 () Bool)

(assert (=> b!1097433 (= e!626389 (validKeyInArray!0 (select (arr!34215 _keys!1070) #b00000000000000000000000000000000)))))

(declare-fun bm!45783 () Bool)

(declare-fun call!45784 () ListLongMap!15333)

(assert (=> bm!45783 (= call!45784 call!45785)))

(declare-fun d!130249 () Bool)

(assert (=> d!130249 e!626392))

(declare-fun res!732557 () Bool)

(assert (=> d!130249 (=> (not res!732557) (not e!626392))))

(assert (=> d!130249 (= res!732557 (or (bvsge #b00000000000000000000000000000000 (size!34752 _keys!1070)) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!34752 _keys!1070)))))))

(declare-fun lt!490587 () ListLongMap!15333)

(assert (=> d!130249 (= lt!490599 lt!490587)))

(declare-fun lt!490590 () Unit!36037)

(declare-fun e!626384 () Unit!36037)

(assert (=> d!130249 (= lt!490590 e!626384)))

(declare-fun c!108322 () Bool)

(assert (=> d!130249 (= c!108322 e!626389)))

(declare-fun res!732563 () Bool)

(assert (=> d!130249 (=> (not res!732563) (not e!626389))))

(assert (=> d!130249 (= res!732563 (bvslt #b00000000000000000000000000000000 (size!34752 _keys!1070)))))

(declare-fun e!626385 () ListLongMap!15333)

(assert (=> d!130249 (= lt!490587 e!626385)))

(declare-fun c!108323 () Bool)

(assert (=> d!130249 (= c!108323 (and (not (= (bvand extraKeys!811 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!811 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!130249 (validMask!0 mask!1414)))

(assert (=> d!130249 (= (getCurrentListMap!4382 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882) lt!490599)))

(declare-fun bm!45784 () Bool)

(declare-fun c!108324 () Bool)

(assert (=> bm!45784 (= call!45783 (+!3317 (ite c!108323 call!45789 (ite c!108324 call!45785 call!45784)) (ite (or c!108323 c!108324) (tuple2!17353 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!831) (tuple2!17353 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!831))))))

(declare-fun b!1097434 () Bool)

(declare-fun e!626383 () Bool)

(assert (=> b!1097434 (= e!626391 e!626383)))

(declare-fun res!732558 () Bool)

(assert (=> b!1097434 (= res!732558 call!45788)))

(assert (=> b!1097434 (=> (not res!732558) (not e!626383))))

(declare-fun b!1097435 () Bool)

(declare-fun e!626390 () Bool)

(declare-fun apply!978 (ListLongMap!15333 (_ BitVec 64)) V!41283)

(assert (=> b!1097435 (= e!626390 (= (apply!978 lt!490599 #b0000000000000000000000000000000000000000000000000000000000000000) zeroValue!831))))

(declare-fun bm!45785 () Bool)

(assert (=> bm!45785 (= call!45789 (getCurrentListMapNoExtraKeys!4169 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun b!1097436 () Bool)

(assert (=> b!1097436 (= e!626394 (validKeyInArray!0 (select (arr!34215 _keys!1070) #b00000000000000000000000000000000)))))

(declare-fun b!1097437 () Bool)

(declare-fun res!732556 () Bool)

(assert (=> b!1097437 (=> (not res!732556) (not e!626392))))

(assert (=> b!1097437 (= res!732556 e!626382)))

(declare-fun c!108325 () Bool)

(assert (=> b!1097437 (= c!108325 (not (= (bvand extraKeys!811 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!1097438 () Bool)

(assert (=> b!1097438 (= e!626386 call!45787)))

(declare-fun b!1097439 () Bool)

(assert (=> b!1097439 (= e!626385 e!626386)))

(assert (=> b!1097439 (= c!108324 (and (not (= (bvand extraKeys!811 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeys!811 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1097440 () Bool)

(declare-fun e!626387 () Bool)

(assert (=> b!1097440 (= e!626388 e!626387)))

(declare-fun res!732559 () Bool)

(assert (=> b!1097440 (=> (not res!732559) (not e!626387))))

(assert (=> b!1097440 (= res!732559 (contains!6390 lt!490599 (select (arr!34215 _keys!1070) #b00000000000000000000000000000000)))))

(assert (=> b!1097440 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!34752 _keys!1070)))))

(declare-fun b!1097441 () Bool)

(assert (=> b!1097441 (= e!626383 (= (apply!978 lt!490599 #b1000000000000000000000000000000000000000000000000000000000000000) minValue!831))))

(declare-fun b!1097442 () Bool)

(assert (=> b!1097442 (= e!626393 call!45784)))

(declare-fun b!1097443 () Bool)

(assert (=> b!1097443 (= e!626385 (+!3317 call!45783 (tuple2!17353 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!831)))))

(declare-fun b!1097444 () Bool)

(assert (=> b!1097444 (= e!626393 call!45787)))

(declare-fun b!1097445 () Bool)

(declare-fun lt!490583 () Unit!36037)

(assert (=> b!1097445 (= e!626384 lt!490583)))

(declare-fun lt!490602 () ListLongMap!15333)

(assert (=> b!1097445 (= lt!490602 (getCurrentListMapNoExtraKeys!4169 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun lt!490598 () (_ BitVec 64))

(assert (=> b!1097445 (= lt!490598 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!490584 () (_ BitVec 64))

(assert (=> b!1097445 (= lt!490584 (select (arr!34215 _keys!1070) #b00000000000000000000000000000000))))

(declare-fun lt!490603 () Unit!36037)

(declare-fun addStillContains!660 (ListLongMap!15333 (_ BitVec 64) V!41283 (_ BitVec 64)) Unit!36037)

(assert (=> b!1097445 (= lt!490603 (addStillContains!660 lt!490602 lt!490598 zeroValue!831 lt!490584))))

(assert (=> b!1097445 (contains!6390 (+!3317 lt!490602 (tuple2!17353 lt!490598 zeroValue!831)) lt!490584)))

(declare-fun lt!490585 () Unit!36037)

(assert (=> b!1097445 (= lt!490585 lt!490603)))

(declare-fun lt!490586 () ListLongMap!15333)

(assert (=> b!1097445 (= lt!490586 (getCurrentListMapNoExtraKeys!4169 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun lt!490597 () (_ BitVec 64))

(assert (=> b!1097445 (= lt!490597 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!490600 () (_ BitVec 64))

(assert (=> b!1097445 (= lt!490600 (select (arr!34215 _keys!1070) #b00000000000000000000000000000000))))

(declare-fun lt!490604 () Unit!36037)

(declare-fun addApplyDifferent!512 (ListLongMap!15333 (_ BitVec 64) V!41283 (_ BitVec 64)) Unit!36037)

(assert (=> b!1097445 (= lt!490604 (addApplyDifferent!512 lt!490586 lt!490597 minValue!831 lt!490600))))

(assert (=> b!1097445 (= (apply!978 (+!3317 lt!490586 (tuple2!17353 lt!490597 minValue!831)) lt!490600) (apply!978 lt!490586 lt!490600))))

(declare-fun lt!490593 () Unit!36037)

(assert (=> b!1097445 (= lt!490593 lt!490604)))

(declare-fun lt!490595 () ListLongMap!15333)

(assert (=> b!1097445 (= lt!490595 (getCurrentListMapNoExtraKeys!4169 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun lt!490589 () (_ BitVec 64))

(assert (=> b!1097445 (= lt!490589 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!490596 () (_ BitVec 64))

(assert (=> b!1097445 (= lt!490596 (select (arr!34215 _keys!1070) #b00000000000000000000000000000000))))

(declare-fun lt!490588 () Unit!36037)

(assert (=> b!1097445 (= lt!490588 (addApplyDifferent!512 lt!490595 lt!490589 zeroValue!831 lt!490596))))

(assert (=> b!1097445 (= (apply!978 (+!3317 lt!490595 (tuple2!17353 lt!490589 zeroValue!831)) lt!490596) (apply!978 lt!490595 lt!490596))))

(declare-fun lt!490592 () Unit!36037)

(assert (=> b!1097445 (= lt!490592 lt!490588)))

(declare-fun lt!490594 () ListLongMap!15333)

(assert (=> b!1097445 (= lt!490594 (getCurrentListMapNoExtraKeys!4169 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun lt!490601 () (_ BitVec 64))

(assert (=> b!1097445 (= lt!490601 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!490591 () (_ BitVec 64))

(assert (=> b!1097445 (= lt!490591 (select (arr!34215 _keys!1070) #b00000000000000000000000000000000))))

(assert (=> b!1097445 (= lt!490583 (addApplyDifferent!512 lt!490594 lt!490601 minValue!831 lt!490591))))

(assert (=> b!1097445 (= (apply!978 (+!3317 lt!490594 (tuple2!17353 lt!490601 minValue!831)) lt!490591) (apply!978 lt!490594 lt!490591))))

(declare-fun b!1097446 () Bool)

(assert (=> b!1097446 (= e!626382 e!626390)))

(declare-fun res!732561 () Bool)

(assert (=> b!1097446 (= res!732561 call!45786)))

(assert (=> b!1097446 (=> (not res!732561) (not e!626390))))

(declare-fun b!1097447 () Bool)

(declare-fun Unit!36041 () Unit!36037)

(assert (=> b!1097447 (= e!626384 Unit!36041)))

(declare-fun b!1097448 () Bool)

(assert (=> b!1097448 (= e!626391 (not call!45788))))

(declare-fun bm!45786 () Bool)

(assert (=> bm!45786 (= call!45786 (contains!6390 lt!490599 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1097449 () Bool)

(declare-fun get!17622 (ValueCell!12849 V!41283) V!41283)

(assert (=> b!1097449 (= e!626387 (= (apply!978 lt!490599 (select (arr!34215 _keys!1070) #b00000000000000000000000000000000)) (get!17622 (select (arr!34216 _values!874) #b00000000000000000000000000000000) (dynLambda!2300 defaultEntry!882 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1097449 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!34753 _values!874)))))

(assert (=> b!1097449 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!34752 _keys!1070)))))

(assert (= (and d!130249 c!108323) b!1097443))

(assert (= (and d!130249 (not c!108323)) b!1097439))

(assert (= (and b!1097439 c!108324) b!1097438))

(assert (= (and b!1097439 (not c!108324)) b!1097429))

(assert (= (and b!1097429 c!108327) b!1097444))

(assert (= (and b!1097429 (not c!108327)) b!1097442))

(assert (= (or b!1097444 b!1097442) bm!45783))

(assert (= (or b!1097438 bm!45783) bm!45781))

(assert (= (or b!1097438 b!1097444) bm!45780))

(assert (= (or b!1097443 bm!45781) bm!45785))

(assert (= (or b!1097443 bm!45780) bm!45784))

(assert (= (and d!130249 res!732563) b!1097433))

(assert (= (and d!130249 c!108322) b!1097445))

(assert (= (and d!130249 (not c!108322)) b!1097447))

(assert (= (and d!130249 res!732557) b!1097432))

(assert (= (and b!1097432 res!732560) b!1097436))

(assert (= (and b!1097432 (not res!732564)) b!1097440))

(assert (= (and b!1097440 res!732559) b!1097449))

(assert (= (and b!1097432 res!732562) b!1097437))

(assert (= (and b!1097437 c!108325) b!1097446))

(assert (= (and b!1097437 (not c!108325)) b!1097430))

(assert (= (and b!1097446 res!732561) b!1097435))

(assert (= (or b!1097446 b!1097430) bm!45786))

(assert (= (and b!1097437 res!732556) b!1097431))

(assert (= (and b!1097431 c!108326) b!1097434))

(assert (= (and b!1097431 (not c!108326)) b!1097448))

(assert (= (and b!1097434 res!732558) b!1097441))

(assert (= (or b!1097434 b!1097448) bm!45782))

(declare-fun b_lambda!17761 () Bool)

(assert (=> (not b_lambda!17761) (not b!1097449)))

(assert (=> b!1097449 t!34150))

(declare-fun b_and!36823 () Bool)

(assert (= b_and!36817 (and (=> t!34150 result!16397) b_and!36823)))

(declare-fun m!1017033 () Bool)

(assert (=> b!1097443 m!1017033))

(declare-fun m!1017035 () Bool)

(assert (=> bm!45786 m!1017035))

(assert (=> b!1097436 m!1017019))

(assert (=> b!1097436 m!1017019))

(assert (=> b!1097436 m!1017021))

(declare-fun m!1017037 () Bool)

(assert (=> b!1097445 m!1017037))

(declare-fun m!1017039 () Bool)

(assert (=> b!1097445 m!1017039))

(declare-fun m!1017041 () Bool)

(assert (=> b!1097445 m!1017041))

(declare-fun m!1017043 () Bool)

(assert (=> b!1097445 m!1017043))

(declare-fun m!1017045 () Bool)

(assert (=> b!1097445 m!1017045))

(declare-fun m!1017047 () Bool)

(assert (=> b!1097445 m!1017047))

(declare-fun m!1017049 () Bool)

(assert (=> b!1097445 m!1017049))

(declare-fun m!1017051 () Bool)

(assert (=> b!1097445 m!1017051))

(declare-fun m!1017053 () Bool)

(assert (=> b!1097445 m!1017053))

(declare-fun m!1017055 () Bool)

(assert (=> b!1097445 m!1017055))

(assert (=> b!1097445 m!1017047))

(declare-fun m!1017057 () Bool)

(assert (=> b!1097445 m!1017057))

(declare-fun m!1017059 () Bool)

(assert (=> b!1097445 m!1017059))

(assert (=> b!1097445 m!1017051))

(declare-fun m!1017061 () Bool)

(assert (=> b!1097445 m!1017061))

(assert (=> b!1097445 m!1017061))

(declare-fun m!1017063 () Bool)

(assert (=> b!1097445 m!1017063))

(declare-fun m!1017065 () Bool)

(assert (=> b!1097445 m!1017065))

(assert (=> b!1097445 m!1017019))

(assert (=> b!1097445 m!1017057))

(assert (=> b!1097445 m!1016945))

(assert (=> bm!45785 m!1016945))

(declare-fun m!1017067 () Bool)

(assert (=> bm!45782 m!1017067))

(declare-fun m!1017069 () Bool)

(assert (=> b!1097441 m!1017069))

(assert (=> b!1097433 m!1017019))

(assert (=> b!1097433 m!1017019))

(assert (=> b!1097433 m!1017021))

(assert (=> d!130249 m!1016965))

(assert (=> b!1097449 m!1017019))

(declare-fun m!1017071 () Bool)

(assert (=> b!1097449 m!1017071))

(assert (=> b!1097449 m!1016935))

(assert (=> b!1097449 m!1017019))

(declare-fun m!1017073 () Bool)

(assert (=> b!1097449 m!1017073))

(assert (=> b!1097449 m!1016935))

(declare-fun m!1017075 () Bool)

(assert (=> b!1097449 m!1017075))

(assert (=> b!1097449 m!1017073))

(assert (=> b!1097440 m!1017019))

(assert (=> b!1097440 m!1017019))

(declare-fun m!1017077 () Bool)

(assert (=> b!1097440 m!1017077))

(declare-fun m!1017079 () Bool)

(assert (=> b!1097435 m!1017079))

(declare-fun m!1017081 () Bool)

(assert (=> bm!45784 m!1017081))

(assert (=> b!1097319 d!130249))

(declare-fun d!130251 () Bool)

(declare-fun lt!490607 () ListLongMap!15333)

(assert (=> d!130251 (not (contains!6390 lt!490607 k0!904))))

(declare-fun removeStrictlySorted!78 (List!24031 (_ BitVec 64)) List!24031)

(assert (=> d!130251 (= lt!490607 (ListLongMap!15334 (removeStrictlySorted!78 (toList!7682 lt!490497) k0!904)))))

(assert (=> d!130251 (= (-!929 lt!490497 k0!904) lt!490607)))

(declare-fun bs!32250 () Bool)

(assert (= bs!32250 d!130251))

(declare-fun m!1017083 () Bool)

(assert (=> bs!32250 m!1017083))

(declare-fun m!1017085 () Bool)

(assert (=> bs!32250 m!1017085))

(assert (=> b!1097319 d!130251))

(declare-fun bm!45791 () Bool)

(declare-fun call!45795 () ListLongMap!15333)

(assert (=> bm!45791 (= call!45795 (getCurrentListMapNoExtraKeys!4169 (array!71095 (store (arr!34215 _keys!1070) i!650 #b1000000000000000000000000000000000000000000000000000000000000000) (size!34752 _keys!1070)) (array!71097 (store (arr!34216 _values!874) i!650 (ValueCellFull!12849 (dynLambda!2300 defaultEntry!882 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!34753 _values!874)) mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun b!1097456 () Bool)

(declare-fun e!626400 () Bool)

(declare-fun call!45794 () ListLongMap!15333)

(assert (=> b!1097456 (= e!626400 (= call!45795 call!45794))))

(assert (=> b!1097456 (and (bvsge i!650 #b00000000000000000000000000000000) (bvslt i!650 (size!34753 _values!874)))))

(declare-fun d!130253 () Bool)

(declare-fun e!626399 () Bool)

(assert (=> d!130253 e!626399))

(declare-fun res!732567 () Bool)

(assert (=> d!130253 (=> (not res!732567) (not e!626399))))

(assert (=> d!130253 (= res!732567 (and (or (not (bvsle #b00000000000000000000000000000000 i!650)) (and (bvsge i!650 #b00000000000000000000000000000000) (bvslt i!650 (size!34752 _keys!1070)))) (or (bvsle #b00000000000000000000000000000000 i!650) (and (bvsge i!650 #b00000000000000000000000000000000) (bvslt i!650 (size!34752 _keys!1070))))))))

(declare-fun lt!490610 () Unit!36037)

(declare-fun choose!1768 (array!71094 array!71096 (_ BitVec 32) (_ BitVec 32) V!41283 V!41283 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!36037)

(assert (=> d!130253 (= lt!490610 (choose!1768 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 i!650 k0!904 #b00000000000000000000000000000000 defaultEntry!882))))

(assert (=> d!130253 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvsle #b00000000000000000000000000000000 (size!34752 _keys!1070)))))

(assert (=> d!130253 (= (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!194 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 i!650 k0!904 #b00000000000000000000000000000000 defaultEntry!882) lt!490610)))

(declare-fun b!1097457 () Bool)

(assert (=> b!1097457 (= e!626399 e!626400)))

(declare-fun c!108330 () Bool)

(assert (=> b!1097457 (= c!108330 (bvsle #b00000000000000000000000000000000 i!650))))

(declare-fun b!1097458 () Bool)

(assert (=> b!1097458 (= e!626400 (= call!45795 (-!929 call!45794 k0!904)))))

(assert (=> b!1097458 (and (bvsge i!650 #b00000000000000000000000000000000) (bvslt i!650 (size!34753 _values!874)))))

(declare-fun bm!45792 () Bool)

(assert (=> bm!45792 (= call!45794 (getCurrentListMapNoExtraKeys!4169 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(assert (= (and d!130253 res!732567) b!1097457))

(assert (= (and b!1097457 c!108330) b!1097458))

(assert (= (and b!1097457 (not c!108330)) b!1097456))

(assert (= (or b!1097458 b!1097456) bm!45792))

(assert (= (or b!1097458 b!1097456) bm!45791))

(declare-fun b_lambda!17763 () Bool)

(assert (=> (not b_lambda!17763) (not bm!45791)))

(assert (=> bm!45791 t!34150))

(declare-fun b_and!36825 () Bool)

(assert (= b_and!36823 (and (=> t!34150 result!16397) b_and!36825)))

(assert (=> bm!45791 m!1016959))

(assert (=> bm!45791 m!1016935))

(assert (=> bm!45791 m!1016941))

(declare-fun m!1017087 () Bool)

(assert (=> bm!45791 m!1017087))

(declare-fun m!1017089 () Bool)

(assert (=> d!130253 m!1017089))

(declare-fun m!1017091 () Bool)

(assert (=> b!1097458 m!1017091))

(assert (=> bm!45792 m!1016945))

(assert (=> b!1097319 d!130253))

(declare-fun b!1097483 () Bool)

(declare-fun lt!490631 () Unit!36037)

(declare-fun lt!490626 () Unit!36037)

(assert (=> b!1097483 (= lt!490631 lt!490626)))

(declare-fun lt!490629 () V!41283)

(declare-fun lt!490630 () (_ BitVec 64))

(declare-fun lt!490627 () ListLongMap!15333)

(declare-fun lt!490628 () (_ BitVec 64))

(assert (=> b!1097483 (not (contains!6390 (+!3317 lt!490627 (tuple2!17353 lt!490630 lt!490629)) lt!490628))))

(declare-fun addStillNotContains!273 (ListLongMap!15333 (_ BitVec 64) V!41283 (_ BitVec 64)) Unit!36037)

(assert (=> b!1097483 (= lt!490626 (addStillNotContains!273 lt!490627 lt!490630 lt!490629 lt!490628))))

(assert (=> b!1097483 (= lt!490628 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!1097483 (= lt!490629 (get!17622 (select (arr!34216 lt!490496) #b00000000000000000000000000000000) (dynLambda!2300 defaultEntry!882 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!1097483 (= lt!490630 (select (arr!34215 lt!490494) #b00000000000000000000000000000000))))

(declare-fun call!45798 () ListLongMap!15333)

(assert (=> b!1097483 (= lt!490627 call!45798)))

(declare-fun e!626416 () ListLongMap!15333)

(assert (=> b!1097483 (= e!626416 (+!3317 call!45798 (tuple2!17353 (select (arr!34215 lt!490494) #b00000000000000000000000000000000) (get!17622 (select (arr!34216 lt!490496) #b00000000000000000000000000000000) (dynLambda!2300 defaultEntry!882 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!1097484 () Bool)

(declare-fun e!626418 () ListLongMap!15333)

(assert (=> b!1097484 (= e!626418 e!626416)))

(declare-fun c!108340 () Bool)

(assert (=> b!1097484 (= c!108340 (validKeyInArray!0 (select (arr!34215 lt!490494) #b00000000000000000000000000000000)))))

(declare-fun b!1097485 () Bool)

(declare-fun e!626421 () Bool)

(declare-fun e!626415 () Bool)

(assert (=> b!1097485 (= e!626421 e!626415)))

(declare-fun c!108342 () Bool)

(declare-fun e!626417 () Bool)

(assert (=> b!1097485 (= c!108342 e!626417)))

(declare-fun res!732577 () Bool)

(assert (=> b!1097485 (=> (not res!732577) (not e!626417))))

(assert (=> b!1097485 (= res!732577 (bvslt #b00000000000000000000000000000000 (size!34752 lt!490494)))))

(declare-fun d!130255 () Bool)

(assert (=> d!130255 e!626421))

(declare-fun res!732579 () Bool)

(assert (=> d!130255 (=> (not res!732579) (not e!626421))))

(declare-fun lt!490625 () ListLongMap!15333)

(assert (=> d!130255 (= res!732579 (not (contains!6390 lt!490625 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!130255 (= lt!490625 e!626418)))

(declare-fun c!108339 () Bool)

(assert (=> d!130255 (= c!108339 (bvsge #b00000000000000000000000000000000 (size!34752 lt!490494)))))

(assert (=> d!130255 (validMask!0 mask!1414)))

(assert (=> d!130255 (= (getCurrentListMapNoExtraKeys!4169 lt!490494 lt!490496 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882) lt!490625)))

(declare-fun b!1097486 () Bool)

(declare-fun e!626419 () Bool)

(assert (=> b!1097486 (= e!626415 e!626419)))

(assert (=> b!1097486 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!34752 lt!490494)))))

(declare-fun res!732576 () Bool)

(assert (=> b!1097486 (= res!732576 (contains!6390 lt!490625 (select (arr!34215 lt!490494) #b00000000000000000000000000000000)))))

(assert (=> b!1097486 (=> (not res!732576) (not e!626419))))

(declare-fun bm!45795 () Bool)

(assert (=> bm!45795 (= call!45798 (getCurrentListMapNoExtraKeys!4169 lt!490494 lt!490496 mask!1414 extraKeys!811 zeroValue!831 minValue!831 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) defaultEntry!882))))

(declare-fun b!1097487 () Bool)

(declare-fun e!626420 () Bool)

(assert (=> b!1097487 (= e!626415 e!626420)))

(declare-fun c!108341 () Bool)

(assert (=> b!1097487 (= c!108341 (bvslt #b00000000000000000000000000000000 (size!34752 lt!490494)))))

(declare-fun b!1097488 () Bool)

(assert (=> b!1097488 (= e!626416 call!45798)))

(declare-fun b!1097489 () Bool)

(assert (=> b!1097489 (= e!626417 (validKeyInArray!0 (select (arr!34215 lt!490494) #b00000000000000000000000000000000)))))

(assert (=> b!1097489 (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000)))

(declare-fun b!1097490 () Bool)

(assert (=> b!1097490 (= e!626420 (= lt!490625 (getCurrentListMapNoExtraKeys!4169 lt!490494 lt!490496 mask!1414 extraKeys!811 zeroValue!831 minValue!831 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) defaultEntry!882)))))

(declare-fun b!1097491 () Bool)

(declare-fun res!732578 () Bool)

(assert (=> b!1097491 (=> (not res!732578) (not e!626421))))

(assert (=> b!1097491 (= res!732578 (not (contains!6390 lt!490625 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1097492 () Bool)

(assert (=> b!1097492 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!34752 lt!490494)))))

(assert (=> b!1097492 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!34753 lt!490496)))))

(assert (=> b!1097492 (= e!626419 (= (apply!978 lt!490625 (select (arr!34215 lt!490494) #b00000000000000000000000000000000)) (get!17622 (select (arr!34216 lt!490496) #b00000000000000000000000000000000) (dynLambda!2300 defaultEntry!882 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1097493 () Bool)

(assert (=> b!1097493 (= e!626418 (ListLongMap!15334 Nil!24028))))

(declare-fun b!1097494 () Bool)

(declare-fun isEmpty!964 (ListLongMap!15333) Bool)

(assert (=> b!1097494 (= e!626420 (isEmpty!964 lt!490625))))

(assert (= (and d!130255 c!108339) b!1097493))

(assert (= (and d!130255 (not c!108339)) b!1097484))

(assert (= (and b!1097484 c!108340) b!1097483))

(assert (= (and b!1097484 (not c!108340)) b!1097488))

(assert (= (or b!1097483 b!1097488) bm!45795))

(assert (= (and d!130255 res!732579) b!1097491))

(assert (= (and b!1097491 res!732578) b!1097485))

(assert (= (and b!1097485 res!732577) b!1097489))

(assert (= (and b!1097485 c!108342) b!1097486))

(assert (= (and b!1097485 (not c!108342)) b!1097487))

(assert (= (and b!1097486 res!732576) b!1097492))

(assert (= (and b!1097487 c!108341) b!1097490))

(assert (= (and b!1097487 (not c!108341)) b!1097494))

(declare-fun b_lambda!17765 () Bool)

(assert (=> (not b_lambda!17765) (not b!1097483)))

(assert (=> b!1097483 t!34150))

(declare-fun b_and!36827 () Bool)

(assert (= b_and!36825 (and (=> t!34150 result!16397) b_and!36827)))

(declare-fun b_lambda!17767 () Bool)

(assert (=> (not b_lambda!17767) (not b!1097492)))

(assert (=> b!1097492 t!34150))

(declare-fun b_and!36829 () Bool)

(assert (= b_and!36827 (and (=> t!34150 result!16397) b_and!36829)))

(declare-fun m!1017093 () Bool)

(assert (=> b!1097489 m!1017093))

(assert (=> b!1097489 m!1017093))

(declare-fun m!1017095 () Bool)

(assert (=> b!1097489 m!1017095))

(declare-fun m!1017097 () Bool)

(assert (=> b!1097494 m!1017097))

(assert (=> b!1097492 m!1017093))

(declare-fun m!1017099 () Bool)

(assert (=> b!1097492 m!1017099))

(declare-fun m!1017101 () Bool)

(assert (=> b!1097492 m!1017101))

(assert (=> b!1097492 m!1017101))

(assert (=> b!1097492 m!1016935))

(declare-fun m!1017103 () Bool)

(assert (=> b!1097492 m!1017103))

(assert (=> b!1097492 m!1016935))

(assert (=> b!1097492 m!1017093))

(declare-fun m!1017105 () Bool)

(assert (=> b!1097483 m!1017105))

(declare-fun m!1017107 () Bool)

(assert (=> b!1097483 m!1017107))

(assert (=> b!1097483 m!1017101))

(assert (=> b!1097483 m!1017101))

(assert (=> b!1097483 m!1016935))

(assert (=> b!1097483 m!1017103))

(assert (=> b!1097483 m!1016935))

(assert (=> b!1097483 m!1017105))

(declare-fun m!1017109 () Bool)

(assert (=> b!1097483 m!1017109))

(assert (=> b!1097483 m!1017093))

(declare-fun m!1017111 () Bool)

(assert (=> b!1097483 m!1017111))

(declare-fun m!1017113 () Bool)

(assert (=> bm!45795 m!1017113))

(assert (=> b!1097486 m!1017093))

(assert (=> b!1097486 m!1017093))

(declare-fun m!1017115 () Bool)

(assert (=> b!1097486 m!1017115))

(declare-fun m!1017117 () Bool)

(assert (=> b!1097491 m!1017117))

(assert (=> b!1097490 m!1017113))

(assert (=> b!1097484 m!1017093))

(assert (=> b!1097484 m!1017093))

(assert (=> b!1097484 m!1017095))

(declare-fun m!1017119 () Bool)

(assert (=> d!130255 m!1017119))

(assert (=> d!130255 m!1016965))

(assert (=> b!1097319 d!130255))

(declare-fun bm!45796 () Bool)

(declare-fun call!45803 () ListLongMap!15333)

(declare-fun call!45799 () ListLongMap!15333)

(assert (=> bm!45796 (= call!45803 call!45799)))

(declare-fun bm!45797 () Bool)

(declare-fun call!45801 () ListLongMap!15333)

(declare-fun call!45805 () ListLongMap!15333)

(assert (=> bm!45797 (= call!45801 call!45805)))

(declare-fun b!1097495 () Bool)

(declare-fun c!108348 () Bool)

(assert (=> b!1097495 (= c!108348 (and (not (= (bvand extraKeys!811 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeys!811 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun e!626426 () ListLongMap!15333)

(declare-fun e!626433 () ListLongMap!15333)

(assert (=> b!1097495 (= e!626426 e!626433)))

(declare-fun bm!45798 () Bool)

(declare-fun call!45804 () Bool)

(declare-fun lt!490648 () ListLongMap!15333)

(assert (=> bm!45798 (= call!45804 (contains!6390 lt!490648 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1097496 () Bool)

(declare-fun e!626422 () Bool)

(declare-fun call!45802 () Bool)

(assert (=> b!1097496 (= e!626422 (not call!45802))))

(declare-fun b!1097497 () Bool)

(declare-fun e!626432 () Bool)

(declare-fun e!626431 () Bool)

(assert (=> b!1097497 (= e!626432 e!626431)))

(declare-fun c!108347 () Bool)

(assert (=> b!1097497 (= c!108347 (not (= (bvand extraKeys!811 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1097498 () Bool)

(declare-fun res!732586 () Bool)

(assert (=> b!1097498 (=> (not res!732586) (not e!626432))))

(declare-fun e!626428 () Bool)

(assert (=> b!1097498 (= res!732586 e!626428)))

(declare-fun res!732588 () Bool)

(assert (=> b!1097498 (=> res!732588 e!626428)))

(declare-fun e!626434 () Bool)

(assert (=> b!1097498 (= res!732588 (not e!626434))))

(declare-fun res!732584 () Bool)

(assert (=> b!1097498 (=> (not res!732584) (not e!626434))))

(assert (=> b!1097498 (= res!732584 (bvslt #b00000000000000000000000000000000 (size!34752 lt!490494)))))

(declare-fun b!1097499 () Bool)

(declare-fun e!626429 () Bool)

(assert (=> b!1097499 (= e!626429 (validKeyInArray!0 (select (arr!34215 lt!490494) #b00000000000000000000000000000000)))))

(declare-fun bm!45799 () Bool)

(declare-fun call!45800 () ListLongMap!15333)

(assert (=> bm!45799 (= call!45800 call!45801)))

(declare-fun d!130257 () Bool)

(assert (=> d!130257 e!626432))

(declare-fun res!732581 () Bool)

(assert (=> d!130257 (=> (not res!732581) (not e!626432))))

(assert (=> d!130257 (= res!732581 (or (bvsge #b00000000000000000000000000000000 (size!34752 lt!490494)) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!34752 lt!490494)))))))

(declare-fun lt!490636 () ListLongMap!15333)

(assert (=> d!130257 (= lt!490648 lt!490636)))

(declare-fun lt!490639 () Unit!36037)

(declare-fun e!626424 () Unit!36037)

(assert (=> d!130257 (= lt!490639 e!626424)))

(declare-fun c!108343 () Bool)

(assert (=> d!130257 (= c!108343 e!626429)))

(declare-fun res!732587 () Bool)

(assert (=> d!130257 (=> (not res!732587) (not e!626429))))

(assert (=> d!130257 (= res!732587 (bvslt #b00000000000000000000000000000000 (size!34752 lt!490494)))))

(declare-fun e!626425 () ListLongMap!15333)

(assert (=> d!130257 (= lt!490636 e!626425)))

(declare-fun c!108344 () Bool)

(assert (=> d!130257 (= c!108344 (and (not (= (bvand extraKeys!811 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!811 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!130257 (validMask!0 mask!1414)))

(assert (=> d!130257 (= (getCurrentListMap!4382 lt!490494 lt!490496 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882) lt!490648)))

(declare-fun bm!45800 () Bool)

(declare-fun c!108345 () Bool)

(assert (=> bm!45800 (= call!45799 (+!3317 (ite c!108344 call!45805 (ite c!108345 call!45801 call!45800)) (ite (or c!108344 c!108345) (tuple2!17353 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!831) (tuple2!17353 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!831))))))

(declare-fun b!1097500 () Bool)

(declare-fun e!626423 () Bool)

(assert (=> b!1097500 (= e!626431 e!626423)))

(declare-fun res!732582 () Bool)

(assert (=> b!1097500 (= res!732582 call!45804)))

(assert (=> b!1097500 (=> (not res!732582) (not e!626423))))

(declare-fun b!1097501 () Bool)

(declare-fun e!626430 () Bool)

(assert (=> b!1097501 (= e!626430 (= (apply!978 lt!490648 #b0000000000000000000000000000000000000000000000000000000000000000) zeroValue!831))))

(declare-fun bm!45801 () Bool)

(assert (=> bm!45801 (= call!45805 (getCurrentListMapNoExtraKeys!4169 lt!490494 lt!490496 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun b!1097502 () Bool)

(assert (=> b!1097502 (= e!626434 (validKeyInArray!0 (select (arr!34215 lt!490494) #b00000000000000000000000000000000)))))

(declare-fun b!1097503 () Bool)

(declare-fun res!732580 () Bool)

(assert (=> b!1097503 (=> (not res!732580) (not e!626432))))

(assert (=> b!1097503 (= res!732580 e!626422)))

(declare-fun c!108346 () Bool)

(assert (=> b!1097503 (= c!108346 (not (= (bvand extraKeys!811 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!1097504 () Bool)

(assert (=> b!1097504 (= e!626426 call!45803)))

(declare-fun b!1097505 () Bool)

(assert (=> b!1097505 (= e!626425 e!626426)))

(assert (=> b!1097505 (= c!108345 (and (not (= (bvand extraKeys!811 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeys!811 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1097506 () Bool)

(declare-fun e!626427 () Bool)

(assert (=> b!1097506 (= e!626428 e!626427)))

(declare-fun res!732583 () Bool)

(assert (=> b!1097506 (=> (not res!732583) (not e!626427))))

(assert (=> b!1097506 (= res!732583 (contains!6390 lt!490648 (select (arr!34215 lt!490494) #b00000000000000000000000000000000)))))

(assert (=> b!1097506 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!34752 lt!490494)))))

(declare-fun b!1097507 () Bool)

(assert (=> b!1097507 (= e!626423 (= (apply!978 lt!490648 #b1000000000000000000000000000000000000000000000000000000000000000) minValue!831))))

(declare-fun b!1097508 () Bool)

(assert (=> b!1097508 (= e!626433 call!45800)))

(declare-fun b!1097509 () Bool)

(assert (=> b!1097509 (= e!626425 (+!3317 call!45799 (tuple2!17353 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!831)))))

(declare-fun b!1097510 () Bool)

(assert (=> b!1097510 (= e!626433 call!45803)))

(declare-fun b!1097511 () Bool)

(declare-fun lt!490632 () Unit!36037)

(assert (=> b!1097511 (= e!626424 lt!490632)))

(declare-fun lt!490651 () ListLongMap!15333)

(assert (=> b!1097511 (= lt!490651 (getCurrentListMapNoExtraKeys!4169 lt!490494 lt!490496 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun lt!490647 () (_ BitVec 64))

(assert (=> b!1097511 (= lt!490647 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!490633 () (_ BitVec 64))

(assert (=> b!1097511 (= lt!490633 (select (arr!34215 lt!490494) #b00000000000000000000000000000000))))

(declare-fun lt!490652 () Unit!36037)

(assert (=> b!1097511 (= lt!490652 (addStillContains!660 lt!490651 lt!490647 zeroValue!831 lt!490633))))

(assert (=> b!1097511 (contains!6390 (+!3317 lt!490651 (tuple2!17353 lt!490647 zeroValue!831)) lt!490633)))

(declare-fun lt!490634 () Unit!36037)

(assert (=> b!1097511 (= lt!490634 lt!490652)))

(declare-fun lt!490635 () ListLongMap!15333)

(assert (=> b!1097511 (= lt!490635 (getCurrentListMapNoExtraKeys!4169 lt!490494 lt!490496 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun lt!490646 () (_ BitVec 64))

(assert (=> b!1097511 (= lt!490646 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!490649 () (_ BitVec 64))

(assert (=> b!1097511 (= lt!490649 (select (arr!34215 lt!490494) #b00000000000000000000000000000000))))

(declare-fun lt!490653 () Unit!36037)

(assert (=> b!1097511 (= lt!490653 (addApplyDifferent!512 lt!490635 lt!490646 minValue!831 lt!490649))))

(assert (=> b!1097511 (= (apply!978 (+!3317 lt!490635 (tuple2!17353 lt!490646 minValue!831)) lt!490649) (apply!978 lt!490635 lt!490649))))

(declare-fun lt!490642 () Unit!36037)

(assert (=> b!1097511 (= lt!490642 lt!490653)))

(declare-fun lt!490644 () ListLongMap!15333)

(assert (=> b!1097511 (= lt!490644 (getCurrentListMapNoExtraKeys!4169 lt!490494 lt!490496 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun lt!490638 () (_ BitVec 64))

(assert (=> b!1097511 (= lt!490638 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!490645 () (_ BitVec 64))

(assert (=> b!1097511 (= lt!490645 (select (arr!34215 lt!490494) #b00000000000000000000000000000000))))

(declare-fun lt!490637 () Unit!36037)

(assert (=> b!1097511 (= lt!490637 (addApplyDifferent!512 lt!490644 lt!490638 zeroValue!831 lt!490645))))

(assert (=> b!1097511 (= (apply!978 (+!3317 lt!490644 (tuple2!17353 lt!490638 zeroValue!831)) lt!490645) (apply!978 lt!490644 lt!490645))))

(declare-fun lt!490641 () Unit!36037)

(assert (=> b!1097511 (= lt!490641 lt!490637)))

(declare-fun lt!490643 () ListLongMap!15333)

(assert (=> b!1097511 (= lt!490643 (getCurrentListMapNoExtraKeys!4169 lt!490494 lt!490496 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun lt!490650 () (_ BitVec 64))

(assert (=> b!1097511 (= lt!490650 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!490640 () (_ BitVec 64))

(assert (=> b!1097511 (= lt!490640 (select (arr!34215 lt!490494) #b00000000000000000000000000000000))))

(assert (=> b!1097511 (= lt!490632 (addApplyDifferent!512 lt!490643 lt!490650 minValue!831 lt!490640))))

(assert (=> b!1097511 (= (apply!978 (+!3317 lt!490643 (tuple2!17353 lt!490650 minValue!831)) lt!490640) (apply!978 lt!490643 lt!490640))))

(declare-fun b!1097512 () Bool)

(assert (=> b!1097512 (= e!626422 e!626430)))

(declare-fun res!732585 () Bool)

(assert (=> b!1097512 (= res!732585 call!45802)))

(assert (=> b!1097512 (=> (not res!732585) (not e!626430))))

(declare-fun b!1097513 () Bool)

(declare-fun Unit!36042 () Unit!36037)

(assert (=> b!1097513 (= e!626424 Unit!36042)))

(declare-fun b!1097514 () Bool)

(assert (=> b!1097514 (= e!626431 (not call!45804))))

(declare-fun bm!45802 () Bool)

(assert (=> bm!45802 (= call!45802 (contains!6390 lt!490648 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1097515 () Bool)

(assert (=> b!1097515 (= e!626427 (= (apply!978 lt!490648 (select (arr!34215 lt!490494) #b00000000000000000000000000000000)) (get!17622 (select (arr!34216 lt!490496) #b00000000000000000000000000000000) (dynLambda!2300 defaultEntry!882 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1097515 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!34753 lt!490496)))))

(assert (=> b!1097515 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!34752 lt!490494)))))

(assert (= (and d!130257 c!108344) b!1097509))

(assert (= (and d!130257 (not c!108344)) b!1097505))

(assert (= (and b!1097505 c!108345) b!1097504))

(assert (= (and b!1097505 (not c!108345)) b!1097495))

(assert (= (and b!1097495 c!108348) b!1097510))

(assert (= (and b!1097495 (not c!108348)) b!1097508))

(assert (= (or b!1097510 b!1097508) bm!45799))

(assert (= (or b!1097504 bm!45799) bm!45797))

(assert (= (or b!1097504 b!1097510) bm!45796))

(assert (= (or b!1097509 bm!45797) bm!45801))

(assert (= (or b!1097509 bm!45796) bm!45800))

(assert (= (and d!130257 res!732587) b!1097499))

(assert (= (and d!130257 c!108343) b!1097511))

(assert (= (and d!130257 (not c!108343)) b!1097513))

(assert (= (and d!130257 res!732581) b!1097498))

(assert (= (and b!1097498 res!732584) b!1097502))

(assert (= (and b!1097498 (not res!732588)) b!1097506))

(assert (= (and b!1097506 res!732583) b!1097515))

(assert (= (and b!1097498 res!732586) b!1097503))

(assert (= (and b!1097503 c!108346) b!1097512))

(assert (= (and b!1097503 (not c!108346)) b!1097496))

(assert (= (and b!1097512 res!732585) b!1097501))

(assert (= (or b!1097512 b!1097496) bm!45802))

(assert (= (and b!1097503 res!732580) b!1097497))

(assert (= (and b!1097497 c!108347) b!1097500))

(assert (= (and b!1097497 (not c!108347)) b!1097514))

(assert (= (and b!1097500 res!732582) b!1097507))

(assert (= (or b!1097500 b!1097514) bm!45798))

(declare-fun b_lambda!17769 () Bool)

(assert (=> (not b_lambda!17769) (not b!1097515)))

(assert (=> b!1097515 t!34150))

(declare-fun b_and!36831 () Bool)

(assert (= b_and!36829 (and (=> t!34150 result!16397) b_and!36831)))

(declare-fun m!1017121 () Bool)

(assert (=> b!1097509 m!1017121))

(declare-fun m!1017123 () Bool)

(assert (=> bm!45802 m!1017123))

(assert (=> b!1097502 m!1017093))

(assert (=> b!1097502 m!1017093))

(assert (=> b!1097502 m!1017095))

(declare-fun m!1017125 () Bool)

(assert (=> b!1097511 m!1017125))

(declare-fun m!1017127 () Bool)

(assert (=> b!1097511 m!1017127))

(declare-fun m!1017129 () Bool)

(assert (=> b!1097511 m!1017129))

(declare-fun m!1017131 () Bool)

(assert (=> b!1097511 m!1017131))

(declare-fun m!1017133 () Bool)

(assert (=> b!1097511 m!1017133))

(declare-fun m!1017135 () Bool)

(assert (=> b!1097511 m!1017135))

(declare-fun m!1017137 () Bool)

(assert (=> b!1097511 m!1017137))

(declare-fun m!1017139 () Bool)

(assert (=> b!1097511 m!1017139))

(declare-fun m!1017141 () Bool)

(assert (=> b!1097511 m!1017141))

(declare-fun m!1017143 () Bool)

(assert (=> b!1097511 m!1017143))

(assert (=> b!1097511 m!1017135))

(declare-fun m!1017145 () Bool)

(assert (=> b!1097511 m!1017145))

(declare-fun m!1017147 () Bool)

(assert (=> b!1097511 m!1017147))

(assert (=> b!1097511 m!1017139))

(declare-fun m!1017149 () Bool)

(assert (=> b!1097511 m!1017149))

(assert (=> b!1097511 m!1017149))

(declare-fun m!1017151 () Bool)

(assert (=> b!1097511 m!1017151))

(declare-fun m!1017153 () Bool)

(assert (=> b!1097511 m!1017153))

(assert (=> b!1097511 m!1017093))

(assert (=> b!1097511 m!1017145))

(assert (=> b!1097511 m!1016937))

(assert (=> bm!45801 m!1016937))

(declare-fun m!1017155 () Bool)

(assert (=> bm!45798 m!1017155))

(declare-fun m!1017157 () Bool)

(assert (=> b!1097507 m!1017157))

(assert (=> b!1097499 m!1017093))

(assert (=> b!1097499 m!1017093))

(assert (=> b!1097499 m!1017095))

(assert (=> d!130257 m!1016965))

(assert (=> b!1097515 m!1017093))

(declare-fun m!1017159 () Bool)

(assert (=> b!1097515 m!1017159))

(assert (=> b!1097515 m!1016935))

(assert (=> b!1097515 m!1017093))

(assert (=> b!1097515 m!1017101))

(assert (=> b!1097515 m!1016935))

(assert (=> b!1097515 m!1017103))

(assert (=> b!1097515 m!1017101))

(assert (=> b!1097506 m!1017093))

(assert (=> b!1097506 m!1017093))

(declare-fun m!1017161 () Bool)

(assert (=> b!1097506 m!1017161))

(declare-fun m!1017163 () Bool)

(assert (=> b!1097501 m!1017163))

(declare-fun m!1017165 () Bool)

(assert (=> bm!45800 m!1017165))

(assert (=> b!1097319 d!130257))

(declare-fun b!1097516 () Bool)

(declare-fun lt!490660 () Unit!36037)

(declare-fun lt!490655 () Unit!36037)

(assert (=> b!1097516 (= lt!490660 lt!490655)))

(declare-fun lt!490659 () (_ BitVec 64))

(declare-fun lt!490656 () ListLongMap!15333)

(declare-fun lt!490658 () V!41283)

(declare-fun lt!490657 () (_ BitVec 64))

(assert (=> b!1097516 (not (contains!6390 (+!3317 lt!490656 (tuple2!17353 lt!490659 lt!490658)) lt!490657))))

(assert (=> b!1097516 (= lt!490655 (addStillNotContains!273 lt!490656 lt!490659 lt!490658 lt!490657))))

(assert (=> b!1097516 (= lt!490657 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!1097516 (= lt!490658 (get!17622 (select (arr!34216 _values!874) #b00000000000000000000000000000000) (dynLambda!2300 defaultEntry!882 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!1097516 (= lt!490659 (select (arr!34215 _keys!1070) #b00000000000000000000000000000000))))

(declare-fun call!45806 () ListLongMap!15333)

(assert (=> b!1097516 (= lt!490656 call!45806)))

(declare-fun e!626436 () ListLongMap!15333)

(assert (=> b!1097516 (= e!626436 (+!3317 call!45806 (tuple2!17353 (select (arr!34215 _keys!1070) #b00000000000000000000000000000000) (get!17622 (select (arr!34216 _values!874) #b00000000000000000000000000000000) (dynLambda!2300 defaultEntry!882 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!1097517 () Bool)

(declare-fun e!626438 () ListLongMap!15333)

(assert (=> b!1097517 (= e!626438 e!626436)))

(declare-fun c!108350 () Bool)

(assert (=> b!1097517 (= c!108350 (validKeyInArray!0 (select (arr!34215 _keys!1070) #b00000000000000000000000000000000)))))

(declare-fun b!1097518 () Bool)

(declare-fun e!626441 () Bool)

(declare-fun e!626435 () Bool)

(assert (=> b!1097518 (= e!626441 e!626435)))

(declare-fun c!108352 () Bool)

(declare-fun e!626437 () Bool)

(assert (=> b!1097518 (= c!108352 e!626437)))

(declare-fun res!732590 () Bool)

(assert (=> b!1097518 (=> (not res!732590) (not e!626437))))

(assert (=> b!1097518 (= res!732590 (bvslt #b00000000000000000000000000000000 (size!34752 _keys!1070)))))

(declare-fun d!130259 () Bool)

(assert (=> d!130259 e!626441))

(declare-fun res!732592 () Bool)

(assert (=> d!130259 (=> (not res!732592) (not e!626441))))

(declare-fun lt!490654 () ListLongMap!15333)

(assert (=> d!130259 (= res!732592 (not (contains!6390 lt!490654 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!130259 (= lt!490654 e!626438)))

(declare-fun c!108349 () Bool)

(assert (=> d!130259 (= c!108349 (bvsge #b00000000000000000000000000000000 (size!34752 _keys!1070)))))

(assert (=> d!130259 (validMask!0 mask!1414)))

(assert (=> d!130259 (= (getCurrentListMapNoExtraKeys!4169 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882) lt!490654)))

(declare-fun b!1097519 () Bool)

(declare-fun e!626439 () Bool)

(assert (=> b!1097519 (= e!626435 e!626439)))

(assert (=> b!1097519 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!34752 _keys!1070)))))

(declare-fun res!732589 () Bool)

(assert (=> b!1097519 (= res!732589 (contains!6390 lt!490654 (select (arr!34215 _keys!1070) #b00000000000000000000000000000000)))))

(assert (=> b!1097519 (=> (not res!732589) (not e!626439))))

(declare-fun bm!45803 () Bool)

(assert (=> bm!45803 (= call!45806 (getCurrentListMapNoExtraKeys!4169 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) defaultEntry!882))))

(declare-fun b!1097520 () Bool)

(declare-fun e!626440 () Bool)

(assert (=> b!1097520 (= e!626435 e!626440)))

(declare-fun c!108351 () Bool)

(assert (=> b!1097520 (= c!108351 (bvslt #b00000000000000000000000000000000 (size!34752 _keys!1070)))))

(declare-fun b!1097521 () Bool)

(assert (=> b!1097521 (= e!626436 call!45806)))

(declare-fun b!1097522 () Bool)

(assert (=> b!1097522 (= e!626437 (validKeyInArray!0 (select (arr!34215 _keys!1070) #b00000000000000000000000000000000)))))

(assert (=> b!1097522 (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000)))

(declare-fun b!1097523 () Bool)

(assert (=> b!1097523 (= e!626440 (= lt!490654 (getCurrentListMapNoExtraKeys!4169 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) defaultEntry!882)))))

(declare-fun b!1097524 () Bool)

(declare-fun res!732591 () Bool)

(assert (=> b!1097524 (=> (not res!732591) (not e!626441))))

(assert (=> b!1097524 (= res!732591 (not (contains!6390 lt!490654 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1097525 () Bool)

(assert (=> b!1097525 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!34752 _keys!1070)))))

(assert (=> b!1097525 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!34753 _values!874)))))

(assert (=> b!1097525 (= e!626439 (= (apply!978 lt!490654 (select (arr!34215 _keys!1070) #b00000000000000000000000000000000)) (get!17622 (select (arr!34216 _values!874) #b00000000000000000000000000000000) (dynLambda!2300 defaultEntry!882 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1097526 () Bool)

(assert (=> b!1097526 (= e!626438 (ListLongMap!15334 Nil!24028))))

(declare-fun b!1097527 () Bool)

(assert (=> b!1097527 (= e!626440 (isEmpty!964 lt!490654))))

(assert (= (and d!130259 c!108349) b!1097526))

(assert (= (and d!130259 (not c!108349)) b!1097517))

(assert (= (and b!1097517 c!108350) b!1097516))

(assert (= (and b!1097517 (not c!108350)) b!1097521))

(assert (= (or b!1097516 b!1097521) bm!45803))

(assert (= (and d!130259 res!732592) b!1097524))

(assert (= (and b!1097524 res!732591) b!1097518))

(assert (= (and b!1097518 res!732590) b!1097522))

(assert (= (and b!1097518 c!108352) b!1097519))

(assert (= (and b!1097518 (not c!108352)) b!1097520))

(assert (= (and b!1097519 res!732589) b!1097525))

(assert (= (and b!1097520 c!108351) b!1097523))

(assert (= (and b!1097520 (not c!108351)) b!1097527))

(declare-fun b_lambda!17771 () Bool)

(assert (=> (not b_lambda!17771) (not b!1097516)))

(assert (=> b!1097516 t!34150))

(declare-fun b_and!36833 () Bool)

(assert (= b_and!36831 (and (=> t!34150 result!16397) b_and!36833)))

(declare-fun b_lambda!17773 () Bool)

(assert (=> (not b_lambda!17773) (not b!1097525)))

(assert (=> b!1097525 t!34150))

(declare-fun b_and!36835 () Bool)

(assert (= b_and!36833 (and (=> t!34150 result!16397) b_and!36835)))

(assert (=> b!1097522 m!1017019))

(assert (=> b!1097522 m!1017019))

(assert (=> b!1097522 m!1017021))

(declare-fun m!1017167 () Bool)

(assert (=> b!1097527 m!1017167))

(assert (=> b!1097525 m!1017019))

(declare-fun m!1017169 () Bool)

(assert (=> b!1097525 m!1017169))

(assert (=> b!1097525 m!1017073))

(assert (=> b!1097525 m!1017073))

(assert (=> b!1097525 m!1016935))

(assert (=> b!1097525 m!1017075))

(assert (=> b!1097525 m!1016935))

(assert (=> b!1097525 m!1017019))

(declare-fun m!1017171 () Bool)

(assert (=> b!1097516 m!1017171))

(declare-fun m!1017173 () Bool)

(assert (=> b!1097516 m!1017173))

(assert (=> b!1097516 m!1017073))

(assert (=> b!1097516 m!1017073))

(assert (=> b!1097516 m!1016935))

(assert (=> b!1097516 m!1017075))

(assert (=> b!1097516 m!1016935))

(assert (=> b!1097516 m!1017171))

(declare-fun m!1017175 () Bool)

(assert (=> b!1097516 m!1017175))

(assert (=> b!1097516 m!1017019))

(declare-fun m!1017177 () Bool)

(assert (=> b!1097516 m!1017177))

(declare-fun m!1017179 () Bool)

(assert (=> bm!45803 m!1017179))

(assert (=> b!1097519 m!1017019))

(assert (=> b!1097519 m!1017019))

(declare-fun m!1017181 () Bool)

(assert (=> b!1097519 m!1017181))

(declare-fun m!1017183 () Bool)

(assert (=> b!1097524 m!1017183))

(assert (=> b!1097523 m!1017179))

(assert (=> b!1097517 m!1017019))

(assert (=> b!1097517 m!1017019))

(assert (=> b!1097517 m!1017021))

(declare-fun m!1017185 () Bool)

(assert (=> d!130259 m!1017185))

(assert (=> d!130259 m!1016965))

(assert (=> b!1097319 d!130259))

(declare-fun d!130261 () Bool)

(assert (=> d!130261 (arrayContainsKey!0 _keys!1070 k0!904 #b00000000000000000000000000000000)))

(declare-fun lt!490663 () Unit!36037)

(declare-fun choose!13 (array!71094 (_ BitVec 64) (_ BitVec 32)) Unit!36037)

(assert (=> d!130261 (= lt!490663 (choose!13 _keys!1070 k0!904 i!650))))

(assert (=> d!130261 (bvsge i!650 #b00000000000000000000000000000000)))

(assert (=> d!130261 (= (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1070 k0!904 i!650) lt!490663)))

(declare-fun bs!32251 () Bool)

(assert (= bs!32251 d!130261))

(assert (=> bs!32251 m!1016943))

(declare-fun m!1017187 () Bool)

(assert (=> bs!32251 m!1017187))

(assert (=> b!1097319 d!130261))

(declare-fun d!130263 () Bool)

(assert (=> d!130263 (= (validKeyInArray!0 k0!904) (and (not (= k0!904 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!904 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1097320 d!130263))

(declare-fun b!1097538 () Bool)

(declare-fun e!626452 () Bool)

(declare-fun e!626451 () Bool)

(assert (=> b!1097538 (= e!626452 e!626451)))

(declare-fun c!108355 () Bool)

(assert (=> b!1097538 (= c!108355 (validKeyInArray!0 (select (arr!34215 lt!490494) #b00000000000000000000000000000000)))))

(declare-fun d!130265 () Bool)

(declare-fun res!732600 () Bool)

(declare-fun e!626453 () Bool)

(assert (=> d!130265 (=> res!732600 e!626453)))

(assert (=> d!130265 (= res!732600 (bvsge #b00000000000000000000000000000000 (size!34752 lt!490494)))))

(assert (=> d!130265 (= (arrayNoDuplicates!0 lt!490494 #b00000000000000000000000000000000 Nil!24029) e!626453)))

(declare-fun b!1097539 () Bool)

(assert (=> b!1097539 (= e!626453 e!626452)))

(declare-fun res!732601 () Bool)

(assert (=> b!1097539 (=> (not res!732601) (not e!626452))))

(declare-fun e!626450 () Bool)

(assert (=> b!1097539 (= res!732601 (not e!626450))))

(declare-fun res!732599 () Bool)

(assert (=> b!1097539 (=> (not res!732599) (not e!626450))))

(assert (=> b!1097539 (= res!732599 (validKeyInArray!0 (select (arr!34215 lt!490494) #b00000000000000000000000000000000)))))

(declare-fun b!1097540 () Bool)

(declare-fun call!45809 () Bool)

(assert (=> b!1097540 (= e!626451 call!45809)))

(declare-fun b!1097541 () Bool)

(declare-fun contains!6391 (List!24032 (_ BitVec 64)) Bool)

(assert (=> b!1097541 (= e!626450 (contains!6391 Nil!24029 (select (arr!34215 lt!490494) #b00000000000000000000000000000000)))))

(declare-fun bm!45806 () Bool)

(assert (=> bm!45806 (= call!45809 (arrayNoDuplicates!0 lt!490494 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!108355 (Cons!24028 (select (arr!34215 lt!490494) #b00000000000000000000000000000000) Nil!24029) Nil!24029)))))

(declare-fun b!1097542 () Bool)

(assert (=> b!1097542 (= e!626451 call!45809)))

(assert (= (and d!130265 (not res!732600)) b!1097539))

(assert (= (and b!1097539 res!732599) b!1097541))

(assert (= (and b!1097539 res!732601) b!1097538))

(assert (= (and b!1097538 c!108355) b!1097540))

(assert (= (and b!1097538 (not c!108355)) b!1097542))

(assert (= (or b!1097540 b!1097542) bm!45806))

(assert (=> b!1097538 m!1017093))

(assert (=> b!1097538 m!1017093))

(assert (=> b!1097538 m!1017095))

(assert (=> b!1097539 m!1017093))

(assert (=> b!1097539 m!1017093))

(assert (=> b!1097539 m!1017095))

(assert (=> b!1097541 m!1017093))

(assert (=> b!1097541 m!1017093))

(declare-fun m!1017189 () Bool)

(assert (=> b!1097541 m!1017189))

(assert (=> bm!45806 m!1017093))

(declare-fun m!1017191 () Bool)

(assert (=> bm!45806 m!1017191))

(assert (=> b!1097324 d!130265))

(declare-fun d!130267 () Bool)

(declare-fun e!626456 () Bool)

(assert (=> d!130267 e!626456))

(declare-fun res!732606 () Bool)

(assert (=> d!130267 (=> (not res!732606) (not e!626456))))

(declare-fun lt!490672 () ListLongMap!15333)

(assert (=> d!130267 (= res!732606 (contains!6390 lt!490672 (_1!8686 (tuple2!17353 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!831))))))

(declare-fun lt!490675 () List!24031)

(assert (=> d!130267 (= lt!490672 (ListLongMap!15334 lt!490675))))

(declare-fun lt!490674 () Unit!36037)

(declare-fun lt!490673 () Unit!36037)

(assert (=> d!130267 (= lt!490674 lt!490673)))

(declare-datatypes ((Option!672 0))(
  ( (Some!671 (v!16239 V!41283)) (None!670) )
))
(declare-fun getValueByKey!621 (List!24031 (_ BitVec 64)) Option!672)

(assert (=> d!130267 (= (getValueByKey!621 lt!490675 (_1!8686 (tuple2!17353 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!831))) (Some!671 (_2!8686 (tuple2!17353 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!831))))))

(declare-fun lemmaContainsTupThenGetReturnValue!296 (List!24031 (_ BitVec 64) V!41283) Unit!36037)

(assert (=> d!130267 (= lt!490673 (lemmaContainsTupThenGetReturnValue!296 lt!490675 (_1!8686 (tuple2!17353 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!831)) (_2!8686 (tuple2!17353 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!831))))))

(declare-fun insertStrictlySorted!388 (List!24031 (_ BitVec 64) V!41283) List!24031)

(assert (=> d!130267 (= lt!490675 (insertStrictlySorted!388 (toList!7682 (+!3317 lt!490498 (tuple2!17353 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!831))) (_1!8686 (tuple2!17353 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!831)) (_2!8686 (tuple2!17353 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!831))))))

(assert (=> d!130267 (= (+!3317 (+!3317 lt!490498 (tuple2!17353 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!831)) (tuple2!17353 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!831)) lt!490672)))

(declare-fun b!1097547 () Bool)

(declare-fun res!732607 () Bool)

(assert (=> b!1097547 (=> (not res!732607) (not e!626456))))

(assert (=> b!1097547 (= res!732607 (= (getValueByKey!621 (toList!7682 lt!490672) (_1!8686 (tuple2!17353 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!831))) (Some!671 (_2!8686 (tuple2!17353 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!831)))))))

(declare-fun b!1097548 () Bool)

(declare-fun contains!6392 (List!24031 tuple2!17352) Bool)

(assert (=> b!1097548 (= e!626456 (contains!6392 (toList!7682 lt!490672) (tuple2!17353 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!831)))))

(assert (= (and d!130267 res!732606) b!1097547))

(assert (= (and b!1097547 res!732607) b!1097548))

(declare-fun m!1017193 () Bool)

(assert (=> d!130267 m!1017193))

(declare-fun m!1017195 () Bool)

(assert (=> d!130267 m!1017195))

(declare-fun m!1017197 () Bool)

(assert (=> d!130267 m!1017197))

(declare-fun m!1017199 () Bool)

(assert (=> d!130267 m!1017199))

(declare-fun m!1017201 () Bool)

(assert (=> b!1097547 m!1017201))

(declare-fun m!1017203 () Bool)

(assert (=> b!1097548 m!1017203))

(assert (=> b!1097316 d!130267))

(declare-fun d!130269 () Bool)

(declare-fun e!626457 () Bool)

(assert (=> d!130269 e!626457))

(declare-fun res!732608 () Bool)

(assert (=> d!130269 (=> (not res!732608) (not e!626457))))

(declare-fun lt!490676 () ListLongMap!15333)

(assert (=> d!130269 (= res!732608 (contains!6390 lt!490676 (_1!8686 (tuple2!17353 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!831))))))

(declare-fun lt!490679 () List!24031)

(assert (=> d!130269 (= lt!490676 (ListLongMap!15334 lt!490679))))

(declare-fun lt!490678 () Unit!36037)

(declare-fun lt!490677 () Unit!36037)

(assert (=> d!130269 (= lt!490678 lt!490677)))

(assert (=> d!130269 (= (getValueByKey!621 lt!490679 (_1!8686 (tuple2!17353 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!831))) (Some!671 (_2!8686 (tuple2!17353 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!831))))))

(assert (=> d!130269 (= lt!490677 (lemmaContainsTupThenGetReturnValue!296 lt!490679 (_1!8686 (tuple2!17353 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!831)) (_2!8686 (tuple2!17353 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!831))))))

(assert (=> d!130269 (= lt!490679 (insertStrictlySorted!388 (toList!7682 lt!490498) (_1!8686 (tuple2!17353 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!831)) (_2!8686 (tuple2!17353 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!831))))))

(assert (=> d!130269 (= (+!3317 lt!490498 (tuple2!17353 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!831)) lt!490676)))

(declare-fun b!1097549 () Bool)

(declare-fun res!732609 () Bool)

(assert (=> b!1097549 (=> (not res!732609) (not e!626457))))

(assert (=> b!1097549 (= res!732609 (= (getValueByKey!621 (toList!7682 lt!490676) (_1!8686 (tuple2!17353 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!831))) (Some!671 (_2!8686 (tuple2!17353 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!831)))))))

(declare-fun b!1097550 () Bool)

(assert (=> b!1097550 (= e!626457 (contains!6392 (toList!7682 lt!490676) (tuple2!17353 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!831)))))

(assert (= (and d!130269 res!732608) b!1097549))

(assert (= (and b!1097549 res!732609) b!1097550))

(declare-fun m!1017205 () Bool)

(assert (=> d!130269 m!1017205))

(declare-fun m!1017207 () Bool)

(assert (=> d!130269 m!1017207))

(declare-fun m!1017209 () Bool)

(assert (=> d!130269 m!1017209))

(declare-fun m!1017211 () Bool)

(assert (=> d!130269 m!1017211))

(declare-fun m!1017213 () Bool)

(assert (=> b!1097549 m!1017213))

(declare-fun m!1017215 () Bool)

(assert (=> b!1097550 m!1017215))

(assert (=> b!1097316 d!130269))

(declare-fun d!130271 () Bool)

(assert (=> d!130271 (= (validMask!0 mask!1414) (and (or (= mask!1414 #b00000000000000000000000000000111) (= mask!1414 #b00000000000000000000000000001111) (= mask!1414 #b00000000000000000000000000011111) (= mask!1414 #b00000000000000000000000000111111) (= mask!1414 #b00000000000000000000000001111111) (= mask!1414 #b00000000000000000000000011111111) (= mask!1414 #b00000000000000000000000111111111) (= mask!1414 #b00000000000000000000001111111111) (= mask!1414 #b00000000000000000000011111111111) (= mask!1414 #b00000000000000000000111111111111) (= mask!1414 #b00000000000000000001111111111111) (= mask!1414 #b00000000000000000011111111111111) (= mask!1414 #b00000000000000000111111111111111) (= mask!1414 #b00000000000000001111111111111111) (= mask!1414 #b00000000000000011111111111111111) (= mask!1414 #b00000000000000111111111111111111) (= mask!1414 #b00000000000001111111111111111111) (= mask!1414 #b00000000000011111111111111111111) (= mask!1414 #b00000000000111111111111111111111) (= mask!1414 #b00000000001111111111111111111111) (= mask!1414 #b00000000011111111111111111111111) (= mask!1414 #b00000000111111111111111111111111) (= mask!1414 #b00000001111111111111111111111111) (= mask!1414 #b00000011111111111111111111111111) (= mask!1414 #b00000111111111111111111111111111) (= mask!1414 #b00001111111111111111111111111111) (= mask!1414 #b00011111111111111111111111111111) (= mask!1414 #b00111111111111111111111111111111)) (bvsle mask!1414 #b00111111111111111111111111111111)))))

(assert (=> start!96524 d!130271))

(declare-fun d!130273 () Bool)

(assert (=> d!130273 (= (array_inv!26216 _keys!1070) (bvsge (size!34752 _keys!1070) #b00000000000000000000000000000000))))

(assert (=> start!96524 d!130273))

(declare-fun d!130275 () Bool)

(assert (=> d!130275 (= (array_inv!26217 _values!874) (bvsge (size!34753 _values!874) #b00000000000000000000000000000000))))

(assert (=> start!96524 d!130275))

(declare-fun d!130277 () Bool)

(declare-fun res!732610 () Bool)

(declare-fun e!626460 () Bool)

(assert (=> d!130277 (=> res!732610 e!626460)))

(assert (=> d!130277 (= res!732610 (bvsge #b00000000000000000000000000000000 (size!34752 lt!490494)))))

(assert (=> d!130277 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!490494 mask!1414) e!626460)))

(declare-fun b!1097551 () Bool)

(declare-fun e!626459 () Bool)

(assert (=> b!1097551 (= e!626460 e!626459)))

(declare-fun c!108356 () Bool)

(assert (=> b!1097551 (= c!108356 (validKeyInArray!0 (select (arr!34215 lt!490494) #b00000000000000000000000000000000)))))

(declare-fun b!1097552 () Bool)

(declare-fun call!45810 () Bool)

(assert (=> b!1097552 (= e!626459 call!45810)))

(declare-fun bm!45807 () Bool)

(assert (=> bm!45807 (= call!45810 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) lt!490494 mask!1414))))

(declare-fun b!1097553 () Bool)

(declare-fun e!626458 () Bool)

(assert (=> b!1097553 (= e!626458 call!45810)))

(declare-fun b!1097554 () Bool)

(assert (=> b!1097554 (= e!626459 e!626458)))

(declare-fun lt!490680 () (_ BitVec 64))

(assert (=> b!1097554 (= lt!490680 (select (arr!34215 lt!490494) #b00000000000000000000000000000000))))

(declare-fun lt!490681 () Unit!36037)

(assert (=> b!1097554 (= lt!490681 (lemmaArrayContainsFromImpliesContainsFromZero!0 lt!490494 lt!490680 #b00000000000000000000000000000000))))

(assert (=> b!1097554 (arrayContainsKey!0 lt!490494 lt!490680 #b00000000000000000000000000000000)))

(declare-fun lt!490682 () Unit!36037)

(assert (=> b!1097554 (= lt!490682 lt!490681)))

(declare-fun res!732611 () Bool)

(assert (=> b!1097554 (= res!732611 (= (seekEntryOrOpen!0 (select (arr!34215 lt!490494) #b00000000000000000000000000000000) lt!490494 mask!1414) (Found!9903 #b00000000000000000000000000000000)))))

(assert (=> b!1097554 (=> (not res!732611) (not e!626458))))

(assert (= (and d!130277 (not res!732610)) b!1097551))

(assert (= (and b!1097551 c!108356) b!1097554))

(assert (= (and b!1097551 (not c!108356)) b!1097552))

(assert (= (and b!1097554 res!732611) b!1097553))

(assert (= (or b!1097553 b!1097552) bm!45807))

(assert (=> b!1097551 m!1017093))

(assert (=> b!1097551 m!1017093))

(assert (=> b!1097551 m!1017095))

(declare-fun m!1017217 () Bool)

(assert (=> bm!45807 m!1017217))

(assert (=> b!1097554 m!1017093))

(declare-fun m!1017219 () Bool)

(assert (=> b!1097554 m!1017219))

(declare-fun m!1017221 () Bool)

(assert (=> b!1097554 m!1017221))

(assert (=> b!1097554 m!1017093))

(declare-fun m!1017223 () Bool)

(assert (=> b!1097554 m!1017223))

(assert (=> b!1097321 d!130277))

(declare-fun b!1097555 () Bool)

(declare-fun e!626463 () Bool)

(declare-fun e!626462 () Bool)

(assert (=> b!1097555 (= e!626463 e!626462)))

(declare-fun c!108357 () Bool)

(assert (=> b!1097555 (= c!108357 (validKeyInArray!0 (select (arr!34215 _keys!1070) #b00000000000000000000000000000000)))))

(declare-fun d!130279 () Bool)

(declare-fun res!732613 () Bool)

(declare-fun e!626464 () Bool)

(assert (=> d!130279 (=> res!732613 e!626464)))

(assert (=> d!130279 (= res!732613 (bvsge #b00000000000000000000000000000000 (size!34752 _keys!1070)))))

(assert (=> d!130279 (= (arrayNoDuplicates!0 _keys!1070 #b00000000000000000000000000000000 Nil!24029) e!626464)))

(declare-fun b!1097556 () Bool)

(assert (=> b!1097556 (= e!626464 e!626463)))

(declare-fun res!732614 () Bool)

(assert (=> b!1097556 (=> (not res!732614) (not e!626463))))

(declare-fun e!626461 () Bool)

(assert (=> b!1097556 (= res!732614 (not e!626461))))

(declare-fun res!732612 () Bool)

(assert (=> b!1097556 (=> (not res!732612) (not e!626461))))

(assert (=> b!1097556 (= res!732612 (validKeyInArray!0 (select (arr!34215 _keys!1070) #b00000000000000000000000000000000)))))

(declare-fun b!1097557 () Bool)

(declare-fun call!45811 () Bool)

(assert (=> b!1097557 (= e!626462 call!45811)))

(declare-fun b!1097558 () Bool)

(assert (=> b!1097558 (= e!626461 (contains!6391 Nil!24029 (select (arr!34215 _keys!1070) #b00000000000000000000000000000000)))))

(declare-fun bm!45808 () Bool)

(assert (=> bm!45808 (= call!45811 (arrayNoDuplicates!0 _keys!1070 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!108357 (Cons!24028 (select (arr!34215 _keys!1070) #b00000000000000000000000000000000) Nil!24029) Nil!24029)))))

(declare-fun b!1097559 () Bool)

(assert (=> b!1097559 (= e!626462 call!45811)))

(assert (= (and d!130279 (not res!732613)) b!1097556))

(assert (= (and b!1097556 res!732612) b!1097558))

(assert (= (and b!1097556 res!732614) b!1097555))

(assert (= (and b!1097555 c!108357) b!1097557))

(assert (= (and b!1097555 (not c!108357)) b!1097559))

(assert (= (or b!1097557 b!1097559) bm!45808))

(assert (=> b!1097555 m!1017019))

(assert (=> b!1097555 m!1017019))

(assert (=> b!1097555 m!1017021))

(assert (=> b!1097556 m!1017019))

(assert (=> b!1097556 m!1017019))

(assert (=> b!1097556 m!1017021))

(assert (=> b!1097558 m!1017019))

(assert (=> b!1097558 m!1017019))

(declare-fun m!1017225 () Bool)

(assert (=> b!1097558 m!1017225))

(assert (=> bm!45808 m!1017019))

(declare-fun m!1017227 () Bool)

(assert (=> bm!45808 m!1017227))

(assert (=> b!1097322 d!130279))

(declare-fun mapIsEmpty!42442 () Bool)

(declare-fun mapRes!42442 () Bool)

(assert (=> mapIsEmpty!42442 mapRes!42442))

(declare-fun condMapEmpty!42442 () Bool)

(declare-fun mapDefault!42442 () ValueCell!12849)

(assert (=> mapNonEmpty!42436 (= condMapEmpty!42442 (= mapRest!42436 ((as const (Array (_ BitVec 32) ValueCell!12849)) mapDefault!42442)))))

(declare-fun e!626470 () Bool)

(assert (=> mapNonEmpty!42436 (= tp!81129 (and e!626470 mapRes!42442))))

(declare-fun b!1097566 () Bool)

(declare-fun e!626469 () Bool)

(assert (=> b!1097566 (= e!626469 tp_is_empty!27117)))

(declare-fun b!1097567 () Bool)

(assert (=> b!1097567 (= e!626470 tp_is_empty!27117)))

(declare-fun mapNonEmpty!42442 () Bool)

(declare-fun tp!81138 () Bool)

(assert (=> mapNonEmpty!42442 (= mapRes!42442 (and tp!81138 e!626469))))

(declare-fun mapKey!42442 () (_ BitVec 32))

(declare-fun mapRest!42442 () (Array (_ BitVec 32) ValueCell!12849))

(declare-fun mapValue!42442 () ValueCell!12849)

(assert (=> mapNonEmpty!42442 (= mapRest!42436 (store mapRest!42442 mapKey!42442 mapValue!42442))))

(assert (= (and mapNonEmpty!42436 condMapEmpty!42442) mapIsEmpty!42442))

(assert (= (and mapNonEmpty!42436 (not condMapEmpty!42442)) mapNonEmpty!42442))

(assert (= (and mapNonEmpty!42442 ((_ is ValueCellFull!12849) mapValue!42442)) b!1097566))

(assert (= (and mapNonEmpty!42436 ((_ is ValueCellFull!12849) mapDefault!42442)) b!1097567))

(declare-fun m!1017229 () Bool)

(assert (=> mapNonEmpty!42442 m!1017229))

(declare-fun b_lambda!17775 () Bool)

(assert (= b_lambda!17761 (or (and start!96524 b_free!23067) b_lambda!17775)))

(declare-fun b_lambda!17777 () Bool)

(assert (= b_lambda!17773 (or (and start!96524 b_free!23067) b_lambda!17777)))

(declare-fun b_lambda!17779 () Bool)

(assert (= b_lambda!17771 (or (and start!96524 b_free!23067) b_lambda!17779)))

(declare-fun b_lambda!17781 () Bool)

(assert (= b_lambda!17767 (or (and start!96524 b_free!23067) b_lambda!17781)))

(declare-fun b_lambda!17783 () Bool)

(assert (= b_lambda!17763 (or (and start!96524 b_free!23067) b_lambda!17783)))

(declare-fun b_lambda!17785 () Bool)

(assert (= b_lambda!17769 (or (and start!96524 b_free!23067) b_lambda!17785)))

(declare-fun b_lambda!17787 () Bool)

(assert (= b_lambda!17765 (or (and start!96524 b_free!23067) b_lambda!17787)))

(check-sat (not b!1097547) (not b!1097489) (not mapNonEmpty!42442) (not b_lambda!17781) (not bm!45792) (not b!1097506) tp_is_empty!27117 (not b!1097549) (not b!1097523) (not b!1097494) (not bm!45786) (not b!1097515) (not b!1097522) (not b!1097519) (not d!130267) (not b!1097509) (not b!1097551) (not bm!45802) (not b!1097517) (not bm!45784) (not b_lambda!17759) (not bm!45808) (not b!1097524) (not bm!45765) (not bm!45785) (not b_lambda!17777) (not b!1097539) (not b!1097558) (not b!1097458) (not b!1097380) (not b!1097507) (not b!1097556) (not b!1097511) (not bm!45800) (not b!1097440) (not b_next!23067) b_and!36835 (not d!130269) (not b!1097436) (not b!1097538) (not b!1097499) (not d!130253) (not d!130259) (not b_lambda!17787) (not d!130261) (not b!1097483) (not b!1097516) (not bm!45791) (not b!1097501) (not b!1097541) (not b_lambda!17785) (not b!1097525) (not b!1097502) (not b!1097433) (not b!1097486) (not b_lambda!17775) (not b!1097386) (not d!130257) (not b!1097441) (not b!1097435) (not b!1097443) (not b_lambda!17779) (not bm!45806) (not bm!45803) (not d!130255) (not bm!45795) (not b!1097449) (not b!1097554) (not b!1097555) (not b!1097484) (not bm!45807) (not b!1097492) (not d!130249) (not b!1097490) (not bm!45798) (not b!1097377) (not b!1097548) (not b!1097491) (not b!1097550) (not b!1097445) (not b_lambda!17783) (not b!1097527) (not bm!45782) (not bm!45801) (not d!130251))
(check-sat b_and!36835 (not b_next!23067))
