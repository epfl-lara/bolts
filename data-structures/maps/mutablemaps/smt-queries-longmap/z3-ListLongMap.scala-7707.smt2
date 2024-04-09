; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!96836 () Bool)

(assert start!96836)

(declare-fun b_free!23169 () Bool)

(declare-fun b_next!23169 () Bool)

(assert (=> start!96836 (= b_free!23169 (not b_next!23169))))

(declare-fun tp!81458 () Bool)

(declare-fun b_and!37131 () Bool)

(assert (=> start!96836 (= tp!81458 b_and!37131)))

(declare-fun b!1101127 () Bool)

(declare-fun res!734866 () Bool)

(declare-fun e!628528 () Bool)

(assert (=> b!1101127 (=> (not res!734866) (not e!628528))))

(declare-datatypes ((array!71308 0))(
  ( (array!71309 (arr!34314 (Array (_ BitVec 32) (_ BitVec 64))) (size!34851 (_ BitVec 32))) )
))
(declare-fun _keys!1070 () array!71308)

(declare-datatypes ((List!24115 0))(
  ( (Nil!24112) (Cons!24111 (h!25320 (_ BitVec 64)) (t!34337 List!24115)) )
))
(declare-fun arrayNoDuplicates!0 (array!71308 (_ BitVec 32) List!24115) Bool)

