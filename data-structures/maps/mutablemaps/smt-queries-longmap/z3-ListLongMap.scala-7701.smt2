; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!96748 () Bool)

(assert start!96748)

(declare-fun b_free!23133 () Bool)

(declare-fun b_next!23133 () Bool)

(assert (=> start!96748 (= b_free!23133 (not b_next!23133))))

(declare-fun tp!81344 () Bool)

(declare-fun b_and!37031 () Bool)

(assert (=> start!96748 (= tp!81344 b_and!37031)))

(declare-fun b!1099951 () Bool)

(declare-fun e!627856 () Bool)

(declare-fun tp_is_empty!27183 () Bool)

(assert (=> b!1099951 (= e!627856 tp_is_empty!27183)))

(declare-fun b!1099952 () Bool)

(declare-fun res!734106 () Bool)

(declare-fun e!627861 () Bool)

(assert (=> b!1099952 (=> (not res!734106) (not e!627861))))

(declare-datatypes ((array!71234 0))(
  ( (array!71235 (arr!34279 (Array (_ BitVec 32) (_ BitVec 64))) (size!34816 (_ BitVec 32))) )
))
(declare-fun _keys!1070 () array!71234)

(declare-fun mask!1414 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!71234 (_ BitVec 32)) Bool)

(assert (=> b!1099952 (= res!734106 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1070 mask!1414))))

(declare-fun mapNonEmpty!42553 () Bool)

(declare-fun mapRes!42553 () Bool)

(declare-fun tp!81345 () Bool)

(declare-fun e!627854 () Bool)

(assert (=> mapNonEmpty!42553 (= mapRes!42553 (and tp!81345 e!627854))))

