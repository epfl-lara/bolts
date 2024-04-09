; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!96868 () Bool)

(assert start!96868)

(declare-fun b_free!23175 () Bool)

(declare-fun b_next!23175 () Bool)

(assert (=> start!96868 (= b_free!23175 (not b_next!23175))))

(declare-fun tp!81480 () Bool)

(declare-fun b_and!37157 () Bool)

(assert (=> start!96868 (= tp!81480 b_and!37157)))

(declare-fun b!1101465 () Bool)

(declare-fun e!628733 () Bool)

(declare-fun tp_is_empty!27225 () Bool)

(assert (=> b!1101465 (= e!628733 tp_is_empty!27225)))

(declare-fun b!1101466 () Bool)

(declare-fun res!735060 () Bool)

(declare-fun e!628734 () Bool)

(assert (=> b!1101466 (=> (not res!735060) (not e!628734))))

(declare-datatypes ((array!71322 0))(
  ( (array!71323 (arr!34320 (Array (_ BitVec 32) (_ BitVec 64))) (size!34857 (_ BitVec 32))) )
))
(declare-fun lt!493848 () array!71322)

(declare-datatypes ((List!24119 0))(
  ( (Nil!24116) (Cons!24115 (h!25324 (_ BitVec 64)) (t!34347 List!24119)) )
))
(declare-fun arrayNoDuplicates!0 (array!71322 (_ BitVec 32) List!24119) Bool)