(assert (=> b!1101127 (= res!734866 (arrayNoDuplicates!0 _keys!1070 #b00000000000000000000000000000000 Nil!24112))))

(declare-fun b!1101128 () Bool)

(declare-fun res!734863 () Bool)

(assert (=> b!1101128 (=> (not res!734863) (not e!628528))))

(declare-fun i!650 () (_ BitVec 32))

(assert (=> b!1101128 (= res!734863 (and (bvsge i!650 #b00000000000000000000000000000000) (bvslt i!650 (size!34851 _keys!1070))))))

(declare-fun b!1101129 () Bool)

(declare-fun e!628532 () Bool)

(declare-fun e!628531 () Bool)

(declare-fun mapRes!42613 () Bool)

(assert (=> b!1101129 (= e!628532 (and e!628531 mapRes!42613))))

(declare-fun condMapEmpty!42613 () Bool)

(declare-datatypes ((V!41419 0))(
  ( (V!41420 (val!13666 Int)) )
))
(declare-datatypes ((ValueCell!12900 0))(
  ( (ValueCellFull!12900 (v!16296 V!41419)) (EmptyCell!12900) )
))
(declare-datatypes ((array!71310 0))(
  ( (array!71311 (arr!34315 (Array (_ BitVec 32) ValueCell!12900)) (size!34852 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!71310)

(declare-fun mapDefault!42613 () ValueCell!12900)

(assert (=> b!1101129 (= condMapEmpty!42613 (= (arr!34315 _values!874) ((as const (Array (_ BitVec 32) ValueCell!12900)) mapDefault!42613)))))

(declare-fun b!1101130 () Bool)

(declare-fun res!734859 () Bool)

(assert (=> b!1101130 (=> (not res!734859) (not e!628528))))

(declare-fun k0!904 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1101130 (= res!734859 (validKeyInArray!0 k0!904))))

(declare-fun b!1101131 () Bool)

(declare-fun res!734869 () Bool)

(assert (=> b!1101131 (=> (not res!734869) (not e!628528))))

(declare-fun mask!1414 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!71308 (_ BitVec 32)) Bool)

(assert (=> b!1101131 (= res!734869 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1070 mask!1414))))

(declare-fun b!1101132 () Bool)

(declare-fun e!628533 () Bool)

(declare-fun e!628530 () Bool)

(assert (=> b!1101132 (= e!628533 (not e!628530))))

(declare-fun res!734868 () Bool)

(assert (=> b!1101132 (=> res!734868 e!628530)))

(declare-fun extraKeys!811 () (_ BitVec 32))

(assert (=> b!1101132 (= res!734868 (or (not (= (bvand extraKeys!811 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeys!811 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun defaultEntry!882 () Int)

(declare-fun minValue!831 () V!41419)

(declare-datatypes ((tuple2!17444 0))(
  ( (tuple2!17445 (_1!8732 (_ BitVec 64)) (_2!8732 V!41419)) )
))
(declare-datatypes ((List!24116 0))(
  ( (Nil!24113) (Cons!24112 (h!25321 tuple2!17444) (t!34338 List!24116)) )
))
(declare-datatypes ((ListLongMap!15425 0))(
  ( (ListLongMap!15426 (toList!7728 List!24116)) )
))
(declare-fun lt!493605 () ListLongMap!15425)

(declare-fun zeroValue!831 () V!41419)

(declare-fun getCurrentListMap!4414 (array!71308 array!71310 (_ BitVec 32) (_ BitVec 32) V!41419 V!41419 (_ BitVec 32) Int) ListLongMap!15425)

(assert (=> b!1101132 (= lt!493605 (getCurrentListMap!4414 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun lt!493604 () array!71310)

(declare-fun lt!493602 () array!71308)

(declare-fun lt!493608 () ListLongMap!15425)

(assert (=> b!1101132 (= lt!493608 (getCurrentListMap!4414 lt!493602 lt!493604 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun lt!493599 () ListLongMap!15425)

(declare-fun lt!493607 () ListLongMap!15425)

(assert (=> b!1101132 (and (= lt!493599 lt!493607) (= lt!493607 lt!493599))))

(declare-fun lt!493601 () ListLongMap!15425)

(declare-fun -!966 (ListLongMap!15425 (_ BitVec 64)) ListLongMap!15425)

(assert (=> b!1101132 (= lt!493607 (-!966 lt!493601 k0!904))))

(declare-datatypes ((Unit!36127 0))(
  ( (Unit!36128) )
))
(declare-fun lt!493603 () Unit!36127)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!226 (array!71308 array!71310 (_ BitVec 32) (_ BitVec 32) V!41419 V!41419 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!36127)

(assert (=> b!1101132 (= lt!493603 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!226 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 i!650 k0!904 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun getCurrentListMapNoExtraKeys!4201 (array!71308 array!71310 (_ BitVec 32) (_ BitVec 32) V!41419 V!41419 (_ BitVec 32) Int) ListLongMap!15425)

(assert (=> b!1101132 (= lt!493599 (getCurrentListMapNoExtraKeys!4201 lt!493602 lt!493604 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun dynLambda!2332 (Int (_ BitVec 64)) V!41419)

(assert (=> b!1101132 (= lt!493604 (array!71311 (store (arr!34315 _values!874) i!650 (ValueCellFull!12900 (dynLambda!2332 defaultEntry!882 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!34852 _values!874)))))

(assert (=> b!1101132 (= lt!493601 (getCurrentListMapNoExtraKeys!4201 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun arrayContainsKey!0 (array!71308 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1101132 (arrayContainsKey!0 _keys!1070 k0!904 #b00000000000000000000000000000000)))

(declare-fun lt!493606 () Unit!36127)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!71308 (_ BitVec 64) (_ BitVec 32)) Unit!36127)

(assert (=> b!1101132 (= lt!493606 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1070 k0!904 i!650))))

(declare-fun e!628529 () Bool)

(declare-fun b!1101133 () Bool)

(declare-fun lt!493600 () tuple2!17444)

(declare-fun +!3360 (ListLongMap!15425 tuple2!17444) ListLongMap!15425)

(assert (=> b!1101133 (= e!628529 (= lt!493608 (+!3360 lt!493607 lt!493600)))))

(declare-fun res!734865 () Bool)

(assert (=> start!96836 (=> (not res!734865) (not e!628528))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!96836 (= res!734865 (validMask!0 mask!1414))))

(assert (=> start!96836 e!628528))

(assert (=> start!96836 tp!81458))

(assert (=> start!96836 true))

(declare-fun tp_is_empty!27219 () Bool)

(assert (=> start!96836 tp_is_empty!27219))

(declare-fun array_inv!26288 (array!71308) Bool)

(assert (=> start!96836 (array_inv!26288 _keys!1070)))

(declare-fun array_inv!26289 (array!71310) Bool)

(assert (=> start!96836 (and (array_inv!26289 _values!874) e!628532)))

(declare-fun b!1101134 () Bool)

(declare-fun res!734860 () Bool)

(assert (=> b!1101134 (=> (not res!734860) (not e!628533))))

(assert (=> b!1101134 (= res!734860 (arrayNoDuplicates!0 lt!493602 #b00000000000000000000000000000000 Nil!24112))))

(declare-fun b!1101135 () Bool)

(declare-fun res!734862 () Bool)

(assert (=> b!1101135 (=> (not res!734862) (not e!628528))))

(assert (=> b!1101135 (= res!734862 (and (= (size!34852 _values!874) (bvadd #b00000000000000000000000000000001 mask!1414)) (= (size!34851 _keys!1070) (size!34852 _values!874)) (bvsge mask!1414 #b00000000000000000000000000000000) (bvsge extraKeys!811 #b00000000000000000000000000000000) (bvsle extraKeys!811 #b00000000000000000000000000000011)))))

(declare-fun b!1101136 () Bool)

(assert (=> b!1101136 (= e!628528 e!628533)))

(declare-fun res!734867 () Bool)

(assert (=> b!1101136 (=> (not res!734867) (not e!628533))))

(assert (=> b!1101136 (= res!734867 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!493602 mask!1414))))

(assert (=> b!1101136 (= lt!493602 (array!71309 (store (arr!34314 _keys!1070) i!650 #b1000000000000000000000000000000000000000000000000000000000000000) (size!34851 _keys!1070)))))

(declare-fun b!1101137 () Bool)

(assert (=> b!1101137 (= e!628530 (= lt!493605 (+!3360 lt!493601 lt!493600)))))

(assert (=> b!1101137 e!628529))

(declare-fun res!734864 () Bool)

(assert (=> b!1101137 (=> (not res!734864) (not e!628529))))

(assert (=> b!1101137 (= res!734864 (= lt!493608 (+!3360 lt!493599 lt!493600)))))

(assert (=> b!1101137 (= lt!493600 (tuple2!17445 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!831))))

(declare-fun mapNonEmpty!42613 () Bool)

(declare-fun tp!81459 () Bool)

(declare-fun e!628534 () Bool)

(assert (=> mapNonEmpty!42613 (= mapRes!42613 (and tp!81459 e!628534))))

(declare-fun mapKey!42613 () (_ BitVec 32))

(declare-fun mapValue!42613 () ValueCell!12900)

(declare-fun mapRest!42613 () (Array (_ BitVec 32) ValueCell!12900))

(assert (=> mapNonEmpty!42613 (= (arr!34315 _values!874) (store mapRest!42613 mapKey!42613 mapValue!42613))))

(declare-fun b!1101138 () Bool)

(assert (=> b!1101138 (= e!628534 tp_is_empty!27219)))

(declare-fun b!1101139 () Bool)

(declare-fun res!734861 () Bool)

(assert (=> b!1101139 (=> (not res!734861) (not e!628528))))

(assert (=> b!1101139 (= res!734861 (= (select (arr!34314 _keys!1070) i!650) k0!904))))

(declare-fun b!1101140 () Bool)

(assert (=> b!1101140 (= e!628531 tp_is_empty!27219)))

(declare-fun mapIsEmpty!42613 () Bool)

(assert (=> mapIsEmpty!42613 mapRes!42613))

(assert (= (and start!96836 res!734865) b!1101135))

(assert (= (and b!1101135 res!734862) b!1101131))

(assert (= (and b!1101131 res!734869) b!1101127))

(assert (= (and b!1101127 res!734866) b!1101128))

(assert (= (and b!1101128 res!734863) b!1101130))

(assert (= (and b!1101130 res!734859) b!1101139))

(assert (= (and b!1101139 res!734861) b!1101136))

(assert (= (and b!1101136 res!734867) b!1101134))

(assert (= (and b!1101134 res!734860) b!1101132))

(assert (= (and b!1101132 (not res!734868)) b!1101137))

(assert (= (and b!1101137 res!734864) b!1101133))

(assert (= (and b!1101129 condMapEmpty!42613) mapIsEmpty!42613))

(assert (= (and b!1101129 (not condMapEmpty!42613)) mapNonEmpty!42613))

(get-info :version)

(assert (= (and mapNonEmpty!42613 ((_ is ValueCellFull!12900) mapValue!42613)) b!1101138))

(assert (= (and b!1101129 ((_ is ValueCellFull!12900) mapDefault!42613)) b!1101140))

(assert (= start!96836 b!1101129))

(declare-fun b_lambda!18097 () Bool)

(assert (=> (not b_lambda!18097) (not b!1101132)))

(declare-fun t!34336 () Bool)

(declare-fun tb!8043 () Bool)

(assert (=> (and start!96836 (= defaultEntry!882 defaultEntry!882) t!34336) tb!8043))

(declare-fun result!16617 () Bool)

(assert (=> tb!8043 (= result!16617 tp_is_empty!27219)))

(assert (=> b!1101132 t!34336))

(declare-fun b_and!37133 () Bool)

(assert (= b_and!37131 (and (=> t!34336 result!16617) b_and!37133)))

(declare-fun m!1021415 () Bool)

(assert (=> b!1101134 m!1021415))

(declare-fun m!1021417 () Bool)

(assert (=> b!1101133 m!1021417))

(declare-fun m!1021419 () Bool)

(assert (=> b!1101131 m!1021419))

(declare-fun m!1021421 () Bool)

(assert (=> b!1101130 m!1021421))

(declare-fun m!1021423 () Bool)

(assert (=> b!1101137 m!1021423))

(declare-fun m!1021425 () Bool)

(assert (=> b!1101137 m!1021425))

(declare-fun m!1021427 () Bool)

(assert (=> start!96836 m!1021427))

(declare-fun m!1021429 () Bool)

(assert (=> start!96836 m!1021429))

(declare-fun m!1021431 () Bool)

(assert (=> start!96836 m!1021431))

(declare-fun m!1021433 () Bool)

(assert (=> b!1101127 m!1021433))

(declare-fun m!1021435 () Bool)

(assert (=> b!1101139 m!1021435))

(declare-fun m!1021437 () Bool)

(assert (=> b!1101136 m!1021437))

(declare-fun m!1021439 () Bool)

(assert (=> b!1101136 m!1021439))

(declare-fun m!1021441 () Bool)

(assert (=> b!1101132 m!1021441))

(declare-fun m!1021443 () Bool)

(assert (=> b!1101132 m!1021443))

(declare-fun m!1021445 () Bool)

(assert (=> b!1101132 m!1021445))

(declare-fun m!1021447 () Bool)

(assert (=> b!1101132 m!1021447))

(declare-fun m!1021449 () Bool)

(assert (=> b!1101132 m!1021449))

(declare-fun m!1021451 () Bool)

(assert (=> b!1101132 m!1021451))

(declare-fun m!1021453 () Bool)

(assert (=> b!1101132 m!1021453))

(declare-fun m!1021455 () Bool)

(assert (=> b!1101132 m!1021455))

(declare-fun m!1021457 () Bool)

(assert (=> b!1101132 m!1021457))

(declare-fun m!1021459 () Bool)

(assert (=> b!1101132 m!1021459))

(declare-fun m!1021461 () Bool)

(assert (=> mapNonEmpty!42613 m!1021461))

(check-sat b_and!37133 (not b!1101131) (not mapNonEmpty!42613) (not b!1101136) (not b!1101130) (not b_lambda!18097) (not b!1101134) (not b!1101137) tp_is_empty!27219 (not start!96836) (not b!1101127) (not b!1101133) (not b_next!23169) (not b!1101132))
(check-sat b_and!37133 (not b_next!23169))
(get-model)

(declare-fun b_lambda!18101 () Bool)

(assert (= b_lambda!18097 (or (and start!96836 b_free!23169) b_lambda!18101)))

(check-sat b_and!37133 (not b!1101131) (not mapNonEmpty!42613) (not b!1101136) (not b!1101130) (not b!1101134) (not b!1101137) tp_is_empty!27219 (not start!96836) (not b!1101127) (not b!1101133) (not b_lambda!18101) (not b_next!23169) (not b!1101132))
(check-sat b_and!37133 (not b_next!23169))
(get-model)

(declare-fun b!1101197 () Bool)

(declare-fun e!628568 () Bool)

(declare-fun call!46136 () Bool)

(assert (=> b!1101197 (= e!628568 call!46136)))

(declare-fun d!130589 () Bool)

(declare-fun res!734909 () Bool)

(declare-fun e!628569 () Bool)

(assert (=> d!130589 (=> res!734909 e!628569)))

(assert (=> d!130589 (= res!734909 (bvsge #b00000000000000000000000000000000 (size!34851 _keys!1070)))))

(assert (=> d!130589 (= (arrayNoDuplicates!0 _keys!1070 #b00000000000000000000000000000000 Nil!24112) e!628569)))

(declare-fun b!1101198 () Bool)

(assert (=> b!1101198 (= e!628568 call!46136)))

(declare-fun bm!46133 () Bool)

(declare-fun c!108717 () Bool)

(assert (=> bm!46133 (= call!46136 (arrayNoDuplicates!0 _keys!1070 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!108717 (Cons!24111 (select (arr!34314 _keys!1070) #b00000000000000000000000000000000) Nil!24112) Nil!24112)))))

(declare-fun b!1101199 () Bool)

(declare-fun e!628571 () Bool)

(declare-fun contains!6414 (List!24115 (_ BitVec 64)) Bool)

(assert (=> b!1101199 (= e!628571 (contains!6414 Nil!24112 (select (arr!34314 _keys!1070) #b00000000000000000000000000000000)))))

(declare-fun b!1101200 () Bool)

(declare-fun e!628570 () Bool)

(assert (=> b!1101200 (= e!628570 e!628568)))

(assert (=> b!1101200 (= c!108717 (validKeyInArray!0 (select (arr!34314 _keys!1070) #b00000000000000000000000000000000)))))

(declare-fun b!1101201 () Bool)

(assert (=> b!1101201 (= e!628569 e!628570)))

(declare-fun res!734910 () Bool)

(assert (=> b!1101201 (=> (not res!734910) (not e!628570))))

(assert (=> b!1101201 (= res!734910 (not e!628571))))

(declare-fun res!734911 () Bool)

(assert (=> b!1101201 (=> (not res!734911) (not e!628571))))

(assert (=> b!1101201 (= res!734911 (validKeyInArray!0 (select (arr!34314 _keys!1070) #b00000000000000000000000000000000)))))

(assert (= (and d!130589 (not res!734909)) b!1101201))

(assert (= (and b!1101201 res!734911) b!1101199))

(assert (= (and b!1101201 res!734910) b!1101200))

(assert (= (and b!1101200 c!108717) b!1101197))

(assert (= (and b!1101200 (not c!108717)) b!1101198))

(assert (= (or b!1101197 b!1101198) bm!46133))

(declare-fun m!1021511 () Bool)

(assert (=> bm!46133 m!1021511))

(declare-fun m!1021513 () Bool)

(assert (=> bm!46133 m!1021513))

(assert (=> b!1101199 m!1021511))

(assert (=> b!1101199 m!1021511))

(declare-fun m!1021515 () Bool)

(assert (=> b!1101199 m!1021515))

(assert (=> b!1101200 m!1021511))

(assert (=> b!1101200 m!1021511))

(declare-fun m!1021517 () Bool)

(assert (=> b!1101200 m!1021517))

(assert (=> b!1101201 m!1021511))

(assert (=> b!1101201 m!1021511))

(assert (=> b!1101201 m!1021517))

(assert (=> b!1101127 d!130589))

(declare-fun d!130591 () Bool)

(declare-fun e!628574 () Bool)

(assert (=> d!130591 e!628574))

(declare-fun res!734917 () Bool)

(assert (=> d!130591 (=> (not res!734917) (not e!628574))))

(declare-fun lt!493648 () ListLongMap!15425)

(declare-fun contains!6415 (ListLongMap!15425 (_ BitVec 64)) Bool)

(assert (=> d!130591 (= res!734917 (contains!6415 lt!493648 (_1!8732 lt!493600)))))

(declare-fun lt!493650 () List!24116)

(assert (=> d!130591 (= lt!493648 (ListLongMap!15426 lt!493650))))

(declare-fun lt!493647 () Unit!36127)

(declare-fun lt!493649 () Unit!36127)

(assert (=> d!130591 (= lt!493647 lt!493649)))

(declare-datatypes ((Option!680 0))(
  ( (Some!679 (v!16298 V!41419)) (None!678) )
))
(declare-fun getValueByKey!629 (List!24116 (_ BitVec 64)) Option!680)

(assert (=> d!130591 (= (getValueByKey!629 lt!493650 (_1!8732 lt!493600)) (Some!679 (_2!8732 lt!493600)))))

(declare-fun lemmaContainsTupThenGetReturnValue!304 (List!24116 (_ BitVec 64) V!41419) Unit!36127)

(assert (=> d!130591 (= lt!493649 (lemmaContainsTupThenGetReturnValue!304 lt!493650 (_1!8732 lt!493600) (_2!8732 lt!493600)))))

(declare-fun insertStrictlySorted!396 (List!24116 (_ BitVec 64) V!41419) List!24116)

(assert (=> d!130591 (= lt!493650 (insertStrictlySorted!396 (toList!7728 lt!493607) (_1!8732 lt!493600) (_2!8732 lt!493600)))))

(assert (=> d!130591 (= (+!3360 lt!493607 lt!493600) lt!493648)))

(declare-fun b!1101206 () Bool)

(declare-fun res!734916 () Bool)

(assert (=> b!1101206 (=> (not res!734916) (not e!628574))))

(assert (=> b!1101206 (= res!734916 (= (getValueByKey!629 (toList!7728 lt!493648) (_1!8732 lt!493600)) (Some!679 (_2!8732 lt!493600))))))

(declare-fun b!1101207 () Bool)

(declare-fun contains!6416 (List!24116 tuple2!17444) Bool)

(assert (=> b!1101207 (= e!628574 (contains!6416 (toList!7728 lt!493648) lt!493600))))

(assert (= (and d!130591 res!734917) b!1101206))

(assert (= (and b!1101206 res!734916) b!1101207))

(declare-fun m!1021519 () Bool)

(assert (=> d!130591 m!1021519))

(declare-fun m!1021521 () Bool)

(assert (=> d!130591 m!1021521))

(declare-fun m!1021523 () Bool)

(assert (=> d!130591 m!1021523))

(declare-fun m!1021525 () Bool)

(assert (=> d!130591 m!1021525))

(declare-fun m!1021527 () Bool)

(assert (=> b!1101206 m!1021527))

(declare-fun m!1021529 () Bool)

(assert (=> b!1101207 m!1021529))

(assert (=> b!1101133 d!130591))

(declare-fun b!1101208 () Bool)

(declare-fun e!628575 () Bool)

(declare-fun call!46137 () Bool)

(assert (=> b!1101208 (= e!628575 call!46137)))

(declare-fun d!130593 () Bool)

(declare-fun res!734918 () Bool)

(declare-fun e!628576 () Bool)

(assert (=> d!130593 (=> res!734918 e!628576)))

(assert (=> d!130593 (= res!734918 (bvsge #b00000000000000000000000000000000 (size!34851 lt!493602)))))

(assert (=> d!130593 (= (arrayNoDuplicates!0 lt!493602 #b00000000000000000000000000000000 Nil!24112) e!628576)))

(declare-fun b!1101209 () Bool)

(assert (=> b!1101209 (= e!628575 call!46137)))

(declare-fun bm!46134 () Bool)

(declare-fun c!108718 () Bool)

(assert (=> bm!46134 (= call!46137 (arrayNoDuplicates!0 lt!493602 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!108718 (Cons!24111 (select (arr!34314 lt!493602) #b00000000000000000000000000000000) Nil!24112) Nil!24112)))))

(declare-fun b!1101210 () Bool)

(declare-fun e!628578 () Bool)

(assert (=> b!1101210 (= e!628578 (contains!6414 Nil!24112 (select (arr!34314 lt!493602) #b00000000000000000000000000000000)))))

(declare-fun b!1101211 () Bool)

(declare-fun e!628577 () Bool)

(assert (=> b!1101211 (= e!628577 e!628575)))

(assert (=> b!1101211 (= c!108718 (validKeyInArray!0 (select (arr!34314 lt!493602) #b00000000000000000000000000000000)))))

(declare-fun b!1101212 () Bool)

(assert (=> b!1101212 (= e!628576 e!628577)))

(declare-fun res!734919 () Bool)

(assert (=> b!1101212 (=> (not res!734919) (not e!628577))))

(assert (=> b!1101212 (= res!734919 (not e!628578))))

(declare-fun res!734920 () Bool)

(assert (=> b!1101212 (=> (not res!734920) (not e!628578))))

(assert (=> b!1101212 (= res!734920 (validKeyInArray!0 (select (arr!34314 lt!493602) #b00000000000000000000000000000000)))))

(assert (= (and d!130593 (not res!734918)) b!1101212))

(assert (= (and b!1101212 res!734920) b!1101210))

(assert (= (and b!1101212 res!734919) b!1101211))

(assert (= (and b!1101211 c!108718) b!1101208))

(assert (= (and b!1101211 (not c!108718)) b!1101209))

(assert (= (or b!1101208 b!1101209) bm!46134))

(declare-fun m!1021531 () Bool)

(assert (=> bm!46134 m!1021531))

(declare-fun m!1021533 () Bool)

(assert (=> bm!46134 m!1021533))

(assert (=> b!1101210 m!1021531))

(assert (=> b!1101210 m!1021531))

(declare-fun m!1021535 () Bool)

(assert (=> b!1101210 m!1021535))

(assert (=> b!1101211 m!1021531))

(assert (=> b!1101211 m!1021531))

(declare-fun m!1021537 () Bool)

(assert (=> b!1101211 m!1021537))

(assert (=> b!1101212 m!1021531))

(assert (=> b!1101212 m!1021531))

(assert (=> b!1101212 m!1021537))

(assert (=> b!1101134 d!130593))

(declare-fun d!130595 () Bool)

(assert (=> d!130595 (= (validKeyInArray!0 k0!904) (and (not (= k0!904 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!904 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1101130 d!130595))

(declare-fun b!1101221 () Bool)

(declare-fun e!628585 () Bool)

(declare-fun call!46140 () Bool)

(assert (=> b!1101221 (= e!628585 call!46140)))

(declare-fun b!1101222 () Bool)

(declare-fun e!628587 () Bool)

(assert (=> b!1101222 (= e!628587 call!46140)))

(declare-fun b!1101223 () Bool)

(declare-fun e!628586 () Bool)

(assert (=> b!1101223 (= e!628586 e!628585)))

(declare-fun c!108721 () Bool)

(assert (=> b!1101223 (= c!108721 (validKeyInArray!0 (select (arr!34314 lt!493602) #b00000000000000000000000000000000)))))

(declare-fun bm!46137 () Bool)

(assert (=> bm!46137 (= call!46140 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) lt!493602 mask!1414))))

(declare-fun d!130597 () Bool)

(declare-fun res!734926 () Bool)

(assert (=> d!130597 (=> res!734926 e!628586)))

(assert (=> d!130597 (= res!734926 (bvsge #b00000000000000000000000000000000 (size!34851 lt!493602)))))

(assert (=> d!130597 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!493602 mask!1414) e!628586)))

(declare-fun b!1101224 () Bool)

(assert (=> b!1101224 (= e!628585 e!628587)))

(declare-fun lt!493659 () (_ BitVec 64))

(assert (=> b!1101224 (= lt!493659 (select (arr!34314 lt!493602) #b00000000000000000000000000000000))))

(declare-fun lt!493657 () Unit!36127)

(assert (=> b!1101224 (= lt!493657 (lemmaArrayContainsFromImpliesContainsFromZero!0 lt!493602 lt!493659 #b00000000000000000000000000000000))))

(assert (=> b!1101224 (arrayContainsKey!0 lt!493602 lt!493659 #b00000000000000000000000000000000)))

(declare-fun lt!493658 () Unit!36127)

(assert (=> b!1101224 (= lt!493658 lt!493657)))

(declare-fun res!734925 () Bool)

(declare-datatypes ((SeekEntryResult!9911 0))(
  ( (MissingZero!9911 (index!42014 (_ BitVec 32))) (Found!9911 (index!42015 (_ BitVec 32))) (Intermediate!9911 (undefined!10723 Bool) (index!42016 (_ BitVec 32)) (x!99036 (_ BitVec 32))) (Undefined!9911) (MissingVacant!9911 (index!42017 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!71308 (_ BitVec 32)) SeekEntryResult!9911)

(assert (=> b!1101224 (= res!734925 (= (seekEntryOrOpen!0 (select (arr!34314 lt!493602) #b00000000000000000000000000000000) lt!493602 mask!1414) (Found!9911 #b00000000000000000000000000000000)))))

(assert (=> b!1101224 (=> (not res!734925) (not e!628587))))

(assert (= (and d!130597 (not res!734926)) b!1101223))

(assert (= (and b!1101223 c!108721) b!1101224))

(assert (= (and b!1101223 (not c!108721)) b!1101221))

(assert (= (and b!1101224 res!734925) b!1101222))

(assert (= (or b!1101222 b!1101221) bm!46137))

(assert (=> b!1101223 m!1021531))

(assert (=> b!1101223 m!1021531))

(assert (=> b!1101223 m!1021537))

(declare-fun m!1021539 () Bool)

(assert (=> bm!46137 m!1021539))

(assert (=> b!1101224 m!1021531))

(declare-fun m!1021541 () Bool)

(assert (=> b!1101224 m!1021541))

(declare-fun m!1021543 () Bool)

(assert (=> b!1101224 m!1021543))

(assert (=> b!1101224 m!1021531))

(declare-fun m!1021545 () Bool)

(assert (=> b!1101224 m!1021545))

(assert (=> b!1101136 d!130597))

(declare-fun d!130599 () Bool)

(assert (=> d!130599 (= (validMask!0 mask!1414) (and (or (= mask!1414 #b00000000000000000000000000000111) (= mask!1414 #b00000000000000000000000000001111) (= mask!1414 #b00000000000000000000000000011111) (= mask!1414 #b00000000000000000000000000111111) (= mask!1414 #b00000000000000000000000001111111) (= mask!1414 #b00000000000000000000000011111111) (= mask!1414 #b00000000000000000000000111111111) (= mask!1414 #b00000000000000000000001111111111) (= mask!1414 #b00000000000000000000011111111111) (= mask!1414 #b00000000000000000000111111111111) (= mask!1414 #b00000000000000000001111111111111) (= mask!1414 #b00000000000000000011111111111111) (= mask!1414 #b00000000000000000111111111111111) (= mask!1414 #b00000000000000001111111111111111) (= mask!1414 #b00000000000000011111111111111111) (= mask!1414 #b00000000000000111111111111111111) (= mask!1414 #b00000000000001111111111111111111) (= mask!1414 #b00000000000011111111111111111111) (= mask!1414 #b00000000000111111111111111111111) (= mask!1414 #b00000000001111111111111111111111) (= mask!1414 #b00000000011111111111111111111111) (= mask!1414 #b00000000111111111111111111111111) (= mask!1414 #b00000001111111111111111111111111) (= mask!1414 #b00000011111111111111111111111111) (= mask!1414 #b00000111111111111111111111111111) (= mask!1414 #b00001111111111111111111111111111) (= mask!1414 #b00011111111111111111111111111111) (= mask!1414 #b00111111111111111111111111111111)) (bvsle mask!1414 #b00111111111111111111111111111111)))))

(assert (=> start!96836 d!130599))

(declare-fun d!130601 () Bool)

(assert (=> d!130601 (= (array_inv!26288 _keys!1070) (bvsge (size!34851 _keys!1070) #b00000000000000000000000000000000))))

(assert (=> start!96836 d!130601))

(declare-fun d!130603 () Bool)

(assert (=> d!130603 (= (array_inv!26289 _values!874) (bvsge (size!34852 _values!874) #b00000000000000000000000000000000))))

(assert (=> start!96836 d!130603))

(declare-fun b!1101225 () Bool)

(declare-fun e!628588 () Bool)

(declare-fun call!46141 () Bool)

(assert (=> b!1101225 (= e!628588 call!46141)))

(declare-fun b!1101226 () Bool)

(declare-fun e!628590 () Bool)

(assert (=> b!1101226 (= e!628590 call!46141)))

(declare-fun b!1101227 () Bool)

(declare-fun e!628589 () Bool)

(assert (=> b!1101227 (= e!628589 e!628588)))

(declare-fun c!108722 () Bool)

(assert (=> b!1101227 (= c!108722 (validKeyInArray!0 (select (arr!34314 _keys!1070) #b00000000000000000000000000000000)))))

(declare-fun bm!46138 () Bool)

(assert (=> bm!46138 (= call!46141 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) _keys!1070 mask!1414))))

(declare-fun d!130605 () Bool)

(declare-fun res!734928 () Bool)

(assert (=> d!130605 (=> res!734928 e!628589)))

(assert (=> d!130605 (= res!734928 (bvsge #b00000000000000000000000000000000 (size!34851 _keys!1070)))))

(assert (=> d!130605 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1070 mask!1414) e!628589)))

(declare-fun b!1101228 () Bool)

(assert (=> b!1101228 (= e!628588 e!628590)))

(declare-fun lt!493662 () (_ BitVec 64))

(assert (=> b!1101228 (= lt!493662 (select (arr!34314 _keys!1070) #b00000000000000000000000000000000))))

(declare-fun lt!493660 () Unit!36127)

(assert (=> b!1101228 (= lt!493660 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1070 lt!493662 #b00000000000000000000000000000000))))

(assert (=> b!1101228 (arrayContainsKey!0 _keys!1070 lt!493662 #b00000000000000000000000000000000)))

(declare-fun lt!493661 () Unit!36127)

(assert (=> b!1101228 (= lt!493661 lt!493660)))

(declare-fun res!734927 () Bool)

(assert (=> b!1101228 (= res!734927 (= (seekEntryOrOpen!0 (select (arr!34314 _keys!1070) #b00000000000000000000000000000000) _keys!1070 mask!1414) (Found!9911 #b00000000000000000000000000000000)))))

(assert (=> b!1101228 (=> (not res!734927) (not e!628590))))

(assert (= (and d!130605 (not res!734928)) b!1101227))

(assert (= (and b!1101227 c!108722) b!1101228))

(assert (= (and b!1101227 (not c!108722)) b!1101225))

(assert (= (and b!1101228 res!734927) b!1101226))

(assert (= (or b!1101226 b!1101225) bm!46138))

(assert (=> b!1101227 m!1021511))

(assert (=> b!1101227 m!1021511))

(assert (=> b!1101227 m!1021517))

(declare-fun m!1021547 () Bool)

(assert (=> bm!46138 m!1021547))

(assert (=> b!1101228 m!1021511))

(declare-fun m!1021549 () Bool)

(assert (=> b!1101228 m!1021549))

(declare-fun m!1021551 () Bool)

(assert (=> b!1101228 m!1021551))

(assert (=> b!1101228 m!1021511))

(declare-fun m!1021553 () Bool)

(assert (=> b!1101228 m!1021553))

(assert (=> b!1101131 d!130605))

(declare-fun d!130607 () Bool)

(declare-fun res!734933 () Bool)

(declare-fun e!628595 () Bool)

(assert (=> d!130607 (=> res!734933 e!628595)))

(assert (=> d!130607 (= res!734933 (= (select (arr!34314 _keys!1070) #b00000000000000000000000000000000) k0!904))))

(assert (=> d!130607 (= (arrayContainsKey!0 _keys!1070 k0!904 #b00000000000000000000000000000000) e!628595)))

(declare-fun b!1101233 () Bool)

(declare-fun e!628596 () Bool)

(assert (=> b!1101233 (= e!628595 e!628596)))

(declare-fun res!734934 () Bool)

(assert (=> b!1101233 (=> (not res!734934) (not e!628596))))

(assert (=> b!1101233 (= res!734934 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!34851 _keys!1070)))))

(declare-fun b!1101234 () Bool)

(assert (=> b!1101234 (= e!628596 (arrayContainsKey!0 _keys!1070 k0!904 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!130607 (not res!734933)) b!1101233))

(assert (= (and b!1101233 res!734934) b!1101234))

(assert (=> d!130607 m!1021511))

(declare-fun m!1021555 () Bool)

(assert (=> b!1101234 m!1021555))

(assert (=> b!1101132 d!130607))

(declare-fun bm!46153 () Bool)

(declare-fun call!46157 () ListLongMap!15425)

(assert (=> bm!46153 (= call!46157 (getCurrentListMapNoExtraKeys!4201 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun b!1101277 () Bool)

(declare-fun e!628630 () Bool)

(declare-fun call!46156 () Bool)

(assert (=> b!1101277 (= e!628630 (not call!46156))))

(declare-fun b!1101278 () Bool)

(declare-fun e!628631 () ListLongMap!15425)

(declare-fun call!46162 () ListLongMap!15425)

(assert (=> b!1101278 (= e!628631 call!46162)))

(declare-fun b!1101279 () Bool)

(declare-fun e!628627 () Bool)

(declare-fun e!628633 () Bool)

(assert (=> b!1101279 (= e!628627 e!628633)))

(declare-fun c!108736 () Bool)

(assert (=> b!1101279 (= c!108736 (not (= (bvand extraKeys!811 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1101280 () Bool)

(declare-fun e!628628 () Bool)

(assert (=> b!1101280 (= e!628630 e!628628)))

(declare-fun res!734954 () Bool)

(assert (=> b!1101280 (= res!734954 call!46156)))

(assert (=> b!1101280 (=> (not res!734954) (not e!628628))))

(declare-fun b!1101281 () Bool)

(declare-fun e!628629 () Unit!36127)

(declare-fun lt!493718 () Unit!36127)

(assert (=> b!1101281 (= e!628629 lt!493718)))

(declare-fun lt!493713 () ListLongMap!15425)

(assert (=> b!1101281 (= lt!493713 (getCurrentListMapNoExtraKeys!4201 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun lt!493721 () (_ BitVec 64))

(assert (=> b!1101281 (= lt!493721 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!493728 () (_ BitVec 64))

(assert (=> b!1101281 (= lt!493728 (select (arr!34314 _keys!1070) #b00000000000000000000000000000000))))

(declare-fun lt!493717 () Unit!36127)

(declare-fun addStillContains!668 (ListLongMap!15425 (_ BitVec 64) V!41419 (_ BitVec 64)) Unit!36127)

(assert (=> b!1101281 (= lt!493717 (addStillContains!668 lt!493713 lt!493721 zeroValue!831 lt!493728))))

(assert (=> b!1101281 (contains!6415 (+!3360 lt!493713 (tuple2!17445 lt!493721 zeroValue!831)) lt!493728)))

(declare-fun lt!493724 () Unit!36127)

(assert (=> b!1101281 (= lt!493724 lt!493717)))

(declare-fun lt!493712 () ListLongMap!15425)

(assert (=> b!1101281 (= lt!493712 (getCurrentListMapNoExtraKeys!4201 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun lt!493709 () (_ BitVec 64))

(assert (=> b!1101281 (= lt!493709 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!493723 () (_ BitVec 64))

(assert (=> b!1101281 (= lt!493723 (select (arr!34314 _keys!1070) #b00000000000000000000000000000000))))

(declare-fun lt!493726 () Unit!36127)

(declare-fun addApplyDifferent!520 (ListLongMap!15425 (_ BitVec 64) V!41419 (_ BitVec 64)) Unit!36127)

(assert (=> b!1101281 (= lt!493726 (addApplyDifferent!520 lt!493712 lt!493709 minValue!831 lt!493723))))

(declare-fun apply!986 (ListLongMap!15425 (_ BitVec 64)) V!41419)

(assert (=> b!1101281 (= (apply!986 (+!3360 lt!493712 (tuple2!17445 lt!493709 minValue!831)) lt!493723) (apply!986 lt!493712 lt!493723))))

(declare-fun lt!493714 () Unit!36127)

(assert (=> b!1101281 (= lt!493714 lt!493726)))

(declare-fun lt!493727 () ListLongMap!15425)

(assert (=> b!1101281 (= lt!493727 (getCurrentListMapNoExtraKeys!4201 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun lt!493725 () (_ BitVec 64))

(assert (=> b!1101281 (= lt!493725 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!493710 () (_ BitVec 64))

(assert (=> b!1101281 (= lt!493710 (select (arr!34314 _keys!1070) #b00000000000000000000000000000000))))

(declare-fun lt!493707 () Unit!36127)

(assert (=> b!1101281 (= lt!493707 (addApplyDifferent!520 lt!493727 lt!493725 zeroValue!831 lt!493710))))

(assert (=> b!1101281 (= (apply!986 (+!3360 lt!493727 (tuple2!17445 lt!493725 zeroValue!831)) lt!493710) (apply!986 lt!493727 lt!493710))))

(declare-fun lt!493715 () Unit!36127)

(assert (=> b!1101281 (= lt!493715 lt!493707)))

(declare-fun lt!493708 () ListLongMap!15425)

(assert (=> b!1101281 (= lt!493708 (getCurrentListMapNoExtraKeys!4201 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun lt!493722 () (_ BitVec 64))

(assert (=> b!1101281 (= lt!493722 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!493711 () (_ BitVec 64))

(assert (=> b!1101281 (= lt!493711 (select (arr!34314 _keys!1070) #b00000000000000000000000000000000))))

(assert (=> b!1101281 (= lt!493718 (addApplyDifferent!520 lt!493708 lt!493722 minValue!831 lt!493711))))

(assert (=> b!1101281 (= (apply!986 (+!3360 lt!493708 (tuple2!17445 lt!493722 minValue!831)) lt!493711) (apply!986 lt!493708 lt!493711))))

(declare-fun b!1101282 () Bool)

(declare-fun lt!493719 () ListLongMap!15425)

(assert (=> b!1101282 (= e!628628 (= (apply!986 lt!493719 #b0000000000000000000000000000000000000000000000000000000000000000) zeroValue!831))))

(declare-fun b!1101283 () Bool)

(declare-fun e!628632 () Bool)

(assert (=> b!1101283 (= e!628632 (= (apply!986 lt!493719 #b1000000000000000000000000000000000000000000000000000000000000000) minValue!831))))

(declare-fun b!1101284 () Bool)

(declare-fun e!628624 () ListLongMap!15425)

(declare-fun call!46161 () ListLongMap!15425)

(assert (=> b!1101284 (= e!628624 (+!3360 call!46161 (tuple2!17445 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!831)))))

(declare-fun b!1101285 () Bool)

(declare-fun c!108735 () Bool)

(assert (=> b!1101285 (= c!108735 (and (not (= (bvand extraKeys!811 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeys!811 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun e!628625 () ListLongMap!15425)

(assert (=> b!1101285 (= e!628625 e!628631)))

(declare-fun b!1101286 () Bool)

(declare-fun e!628623 () Bool)

(assert (=> b!1101286 (= e!628623 (validKeyInArray!0 (select (arr!34314 _keys!1070) #b00000000000000000000000000000000)))))

(declare-fun b!1101287 () Bool)

(declare-fun e!628626 () Bool)

(assert (=> b!1101287 (= e!628626 (validKeyInArray!0 (select (arr!34314 _keys!1070) #b00000000000000000000000000000000)))))

(declare-fun bm!46155 () Bool)

(declare-fun call!46158 () ListLongMap!15425)

(assert (=> bm!46155 (= call!46162 call!46158)))

(declare-fun b!1101288 () Bool)

(assert (=> b!1101288 (= e!628633 e!628632)))

(declare-fun res!734959 () Bool)

(declare-fun call!46160 () Bool)

(assert (=> b!1101288 (= res!734959 call!46160)))

(assert (=> b!1101288 (=> (not res!734959) (not e!628632))))

(declare-fun bm!46156 () Bool)

(assert (=> bm!46156 (= call!46158 call!46157)))

(declare-fun b!1101289 () Bool)

(declare-fun res!734958 () Bool)

(assert (=> b!1101289 (=> (not res!734958) (not e!628627))))

(declare-fun e!628634 () Bool)

(assert (=> b!1101289 (= res!734958 e!628634)))

(declare-fun res!734960 () Bool)

(assert (=> b!1101289 (=> res!734960 e!628634)))

(assert (=> b!1101289 (= res!734960 (not e!628623))))

(declare-fun res!734956 () Bool)

(assert (=> b!1101289 (=> (not res!734956) (not e!628623))))

(assert (=> b!1101289 (= res!734956 (bvslt #b00000000000000000000000000000000 (size!34851 _keys!1070)))))

(declare-fun bm!46157 () Bool)

(assert (=> bm!46157 (= call!46160 (contains!6415 lt!493719 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1101290 () Bool)

(declare-fun res!734955 () Bool)

(assert (=> b!1101290 (=> (not res!734955) (not e!628627))))

(assert (=> b!1101290 (= res!734955 e!628630)))

(declare-fun c!108737 () Bool)

(assert (=> b!1101290 (= c!108737 (not (= (bvand extraKeys!811 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!1101291 () Bool)

(assert (=> b!1101291 (= e!628633 (not call!46160))))

(declare-fun b!1101292 () Bool)

(declare-fun call!46159 () ListLongMap!15425)

(assert (=> b!1101292 (= e!628631 call!46159)))

(declare-fun b!1101293 () Bool)

(assert (=> b!1101293 (= e!628624 e!628625)))

(declare-fun c!108738 () Bool)

(assert (=> b!1101293 (= c!108738 (and (not (= (bvand extraKeys!811 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeys!811 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun d!130609 () Bool)

(assert (=> d!130609 e!628627))

(declare-fun res!734961 () Bool)

(assert (=> d!130609 (=> (not res!734961) (not e!628627))))

(assert (=> d!130609 (= res!734961 (or (bvsge #b00000000000000000000000000000000 (size!34851 _keys!1070)) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!34851 _keys!1070)))))))

(declare-fun lt!493716 () ListLongMap!15425)

(assert (=> d!130609 (= lt!493719 lt!493716)))

(declare-fun lt!493720 () Unit!36127)

(assert (=> d!130609 (= lt!493720 e!628629)))

(declare-fun c!108740 () Bool)

(assert (=> d!130609 (= c!108740 e!628626)))

(declare-fun res!734953 () Bool)

(assert (=> d!130609 (=> (not res!734953) (not e!628626))))

(assert (=> d!130609 (= res!734953 (bvslt #b00000000000000000000000000000000 (size!34851 _keys!1070)))))

(assert (=> d!130609 (= lt!493716 e!628624)))

(declare-fun c!108739 () Bool)

(assert (=> d!130609 (= c!108739 (and (not (= (bvand extraKeys!811 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!811 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!130609 (validMask!0 mask!1414)))

(assert (=> d!130609 (= (getCurrentListMap!4414 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882) lt!493719)))

(declare-fun bm!46154 () Bool)

(assert (=> bm!46154 (= call!46156 (contains!6415 lt!493719 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1101294 () Bool)

(declare-fun e!628635 () Bool)

(declare-fun get!17664 (ValueCell!12900 V!41419) V!41419)

(assert (=> b!1101294 (= e!628635 (= (apply!986 lt!493719 (select (arr!34314 _keys!1070) #b00000000000000000000000000000000)) (get!17664 (select (arr!34315 _values!874) #b00000000000000000000000000000000) (dynLambda!2332 defaultEntry!882 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1101294 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!34852 _values!874)))))

(assert (=> b!1101294 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!34851 _keys!1070)))))

(declare-fun bm!46158 () Bool)

(assert (=> bm!46158 (= call!46159 call!46161)))

(declare-fun b!1101295 () Bool)

(assert (=> b!1101295 (= e!628634 e!628635)))

(declare-fun res!734957 () Bool)

(assert (=> b!1101295 (=> (not res!734957) (not e!628635))))

(assert (=> b!1101295 (= res!734957 (contains!6415 lt!493719 (select (arr!34314 _keys!1070) #b00000000000000000000000000000000)))))

(assert (=> b!1101295 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!34851 _keys!1070)))))

(declare-fun bm!46159 () Bool)

(assert (=> bm!46159 (= call!46161 (+!3360 (ite c!108739 call!46157 (ite c!108738 call!46158 call!46162)) (ite (or c!108739 c!108738) (tuple2!17445 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!831) (tuple2!17445 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!831))))))

(declare-fun b!1101296 () Bool)

(declare-fun Unit!36129 () Unit!36127)

(assert (=> b!1101296 (= e!628629 Unit!36129)))

(declare-fun b!1101297 () Bool)

(assert (=> b!1101297 (= e!628625 call!46159)))

(assert (= (and d!130609 c!108739) b!1101284))

(assert (= (and d!130609 (not c!108739)) b!1101293))

(assert (= (and b!1101293 c!108738) b!1101297))

(assert (= (and b!1101293 (not c!108738)) b!1101285))

(assert (= (and b!1101285 c!108735) b!1101292))

(assert (= (and b!1101285 (not c!108735)) b!1101278))

(assert (= (or b!1101292 b!1101278) bm!46155))

(assert (= (or b!1101297 bm!46155) bm!46156))

(assert (= (or b!1101297 b!1101292) bm!46158))

(assert (= (or b!1101284 bm!46156) bm!46153))

(assert (= (or b!1101284 bm!46158) bm!46159))

(assert (= (and d!130609 res!734953) b!1101287))

(assert (= (and d!130609 c!108740) b!1101281))

(assert (= (and d!130609 (not c!108740)) b!1101296))

(assert (= (and d!130609 res!734961) b!1101289))

(assert (= (and b!1101289 res!734956) b!1101286))

(assert (= (and b!1101289 (not res!734960)) b!1101295))

(assert (= (and b!1101295 res!734957) b!1101294))

(assert (= (and b!1101289 res!734958) b!1101290))

(assert (= (and b!1101290 c!108737) b!1101280))

(assert (= (and b!1101290 (not c!108737)) b!1101277))

(assert (= (and b!1101280 res!734954) b!1101282))

(assert (= (or b!1101280 b!1101277) bm!46154))

(assert (= (and b!1101290 res!734955) b!1101279))

(assert (= (and b!1101279 c!108736) b!1101288))

(assert (= (and b!1101279 (not c!108736)) b!1101291))

(assert (= (and b!1101288 res!734959) b!1101283))

(assert (= (or b!1101288 b!1101291) bm!46157))

(declare-fun b_lambda!18103 () Bool)

(assert (=> (not b_lambda!18103) (not b!1101294)))

(assert (=> b!1101294 t!34336))

(declare-fun b_and!37139 () Bool)

(assert (= b_and!37133 (and (=> t!34336 result!16617) b_and!37139)))

(assert (=> b!1101286 m!1021511))

(assert (=> b!1101286 m!1021511))

(assert (=> b!1101286 m!1021517))

(assert (=> b!1101295 m!1021511))

(assert (=> b!1101295 m!1021511))

(declare-fun m!1021557 () Bool)

(assert (=> b!1101295 m!1021557))

(assert (=> b!1101287 m!1021511))

(assert (=> b!1101287 m!1021511))

(assert (=> b!1101287 m!1021517))

(declare-fun m!1021559 () Bool)

(assert (=> bm!46159 m!1021559))

(assert (=> b!1101294 m!1021441))

(assert (=> b!1101294 m!1021511))

(assert (=> b!1101294 m!1021511))

(declare-fun m!1021561 () Bool)

(assert (=> b!1101294 m!1021561))

(declare-fun m!1021563 () Bool)

(assert (=> b!1101294 m!1021563))

(assert (=> b!1101294 m!1021563))

(assert (=> b!1101294 m!1021441))

(declare-fun m!1021565 () Bool)

(assert (=> b!1101294 m!1021565))

(declare-fun m!1021567 () Bool)

(assert (=> b!1101283 m!1021567))

(declare-fun m!1021569 () Bool)

(assert (=> b!1101284 m!1021569))

(declare-fun m!1021571 () Bool)

(assert (=> b!1101282 m!1021571))

(declare-fun m!1021573 () Bool)

(assert (=> b!1101281 m!1021573))

(declare-fun m!1021575 () Bool)

(assert (=> b!1101281 m!1021575))

(declare-fun m!1021577 () Bool)

(assert (=> b!1101281 m!1021577))

(declare-fun m!1021579 () Bool)

(assert (=> b!1101281 m!1021579))

(declare-fun m!1021581 () Bool)

(assert (=> b!1101281 m!1021581))

(assert (=> b!1101281 m!1021573))

(declare-fun m!1021583 () Bool)

(assert (=> b!1101281 m!1021583))

(declare-fun m!1021585 () Bool)

(assert (=> b!1101281 m!1021585))

(declare-fun m!1021587 () Bool)

(assert (=> b!1101281 m!1021587))

(declare-fun m!1021589 () Bool)

(assert (=> b!1101281 m!1021589))

(declare-fun m!1021591 () Bool)

(assert (=> b!1101281 m!1021591))

(assert (=> b!1101281 m!1021581))

(declare-fun m!1021593 () Bool)

(assert (=> b!1101281 m!1021593))

(declare-fun m!1021595 () Bool)

(assert (=> b!1101281 m!1021595))

(assert (=> b!1101281 m!1021587))

(declare-fun m!1021597 () Bool)

(assert (=> b!1101281 m!1021597))

(assert (=> b!1101281 m!1021445))

(assert (=> b!1101281 m!1021511))

(assert (=> b!1101281 m!1021575))

(declare-fun m!1021599 () Bool)

(assert (=> b!1101281 m!1021599))

(declare-fun m!1021601 () Bool)

(assert (=> b!1101281 m!1021601))

(assert (=> bm!46153 m!1021445))

(declare-fun m!1021603 () Bool)

(assert (=> bm!46154 m!1021603))

(declare-fun m!1021605 () Bool)

(assert (=> bm!46157 m!1021605))

(assert (=> d!130609 m!1021427))

(assert (=> b!1101132 d!130609))

(declare-fun b!1101322 () Bool)

(declare-fun e!628652 () Bool)

(declare-fun lt!493747 () ListLongMap!15425)

(declare-fun isEmpty!972 (ListLongMap!15425) Bool)

(assert (=> b!1101322 (= e!628652 (isEmpty!972 lt!493747))))

(declare-fun b!1101323 () Bool)

(declare-fun lt!493746 () Unit!36127)

(declare-fun lt!493748 () Unit!36127)

(assert (=> b!1101323 (= lt!493746 lt!493748)))

(declare-fun lt!493745 () ListLongMap!15425)

(declare-fun lt!493744 () (_ BitVec 64))

(declare-fun lt!493749 () V!41419)

(declare-fun lt!493743 () (_ BitVec 64))

(assert (=> b!1101323 (not (contains!6415 (+!3360 lt!493745 (tuple2!17445 lt!493743 lt!493749)) lt!493744))))

(declare-fun addStillNotContains!281 (ListLongMap!15425 (_ BitVec 64) V!41419 (_ BitVec 64)) Unit!36127)

(assert (=> b!1101323 (= lt!493748 (addStillNotContains!281 lt!493745 lt!493743 lt!493749 lt!493744))))

(assert (=> b!1101323 (= lt!493744 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!1101323 (= lt!493749 (get!17664 (select (arr!34315 lt!493604) #b00000000000000000000000000000000) (dynLambda!2332 defaultEntry!882 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!1101323 (= lt!493743 (select (arr!34314 lt!493602) #b00000000000000000000000000000000))))

(declare-fun call!46165 () ListLongMap!15425)

(assert (=> b!1101323 (= lt!493745 call!46165)))

(declare-fun e!628653 () ListLongMap!15425)

(assert (=> b!1101323 (= e!628653 (+!3360 call!46165 (tuple2!17445 (select (arr!34314 lt!493602) #b00000000000000000000000000000000) (get!17664 (select (arr!34315 lt!493604) #b00000000000000000000000000000000) (dynLambda!2332 defaultEntry!882 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!1101324 () Bool)

(declare-fun e!628656 () Bool)

(assert (=> b!1101324 (= e!628656 e!628652)))

(declare-fun c!108749 () Bool)

(assert (=> b!1101324 (= c!108749 (bvslt #b00000000000000000000000000000000 (size!34851 lt!493602)))))

(declare-fun b!1101325 () Bool)

(declare-fun e!628651 () Bool)

(assert (=> b!1101325 (= e!628656 e!628651)))

(assert (=> b!1101325 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!34851 lt!493602)))))

(declare-fun res!734973 () Bool)

(assert (=> b!1101325 (= res!734973 (contains!6415 lt!493747 (select (arr!34314 lt!493602) #b00000000000000000000000000000000)))))

(assert (=> b!1101325 (=> (not res!734973) (not e!628651))))

(declare-fun b!1101326 () Bool)

(assert (=> b!1101326 (= e!628653 call!46165)))

(declare-fun b!1101327 () Bool)

(declare-fun res!734972 () Bool)

(declare-fun e!628655 () Bool)

(assert (=> b!1101327 (=> (not res!734972) (not e!628655))))

(assert (=> b!1101327 (= res!734972 (not (contains!6415 lt!493747 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1101328 () Bool)

(declare-fun e!628650 () ListLongMap!15425)

(assert (=> b!1101328 (= e!628650 (ListLongMap!15426 Nil!24113))))

(declare-fun b!1101329 () Bool)

(assert (=> b!1101329 (= e!628652 (= lt!493747 (getCurrentListMapNoExtraKeys!4201 lt!493602 lt!493604 mask!1414 extraKeys!811 zeroValue!831 minValue!831 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) defaultEntry!882)))))

(declare-fun b!1101330 () Bool)

(declare-fun e!628654 () Bool)

(assert (=> b!1101330 (= e!628654 (validKeyInArray!0 (select (arr!34314 lt!493602) #b00000000000000000000000000000000)))))

(assert (=> b!1101330 (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000)))

(declare-fun d!130611 () Bool)

(assert (=> d!130611 e!628655))

(declare-fun res!734971 () Bool)

(assert (=> d!130611 (=> (not res!734971) (not e!628655))))

(assert (=> d!130611 (= res!734971 (not (contains!6415 lt!493747 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!130611 (= lt!493747 e!628650)))

(declare-fun c!108752 () Bool)

(assert (=> d!130611 (= c!108752 (bvsge #b00000000000000000000000000000000 (size!34851 lt!493602)))))

(assert (=> d!130611 (validMask!0 mask!1414)))

(assert (=> d!130611 (= (getCurrentListMapNoExtraKeys!4201 lt!493602 lt!493604 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882) lt!493747)))

(declare-fun b!1101331 () Bool)

(assert (=> b!1101331 (= e!628655 e!628656)))

(declare-fun c!108751 () Bool)

(assert (=> b!1101331 (= c!108751 e!628654)))

(declare-fun res!734970 () Bool)

(assert (=> b!1101331 (=> (not res!734970) (not e!628654))))

(assert (=> b!1101331 (= res!734970 (bvslt #b00000000000000000000000000000000 (size!34851 lt!493602)))))

(declare-fun bm!46162 () Bool)

(assert (=> bm!46162 (= call!46165 (getCurrentListMapNoExtraKeys!4201 lt!493602 lt!493604 mask!1414 extraKeys!811 zeroValue!831 minValue!831 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) defaultEntry!882))))

(declare-fun b!1101332 () Bool)

(assert (=> b!1101332 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!34851 lt!493602)))))

(assert (=> b!1101332 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!34852 lt!493604)))))

(assert (=> b!1101332 (= e!628651 (= (apply!986 lt!493747 (select (arr!34314 lt!493602) #b00000000000000000000000000000000)) (get!17664 (select (arr!34315 lt!493604) #b00000000000000000000000000000000) (dynLambda!2332 defaultEntry!882 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1101333 () Bool)

(assert (=> b!1101333 (= e!628650 e!628653)))

(declare-fun c!108750 () Bool)

(assert (=> b!1101333 (= c!108750 (validKeyInArray!0 (select (arr!34314 lt!493602) #b00000000000000000000000000000000)))))

(assert (= (and d!130611 c!108752) b!1101328))

(assert (= (and d!130611 (not c!108752)) b!1101333))

(assert (= (and b!1101333 c!108750) b!1101323))

(assert (= (and b!1101333 (not c!108750)) b!1101326))

(assert (= (or b!1101323 b!1101326) bm!46162))

(assert (= (and d!130611 res!734971) b!1101327))

(assert (= (and b!1101327 res!734972) b!1101331))

(assert (= (and b!1101331 res!734970) b!1101330))

(assert (= (and b!1101331 c!108751) b!1101325))

(assert (= (and b!1101331 (not c!108751)) b!1101324))

(assert (= (and b!1101325 res!734973) b!1101332))

(assert (= (and b!1101324 c!108749) b!1101329))

(assert (= (and b!1101324 (not c!108749)) b!1101322))

(declare-fun b_lambda!18105 () Bool)

(assert (=> (not b_lambda!18105) (not b!1101323)))

(assert (=> b!1101323 t!34336))

(declare-fun b_and!37141 () Bool)

(assert (= b_and!37139 (and (=> t!34336 result!16617) b_and!37141)))

(declare-fun b_lambda!18107 () Bool)

(assert (=> (not b_lambda!18107) (not b!1101332)))

(assert (=> b!1101332 t!34336))

(declare-fun b_and!37143 () Bool)

(assert (= b_and!37141 (and (=> t!34336 result!16617) b_and!37143)))

(assert (=> b!1101333 m!1021531))

(assert (=> b!1101333 m!1021531))

(assert (=> b!1101333 m!1021537))

(assert (=> b!1101325 m!1021531))

(assert (=> b!1101325 m!1021531))

(declare-fun m!1021607 () Bool)

(assert (=> b!1101325 m!1021607))

(declare-fun m!1021609 () Bool)

(assert (=> b!1101329 m!1021609))

(declare-fun m!1021611 () Bool)

(assert (=> b!1101322 m!1021611))

(assert (=> b!1101330 m!1021531))

(assert (=> b!1101330 m!1021531))

(assert (=> b!1101330 m!1021537))

(declare-fun m!1021613 () Bool)

(assert (=> d!130611 m!1021613))

(assert (=> d!130611 m!1021427))

(assert (=> b!1101332 m!1021441))

(declare-fun m!1021615 () Bool)

(assert (=> b!1101332 m!1021615))

(assert (=> b!1101332 m!1021615))

(assert (=> b!1101332 m!1021441))

(declare-fun m!1021617 () Bool)

(assert (=> b!1101332 m!1021617))

(assert (=> b!1101332 m!1021531))

(assert (=> b!1101332 m!1021531))

(declare-fun m!1021619 () Bool)

(assert (=> b!1101332 m!1021619))

(declare-fun m!1021621 () Bool)

(assert (=> b!1101327 m!1021621))

(assert (=> b!1101323 m!1021441))

(assert (=> b!1101323 m!1021615))

(declare-fun m!1021623 () Bool)

(assert (=> b!1101323 m!1021623))

(declare-fun m!1021625 () Bool)

(assert (=> b!1101323 m!1021625))

(assert (=> b!1101323 m!1021615))

(assert (=> b!1101323 m!1021441))

(assert (=> b!1101323 m!1021617))

(declare-fun m!1021627 () Bool)

(assert (=> b!1101323 m!1021627))

(assert (=> b!1101323 m!1021625))

(declare-fun m!1021629 () Bool)

(assert (=> b!1101323 m!1021629))

(assert (=> b!1101323 m!1021531))

(assert (=> bm!46162 m!1021609))

(assert (=> b!1101132 d!130611))

(declare-fun call!46171 () ListLongMap!15425)

(declare-fun e!628661 () Bool)

(declare-fun b!1101340 () Bool)

(declare-fun call!46170 () ListLongMap!15425)

(assert (=> b!1101340 (= e!628661 (= call!46171 (-!966 call!46170 k0!904)))))

(assert (=> b!1101340 (and (bvsge i!650 #b00000000000000000000000000000000) (bvslt i!650 (size!34852 _values!874)))))

(declare-fun d!130613 () Bool)

(declare-fun e!628662 () Bool)

(assert (=> d!130613 e!628662))

(declare-fun res!734976 () Bool)

(assert (=> d!130613 (=> (not res!734976) (not e!628662))))

(assert (=> d!130613 (= res!734976 (and (or (not (bvsle #b00000000000000000000000000000000 i!650)) (and (bvsge i!650 #b00000000000000000000000000000000) (bvslt i!650 (size!34851 _keys!1070)))) (or (bvsle #b00000000000000000000000000000000 i!650) (and (bvsge i!650 #b00000000000000000000000000000000) (bvslt i!650 (size!34851 _keys!1070))))))))

(declare-fun lt!493752 () Unit!36127)

(declare-fun choose!1777 (array!71308 array!71310 (_ BitVec 32) (_ BitVec 32) V!41419 V!41419 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!36127)

(assert (=> d!130613 (= lt!493752 (choose!1777 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 i!650 k0!904 #b00000000000000000000000000000000 defaultEntry!882))))

(assert (=> d!130613 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvsle #b00000000000000000000000000000000 (size!34851 _keys!1070)))))

(assert (=> d!130613 (= (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!226 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 i!650 k0!904 #b00000000000000000000000000000000 defaultEntry!882) lt!493752)))

(declare-fun b!1101341 () Bool)

(assert (=> b!1101341 (= e!628662 e!628661)))

(declare-fun c!108755 () Bool)

(assert (=> b!1101341 (= c!108755 (bvsle #b00000000000000000000000000000000 i!650))))

(declare-fun b!1101342 () Bool)

(assert (=> b!1101342 (= e!628661 (= call!46171 call!46170))))

(assert (=> b!1101342 (and (bvsge i!650 #b00000000000000000000000000000000) (bvslt i!650 (size!34852 _values!874)))))

(declare-fun bm!46167 () Bool)

(assert (=> bm!46167 (= call!46170 (getCurrentListMapNoExtraKeys!4201 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun bm!46168 () Bool)

(assert (=> bm!46168 (= call!46171 (getCurrentListMapNoExtraKeys!4201 (array!71309 (store (arr!34314 _keys!1070) i!650 #b1000000000000000000000000000000000000000000000000000000000000000) (size!34851 _keys!1070)) (array!71311 (store (arr!34315 _values!874) i!650 (ValueCellFull!12900 (dynLambda!2332 defaultEntry!882 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!34852 _values!874)) mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(assert (= (and d!130613 res!734976) b!1101341))

(assert (= (and b!1101341 c!108755) b!1101340))

(assert (= (and b!1101341 (not c!108755)) b!1101342))

(assert (= (or b!1101340 b!1101342) bm!46167))

(assert (= (or b!1101340 b!1101342) bm!46168))

(declare-fun b_lambda!18109 () Bool)

(assert (=> (not b_lambda!18109) (not bm!46168)))

(assert (=> bm!46168 t!34336))

(declare-fun b_and!37145 () Bool)

(assert (= b_and!37143 (and (=> t!34336 result!16617) b_and!37145)))

(declare-fun m!1021631 () Bool)

(assert (=> b!1101340 m!1021631))

(declare-fun m!1021633 () Bool)

(assert (=> d!130613 m!1021633))

(assert (=> bm!46167 m!1021445))

(assert (=> bm!46168 m!1021439))

(assert (=> bm!46168 m!1021441))

(assert (=> bm!46168 m!1021451))

(declare-fun m!1021635 () Bool)

(assert (=> bm!46168 m!1021635))

(assert (=> b!1101132 d!130613))

(declare-fun d!130615 () Bool)

(declare-fun lt!493755 () ListLongMap!15425)

(assert (=> d!130615 (not (contains!6415 lt!493755 k0!904))))

(declare-fun removeStrictlySorted!86 (List!24116 (_ BitVec 64)) List!24116)

(assert (=> d!130615 (= lt!493755 (ListLongMap!15426 (removeStrictlySorted!86 (toList!7728 lt!493601) k0!904)))))

(assert (=> d!130615 (= (-!966 lt!493601 k0!904) lt!493755)))

(declare-fun bs!32319 () Bool)

(assert (= bs!32319 d!130615))

(declare-fun m!1021637 () Bool)

(assert (=> bs!32319 m!1021637))

(declare-fun m!1021639 () Bool)

(assert (=> bs!32319 m!1021639))

(assert (=> b!1101132 d!130615))

(declare-fun b!1101343 () Bool)

(declare-fun e!628665 () Bool)

(declare-fun lt!493760 () ListLongMap!15425)

(assert (=> b!1101343 (= e!628665 (isEmpty!972 lt!493760))))

(declare-fun b!1101344 () Bool)

(declare-fun lt!493759 () Unit!36127)

(declare-fun lt!493761 () Unit!36127)

(assert (=> b!1101344 (= lt!493759 lt!493761)))

(declare-fun lt!493756 () (_ BitVec 64))

(declare-fun lt!493757 () (_ BitVec 64))

(declare-fun lt!493758 () ListLongMap!15425)

(declare-fun lt!493762 () V!41419)

(assert (=> b!1101344 (not (contains!6415 (+!3360 lt!493758 (tuple2!17445 lt!493756 lt!493762)) lt!493757))))

(assert (=> b!1101344 (= lt!493761 (addStillNotContains!281 lt!493758 lt!493756 lt!493762 lt!493757))))

(assert (=> b!1101344 (= lt!493757 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!1101344 (= lt!493762 (get!17664 (select (arr!34315 _values!874) #b00000000000000000000000000000000) (dynLambda!2332 defaultEntry!882 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!1101344 (= lt!493756 (select (arr!34314 _keys!1070) #b00000000000000000000000000000000))))

(declare-fun call!46172 () ListLongMap!15425)

(assert (=> b!1101344 (= lt!493758 call!46172)))

(declare-fun e!628666 () ListLongMap!15425)

(assert (=> b!1101344 (= e!628666 (+!3360 call!46172 (tuple2!17445 (select (arr!34314 _keys!1070) #b00000000000000000000000000000000) (get!17664 (select (arr!34315 _values!874) #b00000000000000000000000000000000) (dynLambda!2332 defaultEntry!882 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!1101345 () Bool)

(declare-fun e!628669 () Bool)

(assert (=> b!1101345 (= e!628669 e!628665)))

(declare-fun c!108756 () Bool)

(assert (=> b!1101345 (= c!108756 (bvslt #b00000000000000000000000000000000 (size!34851 _keys!1070)))))

(declare-fun b!1101346 () Bool)

(declare-fun e!628664 () Bool)

(assert (=> b!1101346 (= e!628669 e!628664)))

(assert (=> b!1101346 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!34851 _keys!1070)))))

(declare-fun res!734980 () Bool)

(assert (=> b!1101346 (= res!734980 (contains!6415 lt!493760 (select (arr!34314 _keys!1070) #b00000000000000000000000000000000)))))

(assert (=> b!1101346 (=> (not res!734980) (not e!628664))))

(declare-fun b!1101347 () Bool)

(assert (=> b!1101347 (= e!628666 call!46172)))

(declare-fun b!1101348 () Bool)

(declare-fun res!734979 () Bool)

(declare-fun e!628668 () Bool)

(assert (=> b!1101348 (=> (not res!734979) (not e!628668))))

(assert (=> b!1101348 (= res!734979 (not (contains!6415 lt!493760 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1101349 () Bool)

(declare-fun e!628663 () ListLongMap!15425)

(assert (=> b!1101349 (= e!628663 (ListLongMap!15426 Nil!24113))))

(declare-fun b!1101350 () Bool)

(assert (=> b!1101350 (= e!628665 (= lt!493760 (getCurrentListMapNoExtraKeys!4201 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) defaultEntry!882)))))

(declare-fun b!1101351 () Bool)

(declare-fun e!628667 () Bool)

(assert (=> b!1101351 (= e!628667 (validKeyInArray!0 (select (arr!34314 _keys!1070) #b00000000000000000000000000000000)))))

(assert (=> b!1101351 (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000)))

(declare-fun d!130617 () Bool)

(assert (=> d!130617 e!628668))

(declare-fun res!734978 () Bool)

(assert (=> d!130617 (=> (not res!734978) (not e!628668))))

(assert (=> d!130617 (= res!734978 (not (contains!6415 lt!493760 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!130617 (= lt!493760 e!628663)))

(declare-fun c!108759 () Bool)

(assert (=> d!130617 (= c!108759 (bvsge #b00000000000000000000000000000000 (size!34851 _keys!1070)))))

(assert (=> d!130617 (validMask!0 mask!1414)))

(assert (=> d!130617 (= (getCurrentListMapNoExtraKeys!4201 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882) lt!493760)))

(declare-fun b!1101352 () Bool)

(assert (=> b!1101352 (= e!628668 e!628669)))

(declare-fun c!108758 () Bool)

(assert (=> b!1101352 (= c!108758 e!628667)))

(declare-fun res!734977 () Bool)

(assert (=> b!1101352 (=> (not res!734977) (not e!628667))))

(assert (=> b!1101352 (= res!734977 (bvslt #b00000000000000000000000000000000 (size!34851 _keys!1070)))))

(declare-fun bm!46169 () Bool)

(assert (=> bm!46169 (= call!46172 (getCurrentListMapNoExtraKeys!4201 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) defaultEntry!882))))

(declare-fun b!1101353 () Bool)

(assert (=> b!1101353 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!34851 _keys!1070)))))

(assert (=> b!1101353 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!34852 _values!874)))))

(assert (=> b!1101353 (= e!628664 (= (apply!986 lt!493760 (select (arr!34314 _keys!1070) #b00000000000000000000000000000000)) (get!17664 (select (arr!34315 _values!874) #b00000000000000000000000000000000) (dynLambda!2332 defaultEntry!882 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1101354 () Bool)

(assert (=> b!1101354 (= e!628663 e!628666)))

(declare-fun c!108757 () Bool)

(assert (=> b!1101354 (= c!108757 (validKeyInArray!0 (select (arr!34314 _keys!1070) #b00000000000000000000000000000000)))))

(assert (= (and d!130617 c!108759) b!1101349))

(assert (= (and d!130617 (not c!108759)) b!1101354))

(assert (= (and b!1101354 c!108757) b!1101344))

(assert (= (and b!1101354 (not c!108757)) b!1101347))

(assert (= (or b!1101344 b!1101347) bm!46169))

(assert (= (and d!130617 res!734978) b!1101348))

(assert (= (and b!1101348 res!734979) b!1101352))

(assert (= (and b!1101352 res!734977) b!1101351))

(assert (= (and b!1101352 c!108758) b!1101346))

(assert (= (and b!1101352 (not c!108758)) b!1101345))

(assert (= (and b!1101346 res!734980) b!1101353))

(assert (= (and b!1101345 c!108756) b!1101350))

(assert (= (and b!1101345 (not c!108756)) b!1101343))

(declare-fun b_lambda!18111 () Bool)

(assert (=> (not b_lambda!18111) (not b!1101344)))

(assert (=> b!1101344 t!34336))

(declare-fun b_and!37147 () Bool)

(assert (= b_and!37145 (and (=> t!34336 result!16617) b_and!37147)))

(declare-fun b_lambda!18113 () Bool)

(assert (=> (not b_lambda!18113) (not b!1101353)))

(assert (=> b!1101353 t!34336))

(declare-fun b_and!37149 () Bool)

(assert (= b_and!37147 (and (=> t!34336 result!16617) b_and!37149)))

(assert (=> b!1101354 m!1021511))

(assert (=> b!1101354 m!1021511))

(assert (=> b!1101354 m!1021517))

(assert (=> b!1101346 m!1021511))

(assert (=> b!1101346 m!1021511))

(declare-fun m!1021641 () Bool)

(assert (=> b!1101346 m!1021641))

(declare-fun m!1021643 () Bool)

(assert (=> b!1101350 m!1021643))

(declare-fun m!1021645 () Bool)

(assert (=> b!1101343 m!1021645))

(assert (=> b!1101351 m!1021511))

(assert (=> b!1101351 m!1021511))

(assert (=> b!1101351 m!1021517))

(declare-fun m!1021647 () Bool)

(assert (=> d!130617 m!1021647))

(assert (=> d!130617 m!1021427))

(assert (=> b!1101353 m!1021441))

(assert (=> b!1101353 m!1021563))

(assert (=> b!1101353 m!1021563))

(assert (=> b!1101353 m!1021441))

(assert (=> b!1101353 m!1021565))

(assert (=> b!1101353 m!1021511))

(assert (=> b!1101353 m!1021511))

(declare-fun m!1021649 () Bool)

(assert (=> b!1101353 m!1021649))

(declare-fun m!1021651 () Bool)

(assert (=> b!1101348 m!1021651))

(assert (=> b!1101344 m!1021441))

(assert (=> b!1101344 m!1021563))

(declare-fun m!1021653 () Bool)

(assert (=> b!1101344 m!1021653))

(declare-fun m!1021655 () Bool)

(assert (=> b!1101344 m!1021655))

(assert (=> b!1101344 m!1021563))

(assert (=> b!1101344 m!1021441))

(assert (=> b!1101344 m!1021565))

(declare-fun m!1021657 () Bool)

(assert (=> b!1101344 m!1021657))

(assert (=> b!1101344 m!1021655))

(declare-fun m!1021659 () Bool)

(assert (=> b!1101344 m!1021659))

(assert (=> b!1101344 m!1021511))

(assert (=> bm!46169 m!1021643))

(assert (=> b!1101132 d!130617))

(declare-fun call!46174 () ListLongMap!15425)

(declare-fun bm!46170 () Bool)

(assert (=> bm!46170 (= call!46174 (getCurrentListMapNoExtraKeys!4201 lt!493602 lt!493604 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun b!1101355 () Bool)

(declare-fun e!628677 () Bool)

(declare-fun call!46173 () Bool)

(assert (=> b!1101355 (= e!628677 (not call!46173))))

(declare-fun b!1101356 () Bool)

(declare-fun e!628678 () ListLongMap!15425)

(declare-fun call!46179 () ListLongMap!15425)

(assert (=> b!1101356 (= e!628678 call!46179)))

(declare-fun b!1101357 () Bool)

(declare-fun e!628674 () Bool)

(declare-fun e!628680 () Bool)

(assert (=> b!1101357 (= e!628674 e!628680)))

(declare-fun c!108761 () Bool)

(assert (=> b!1101357 (= c!108761 (not (= (bvand extraKeys!811 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1101358 () Bool)

(declare-fun e!628675 () Bool)

(assert (=> b!1101358 (= e!628677 e!628675)))

(declare-fun res!734982 () Bool)

(assert (=> b!1101358 (= res!734982 call!46173)))

(assert (=> b!1101358 (=> (not res!734982) (not e!628675))))

(declare-fun b!1101359 () Bool)

(declare-fun e!628676 () Unit!36127)

(declare-fun lt!493774 () Unit!36127)

(assert (=> b!1101359 (= e!628676 lt!493774)))

(declare-fun lt!493769 () ListLongMap!15425)

(assert (=> b!1101359 (= lt!493769 (getCurrentListMapNoExtraKeys!4201 lt!493602 lt!493604 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun lt!493777 () (_ BitVec 64))

(assert (=> b!1101359 (= lt!493777 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!493784 () (_ BitVec 64))

(assert (=> b!1101359 (= lt!493784 (select (arr!34314 lt!493602) #b00000000000000000000000000000000))))

(declare-fun lt!493773 () Unit!36127)

(assert (=> b!1101359 (= lt!493773 (addStillContains!668 lt!493769 lt!493777 zeroValue!831 lt!493784))))

(assert (=> b!1101359 (contains!6415 (+!3360 lt!493769 (tuple2!17445 lt!493777 zeroValue!831)) lt!493784)))

(declare-fun lt!493780 () Unit!36127)

(assert (=> b!1101359 (= lt!493780 lt!493773)))

(declare-fun lt!493768 () ListLongMap!15425)

(assert (=> b!1101359 (= lt!493768 (getCurrentListMapNoExtraKeys!4201 lt!493602 lt!493604 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun lt!493765 () (_ BitVec 64))

(assert (=> b!1101359 (= lt!493765 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!493779 () (_ BitVec 64))

(assert (=> b!1101359 (= lt!493779 (select (arr!34314 lt!493602) #b00000000000000000000000000000000))))

(declare-fun lt!493782 () Unit!36127)

(assert (=> b!1101359 (= lt!493782 (addApplyDifferent!520 lt!493768 lt!493765 minValue!831 lt!493779))))

(assert (=> b!1101359 (= (apply!986 (+!3360 lt!493768 (tuple2!17445 lt!493765 minValue!831)) lt!493779) (apply!986 lt!493768 lt!493779))))

(declare-fun lt!493770 () Unit!36127)

(assert (=> b!1101359 (= lt!493770 lt!493782)))

(declare-fun lt!493783 () ListLongMap!15425)

(assert (=> b!1101359 (= lt!493783 (getCurrentListMapNoExtraKeys!4201 lt!493602 lt!493604 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun lt!493781 () (_ BitVec 64))

(assert (=> b!1101359 (= lt!493781 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!493766 () (_ BitVec 64))

(assert (=> b!1101359 (= lt!493766 (select (arr!34314 lt!493602) #b00000000000000000000000000000000))))

(declare-fun lt!493763 () Unit!36127)

(assert (=> b!1101359 (= lt!493763 (addApplyDifferent!520 lt!493783 lt!493781 zeroValue!831 lt!493766))))

(assert (=> b!1101359 (= (apply!986 (+!3360 lt!493783 (tuple2!17445 lt!493781 zeroValue!831)) lt!493766) (apply!986 lt!493783 lt!493766))))

(declare-fun lt!493771 () Unit!36127)

(assert (=> b!1101359 (= lt!493771 lt!493763)))

(declare-fun lt!493764 () ListLongMap!15425)

(assert (=> b!1101359 (= lt!493764 (getCurrentListMapNoExtraKeys!4201 lt!493602 lt!493604 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun lt!493778 () (_ BitVec 64))

(assert (=> b!1101359 (= lt!493778 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!493767 () (_ BitVec 64))

(assert (=> b!1101359 (= lt!493767 (select (arr!34314 lt!493602) #b00000000000000000000000000000000))))

(assert (=> b!1101359 (= lt!493774 (addApplyDifferent!520 lt!493764 lt!493778 minValue!831 lt!493767))))

(assert (=> b!1101359 (= (apply!986 (+!3360 lt!493764 (tuple2!17445 lt!493778 minValue!831)) lt!493767) (apply!986 lt!493764 lt!493767))))

(declare-fun b!1101360 () Bool)

(declare-fun lt!493775 () ListLongMap!15425)

(assert (=> b!1101360 (= e!628675 (= (apply!986 lt!493775 #b0000000000000000000000000000000000000000000000000000000000000000) zeroValue!831))))

(declare-fun b!1101361 () Bool)

(declare-fun e!628679 () Bool)

(assert (=> b!1101361 (= e!628679 (= (apply!986 lt!493775 #b1000000000000000000000000000000000000000000000000000000000000000) minValue!831))))

(declare-fun b!1101362 () Bool)

(declare-fun e!628671 () ListLongMap!15425)

(declare-fun call!46178 () ListLongMap!15425)

(assert (=> b!1101362 (= e!628671 (+!3360 call!46178 (tuple2!17445 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!831)))))

(declare-fun b!1101363 () Bool)

(declare-fun c!108760 () Bool)

(assert (=> b!1101363 (= c!108760 (and (not (= (bvand extraKeys!811 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeys!811 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun e!628672 () ListLongMap!15425)

(assert (=> b!1101363 (= e!628672 e!628678)))

(declare-fun b!1101364 () Bool)

(declare-fun e!628670 () Bool)

(assert (=> b!1101364 (= e!628670 (validKeyInArray!0 (select (arr!34314 lt!493602) #b00000000000000000000000000000000)))))

(declare-fun b!1101365 () Bool)

(declare-fun e!628673 () Bool)

(assert (=> b!1101365 (= e!628673 (validKeyInArray!0 (select (arr!34314 lt!493602) #b00000000000000000000000000000000)))))

(declare-fun bm!46172 () Bool)

(declare-fun call!46175 () ListLongMap!15425)

(assert (=> bm!46172 (= call!46179 call!46175)))

(declare-fun b!1101366 () Bool)

(assert (=> b!1101366 (= e!628680 e!628679)))

(declare-fun res!734987 () Bool)

(declare-fun call!46177 () Bool)

(assert (=> b!1101366 (= res!734987 call!46177)))

(assert (=> b!1101366 (=> (not res!734987) (not e!628679))))

(declare-fun bm!46173 () Bool)

(assert (=> bm!46173 (= call!46175 call!46174)))

(declare-fun b!1101367 () Bool)

(declare-fun res!734986 () Bool)

(assert (=> b!1101367 (=> (not res!734986) (not e!628674))))

(declare-fun e!628681 () Bool)

(assert (=> b!1101367 (= res!734986 e!628681)))

(declare-fun res!734988 () Bool)

(assert (=> b!1101367 (=> res!734988 e!628681)))

(assert (=> b!1101367 (= res!734988 (not e!628670))))

(declare-fun res!734984 () Bool)

(assert (=> b!1101367 (=> (not res!734984) (not e!628670))))

(assert (=> b!1101367 (= res!734984 (bvslt #b00000000000000000000000000000000 (size!34851 lt!493602)))))

(declare-fun bm!46174 () Bool)

(assert (=> bm!46174 (= call!46177 (contains!6415 lt!493775 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1101368 () Bool)

(declare-fun res!734983 () Bool)

(assert (=> b!1101368 (=> (not res!734983) (not e!628674))))

(assert (=> b!1101368 (= res!734983 e!628677)))

(declare-fun c!108762 () Bool)

(assert (=> b!1101368 (= c!108762 (not (= (bvand extraKeys!811 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!1101369 () Bool)

(assert (=> b!1101369 (= e!628680 (not call!46177))))

(declare-fun b!1101370 () Bool)

(declare-fun call!46176 () ListLongMap!15425)

(assert (=> b!1101370 (= e!628678 call!46176)))

(declare-fun b!1101371 () Bool)

(assert (=> b!1101371 (= e!628671 e!628672)))

(declare-fun c!108763 () Bool)

(assert (=> b!1101371 (= c!108763 (and (not (= (bvand extraKeys!811 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeys!811 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun d!130619 () Bool)

(assert (=> d!130619 e!628674))

(declare-fun res!734989 () Bool)

(assert (=> d!130619 (=> (not res!734989) (not e!628674))))

(assert (=> d!130619 (= res!734989 (or (bvsge #b00000000000000000000000000000000 (size!34851 lt!493602)) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!34851 lt!493602)))))))

(declare-fun lt!493772 () ListLongMap!15425)

(assert (=> d!130619 (= lt!493775 lt!493772)))

(declare-fun lt!493776 () Unit!36127)

(assert (=> d!130619 (= lt!493776 e!628676)))

(declare-fun c!108765 () Bool)

(assert (=> d!130619 (= c!108765 e!628673)))

(declare-fun res!734981 () Bool)

(assert (=> d!130619 (=> (not res!734981) (not e!628673))))

(assert (=> d!130619 (= res!734981 (bvslt #b00000000000000000000000000000000 (size!34851 lt!493602)))))

(assert (=> d!130619 (= lt!493772 e!628671)))

(declare-fun c!108764 () Bool)

(assert (=> d!130619 (= c!108764 (and (not (= (bvand extraKeys!811 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!811 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!130619 (validMask!0 mask!1414)))

(assert (=> d!130619 (= (getCurrentListMap!4414 lt!493602 lt!493604 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882) lt!493775)))

(declare-fun bm!46171 () Bool)

(assert (=> bm!46171 (= call!46173 (contains!6415 lt!493775 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!628682 () Bool)

(declare-fun b!1101372 () Bool)

(assert (=> b!1101372 (= e!628682 (= (apply!986 lt!493775 (select (arr!34314 lt!493602) #b00000000000000000000000000000000)) (get!17664 (select (arr!34315 lt!493604) #b00000000000000000000000000000000) (dynLambda!2332 defaultEntry!882 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1101372 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!34852 lt!493604)))))

(assert (=> b!1101372 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!34851 lt!493602)))))

(declare-fun bm!46175 () Bool)

(assert (=> bm!46175 (= call!46176 call!46178)))

(declare-fun b!1101373 () Bool)

(assert (=> b!1101373 (= e!628681 e!628682)))

(declare-fun res!734985 () Bool)

(assert (=> b!1101373 (=> (not res!734985) (not e!628682))))

(assert (=> b!1101373 (= res!734985 (contains!6415 lt!493775 (select (arr!34314 lt!493602) #b00000000000000000000000000000000)))))

(assert (=> b!1101373 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!34851 lt!493602)))))

(declare-fun bm!46176 () Bool)

(assert (=> bm!46176 (= call!46178 (+!3360 (ite c!108764 call!46174 (ite c!108763 call!46175 call!46179)) (ite (or c!108764 c!108763) (tuple2!17445 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!831) (tuple2!17445 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!831))))))

(declare-fun b!1101374 () Bool)

(declare-fun Unit!36130 () Unit!36127)

(assert (=> b!1101374 (= e!628676 Unit!36130)))

(declare-fun b!1101375 () Bool)

(assert (=> b!1101375 (= e!628672 call!46176)))

(assert (= (and d!130619 c!108764) b!1101362))

(assert (= (and d!130619 (not c!108764)) b!1101371))

(assert (= (and b!1101371 c!108763) b!1101375))

(assert (= (and b!1101371 (not c!108763)) b!1101363))

(assert (= (and b!1101363 c!108760) b!1101370))

(assert (= (and b!1101363 (not c!108760)) b!1101356))

(assert (= (or b!1101370 b!1101356) bm!46172))

(assert (= (or b!1101375 bm!46172) bm!46173))

(assert (= (or b!1101375 b!1101370) bm!46175))

(assert (= (or b!1101362 bm!46173) bm!46170))

(assert (= (or b!1101362 bm!46175) bm!46176))

(assert (= (and d!130619 res!734981) b!1101365))

(assert (= (and d!130619 c!108765) b!1101359))

(assert (= (and d!130619 (not c!108765)) b!1101374))

(assert (= (and d!130619 res!734989) b!1101367))

(assert (= (and b!1101367 res!734984) b!1101364))

(assert (= (and b!1101367 (not res!734988)) b!1101373))

(assert (= (and b!1101373 res!734985) b!1101372))

(assert (= (and b!1101367 res!734986) b!1101368))

(assert (= (and b!1101368 c!108762) b!1101358))

(assert (= (and b!1101368 (not c!108762)) b!1101355))

(assert (= (and b!1101358 res!734982) b!1101360))

(assert (= (or b!1101358 b!1101355) bm!46171))

(assert (= (and b!1101368 res!734983) b!1101357))

(assert (= (and b!1101357 c!108761) b!1101366))

(assert (= (and b!1101357 (not c!108761)) b!1101369))

(assert (= (and b!1101366 res!734987) b!1101361))

(assert (= (or b!1101366 b!1101369) bm!46174))

(declare-fun b_lambda!18115 () Bool)

(assert (=> (not b_lambda!18115) (not b!1101372)))

(assert (=> b!1101372 t!34336))

(declare-fun b_and!37151 () Bool)

(assert (= b_and!37149 (and (=> t!34336 result!16617) b_and!37151)))

(assert (=> b!1101364 m!1021531))

(assert (=> b!1101364 m!1021531))

(assert (=> b!1101364 m!1021537))

(assert (=> b!1101373 m!1021531))

(assert (=> b!1101373 m!1021531))

(declare-fun m!1021661 () Bool)

(assert (=> b!1101373 m!1021661))

(assert (=> b!1101365 m!1021531))

(assert (=> b!1101365 m!1021531))

(assert (=> b!1101365 m!1021537))

(declare-fun m!1021663 () Bool)

(assert (=> bm!46176 m!1021663))

(assert (=> b!1101372 m!1021441))

(assert (=> b!1101372 m!1021531))

(assert (=> b!1101372 m!1021531))

(declare-fun m!1021665 () Bool)

(assert (=> b!1101372 m!1021665))

(assert (=> b!1101372 m!1021615))

(assert (=> b!1101372 m!1021615))

(assert (=> b!1101372 m!1021441))

(assert (=> b!1101372 m!1021617))

(declare-fun m!1021667 () Bool)

(assert (=> b!1101361 m!1021667))

(declare-fun m!1021669 () Bool)

(assert (=> b!1101362 m!1021669))

(declare-fun m!1021671 () Bool)

(assert (=> b!1101360 m!1021671))

(declare-fun m!1021673 () Bool)

(assert (=> b!1101359 m!1021673))

(declare-fun m!1021675 () Bool)

(assert (=> b!1101359 m!1021675))

(declare-fun m!1021677 () Bool)

(assert (=> b!1101359 m!1021677))

(declare-fun m!1021679 () Bool)

(assert (=> b!1101359 m!1021679))

(declare-fun m!1021681 () Bool)

(assert (=> b!1101359 m!1021681))

(assert (=> b!1101359 m!1021673))

(declare-fun m!1021683 () Bool)

(assert (=> b!1101359 m!1021683))

(declare-fun m!1021685 () Bool)

(assert (=> b!1101359 m!1021685))

(declare-fun m!1021687 () Bool)

(assert (=> b!1101359 m!1021687))

(declare-fun m!1021689 () Bool)

(assert (=> b!1101359 m!1021689))

(declare-fun m!1021691 () Bool)

(assert (=> b!1101359 m!1021691))

(assert (=> b!1101359 m!1021681))

(declare-fun m!1021693 () Bool)

(assert (=> b!1101359 m!1021693))

(declare-fun m!1021695 () Bool)

(assert (=> b!1101359 m!1021695))

(assert (=> b!1101359 m!1021687))

(declare-fun m!1021697 () Bool)

(assert (=> b!1101359 m!1021697))

(assert (=> b!1101359 m!1021453))

(assert (=> b!1101359 m!1021531))

(assert (=> b!1101359 m!1021675))

(declare-fun m!1021699 () Bool)

(assert (=> b!1101359 m!1021699))

(declare-fun m!1021701 () Bool)

(assert (=> b!1101359 m!1021701))

(assert (=> bm!46170 m!1021453))

(declare-fun m!1021703 () Bool)

(assert (=> bm!46171 m!1021703))

(declare-fun m!1021705 () Bool)

(assert (=> bm!46174 m!1021705))

(assert (=> d!130619 m!1021427))

(assert (=> b!1101132 d!130619))

(declare-fun d!130621 () Bool)

(assert (=> d!130621 (arrayContainsKey!0 _keys!1070 k0!904 #b00000000000000000000000000000000)))

(declare-fun lt!493787 () Unit!36127)

(declare-fun choose!13 (array!71308 (_ BitVec 64) (_ BitVec 32)) Unit!36127)

(assert (=> d!130621 (= lt!493787 (choose!13 _keys!1070 k0!904 i!650))))

(assert (=> d!130621 (bvsge i!650 #b00000000000000000000000000000000)))

(assert (=> d!130621 (= (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1070 k0!904 i!650) lt!493787)))

(declare-fun bs!32320 () Bool)

(assert (= bs!32320 d!130621))

(assert (=> bs!32320 m!1021443))

(declare-fun m!1021707 () Bool)

(assert (=> bs!32320 m!1021707))

(assert (=> b!1101132 d!130621))

(declare-fun d!130623 () Bool)

(declare-fun e!628683 () Bool)

(assert (=> d!130623 e!628683))

(declare-fun res!734991 () Bool)

(assert (=> d!130623 (=> (not res!734991) (not e!628683))))

(declare-fun lt!493789 () ListLongMap!15425)

(assert (=> d!130623 (= res!734991 (contains!6415 lt!493789 (_1!8732 lt!493600)))))

(declare-fun lt!493791 () List!24116)

(assert (=> d!130623 (= lt!493789 (ListLongMap!15426 lt!493791))))

(declare-fun lt!493788 () Unit!36127)

(declare-fun lt!493790 () Unit!36127)

(assert (=> d!130623 (= lt!493788 lt!493790)))

(assert (=> d!130623 (= (getValueByKey!629 lt!493791 (_1!8732 lt!493600)) (Some!679 (_2!8732 lt!493600)))))

(assert (=> d!130623 (= lt!493790 (lemmaContainsTupThenGetReturnValue!304 lt!493791 (_1!8732 lt!493600) (_2!8732 lt!493600)))))

(assert (=> d!130623 (= lt!493791 (insertStrictlySorted!396 (toList!7728 lt!493601) (_1!8732 lt!493600) (_2!8732 lt!493600)))))

(assert (=> d!130623 (= (+!3360 lt!493601 lt!493600) lt!493789)))

(declare-fun b!1101376 () Bool)

(declare-fun res!734990 () Bool)

(assert (=> b!1101376 (=> (not res!734990) (not e!628683))))

(assert (=> b!1101376 (= res!734990 (= (getValueByKey!629 (toList!7728 lt!493789) (_1!8732 lt!493600)) (Some!679 (_2!8732 lt!493600))))))

(declare-fun b!1101377 () Bool)

(assert (=> b!1101377 (= e!628683 (contains!6416 (toList!7728 lt!493789) lt!493600))))

(assert (= (and d!130623 res!734991) b!1101376))

(assert (= (and b!1101376 res!734990) b!1101377))

(declare-fun m!1021709 () Bool)

(assert (=> d!130623 m!1021709))

(declare-fun m!1021711 () Bool)

(assert (=> d!130623 m!1021711))

(declare-fun m!1021713 () Bool)

(assert (=> d!130623 m!1021713))

(declare-fun m!1021715 () Bool)

(assert (=> d!130623 m!1021715))

(declare-fun m!1021717 () Bool)

(assert (=> b!1101376 m!1021717))

(declare-fun m!1021719 () Bool)

(assert (=> b!1101377 m!1021719))

(assert (=> b!1101137 d!130623))

(declare-fun d!130625 () Bool)

(declare-fun e!628684 () Bool)

(assert (=> d!130625 e!628684))

(declare-fun res!734993 () Bool)

(assert (=> d!130625 (=> (not res!734993) (not e!628684))))

(declare-fun lt!493793 () ListLongMap!15425)

(assert (=> d!130625 (= res!734993 (contains!6415 lt!493793 (_1!8732 lt!493600)))))

(declare-fun lt!493795 () List!24116)

(assert (=> d!130625 (= lt!493793 (ListLongMap!15426 lt!493795))))

(declare-fun lt!493792 () Unit!36127)

(declare-fun lt!493794 () Unit!36127)

(assert (=> d!130625 (= lt!493792 lt!493794)))

(assert (=> d!130625 (= (getValueByKey!629 lt!493795 (_1!8732 lt!493600)) (Some!679 (_2!8732 lt!493600)))))

(assert (=> d!130625 (= lt!493794 (lemmaContainsTupThenGetReturnValue!304 lt!493795 (_1!8732 lt!493600) (_2!8732 lt!493600)))))

(assert (=> d!130625 (= lt!493795 (insertStrictlySorted!396 (toList!7728 lt!493599) (_1!8732 lt!493600) (_2!8732 lt!493600)))))

(assert (=> d!130625 (= (+!3360 lt!493599 lt!493600) lt!493793)))

(declare-fun b!1101378 () Bool)

(declare-fun res!734992 () Bool)

(assert (=> b!1101378 (=> (not res!734992) (not e!628684))))

(assert (=> b!1101378 (= res!734992 (= (getValueByKey!629 (toList!7728 lt!493793) (_1!8732 lt!493600)) (Some!679 (_2!8732 lt!493600))))))

(declare-fun b!1101379 () Bool)

(assert (=> b!1101379 (= e!628684 (contains!6416 (toList!7728 lt!493793) lt!493600))))

(assert (= (and d!130625 res!734993) b!1101378))

(assert (= (and b!1101378 res!734992) b!1101379))

(declare-fun m!1021721 () Bool)

(assert (=> d!130625 m!1021721))

(declare-fun m!1021723 () Bool)

(assert (=> d!130625 m!1021723))

(declare-fun m!1021725 () Bool)

(assert (=> d!130625 m!1021725))

(declare-fun m!1021727 () Bool)

(assert (=> d!130625 m!1021727))

(declare-fun m!1021729 () Bool)

(assert (=> b!1101378 m!1021729))

(declare-fun m!1021731 () Bool)

(assert (=> b!1101379 m!1021731))

(assert (=> b!1101137 d!130625))

(declare-fun condMapEmpty!42619 () Bool)

(declare-fun mapDefault!42619 () ValueCell!12900)

(assert (=> mapNonEmpty!42613 (= condMapEmpty!42619 (= mapRest!42613 ((as const (Array (_ BitVec 32) ValueCell!12900)) mapDefault!42619)))))

(declare-fun e!628690 () Bool)

(declare-fun mapRes!42619 () Bool)

(assert (=> mapNonEmpty!42613 (= tp!81459 (and e!628690 mapRes!42619))))

(declare-fun b!1101386 () Bool)

(declare-fun e!628689 () Bool)

(assert (=> b!1101386 (= e!628689 tp_is_empty!27219)))

(declare-fun b!1101387 () Bool)

(assert (=> b!1101387 (= e!628690 tp_is_empty!27219)))

(declare-fun mapNonEmpty!42619 () Bool)

(declare-fun tp!81468 () Bool)

(assert (=> mapNonEmpty!42619 (= mapRes!42619 (and tp!81468 e!628689))))

(declare-fun mapValue!42619 () ValueCell!12900)

(declare-fun mapKey!42619 () (_ BitVec 32))

(declare-fun mapRest!42619 () (Array (_ BitVec 32) ValueCell!12900))

(assert (=> mapNonEmpty!42619 (= mapRest!42613 (store mapRest!42619 mapKey!42619 mapValue!42619))))

(declare-fun mapIsEmpty!42619 () Bool)

(assert (=> mapIsEmpty!42619 mapRes!42619))

(assert (= (and mapNonEmpty!42613 condMapEmpty!42619) mapIsEmpty!42619))

(assert (= (and mapNonEmpty!42613 (not condMapEmpty!42619)) mapNonEmpty!42619))

(assert (= (and mapNonEmpty!42619 ((_ is ValueCellFull!12900) mapValue!42619)) b!1101386))

(assert (= (and mapNonEmpty!42613 ((_ is ValueCellFull!12900) mapDefault!42619)) b!1101387))

(declare-fun m!1021733 () Bool)

(assert (=> mapNonEmpty!42619 m!1021733))

(declare-fun b_lambda!18117 () Bool)

(assert (= b_lambda!18115 (or (and start!96836 b_free!23169) b_lambda!18117)))

(declare-fun b_lambda!18119 () Bool)

(assert (= b_lambda!18105 (or (and start!96836 b_free!23169) b_lambda!18119)))

(declare-fun b_lambda!18121 () Bool)

(assert (= b_lambda!18113 (or (and start!96836 b_free!23169) b_lambda!18121)))

(declare-fun b_lambda!18123 () Bool)

(assert (= b_lambda!18107 (or (and start!96836 b_free!23169) b_lambda!18123)))

(declare-fun b_lambda!18125 () Bool)

(assert (= b_lambda!18111 (or (and start!96836 b_free!23169) b_lambda!18125)))

(declare-fun b_lambda!18127 () Bool)

(assert (= b_lambda!18103 (or (and start!96836 b_free!23169) b_lambda!18127)))

(declare-fun b_lambda!18129 () Bool)

(assert (= b_lambda!18109 (or (and start!96836 b_free!23169) b_lambda!18129)))

(check-sat (not b!1101282) (not b!1101333) (not b!1101360) (not b_lambda!18101) (not b!1101364) (not bm!46153) (not d!130613) (not bm!46157) (not b!1101350) (not b!1101343) (not b!1101223) (not b!1101287) (not b!1101323) (not d!130615) (not b!1101377) (not b!1101330) (not b!1101281) (not bm!46159) (not b!1101332) (not b!1101373) (not bm!46138) (not b!1101346) (not b!1101295) (not b!1101329) (not b!1101322) (not b!1101378) (not d!130619) (not b!1101353) (not b!1101327) (not bm!46171) (not bm!46168) (not d!130623) (not bm!46174) (not b!1101351) (not b_lambda!18117) (not b!1101361) (not b!1101207) (not b!1101212) (not b!1101376) (not b_lambda!18121) (not b_lambda!18123) (not b_lambda!18129) (not d!130621) (not b!1101354) (not bm!46169) (not d!130611) (not b!1101211) (not b!1101325) (not b!1101199) (not b!1101227) (not mapNonEmpty!42619) (not b!1101344) (not b!1101372) tp_is_empty!27219 (not b_lambda!18127) (not bm!46162) (not b!1101224) (not b!1101283) (not b!1101294) (not b!1101348) (not b!1101206) (not bm!46176) (not bm!46137) (not b_lambda!18125) (not b!1101200) (not b!1101359) (not b!1101340) (not bm!46154) (not d!130617) (not b!1101362) (not b_lambda!18119) (not b!1101228) (not bm!46170) (not bm!46167) (not b!1101210) (not b!1101284) (not b_next!23169) (not d!130609) b_and!37151 (not b!1101365) (not d!130591) (not d!130625) (not b!1101379) (not b!1101201) (not b!1101286) (not bm!46134) (not bm!46133) (not b!1101234))
(check-sat b_and!37151 (not b_next!23169))