(declare-datatypes ((V!41371 0))(
  ( (V!41372 (val!13648 Int)) )
))
(declare-datatypes ((ValueCell!12882 0))(
  ( (ValueCellFull!12882 (v!16276 V!41371)) (EmptyCell!12882) )
))
(declare-datatypes ((array!71236 0))(
  ( (array!71237 (arr!34280 (Array (_ BitVec 32) ValueCell!12882)) (size!34817 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!71236)

(declare-fun mapValue!42553 () ValueCell!12882)

(declare-fun mapKey!42553 () (_ BitVec 32))

(declare-fun mapRest!42553 () (Array (_ BitVec 32) ValueCell!12882))

(assert (=> mapNonEmpty!42553 (= (arr!34280 _values!874) (store mapRest!42553 mapKey!42553 mapValue!42553))))

(declare-fun b!1099953 () Bool)

(declare-fun res!734107 () Bool)

(assert (=> b!1099953 (=> (not res!734107) (not e!627861))))

(declare-fun extraKeys!811 () (_ BitVec 32))

(assert (=> b!1099953 (= res!734107 (and (= (size!34817 _values!874) (bvadd #b00000000000000000000000000000001 mask!1414)) (= (size!34816 _keys!1070) (size!34817 _values!874)) (bvsge mask!1414 #b00000000000000000000000000000000) (bvsge extraKeys!811 #b00000000000000000000000000000000) (bvsle extraKeys!811 #b00000000000000000000000000000011)))))

(declare-fun b!1099954 () Bool)

(declare-fun e!627858 () Bool)

(declare-fun e!627855 () Bool)

(assert (=> b!1099954 (= e!627858 (not e!627855))))

(declare-fun res!734112 () Bool)

(assert (=> b!1099954 (=> res!734112 e!627855)))

(assert (=> b!1099954 (= res!734112 (or (not (= (bvand extraKeys!811 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeys!811 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun defaultEntry!882 () Int)

(declare-fun minValue!831 () V!41371)

(declare-datatypes ((tuple2!17410 0))(
  ( (tuple2!17411 (_1!8715 (_ BitVec 64)) (_2!8715 V!41371)) )
))
(declare-datatypes ((List!24085 0))(
  ( (Nil!24082) (Cons!24081 (h!25290 tuple2!17410) (t!34271 List!24085)) )
))
(declare-datatypes ((ListLongMap!15391 0))(
  ( (ListLongMap!15392 (toList!7711 List!24085)) )
))
(declare-fun lt!492683 () ListLongMap!15391)

(declare-fun zeroValue!831 () V!41371)

(declare-fun getCurrentListMap!4402 (array!71234 array!71236 (_ BitVec 32) (_ BitVec 32) V!41371 V!41371 (_ BitVec 32) Int) ListLongMap!15391)

(assert (=> b!1099954 (= lt!492683 (getCurrentListMap!4402 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun lt!492681 () ListLongMap!15391)

(declare-fun lt!492687 () array!71236)

(declare-fun lt!492684 () array!71234)

(assert (=> b!1099954 (= lt!492681 (getCurrentListMap!4402 lt!492684 lt!492687 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun lt!492682 () ListLongMap!15391)

(declare-fun lt!492690 () ListLongMap!15391)

(assert (=> b!1099954 (and (= lt!492682 lt!492690) (= lt!492690 lt!492682))))

(declare-fun lt!492688 () ListLongMap!15391)

(declare-fun k0!904 () (_ BitVec 64))

(declare-fun -!953 (ListLongMap!15391 (_ BitVec 64)) ListLongMap!15391)

(assert (=> b!1099954 (= lt!492690 (-!953 lt!492688 k0!904))))

(declare-fun i!650 () (_ BitVec 32))

(declare-datatypes ((Unit!36097 0))(
  ( (Unit!36098) )
))
(declare-fun lt!492689 () Unit!36097)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!214 (array!71234 array!71236 (_ BitVec 32) (_ BitVec 32) V!41371 V!41371 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!36097)

(assert (=> b!1099954 (= lt!492689 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!214 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 i!650 k0!904 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun getCurrentListMapNoExtraKeys!4189 (array!71234 array!71236 (_ BitVec 32) (_ BitVec 32) V!41371 V!41371 (_ BitVec 32) Int) ListLongMap!15391)

(assert (=> b!1099954 (= lt!492682 (getCurrentListMapNoExtraKeys!4189 lt!492684 lt!492687 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun dynLambda!2320 (Int (_ BitVec 64)) V!41371)

(assert (=> b!1099954 (= lt!492687 (array!71237 (store (arr!34280 _values!874) i!650 (ValueCellFull!12882 (dynLambda!2320 defaultEntry!882 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!34817 _values!874)))))

(assert (=> b!1099954 (= lt!492688 (getCurrentListMapNoExtraKeys!4189 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun arrayContainsKey!0 (array!71234 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1099954 (arrayContainsKey!0 _keys!1070 k0!904 #b00000000000000000000000000000000)))

(declare-fun lt!492686 () Unit!36097)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!71234 (_ BitVec 64) (_ BitVec 32)) Unit!36097)

(assert (=> b!1099954 (= lt!492686 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1070 k0!904 i!650))))

(declare-fun b!1099955 () Bool)

(declare-fun res!734108 () Bool)

(declare-fun e!627860 () Bool)

(assert (=> b!1099955 (=> (not res!734108) (not e!627860))))

(declare-fun lt!492685 () tuple2!17410)

(declare-fun +!3346 (ListLongMap!15391 tuple2!17410) ListLongMap!15391)

(assert (=> b!1099955 (= res!734108 (= lt!492683 (+!3346 lt!492688 lt!492685)))))

(declare-fun b!1099956 () Bool)

(assert (=> b!1099956 (= e!627861 e!627858)))

(declare-fun res!734105 () Bool)

(assert (=> b!1099956 (=> (not res!734105) (not e!627858))))

(assert (=> b!1099956 (= res!734105 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!492684 mask!1414))))

(assert (=> b!1099956 (= lt!492684 (array!71235 (store (arr!34279 _keys!1070) i!650 #b1000000000000000000000000000000000000000000000000000000000000000) (size!34816 _keys!1070)))))

(declare-fun mapIsEmpty!42553 () Bool)

(assert (=> mapIsEmpty!42553 mapRes!42553))

(declare-fun b!1099958 () Bool)

(declare-fun res!734111 () Bool)

(assert (=> b!1099958 (=> (not res!734111) (not e!627861))))

(assert (=> b!1099958 (= res!734111 (and (bvsge i!650 #b00000000000000000000000000000000) (bvslt i!650 (size!34816 _keys!1070))))))

(declare-fun b!1099959 () Bool)

(assert (=> b!1099959 (= e!627860 (= lt!492681 (+!3346 lt!492690 lt!492685)))))

(declare-fun b!1099960 () Bool)

(declare-fun res!734102 () Bool)

(assert (=> b!1099960 (=> (not res!734102) (not e!627861))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1099960 (= res!734102 (validKeyInArray!0 k0!904))))

(declare-fun b!1099961 () Bool)

(declare-fun res!734109 () Bool)

(assert (=> b!1099961 (=> (not res!734109) (not e!627858))))

(declare-datatypes ((List!24086 0))(
  ( (Nil!24083) (Cons!24082 (h!25291 (_ BitVec 64)) (t!34272 List!24086)) )
))
(declare-fun arrayNoDuplicates!0 (array!71234 (_ BitVec 32) List!24086) Bool)

(assert (=> b!1099961 (= res!734109 (arrayNoDuplicates!0 lt!492684 #b00000000000000000000000000000000 Nil!24083))))

(declare-fun b!1099962 () Bool)

(assert (=> b!1099962 (= e!627854 tp_is_empty!27183)))

(declare-fun b!1099963 () Bool)

(assert (=> b!1099963 (= e!627855 (not (= #b0000000000000000000000000000000000000000000000000000000000000000 k0!904)))))

(assert (=> b!1099963 e!627860))

(declare-fun res!734101 () Bool)

(assert (=> b!1099963 (=> (not res!734101) (not e!627860))))

(assert (=> b!1099963 (= res!734101 (= lt!492681 (+!3346 lt!492682 lt!492685)))))

(assert (=> b!1099963 (= lt!492685 (tuple2!17411 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!831))))

(declare-fun b!1099964 () Bool)

(declare-fun e!627859 () Bool)

(assert (=> b!1099964 (= e!627859 (and e!627856 mapRes!42553))))

(declare-fun condMapEmpty!42553 () Bool)

(declare-fun mapDefault!42553 () ValueCell!12882)

(assert (=> b!1099964 (= condMapEmpty!42553 (= (arr!34280 _values!874) ((as const (Array (_ BitVec 32) ValueCell!12882)) mapDefault!42553)))))

(declare-fun b!1099965 () Bool)

(declare-fun res!734103 () Bool)

(assert (=> b!1099965 (=> (not res!734103) (not e!627861))))

(assert (=> b!1099965 (= res!734103 (arrayNoDuplicates!0 _keys!1070 #b00000000000000000000000000000000 Nil!24083))))

(declare-fun res!734110 () Bool)

(assert (=> start!96748 (=> (not res!734110) (not e!627861))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!96748 (= res!734110 (validMask!0 mask!1414))))

(assert (=> start!96748 e!627861))

(assert (=> start!96748 tp!81344))

(assert (=> start!96748 true))

(assert (=> start!96748 tp_is_empty!27183))

(declare-fun array_inv!26264 (array!71234) Bool)

(assert (=> start!96748 (array_inv!26264 _keys!1070)))

(declare-fun array_inv!26265 (array!71236) Bool)

(assert (=> start!96748 (and (array_inv!26265 _values!874) e!627859)))

(declare-fun b!1099957 () Bool)

(declare-fun res!734104 () Bool)

(assert (=> b!1099957 (=> (not res!734104) (not e!627861))))

(assert (=> b!1099957 (= res!734104 (= (select (arr!34279 _keys!1070) i!650) k0!904))))

(assert (= (and start!96748 res!734110) b!1099953))

(assert (= (and b!1099953 res!734107) b!1099952))

(assert (= (and b!1099952 res!734106) b!1099965))

(assert (= (and b!1099965 res!734103) b!1099958))

(assert (= (and b!1099958 res!734111) b!1099960))

(assert (= (and b!1099960 res!734102) b!1099957))

(assert (= (and b!1099957 res!734104) b!1099956))

(assert (= (and b!1099956 res!734105) b!1099961))

(assert (= (and b!1099961 res!734109) b!1099954))

(assert (= (and b!1099954 (not res!734112)) b!1099963))

(assert (= (and b!1099963 res!734101) b!1099955))

(assert (= (and b!1099955 res!734108) b!1099959))

(assert (= (and b!1099964 condMapEmpty!42553) mapIsEmpty!42553))

(assert (= (and b!1099964 (not condMapEmpty!42553)) mapNonEmpty!42553))

(get-info :version)

(assert (= (and mapNonEmpty!42553 ((_ is ValueCellFull!12882) mapValue!42553)) b!1099962))

(assert (= (and b!1099964 ((_ is ValueCellFull!12882) mapDefault!42553)) b!1099951))

(assert (= start!96748 b!1099964))

(declare-fun b_lambda!18001 () Bool)

(assert (=> (not b_lambda!18001) (not b!1099954)))

(declare-fun t!34270 () Bool)

(declare-fun tb!8007 () Bool)

(assert (=> (and start!96748 (= defaultEntry!882 defaultEntry!882) t!34270) tb!8007))

(declare-fun result!16541 () Bool)

(assert (=> tb!8007 (= result!16541 tp_is_empty!27183)))

(assert (=> b!1099954 t!34270))

(declare-fun b_and!37033 () Bool)

(assert (= b_and!37031 (and (=> t!34270 result!16541) b_and!37033)))

(declare-fun m!1020103 () Bool)

(assert (=> b!1099963 m!1020103))

(declare-fun m!1020105 () Bool)

(assert (=> b!1099961 m!1020105))

(declare-fun m!1020107 () Bool)

(assert (=> b!1099965 m!1020107))

(declare-fun m!1020109 () Bool)

(assert (=> b!1099954 m!1020109))

(declare-fun m!1020111 () Bool)

(assert (=> b!1099954 m!1020111))

(declare-fun m!1020113 () Bool)

(assert (=> b!1099954 m!1020113))

(declare-fun m!1020115 () Bool)

(assert (=> b!1099954 m!1020115))

(declare-fun m!1020117 () Bool)

(assert (=> b!1099954 m!1020117))

(declare-fun m!1020119 () Bool)

(assert (=> b!1099954 m!1020119))

(declare-fun m!1020121 () Bool)

(assert (=> b!1099954 m!1020121))

(declare-fun m!1020123 () Bool)

(assert (=> b!1099954 m!1020123))

(declare-fun m!1020125 () Bool)

(assert (=> b!1099954 m!1020125))

(declare-fun m!1020127 () Bool)

(assert (=> b!1099954 m!1020127))

(declare-fun m!1020129 () Bool)

(assert (=> b!1099959 m!1020129))

(declare-fun m!1020131 () Bool)

(assert (=> b!1099957 m!1020131))

(declare-fun m!1020133 () Bool)

(assert (=> mapNonEmpty!42553 m!1020133))

(declare-fun m!1020135 () Bool)

(assert (=> start!96748 m!1020135))

(declare-fun m!1020137 () Bool)

(assert (=> start!96748 m!1020137))

(declare-fun m!1020139 () Bool)

(assert (=> start!96748 m!1020139))

(declare-fun m!1020141 () Bool)

(assert (=> b!1099955 m!1020141))

(declare-fun m!1020143 () Bool)

(assert (=> b!1099956 m!1020143))

(declare-fun m!1020145 () Bool)

(assert (=> b!1099956 m!1020145))

(declare-fun m!1020147 () Bool)

(assert (=> b!1099952 m!1020147))

(declare-fun m!1020149 () Bool)

(assert (=> b!1099960 m!1020149))

(check-sat (not b!1099956) tp_is_empty!27183 b_and!37033 (not b_next!23133) (not b!1099963) (not b!1099965) (not b!1099952) (not start!96748) (not b_lambda!18001) (not b!1099955) (not b!1099960) (not mapNonEmpty!42553) (not b!1099954) (not b!1099959) (not b!1099961))
(check-sat b_and!37033 (not b_next!23133))
(get-model)

(declare-fun b_lambda!18005 () Bool)

(assert (= b_lambda!18001 (or (and start!96748 b_free!23133) b_lambda!18005)))

(check-sat (not b_lambda!18005) (not b!1099956) tp_is_empty!27183 b_and!37033 (not start!96748) (not b_next!23133) (not b!1099963) (not b!1099965) (not b!1099952) (not b!1099955) (not b!1099960) (not mapNonEmpty!42553) (not b!1099954) (not b!1099959) (not b!1099961))
(check-sat b_and!37033 (not b_next!23133))
(get-model)

(declare-fun d!130505 () Bool)

(assert (=> d!130505 (= (validMask!0 mask!1414) (and (or (= mask!1414 #b00000000000000000000000000000111) (= mask!1414 #b00000000000000000000000000001111) (= mask!1414 #b00000000000000000000000000011111) (= mask!1414 #b00000000000000000000000000111111) (= mask!1414 #b00000000000000000000000001111111) (= mask!1414 #b00000000000000000000000011111111) (= mask!1414 #b00000000000000000000000111111111) (= mask!1414 #b00000000000000000000001111111111) (= mask!1414 #b00000000000000000000011111111111) (= mask!1414 #b00000000000000000000111111111111) (= mask!1414 #b00000000000000000001111111111111) (= mask!1414 #b00000000000000000011111111111111) (= mask!1414 #b00000000000000000111111111111111) (= mask!1414 #b00000000000000001111111111111111) (= mask!1414 #b00000000000000011111111111111111) (= mask!1414 #b00000000000000111111111111111111) (= mask!1414 #b00000000000001111111111111111111) (= mask!1414 #b00000000000011111111111111111111) (= mask!1414 #b00000000000111111111111111111111) (= mask!1414 #b00000000001111111111111111111111) (= mask!1414 #b00000000011111111111111111111111) (= mask!1414 #b00000000111111111111111111111111) (= mask!1414 #b00000001111111111111111111111111) (= mask!1414 #b00000011111111111111111111111111) (= mask!1414 #b00000111111111111111111111111111) (= mask!1414 #b00001111111111111111111111111111) (= mask!1414 #b00011111111111111111111111111111) (= mask!1414 #b00111111111111111111111111111111)) (bvsle mask!1414 #b00111111111111111111111111111111)))))

(assert (=> start!96748 d!130505))

(declare-fun d!130507 () Bool)

(assert (=> d!130507 (= (array_inv!26264 _keys!1070) (bvsge (size!34816 _keys!1070) #b00000000000000000000000000000000))))

(assert (=> start!96748 d!130507))

(declare-fun d!130509 () Bool)

(assert (=> d!130509 (= (array_inv!26265 _values!874) (bvsge (size!34817 _values!874) #b00000000000000000000000000000000))))

(assert (=> start!96748 d!130509))

(declare-fun d!130511 () Bool)

(declare-fun e!627888 () Bool)

(assert (=> d!130511 e!627888))

(declare-fun res!734154 () Bool)

(assert (=> d!130511 (=> (not res!734154) (not e!627888))))

(declare-fun lt!492729 () ListLongMap!15391)

(declare-fun contains!6408 (ListLongMap!15391 (_ BitVec 64)) Bool)

(assert (=> d!130511 (= res!734154 (contains!6408 lt!492729 (_1!8715 lt!492685)))))

(declare-fun lt!492732 () List!24085)

(assert (=> d!130511 (= lt!492729 (ListLongMap!15392 lt!492732))))

(declare-fun lt!492730 () Unit!36097)

(declare-fun lt!492731 () Unit!36097)

(assert (=> d!130511 (= lt!492730 lt!492731)))

(declare-datatypes ((Option!678 0))(
  ( (Some!677 (v!16278 V!41371)) (None!676) )
))
(declare-fun getValueByKey!627 (List!24085 (_ BitVec 64)) Option!678)

(assert (=> d!130511 (= (getValueByKey!627 lt!492732 (_1!8715 lt!492685)) (Some!677 (_2!8715 lt!492685)))))

(declare-fun lemmaContainsTupThenGetReturnValue!302 (List!24085 (_ BitVec 64) V!41371) Unit!36097)

(assert (=> d!130511 (= lt!492731 (lemmaContainsTupThenGetReturnValue!302 lt!492732 (_1!8715 lt!492685) (_2!8715 lt!492685)))))

(declare-fun insertStrictlySorted!394 (List!24085 (_ BitVec 64) V!41371) List!24085)

(assert (=> d!130511 (= lt!492732 (insertStrictlySorted!394 (toList!7711 lt!492682) (_1!8715 lt!492685) (_2!8715 lt!492685)))))

(assert (=> d!130511 (= (+!3346 lt!492682 lt!492685) lt!492729)))

(declare-fun b!1100019 () Bool)

(declare-fun res!734153 () Bool)

(assert (=> b!1100019 (=> (not res!734153) (not e!627888))))

(assert (=> b!1100019 (= res!734153 (= (getValueByKey!627 (toList!7711 lt!492729) (_1!8715 lt!492685)) (Some!677 (_2!8715 lt!492685))))))

(declare-fun b!1100020 () Bool)

(declare-fun contains!6409 (List!24085 tuple2!17410) Bool)

(assert (=> b!1100020 (= e!627888 (contains!6409 (toList!7711 lt!492729) lt!492685))))

(assert (= (and d!130511 res!734154) b!1100019))

(assert (= (and b!1100019 res!734153) b!1100020))

(declare-fun m!1020199 () Bool)

(assert (=> d!130511 m!1020199))

(declare-fun m!1020201 () Bool)

(assert (=> d!130511 m!1020201))

(declare-fun m!1020203 () Bool)

(assert (=> d!130511 m!1020203))

(declare-fun m!1020205 () Bool)

(assert (=> d!130511 m!1020205))

(declare-fun m!1020207 () Bool)

(assert (=> b!1100019 m!1020207))

(declare-fun m!1020209 () Bool)

(assert (=> b!1100020 m!1020209))

(assert (=> b!1099963 d!130511))

(declare-fun b!1100063 () Bool)

(declare-fun e!627919 () Bool)

(declare-fun call!46061 () Bool)

(assert (=> b!1100063 (= e!627919 (not call!46061))))

(declare-fun b!1100065 () Bool)

(declare-fun e!627920 () ListLongMap!15391)

(declare-fun call!46062 () ListLongMap!15391)

(assert (=> b!1100065 (= e!627920 call!46062)))

(declare-fun bm!46053 () Bool)

(declare-fun call!46057 () Bool)

(declare-fun lt!492785 () ListLongMap!15391)

(assert (=> bm!46053 (= call!46057 (contains!6408 lt!492785 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1100066 () Bool)

(declare-fun e!627925 () Unit!36097)

(declare-fun lt!492789 () Unit!36097)

(assert (=> b!1100066 (= e!627925 lt!492789)))

(declare-fun lt!492798 () ListLongMap!15391)

(assert (=> b!1100066 (= lt!492798 (getCurrentListMapNoExtraKeys!4189 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun lt!492791 () (_ BitVec 64))

(assert (=> b!1100066 (= lt!492791 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!492786 () (_ BitVec 64))

(assert (=> b!1100066 (= lt!492786 (select (arr!34279 _keys!1070) #b00000000000000000000000000000000))))

(declare-fun lt!492794 () Unit!36097)

(declare-fun addStillContains!666 (ListLongMap!15391 (_ BitVec 64) V!41371 (_ BitVec 64)) Unit!36097)

(assert (=> b!1100066 (= lt!492794 (addStillContains!666 lt!492798 lt!492791 zeroValue!831 lt!492786))))

(assert (=> b!1100066 (contains!6408 (+!3346 lt!492798 (tuple2!17411 lt!492791 zeroValue!831)) lt!492786)))

(declare-fun lt!492792 () Unit!36097)

(assert (=> b!1100066 (= lt!492792 lt!492794)))

(declare-fun lt!492788 () ListLongMap!15391)

(assert (=> b!1100066 (= lt!492788 (getCurrentListMapNoExtraKeys!4189 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun lt!492796 () (_ BitVec 64))

(assert (=> b!1100066 (= lt!492796 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!492780 () (_ BitVec 64))

(assert (=> b!1100066 (= lt!492780 (select (arr!34279 _keys!1070) #b00000000000000000000000000000000))))

(declare-fun lt!492782 () Unit!36097)

(declare-fun addApplyDifferent!518 (ListLongMap!15391 (_ BitVec 64) V!41371 (_ BitVec 64)) Unit!36097)

(assert (=> b!1100066 (= lt!492782 (addApplyDifferent!518 lt!492788 lt!492796 minValue!831 lt!492780))))

(declare-fun apply!984 (ListLongMap!15391 (_ BitVec 64)) V!41371)

(assert (=> b!1100066 (= (apply!984 (+!3346 lt!492788 (tuple2!17411 lt!492796 minValue!831)) lt!492780) (apply!984 lt!492788 lt!492780))))

(declare-fun lt!492790 () Unit!36097)

(assert (=> b!1100066 (= lt!492790 lt!492782)))

(declare-fun lt!492778 () ListLongMap!15391)

(assert (=> b!1100066 (= lt!492778 (getCurrentListMapNoExtraKeys!4189 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun lt!492784 () (_ BitVec 64))

(assert (=> b!1100066 (= lt!492784 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!492779 () (_ BitVec 64))

(assert (=> b!1100066 (= lt!492779 (select (arr!34279 _keys!1070) #b00000000000000000000000000000000))))

(declare-fun lt!492781 () Unit!36097)

(assert (=> b!1100066 (= lt!492781 (addApplyDifferent!518 lt!492778 lt!492784 zeroValue!831 lt!492779))))

(assert (=> b!1100066 (= (apply!984 (+!3346 lt!492778 (tuple2!17411 lt!492784 zeroValue!831)) lt!492779) (apply!984 lt!492778 lt!492779))))

(declare-fun lt!492795 () Unit!36097)

(assert (=> b!1100066 (= lt!492795 lt!492781)))

(declare-fun lt!492777 () ListLongMap!15391)

(assert (=> b!1100066 (= lt!492777 (getCurrentListMapNoExtraKeys!4189 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun lt!492793 () (_ BitVec 64))

(assert (=> b!1100066 (= lt!492793 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!492797 () (_ BitVec 64))

(assert (=> b!1100066 (= lt!492797 (select (arr!34279 _keys!1070) #b00000000000000000000000000000000))))

(assert (=> b!1100066 (= lt!492789 (addApplyDifferent!518 lt!492777 lt!492793 minValue!831 lt!492797))))

(assert (=> b!1100066 (= (apply!984 (+!3346 lt!492777 (tuple2!17411 lt!492793 minValue!831)) lt!492797) (apply!984 lt!492777 lt!492797))))

(declare-fun b!1100067 () Bool)

(declare-fun e!627927 () Bool)

(assert (=> b!1100067 (= e!627927 (not call!46057))))

(declare-fun b!1100068 () Bool)

(declare-fun res!734173 () Bool)

(declare-fun e!627923 () Bool)

(assert (=> b!1100068 (=> (not res!734173) (not e!627923))))

(declare-fun e!627917 () Bool)

(assert (=> b!1100068 (= res!734173 e!627917)))

(declare-fun res!734177 () Bool)

(assert (=> b!1100068 (=> res!734177 e!627917)))

(declare-fun e!627926 () Bool)

(assert (=> b!1100068 (= res!734177 (not e!627926))))

(declare-fun res!734174 () Bool)

(assert (=> b!1100068 (=> (not res!734174) (not e!627926))))

(assert (=> b!1100068 (= res!734174 (bvslt #b00000000000000000000000000000000 (size!34816 _keys!1070)))))

(declare-fun bm!46054 () Bool)

(declare-fun call!46059 () ListLongMap!15391)

(declare-fun call!46060 () ListLongMap!15391)

(assert (=> bm!46054 (= call!46059 call!46060)))

(declare-fun call!46056 () ListLongMap!15391)

(declare-fun bm!46055 () Bool)

(assert (=> bm!46055 (= call!46056 (getCurrentListMapNoExtraKeys!4189 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun b!1100069 () Bool)

(declare-fun c!108627 () Bool)

(assert (=> b!1100069 (= c!108627 (and (not (= (bvand extraKeys!811 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeys!811 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun e!627921 () ListLongMap!15391)

(assert (=> b!1100069 (= e!627921 e!627920)))

(declare-fun b!1100070 () Bool)

(declare-fun Unit!36099 () Unit!36097)

(assert (=> b!1100070 (= e!627925 Unit!36099)))

(declare-fun b!1100071 () Bool)

(declare-fun e!627918 () ListLongMap!15391)

(assert (=> b!1100071 (= e!627918 e!627921)))

(declare-fun c!108626 () Bool)

(assert (=> b!1100071 (= c!108626 (and (not (= (bvand extraKeys!811 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeys!811 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1100072 () Bool)

(assert (=> b!1100072 (= e!627921 call!46059)))

(declare-fun b!1100073 () Bool)

(assert (=> b!1100073 (= e!627920 call!46059)))

(declare-fun d!130513 () Bool)

(assert (=> d!130513 e!627923))

(declare-fun res!734180 () Bool)

(assert (=> d!130513 (=> (not res!734180) (not e!627923))))

(assert (=> d!130513 (= res!734180 (or (bvsge #b00000000000000000000000000000000 (size!34816 _keys!1070)) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!34816 _keys!1070)))))))

(declare-fun lt!492787 () ListLongMap!15391)

(assert (=> d!130513 (= lt!492785 lt!492787)))

(declare-fun lt!492783 () Unit!36097)

(assert (=> d!130513 (= lt!492783 e!627925)))

(declare-fun c!108630 () Bool)

(declare-fun e!627922 () Bool)

(assert (=> d!130513 (= c!108630 e!627922)))

(declare-fun res!734178 () Bool)

(assert (=> d!130513 (=> (not res!734178) (not e!627922))))

(assert (=> d!130513 (= res!734178 (bvslt #b00000000000000000000000000000000 (size!34816 _keys!1070)))))

(assert (=> d!130513 (= lt!492787 e!627918)))

(declare-fun c!108629 () Bool)

(assert (=> d!130513 (= c!108629 (and (not (= (bvand extraKeys!811 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!811 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!130513 (validMask!0 mask!1414)))

(assert (=> d!130513 (= (getCurrentListMap!4402 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882) lt!492785)))

(declare-fun b!1100064 () Bool)

(declare-fun res!734176 () Bool)

(assert (=> b!1100064 (=> (not res!734176) (not e!627923))))

(assert (=> b!1100064 (= res!734176 e!627919)))

(declare-fun c!108628 () Bool)

(assert (=> b!1100064 (= c!108628 (not (= (bvand extraKeys!811 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!1100074 () Bool)

(assert (=> b!1100074 (= e!627922 (validKeyInArray!0 (select (arr!34279 _keys!1070) #b00000000000000000000000000000000)))))

(declare-fun b!1100075 () Bool)

(declare-fun e!627915 () Bool)

(assert (=> b!1100075 (= e!627927 e!627915)))

(declare-fun res!734181 () Bool)

(assert (=> b!1100075 (= res!734181 call!46057)))

(assert (=> b!1100075 (=> (not res!734181) (not e!627915))))

(declare-fun b!1100076 () Bool)

(declare-fun e!627924 () Bool)

(declare-fun get!17650 (ValueCell!12882 V!41371) V!41371)

(assert (=> b!1100076 (= e!627924 (= (apply!984 lt!492785 (select (arr!34279 _keys!1070) #b00000000000000000000000000000000)) (get!17650 (select (arr!34280 _values!874) #b00000000000000000000000000000000) (dynLambda!2320 defaultEntry!882 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1100076 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!34817 _values!874)))))

(assert (=> b!1100076 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!34816 _keys!1070)))))

(declare-fun b!1100077 () Bool)

(declare-fun e!627916 () Bool)

(assert (=> b!1100077 (= e!627919 e!627916)))

(declare-fun res!734179 () Bool)

(assert (=> b!1100077 (= res!734179 call!46061)))

(assert (=> b!1100077 (=> (not res!734179) (not e!627916))))

(declare-fun b!1100078 () Bool)

(assert (=> b!1100078 (= e!627915 (= (apply!984 lt!492785 #b1000000000000000000000000000000000000000000000000000000000000000) minValue!831))))

(declare-fun b!1100079 () Bool)

(assert (=> b!1100079 (= e!627918 (+!3346 call!46060 (tuple2!17411 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!831)))))

(declare-fun b!1100080 () Bool)

(assert (=> b!1100080 (= e!627926 (validKeyInArray!0 (select (arr!34279 _keys!1070) #b00000000000000000000000000000000)))))

(declare-fun b!1100081 () Bool)

(assert (=> b!1100081 (= e!627917 e!627924)))

(declare-fun res!734175 () Bool)

(assert (=> b!1100081 (=> (not res!734175) (not e!627924))))

(assert (=> b!1100081 (= res!734175 (contains!6408 lt!492785 (select (arr!34279 _keys!1070) #b00000000000000000000000000000000)))))

(assert (=> b!1100081 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!34816 _keys!1070)))))

(declare-fun bm!46056 () Bool)

(assert (=> bm!46056 (= call!46061 (contains!6408 lt!492785 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1100082 () Bool)

(assert (=> b!1100082 (= e!627916 (= (apply!984 lt!492785 #b0000000000000000000000000000000000000000000000000000000000000000) zeroValue!831))))

(declare-fun bm!46057 () Bool)

(declare-fun call!46058 () ListLongMap!15391)

(assert (=> bm!46057 (= call!46058 call!46056)))

(declare-fun b!1100083 () Bool)

(assert (=> b!1100083 (= e!627923 e!627927)))

(declare-fun c!108625 () Bool)

(assert (=> b!1100083 (= c!108625 (not (= (bvand extraKeys!811 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun bm!46058 () Bool)

(assert (=> bm!46058 (= call!46062 call!46058)))

(declare-fun bm!46059 () Bool)

(assert (=> bm!46059 (= call!46060 (+!3346 (ite c!108629 call!46056 (ite c!108626 call!46058 call!46062)) (ite (or c!108629 c!108626) (tuple2!17411 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!831) (tuple2!17411 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!831))))))

(assert (= (and d!130513 c!108629) b!1100079))

(assert (= (and d!130513 (not c!108629)) b!1100071))

(assert (= (and b!1100071 c!108626) b!1100072))

(assert (= (and b!1100071 (not c!108626)) b!1100069))

(assert (= (and b!1100069 c!108627) b!1100073))

(assert (= (and b!1100069 (not c!108627)) b!1100065))

(assert (= (or b!1100073 b!1100065) bm!46058))

(assert (= (or b!1100072 bm!46058) bm!46057))

(assert (= (or b!1100072 b!1100073) bm!46054))

(assert (= (or b!1100079 bm!46057) bm!46055))

(assert (= (or b!1100079 bm!46054) bm!46059))

(assert (= (and d!130513 res!734178) b!1100074))

(assert (= (and d!130513 c!108630) b!1100066))

(assert (= (and d!130513 (not c!108630)) b!1100070))

(assert (= (and d!130513 res!734180) b!1100068))

(assert (= (and b!1100068 res!734174) b!1100080))

(assert (= (and b!1100068 (not res!734177)) b!1100081))

(assert (= (and b!1100081 res!734175) b!1100076))

(assert (= (and b!1100068 res!734173) b!1100064))

(assert (= (and b!1100064 c!108628) b!1100077))

(assert (= (and b!1100064 (not c!108628)) b!1100063))

(assert (= (and b!1100077 res!734179) b!1100082))

(assert (= (or b!1100077 b!1100063) bm!46056))

(assert (= (and b!1100064 res!734176) b!1100083))

(assert (= (and b!1100083 c!108625) b!1100075))

(assert (= (and b!1100083 (not c!108625)) b!1100067))

(assert (= (and b!1100075 res!734181) b!1100078))

(assert (= (or b!1100075 b!1100067) bm!46053))

(declare-fun b_lambda!18007 () Bool)

(assert (=> (not b_lambda!18007) (not b!1100076)))

(assert (=> b!1100076 t!34270))

(declare-fun b_and!37039 () Bool)

(assert (= b_and!37033 (and (=> t!34270 result!16541) b_and!37039)))

(assert (=> b!1100066 m!1020117))

(declare-fun m!1020211 () Bool)

(assert (=> b!1100066 m!1020211))

(declare-fun m!1020213 () Bool)

(assert (=> b!1100066 m!1020213))

(declare-fun m!1020215 () Bool)

(assert (=> b!1100066 m!1020215))

(declare-fun m!1020217 () Bool)

(assert (=> b!1100066 m!1020217))

(declare-fun m!1020219 () Bool)

(assert (=> b!1100066 m!1020219))

(declare-fun m!1020221 () Bool)

(assert (=> b!1100066 m!1020221))

(declare-fun m!1020223 () Bool)

(assert (=> b!1100066 m!1020223))

(declare-fun m!1020225 () Bool)

(assert (=> b!1100066 m!1020225))

(declare-fun m!1020227 () Bool)

(assert (=> b!1100066 m!1020227))

(declare-fun m!1020229 () Bool)

(assert (=> b!1100066 m!1020229))

(declare-fun m!1020231 () Bool)

(assert (=> b!1100066 m!1020231))

(assert (=> b!1100066 m!1020229))

(declare-fun m!1020233 () Bool)

(assert (=> b!1100066 m!1020233))

(declare-fun m!1020235 () Bool)

(assert (=> b!1100066 m!1020235))

(declare-fun m!1020237 () Bool)

(assert (=> b!1100066 m!1020237))

(assert (=> b!1100066 m!1020215))

(declare-fun m!1020239 () Bool)

(assert (=> b!1100066 m!1020239))

(assert (=> b!1100066 m!1020217))

(assert (=> b!1100066 m!1020235))

(declare-fun m!1020241 () Bool)

(assert (=> b!1100066 m!1020241))

(assert (=> d!130513 m!1020135))

(declare-fun m!1020243 () Bool)

(assert (=> bm!46053 m!1020243))

(assert (=> b!1100081 m!1020227))

(assert (=> b!1100081 m!1020227))

(declare-fun m!1020245 () Bool)

(assert (=> b!1100081 m!1020245))

(assert (=> b!1100074 m!1020227))

(assert (=> b!1100074 m!1020227))

(declare-fun m!1020247 () Bool)

(assert (=> b!1100074 m!1020247))

(assert (=> b!1100076 m!1020109))

(declare-fun m!1020249 () Bool)

(assert (=> b!1100076 m!1020249))

(assert (=> b!1100076 m!1020109))

(declare-fun m!1020251 () Bool)

(assert (=> b!1100076 m!1020251))

(assert (=> b!1100076 m!1020227))

(assert (=> b!1100076 m!1020227))

(declare-fun m!1020253 () Bool)

(assert (=> b!1100076 m!1020253))

(assert (=> b!1100076 m!1020249))

(declare-fun m!1020255 () Bool)

(assert (=> b!1100079 m!1020255))

(declare-fun m!1020257 () Bool)

(assert (=> b!1100078 m!1020257))

(declare-fun m!1020259 () Bool)

(assert (=> bm!46059 m!1020259))

(assert (=> b!1100080 m!1020227))

(assert (=> b!1100080 m!1020227))

(assert (=> b!1100080 m!1020247))

(assert (=> bm!46055 m!1020117))

(declare-fun m!1020261 () Bool)

(assert (=> b!1100082 m!1020261))

(declare-fun m!1020263 () Bool)

(assert (=> bm!46056 m!1020263))

(assert (=> b!1099954 d!130513))

(declare-fun b!1100090 () Bool)

(declare-fun e!627932 () Bool)

(declare-fun call!46067 () ListLongMap!15391)

(declare-fun call!46068 () ListLongMap!15391)

(assert (=> b!1100090 (= e!627932 (= call!46067 call!46068))))

(assert (=> b!1100090 (and (bvsge i!650 #b00000000000000000000000000000000) (bvslt i!650 (size!34817 _values!874)))))

(declare-fun bm!46064 () Bool)

(assert (=> bm!46064 (= call!46067 (getCurrentListMapNoExtraKeys!4189 (array!71235 (store (arr!34279 _keys!1070) i!650 #b1000000000000000000000000000000000000000000000000000000000000000) (size!34816 _keys!1070)) (array!71237 (store (arr!34280 _values!874) i!650 (ValueCellFull!12882 (dynLambda!2320 defaultEntry!882 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!34817 _values!874)) mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun b!1100091 () Bool)

(declare-fun e!627933 () Bool)

(assert (=> b!1100091 (= e!627933 e!627932)))

(declare-fun c!108633 () Bool)

(assert (=> b!1100091 (= c!108633 (bvsle #b00000000000000000000000000000000 i!650))))

(declare-fun d!130515 () Bool)

(assert (=> d!130515 e!627933))

(declare-fun res!734184 () Bool)

(assert (=> d!130515 (=> (not res!734184) (not e!627933))))

(assert (=> d!130515 (= res!734184 (and (or (not (bvsle #b00000000000000000000000000000000 i!650)) (and (bvsge i!650 #b00000000000000000000000000000000) (bvslt i!650 (size!34816 _keys!1070)))) (or (bvsle #b00000000000000000000000000000000 i!650) (and (bvsge i!650 #b00000000000000000000000000000000) (bvslt i!650 (size!34816 _keys!1070))))))))

(declare-fun lt!492801 () Unit!36097)

(declare-fun choose!1775 (array!71234 array!71236 (_ BitVec 32) (_ BitVec 32) V!41371 V!41371 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!36097)

(assert (=> d!130515 (= lt!492801 (choose!1775 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 i!650 k0!904 #b00000000000000000000000000000000 defaultEntry!882))))

(assert (=> d!130515 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvsle #b00000000000000000000000000000000 (size!34816 _keys!1070)))))

(assert (=> d!130515 (= (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!214 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 i!650 k0!904 #b00000000000000000000000000000000 defaultEntry!882) lt!492801)))

(declare-fun bm!46065 () Bool)

(assert (=> bm!46065 (= call!46068 (getCurrentListMapNoExtraKeys!4189 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun b!1100092 () Bool)

(assert (=> b!1100092 (= e!627932 (= call!46067 (-!953 call!46068 k0!904)))))

(assert (=> b!1100092 (and (bvsge i!650 #b00000000000000000000000000000000) (bvslt i!650 (size!34817 _values!874)))))

(assert (= (and d!130515 res!734184) b!1100091))

(assert (= (and b!1100091 c!108633) b!1100092))

(assert (= (and b!1100091 (not c!108633)) b!1100090))

(assert (= (or b!1100092 b!1100090) bm!46065))

(assert (= (or b!1100092 b!1100090) bm!46064))

(declare-fun b_lambda!18009 () Bool)

(assert (=> (not b_lambda!18009) (not bm!46064)))

(assert (=> bm!46064 t!34270))

(declare-fun b_and!37041 () Bool)

(assert (= b_and!37039 (and (=> t!34270 result!16541) b_and!37041)))

(assert (=> bm!46064 m!1020145))

(assert (=> bm!46064 m!1020109))

(assert (=> bm!46064 m!1020113))

(declare-fun m!1020265 () Bool)

(assert (=> bm!46064 m!1020265))

(declare-fun m!1020267 () Bool)

(assert (=> d!130515 m!1020267))

(assert (=> bm!46065 m!1020117))

(declare-fun m!1020269 () Bool)

(assert (=> b!1100092 m!1020269))

(assert (=> b!1099954 d!130515))

(declare-fun b!1100117 () Bool)

(assert (=> b!1100117 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!34816 lt!492684)))))

(assert (=> b!1100117 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!34817 lt!492687)))))

(declare-fun e!627951 () Bool)

(declare-fun lt!492821 () ListLongMap!15391)

(assert (=> b!1100117 (= e!627951 (= (apply!984 lt!492821 (select (arr!34279 lt!492684) #b00000000000000000000000000000000)) (get!17650 (select (arr!34280 lt!492687) #b00000000000000000000000000000000) (dynLambda!2320 defaultEntry!882 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1100118 () Bool)

(declare-fun e!627948 () Bool)

(declare-fun isEmpty!970 (ListLongMap!15391) Bool)

(assert (=> b!1100118 (= e!627948 (isEmpty!970 lt!492821))))

(declare-fun b!1100119 () Bool)

(declare-fun e!627954 () Bool)

(assert (=> b!1100119 (= e!627954 (validKeyInArray!0 (select (arr!34279 lt!492684) #b00000000000000000000000000000000)))))

(assert (=> b!1100119 (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000)))

(declare-fun b!1100120 () Bool)

(declare-fun e!627953 () ListLongMap!15391)

(assert (=> b!1100120 (= e!627953 (ListLongMap!15392 Nil!24082))))

(declare-fun d!130517 () Bool)

(declare-fun e!627950 () Bool)

(assert (=> d!130517 e!627950))

(declare-fun res!734195 () Bool)

(assert (=> d!130517 (=> (not res!734195) (not e!627950))))

(assert (=> d!130517 (= res!734195 (not (contains!6408 lt!492821 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!130517 (= lt!492821 e!627953)))

(declare-fun c!108645 () Bool)

(assert (=> d!130517 (= c!108645 (bvsge #b00000000000000000000000000000000 (size!34816 lt!492684)))))

(assert (=> d!130517 (validMask!0 mask!1414)))

(assert (=> d!130517 (= (getCurrentListMapNoExtraKeys!4189 lt!492684 lt!492687 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882) lt!492821)))

(declare-fun b!1100121 () Bool)

(declare-fun lt!492817 () Unit!36097)

(declare-fun lt!492820 () Unit!36097)

(assert (=> b!1100121 (= lt!492817 lt!492820)))

(declare-fun lt!492822 () V!41371)

(declare-fun lt!492818 () (_ BitVec 64))

(declare-fun lt!492816 () ListLongMap!15391)

(declare-fun lt!492819 () (_ BitVec 64))

(assert (=> b!1100121 (not (contains!6408 (+!3346 lt!492816 (tuple2!17411 lt!492818 lt!492822)) lt!492819))))

(declare-fun addStillNotContains!279 (ListLongMap!15391 (_ BitVec 64) V!41371 (_ BitVec 64)) Unit!36097)

(assert (=> b!1100121 (= lt!492820 (addStillNotContains!279 lt!492816 lt!492818 lt!492822 lt!492819))))

(assert (=> b!1100121 (= lt!492819 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!1100121 (= lt!492822 (get!17650 (select (arr!34280 lt!492687) #b00000000000000000000000000000000) (dynLambda!2320 defaultEntry!882 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!1100121 (= lt!492818 (select (arr!34279 lt!492684) #b00000000000000000000000000000000))))

(declare-fun call!46071 () ListLongMap!15391)

(assert (=> b!1100121 (= lt!492816 call!46071)))

(declare-fun e!627952 () ListLongMap!15391)

(assert (=> b!1100121 (= e!627952 (+!3346 call!46071 (tuple2!17411 (select (arr!34279 lt!492684) #b00000000000000000000000000000000) (get!17650 (select (arr!34280 lt!492687) #b00000000000000000000000000000000) (dynLambda!2320 defaultEntry!882 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!1100122 () Bool)

(declare-fun res!734196 () Bool)

(assert (=> b!1100122 (=> (not res!734196) (not e!627950))))

(assert (=> b!1100122 (= res!734196 (not (contains!6408 lt!492821 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1100123 () Bool)

(declare-fun e!627949 () Bool)

(assert (=> b!1100123 (= e!627949 e!627951)))

(assert (=> b!1100123 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!34816 lt!492684)))))

(declare-fun res!734194 () Bool)

(assert (=> b!1100123 (= res!734194 (contains!6408 lt!492821 (select (arr!34279 lt!492684) #b00000000000000000000000000000000)))))

(assert (=> b!1100123 (=> (not res!734194) (not e!627951))))

(declare-fun b!1100124 () Bool)

(assert (=> b!1100124 (= e!627950 e!627949)))

(declare-fun c!108642 () Bool)

(assert (=> b!1100124 (= c!108642 e!627954)))

(declare-fun res!734193 () Bool)

(assert (=> b!1100124 (=> (not res!734193) (not e!627954))))

(assert (=> b!1100124 (= res!734193 (bvslt #b00000000000000000000000000000000 (size!34816 lt!492684)))))

(declare-fun b!1100125 () Bool)

(assert (=> b!1100125 (= e!627948 (= lt!492821 (getCurrentListMapNoExtraKeys!4189 lt!492684 lt!492687 mask!1414 extraKeys!811 zeroValue!831 minValue!831 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) defaultEntry!882)))))

(declare-fun b!1100126 () Bool)

(assert (=> b!1100126 (= e!627949 e!627948)))

(declare-fun c!108643 () Bool)

(assert (=> b!1100126 (= c!108643 (bvslt #b00000000000000000000000000000000 (size!34816 lt!492684)))))

(declare-fun b!1100127 () Bool)

(assert (=> b!1100127 (= e!627952 call!46071)))

(declare-fun b!1100128 () Bool)

(assert (=> b!1100128 (= e!627953 e!627952)))

(declare-fun c!108644 () Bool)

(assert (=> b!1100128 (= c!108644 (validKeyInArray!0 (select (arr!34279 lt!492684) #b00000000000000000000000000000000)))))

(declare-fun bm!46068 () Bool)

(assert (=> bm!46068 (= call!46071 (getCurrentListMapNoExtraKeys!4189 lt!492684 lt!492687 mask!1414 extraKeys!811 zeroValue!831 minValue!831 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) defaultEntry!882))))

(assert (= (and d!130517 c!108645) b!1100120))

(assert (= (and d!130517 (not c!108645)) b!1100128))

(assert (= (and b!1100128 c!108644) b!1100121))

(assert (= (and b!1100128 (not c!108644)) b!1100127))

(assert (= (or b!1100121 b!1100127) bm!46068))

(assert (= (and d!130517 res!734195) b!1100122))

(assert (= (and b!1100122 res!734196) b!1100124))

(assert (= (and b!1100124 res!734193) b!1100119))

(assert (= (and b!1100124 c!108642) b!1100123))

(assert (= (and b!1100124 (not c!108642)) b!1100126))

(assert (= (and b!1100123 res!734194) b!1100117))

(assert (= (and b!1100126 c!108643) b!1100125))

(assert (= (and b!1100126 (not c!108643)) b!1100118))

(declare-fun b_lambda!18011 () Bool)

(assert (=> (not b_lambda!18011) (not b!1100117)))

(assert (=> b!1100117 t!34270))

(declare-fun b_and!37043 () Bool)

(assert (= b_and!37041 (and (=> t!34270 result!16541) b_and!37043)))

(declare-fun b_lambda!18013 () Bool)

(assert (=> (not b_lambda!18013) (not b!1100121)))

(assert (=> b!1100121 t!34270))

(declare-fun b_and!37045 () Bool)

(assert (= b_and!37043 (and (=> t!34270 result!16541) b_and!37045)))

(declare-fun m!1020271 () Bool)

(assert (=> d!130517 m!1020271))

(assert (=> d!130517 m!1020135))

(declare-fun m!1020273 () Bool)

(assert (=> b!1100125 m!1020273))

(declare-fun m!1020275 () Bool)

(assert (=> b!1100123 m!1020275))

(assert (=> b!1100123 m!1020275))

(declare-fun m!1020277 () Bool)

(assert (=> b!1100123 m!1020277))

(declare-fun m!1020279 () Bool)

(assert (=> b!1100121 m!1020279))

(assert (=> b!1100121 m!1020275))

(assert (=> b!1100121 m!1020109))

(declare-fun m!1020281 () Bool)

(assert (=> b!1100121 m!1020281))

(declare-fun m!1020283 () Bool)

(assert (=> b!1100121 m!1020283))

(declare-fun m!1020285 () Bool)

(assert (=> b!1100121 m!1020285))

(assert (=> b!1100121 m!1020279))

(assert (=> b!1100121 m!1020109))

(declare-fun m!1020287 () Bool)

(assert (=> b!1100121 m!1020287))

(assert (=> b!1100121 m!1020285))

(declare-fun m!1020289 () Bool)

(assert (=> b!1100121 m!1020289))

(assert (=> b!1100119 m!1020275))

(assert (=> b!1100119 m!1020275))

(declare-fun m!1020291 () Bool)

(assert (=> b!1100119 m!1020291))

(declare-fun m!1020293 () Bool)

(assert (=> b!1100118 m!1020293))

(declare-fun m!1020295 () Bool)

(assert (=> b!1100122 m!1020295))

(assert (=> bm!46068 m!1020273))

(assert (=> b!1100128 m!1020275))

(assert (=> b!1100128 m!1020275))

(assert (=> b!1100128 m!1020291))

(assert (=> b!1100117 m!1020279))

(assert (=> b!1100117 m!1020275))

(assert (=> b!1100117 m!1020109))

(assert (=> b!1100117 m!1020275))

(declare-fun m!1020297 () Bool)

(assert (=> b!1100117 m!1020297))

(assert (=> b!1100117 m!1020279))

(assert (=> b!1100117 m!1020109))

(assert (=> b!1100117 m!1020287))

(assert (=> b!1099954 d!130517))

(declare-fun d!130519 () Bool)

(declare-fun lt!492825 () ListLongMap!15391)

(assert (=> d!130519 (not (contains!6408 lt!492825 k0!904))))

(declare-fun removeStrictlySorted!84 (List!24085 (_ BitVec 64)) List!24085)

(assert (=> d!130519 (= lt!492825 (ListLongMap!15392 (removeStrictlySorted!84 (toList!7711 lt!492688) k0!904)))))

(assert (=> d!130519 (= (-!953 lt!492688 k0!904) lt!492825)))

(declare-fun bs!32297 () Bool)

(assert (= bs!32297 d!130519))

(declare-fun m!1020299 () Bool)

(assert (=> bs!32297 m!1020299))

(declare-fun m!1020301 () Bool)

(assert (=> bs!32297 m!1020301))

(assert (=> b!1099954 d!130519))

(declare-fun b!1100129 () Bool)

(declare-fun e!627959 () Bool)

(declare-fun call!46077 () Bool)

(assert (=> b!1100129 (= e!627959 (not call!46077))))

(declare-fun b!1100131 () Bool)

(declare-fun e!627960 () ListLongMap!15391)

(declare-fun call!46078 () ListLongMap!15391)

(assert (=> b!1100131 (= e!627960 call!46078)))

(declare-fun bm!46069 () Bool)

(declare-fun call!46073 () Bool)

(declare-fun lt!492834 () ListLongMap!15391)

(assert (=> bm!46069 (= call!46073 (contains!6408 lt!492834 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1100132 () Bool)

(declare-fun e!627965 () Unit!36097)

(declare-fun lt!492838 () Unit!36097)

(assert (=> b!1100132 (= e!627965 lt!492838)))

(declare-fun lt!492847 () ListLongMap!15391)

(assert (=> b!1100132 (= lt!492847 (getCurrentListMapNoExtraKeys!4189 lt!492684 lt!492687 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun lt!492840 () (_ BitVec 64))

(assert (=> b!1100132 (= lt!492840 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!492835 () (_ BitVec 64))

(assert (=> b!1100132 (= lt!492835 (select (arr!34279 lt!492684) #b00000000000000000000000000000000))))

(declare-fun lt!492843 () Unit!36097)

(assert (=> b!1100132 (= lt!492843 (addStillContains!666 lt!492847 lt!492840 zeroValue!831 lt!492835))))

(assert (=> b!1100132 (contains!6408 (+!3346 lt!492847 (tuple2!17411 lt!492840 zeroValue!831)) lt!492835)))

(declare-fun lt!492841 () Unit!36097)

(assert (=> b!1100132 (= lt!492841 lt!492843)))

(declare-fun lt!492837 () ListLongMap!15391)

(assert (=> b!1100132 (= lt!492837 (getCurrentListMapNoExtraKeys!4189 lt!492684 lt!492687 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun lt!492845 () (_ BitVec 64))

(assert (=> b!1100132 (= lt!492845 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!492829 () (_ BitVec 64))

(assert (=> b!1100132 (= lt!492829 (select (arr!34279 lt!492684) #b00000000000000000000000000000000))))

(declare-fun lt!492831 () Unit!36097)

(assert (=> b!1100132 (= lt!492831 (addApplyDifferent!518 lt!492837 lt!492845 minValue!831 lt!492829))))

(assert (=> b!1100132 (= (apply!984 (+!3346 lt!492837 (tuple2!17411 lt!492845 minValue!831)) lt!492829) (apply!984 lt!492837 lt!492829))))

(declare-fun lt!492839 () Unit!36097)

(assert (=> b!1100132 (= lt!492839 lt!492831)))

(declare-fun lt!492827 () ListLongMap!15391)

(assert (=> b!1100132 (= lt!492827 (getCurrentListMapNoExtraKeys!4189 lt!492684 lt!492687 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun lt!492833 () (_ BitVec 64))

(assert (=> b!1100132 (= lt!492833 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!492828 () (_ BitVec 64))

(assert (=> b!1100132 (= lt!492828 (select (arr!34279 lt!492684) #b00000000000000000000000000000000))))

(declare-fun lt!492830 () Unit!36097)

(assert (=> b!1100132 (= lt!492830 (addApplyDifferent!518 lt!492827 lt!492833 zeroValue!831 lt!492828))))

(assert (=> b!1100132 (= (apply!984 (+!3346 lt!492827 (tuple2!17411 lt!492833 zeroValue!831)) lt!492828) (apply!984 lt!492827 lt!492828))))

(declare-fun lt!492844 () Unit!36097)

(assert (=> b!1100132 (= lt!492844 lt!492830)))

(declare-fun lt!492826 () ListLongMap!15391)

(assert (=> b!1100132 (= lt!492826 (getCurrentListMapNoExtraKeys!4189 lt!492684 lt!492687 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun lt!492842 () (_ BitVec 64))

(assert (=> b!1100132 (= lt!492842 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!492846 () (_ BitVec 64))

(assert (=> b!1100132 (= lt!492846 (select (arr!34279 lt!492684) #b00000000000000000000000000000000))))

(assert (=> b!1100132 (= lt!492838 (addApplyDifferent!518 lt!492826 lt!492842 minValue!831 lt!492846))))

(assert (=> b!1100132 (= (apply!984 (+!3346 lt!492826 (tuple2!17411 lt!492842 minValue!831)) lt!492846) (apply!984 lt!492826 lt!492846))))

(declare-fun b!1100133 () Bool)

(declare-fun e!627967 () Bool)

(assert (=> b!1100133 (= e!627967 (not call!46073))))

(declare-fun b!1100134 () Bool)

(declare-fun res!734197 () Bool)

(declare-fun e!627963 () Bool)

(assert (=> b!1100134 (=> (not res!734197) (not e!627963))))

(declare-fun e!627957 () Bool)

(assert (=> b!1100134 (= res!734197 e!627957)))

(declare-fun res!734201 () Bool)

(assert (=> b!1100134 (=> res!734201 e!627957)))

(declare-fun e!627966 () Bool)

(assert (=> b!1100134 (= res!734201 (not e!627966))))

(declare-fun res!734198 () Bool)

(assert (=> b!1100134 (=> (not res!734198) (not e!627966))))

(assert (=> b!1100134 (= res!734198 (bvslt #b00000000000000000000000000000000 (size!34816 lt!492684)))))

(declare-fun bm!46070 () Bool)

(declare-fun call!46075 () ListLongMap!15391)

(declare-fun call!46076 () ListLongMap!15391)

(assert (=> bm!46070 (= call!46075 call!46076)))

(declare-fun bm!46071 () Bool)

(declare-fun call!46072 () ListLongMap!15391)

(assert (=> bm!46071 (= call!46072 (getCurrentListMapNoExtraKeys!4189 lt!492684 lt!492687 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun b!1100135 () Bool)

(declare-fun c!108648 () Bool)

(assert (=> b!1100135 (= c!108648 (and (not (= (bvand extraKeys!811 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeys!811 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun e!627961 () ListLongMap!15391)

(assert (=> b!1100135 (= e!627961 e!627960)))

(declare-fun b!1100136 () Bool)

(declare-fun Unit!36100 () Unit!36097)

(assert (=> b!1100136 (= e!627965 Unit!36100)))

(declare-fun b!1100137 () Bool)

(declare-fun e!627958 () ListLongMap!15391)

(assert (=> b!1100137 (= e!627958 e!627961)))

(declare-fun c!108647 () Bool)

(assert (=> b!1100137 (= c!108647 (and (not (= (bvand extraKeys!811 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeys!811 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1100138 () Bool)

(assert (=> b!1100138 (= e!627961 call!46075)))

(declare-fun b!1100139 () Bool)

(assert (=> b!1100139 (= e!627960 call!46075)))

(declare-fun d!130521 () Bool)

(assert (=> d!130521 e!627963))

(declare-fun res!734204 () Bool)

(assert (=> d!130521 (=> (not res!734204) (not e!627963))))

(assert (=> d!130521 (= res!734204 (or (bvsge #b00000000000000000000000000000000 (size!34816 lt!492684)) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!34816 lt!492684)))))))

(declare-fun lt!492836 () ListLongMap!15391)

(assert (=> d!130521 (= lt!492834 lt!492836)))

(declare-fun lt!492832 () Unit!36097)

(assert (=> d!130521 (= lt!492832 e!627965)))

(declare-fun c!108651 () Bool)

(declare-fun e!627962 () Bool)

(assert (=> d!130521 (= c!108651 e!627962)))

(declare-fun res!734202 () Bool)

(assert (=> d!130521 (=> (not res!734202) (not e!627962))))

(assert (=> d!130521 (= res!734202 (bvslt #b00000000000000000000000000000000 (size!34816 lt!492684)))))

(assert (=> d!130521 (= lt!492836 e!627958)))

(declare-fun c!108650 () Bool)

(assert (=> d!130521 (= c!108650 (and (not (= (bvand extraKeys!811 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!811 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!130521 (validMask!0 mask!1414)))

(assert (=> d!130521 (= (getCurrentListMap!4402 lt!492684 lt!492687 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882) lt!492834)))

(declare-fun b!1100130 () Bool)

(declare-fun res!734200 () Bool)

(assert (=> b!1100130 (=> (not res!734200) (not e!627963))))

(assert (=> b!1100130 (= res!734200 e!627959)))

(declare-fun c!108649 () Bool)

(assert (=> b!1100130 (= c!108649 (not (= (bvand extraKeys!811 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!1100140 () Bool)

(assert (=> b!1100140 (= e!627962 (validKeyInArray!0 (select (arr!34279 lt!492684) #b00000000000000000000000000000000)))))

(declare-fun b!1100141 () Bool)

(declare-fun e!627955 () Bool)

(assert (=> b!1100141 (= e!627967 e!627955)))

(declare-fun res!734205 () Bool)

(assert (=> b!1100141 (= res!734205 call!46073)))

(assert (=> b!1100141 (=> (not res!734205) (not e!627955))))

(declare-fun b!1100142 () Bool)

(declare-fun e!627964 () Bool)

(assert (=> b!1100142 (= e!627964 (= (apply!984 lt!492834 (select (arr!34279 lt!492684) #b00000000000000000000000000000000)) (get!17650 (select (arr!34280 lt!492687) #b00000000000000000000000000000000) (dynLambda!2320 defaultEntry!882 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1100142 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!34817 lt!492687)))))

(assert (=> b!1100142 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!34816 lt!492684)))))

(declare-fun b!1100143 () Bool)

(declare-fun e!627956 () Bool)

(assert (=> b!1100143 (= e!627959 e!627956)))

(declare-fun res!734203 () Bool)

(assert (=> b!1100143 (= res!734203 call!46077)))

(assert (=> b!1100143 (=> (not res!734203) (not e!627956))))

(declare-fun b!1100144 () Bool)

(assert (=> b!1100144 (= e!627955 (= (apply!984 lt!492834 #b1000000000000000000000000000000000000000000000000000000000000000) minValue!831))))

(declare-fun b!1100145 () Bool)

(assert (=> b!1100145 (= e!627958 (+!3346 call!46076 (tuple2!17411 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!831)))))

(declare-fun b!1100146 () Bool)

(assert (=> b!1100146 (= e!627966 (validKeyInArray!0 (select (arr!34279 lt!492684) #b00000000000000000000000000000000)))))

(declare-fun b!1100147 () Bool)

(assert (=> b!1100147 (= e!627957 e!627964)))

(declare-fun res!734199 () Bool)

(assert (=> b!1100147 (=> (not res!734199) (not e!627964))))

(assert (=> b!1100147 (= res!734199 (contains!6408 lt!492834 (select (arr!34279 lt!492684) #b00000000000000000000000000000000)))))

(assert (=> b!1100147 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!34816 lt!492684)))))

(declare-fun bm!46072 () Bool)

(assert (=> bm!46072 (= call!46077 (contains!6408 lt!492834 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1100148 () Bool)

(assert (=> b!1100148 (= e!627956 (= (apply!984 lt!492834 #b0000000000000000000000000000000000000000000000000000000000000000) zeroValue!831))))

(declare-fun bm!46073 () Bool)

(declare-fun call!46074 () ListLongMap!15391)

(assert (=> bm!46073 (= call!46074 call!46072)))

(declare-fun b!1100149 () Bool)

(assert (=> b!1100149 (= e!627963 e!627967)))

(declare-fun c!108646 () Bool)

(assert (=> b!1100149 (= c!108646 (not (= (bvand extraKeys!811 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun bm!46074 () Bool)

(assert (=> bm!46074 (= call!46078 call!46074)))

(declare-fun bm!46075 () Bool)

(assert (=> bm!46075 (= call!46076 (+!3346 (ite c!108650 call!46072 (ite c!108647 call!46074 call!46078)) (ite (or c!108650 c!108647) (tuple2!17411 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!831) (tuple2!17411 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!831))))))

(assert (= (and d!130521 c!108650) b!1100145))

(assert (= (and d!130521 (not c!108650)) b!1100137))

(assert (= (and b!1100137 c!108647) b!1100138))

(assert (= (and b!1100137 (not c!108647)) b!1100135))

(assert (= (and b!1100135 c!108648) b!1100139))

(assert (= (and b!1100135 (not c!108648)) b!1100131))

(assert (= (or b!1100139 b!1100131) bm!46074))

(assert (= (or b!1100138 bm!46074) bm!46073))

(assert (= (or b!1100138 b!1100139) bm!46070))

(assert (= (or b!1100145 bm!46073) bm!46071))

(assert (= (or b!1100145 bm!46070) bm!46075))

(assert (= (and d!130521 res!734202) b!1100140))

(assert (= (and d!130521 c!108651) b!1100132))

(assert (= (and d!130521 (not c!108651)) b!1100136))

(assert (= (and d!130521 res!734204) b!1100134))

(assert (= (and b!1100134 res!734198) b!1100146))

(assert (= (and b!1100134 (not res!734201)) b!1100147))

(assert (= (and b!1100147 res!734199) b!1100142))

(assert (= (and b!1100134 res!734197) b!1100130))

(assert (= (and b!1100130 c!108649) b!1100143))

(assert (= (and b!1100130 (not c!108649)) b!1100129))

(assert (= (and b!1100143 res!734203) b!1100148))

(assert (= (or b!1100143 b!1100129) bm!46072))

(assert (= (and b!1100130 res!734200) b!1100149))

(assert (= (and b!1100149 c!108646) b!1100141))

(assert (= (and b!1100149 (not c!108646)) b!1100133))

(assert (= (and b!1100141 res!734205) b!1100144))

(assert (= (or b!1100141 b!1100133) bm!46069))

(declare-fun b_lambda!18015 () Bool)

(assert (=> (not b_lambda!18015) (not b!1100142)))

(assert (=> b!1100142 t!34270))

(declare-fun b_and!37047 () Bool)

(assert (= b_and!37045 (and (=> t!34270 result!16541) b_and!37047)))

(assert (=> b!1100132 m!1020111))

(declare-fun m!1020303 () Bool)

(assert (=> b!1100132 m!1020303))

(declare-fun m!1020305 () Bool)

(assert (=> b!1100132 m!1020305))

(declare-fun m!1020307 () Bool)

(assert (=> b!1100132 m!1020307))

(declare-fun m!1020309 () Bool)

(assert (=> b!1100132 m!1020309))

(declare-fun m!1020311 () Bool)

(assert (=> b!1100132 m!1020311))

(declare-fun m!1020313 () Bool)

(assert (=> b!1100132 m!1020313))

(declare-fun m!1020315 () Bool)

(assert (=> b!1100132 m!1020315))

(declare-fun m!1020317 () Bool)

(assert (=> b!1100132 m!1020317))

(assert (=> b!1100132 m!1020275))

(declare-fun m!1020319 () Bool)

(assert (=> b!1100132 m!1020319))

(declare-fun m!1020321 () Bool)

(assert (=> b!1100132 m!1020321))

(assert (=> b!1100132 m!1020319))

(declare-fun m!1020323 () Bool)

(assert (=> b!1100132 m!1020323))

(declare-fun m!1020325 () Bool)

(assert (=> b!1100132 m!1020325))

(declare-fun m!1020327 () Bool)

(assert (=> b!1100132 m!1020327))

(assert (=> b!1100132 m!1020307))

(declare-fun m!1020329 () Bool)

(assert (=> b!1100132 m!1020329))

(assert (=> b!1100132 m!1020309))

(assert (=> b!1100132 m!1020325))

(declare-fun m!1020331 () Bool)

(assert (=> b!1100132 m!1020331))

(assert (=> d!130521 m!1020135))

(declare-fun m!1020333 () Bool)

(assert (=> bm!46069 m!1020333))

(assert (=> b!1100147 m!1020275))

(assert (=> b!1100147 m!1020275))

(declare-fun m!1020335 () Bool)

(assert (=> b!1100147 m!1020335))

(assert (=> b!1100140 m!1020275))

(assert (=> b!1100140 m!1020275))

(assert (=> b!1100140 m!1020291))

(assert (=> b!1100142 m!1020109))

(assert (=> b!1100142 m!1020279))

(assert (=> b!1100142 m!1020109))

(assert (=> b!1100142 m!1020287))

(assert (=> b!1100142 m!1020275))

(assert (=> b!1100142 m!1020275))

(declare-fun m!1020337 () Bool)

(assert (=> b!1100142 m!1020337))

(assert (=> b!1100142 m!1020279))

(declare-fun m!1020339 () Bool)

(assert (=> b!1100145 m!1020339))

(declare-fun m!1020341 () Bool)

(assert (=> b!1100144 m!1020341))

(declare-fun m!1020343 () Bool)

(assert (=> bm!46075 m!1020343))

(assert (=> b!1100146 m!1020275))

(assert (=> b!1100146 m!1020275))

(assert (=> b!1100146 m!1020291))

(assert (=> bm!46071 m!1020111))

(declare-fun m!1020345 () Bool)

(assert (=> b!1100148 m!1020345))

(declare-fun m!1020347 () Bool)

(assert (=> bm!46072 m!1020347))

(assert (=> b!1099954 d!130521))

(declare-fun d!130523 () Bool)

(declare-fun res!734210 () Bool)

(declare-fun e!627972 () Bool)

(assert (=> d!130523 (=> res!734210 e!627972)))

(assert (=> d!130523 (= res!734210 (= (select (arr!34279 _keys!1070) #b00000000000000000000000000000000) k0!904))))

(assert (=> d!130523 (= (arrayContainsKey!0 _keys!1070 k0!904 #b00000000000000000000000000000000) e!627972)))

(declare-fun b!1100154 () Bool)

(declare-fun e!627973 () Bool)

(assert (=> b!1100154 (= e!627972 e!627973)))

(declare-fun res!734211 () Bool)

(assert (=> b!1100154 (=> (not res!734211) (not e!627973))))

(assert (=> b!1100154 (= res!734211 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!34816 _keys!1070)))))

(declare-fun b!1100155 () Bool)

(assert (=> b!1100155 (= e!627973 (arrayContainsKey!0 _keys!1070 k0!904 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!130523 (not res!734210)) b!1100154))

(assert (= (and b!1100154 res!734211) b!1100155))

(assert (=> d!130523 m!1020227))

(declare-fun m!1020349 () Bool)

(assert (=> b!1100155 m!1020349))

(assert (=> b!1099954 d!130523))

(declare-fun b!1100156 () Bool)

(assert (=> b!1100156 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!34816 _keys!1070)))))

(assert (=> b!1100156 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!34817 _values!874)))))

(declare-fun e!627977 () Bool)

(declare-fun lt!492853 () ListLongMap!15391)

(assert (=> b!1100156 (= e!627977 (= (apply!984 lt!492853 (select (arr!34279 _keys!1070) #b00000000000000000000000000000000)) (get!17650 (select (arr!34280 _values!874) #b00000000000000000000000000000000) (dynLambda!2320 defaultEntry!882 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1100157 () Bool)

(declare-fun e!627974 () Bool)

(assert (=> b!1100157 (= e!627974 (isEmpty!970 lt!492853))))

(declare-fun b!1100158 () Bool)

(declare-fun e!627980 () Bool)

(assert (=> b!1100158 (= e!627980 (validKeyInArray!0 (select (arr!34279 _keys!1070) #b00000000000000000000000000000000)))))

(assert (=> b!1100158 (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000)))

(declare-fun b!1100159 () Bool)

(declare-fun e!627979 () ListLongMap!15391)

(assert (=> b!1100159 (= e!627979 (ListLongMap!15392 Nil!24082))))

(declare-fun d!130525 () Bool)

(declare-fun e!627976 () Bool)

(assert (=> d!130525 e!627976))

(declare-fun res!734214 () Bool)

(assert (=> d!130525 (=> (not res!734214) (not e!627976))))

(assert (=> d!130525 (= res!734214 (not (contains!6408 lt!492853 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!130525 (= lt!492853 e!627979)))

(declare-fun c!108655 () Bool)

(assert (=> d!130525 (= c!108655 (bvsge #b00000000000000000000000000000000 (size!34816 _keys!1070)))))

(assert (=> d!130525 (validMask!0 mask!1414)))

(assert (=> d!130525 (= (getCurrentListMapNoExtraKeys!4189 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882) lt!492853)))

(declare-fun b!1100160 () Bool)

(declare-fun lt!492849 () Unit!36097)

(declare-fun lt!492852 () Unit!36097)

(assert (=> b!1100160 (= lt!492849 lt!492852)))

(declare-fun lt!492851 () (_ BitVec 64))

(declare-fun lt!492854 () V!41371)

(declare-fun lt!492848 () ListLongMap!15391)

(declare-fun lt!492850 () (_ BitVec 64))

(assert (=> b!1100160 (not (contains!6408 (+!3346 lt!492848 (tuple2!17411 lt!492850 lt!492854)) lt!492851))))

(assert (=> b!1100160 (= lt!492852 (addStillNotContains!279 lt!492848 lt!492850 lt!492854 lt!492851))))

(assert (=> b!1100160 (= lt!492851 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!1100160 (= lt!492854 (get!17650 (select (arr!34280 _values!874) #b00000000000000000000000000000000) (dynLambda!2320 defaultEntry!882 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!1100160 (= lt!492850 (select (arr!34279 _keys!1070) #b00000000000000000000000000000000))))

(declare-fun call!46079 () ListLongMap!15391)

(assert (=> b!1100160 (= lt!492848 call!46079)))

(declare-fun e!627978 () ListLongMap!15391)

(assert (=> b!1100160 (= e!627978 (+!3346 call!46079 (tuple2!17411 (select (arr!34279 _keys!1070) #b00000000000000000000000000000000) (get!17650 (select (arr!34280 _values!874) #b00000000000000000000000000000000) (dynLambda!2320 defaultEntry!882 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!1100161 () Bool)

(declare-fun res!734215 () Bool)

(assert (=> b!1100161 (=> (not res!734215) (not e!627976))))

(assert (=> b!1100161 (= res!734215 (not (contains!6408 lt!492853 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1100162 () Bool)

(declare-fun e!627975 () Bool)

(assert (=> b!1100162 (= e!627975 e!627977)))

(assert (=> b!1100162 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!34816 _keys!1070)))))

(declare-fun res!734213 () Bool)

(assert (=> b!1100162 (= res!734213 (contains!6408 lt!492853 (select (arr!34279 _keys!1070) #b00000000000000000000000000000000)))))

(assert (=> b!1100162 (=> (not res!734213) (not e!627977))))

(declare-fun b!1100163 () Bool)

(assert (=> b!1100163 (= e!627976 e!627975)))

(declare-fun c!108652 () Bool)

(assert (=> b!1100163 (= c!108652 e!627980)))

(declare-fun res!734212 () Bool)

(assert (=> b!1100163 (=> (not res!734212) (not e!627980))))

(assert (=> b!1100163 (= res!734212 (bvslt #b00000000000000000000000000000000 (size!34816 _keys!1070)))))

(declare-fun b!1100164 () Bool)

(assert (=> b!1100164 (= e!627974 (= lt!492853 (getCurrentListMapNoExtraKeys!4189 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) defaultEntry!882)))))

(declare-fun b!1100165 () Bool)

(assert (=> b!1100165 (= e!627975 e!627974)))

(declare-fun c!108653 () Bool)

(assert (=> b!1100165 (= c!108653 (bvslt #b00000000000000000000000000000000 (size!34816 _keys!1070)))))

(declare-fun b!1100166 () Bool)

(assert (=> b!1100166 (= e!627978 call!46079)))

(declare-fun b!1100167 () Bool)

(assert (=> b!1100167 (= e!627979 e!627978)))

(declare-fun c!108654 () Bool)

(assert (=> b!1100167 (= c!108654 (validKeyInArray!0 (select (arr!34279 _keys!1070) #b00000000000000000000000000000000)))))

(declare-fun bm!46076 () Bool)

(assert (=> bm!46076 (= call!46079 (getCurrentListMapNoExtraKeys!4189 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) defaultEntry!882))))

(assert (= (and d!130525 c!108655) b!1100159))

(assert (= (and d!130525 (not c!108655)) b!1100167))

(assert (= (and b!1100167 c!108654) b!1100160))

(assert (= (and b!1100167 (not c!108654)) b!1100166))

(assert (= (or b!1100160 b!1100166) bm!46076))

(assert (= (and d!130525 res!734214) b!1100161))

(assert (= (and b!1100161 res!734215) b!1100163))

(assert (= (and b!1100163 res!734212) b!1100158))

(assert (= (and b!1100163 c!108652) b!1100162))

(assert (= (and b!1100163 (not c!108652)) b!1100165))

(assert (= (and b!1100162 res!734213) b!1100156))

(assert (= (and b!1100165 c!108653) b!1100164))

(assert (= (and b!1100165 (not c!108653)) b!1100157))

(declare-fun b_lambda!18017 () Bool)

(assert (=> (not b_lambda!18017) (not b!1100156)))

(assert (=> b!1100156 t!34270))

(declare-fun b_and!37049 () Bool)

(assert (= b_and!37047 (and (=> t!34270 result!16541) b_and!37049)))

(declare-fun b_lambda!18019 () Bool)

(assert (=> (not b_lambda!18019) (not b!1100160)))

(assert (=> b!1100160 t!34270))

(declare-fun b_and!37051 () Bool)

(assert (= b_and!37049 (and (=> t!34270 result!16541) b_and!37051)))

(declare-fun m!1020351 () Bool)

(assert (=> d!130525 m!1020351))

(assert (=> d!130525 m!1020135))

(declare-fun m!1020353 () Bool)

(assert (=> b!1100164 m!1020353))

(assert (=> b!1100162 m!1020227))

(assert (=> b!1100162 m!1020227))

(declare-fun m!1020355 () Bool)

(assert (=> b!1100162 m!1020355))

(assert (=> b!1100160 m!1020249))

(assert (=> b!1100160 m!1020227))

(assert (=> b!1100160 m!1020109))

(declare-fun m!1020357 () Bool)

(assert (=> b!1100160 m!1020357))

(declare-fun m!1020359 () Bool)

(assert (=> b!1100160 m!1020359))

(declare-fun m!1020361 () Bool)

(assert (=> b!1100160 m!1020361))

(assert (=> b!1100160 m!1020249))

(assert (=> b!1100160 m!1020109))

(assert (=> b!1100160 m!1020251))

(assert (=> b!1100160 m!1020361))

(declare-fun m!1020363 () Bool)

(assert (=> b!1100160 m!1020363))

(assert (=> b!1100158 m!1020227))

(assert (=> b!1100158 m!1020227))

(assert (=> b!1100158 m!1020247))

(declare-fun m!1020365 () Bool)

(assert (=> b!1100157 m!1020365))

(declare-fun m!1020367 () Bool)

(assert (=> b!1100161 m!1020367))

(assert (=> bm!46076 m!1020353))

(assert (=> b!1100167 m!1020227))

(assert (=> b!1100167 m!1020227))

(assert (=> b!1100167 m!1020247))

(assert (=> b!1100156 m!1020249))

(assert (=> b!1100156 m!1020227))

(assert (=> b!1100156 m!1020109))

(assert (=> b!1100156 m!1020227))

(declare-fun m!1020369 () Bool)

(assert (=> b!1100156 m!1020369))

(assert (=> b!1100156 m!1020249))

(assert (=> b!1100156 m!1020109))

(assert (=> b!1100156 m!1020251))

(assert (=> b!1099954 d!130525))

(declare-fun d!130527 () Bool)

(assert (=> d!130527 (arrayContainsKey!0 _keys!1070 k0!904 #b00000000000000000000000000000000)))

(declare-fun lt!492857 () Unit!36097)

(declare-fun choose!13 (array!71234 (_ BitVec 64) (_ BitVec 32)) Unit!36097)

(assert (=> d!130527 (= lt!492857 (choose!13 _keys!1070 k0!904 i!650))))

(assert (=> d!130527 (bvsge i!650 #b00000000000000000000000000000000)))

(assert (=> d!130527 (= (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1070 k0!904 i!650) lt!492857)))

(declare-fun bs!32298 () Bool)

(assert (= bs!32298 d!130527))

(assert (=> bs!32298 m!1020115))

(declare-fun m!1020371 () Bool)

(assert (=> bs!32298 m!1020371))

(assert (=> b!1099954 d!130527))

(declare-fun d!130529 () Bool)

(declare-fun e!627981 () Bool)

(assert (=> d!130529 e!627981))

(declare-fun res!734217 () Bool)

(assert (=> d!130529 (=> (not res!734217) (not e!627981))))

(declare-fun lt!492858 () ListLongMap!15391)

(assert (=> d!130529 (= res!734217 (contains!6408 lt!492858 (_1!8715 lt!492685)))))

(declare-fun lt!492861 () List!24085)

(assert (=> d!130529 (= lt!492858 (ListLongMap!15392 lt!492861))))

(declare-fun lt!492859 () Unit!36097)

(declare-fun lt!492860 () Unit!36097)

(assert (=> d!130529 (= lt!492859 lt!492860)))

(assert (=> d!130529 (= (getValueByKey!627 lt!492861 (_1!8715 lt!492685)) (Some!677 (_2!8715 lt!492685)))))

(assert (=> d!130529 (= lt!492860 (lemmaContainsTupThenGetReturnValue!302 lt!492861 (_1!8715 lt!492685) (_2!8715 lt!492685)))))

(assert (=> d!130529 (= lt!492861 (insertStrictlySorted!394 (toList!7711 lt!492690) (_1!8715 lt!492685) (_2!8715 lt!492685)))))

(assert (=> d!130529 (= (+!3346 lt!492690 lt!492685) lt!492858)))

(declare-fun b!1100168 () Bool)

(declare-fun res!734216 () Bool)

(assert (=> b!1100168 (=> (not res!734216) (not e!627981))))

(assert (=> b!1100168 (= res!734216 (= (getValueByKey!627 (toList!7711 lt!492858) (_1!8715 lt!492685)) (Some!677 (_2!8715 lt!492685))))))

(declare-fun b!1100169 () Bool)

(assert (=> b!1100169 (= e!627981 (contains!6409 (toList!7711 lt!492858) lt!492685))))

(assert (= (and d!130529 res!734217) b!1100168))

(assert (= (and b!1100168 res!734216) b!1100169))

(declare-fun m!1020373 () Bool)

(assert (=> d!130529 m!1020373))

(declare-fun m!1020375 () Bool)

(assert (=> d!130529 m!1020375))

(declare-fun m!1020377 () Bool)

(assert (=> d!130529 m!1020377))

(declare-fun m!1020379 () Bool)

(assert (=> d!130529 m!1020379))

(declare-fun m!1020381 () Bool)

(assert (=> b!1100168 m!1020381))

(declare-fun m!1020383 () Bool)

(assert (=> b!1100169 m!1020383))

(assert (=> b!1099959 d!130529))

(declare-fun d!130531 () Bool)

(declare-fun e!627982 () Bool)

(assert (=> d!130531 e!627982))

(declare-fun res!734219 () Bool)

(assert (=> d!130531 (=> (not res!734219) (not e!627982))))

(declare-fun lt!492862 () ListLongMap!15391)

(assert (=> d!130531 (= res!734219 (contains!6408 lt!492862 (_1!8715 lt!492685)))))

(declare-fun lt!492865 () List!24085)

(assert (=> d!130531 (= lt!492862 (ListLongMap!15392 lt!492865))))

(declare-fun lt!492863 () Unit!36097)

(declare-fun lt!492864 () Unit!36097)

(assert (=> d!130531 (= lt!492863 lt!492864)))

(assert (=> d!130531 (= (getValueByKey!627 lt!492865 (_1!8715 lt!492685)) (Some!677 (_2!8715 lt!492685)))))

(assert (=> d!130531 (= lt!492864 (lemmaContainsTupThenGetReturnValue!302 lt!492865 (_1!8715 lt!492685) (_2!8715 lt!492685)))))

(assert (=> d!130531 (= lt!492865 (insertStrictlySorted!394 (toList!7711 lt!492688) (_1!8715 lt!492685) (_2!8715 lt!492685)))))

(assert (=> d!130531 (= (+!3346 lt!492688 lt!492685) lt!492862)))

(declare-fun b!1100170 () Bool)

(declare-fun res!734218 () Bool)

(assert (=> b!1100170 (=> (not res!734218) (not e!627982))))

(assert (=> b!1100170 (= res!734218 (= (getValueByKey!627 (toList!7711 lt!492862) (_1!8715 lt!492685)) (Some!677 (_2!8715 lt!492685))))))

(declare-fun b!1100171 () Bool)

(assert (=> b!1100171 (= e!627982 (contains!6409 (toList!7711 lt!492862) lt!492685))))

(assert (= (and d!130531 res!734219) b!1100170))

(assert (= (and b!1100170 res!734218) b!1100171))

(declare-fun m!1020385 () Bool)

(assert (=> d!130531 m!1020385))

(declare-fun m!1020387 () Bool)

(assert (=> d!130531 m!1020387))

(declare-fun m!1020389 () Bool)

(assert (=> d!130531 m!1020389))

(declare-fun m!1020391 () Bool)

(assert (=> d!130531 m!1020391))

(declare-fun m!1020393 () Bool)

(assert (=> b!1100170 m!1020393))

(declare-fun m!1020395 () Bool)

(assert (=> b!1100171 m!1020395))

(assert (=> b!1099955 d!130531))

(declare-fun b!1100182 () Bool)

(declare-fun e!627991 () Bool)

(declare-fun call!46082 () Bool)

(assert (=> b!1100182 (= e!627991 call!46082)))

(declare-fun b!1100183 () Bool)

(declare-fun e!627993 () Bool)

(declare-fun e!627994 () Bool)

(assert (=> b!1100183 (= e!627993 e!627994)))

(declare-fun res!734228 () Bool)

(assert (=> b!1100183 (=> (not res!734228) (not e!627994))))

(declare-fun e!627992 () Bool)

(assert (=> b!1100183 (= res!734228 (not e!627992))))

(declare-fun res!734226 () Bool)

(assert (=> b!1100183 (=> (not res!734226) (not e!627992))))

(assert (=> b!1100183 (= res!734226 (validKeyInArray!0 (select (arr!34279 _keys!1070) #b00000000000000000000000000000000)))))

(declare-fun d!130533 () Bool)

(declare-fun res!734227 () Bool)

(assert (=> d!130533 (=> res!734227 e!627993)))

(assert (=> d!130533 (= res!734227 (bvsge #b00000000000000000000000000000000 (size!34816 _keys!1070)))))

(assert (=> d!130533 (= (arrayNoDuplicates!0 _keys!1070 #b00000000000000000000000000000000 Nil!24083) e!627993)))

(declare-fun b!1100184 () Bool)

(declare-fun contains!6410 (List!24086 (_ BitVec 64)) Bool)

(assert (=> b!1100184 (= e!627992 (contains!6410 Nil!24083 (select (arr!34279 _keys!1070) #b00000000000000000000000000000000)))))

(declare-fun bm!46079 () Bool)

(declare-fun c!108658 () Bool)

(assert (=> bm!46079 (= call!46082 (arrayNoDuplicates!0 _keys!1070 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!108658 (Cons!24082 (select (arr!34279 _keys!1070) #b00000000000000000000000000000000) Nil!24083) Nil!24083)))))

(declare-fun b!1100185 () Bool)

(assert (=> b!1100185 (= e!627994 e!627991)))

(assert (=> b!1100185 (= c!108658 (validKeyInArray!0 (select (arr!34279 _keys!1070) #b00000000000000000000000000000000)))))

(declare-fun b!1100186 () Bool)

(assert (=> b!1100186 (= e!627991 call!46082)))

(assert (= (and d!130533 (not res!734227)) b!1100183))

(assert (= (and b!1100183 res!734226) b!1100184))

(assert (= (and b!1100183 res!734228) b!1100185))

(assert (= (and b!1100185 c!108658) b!1100186))

(assert (= (and b!1100185 (not c!108658)) b!1100182))

(assert (= (or b!1100186 b!1100182) bm!46079))

(assert (=> b!1100183 m!1020227))

(assert (=> b!1100183 m!1020227))

(assert (=> b!1100183 m!1020247))

(assert (=> b!1100184 m!1020227))

(assert (=> b!1100184 m!1020227))

(declare-fun m!1020397 () Bool)

(assert (=> b!1100184 m!1020397))

(assert (=> bm!46079 m!1020227))

(declare-fun m!1020399 () Bool)

(assert (=> bm!46079 m!1020399))

(assert (=> b!1100185 m!1020227))

(assert (=> b!1100185 m!1020227))

(assert (=> b!1100185 m!1020247))

(assert (=> b!1099965 d!130533))

(declare-fun d!130535 () Bool)

(assert (=> d!130535 (= (validKeyInArray!0 k0!904) (and (not (= k0!904 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!904 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1099960 d!130535))

(declare-fun d!130537 () Bool)

(declare-fun res!734233 () Bool)

(declare-fun e!628003 () Bool)

(assert (=> d!130537 (=> res!734233 e!628003)))

(assert (=> d!130537 (= res!734233 (bvsge #b00000000000000000000000000000000 (size!34816 lt!492684)))))

(assert (=> d!130537 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!492684 mask!1414) e!628003)))

(declare-fun b!1100195 () Bool)

(declare-fun e!628002 () Bool)

(assert (=> b!1100195 (= e!628003 e!628002)))

(declare-fun c!108661 () Bool)

(assert (=> b!1100195 (= c!108661 (validKeyInArray!0 (select (arr!34279 lt!492684) #b00000000000000000000000000000000)))))

(declare-fun b!1100196 () Bool)

(declare-fun e!628001 () Bool)

(declare-fun call!46085 () Bool)

(assert (=> b!1100196 (= e!628001 call!46085)))

(declare-fun b!1100197 () Bool)

(assert (=> b!1100197 (= e!628002 call!46085)))

(declare-fun bm!46082 () Bool)

(assert (=> bm!46082 (= call!46085 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) lt!492684 mask!1414))))

(declare-fun b!1100198 () Bool)

(assert (=> b!1100198 (= e!628002 e!628001)))

(declare-fun lt!492874 () (_ BitVec 64))

(assert (=> b!1100198 (= lt!492874 (select (arr!34279 lt!492684) #b00000000000000000000000000000000))))

(declare-fun lt!492873 () Unit!36097)

(assert (=> b!1100198 (= lt!492873 (lemmaArrayContainsFromImpliesContainsFromZero!0 lt!492684 lt!492874 #b00000000000000000000000000000000))))

(assert (=> b!1100198 (arrayContainsKey!0 lt!492684 lt!492874 #b00000000000000000000000000000000)))

(declare-fun lt!492872 () Unit!36097)

(assert (=> b!1100198 (= lt!492872 lt!492873)))

(declare-fun res!734234 () Bool)

(declare-datatypes ((SeekEntryResult!9909 0))(
  ( (MissingZero!9909 (index!42006 (_ BitVec 32))) (Found!9909 (index!42007 (_ BitVec 32))) (Intermediate!9909 (undefined!10721 Bool) (index!42008 (_ BitVec 32)) (x!98928 (_ BitVec 32))) (Undefined!9909) (MissingVacant!9909 (index!42009 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!71234 (_ BitVec 32)) SeekEntryResult!9909)

(assert (=> b!1100198 (= res!734234 (= (seekEntryOrOpen!0 (select (arr!34279 lt!492684) #b00000000000000000000000000000000) lt!492684 mask!1414) (Found!9909 #b00000000000000000000000000000000)))))

(assert (=> b!1100198 (=> (not res!734234) (not e!628001))))

(assert (= (and d!130537 (not res!734233)) b!1100195))

(assert (= (and b!1100195 c!108661) b!1100198))

(assert (= (and b!1100195 (not c!108661)) b!1100197))

(assert (= (and b!1100198 res!734234) b!1100196))

(assert (= (or b!1100196 b!1100197) bm!46082))

(assert (=> b!1100195 m!1020275))

(assert (=> b!1100195 m!1020275))

(assert (=> b!1100195 m!1020291))

(declare-fun m!1020401 () Bool)

(assert (=> bm!46082 m!1020401))

(assert (=> b!1100198 m!1020275))

(declare-fun m!1020403 () Bool)

(assert (=> b!1100198 m!1020403))

(declare-fun m!1020405 () Bool)

(assert (=> b!1100198 m!1020405))

(assert (=> b!1100198 m!1020275))

(declare-fun m!1020407 () Bool)

(assert (=> b!1100198 m!1020407))

(assert (=> b!1099956 d!130537))

(declare-fun d!130539 () Bool)

(declare-fun res!734235 () Bool)

(declare-fun e!628006 () Bool)

(assert (=> d!130539 (=> res!734235 e!628006)))

(assert (=> d!130539 (= res!734235 (bvsge #b00000000000000000000000000000000 (size!34816 _keys!1070)))))

(assert (=> d!130539 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1070 mask!1414) e!628006)))

(declare-fun b!1100199 () Bool)

(declare-fun e!628005 () Bool)

(assert (=> b!1100199 (= e!628006 e!628005)))

(declare-fun c!108662 () Bool)

(assert (=> b!1100199 (= c!108662 (validKeyInArray!0 (select (arr!34279 _keys!1070) #b00000000000000000000000000000000)))))

(declare-fun b!1100200 () Bool)

(declare-fun e!628004 () Bool)

(declare-fun call!46086 () Bool)

(assert (=> b!1100200 (= e!628004 call!46086)))

(declare-fun b!1100201 () Bool)

(assert (=> b!1100201 (= e!628005 call!46086)))

(declare-fun bm!46083 () Bool)

(assert (=> bm!46083 (= call!46086 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) _keys!1070 mask!1414))))

(declare-fun b!1100202 () Bool)

(assert (=> b!1100202 (= e!628005 e!628004)))

(declare-fun lt!492877 () (_ BitVec 64))

(assert (=> b!1100202 (= lt!492877 (select (arr!34279 _keys!1070) #b00000000000000000000000000000000))))

(declare-fun lt!492876 () Unit!36097)

(assert (=> b!1100202 (= lt!492876 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1070 lt!492877 #b00000000000000000000000000000000))))

(assert (=> b!1100202 (arrayContainsKey!0 _keys!1070 lt!492877 #b00000000000000000000000000000000)))

(declare-fun lt!492875 () Unit!36097)

(assert (=> b!1100202 (= lt!492875 lt!492876)))

(declare-fun res!734236 () Bool)

(assert (=> b!1100202 (= res!734236 (= (seekEntryOrOpen!0 (select (arr!34279 _keys!1070) #b00000000000000000000000000000000) _keys!1070 mask!1414) (Found!9909 #b00000000000000000000000000000000)))))

(assert (=> b!1100202 (=> (not res!734236) (not e!628004))))

(assert (= (and d!130539 (not res!734235)) b!1100199))

(assert (= (and b!1100199 c!108662) b!1100202))

(assert (= (and b!1100199 (not c!108662)) b!1100201))

(assert (= (and b!1100202 res!734236) b!1100200))

(assert (= (or b!1100200 b!1100201) bm!46083))

(assert (=> b!1100199 m!1020227))

(assert (=> b!1100199 m!1020227))

(assert (=> b!1100199 m!1020247))

(declare-fun m!1020409 () Bool)

(assert (=> bm!46083 m!1020409))

(assert (=> b!1100202 m!1020227))

(declare-fun m!1020411 () Bool)

(assert (=> b!1100202 m!1020411))

(declare-fun m!1020413 () Bool)

(assert (=> b!1100202 m!1020413))

(assert (=> b!1100202 m!1020227))

(declare-fun m!1020415 () Bool)

(assert (=> b!1100202 m!1020415))

(assert (=> b!1099952 d!130539))

(declare-fun b!1100203 () Bool)

(declare-fun e!628007 () Bool)

(declare-fun call!46087 () Bool)

(assert (=> b!1100203 (= e!628007 call!46087)))

(declare-fun b!1100204 () Bool)

(declare-fun e!628009 () Bool)

(declare-fun e!628010 () Bool)

(assert (=> b!1100204 (= e!628009 e!628010)))

(declare-fun res!734239 () Bool)

(assert (=> b!1100204 (=> (not res!734239) (not e!628010))))

(declare-fun e!628008 () Bool)

(assert (=> b!1100204 (= res!734239 (not e!628008))))

(declare-fun res!734237 () Bool)

(assert (=> b!1100204 (=> (not res!734237) (not e!628008))))

(assert (=> b!1100204 (= res!734237 (validKeyInArray!0 (select (arr!34279 lt!492684) #b00000000000000000000000000000000)))))

(declare-fun d!130541 () Bool)

(declare-fun res!734238 () Bool)

(assert (=> d!130541 (=> res!734238 e!628009)))

(assert (=> d!130541 (= res!734238 (bvsge #b00000000000000000000000000000000 (size!34816 lt!492684)))))

(assert (=> d!130541 (= (arrayNoDuplicates!0 lt!492684 #b00000000000000000000000000000000 Nil!24083) e!628009)))

(declare-fun b!1100205 () Bool)

(assert (=> b!1100205 (= e!628008 (contains!6410 Nil!24083 (select (arr!34279 lt!492684) #b00000000000000000000000000000000)))))

(declare-fun bm!46084 () Bool)

(declare-fun c!108663 () Bool)

(assert (=> bm!46084 (= call!46087 (arrayNoDuplicates!0 lt!492684 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!108663 (Cons!24082 (select (arr!34279 lt!492684) #b00000000000000000000000000000000) Nil!24083) Nil!24083)))))

(declare-fun b!1100206 () Bool)

(assert (=> b!1100206 (= e!628010 e!628007)))

(assert (=> b!1100206 (= c!108663 (validKeyInArray!0 (select (arr!34279 lt!492684) #b00000000000000000000000000000000)))))

(declare-fun b!1100207 () Bool)

(assert (=> b!1100207 (= e!628007 call!46087)))

(assert (= (and d!130541 (not res!734238)) b!1100204))

(assert (= (and b!1100204 res!734237) b!1100205))

(assert (= (and b!1100204 res!734239) b!1100206))

(assert (= (and b!1100206 c!108663) b!1100207))

(assert (= (and b!1100206 (not c!108663)) b!1100203))

(assert (= (or b!1100207 b!1100203) bm!46084))

(assert (=> b!1100204 m!1020275))

(assert (=> b!1100204 m!1020275))

(assert (=> b!1100204 m!1020291))

(assert (=> b!1100205 m!1020275))

(assert (=> b!1100205 m!1020275))

(declare-fun m!1020417 () Bool)

(assert (=> b!1100205 m!1020417))

(assert (=> bm!46084 m!1020275))

(declare-fun m!1020419 () Bool)

(assert (=> bm!46084 m!1020419))

(assert (=> b!1100206 m!1020275))

(assert (=> b!1100206 m!1020275))

(assert (=> b!1100206 m!1020291))

(assert (=> b!1099961 d!130541))

(declare-fun mapNonEmpty!42559 () Bool)

(declare-fun mapRes!42559 () Bool)

(declare-fun tp!81354 () Bool)

(declare-fun e!628015 () Bool)

(assert (=> mapNonEmpty!42559 (= mapRes!42559 (and tp!81354 e!628015))))

(declare-fun mapRest!42559 () (Array (_ BitVec 32) ValueCell!12882))

(declare-fun mapKey!42559 () (_ BitVec 32))

(declare-fun mapValue!42559 () ValueCell!12882)

(assert (=> mapNonEmpty!42559 (= mapRest!42553 (store mapRest!42559 mapKey!42559 mapValue!42559))))

(declare-fun condMapEmpty!42559 () Bool)

(declare-fun mapDefault!42559 () ValueCell!12882)

(assert (=> mapNonEmpty!42553 (= condMapEmpty!42559 (= mapRest!42553 ((as const (Array (_ BitVec 32) ValueCell!12882)) mapDefault!42559)))))

(declare-fun e!628016 () Bool)

(assert (=> mapNonEmpty!42553 (= tp!81345 (and e!628016 mapRes!42559))))

(declare-fun mapIsEmpty!42559 () Bool)

(assert (=> mapIsEmpty!42559 mapRes!42559))

(declare-fun b!1100214 () Bool)

(assert (=> b!1100214 (= e!628015 tp_is_empty!27183)))

(declare-fun b!1100215 () Bool)

(assert (=> b!1100215 (= e!628016 tp_is_empty!27183)))

(assert (= (and mapNonEmpty!42553 condMapEmpty!42559) mapIsEmpty!42559))

(assert (= (and mapNonEmpty!42553 (not condMapEmpty!42559)) mapNonEmpty!42559))

(assert (= (and mapNonEmpty!42559 ((_ is ValueCellFull!12882) mapValue!42559)) b!1100214))

(assert (= (and mapNonEmpty!42553 ((_ is ValueCellFull!12882) mapDefault!42559)) b!1100215))

(declare-fun m!1020421 () Bool)

(assert (=> mapNonEmpty!42559 m!1020421))

(declare-fun b_lambda!18021 () Bool)

(assert (= b_lambda!18013 (or (and start!96748 b_free!23133) b_lambda!18021)))

(declare-fun b_lambda!18023 () Bool)

(assert (= b_lambda!18019 (or (and start!96748 b_free!23133) b_lambda!18023)))

(declare-fun b_lambda!18025 () Bool)

(assert (= b_lambda!18011 (or (and start!96748 b_free!23133) b_lambda!18025)))

(declare-fun b_lambda!18027 () Bool)

(assert (= b_lambda!18009 (or (and start!96748 b_free!23133) b_lambda!18027)))

(declare-fun b_lambda!18029 () Bool)

(assert (= b_lambda!18017 (or (and start!96748 b_free!23133) b_lambda!18029)))

(declare-fun b_lambda!18031 () Bool)

(assert (= b_lambda!18015 (or (and start!96748 b_free!23133) b_lambda!18031)))

(declare-fun b_lambda!18033 () Bool)

(assert (= b_lambda!18007 (or (and start!96748 b_free!23133) b_lambda!18033)))

(check-sat (not bm!46064) (not b!1100204) (not b_lambda!18033) (not b!1100167) (not d!130517) (not b!1100122) (not b!1100157) (not d!130531) (not b!1100144) (not d!130529) (not bm!46076) (not bm!46069) (not b_lambda!18029) (not b!1100156) (not d!130525) (not bm!46056) (not b!1100202) (not b!1100161) (not b!1100080) (not b!1100160) (not bm!46068) (not b_lambda!18005) (not bm!46083) (not b_lambda!18027) (not b!1100199) (not bm!46075) (not bm!46084) (not b_lambda!18021) (not b!1100121) (not b!1100145) (not d!130521) (not b!1100118) (not b!1100158) (not b!1100162) (not b!1100066) (not b!1100155) (not b!1100164) (not b!1100020) (not b_lambda!18031) (not b!1100132) (not b_lambda!18023) (not b!1100170) tp_is_empty!27183 (not b_lambda!18025) (not b!1100081) (not b!1100019) (not b!1100117) (not b!1100148) (not d!130511) (not b!1100125) (not bm!46082) (not b!1100146) (not b!1100074) (not b!1100079) (not d!130515) (not b!1100142) (not b!1100195) (not d!130519) (not b!1100169) (not b!1100119) (not b!1100184) (not b!1100092) (not b!1100128) (not mapNonEmpty!42559) (not b!1100185) (not d!130513) (not b!1100123) b_and!37051 (not d!130527) (not bm!46055) (not bm!46059) (not b!1100140) (not b!1100183) (not bm!46071) (not bm!46053) (not bm!46079) (not b!1100171) (not bm!46072) (not b!1100168) (not b_next!23133) (not b!1100198) (not b!1100078) (not bm!46065) (not b!1100206) (not b!1100147) (not b!1100076) (not b!1100205) (not b!1100082))
(check-sat b_and!37051 (not b_next!23133))