(assert (=> b!1101466 (= res!735060 (arrayNoDuplicates!0 lt!493848 #b00000000000000000000000000000000 Nil!24116))))

(declare-fun b!1101467 () Bool)

(declare-fun res!735056 () Bool)

(declare-fun e!628736 () Bool)

(assert (=> b!1101467 (=> (not res!735056) (not e!628736))))

(declare-fun _keys!1070 () array!71322)

(declare-fun k0!904 () (_ BitVec 64))

(declare-fun i!650 () (_ BitVec 32))

(assert (=> b!1101467 (= res!735056 (= (select (arr!34320 _keys!1070) i!650) k0!904))))

(declare-fun res!735064 () Bool)

(assert (=> start!96868 (=> (not res!735064) (not e!628736))))

(declare-fun mask!1414 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!96868 (= res!735064 (validMask!0 mask!1414))))

(assert (=> start!96868 e!628736))

(assert (=> start!96868 tp!81480))

(assert (=> start!96868 true))

(assert (=> start!96868 tp_is_empty!27225))

(declare-fun array_inv!26292 (array!71322) Bool)

(assert (=> start!96868 (array_inv!26292 _keys!1070)))

(declare-datatypes ((V!41427 0))(
  ( (V!41428 (val!13669 Int)) )
))
(declare-datatypes ((ValueCell!12903 0))(
  ( (ValueCellFull!12903 (v!16300 V!41427)) (EmptyCell!12903) )
))
(declare-datatypes ((array!71324 0))(
  ( (array!71325 (arr!34321 (Array (_ BitVec 32) ValueCell!12903)) (size!34858 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!71324)

(declare-fun e!628732 () Bool)

(declare-fun array_inv!26293 (array!71324) Bool)

(assert (=> start!96868 (and (array_inv!26293 _values!874) e!628732)))

(declare-fun b!1101468 () Bool)

(declare-fun res!735063 () Bool)

(declare-fun e!628735 () Bool)

(assert (=> b!1101468 (=> (not res!735063) (not e!628735))))

(declare-datatypes ((tuple2!17448 0))(
  ( (tuple2!17449 (_1!8734 (_ BitVec 64)) (_2!8734 V!41427)) )
))
(declare-datatypes ((List!24120 0))(
  ( (Nil!24117) (Cons!24116 (h!25325 tuple2!17448) (t!34348 List!24120)) )
))
(declare-datatypes ((ListLongMap!15429 0))(
  ( (ListLongMap!15430 (toList!7730 List!24120)) )
))
(declare-fun lt!493850 () ListLongMap!15429)

(declare-fun lt!493853 () tuple2!17448)

(declare-fun lt!493855 () ListLongMap!15429)

(declare-fun +!3362 (ListLongMap!15429 tuple2!17448) ListLongMap!15429)

(assert (=> b!1101468 (= res!735063 (= lt!493850 (+!3362 lt!493855 lt!493853)))))

(declare-fun b!1101469 () Bool)

(assert (=> b!1101469 (= e!628736 e!628734)))

(declare-fun res!735059 () Bool)

(assert (=> b!1101469 (=> (not res!735059) (not e!628734))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!71322 (_ BitVec 32)) Bool)

(assert (=> b!1101469 (= res!735059 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!493848 mask!1414))))

(assert (=> b!1101469 (= lt!493848 (array!71323 (store (arr!34320 _keys!1070) i!650 #b1000000000000000000000000000000000000000000000000000000000000000) (size!34857 _keys!1070)))))

(declare-fun mapNonEmpty!42625 () Bool)

(declare-fun mapRes!42625 () Bool)

(declare-fun tp!81479 () Bool)

(assert (=> mapNonEmpty!42625 (= mapRes!42625 (and tp!81479 e!628733))))

(declare-fun mapValue!42625 () ValueCell!12903)

(declare-fun mapKey!42625 () (_ BitVec 32))

(declare-fun mapRest!42625 () (Array (_ BitVec 32) ValueCell!12903))

(assert (=> mapNonEmpty!42625 (= (arr!34321 _values!874) (store mapRest!42625 mapKey!42625 mapValue!42625))))

(declare-fun b!1101470 () Bool)

(declare-fun res!735065 () Bool)

(assert (=> b!1101470 (=> (not res!735065) (not e!628736))))

(declare-fun extraKeys!811 () (_ BitVec 32))

(assert (=> b!1101470 (= res!735065 (and (= (size!34858 _values!874) (bvadd #b00000000000000000000000000000001 mask!1414)) (= (size!34857 _keys!1070) (size!34858 _values!874)) (bvsge mask!1414 #b00000000000000000000000000000000) (bvsge extraKeys!811 #b00000000000000000000000000000000) (bvsle extraKeys!811 #b00000000000000000000000000000011)))))

(declare-fun b!1101471 () Bool)

(declare-fun res!735058 () Bool)

(assert (=> b!1101471 (=> (not res!735058) (not e!628736))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1101471 (= res!735058 (validKeyInArray!0 k0!904))))

(declare-fun lt!493849 () ListLongMap!15429)

(declare-fun lt!493851 () ListLongMap!15429)

(declare-fun b!1101472 () Bool)

(assert (=> b!1101472 (= e!628735 (= lt!493851 (+!3362 lt!493849 lt!493853)))))

(declare-fun mapIsEmpty!42625 () Bool)

(assert (=> mapIsEmpty!42625 mapRes!42625))

(declare-fun b!1101473 () Bool)

(declare-fun res!735055 () Bool)

(assert (=> b!1101473 (=> (not res!735055) (not e!628736))))

(assert (=> b!1101473 (= res!735055 (and (bvsge i!650 #b00000000000000000000000000000000) (bvslt i!650 (size!34857 _keys!1070))))))

(declare-fun b!1101474 () Bool)

(declare-fun res!735061 () Bool)

(assert (=> b!1101474 (=> (not res!735061) (not e!628736))))

(assert (=> b!1101474 (= res!735061 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1070 mask!1414))))

(declare-fun b!1101475 () Bool)

(declare-fun e!628731 () Bool)

(assert (=> b!1101475 (= e!628734 (not e!628731))))

(declare-fun res!735057 () Bool)

(assert (=> b!1101475 (=> res!735057 e!628731)))

(assert (=> b!1101475 (= res!735057 (or (not (= (bvand extraKeys!811 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeys!811 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun defaultEntry!882 () Int)

(declare-fun minValue!831 () V!41427)

(declare-fun zeroValue!831 () V!41427)

(declare-fun getCurrentListMap!4415 (array!71322 array!71324 (_ BitVec 32) (_ BitVec 32) V!41427 V!41427 (_ BitVec 32) Int) ListLongMap!15429)

(assert (=> b!1101475 (= lt!493851 (getCurrentListMap!4415 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun lt!493847 () array!71324)

(assert (=> b!1101475 (= lt!493850 (getCurrentListMap!4415 lt!493848 lt!493847 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun lt!493846 () ListLongMap!15429)

(assert (=> b!1101475 (and (= lt!493846 lt!493855) (= lt!493855 lt!493846))))

(declare-fun -!967 (ListLongMap!15429 (_ BitVec 64)) ListLongMap!15429)

(assert (=> b!1101475 (= lt!493855 (-!967 lt!493849 k0!904))))

(declare-datatypes ((Unit!36131 0))(
  ( (Unit!36132) )
))
(declare-fun lt!493854 () Unit!36131)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!227 (array!71322 array!71324 (_ BitVec 32) (_ BitVec 32) V!41427 V!41427 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!36131)

(assert (=> b!1101475 (= lt!493854 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!227 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 i!650 k0!904 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun getCurrentListMapNoExtraKeys!4202 (array!71322 array!71324 (_ BitVec 32) (_ BitVec 32) V!41427 V!41427 (_ BitVec 32) Int) ListLongMap!15429)

(assert (=> b!1101475 (= lt!493846 (getCurrentListMapNoExtraKeys!4202 lt!493848 lt!493847 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun dynLambda!2333 (Int (_ BitVec 64)) V!41427)

(assert (=> b!1101475 (= lt!493847 (array!71325 (store (arr!34321 _values!874) i!650 (ValueCellFull!12903 (dynLambda!2333 defaultEntry!882 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!34858 _values!874)))))

(assert (=> b!1101475 (= lt!493849 (getCurrentListMapNoExtraKeys!4202 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun arrayContainsKey!0 (array!71322 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1101475 (arrayContainsKey!0 _keys!1070 k0!904 #b00000000000000000000000000000000)))

(declare-fun lt!493852 () Unit!36131)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!71322 (_ BitVec 64) (_ BitVec 32)) Unit!36131)

(assert (=> b!1101475 (= lt!493852 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1070 k0!904 i!650))))

(declare-fun b!1101476 () Bool)

(declare-fun res!735062 () Bool)

(assert (=> b!1101476 (=> (not res!735062) (not e!628736))))

(assert (=> b!1101476 (= res!735062 (arrayNoDuplicates!0 _keys!1070 #b00000000000000000000000000000000 Nil!24116))))

(declare-fun b!1101477 () Bool)

(declare-fun e!628738 () Bool)

(assert (=> b!1101477 (= e!628738 tp_is_empty!27225)))

(declare-fun b!1101478 () Bool)

(assert (=> b!1101478 (= e!628731 (not (= #b1000000000000000000000000000000000000000000000000000000000000000 k0!904)))))

(assert (=> b!1101478 e!628735))

(declare-fun res!735054 () Bool)

(assert (=> b!1101478 (=> (not res!735054) (not e!628735))))

(assert (=> b!1101478 (= res!735054 (= lt!493850 (+!3362 lt!493846 lt!493853)))))

(assert (=> b!1101478 (= lt!493853 (tuple2!17449 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!831))))

(declare-fun b!1101479 () Bool)

(assert (=> b!1101479 (= e!628732 (and e!628738 mapRes!42625))))

(declare-fun condMapEmpty!42625 () Bool)

(declare-fun mapDefault!42625 () ValueCell!12903)

(assert (=> b!1101479 (= condMapEmpty!42625 (= (arr!34321 _values!874) ((as const (Array (_ BitVec 32) ValueCell!12903)) mapDefault!42625)))))

(assert (= (and start!96868 res!735064) b!1101470))

(assert (= (and b!1101470 res!735065) b!1101474))

(assert (= (and b!1101474 res!735061) b!1101476))

(assert (= (and b!1101476 res!735062) b!1101473))

(assert (= (and b!1101473 res!735055) b!1101471))

(assert (= (and b!1101471 res!735058) b!1101467))

(assert (= (and b!1101467 res!735056) b!1101469))

(assert (= (and b!1101469 res!735059) b!1101466))

(assert (= (and b!1101466 res!735060) b!1101475))

(assert (= (and b!1101475 (not res!735057)) b!1101478))

(assert (= (and b!1101478 res!735054) b!1101468))

(assert (= (and b!1101468 res!735063) b!1101472))

(assert (= (and b!1101479 condMapEmpty!42625) mapIsEmpty!42625))

(assert (= (and b!1101479 (not condMapEmpty!42625)) mapNonEmpty!42625))

(get-info :version)

(assert (= (and mapNonEmpty!42625 ((_ is ValueCellFull!12903) mapValue!42625)) b!1101465))

(assert (= (and b!1101479 ((_ is ValueCellFull!12903) mapDefault!42625)) b!1101477))

(assert (= start!96868 b!1101479))

(declare-fun b_lambda!18133 () Bool)

(assert (=> (not b_lambda!18133) (not b!1101475)))

(declare-fun t!34346 () Bool)

(declare-fun tb!8049 () Bool)

(assert (=> (and start!96868 (= defaultEntry!882 defaultEntry!882) t!34346) tb!8049))

(declare-fun result!16631 () Bool)

(assert (=> tb!8049 (= result!16631 tp_is_empty!27225)))

(assert (=> b!1101475 t!34346))

(declare-fun b_and!37159 () Bool)

(assert (= b_and!37157 (and (=> t!34346 result!16631) b_and!37159)))

(declare-fun m!1021783 () Bool)

(assert (=> b!1101476 m!1021783))

(declare-fun m!1021785 () Bool)

(assert (=> b!1101469 m!1021785))

(declare-fun m!1021787 () Bool)

(assert (=> b!1101469 m!1021787))

(declare-fun m!1021789 () Bool)

(assert (=> b!1101478 m!1021789))

(declare-fun m!1021791 () Bool)

(assert (=> mapNonEmpty!42625 m!1021791))

(declare-fun m!1021793 () Bool)

(assert (=> b!1101467 m!1021793))

(declare-fun m!1021795 () Bool)

(assert (=> b!1101468 m!1021795))

(declare-fun m!1021797 () Bool)

(assert (=> b!1101472 m!1021797))

(declare-fun m!1021799 () Bool)

(assert (=> start!96868 m!1021799))

(declare-fun m!1021801 () Bool)

(assert (=> start!96868 m!1021801))

(declare-fun m!1021803 () Bool)

(assert (=> start!96868 m!1021803))

(declare-fun m!1021805 () Bool)

(assert (=> b!1101466 m!1021805))

(declare-fun m!1021807 () Bool)

(assert (=> b!1101475 m!1021807))

(declare-fun m!1021809 () Bool)

(assert (=> b!1101475 m!1021809))

(declare-fun m!1021811 () Bool)

(assert (=> b!1101475 m!1021811))

(declare-fun m!1021813 () Bool)

(assert (=> b!1101475 m!1021813))

(declare-fun m!1021815 () Bool)

(assert (=> b!1101475 m!1021815))

(declare-fun m!1021817 () Bool)

(assert (=> b!1101475 m!1021817))

(declare-fun m!1021819 () Bool)

(assert (=> b!1101475 m!1021819))

(declare-fun m!1021821 () Bool)

(assert (=> b!1101475 m!1021821))

(declare-fun m!1021823 () Bool)

(assert (=> b!1101475 m!1021823))

(declare-fun m!1021825 () Bool)

(assert (=> b!1101475 m!1021825))

(declare-fun m!1021827 () Bool)

(assert (=> b!1101474 m!1021827))

(declare-fun m!1021829 () Bool)

(assert (=> b!1101471 m!1021829))

(check-sat (not b!1101474) (not b!1101468) (not b!1101475) tp_is_empty!27225 b_and!37159 (not b!1101476) (not start!96868) (not b!1101478) (not b!1101472) (not b!1101471) (not b_next!23175) (not b_lambda!18133) (not mapNonEmpty!42625) (not b!1101469) (not b!1101466))
(check-sat b_and!37159 (not b_next!23175))
(get-model)

(declare-fun b_lambda!18137 () Bool)

(assert (= b_lambda!18133 (or (and start!96868 b_free!23175) b_lambda!18137)))

(check-sat (not b!1101474) (not b!1101468) (not b!1101475) tp_is_empty!27225 b_and!37159 (not b!1101476) (not start!96868) (not b!1101478) (not b!1101472) (not b!1101471) (not mapNonEmpty!42625) (not b_next!23175) (not b!1101469) (not b_lambda!18137) (not b!1101466))
(check-sat b_and!37159 (not b_next!23175))
(get-model)

(declare-fun d!130629 () Bool)

(declare-fun res!735106 () Bool)

(declare-fun e!628767 () Bool)

(assert (=> d!130629 (=> res!735106 e!628767)))

(assert (=> d!130629 (= res!735106 (= (select (arr!34320 _keys!1070) #b00000000000000000000000000000000) k0!904))))

(assert (=> d!130629 (= (arrayContainsKey!0 _keys!1070 k0!904 #b00000000000000000000000000000000) e!628767)))

(declare-fun b!1101533 () Bool)

(declare-fun e!628768 () Bool)

(assert (=> b!1101533 (= e!628767 e!628768)))

(declare-fun res!735107 () Bool)

(assert (=> b!1101533 (=> (not res!735107) (not e!628768))))

(assert (=> b!1101533 (= res!735107 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!34857 _keys!1070)))))

(declare-fun b!1101534 () Bool)

(assert (=> b!1101534 (= e!628768 (arrayContainsKey!0 _keys!1070 k0!904 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!130629 (not res!735106)) b!1101533))

(assert (= (and b!1101533 res!735107) b!1101534))

(declare-fun m!1021879 () Bool)

(assert (=> d!130629 m!1021879))

(declare-fun m!1021881 () Bool)

(assert (=> b!1101534 m!1021881))

(assert (=> b!1101475 d!130629))

(declare-fun b!1101559 () Bool)

(declare-fun e!628788 () ListLongMap!15429)

(declare-fun e!628786 () ListLongMap!15429)

(assert (=> b!1101559 (= e!628788 e!628786)))

(declare-fun c!108775 () Bool)

(assert (=> b!1101559 (= c!108775 (validKeyInArray!0 (select (arr!34320 lt!493848) #b00000000000000000000000000000000)))))

(declare-fun b!1101560 () Bool)

(declare-fun res!735116 () Bool)

(declare-fun e!628783 () Bool)

(assert (=> b!1101560 (=> (not res!735116) (not e!628783))))

(declare-fun lt!493905 () ListLongMap!15429)

(declare-fun contains!6417 (ListLongMap!15429 (_ BitVec 64)) Bool)

(assert (=> b!1101560 (= res!735116 (not (contains!6417 lt!493905 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1101561 () Bool)

(assert (=> b!1101561 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!34857 lt!493848)))))

(assert (=> b!1101561 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!34858 lt!493847)))))

(declare-fun e!628789 () Bool)

(declare-fun apply!987 (ListLongMap!15429 (_ BitVec 64)) V!41427)

(declare-fun get!17667 (ValueCell!12903 V!41427) V!41427)

(assert (=> b!1101561 (= e!628789 (= (apply!987 lt!493905 (select (arr!34320 lt!493848) #b00000000000000000000000000000000)) (get!17667 (select (arr!34321 lt!493847) #b00000000000000000000000000000000) (dynLambda!2333 defaultEntry!882 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1101563 () Bool)

(declare-fun e!628785 () Bool)

(assert (=> b!1101563 (= e!628783 e!628785)))

(declare-fun c!108776 () Bool)

(declare-fun e!628784 () Bool)

(assert (=> b!1101563 (= c!108776 e!628784)))

(declare-fun res!735119 () Bool)

(assert (=> b!1101563 (=> (not res!735119) (not e!628784))))

(assert (=> b!1101563 (= res!735119 (bvslt #b00000000000000000000000000000000 (size!34857 lt!493848)))))

(declare-fun b!1101564 () Bool)

(declare-fun call!46182 () ListLongMap!15429)

(assert (=> b!1101564 (= e!628786 call!46182)))

(declare-fun b!1101565 () Bool)

(declare-fun lt!493901 () Unit!36131)

(declare-fun lt!493906 () Unit!36131)

(assert (=> b!1101565 (= lt!493901 lt!493906)))

(declare-fun lt!493900 () ListLongMap!15429)

(declare-fun lt!493902 () (_ BitVec 64))

(declare-fun lt!493903 () V!41427)

(declare-fun lt!493904 () (_ BitVec 64))

(assert (=> b!1101565 (not (contains!6417 (+!3362 lt!493900 (tuple2!17449 lt!493904 lt!493903)) lt!493902))))

(declare-fun addStillNotContains!282 (ListLongMap!15429 (_ BitVec 64) V!41427 (_ BitVec 64)) Unit!36131)

(assert (=> b!1101565 (= lt!493906 (addStillNotContains!282 lt!493900 lt!493904 lt!493903 lt!493902))))

(assert (=> b!1101565 (= lt!493902 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!1101565 (= lt!493903 (get!17667 (select (arr!34321 lt!493847) #b00000000000000000000000000000000) (dynLambda!2333 defaultEntry!882 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!1101565 (= lt!493904 (select (arr!34320 lt!493848) #b00000000000000000000000000000000))))

(assert (=> b!1101565 (= lt!493900 call!46182)))

(assert (=> b!1101565 (= e!628786 (+!3362 call!46182 (tuple2!17449 (select (arr!34320 lt!493848) #b00000000000000000000000000000000) (get!17667 (select (arr!34321 lt!493847) #b00000000000000000000000000000000) (dynLambda!2333 defaultEntry!882 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!1101566 () Bool)

(declare-fun e!628787 () Bool)

(assert (=> b!1101566 (= e!628785 e!628787)))

(declare-fun c!108774 () Bool)

(assert (=> b!1101566 (= c!108774 (bvslt #b00000000000000000000000000000000 (size!34857 lt!493848)))))

(declare-fun b!1101567 () Bool)

(assert (=> b!1101567 (= e!628785 e!628789)))

(assert (=> b!1101567 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!34857 lt!493848)))))

(declare-fun res!735117 () Bool)

(assert (=> b!1101567 (= res!735117 (contains!6417 lt!493905 (select (arr!34320 lt!493848) #b00000000000000000000000000000000)))))

(assert (=> b!1101567 (=> (not res!735117) (not e!628789))))

(declare-fun d!130631 () Bool)

(assert (=> d!130631 e!628783))

(declare-fun res!735118 () Bool)

(assert (=> d!130631 (=> (not res!735118) (not e!628783))))

(assert (=> d!130631 (= res!735118 (not (contains!6417 lt!493905 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!130631 (= lt!493905 e!628788)))

(declare-fun c!108777 () Bool)

(assert (=> d!130631 (= c!108777 (bvsge #b00000000000000000000000000000000 (size!34857 lt!493848)))))

(assert (=> d!130631 (validMask!0 mask!1414)))

(assert (=> d!130631 (= (getCurrentListMapNoExtraKeys!4202 lt!493848 lt!493847 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882) lt!493905)))

(declare-fun b!1101562 () Bool)

(assert (=> b!1101562 (= e!628784 (validKeyInArray!0 (select (arr!34320 lt!493848) #b00000000000000000000000000000000)))))

(assert (=> b!1101562 (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000)))

(declare-fun b!1101568 () Bool)

(assert (=> b!1101568 (= e!628787 (= lt!493905 (getCurrentListMapNoExtraKeys!4202 lt!493848 lt!493847 mask!1414 extraKeys!811 zeroValue!831 minValue!831 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) defaultEntry!882)))))

(declare-fun bm!46179 () Bool)

(assert (=> bm!46179 (= call!46182 (getCurrentListMapNoExtraKeys!4202 lt!493848 lt!493847 mask!1414 extraKeys!811 zeroValue!831 minValue!831 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) defaultEntry!882))))

(declare-fun b!1101569 () Bool)

(assert (=> b!1101569 (= e!628788 (ListLongMap!15430 Nil!24117))))

(declare-fun b!1101570 () Bool)

(declare-fun isEmpty!973 (ListLongMap!15429) Bool)

(assert (=> b!1101570 (= e!628787 (isEmpty!973 lt!493905))))

(assert (= (and d!130631 c!108777) b!1101569))

(assert (= (and d!130631 (not c!108777)) b!1101559))

(assert (= (and b!1101559 c!108775) b!1101565))

(assert (= (and b!1101559 (not c!108775)) b!1101564))

(assert (= (or b!1101565 b!1101564) bm!46179))

(assert (= (and d!130631 res!735118) b!1101560))

(assert (= (and b!1101560 res!735116) b!1101563))

(assert (= (and b!1101563 res!735119) b!1101562))

(assert (= (and b!1101563 c!108776) b!1101567))

(assert (= (and b!1101563 (not c!108776)) b!1101566))

(assert (= (and b!1101567 res!735117) b!1101561))

(assert (= (and b!1101566 c!108774) b!1101568))

(assert (= (and b!1101566 (not c!108774)) b!1101570))

(declare-fun b_lambda!18139 () Bool)

(assert (=> (not b_lambda!18139) (not b!1101561)))

(assert (=> b!1101561 t!34346))

(declare-fun b_and!37165 () Bool)

(assert (= b_and!37159 (and (=> t!34346 result!16631) b_and!37165)))

(declare-fun b_lambda!18141 () Bool)

(assert (=> (not b_lambda!18141) (not b!1101565)))

(assert (=> b!1101565 t!34346))

(declare-fun b_and!37167 () Bool)

(assert (= b_and!37165 (and (=> t!34346 result!16631) b_and!37167)))

(declare-fun m!1021883 () Bool)

(assert (=> b!1101568 m!1021883))

(declare-fun m!1021885 () Bool)

(assert (=> b!1101567 m!1021885))

(assert (=> b!1101567 m!1021885))

(declare-fun m!1021887 () Bool)

(assert (=> b!1101567 m!1021887))

(declare-fun m!1021889 () Bool)

(assert (=> d!130631 m!1021889))

(assert (=> d!130631 m!1021799))

(assert (=> b!1101561 m!1021885))

(declare-fun m!1021891 () Bool)

(assert (=> b!1101561 m!1021891))

(assert (=> b!1101561 m!1021807))

(declare-fun m!1021893 () Bool)

(assert (=> b!1101561 m!1021893))

(assert (=> b!1101561 m!1021885))

(declare-fun m!1021895 () Bool)

(assert (=> b!1101561 m!1021895))

(assert (=> b!1101561 m!1021891))

(assert (=> b!1101561 m!1021807))

(assert (=> b!1101562 m!1021885))

(assert (=> b!1101562 m!1021885))

(declare-fun m!1021897 () Bool)

(assert (=> b!1101562 m!1021897))

(assert (=> b!1101559 m!1021885))

(assert (=> b!1101559 m!1021885))

(assert (=> b!1101559 m!1021897))

(assert (=> bm!46179 m!1021883))

(declare-fun m!1021899 () Bool)

(assert (=> b!1101570 m!1021899))

(declare-fun m!1021901 () Bool)

(assert (=> b!1101560 m!1021901))

(declare-fun m!1021903 () Bool)

(assert (=> b!1101565 m!1021903))

(assert (=> b!1101565 m!1021885))

(assert (=> b!1101565 m!1021891))

(assert (=> b!1101565 m!1021807))

(assert (=> b!1101565 m!1021893))

(declare-fun m!1021905 () Bool)

(assert (=> b!1101565 m!1021905))

(assert (=> b!1101565 m!1021891))

(assert (=> b!1101565 m!1021807))

(declare-fun m!1021907 () Bool)

(assert (=> b!1101565 m!1021907))

(assert (=> b!1101565 m!1021905))

(declare-fun m!1021909 () Bool)

(assert (=> b!1101565 m!1021909))

(assert (=> b!1101475 d!130631))

(declare-fun bm!46194 () Bool)

(declare-fun call!46199 () Bool)

(declare-fun lt!493964 () ListLongMap!15429)

(assert (=> bm!46194 (= call!46199 (contains!6417 lt!493964 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1101613 () Bool)

(declare-fun e!628819 () Bool)

(declare-fun e!628824 () Bool)

(assert (=> b!1101613 (= e!628819 e!628824)))

(declare-fun c!108793 () Bool)

(assert (=> b!1101613 (= c!108793 (not (= (bvand extraKeys!811 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1101614 () Bool)

(declare-fun e!628825 () Bool)

(declare-fun e!628823 () Bool)

(assert (=> b!1101614 (= e!628825 e!628823)))

(declare-fun res!735138 () Bool)

(assert (=> b!1101614 (=> (not res!735138) (not e!628823))))

(assert (=> b!1101614 (= res!735138 (contains!6417 lt!493964 (select (arr!34320 _keys!1070) #b00000000000000000000000000000000)))))

(assert (=> b!1101614 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!34857 _keys!1070)))))

(declare-fun b!1101615 () Bool)

(declare-fun e!628820 () Bool)

(assert (=> b!1101615 (= e!628824 e!628820)))

(declare-fun res!735145 () Bool)

(assert (=> b!1101615 (= res!735145 call!46199)))

(assert (=> b!1101615 (=> (not res!735145) (not e!628820))))

(declare-fun bm!46195 () Bool)

(declare-fun call!46202 () ListLongMap!15429)

(declare-fun call!46200 () ListLongMap!15429)

(assert (=> bm!46195 (= call!46202 call!46200)))

(declare-fun b!1101616 () Bool)

(declare-fun e!628821 () ListLongMap!15429)

(declare-fun e!628817 () ListLongMap!15429)

(assert (=> b!1101616 (= e!628821 e!628817)))

(declare-fun c!108792 () Bool)

(assert (=> b!1101616 (= c!108792 (and (not (= (bvand extraKeys!811 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeys!811 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1101617 () Bool)

(declare-fun e!628828 () ListLongMap!15429)

(declare-fun call!46201 () ListLongMap!15429)

(assert (=> b!1101617 (= e!628828 call!46201)))

(declare-fun b!1101618 () Bool)

(declare-fun e!628816 () Bool)

(assert (=> b!1101618 (= e!628816 (= (apply!987 lt!493964 #b0000000000000000000000000000000000000000000000000000000000000000) zeroValue!831))))

(declare-fun bm!46197 () Bool)

(declare-fun call!46203 () ListLongMap!15429)

(assert (=> bm!46197 (= call!46201 call!46203)))

(declare-fun b!1101619 () Bool)

(declare-fun res!735141 () Bool)

(assert (=> b!1101619 (=> (not res!735141) (not e!628819))))

(declare-fun e!628822 () Bool)

(assert (=> b!1101619 (= res!735141 e!628822)))

(declare-fun c!108790 () Bool)

(assert (=> b!1101619 (= c!108790 (not (= (bvand extraKeys!811 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!1101620 () Bool)

(declare-fun call!46197 () ListLongMap!15429)

(assert (=> b!1101620 (= e!628828 call!46197)))

(declare-fun b!1101621 () Bool)

(declare-fun res!735143 () Bool)

(assert (=> b!1101621 (=> (not res!735143) (not e!628819))))

(assert (=> b!1101621 (= res!735143 e!628825)))

(declare-fun res!735144 () Bool)

(assert (=> b!1101621 (=> res!735144 e!628825)))

(declare-fun e!628818 () Bool)

(assert (=> b!1101621 (= res!735144 (not e!628818))))

(declare-fun res!735139 () Bool)

(assert (=> b!1101621 (=> (not res!735139) (not e!628818))))

(assert (=> b!1101621 (= res!735139 (bvslt #b00000000000000000000000000000000 (size!34857 _keys!1070)))))

(declare-fun b!1101622 () Bool)

(declare-fun c!108791 () Bool)

(assert (=> b!1101622 (= c!108791 (and (not (= (bvand extraKeys!811 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeys!811 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!1101622 (= e!628817 e!628828)))

(declare-fun b!1101623 () Bool)

(assert (=> b!1101623 (= e!628820 (= (apply!987 lt!493964 #b1000000000000000000000000000000000000000000000000000000000000000) minValue!831))))

(declare-fun bm!46198 () Bool)

(declare-fun call!46198 () Bool)

(assert (=> bm!46198 (= call!46198 (contains!6417 lt!493964 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun bm!46199 () Bool)

(assert (=> bm!46199 (= call!46200 (getCurrentListMapNoExtraKeys!4202 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun b!1101624 () Bool)

(assert (=> b!1101624 (= e!628823 (= (apply!987 lt!493964 (select (arr!34320 _keys!1070) #b00000000000000000000000000000000)) (get!17667 (select (arr!34321 _values!874) #b00000000000000000000000000000000) (dynLambda!2333 defaultEntry!882 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1101624 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!34858 _values!874)))))

(assert (=> b!1101624 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!34857 _keys!1070)))))

(declare-fun b!1101625 () Bool)

(declare-fun e!628827 () Bool)

(assert (=> b!1101625 (= e!628827 (validKeyInArray!0 (select (arr!34320 _keys!1070) #b00000000000000000000000000000000)))))

(declare-fun b!1101626 () Bool)

(assert (=> b!1101626 (= e!628824 (not call!46199))))

(declare-fun b!1101627 () Bool)

(declare-fun e!628826 () Unit!36131)

(declare-fun lt!493969 () Unit!36131)

(assert (=> b!1101627 (= e!628826 lt!493969)))

(declare-fun lt!493965 () ListLongMap!15429)

(assert (=> b!1101627 (= lt!493965 (getCurrentListMapNoExtraKeys!4202 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun lt!493959 () (_ BitVec 64))

(assert (=> b!1101627 (= lt!493959 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!493967 () (_ BitVec 64))

(assert (=> b!1101627 (= lt!493967 (select (arr!34320 _keys!1070) #b00000000000000000000000000000000))))

(declare-fun lt!493958 () Unit!36131)

(declare-fun addStillContains!669 (ListLongMap!15429 (_ BitVec 64) V!41427 (_ BitVec 64)) Unit!36131)

(assert (=> b!1101627 (= lt!493958 (addStillContains!669 lt!493965 lt!493959 zeroValue!831 lt!493967))))

(assert (=> b!1101627 (contains!6417 (+!3362 lt!493965 (tuple2!17449 lt!493959 zeroValue!831)) lt!493967)))

(declare-fun lt!493953 () Unit!36131)

(assert (=> b!1101627 (= lt!493953 lt!493958)))

(declare-fun lt!493966 () ListLongMap!15429)

(assert (=> b!1101627 (= lt!493966 (getCurrentListMapNoExtraKeys!4202 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun lt!493961 () (_ BitVec 64))

(assert (=> b!1101627 (= lt!493961 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!493970 () (_ BitVec 64))

(assert (=> b!1101627 (= lt!493970 (select (arr!34320 _keys!1070) #b00000000000000000000000000000000))))

(declare-fun lt!493972 () Unit!36131)

(declare-fun addApplyDifferent!521 (ListLongMap!15429 (_ BitVec 64) V!41427 (_ BitVec 64)) Unit!36131)

(assert (=> b!1101627 (= lt!493972 (addApplyDifferent!521 lt!493966 lt!493961 minValue!831 lt!493970))))

(assert (=> b!1101627 (= (apply!987 (+!3362 lt!493966 (tuple2!17449 lt!493961 minValue!831)) lt!493970) (apply!987 lt!493966 lt!493970))))

(declare-fun lt!493955 () Unit!36131)

(assert (=> b!1101627 (= lt!493955 lt!493972)))

(declare-fun lt!493956 () ListLongMap!15429)

(assert (=> b!1101627 (= lt!493956 (getCurrentListMapNoExtraKeys!4202 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun lt!493962 () (_ BitVec 64))

(assert (=> b!1101627 (= lt!493962 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!493963 () (_ BitVec 64))

(assert (=> b!1101627 (= lt!493963 (select (arr!34320 _keys!1070) #b00000000000000000000000000000000))))

(declare-fun lt!493960 () Unit!36131)

(assert (=> b!1101627 (= lt!493960 (addApplyDifferent!521 lt!493956 lt!493962 zeroValue!831 lt!493963))))

(assert (=> b!1101627 (= (apply!987 (+!3362 lt!493956 (tuple2!17449 lt!493962 zeroValue!831)) lt!493963) (apply!987 lt!493956 lt!493963))))

(declare-fun lt!493968 () Unit!36131)

(assert (=> b!1101627 (= lt!493968 lt!493960)))

(declare-fun lt!493951 () ListLongMap!15429)

(assert (=> b!1101627 (= lt!493951 (getCurrentListMapNoExtraKeys!4202 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun lt!493952 () (_ BitVec 64))

(assert (=> b!1101627 (= lt!493952 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!493971 () (_ BitVec 64))

(assert (=> b!1101627 (= lt!493971 (select (arr!34320 _keys!1070) #b00000000000000000000000000000000))))

(assert (=> b!1101627 (= lt!493969 (addApplyDifferent!521 lt!493951 lt!493952 minValue!831 lt!493971))))

(assert (=> b!1101627 (= (apply!987 (+!3362 lt!493951 (tuple2!17449 lt!493952 minValue!831)) lt!493971) (apply!987 lt!493951 lt!493971))))

(declare-fun b!1101628 () Bool)

(assert (=> b!1101628 (= e!628817 call!46201)))

(declare-fun bm!46200 () Bool)

(declare-fun c!108795 () Bool)

(assert (=> bm!46200 (= call!46203 (+!3362 (ite c!108795 call!46200 (ite c!108792 call!46202 call!46197)) (ite (or c!108795 c!108792) (tuple2!17449 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!831) (tuple2!17449 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!831))))))

(declare-fun b!1101629 () Bool)

(declare-fun Unit!36135 () Unit!36131)

(assert (=> b!1101629 (= e!628826 Unit!36135)))

(declare-fun b!1101630 () Bool)

(assert (=> b!1101630 (= e!628822 e!628816)))

(declare-fun res!735146 () Bool)

(assert (=> b!1101630 (= res!735146 call!46198)))

(assert (=> b!1101630 (=> (not res!735146) (not e!628816))))

(declare-fun b!1101631 () Bool)

(assert (=> b!1101631 (= e!628822 (not call!46198))))

(declare-fun d!130633 () Bool)

(assert (=> d!130633 e!628819))

(declare-fun res!735142 () Bool)

(assert (=> d!130633 (=> (not res!735142) (not e!628819))))

(assert (=> d!130633 (= res!735142 (or (bvsge #b00000000000000000000000000000000 (size!34857 _keys!1070)) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!34857 _keys!1070)))))))

(declare-fun lt!493957 () ListLongMap!15429)

(assert (=> d!130633 (= lt!493964 lt!493957)))

(declare-fun lt!493954 () Unit!36131)

(assert (=> d!130633 (= lt!493954 e!628826)))

(declare-fun c!108794 () Bool)

(assert (=> d!130633 (= c!108794 e!628827)))

(declare-fun res!735140 () Bool)

(assert (=> d!130633 (=> (not res!735140) (not e!628827))))

(assert (=> d!130633 (= res!735140 (bvslt #b00000000000000000000000000000000 (size!34857 _keys!1070)))))

(assert (=> d!130633 (= lt!493957 e!628821)))

(assert (=> d!130633 (= c!108795 (and (not (= (bvand extraKeys!811 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!811 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!130633 (validMask!0 mask!1414)))

(assert (=> d!130633 (= (getCurrentListMap!4415 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882) lt!493964)))

(declare-fun bm!46196 () Bool)

(assert (=> bm!46196 (= call!46197 call!46202)))

(declare-fun b!1101632 () Bool)

(assert (=> b!1101632 (= e!628821 (+!3362 call!46203 (tuple2!17449 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!831)))))

(declare-fun b!1101633 () Bool)

(assert (=> b!1101633 (= e!628818 (validKeyInArray!0 (select (arr!34320 _keys!1070) #b00000000000000000000000000000000)))))

(assert (= (and d!130633 c!108795) b!1101632))

(assert (= (and d!130633 (not c!108795)) b!1101616))

(assert (= (and b!1101616 c!108792) b!1101628))

(assert (= (and b!1101616 (not c!108792)) b!1101622))

(assert (= (and b!1101622 c!108791) b!1101617))

(assert (= (and b!1101622 (not c!108791)) b!1101620))

(assert (= (or b!1101617 b!1101620) bm!46196))

(assert (= (or b!1101628 bm!46196) bm!46195))

(assert (= (or b!1101628 b!1101617) bm!46197))

(assert (= (or b!1101632 bm!46195) bm!46199))

(assert (= (or b!1101632 bm!46197) bm!46200))

(assert (= (and d!130633 res!735140) b!1101625))

(assert (= (and d!130633 c!108794) b!1101627))

(assert (= (and d!130633 (not c!108794)) b!1101629))

(assert (= (and d!130633 res!735142) b!1101621))

(assert (= (and b!1101621 res!735139) b!1101633))

(assert (= (and b!1101621 (not res!735144)) b!1101614))

(assert (= (and b!1101614 res!735138) b!1101624))

(assert (= (and b!1101621 res!735143) b!1101619))

(assert (= (and b!1101619 c!108790) b!1101630))

(assert (= (and b!1101619 (not c!108790)) b!1101631))

(assert (= (and b!1101630 res!735146) b!1101618))

(assert (= (or b!1101630 b!1101631) bm!46198))

(assert (= (and b!1101619 res!735141) b!1101613))

(assert (= (and b!1101613 c!108793) b!1101615))

(assert (= (and b!1101613 (not c!108793)) b!1101626))

(assert (= (and b!1101615 res!735145) b!1101623))

(assert (= (or b!1101615 b!1101626) bm!46194))

(declare-fun b_lambda!18143 () Bool)

(assert (=> (not b_lambda!18143) (not b!1101624)))

(assert (=> b!1101624 t!34346))

(declare-fun b_and!37169 () Bool)

(assert (= b_and!37167 (and (=> t!34346 result!16631) b_and!37169)))

(assert (=> bm!46199 m!1021817))

(assert (=> b!1101627 m!1021879))

(declare-fun m!1021911 () Bool)

(assert (=> b!1101627 m!1021911))

(declare-fun m!1021913 () Bool)

(assert (=> b!1101627 m!1021913))

(declare-fun m!1021915 () Bool)

(assert (=> b!1101627 m!1021915))

(declare-fun m!1021917 () Bool)

(assert (=> b!1101627 m!1021917))

(assert (=> b!1101627 m!1021913))

(declare-fun m!1021919 () Bool)

(assert (=> b!1101627 m!1021919))

(assert (=> b!1101627 m!1021915))

(declare-fun m!1021921 () Bool)

(assert (=> b!1101627 m!1021921))

(declare-fun m!1021923 () Bool)

(assert (=> b!1101627 m!1021923))

(assert (=> b!1101627 m!1021921))

(declare-fun m!1021925 () Bool)

(assert (=> b!1101627 m!1021925))

(declare-fun m!1021927 () Bool)

(assert (=> b!1101627 m!1021927))

(declare-fun m!1021929 () Bool)

(assert (=> b!1101627 m!1021929))

(declare-fun m!1021931 () Bool)

(assert (=> b!1101627 m!1021931))

(declare-fun m!1021933 () Bool)

(assert (=> b!1101627 m!1021933))

(declare-fun m!1021935 () Bool)

(assert (=> b!1101627 m!1021935))

(declare-fun m!1021937 () Bool)

(assert (=> b!1101627 m!1021937))

(assert (=> b!1101627 m!1021925))

(assert (=> b!1101627 m!1021817))

(declare-fun m!1021939 () Bool)

(assert (=> b!1101627 m!1021939))

(declare-fun m!1021941 () Bool)

(assert (=> bm!46198 m!1021941))

(assert (=> b!1101624 m!1021879))

(declare-fun m!1021943 () Bool)

(assert (=> b!1101624 m!1021943))

(assert (=> b!1101624 m!1021879))

(declare-fun m!1021945 () Bool)

(assert (=> b!1101624 m!1021945))

(assert (=> b!1101624 m!1021807))

(assert (=> b!1101624 m!1021943))

(assert (=> b!1101624 m!1021807))

(declare-fun m!1021947 () Bool)

(assert (=> b!1101624 m!1021947))

(assert (=> b!1101614 m!1021879))

(assert (=> b!1101614 m!1021879))

(declare-fun m!1021949 () Bool)

(assert (=> b!1101614 m!1021949))

(declare-fun m!1021951 () Bool)

(assert (=> b!1101618 m!1021951))

(declare-fun m!1021953 () Bool)

(assert (=> bm!46194 m!1021953))

(assert (=> b!1101633 m!1021879))

(assert (=> b!1101633 m!1021879))

(declare-fun m!1021955 () Bool)

(assert (=> b!1101633 m!1021955))

(declare-fun m!1021957 () Bool)

(assert (=> bm!46200 m!1021957))

(assert (=> d!130633 m!1021799))

(assert (=> b!1101625 m!1021879))

(assert (=> b!1101625 m!1021879))

(assert (=> b!1101625 m!1021955))

(declare-fun m!1021959 () Bool)

(assert (=> b!1101632 m!1021959))

(declare-fun m!1021961 () Bool)

(assert (=> b!1101623 m!1021961))

(assert (=> b!1101475 d!130633))

(declare-fun d!130635 () Bool)

(declare-fun lt!493975 () ListLongMap!15429)

(assert (=> d!130635 (not (contains!6417 lt!493975 k0!904))))

(declare-fun removeStrictlySorted!87 (List!24120 (_ BitVec 64)) List!24120)

(assert (=> d!130635 (= lt!493975 (ListLongMap!15430 (removeStrictlySorted!87 (toList!7730 lt!493849) k0!904)))))

(assert (=> d!130635 (= (-!967 lt!493849 k0!904) lt!493975)))

(declare-fun bs!32324 () Bool)

(assert (= bs!32324 d!130635))

(declare-fun m!1021963 () Bool)

(assert (=> bs!32324 m!1021963))

(declare-fun m!1021965 () Bool)

(assert (=> bs!32324 m!1021965))

(assert (=> b!1101475 d!130635))

(declare-fun bm!46201 () Bool)

(declare-fun call!46206 () Bool)

(declare-fun lt!493989 () ListLongMap!15429)

(assert (=> bm!46201 (= call!46206 (contains!6417 lt!493989 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1101634 () Bool)

(declare-fun e!628832 () Bool)

(declare-fun e!628837 () Bool)

(assert (=> b!1101634 (= e!628832 e!628837)))

(declare-fun c!108799 () Bool)

(assert (=> b!1101634 (= c!108799 (not (= (bvand extraKeys!811 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1101635 () Bool)

(declare-fun e!628838 () Bool)

(declare-fun e!628836 () Bool)

(assert (=> b!1101635 (= e!628838 e!628836)))

(declare-fun res!735147 () Bool)

(assert (=> b!1101635 (=> (not res!735147) (not e!628836))))

(assert (=> b!1101635 (= res!735147 (contains!6417 lt!493989 (select (arr!34320 lt!493848) #b00000000000000000000000000000000)))))

(assert (=> b!1101635 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!34857 lt!493848)))))

(declare-fun b!1101636 () Bool)

(declare-fun e!628833 () Bool)

(assert (=> b!1101636 (= e!628837 e!628833)))

(declare-fun res!735154 () Bool)

(assert (=> b!1101636 (= res!735154 call!46206)))

(assert (=> b!1101636 (=> (not res!735154) (not e!628833))))

(declare-fun bm!46202 () Bool)

(declare-fun call!46209 () ListLongMap!15429)

(declare-fun call!46207 () ListLongMap!15429)

(assert (=> bm!46202 (= call!46209 call!46207)))

(declare-fun b!1101637 () Bool)

(declare-fun e!628834 () ListLongMap!15429)

(declare-fun e!628830 () ListLongMap!15429)

(assert (=> b!1101637 (= e!628834 e!628830)))

(declare-fun c!108798 () Bool)

(assert (=> b!1101637 (= c!108798 (and (not (= (bvand extraKeys!811 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeys!811 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1101638 () Bool)

(declare-fun e!628841 () ListLongMap!15429)

(declare-fun call!46208 () ListLongMap!15429)

(assert (=> b!1101638 (= e!628841 call!46208)))

(declare-fun b!1101639 () Bool)

(declare-fun e!628829 () Bool)

(assert (=> b!1101639 (= e!628829 (= (apply!987 lt!493989 #b0000000000000000000000000000000000000000000000000000000000000000) zeroValue!831))))

(declare-fun bm!46204 () Bool)

(declare-fun call!46210 () ListLongMap!15429)

(assert (=> bm!46204 (= call!46208 call!46210)))

(declare-fun b!1101640 () Bool)

(declare-fun res!735150 () Bool)

(assert (=> b!1101640 (=> (not res!735150) (not e!628832))))

(declare-fun e!628835 () Bool)

(assert (=> b!1101640 (= res!735150 e!628835)))

(declare-fun c!108796 () Bool)

(assert (=> b!1101640 (= c!108796 (not (= (bvand extraKeys!811 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!1101641 () Bool)

(declare-fun call!46204 () ListLongMap!15429)

(assert (=> b!1101641 (= e!628841 call!46204)))

(declare-fun b!1101642 () Bool)

(declare-fun res!735152 () Bool)

(assert (=> b!1101642 (=> (not res!735152) (not e!628832))))

(assert (=> b!1101642 (= res!735152 e!628838)))

(declare-fun res!735153 () Bool)

(assert (=> b!1101642 (=> res!735153 e!628838)))

(declare-fun e!628831 () Bool)

(assert (=> b!1101642 (= res!735153 (not e!628831))))

(declare-fun res!735148 () Bool)

(assert (=> b!1101642 (=> (not res!735148) (not e!628831))))

(assert (=> b!1101642 (= res!735148 (bvslt #b00000000000000000000000000000000 (size!34857 lt!493848)))))

(declare-fun b!1101643 () Bool)

(declare-fun c!108797 () Bool)

(assert (=> b!1101643 (= c!108797 (and (not (= (bvand extraKeys!811 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeys!811 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!1101643 (= e!628830 e!628841)))

(declare-fun b!1101644 () Bool)

(assert (=> b!1101644 (= e!628833 (= (apply!987 lt!493989 #b1000000000000000000000000000000000000000000000000000000000000000) minValue!831))))

(declare-fun bm!46205 () Bool)

(declare-fun call!46205 () Bool)

(assert (=> bm!46205 (= call!46205 (contains!6417 lt!493989 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun bm!46206 () Bool)

(assert (=> bm!46206 (= call!46207 (getCurrentListMapNoExtraKeys!4202 lt!493848 lt!493847 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun b!1101645 () Bool)

(assert (=> b!1101645 (= e!628836 (= (apply!987 lt!493989 (select (arr!34320 lt!493848) #b00000000000000000000000000000000)) (get!17667 (select (arr!34321 lt!493847) #b00000000000000000000000000000000) (dynLambda!2333 defaultEntry!882 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1101645 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!34858 lt!493847)))))

(assert (=> b!1101645 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!34857 lt!493848)))))

(declare-fun b!1101646 () Bool)

(declare-fun e!628840 () Bool)

(assert (=> b!1101646 (= e!628840 (validKeyInArray!0 (select (arr!34320 lt!493848) #b00000000000000000000000000000000)))))

(declare-fun b!1101647 () Bool)

(assert (=> b!1101647 (= e!628837 (not call!46206))))

(declare-fun b!1101648 () Bool)

(declare-fun e!628839 () Unit!36131)

(declare-fun lt!493994 () Unit!36131)

(assert (=> b!1101648 (= e!628839 lt!493994)))

(declare-fun lt!493990 () ListLongMap!15429)

(assert (=> b!1101648 (= lt!493990 (getCurrentListMapNoExtraKeys!4202 lt!493848 lt!493847 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun lt!493984 () (_ BitVec 64))

(assert (=> b!1101648 (= lt!493984 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!493992 () (_ BitVec 64))

(assert (=> b!1101648 (= lt!493992 (select (arr!34320 lt!493848) #b00000000000000000000000000000000))))

(declare-fun lt!493983 () Unit!36131)

(assert (=> b!1101648 (= lt!493983 (addStillContains!669 lt!493990 lt!493984 zeroValue!831 lt!493992))))

(assert (=> b!1101648 (contains!6417 (+!3362 lt!493990 (tuple2!17449 lt!493984 zeroValue!831)) lt!493992)))

(declare-fun lt!493978 () Unit!36131)

(assert (=> b!1101648 (= lt!493978 lt!493983)))

(declare-fun lt!493991 () ListLongMap!15429)

(assert (=> b!1101648 (= lt!493991 (getCurrentListMapNoExtraKeys!4202 lt!493848 lt!493847 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun lt!493986 () (_ BitVec 64))

(assert (=> b!1101648 (= lt!493986 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!493995 () (_ BitVec 64))

(assert (=> b!1101648 (= lt!493995 (select (arr!34320 lt!493848) #b00000000000000000000000000000000))))

(declare-fun lt!493997 () Unit!36131)

(assert (=> b!1101648 (= lt!493997 (addApplyDifferent!521 lt!493991 lt!493986 minValue!831 lt!493995))))

(assert (=> b!1101648 (= (apply!987 (+!3362 lt!493991 (tuple2!17449 lt!493986 minValue!831)) lt!493995) (apply!987 lt!493991 lt!493995))))

(declare-fun lt!493980 () Unit!36131)

(assert (=> b!1101648 (= lt!493980 lt!493997)))

(declare-fun lt!493981 () ListLongMap!15429)

(assert (=> b!1101648 (= lt!493981 (getCurrentListMapNoExtraKeys!4202 lt!493848 lt!493847 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun lt!493987 () (_ BitVec 64))

(assert (=> b!1101648 (= lt!493987 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!493988 () (_ BitVec 64))

(assert (=> b!1101648 (= lt!493988 (select (arr!34320 lt!493848) #b00000000000000000000000000000000))))

(declare-fun lt!493985 () Unit!36131)

(assert (=> b!1101648 (= lt!493985 (addApplyDifferent!521 lt!493981 lt!493987 zeroValue!831 lt!493988))))

(assert (=> b!1101648 (= (apply!987 (+!3362 lt!493981 (tuple2!17449 lt!493987 zeroValue!831)) lt!493988) (apply!987 lt!493981 lt!493988))))

(declare-fun lt!493993 () Unit!36131)

(assert (=> b!1101648 (= lt!493993 lt!493985)))

(declare-fun lt!493976 () ListLongMap!15429)

(assert (=> b!1101648 (= lt!493976 (getCurrentListMapNoExtraKeys!4202 lt!493848 lt!493847 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun lt!493977 () (_ BitVec 64))

(assert (=> b!1101648 (= lt!493977 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!493996 () (_ BitVec 64))

(assert (=> b!1101648 (= lt!493996 (select (arr!34320 lt!493848) #b00000000000000000000000000000000))))

(assert (=> b!1101648 (= lt!493994 (addApplyDifferent!521 lt!493976 lt!493977 minValue!831 lt!493996))))

(assert (=> b!1101648 (= (apply!987 (+!3362 lt!493976 (tuple2!17449 lt!493977 minValue!831)) lt!493996) (apply!987 lt!493976 lt!493996))))

(declare-fun b!1101649 () Bool)

(assert (=> b!1101649 (= e!628830 call!46208)))

(declare-fun bm!46207 () Bool)

(declare-fun c!108801 () Bool)

(assert (=> bm!46207 (= call!46210 (+!3362 (ite c!108801 call!46207 (ite c!108798 call!46209 call!46204)) (ite (or c!108801 c!108798) (tuple2!17449 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!831) (tuple2!17449 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!831))))))

(declare-fun b!1101650 () Bool)

(declare-fun Unit!36136 () Unit!36131)

(assert (=> b!1101650 (= e!628839 Unit!36136)))

(declare-fun b!1101651 () Bool)

(assert (=> b!1101651 (= e!628835 e!628829)))

(declare-fun res!735155 () Bool)

(assert (=> b!1101651 (= res!735155 call!46205)))

(assert (=> b!1101651 (=> (not res!735155) (not e!628829))))

(declare-fun b!1101652 () Bool)

(assert (=> b!1101652 (= e!628835 (not call!46205))))

(declare-fun d!130637 () Bool)

(assert (=> d!130637 e!628832))

(declare-fun res!735151 () Bool)

(assert (=> d!130637 (=> (not res!735151) (not e!628832))))

(assert (=> d!130637 (= res!735151 (or (bvsge #b00000000000000000000000000000000 (size!34857 lt!493848)) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!34857 lt!493848)))))))

(declare-fun lt!493982 () ListLongMap!15429)

(assert (=> d!130637 (= lt!493989 lt!493982)))

(declare-fun lt!493979 () Unit!36131)

(assert (=> d!130637 (= lt!493979 e!628839)))

(declare-fun c!108800 () Bool)

(assert (=> d!130637 (= c!108800 e!628840)))

(declare-fun res!735149 () Bool)

(assert (=> d!130637 (=> (not res!735149) (not e!628840))))

(assert (=> d!130637 (= res!735149 (bvslt #b00000000000000000000000000000000 (size!34857 lt!493848)))))

(assert (=> d!130637 (= lt!493982 e!628834)))

(assert (=> d!130637 (= c!108801 (and (not (= (bvand extraKeys!811 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!811 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!130637 (validMask!0 mask!1414)))

(assert (=> d!130637 (= (getCurrentListMap!4415 lt!493848 lt!493847 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882) lt!493989)))

(declare-fun bm!46203 () Bool)

(assert (=> bm!46203 (= call!46204 call!46209)))

(declare-fun b!1101653 () Bool)

(assert (=> b!1101653 (= e!628834 (+!3362 call!46210 (tuple2!17449 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!831)))))

(declare-fun b!1101654 () Bool)

(assert (=> b!1101654 (= e!628831 (validKeyInArray!0 (select (arr!34320 lt!493848) #b00000000000000000000000000000000)))))

(assert (= (and d!130637 c!108801) b!1101653))

(assert (= (and d!130637 (not c!108801)) b!1101637))

(assert (= (and b!1101637 c!108798) b!1101649))

(assert (= (and b!1101637 (not c!108798)) b!1101643))

(assert (= (and b!1101643 c!108797) b!1101638))

(assert (= (and b!1101643 (not c!108797)) b!1101641))

(assert (= (or b!1101638 b!1101641) bm!46203))

(assert (= (or b!1101649 bm!46203) bm!46202))

(assert (= (or b!1101649 b!1101638) bm!46204))

(assert (= (or b!1101653 bm!46202) bm!46206))

(assert (= (or b!1101653 bm!46204) bm!46207))

(assert (= (and d!130637 res!735149) b!1101646))

(assert (= (and d!130637 c!108800) b!1101648))

(assert (= (and d!130637 (not c!108800)) b!1101650))

(assert (= (and d!130637 res!735151) b!1101642))

(assert (= (and b!1101642 res!735148) b!1101654))

(assert (= (and b!1101642 (not res!735153)) b!1101635))

(assert (= (and b!1101635 res!735147) b!1101645))

(assert (= (and b!1101642 res!735152) b!1101640))

(assert (= (and b!1101640 c!108796) b!1101651))

(assert (= (and b!1101640 (not c!108796)) b!1101652))

(assert (= (and b!1101651 res!735155) b!1101639))

(assert (= (or b!1101651 b!1101652) bm!46205))

(assert (= (and b!1101640 res!735150) b!1101634))

(assert (= (and b!1101634 c!108799) b!1101636))

(assert (= (and b!1101634 (not c!108799)) b!1101647))

(assert (= (and b!1101636 res!735154) b!1101644))

(assert (= (or b!1101636 b!1101647) bm!46201))

(declare-fun b_lambda!18145 () Bool)

(assert (=> (not b_lambda!18145) (not b!1101645)))

(assert (=> b!1101645 t!34346))

(declare-fun b_and!37171 () Bool)

(assert (= b_and!37169 (and (=> t!34346 result!16631) b_and!37171)))

(assert (=> bm!46206 m!1021811))

(assert (=> b!1101648 m!1021885))

(declare-fun m!1021967 () Bool)

(assert (=> b!1101648 m!1021967))

(declare-fun m!1021969 () Bool)

(assert (=> b!1101648 m!1021969))

(declare-fun m!1021971 () Bool)

(assert (=> b!1101648 m!1021971))

(declare-fun m!1021973 () Bool)

(assert (=> b!1101648 m!1021973))

(assert (=> b!1101648 m!1021969))

(declare-fun m!1021975 () Bool)

(assert (=> b!1101648 m!1021975))

(assert (=> b!1101648 m!1021971))

(declare-fun m!1021977 () Bool)

(assert (=> b!1101648 m!1021977))

(declare-fun m!1021979 () Bool)

(assert (=> b!1101648 m!1021979))

(assert (=> b!1101648 m!1021977))

(declare-fun m!1021981 () Bool)

(assert (=> b!1101648 m!1021981))

(declare-fun m!1021983 () Bool)

(assert (=> b!1101648 m!1021983))

(declare-fun m!1021985 () Bool)

(assert (=> b!1101648 m!1021985))

(declare-fun m!1021987 () Bool)

(assert (=> b!1101648 m!1021987))

(declare-fun m!1021989 () Bool)

(assert (=> b!1101648 m!1021989))

(declare-fun m!1021991 () Bool)

(assert (=> b!1101648 m!1021991))

(declare-fun m!1021993 () Bool)

(assert (=> b!1101648 m!1021993))

(assert (=> b!1101648 m!1021981))

(assert (=> b!1101648 m!1021811))

(declare-fun m!1021995 () Bool)

(assert (=> b!1101648 m!1021995))

(declare-fun m!1021997 () Bool)

(assert (=> bm!46205 m!1021997))

(assert (=> b!1101645 m!1021885))

(assert (=> b!1101645 m!1021891))

(assert (=> b!1101645 m!1021885))

(declare-fun m!1021999 () Bool)

(assert (=> b!1101645 m!1021999))

(assert (=> b!1101645 m!1021807))

(assert (=> b!1101645 m!1021891))

(assert (=> b!1101645 m!1021807))

(assert (=> b!1101645 m!1021893))

(assert (=> b!1101635 m!1021885))

(assert (=> b!1101635 m!1021885))

(declare-fun m!1022001 () Bool)

(assert (=> b!1101635 m!1022001))

(declare-fun m!1022003 () Bool)

(assert (=> b!1101639 m!1022003))

(declare-fun m!1022005 () Bool)

(assert (=> bm!46201 m!1022005))

(assert (=> b!1101654 m!1021885))

(assert (=> b!1101654 m!1021885))

(assert (=> b!1101654 m!1021897))

(declare-fun m!1022007 () Bool)

(assert (=> bm!46207 m!1022007))

(assert (=> d!130637 m!1021799))

(assert (=> b!1101646 m!1021885))

(assert (=> b!1101646 m!1021885))

(assert (=> b!1101646 m!1021897))

(declare-fun m!1022009 () Bool)

(assert (=> b!1101653 m!1022009))

(declare-fun m!1022011 () Bool)

(assert (=> b!1101644 m!1022011))

(assert (=> b!1101475 d!130637))

(declare-fun d!130639 () Bool)

(declare-fun e!628846 () Bool)

(assert (=> d!130639 e!628846))

(declare-fun res!735158 () Bool)

(assert (=> d!130639 (=> (not res!735158) (not e!628846))))

(assert (=> d!130639 (= res!735158 (and (or (not (bvsle #b00000000000000000000000000000000 i!650)) (and (bvsge i!650 #b00000000000000000000000000000000) (bvslt i!650 (size!34857 _keys!1070)))) (or (bvsle #b00000000000000000000000000000000 i!650) (and (bvsge i!650 #b00000000000000000000000000000000) (bvslt i!650 (size!34857 _keys!1070))))))))

(declare-fun lt!494000 () Unit!36131)

(declare-fun choose!1778 (array!71322 array!71324 (_ BitVec 32) (_ BitVec 32) V!41427 V!41427 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!36131)

(assert (=> d!130639 (= lt!494000 (choose!1778 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 i!650 k0!904 #b00000000000000000000000000000000 defaultEntry!882))))

(assert (=> d!130639 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvsle #b00000000000000000000000000000000 (size!34857 _keys!1070)))))

(assert (=> d!130639 (= (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!227 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 i!650 k0!904 #b00000000000000000000000000000000 defaultEntry!882) lt!494000)))

(declare-fun call!46216 () ListLongMap!15429)

(declare-fun call!46215 () ListLongMap!15429)

(declare-fun b!1101661 () Bool)

(declare-fun e!628847 () Bool)

(assert (=> b!1101661 (= e!628847 (= call!46216 (-!967 call!46215 k0!904)))))

(assert (=> b!1101661 (and (bvsge i!650 #b00000000000000000000000000000000) (bvslt i!650 (size!34858 _values!874)))))

(declare-fun bm!46212 () Bool)

(assert (=> bm!46212 (= call!46216 (getCurrentListMapNoExtraKeys!4202 (array!71323 (store (arr!34320 _keys!1070) i!650 #b1000000000000000000000000000000000000000000000000000000000000000) (size!34857 _keys!1070)) (array!71325 (store (arr!34321 _values!874) i!650 (ValueCellFull!12903 (dynLambda!2333 defaultEntry!882 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!34858 _values!874)) mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun b!1101662 () Bool)

(assert (=> b!1101662 (= e!628846 e!628847)))

(declare-fun c!108804 () Bool)

(assert (=> b!1101662 (= c!108804 (bvsle #b00000000000000000000000000000000 i!650))))

(declare-fun b!1101663 () Bool)

(assert (=> b!1101663 (= e!628847 (= call!46216 call!46215))))

(assert (=> b!1101663 (and (bvsge i!650 #b00000000000000000000000000000000) (bvslt i!650 (size!34858 _values!874)))))

(declare-fun bm!46213 () Bool)

(assert (=> bm!46213 (= call!46215 (getCurrentListMapNoExtraKeys!4202 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(assert (= (and d!130639 res!735158) b!1101662))

(assert (= (and b!1101662 c!108804) b!1101661))

(assert (= (and b!1101662 (not c!108804)) b!1101663))

(assert (= (or b!1101661 b!1101663) bm!46213))

(assert (= (or b!1101661 b!1101663) bm!46212))

(declare-fun b_lambda!18147 () Bool)

(assert (=> (not b_lambda!18147) (not bm!46212)))

(assert (=> bm!46212 t!34346))

(declare-fun b_and!37173 () Bool)

(assert (= b_and!37171 (and (=> t!34346 result!16631) b_and!37173)))

(declare-fun m!1022013 () Bool)

(assert (=> d!130639 m!1022013))

(declare-fun m!1022015 () Bool)

(assert (=> b!1101661 m!1022015))

(assert (=> bm!46212 m!1021787))

(assert (=> bm!46212 m!1021807))

(assert (=> bm!46212 m!1021809))

(declare-fun m!1022017 () Bool)

(assert (=> bm!46212 m!1022017))

(assert (=> bm!46213 m!1021817))

(assert (=> b!1101475 d!130639))

(declare-fun b!1101664 () Bool)

(declare-fun e!628853 () ListLongMap!15429)

(declare-fun e!628851 () ListLongMap!15429)

(assert (=> b!1101664 (= e!628853 e!628851)))

(declare-fun c!108806 () Bool)

(assert (=> b!1101664 (= c!108806 (validKeyInArray!0 (select (arr!34320 _keys!1070) #b00000000000000000000000000000000)))))

(declare-fun b!1101665 () Bool)

(declare-fun res!735159 () Bool)

(declare-fun e!628848 () Bool)

(assert (=> b!1101665 (=> (not res!735159) (not e!628848))))

(declare-fun lt!494006 () ListLongMap!15429)

(assert (=> b!1101665 (= res!735159 (not (contains!6417 lt!494006 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1101666 () Bool)

(assert (=> b!1101666 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!34857 _keys!1070)))))

(assert (=> b!1101666 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!34858 _values!874)))))

(declare-fun e!628854 () Bool)

(assert (=> b!1101666 (= e!628854 (= (apply!987 lt!494006 (select (arr!34320 _keys!1070) #b00000000000000000000000000000000)) (get!17667 (select (arr!34321 _values!874) #b00000000000000000000000000000000) (dynLambda!2333 defaultEntry!882 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1101668 () Bool)

(declare-fun e!628850 () Bool)

(assert (=> b!1101668 (= e!628848 e!628850)))

(declare-fun c!108807 () Bool)

(declare-fun e!628849 () Bool)

(assert (=> b!1101668 (= c!108807 e!628849)))

(declare-fun res!735162 () Bool)

(assert (=> b!1101668 (=> (not res!735162) (not e!628849))))

(assert (=> b!1101668 (= res!735162 (bvslt #b00000000000000000000000000000000 (size!34857 _keys!1070)))))

(declare-fun b!1101669 () Bool)

(declare-fun call!46217 () ListLongMap!15429)

(assert (=> b!1101669 (= e!628851 call!46217)))

(declare-fun b!1101670 () Bool)

(declare-fun lt!494002 () Unit!36131)

(declare-fun lt!494007 () Unit!36131)

(assert (=> b!1101670 (= lt!494002 lt!494007)))

(declare-fun lt!494003 () (_ BitVec 64))

(declare-fun lt!494004 () V!41427)

(declare-fun lt!494005 () (_ BitVec 64))

(declare-fun lt!494001 () ListLongMap!15429)

(assert (=> b!1101670 (not (contains!6417 (+!3362 lt!494001 (tuple2!17449 lt!494005 lt!494004)) lt!494003))))

(assert (=> b!1101670 (= lt!494007 (addStillNotContains!282 lt!494001 lt!494005 lt!494004 lt!494003))))

(assert (=> b!1101670 (= lt!494003 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!1101670 (= lt!494004 (get!17667 (select (arr!34321 _values!874) #b00000000000000000000000000000000) (dynLambda!2333 defaultEntry!882 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!1101670 (= lt!494005 (select (arr!34320 _keys!1070) #b00000000000000000000000000000000))))

(assert (=> b!1101670 (= lt!494001 call!46217)))

(assert (=> b!1101670 (= e!628851 (+!3362 call!46217 (tuple2!17449 (select (arr!34320 _keys!1070) #b00000000000000000000000000000000) (get!17667 (select (arr!34321 _values!874) #b00000000000000000000000000000000) (dynLambda!2333 defaultEntry!882 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!1101671 () Bool)

(declare-fun e!628852 () Bool)

(assert (=> b!1101671 (= e!628850 e!628852)))

(declare-fun c!108805 () Bool)

(assert (=> b!1101671 (= c!108805 (bvslt #b00000000000000000000000000000000 (size!34857 _keys!1070)))))

(declare-fun b!1101672 () Bool)

(assert (=> b!1101672 (= e!628850 e!628854)))

(assert (=> b!1101672 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!34857 _keys!1070)))))

(declare-fun res!735160 () Bool)

(assert (=> b!1101672 (= res!735160 (contains!6417 lt!494006 (select (arr!34320 _keys!1070) #b00000000000000000000000000000000)))))

(assert (=> b!1101672 (=> (not res!735160) (not e!628854))))

(declare-fun d!130641 () Bool)

(assert (=> d!130641 e!628848))

(declare-fun res!735161 () Bool)

(assert (=> d!130641 (=> (not res!735161) (not e!628848))))

(assert (=> d!130641 (= res!735161 (not (contains!6417 lt!494006 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!130641 (= lt!494006 e!628853)))

(declare-fun c!108808 () Bool)

(assert (=> d!130641 (= c!108808 (bvsge #b00000000000000000000000000000000 (size!34857 _keys!1070)))))

(assert (=> d!130641 (validMask!0 mask!1414)))

(assert (=> d!130641 (= (getCurrentListMapNoExtraKeys!4202 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882) lt!494006)))

(declare-fun b!1101667 () Bool)

(assert (=> b!1101667 (= e!628849 (validKeyInArray!0 (select (arr!34320 _keys!1070) #b00000000000000000000000000000000)))))

(assert (=> b!1101667 (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000)))

(declare-fun b!1101673 () Bool)

(assert (=> b!1101673 (= e!628852 (= lt!494006 (getCurrentListMapNoExtraKeys!4202 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) defaultEntry!882)))))

(declare-fun bm!46214 () Bool)

(assert (=> bm!46214 (= call!46217 (getCurrentListMapNoExtraKeys!4202 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) defaultEntry!882))))

(declare-fun b!1101674 () Bool)

(assert (=> b!1101674 (= e!628853 (ListLongMap!15430 Nil!24117))))

(declare-fun b!1101675 () Bool)

(assert (=> b!1101675 (= e!628852 (isEmpty!973 lt!494006))))

(assert (= (and d!130641 c!108808) b!1101674))

(assert (= (and d!130641 (not c!108808)) b!1101664))

(assert (= (and b!1101664 c!108806) b!1101670))

(assert (= (and b!1101664 (not c!108806)) b!1101669))

(assert (= (or b!1101670 b!1101669) bm!46214))

(assert (= (and d!130641 res!735161) b!1101665))

(assert (= (and b!1101665 res!735159) b!1101668))

(assert (= (and b!1101668 res!735162) b!1101667))

(assert (= (and b!1101668 c!108807) b!1101672))

(assert (= (and b!1101668 (not c!108807)) b!1101671))

(assert (= (and b!1101672 res!735160) b!1101666))

(assert (= (and b!1101671 c!108805) b!1101673))

(assert (= (and b!1101671 (not c!108805)) b!1101675))

(declare-fun b_lambda!18149 () Bool)

(assert (=> (not b_lambda!18149) (not b!1101666)))

(assert (=> b!1101666 t!34346))

(declare-fun b_and!37175 () Bool)

(assert (= b_and!37173 (and (=> t!34346 result!16631) b_and!37175)))

(declare-fun b_lambda!18151 () Bool)

(assert (=> (not b_lambda!18151) (not b!1101670)))

(assert (=> b!1101670 t!34346))

(declare-fun b_and!37177 () Bool)

(assert (= b_and!37175 (and (=> t!34346 result!16631) b_and!37177)))

(declare-fun m!1022019 () Bool)

(assert (=> b!1101673 m!1022019))

(assert (=> b!1101672 m!1021879))

(assert (=> b!1101672 m!1021879))

(declare-fun m!1022021 () Bool)

(assert (=> b!1101672 m!1022021))

(declare-fun m!1022023 () Bool)

(assert (=> d!130641 m!1022023))

(assert (=> d!130641 m!1021799))

(assert (=> b!1101666 m!1021879))

(assert (=> b!1101666 m!1021943))

(assert (=> b!1101666 m!1021807))

(assert (=> b!1101666 m!1021947))

(assert (=> b!1101666 m!1021879))

(declare-fun m!1022025 () Bool)

(assert (=> b!1101666 m!1022025))

(assert (=> b!1101666 m!1021943))

(assert (=> b!1101666 m!1021807))

(assert (=> b!1101667 m!1021879))

(assert (=> b!1101667 m!1021879))

(assert (=> b!1101667 m!1021955))

(assert (=> b!1101664 m!1021879))

(assert (=> b!1101664 m!1021879))

(assert (=> b!1101664 m!1021955))

(assert (=> bm!46214 m!1022019))

(declare-fun m!1022027 () Bool)

(assert (=> b!1101675 m!1022027))

(declare-fun m!1022029 () Bool)

(assert (=> b!1101665 m!1022029))

(declare-fun m!1022031 () Bool)

(assert (=> b!1101670 m!1022031))

(assert (=> b!1101670 m!1021879))

(assert (=> b!1101670 m!1021943))

(assert (=> b!1101670 m!1021807))

(assert (=> b!1101670 m!1021947))

(declare-fun m!1022033 () Bool)

(assert (=> b!1101670 m!1022033))

(assert (=> b!1101670 m!1021943))

(assert (=> b!1101670 m!1021807))

(declare-fun m!1022035 () Bool)

(assert (=> b!1101670 m!1022035))

(assert (=> b!1101670 m!1022033))

(declare-fun m!1022037 () Bool)

(assert (=> b!1101670 m!1022037))

(assert (=> b!1101475 d!130641))

(declare-fun d!130643 () Bool)

(assert (=> d!130643 (arrayContainsKey!0 _keys!1070 k0!904 #b00000000000000000000000000000000)))

(declare-fun lt!494010 () Unit!36131)

(declare-fun choose!13 (array!71322 (_ BitVec 64) (_ BitVec 32)) Unit!36131)

(assert (=> d!130643 (= lt!494010 (choose!13 _keys!1070 k0!904 i!650))))

(assert (=> d!130643 (bvsge i!650 #b00000000000000000000000000000000)))

(assert (=> d!130643 (= (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1070 k0!904 i!650) lt!494010)))

(declare-fun bs!32325 () Bool)

(assert (= bs!32325 d!130643))

(assert (=> bs!32325 m!1021819))

(declare-fun m!1022039 () Bool)

(assert (=> bs!32325 m!1022039))

(assert (=> b!1101475 d!130643))

(declare-fun bm!46217 () Bool)

(declare-fun call!46220 () Bool)

(declare-fun c!108811 () Bool)

(assert (=> bm!46217 (= call!46220 (arrayNoDuplicates!0 lt!493848 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!108811 (Cons!24115 (select (arr!34320 lt!493848) #b00000000000000000000000000000000) Nil!24116) Nil!24116)))))

(declare-fun b!1101686 () Bool)

(declare-fun e!628866 () Bool)

(assert (=> b!1101686 (= e!628866 call!46220)))

(declare-fun b!1101687 () Bool)

(declare-fun e!628864 () Bool)

(declare-fun e!628863 () Bool)

(assert (=> b!1101687 (= e!628864 e!628863)))

(declare-fun res!735171 () Bool)

(assert (=> b!1101687 (=> (not res!735171) (not e!628863))))

(declare-fun e!628865 () Bool)

(assert (=> b!1101687 (= res!735171 (not e!628865))))

(declare-fun res!735170 () Bool)

(assert (=> b!1101687 (=> (not res!735170) (not e!628865))))

(assert (=> b!1101687 (= res!735170 (validKeyInArray!0 (select (arr!34320 lt!493848) #b00000000000000000000000000000000)))))

(declare-fun b!1101688 () Bool)

(assert (=> b!1101688 (= e!628863 e!628866)))

(assert (=> b!1101688 (= c!108811 (validKeyInArray!0 (select (arr!34320 lt!493848) #b00000000000000000000000000000000)))))

(declare-fun b!1101689 () Bool)

(declare-fun contains!6418 (List!24119 (_ BitVec 64)) Bool)

(assert (=> b!1101689 (= e!628865 (contains!6418 Nil!24116 (select (arr!34320 lt!493848) #b00000000000000000000000000000000)))))

(declare-fun d!130645 () Bool)

(declare-fun res!735169 () Bool)

(assert (=> d!130645 (=> res!735169 e!628864)))

(assert (=> d!130645 (= res!735169 (bvsge #b00000000000000000000000000000000 (size!34857 lt!493848)))))

(assert (=> d!130645 (= (arrayNoDuplicates!0 lt!493848 #b00000000000000000000000000000000 Nil!24116) e!628864)))

(declare-fun b!1101690 () Bool)

(assert (=> b!1101690 (= e!628866 call!46220)))

(assert (= (and d!130645 (not res!735169)) b!1101687))

(assert (= (and b!1101687 res!735170) b!1101689))

(assert (= (and b!1101687 res!735171) b!1101688))

(assert (= (and b!1101688 c!108811) b!1101686))

(assert (= (and b!1101688 (not c!108811)) b!1101690))

(assert (= (or b!1101686 b!1101690) bm!46217))

(assert (=> bm!46217 m!1021885))

(declare-fun m!1022041 () Bool)

(assert (=> bm!46217 m!1022041))

(assert (=> b!1101687 m!1021885))

(assert (=> b!1101687 m!1021885))

(assert (=> b!1101687 m!1021897))

(assert (=> b!1101688 m!1021885))

(assert (=> b!1101688 m!1021885))

(assert (=> b!1101688 m!1021897))

(assert (=> b!1101689 m!1021885))

(assert (=> b!1101689 m!1021885))

(declare-fun m!1022043 () Bool)

(assert (=> b!1101689 m!1022043))

(assert (=> b!1101466 d!130645))

(declare-fun b!1101699 () Bool)

(declare-fun e!628874 () Bool)

(declare-fun call!46223 () Bool)

(assert (=> b!1101699 (= e!628874 call!46223)))

(declare-fun bm!46220 () Bool)

(assert (=> bm!46220 (= call!46223 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) _keys!1070 mask!1414))))

(declare-fun b!1101700 () Bool)

(declare-fun e!628875 () Bool)

(assert (=> b!1101700 (= e!628874 e!628875)))

(declare-fun lt!494019 () (_ BitVec 64))

(assert (=> b!1101700 (= lt!494019 (select (arr!34320 _keys!1070) #b00000000000000000000000000000000))))

(declare-fun lt!494017 () Unit!36131)

(assert (=> b!1101700 (= lt!494017 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1070 lt!494019 #b00000000000000000000000000000000))))

(assert (=> b!1101700 (arrayContainsKey!0 _keys!1070 lt!494019 #b00000000000000000000000000000000)))

(declare-fun lt!494018 () Unit!36131)

(assert (=> b!1101700 (= lt!494018 lt!494017)))

(declare-fun res!735176 () Bool)

(declare-datatypes ((SeekEntryResult!9912 0))(
  ( (MissingZero!9912 (index!42018 (_ BitVec 32))) (Found!9912 (index!42019 (_ BitVec 32))) (Intermediate!9912 (undefined!10724 Bool) (index!42020 (_ BitVec 32)) (x!99062 (_ BitVec 32))) (Undefined!9912) (MissingVacant!9912 (index!42021 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!71322 (_ BitVec 32)) SeekEntryResult!9912)

(assert (=> b!1101700 (= res!735176 (= (seekEntryOrOpen!0 (select (arr!34320 _keys!1070) #b00000000000000000000000000000000) _keys!1070 mask!1414) (Found!9912 #b00000000000000000000000000000000)))))

(assert (=> b!1101700 (=> (not res!735176) (not e!628875))))

(declare-fun b!1101701 () Bool)

(declare-fun e!628873 () Bool)

(assert (=> b!1101701 (= e!628873 e!628874)))

(declare-fun c!108814 () Bool)

(assert (=> b!1101701 (= c!108814 (validKeyInArray!0 (select (arr!34320 _keys!1070) #b00000000000000000000000000000000)))))

(declare-fun b!1101702 () Bool)

(assert (=> b!1101702 (= e!628875 call!46223)))

(declare-fun d!130647 () Bool)

(declare-fun res!735177 () Bool)

(assert (=> d!130647 (=> res!735177 e!628873)))

(assert (=> d!130647 (= res!735177 (bvsge #b00000000000000000000000000000000 (size!34857 _keys!1070)))))

(assert (=> d!130647 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1070 mask!1414) e!628873)))

(assert (= (and d!130647 (not res!735177)) b!1101701))

(assert (= (and b!1101701 c!108814) b!1101700))

(assert (= (and b!1101701 (not c!108814)) b!1101699))

(assert (= (and b!1101700 res!735176) b!1101702))

(assert (= (or b!1101702 b!1101699) bm!46220))

(declare-fun m!1022045 () Bool)

(assert (=> bm!46220 m!1022045))

(assert (=> b!1101700 m!1021879))

(declare-fun m!1022047 () Bool)

(assert (=> b!1101700 m!1022047))

(declare-fun m!1022049 () Bool)

(assert (=> b!1101700 m!1022049))

(assert (=> b!1101700 m!1021879))

(declare-fun m!1022051 () Bool)

(assert (=> b!1101700 m!1022051))

(assert (=> b!1101701 m!1021879))

(assert (=> b!1101701 m!1021879))

(assert (=> b!1101701 m!1021955))

(assert (=> b!1101474 d!130647))

(declare-fun d!130649 () Bool)

(declare-fun e!628878 () Bool)

(assert (=> d!130649 e!628878))

(declare-fun res!735182 () Bool)

(assert (=> d!130649 (=> (not res!735182) (not e!628878))))

(declare-fun lt!494028 () ListLongMap!15429)

(assert (=> d!130649 (= res!735182 (contains!6417 lt!494028 (_1!8734 lt!493853)))))

(declare-fun lt!494029 () List!24120)

(assert (=> d!130649 (= lt!494028 (ListLongMap!15430 lt!494029))))

(declare-fun lt!494031 () Unit!36131)

(declare-fun lt!494030 () Unit!36131)

(assert (=> d!130649 (= lt!494031 lt!494030)))

(declare-datatypes ((Option!681 0))(
  ( (Some!680 (v!16302 V!41427)) (None!679) )
))
(declare-fun getValueByKey!630 (List!24120 (_ BitVec 64)) Option!681)

(assert (=> d!130649 (= (getValueByKey!630 lt!494029 (_1!8734 lt!493853)) (Some!680 (_2!8734 lt!493853)))))

(declare-fun lemmaContainsTupThenGetReturnValue!305 (List!24120 (_ BitVec 64) V!41427) Unit!36131)

(assert (=> d!130649 (= lt!494030 (lemmaContainsTupThenGetReturnValue!305 lt!494029 (_1!8734 lt!493853) (_2!8734 lt!493853)))))

(declare-fun insertStrictlySorted!397 (List!24120 (_ BitVec 64) V!41427) List!24120)

(assert (=> d!130649 (= lt!494029 (insertStrictlySorted!397 (toList!7730 lt!493846) (_1!8734 lt!493853) (_2!8734 lt!493853)))))

(assert (=> d!130649 (= (+!3362 lt!493846 lt!493853) lt!494028)))

(declare-fun b!1101707 () Bool)

(declare-fun res!735183 () Bool)

(assert (=> b!1101707 (=> (not res!735183) (not e!628878))))

(assert (=> b!1101707 (= res!735183 (= (getValueByKey!630 (toList!7730 lt!494028) (_1!8734 lt!493853)) (Some!680 (_2!8734 lt!493853))))))

(declare-fun b!1101708 () Bool)

(declare-fun contains!6419 (List!24120 tuple2!17448) Bool)

(assert (=> b!1101708 (= e!628878 (contains!6419 (toList!7730 lt!494028) lt!493853))))

(assert (= (and d!130649 res!735182) b!1101707))

(assert (= (and b!1101707 res!735183) b!1101708))

(declare-fun m!1022053 () Bool)

(assert (=> d!130649 m!1022053))

(declare-fun m!1022055 () Bool)

(assert (=> d!130649 m!1022055))

(declare-fun m!1022057 () Bool)

(assert (=> d!130649 m!1022057))

(declare-fun m!1022059 () Bool)

(assert (=> d!130649 m!1022059))

(declare-fun m!1022061 () Bool)

(assert (=> b!1101707 m!1022061))

(declare-fun m!1022063 () Bool)

(assert (=> b!1101708 m!1022063))

(assert (=> b!1101478 d!130649))

(declare-fun b!1101709 () Bool)

(declare-fun e!628880 () Bool)

(declare-fun call!46224 () Bool)

(assert (=> b!1101709 (= e!628880 call!46224)))

(declare-fun bm!46221 () Bool)

(assert (=> bm!46221 (= call!46224 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) lt!493848 mask!1414))))

(declare-fun b!1101710 () Bool)

(declare-fun e!628881 () Bool)

(assert (=> b!1101710 (= e!628880 e!628881)))

(declare-fun lt!494034 () (_ BitVec 64))

(assert (=> b!1101710 (= lt!494034 (select (arr!34320 lt!493848) #b00000000000000000000000000000000))))

(declare-fun lt!494032 () Unit!36131)

(assert (=> b!1101710 (= lt!494032 (lemmaArrayContainsFromImpliesContainsFromZero!0 lt!493848 lt!494034 #b00000000000000000000000000000000))))

(assert (=> b!1101710 (arrayContainsKey!0 lt!493848 lt!494034 #b00000000000000000000000000000000)))

(declare-fun lt!494033 () Unit!36131)

(assert (=> b!1101710 (= lt!494033 lt!494032)))

(declare-fun res!735184 () Bool)

(assert (=> b!1101710 (= res!735184 (= (seekEntryOrOpen!0 (select (arr!34320 lt!493848) #b00000000000000000000000000000000) lt!493848 mask!1414) (Found!9912 #b00000000000000000000000000000000)))))

(assert (=> b!1101710 (=> (not res!735184) (not e!628881))))

(declare-fun b!1101711 () Bool)

(declare-fun e!628879 () Bool)

(assert (=> b!1101711 (= e!628879 e!628880)))

(declare-fun c!108815 () Bool)

(assert (=> b!1101711 (= c!108815 (validKeyInArray!0 (select (arr!34320 lt!493848) #b00000000000000000000000000000000)))))

(declare-fun b!1101712 () Bool)

(assert (=> b!1101712 (= e!628881 call!46224)))

(declare-fun d!130651 () Bool)

(declare-fun res!735185 () Bool)

(assert (=> d!130651 (=> res!735185 e!628879)))

(assert (=> d!130651 (= res!735185 (bvsge #b00000000000000000000000000000000 (size!34857 lt!493848)))))

(assert (=> d!130651 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!493848 mask!1414) e!628879)))

(assert (= (and d!130651 (not res!735185)) b!1101711))

(assert (= (and b!1101711 c!108815) b!1101710))

(assert (= (and b!1101711 (not c!108815)) b!1101709))

(assert (= (and b!1101710 res!735184) b!1101712))

(assert (= (or b!1101712 b!1101709) bm!46221))

(declare-fun m!1022065 () Bool)

(assert (=> bm!46221 m!1022065))

(assert (=> b!1101710 m!1021885))

(declare-fun m!1022067 () Bool)

(assert (=> b!1101710 m!1022067))

(declare-fun m!1022069 () Bool)

(assert (=> b!1101710 m!1022069))

(assert (=> b!1101710 m!1021885))

(declare-fun m!1022071 () Bool)

(assert (=> b!1101710 m!1022071))

(assert (=> b!1101711 m!1021885))

(assert (=> b!1101711 m!1021885))

(assert (=> b!1101711 m!1021897))

(assert (=> b!1101469 d!130651))

(declare-fun d!130653 () Bool)

(assert (=> d!130653 (= (validMask!0 mask!1414) (and (or (= mask!1414 #b00000000000000000000000000000111) (= mask!1414 #b00000000000000000000000000001111) (= mask!1414 #b00000000000000000000000000011111) (= mask!1414 #b00000000000000000000000000111111) (= mask!1414 #b00000000000000000000000001111111) (= mask!1414 #b00000000000000000000000011111111) (= mask!1414 #b00000000000000000000000111111111) (= mask!1414 #b00000000000000000000001111111111) (= mask!1414 #b00000000000000000000011111111111) (= mask!1414 #b00000000000000000000111111111111) (= mask!1414 #b00000000000000000001111111111111) (= mask!1414 #b00000000000000000011111111111111) (= mask!1414 #b00000000000000000111111111111111) (= mask!1414 #b00000000000000001111111111111111) (= mask!1414 #b00000000000000011111111111111111) (= mask!1414 #b00000000000000111111111111111111) (= mask!1414 #b00000000000001111111111111111111) (= mask!1414 #b00000000000011111111111111111111) (= mask!1414 #b00000000000111111111111111111111) (= mask!1414 #b00000000001111111111111111111111) (= mask!1414 #b00000000011111111111111111111111) (= mask!1414 #b00000000111111111111111111111111) (= mask!1414 #b00000001111111111111111111111111) (= mask!1414 #b00000011111111111111111111111111) (= mask!1414 #b00000111111111111111111111111111) (= mask!1414 #b00001111111111111111111111111111) (= mask!1414 #b00011111111111111111111111111111) (= mask!1414 #b00111111111111111111111111111111)) (bvsle mask!1414 #b00111111111111111111111111111111)))))

(assert (=> start!96868 d!130653))

(declare-fun d!130655 () Bool)

(assert (=> d!130655 (= (array_inv!26292 _keys!1070) (bvsge (size!34857 _keys!1070) #b00000000000000000000000000000000))))

(assert (=> start!96868 d!130655))

(declare-fun d!130657 () Bool)

(assert (=> d!130657 (= (array_inv!26293 _values!874) (bvsge (size!34858 _values!874) #b00000000000000000000000000000000))))

(assert (=> start!96868 d!130657))

(declare-fun d!130659 () Bool)

(declare-fun e!628882 () Bool)

(assert (=> d!130659 e!628882))

(declare-fun res!735186 () Bool)

(assert (=> d!130659 (=> (not res!735186) (not e!628882))))

(declare-fun lt!494035 () ListLongMap!15429)

(assert (=> d!130659 (= res!735186 (contains!6417 lt!494035 (_1!8734 lt!493853)))))

(declare-fun lt!494036 () List!24120)

(assert (=> d!130659 (= lt!494035 (ListLongMap!15430 lt!494036))))

(declare-fun lt!494038 () Unit!36131)

(declare-fun lt!494037 () Unit!36131)

(assert (=> d!130659 (= lt!494038 lt!494037)))

(assert (=> d!130659 (= (getValueByKey!630 lt!494036 (_1!8734 lt!493853)) (Some!680 (_2!8734 lt!493853)))))

(assert (=> d!130659 (= lt!494037 (lemmaContainsTupThenGetReturnValue!305 lt!494036 (_1!8734 lt!493853) (_2!8734 lt!493853)))))

(assert (=> d!130659 (= lt!494036 (insertStrictlySorted!397 (toList!7730 lt!493855) (_1!8734 lt!493853) (_2!8734 lt!493853)))))

(assert (=> d!130659 (= (+!3362 lt!493855 lt!493853) lt!494035)))

(declare-fun b!1101713 () Bool)

(declare-fun res!735187 () Bool)

(assert (=> b!1101713 (=> (not res!735187) (not e!628882))))

(assert (=> b!1101713 (= res!735187 (= (getValueByKey!630 (toList!7730 lt!494035) (_1!8734 lt!493853)) (Some!680 (_2!8734 lt!493853))))))

(declare-fun b!1101714 () Bool)

(assert (=> b!1101714 (= e!628882 (contains!6419 (toList!7730 lt!494035) lt!493853))))

(assert (= (and d!130659 res!735186) b!1101713))

(assert (= (and b!1101713 res!735187) b!1101714))

(declare-fun m!1022073 () Bool)

(assert (=> d!130659 m!1022073))

(declare-fun m!1022075 () Bool)

(assert (=> d!130659 m!1022075))

(declare-fun m!1022077 () Bool)

(assert (=> d!130659 m!1022077))

(declare-fun m!1022079 () Bool)

(assert (=> d!130659 m!1022079))

(declare-fun m!1022081 () Bool)

(assert (=> b!1101713 m!1022081))

(declare-fun m!1022083 () Bool)

(assert (=> b!1101714 m!1022083))

(assert (=> b!1101468 d!130659))

(declare-fun d!130661 () Bool)

(declare-fun e!628883 () Bool)

(assert (=> d!130661 e!628883))

(declare-fun res!735188 () Bool)

(assert (=> d!130661 (=> (not res!735188) (not e!628883))))

(declare-fun lt!494039 () ListLongMap!15429)

(assert (=> d!130661 (= res!735188 (contains!6417 lt!494039 (_1!8734 lt!493853)))))

(declare-fun lt!494040 () List!24120)

(assert (=> d!130661 (= lt!494039 (ListLongMap!15430 lt!494040))))

(declare-fun lt!494042 () Unit!36131)

(declare-fun lt!494041 () Unit!36131)

(assert (=> d!130661 (= lt!494042 lt!494041)))

(assert (=> d!130661 (= (getValueByKey!630 lt!494040 (_1!8734 lt!493853)) (Some!680 (_2!8734 lt!493853)))))

(assert (=> d!130661 (= lt!494041 (lemmaContainsTupThenGetReturnValue!305 lt!494040 (_1!8734 lt!493853) (_2!8734 lt!493853)))))

(assert (=> d!130661 (= lt!494040 (insertStrictlySorted!397 (toList!7730 lt!493849) (_1!8734 lt!493853) (_2!8734 lt!493853)))))

(assert (=> d!130661 (= (+!3362 lt!493849 lt!493853) lt!494039)))

(declare-fun b!1101715 () Bool)

(declare-fun res!735189 () Bool)

(assert (=> b!1101715 (=> (not res!735189) (not e!628883))))

(assert (=> b!1101715 (= res!735189 (= (getValueByKey!630 (toList!7730 lt!494039) (_1!8734 lt!493853)) (Some!680 (_2!8734 lt!493853))))))

(declare-fun b!1101716 () Bool)

(assert (=> b!1101716 (= e!628883 (contains!6419 (toList!7730 lt!494039) lt!493853))))

(assert (= (and d!130661 res!735188) b!1101715))

(assert (= (and b!1101715 res!735189) b!1101716))

(declare-fun m!1022085 () Bool)

(assert (=> d!130661 m!1022085))

(declare-fun m!1022087 () Bool)

(assert (=> d!130661 m!1022087))

(declare-fun m!1022089 () Bool)

(assert (=> d!130661 m!1022089))

(declare-fun m!1022091 () Bool)

(assert (=> d!130661 m!1022091))

(declare-fun m!1022093 () Bool)

(assert (=> b!1101715 m!1022093))

(declare-fun m!1022095 () Bool)

(assert (=> b!1101716 m!1022095))

(assert (=> b!1101472 d!130661))

(declare-fun bm!46222 () Bool)

(declare-fun call!46225 () Bool)

(declare-fun c!108816 () Bool)

(assert (=> bm!46222 (= call!46225 (arrayNoDuplicates!0 _keys!1070 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!108816 (Cons!24115 (select (arr!34320 _keys!1070) #b00000000000000000000000000000000) Nil!24116) Nil!24116)))))

(declare-fun b!1101717 () Bool)

(declare-fun e!628887 () Bool)

(assert (=> b!1101717 (= e!628887 call!46225)))

(declare-fun b!1101718 () Bool)

(declare-fun e!628885 () Bool)

(declare-fun e!628884 () Bool)

(assert (=> b!1101718 (= e!628885 e!628884)))

(declare-fun res!735192 () Bool)

(assert (=> b!1101718 (=> (not res!735192) (not e!628884))))

(declare-fun e!628886 () Bool)

(assert (=> b!1101718 (= res!735192 (not e!628886))))

(declare-fun res!735191 () Bool)

(assert (=> b!1101718 (=> (not res!735191) (not e!628886))))

(assert (=> b!1101718 (= res!735191 (validKeyInArray!0 (select (arr!34320 _keys!1070) #b00000000000000000000000000000000)))))

(declare-fun b!1101719 () Bool)

(assert (=> b!1101719 (= e!628884 e!628887)))

(assert (=> b!1101719 (= c!108816 (validKeyInArray!0 (select (arr!34320 _keys!1070) #b00000000000000000000000000000000)))))

(declare-fun b!1101720 () Bool)

(assert (=> b!1101720 (= e!628886 (contains!6418 Nil!24116 (select (arr!34320 _keys!1070) #b00000000000000000000000000000000)))))

(declare-fun d!130663 () Bool)

(declare-fun res!735190 () Bool)

(assert (=> d!130663 (=> res!735190 e!628885)))

(assert (=> d!130663 (= res!735190 (bvsge #b00000000000000000000000000000000 (size!34857 _keys!1070)))))

(assert (=> d!130663 (= (arrayNoDuplicates!0 _keys!1070 #b00000000000000000000000000000000 Nil!24116) e!628885)))

(declare-fun b!1101721 () Bool)

(assert (=> b!1101721 (= e!628887 call!46225)))

(assert (= (and d!130663 (not res!735190)) b!1101718))

(assert (= (and b!1101718 res!735191) b!1101720))

(assert (= (and b!1101718 res!735192) b!1101719))

(assert (= (and b!1101719 c!108816) b!1101717))

(assert (= (and b!1101719 (not c!108816)) b!1101721))

(assert (= (or b!1101717 b!1101721) bm!46222))

(assert (=> bm!46222 m!1021879))

(declare-fun m!1022097 () Bool)

(assert (=> bm!46222 m!1022097))

(assert (=> b!1101718 m!1021879))

(assert (=> b!1101718 m!1021879))

(assert (=> b!1101718 m!1021955))

(assert (=> b!1101719 m!1021879))

(assert (=> b!1101719 m!1021879))

(assert (=> b!1101719 m!1021955))

(assert (=> b!1101720 m!1021879))

(assert (=> b!1101720 m!1021879))

(declare-fun m!1022099 () Bool)

(assert (=> b!1101720 m!1022099))

(assert (=> b!1101476 d!130663))

(declare-fun d!130665 () Bool)

(assert (=> d!130665 (= (validKeyInArray!0 k0!904) (and (not (= k0!904 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!904 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1101471 d!130665))

(declare-fun condMapEmpty!42631 () Bool)

(declare-fun mapDefault!42631 () ValueCell!12903)

(assert (=> mapNonEmpty!42625 (= condMapEmpty!42631 (= mapRest!42625 ((as const (Array (_ BitVec 32) ValueCell!12903)) mapDefault!42631)))))

(declare-fun e!628892 () Bool)

(declare-fun mapRes!42631 () Bool)

(assert (=> mapNonEmpty!42625 (= tp!81479 (and e!628892 mapRes!42631))))

(declare-fun b!1101728 () Bool)

(declare-fun e!628893 () Bool)

(assert (=> b!1101728 (= e!628893 tp_is_empty!27225)))

(declare-fun b!1101729 () Bool)

(assert (=> b!1101729 (= e!628892 tp_is_empty!27225)))

(declare-fun mapNonEmpty!42631 () Bool)

(declare-fun tp!81489 () Bool)

(assert (=> mapNonEmpty!42631 (= mapRes!42631 (and tp!81489 e!628893))))

(declare-fun mapRest!42631 () (Array (_ BitVec 32) ValueCell!12903))

(declare-fun mapValue!42631 () ValueCell!12903)

(declare-fun mapKey!42631 () (_ BitVec 32))

(assert (=> mapNonEmpty!42631 (= mapRest!42625 (store mapRest!42631 mapKey!42631 mapValue!42631))))

(declare-fun mapIsEmpty!42631 () Bool)

(assert (=> mapIsEmpty!42631 mapRes!42631))

(assert (= (and mapNonEmpty!42625 condMapEmpty!42631) mapIsEmpty!42631))

(assert (= (and mapNonEmpty!42625 (not condMapEmpty!42631)) mapNonEmpty!42631))

(assert (= (and mapNonEmpty!42631 ((_ is ValueCellFull!12903) mapValue!42631)) b!1101728))

(assert (= (and mapNonEmpty!42625 ((_ is ValueCellFull!12903) mapDefault!42631)) b!1101729))

(declare-fun m!1022101 () Bool)

(assert (=> mapNonEmpty!42631 m!1022101))

(declare-fun b_lambda!18153 () Bool)

(assert (= b_lambda!18151 (or (and start!96868 b_free!23175) b_lambda!18153)))

(declare-fun b_lambda!18155 () Bool)

(assert (= b_lambda!18147 (or (and start!96868 b_free!23175) b_lambda!18155)))

(declare-fun b_lambda!18157 () Bool)

(assert (= b_lambda!18139 (or (and start!96868 b_free!23175) b_lambda!18157)))

(declare-fun b_lambda!18159 () Bool)

(assert (= b_lambda!18143 (or (and start!96868 b_free!23175) b_lambda!18159)))

(declare-fun b_lambda!18161 () Bool)

(assert (= b_lambda!18145 (or (and start!96868 b_free!23175) b_lambda!18161)))

(declare-fun b_lambda!18163 () Bool)

(assert (= b_lambda!18149 (or (and start!96868 b_free!23175) b_lambda!18163)))

(declare-fun b_lambda!18165 () Bool)

(assert (= b_lambda!18141 (or (and start!96868 b_free!23175) b_lambda!18165)))

(check-sat (not b_lambda!18155) (not b!1101675) (not b!1101701) (not b_lambda!18153) (not d!130659) (not b_lambda!18157) (not b!1101714) (not b!1101654) (not b!1101713) (not bm!46201) (not b_lambda!18161) (not bm!46222) (not b!1101653) (not b!1101719) (not bm!46214) (not b!1101688) (not d!130649) (not b!1101567) (not d!130661) (not b!1101687) (not b!1101645) (not d!130643) (not b!1101716) (not b!1101707) (not b!1101700) (not b!1101661) (not d!130631) (not d!130633) (not b!1101718) (not b!1101627) (not b!1101632) (not bm!46194) tp_is_empty!27225 (not b!1101711) (not bm!46213) (not bm!46207) (not b!1101710) (not bm!46205) (not bm!46217) (not b!1101633) (not d!130637) (not bm!46221) (not b!1101568) (not b!1101562) (not b!1101624) (not b!1101708) (not b!1101561) (not mapNonEmpty!42631) (not bm!46198) (not b!1101673) (not b!1101618) (not b!1101639) (not b!1101670) (not b!1101625) (not b!1101665) (not b!1101565) (not b!1101666) (not b!1101672) (not bm!46212) (not b!1101560) (not b!1101534) (not b!1101689) (not b!1101720) (not b!1101635) (not d!130641) (not bm!46220) (not b_lambda!18165) (not bm!46200) (not b!1101623) (not b_lambda!18159) (not bm!46199) (not b!1101559) (not b!1101570) (not b_lambda!18137) (not bm!46179) (not b!1101646) (not b!1101715) (not b!1101664) (not b!1101667) (not b_lambda!18163) (not d!130635) (not b!1101644) (not b_next!23175) (not b!1101614) (not d!130639) b_and!37177 (not b!1101648) (not bm!46206))
(check-sat b_and!37177 (not b_next!23175))
