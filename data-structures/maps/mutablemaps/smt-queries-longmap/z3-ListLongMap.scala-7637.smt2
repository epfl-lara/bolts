; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!96180 () Bool)

(assert start!96180)

(declare-fun b_free!22797 () Bool)

(declare-fun b_next!22797 () Bool)

(assert (=> start!96180 (= b_free!22797 (not b_next!22797))))

(declare-fun tp!80240 () Bool)

(declare-fun b_and!36287 () Bool)

(assert (=> start!96180 (= tp!80240 b_and!36287)))

(declare-fun b!1091233 () Bool)

(declare-fun res!728146 () Bool)

(declare-fun e!623266 () Bool)

(assert (=> b!1091233 (=> (not res!728146) (not e!623266))))

(declare-fun k0!904 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1091233 (= res!728146 (validKeyInArray!0 k0!904))))

(declare-fun b!1091234 () Bool)

(declare-fun e!623270 () Bool)

(declare-fun e!623271 () Bool)

(declare-fun mapRes!41953 () Bool)

(assert (=> b!1091234 (= e!623270 (and e!623271 mapRes!41953))))

(declare-fun condMapEmpty!41953 () Bool)

(declare-datatypes ((V!40859 0))(
  ( (V!40860 (val!13456 Int)) )
))
(declare-datatypes ((ValueCell!12690 0))(
  ( (ValueCellFull!12690 (v!16078 V!40859)) (EmptyCell!12690) )
))
(declare-datatypes ((array!70484 0))(
  ( (array!70485 (arr!33912 (Array (_ BitVec 32) ValueCell!12690)) (size!34449 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!70484)

(declare-fun mapDefault!41953 () ValueCell!12690)

(assert (=> b!1091234 (= condMapEmpty!41953 (= (arr!33912 _values!874) ((as const (Array (_ BitVec 32) ValueCell!12690)) mapDefault!41953)))))

(declare-fun b!1091235 () Bool)

(declare-fun res!728148 () Bool)

(assert (=> b!1091235 (=> (not res!728148) (not e!623266))))

(declare-fun mask!1414 () (_ BitVec 32))

(declare-fun extraKeys!811 () (_ BitVec 32))

(declare-datatypes ((array!70486 0))(
  ( (array!70487 (arr!33913 (Array (_ BitVec 32) (_ BitVec 64))) (size!34450 (_ BitVec 32))) )
))
(declare-fun _keys!1070 () array!70486)

(assert (=> b!1091235 (= res!728148 (and (= (size!34449 _values!874) (bvadd #b00000000000000000000000000000001 mask!1414)) (= (size!34450 _keys!1070) (size!34449 _values!874)) (bvsge mask!1414 #b00000000000000000000000000000000) (bvsge extraKeys!811 #b00000000000000000000000000000000) (bvsle extraKeys!811 #b00000000000000000000000000000011)))))

(declare-fun b!1091237 () Bool)

(declare-fun e!623267 () Bool)

(declare-fun tp_is_empty!26799 () Bool)

(assert (=> b!1091237 (= e!623267 tp_is_empty!26799)))

(declare-fun b!1091238 () Bool)

(declare-fun e!623269 () Bool)

(assert (=> b!1091238 (= e!623269 true)))

(declare-datatypes ((tuple2!17186 0))(
  ( (tuple2!17187 (_1!8603 (_ BitVec 64)) (_2!8603 V!40859)) )
))
(declare-datatypes ((List!23825 0))(
  ( (Nil!23822) (Cons!23821 (h!25030 tuple2!17186) (t!33687 List!23825)) )
))
(declare-datatypes ((ListLongMap!15167 0))(
  ( (ListLongMap!15168 (toList!7599 List!23825)) )
))
(declare-fun lt!487268 () ListLongMap!15167)

(declare-fun lt!487271 () ListLongMap!15167)

(declare-fun -!876 (ListLongMap!15167 (_ BitVec 64)) ListLongMap!15167)

(assert (=> b!1091238 (= (-!876 lt!487268 k0!904) lt!487271)))

(declare-fun minValue!831 () V!40859)

(declare-fun lt!487264 () ListLongMap!15167)

(declare-datatypes ((Unit!35867 0))(
  ( (Unit!35868) )
))
(declare-fun lt!487266 () Unit!35867)

(declare-fun addRemoveCommutativeForDiffKeys!104 (ListLongMap!15167 (_ BitVec 64) V!40859 (_ BitVec 64)) Unit!35867)

(assert (=> b!1091238 (= lt!487266 (addRemoveCommutativeForDiffKeys!104 lt!487264 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!831 k0!904))))

(declare-fun b!1091239 () Bool)

(declare-fun res!728150 () Bool)

(assert (=> b!1091239 (=> (not res!728150) (not e!623266))))

(declare-fun i!650 () (_ BitVec 32))

(assert (=> b!1091239 (= res!728150 (= (select (arr!33913 _keys!1070) i!650) k0!904))))

(declare-fun b!1091240 () Bool)

(declare-fun res!728143 () Bool)

(assert (=> b!1091240 (=> (not res!728143) (not e!623266))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!70486 (_ BitVec 32)) Bool)

(assert (=> b!1091240 (= res!728143 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1070 mask!1414))))

(declare-fun b!1091241 () Bool)

(declare-fun e!623272 () Bool)

(assert (=> b!1091241 (= e!623266 e!623272)))

(declare-fun res!728149 () Bool)

(assert (=> b!1091241 (=> (not res!728149) (not e!623272))))

(declare-fun lt!487269 () array!70486)

(assert (=> b!1091241 (= res!728149 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!487269 mask!1414))))

(assert (=> b!1091241 (= lt!487269 (array!70487 (store (arr!33913 _keys!1070) i!650 #b1000000000000000000000000000000000000000000000000000000000000000) (size!34450 _keys!1070)))))

(declare-fun mapIsEmpty!41953 () Bool)

(assert (=> mapIsEmpty!41953 mapRes!41953))

(declare-fun b!1091242 () Bool)

(declare-fun e!623265 () Bool)

(assert (=> b!1091242 (= e!623265 e!623269)))

(declare-fun res!728153 () Bool)

(assert (=> b!1091242 (=> res!728153 e!623269)))

(assert (=> b!1091242 (= res!728153 (= #b1000000000000000000000000000000000000000000000000000000000000000 k0!904))))

(declare-fun lt!487263 () ListLongMap!15167)

(assert (=> b!1091242 (= lt!487263 lt!487268)))

(declare-fun lt!487261 () tuple2!17186)

(declare-fun +!3306 (ListLongMap!15167 tuple2!17186) ListLongMap!15167)

(assert (=> b!1091242 (= lt!487268 (+!3306 lt!487264 lt!487261))))

(declare-fun lt!487270 () ListLongMap!15167)

(assert (=> b!1091242 (= lt!487270 lt!487271)))

(declare-fun lt!487260 () ListLongMap!15167)

(assert (=> b!1091242 (= lt!487271 (+!3306 lt!487260 lt!487261))))

(declare-fun lt!487259 () ListLongMap!15167)

(assert (=> b!1091242 (= lt!487270 (+!3306 lt!487259 lt!487261))))

(assert (=> b!1091242 (= lt!487261 (tuple2!17187 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!831))))

(declare-fun mapNonEmpty!41953 () Bool)

(declare-fun tp!80241 () Bool)

(assert (=> mapNonEmpty!41953 (= mapRes!41953 (and tp!80241 e!623267))))

(declare-fun mapKey!41953 () (_ BitVec 32))

(declare-fun mapRest!41953 () (Array (_ BitVec 32) ValueCell!12690))

(declare-fun mapValue!41953 () ValueCell!12690)

(assert (=> mapNonEmpty!41953 (= (arr!33912 _values!874) (store mapRest!41953 mapKey!41953 mapValue!41953))))

(declare-fun b!1091243 () Bool)

(declare-fun res!728144 () Bool)

(assert (=> b!1091243 (=> (not res!728144) (not e!623266))))

(declare-datatypes ((List!23826 0))(
  ( (Nil!23823) (Cons!23822 (h!25031 (_ BitVec 64)) (t!33688 List!23826)) )
))
(declare-fun arrayNoDuplicates!0 (array!70486 (_ BitVec 32) List!23826) Bool)

(assert (=> b!1091243 (= res!728144 (arrayNoDuplicates!0 _keys!1070 #b00000000000000000000000000000000 Nil!23823))))

(declare-fun b!1091244 () Bool)

(assert (=> b!1091244 (= e!623272 (not e!623265))))

(declare-fun res!728147 () Bool)

(assert (=> b!1091244 (=> res!728147 e!623265)))

(assert (=> b!1091244 (= res!728147 (or (not (= (bvand extraKeys!811 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeys!811 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun defaultEntry!882 () Int)

(declare-fun zeroValue!831 () V!40859)

(declare-fun getCurrentListMap!4336 (array!70486 array!70484 (_ BitVec 32) (_ BitVec 32) V!40859 V!40859 (_ BitVec 32) Int) ListLongMap!15167)

(assert (=> b!1091244 (= lt!487263 (getCurrentListMap!4336 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun lt!487267 () array!70484)

(assert (=> b!1091244 (= lt!487270 (getCurrentListMap!4336 lt!487269 lt!487267 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(assert (=> b!1091244 (and (= lt!487259 lt!487260) (= lt!487260 lt!487259))))

(assert (=> b!1091244 (= lt!487260 (-!876 lt!487264 k0!904))))

(declare-fun lt!487262 () Unit!35867)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!142 (array!70486 array!70484 (_ BitVec 32) (_ BitVec 32) V!40859 V!40859 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!35867)

(assert (=> b!1091244 (= lt!487262 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!142 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 i!650 k0!904 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun getCurrentListMapNoExtraKeys!4088 (array!70486 array!70484 (_ BitVec 32) (_ BitVec 32) V!40859 V!40859 (_ BitVec 32) Int) ListLongMap!15167)

(assert (=> b!1091244 (= lt!487259 (getCurrentListMapNoExtraKeys!4088 lt!487269 lt!487267 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun dynLambda!2224 (Int (_ BitVec 64)) V!40859)

(assert (=> b!1091244 (= lt!487267 (array!70485 (store (arr!33912 _values!874) i!650 (ValueCellFull!12690 (dynLambda!2224 defaultEntry!882 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!34449 _values!874)))))

(assert (=> b!1091244 (= lt!487264 (getCurrentListMapNoExtraKeys!4088 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun arrayContainsKey!0 (array!70486 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1091244 (arrayContainsKey!0 _keys!1070 k0!904 #b00000000000000000000000000000000)))

(declare-fun lt!487265 () Unit!35867)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!70486 (_ BitVec 64) (_ BitVec 32)) Unit!35867)

(assert (=> b!1091244 (= lt!487265 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1070 k0!904 i!650))))

(declare-fun b!1091245 () Bool)

(declare-fun res!728145 () Bool)

(assert (=> b!1091245 (=> (not res!728145) (not e!623266))))

(assert (=> b!1091245 (= res!728145 (and (bvsge i!650 #b00000000000000000000000000000000) (bvslt i!650 (size!34450 _keys!1070))))))

(declare-fun b!1091246 () Bool)

(assert (=> b!1091246 (= e!623271 tp_is_empty!26799)))

(declare-fun b!1091236 () Bool)

(declare-fun res!728151 () Bool)

(assert (=> b!1091236 (=> (not res!728151) (not e!623272))))

(assert (=> b!1091236 (= res!728151 (arrayNoDuplicates!0 lt!487269 #b00000000000000000000000000000000 Nil!23823))))

(declare-fun res!728152 () Bool)

(assert (=> start!96180 (=> (not res!728152) (not e!623266))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!96180 (= res!728152 (validMask!0 mask!1414))))

(assert (=> start!96180 e!623266))

(assert (=> start!96180 tp!80240))

(assert (=> start!96180 true))

(assert (=> start!96180 tp_is_empty!26799))

(declare-fun array_inv!26008 (array!70486) Bool)

(assert (=> start!96180 (array_inv!26008 _keys!1070)))

(declare-fun array_inv!26009 (array!70484) Bool)

(assert (=> start!96180 (and (array_inv!26009 _values!874) e!623270)))

(assert (= (and start!96180 res!728152) b!1091235))

(assert (= (and b!1091235 res!728148) b!1091240))

(assert (= (and b!1091240 res!728143) b!1091243))

(assert (= (and b!1091243 res!728144) b!1091245))

(assert (= (and b!1091245 res!728145) b!1091233))

(assert (= (and b!1091233 res!728146) b!1091239))

(assert (= (and b!1091239 res!728150) b!1091241))

(assert (= (and b!1091241 res!728149) b!1091236))

(assert (= (and b!1091236 res!728151) b!1091244))

(assert (= (and b!1091244 (not res!728147)) b!1091242))

(assert (= (and b!1091242 (not res!728153)) b!1091238))

(assert (= (and b!1091234 condMapEmpty!41953) mapIsEmpty!41953))

(assert (= (and b!1091234 (not condMapEmpty!41953)) mapNonEmpty!41953))

(get-info :version)

(assert (= (and mapNonEmpty!41953 ((_ is ValueCellFull!12690) mapValue!41953)) b!1091237))

(assert (= (and b!1091234 ((_ is ValueCellFull!12690) mapDefault!41953)) b!1091246))

(assert (= start!96180 b!1091234))

(declare-fun b_lambda!17497 () Bool)

(assert (=> (not b_lambda!17497) (not b!1091244)))

(declare-fun t!33686 () Bool)

(declare-fun tb!7683 () Bool)

(assert (=> (and start!96180 (= defaultEntry!882 defaultEntry!882) t!33686) tb!7683))

(declare-fun result!15877 () Bool)

(assert (=> tb!7683 (= result!15877 tp_is_empty!26799)))

(assert (=> b!1091244 t!33686))

(declare-fun b_and!36289 () Bool)

(assert (= b_and!36287 (and (=> t!33686 result!15877) b_and!36289)))

(declare-fun m!1010929 () Bool)

(assert (=> b!1091241 m!1010929))

(declare-fun m!1010931 () Bool)

(assert (=> b!1091241 m!1010931))

(declare-fun m!1010933 () Bool)

(assert (=> b!1091233 m!1010933))

(declare-fun m!1010935 () Bool)

(assert (=> b!1091236 m!1010935))

(declare-fun m!1010937 () Bool)

(assert (=> b!1091243 m!1010937))

(declare-fun m!1010939 () Bool)

(assert (=> b!1091238 m!1010939))

(declare-fun m!1010941 () Bool)

(assert (=> b!1091238 m!1010941))

(declare-fun m!1010943 () Bool)

(assert (=> b!1091242 m!1010943))

(declare-fun m!1010945 () Bool)

(assert (=> b!1091242 m!1010945))

(declare-fun m!1010947 () Bool)

(assert (=> b!1091242 m!1010947))

(declare-fun m!1010949 () Bool)

(assert (=> b!1091244 m!1010949))

(declare-fun m!1010951 () Bool)

(assert (=> b!1091244 m!1010951))

(declare-fun m!1010953 () Bool)

(assert (=> b!1091244 m!1010953))

(declare-fun m!1010955 () Bool)

(assert (=> b!1091244 m!1010955))

(declare-fun m!1010957 () Bool)

(assert (=> b!1091244 m!1010957))

(declare-fun m!1010959 () Bool)

(assert (=> b!1091244 m!1010959))

(declare-fun m!1010961 () Bool)

(assert (=> b!1091244 m!1010961))

(declare-fun m!1010963 () Bool)

(assert (=> b!1091244 m!1010963))

(declare-fun m!1010965 () Bool)

(assert (=> b!1091244 m!1010965))

(declare-fun m!1010967 () Bool)

(assert (=> b!1091244 m!1010967))

(declare-fun m!1010969 () Bool)

(assert (=> start!96180 m!1010969))

(declare-fun m!1010971 () Bool)

(assert (=> start!96180 m!1010971))

(declare-fun m!1010973 () Bool)

(assert (=> start!96180 m!1010973))

(declare-fun m!1010975 () Bool)

(assert (=> b!1091239 m!1010975))

(declare-fun m!1010977 () Bool)

(assert (=> b!1091240 m!1010977))

(declare-fun m!1010979 () Bool)

(assert (=> mapNonEmpty!41953 m!1010979))

(check-sat (not b!1091243) (not b!1091236) (not mapNonEmpty!41953) (not b!1091241) (not b!1091242) (not b!1091244) tp_is_empty!26799 (not b!1091240) (not b_next!22797) b_and!36289 (not b_lambda!17497) (not b!1091238) (not start!96180) (not b!1091233))
(check-sat b_and!36289 (not b_next!22797))
