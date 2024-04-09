; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!96666 () Bool)

(assert start!96666)

(declare-fun b_free!23103 () Bool)

(declare-fun b_next!23103 () Bool)

(assert (=> start!96666 (= b_free!23103 (not b_next!23103))))

(declare-fun tp!81248 () Bool)

(declare-fun b_and!36943 () Bool)

(assert (=> start!96666 (= tp!81248 b_and!36943)))

(declare-fun b!1098908 () Bool)

(declare-fun res!733444 () Bool)

(declare-fun e!627257 () Bool)

(assert (=> b!1098908 (=> (not res!733444) (not e!627257))))

(declare-datatypes ((array!71174 0))(
  ( (array!71175 (arr!34251 (Array (_ BitVec 32) (_ BitVec 64))) (size!34788 (_ BitVec 32))) )
))
(declare-fun _keys!1070 () array!71174)

(declare-fun k0!904 () (_ BitVec 64))

(declare-fun i!650 () (_ BitVec 32))

(assert (=> b!1098908 (= res!733444 (= (select (arr!34251 _keys!1070) i!650) k0!904))))

(declare-fun b!1098910 () Bool)

(declare-fun res!733449 () Bool)

(declare-fun e!627256 () Bool)

(assert (=> b!1098910 (=> (not res!733449) (not e!627256))))

(declare-fun lt!491856 () array!71174)

(declare-datatypes ((List!24063 0))(
  ( (Nil!24060) (Cons!24059 (h!25268 (_ BitVec 64)) (t!34219 List!24063)) )
))
(declare-fun arrayNoDuplicates!0 (array!71174 (_ BitVec 32) List!24063) Bool)

(assert (=> b!1098910 (= res!733449 (arrayNoDuplicates!0 lt!491856 #b00000000000000000000000000000000 Nil!24060))))

(declare-fun b!1098911 () Bool)

(declare-fun e!627255 () Bool)

(declare-fun tp_is_empty!27153 () Bool)

(assert (=> b!1098911 (= e!627255 tp_is_empty!27153)))

(declare-fun b!1098912 () Bool)

(declare-fun res!733448 () Bool)

(assert (=> b!1098912 (=> (not res!733448) (not e!627257))))

(declare-fun mask!1414 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!71174 (_ BitVec 32)) Bool)

(assert (=> b!1098912 (= res!733448 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1070 mask!1414))))

(declare-fun b!1098913 () Bool)

(declare-fun res!733451 () Bool)

(assert (=> b!1098913 (=> (not res!733451) (not e!627257))))

(assert (=> b!1098913 (= res!733451 (and (bvsge i!650 #b00000000000000000000000000000000) (bvslt i!650 (size!34788 _keys!1070))))))

(declare-fun b!1098914 () Bool)

(declare-fun res!733445 () Bool)

(assert (=> b!1098914 (=> (not res!733445) (not e!627257))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1098914 (= res!733445 (validKeyInArray!0 k0!904))))

(declare-fun mapNonEmpty!42502 () Bool)

(declare-fun mapRes!42502 () Bool)

(declare-fun tp!81249 () Bool)

(assert (=> mapNonEmpty!42502 (= mapRes!42502 (and tp!81249 e!627255))))

(declare-fun mapKey!42502 () (_ BitVec 32))

(declare-datatypes ((V!41331 0))(
  ( (V!41332 (val!13633 Int)) )
))
(declare-datatypes ((ValueCell!12867 0))(
  ( (ValueCellFull!12867 (v!16259 V!41331)) (EmptyCell!12867) )
))
(declare-datatypes ((array!71176 0))(
  ( (array!71177 (arr!34252 (Array (_ BitVec 32) ValueCell!12867)) (size!34789 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!71176)

(declare-fun mapValue!42502 () ValueCell!12867)

(declare-fun mapRest!42502 () (Array (_ BitVec 32) ValueCell!12867))

(assert (=> mapNonEmpty!42502 (= (arr!34252 _values!874) (store mapRest!42502 mapKey!42502 mapValue!42502))))

(declare-fun b!1098909 () Bool)

(assert (=> b!1098909 (= e!627257 e!627256)))

(declare-fun res!733447 () Bool)

(assert (=> b!1098909 (=> (not res!733447) (not e!627256))))

(assert (=> b!1098909 (= res!733447 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!491856 mask!1414))))

(assert (=> b!1098909 (= lt!491856 (array!71175 (store (arr!34251 _keys!1070) i!650 #b1000000000000000000000000000000000000000000000000000000000000000) (size!34788 _keys!1070)))))

(declare-fun res!733446 () Bool)

(assert (=> start!96666 (=> (not res!733446) (not e!627257))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!96666 (= res!733446 (validMask!0 mask!1414))))

(assert (=> start!96666 e!627257))

(assert (=> start!96666 tp!81248))

(assert (=> start!96666 true))

(assert (=> start!96666 tp_is_empty!27153))

(declare-fun array_inv!26246 (array!71174) Bool)

(assert (=> start!96666 (array_inv!26246 _keys!1070)))

(declare-fun e!627260 () Bool)

(declare-fun array_inv!26247 (array!71176) Bool)

(assert (=> start!96666 (and (array_inv!26247 _values!874) e!627260)))

(declare-fun b!1098915 () Bool)

(declare-fun e!627258 () Bool)

(assert (=> b!1098915 (= e!627258 (bvslt i!650 (size!34789 _values!874)))))

(declare-datatypes ((tuple2!17388 0))(
  ( (tuple2!17389 (_1!8704 (_ BitVec 64)) (_2!8704 V!41331)) )
))
(declare-datatypes ((List!24064 0))(
  ( (Nil!24061) (Cons!24060 (h!25269 tuple2!17388) (t!34220 List!24064)) )
))
(declare-datatypes ((ListLongMap!15369 0))(
  ( (ListLongMap!15370 (toList!7700 List!24064)) )
))
(declare-fun lt!491847 () ListLongMap!15369)

(declare-fun lt!491860 () tuple2!17388)

(declare-fun lt!491859 () ListLongMap!15369)

(declare-fun -!945 (ListLongMap!15369 (_ BitVec 64)) ListLongMap!15369)

(declare-fun +!3335 (ListLongMap!15369 tuple2!17388) ListLongMap!15369)

(assert (=> b!1098915 (= (-!945 lt!491859 k0!904) (+!3335 lt!491847 lt!491860))))

(declare-fun minValue!831 () V!41331)

(declare-fun lt!491850 () ListLongMap!15369)

(declare-datatypes ((Unit!36077 0))(
  ( (Unit!36078) )
))
(declare-fun lt!491861 () Unit!36077)

(declare-fun addRemoveCommutativeForDiffKeys!126 (ListLongMap!15369 (_ BitVec 64) V!41331 (_ BitVec 64)) Unit!36077)

(assert (=> b!1098915 (= lt!491861 (addRemoveCommutativeForDiffKeys!126 lt!491850 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!831 k0!904))))

(declare-fun b!1098916 () Bool)

(declare-fun res!733452 () Bool)

(assert (=> b!1098916 (=> (not res!733452) (not e!627257))))

(declare-fun extraKeys!811 () (_ BitVec 32))

(assert (=> b!1098916 (= res!733452 (and (= (size!34789 _values!874) (bvadd #b00000000000000000000000000000001 mask!1414)) (= (size!34788 _keys!1070) (size!34789 _values!874)) (bvsge mask!1414 #b00000000000000000000000000000000) (bvsge extraKeys!811 #b00000000000000000000000000000000) (bvsle extraKeys!811 #b00000000000000000000000000000011)))))

(declare-fun b!1098917 () Bool)

(declare-fun e!627254 () Bool)

(assert (=> b!1098917 (= e!627254 tp_is_empty!27153)))

(declare-fun b!1098918 () Bool)

(assert (=> b!1098918 (= e!627260 (and e!627254 mapRes!42502))))

(declare-fun condMapEmpty!42502 () Bool)

(declare-fun mapDefault!42502 () ValueCell!12867)

(assert (=> b!1098918 (= condMapEmpty!42502 (= (arr!34252 _values!874) ((as const (Array (_ BitVec 32) ValueCell!12867)) mapDefault!42502)))))

(declare-fun mapIsEmpty!42502 () Bool)

(assert (=> mapIsEmpty!42502 mapRes!42502))

(declare-fun b!1098919 () Bool)

(declare-fun res!733453 () Bool)

(assert (=> b!1098919 (=> (not res!733453) (not e!627257))))

(assert (=> b!1098919 (= res!733453 (arrayNoDuplicates!0 _keys!1070 #b00000000000000000000000000000000 Nil!24060))))

(declare-fun b!1098920 () Bool)

(declare-fun e!627253 () Bool)

(assert (=> b!1098920 (= e!627253 e!627258)))

(declare-fun res!733443 () Bool)

(assert (=> b!1098920 (=> res!733443 e!627258)))

(assert (=> b!1098920 (= res!733443 (= #b1000000000000000000000000000000000000000000000000000000000000000 k0!904))))

(declare-fun lt!491862 () ListLongMap!15369)

(assert (=> b!1098920 (= lt!491847 lt!491862)))

(assert (=> b!1098920 (= lt!491847 (-!945 lt!491850 k0!904))))

(declare-fun lt!491853 () ListLongMap!15369)

(declare-fun lt!491858 () Unit!36077)

(declare-fun zeroValue!831 () V!41331)

(assert (=> b!1098920 (= lt!491858 (addRemoveCommutativeForDiffKeys!126 lt!491853 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!831 k0!904))))

(declare-fun lt!491857 () ListLongMap!15369)

(assert (=> b!1098920 (= lt!491857 (+!3335 lt!491862 lt!491860))))

(declare-fun lt!491849 () ListLongMap!15369)

(declare-fun lt!491851 () tuple2!17388)

(assert (=> b!1098920 (= lt!491862 (+!3335 lt!491849 lt!491851))))

(declare-fun lt!491854 () ListLongMap!15369)

(assert (=> b!1098920 (= lt!491854 lt!491859)))

(assert (=> b!1098920 (= lt!491859 (+!3335 lt!491850 lt!491860))))

(assert (=> b!1098920 (= lt!491850 (+!3335 lt!491853 lt!491851))))

(declare-fun lt!491855 () ListLongMap!15369)

(assert (=> b!1098920 (= lt!491857 (+!3335 (+!3335 lt!491855 lt!491851) lt!491860))))

(assert (=> b!1098920 (= lt!491860 (tuple2!17389 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!831))))

(assert (=> b!1098920 (= lt!491851 (tuple2!17389 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!831))))

(declare-fun b!1098921 () Bool)

(assert (=> b!1098921 (= e!627256 (not e!627253))))

(declare-fun res!733450 () Bool)

(assert (=> b!1098921 (=> res!733450 e!627253)))

(assert (=> b!1098921 (= res!733450 (or (= (bvand extraKeys!811 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (= (bvand extraKeys!811 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun defaultEntry!882 () Int)

(declare-fun getCurrentListMap!4394 (array!71174 array!71176 (_ BitVec 32) (_ BitVec 32) V!41331 V!41331 (_ BitVec 32) Int) ListLongMap!15369)

(assert (=> b!1098921 (= lt!491854 (getCurrentListMap!4394 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun lt!491852 () array!71176)

(assert (=> b!1098921 (= lt!491857 (getCurrentListMap!4394 lt!491856 lt!491852 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(assert (=> b!1098921 (and (= lt!491855 lt!491849) (= lt!491849 lt!491855))))

(assert (=> b!1098921 (= lt!491849 (-!945 lt!491853 k0!904))))

(declare-fun lt!491848 () Unit!36077)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!206 (array!71174 array!71176 (_ BitVec 32) (_ BitVec 32) V!41331 V!41331 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!36077)

(assert (=> b!1098921 (= lt!491848 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!206 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 i!650 k0!904 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun getCurrentListMapNoExtraKeys!4181 (array!71174 array!71176 (_ BitVec 32) (_ BitVec 32) V!41331 V!41331 (_ BitVec 32) Int) ListLongMap!15369)

(assert (=> b!1098921 (= lt!491855 (getCurrentListMapNoExtraKeys!4181 lt!491856 lt!491852 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun dynLambda!2312 (Int (_ BitVec 64)) V!41331)

(assert (=> b!1098921 (= lt!491852 (array!71177 (store (arr!34252 _values!874) i!650 (ValueCellFull!12867 (dynLambda!2312 defaultEntry!882 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!34789 _values!874)))))

(assert (=> b!1098921 (= lt!491853 (getCurrentListMapNoExtraKeys!4181 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun arrayContainsKey!0 (array!71174 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1098921 (arrayContainsKey!0 _keys!1070 k0!904 #b00000000000000000000000000000000)))

(declare-fun lt!491863 () Unit!36077)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!71174 (_ BitVec 64) (_ BitVec 32)) Unit!36077)

(assert (=> b!1098921 (= lt!491863 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1070 k0!904 i!650))))

(assert (= (and start!96666 res!733446) b!1098916))

(assert (= (and b!1098916 res!733452) b!1098912))

(assert (= (and b!1098912 res!733448) b!1098919))

(assert (= (and b!1098919 res!733453) b!1098913))

(assert (= (and b!1098913 res!733451) b!1098914))

(assert (= (and b!1098914 res!733445) b!1098908))

(assert (= (and b!1098908 res!733444) b!1098909))

(assert (= (and b!1098909 res!733447) b!1098910))

(assert (= (and b!1098910 res!733449) b!1098921))

(assert (= (and b!1098921 (not res!733450)) b!1098920))

(assert (= (and b!1098920 (not res!733443)) b!1098915))

(assert (= (and b!1098918 condMapEmpty!42502) mapIsEmpty!42502))

(assert (= (and b!1098918 (not condMapEmpty!42502)) mapNonEmpty!42502))

(get-info :version)

(assert (= (and mapNonEmpty!42502 ((_ is ValueCellFull!12867) mapValue!42502)) b!1098911))

(assert (= (and b!1098918 ((_ is ValueCellFull!12867) mapDefault!42502)) b!1098917))

(assert (= start!96666 b!1098918))

(declare-fun b_lambda!17911 () Bool)

(assert (=> (not b_lambda!17911) (not b!1098921)))

(declare-fun t!34218 () Bool)

(declare-fun tb!7977 () Bool)

(assert (=> (and start!96666 (= defaultEntry!882 defaultEntry!882) t!34218) tb!7977))

(declare-fun result!16477 () Bool)

(assert (=> tb!7977 (= result!16477 tp_is_empty!27153)))

(assert (=> b!1098921 t!34218))

(declare-fun b_and!36945 () Bool)

(assert (= b_and!36943 (and (=> t!34218 result!16477) b_and!36945)))

(declare-fun m!1018903 () Bool)

(assert (=> b!1098912 m!1018903))

(declare-fun m!1018905 () Bool)

(assert (=> b!1098919 m!1018905))

(declare-fun m!1018907 () Bool)

(assert (=> start!96666 m!1018907))

(declare-fun m!1018909 () Bool)

(assert (=> start!96666 m!1018909))

(declare-fun m!1018911 () Bool)

(assert (=> start!96666 m!1018911))

(declare-fun m!1018913 () Bool)

(assert (=> b!1098920 m!1018913))

(declare-fun m!1018915 () Bool)

(assert (=> b!1098920 m!1018915))

(assert (=> b!1098920 m!1018913))

(declare-fun m!1018917 () Bool)

(assert (=> b!1098920 m!1018917))

(declare-fun m!1018919 () Bool)

(assert (=> b!1098920 m!1018919))

(declare-fun m!1018921 () Bool)

(assert (=> b!1098920 m!1018921))

(declare-fun m!1018923 () Bool)

(assert (=> b!1098920 m!1018923))

(declare-fun m!1018925 () Bool)

(assert (=> b!1098920 m!1018925))

(declare-fun m!1018927 () Bool)

(assert (=> b!1098920 m!1018927))

(declare-fun m!1018929 () Bool)

(assert (=> b!1098908 m!1018929))

(declare-fun m!1018931 () Bool)

(assert (=> mapNonEmpty!42502 m!1018931))

(declare-fun m!1018933 () Bool)

(assert (=> b!1098914 m!1018933))

(declare-fun m!1018935 () Bool)

(assert (=> b!1098921 m!1018935))

(declare-fun m!1018937 () Bool)

(assert (=> b!1098921 m!1018937))

(declare-fun m!1018939 () Bool)

(assert (=> b!1098921 m!1018939))

(declare-fun m!1018941 () Bool)

(assert (=> b!1098921 m!1018941))

(declare-fun m!1018943 () Bool)

(assert (=> b!1098921 m!1018943))

(declare-fun m!1018945 () Bool)

(assert (=> b!1098921 m!1018945))

(declare-fun m!1018947 () Bool)

(assert (=> b!1098921 m!1018947))

(declare-fun m!1018949 () Bool)

(assert (=> b!1098921 m!1018949))

(declare-fun m!1018951 () Bool)

(assert (=> b!1098921 m!1018951))

(declare-fun m!1018953 () Bool)

(assert (=> b!1098921 m!1018953))

(declare-fun m!1018955 () Bool)

(assert (=> b!1098915 m!1018955))

(declare-fun m!1018957 () Bool)

(assert (=> b!1098915 m!1018957))

(declare-fun m!1018959 () Bool)

(assert (=> b!1098915 m!1018959))

(declare-fun m!1018961 () Bool)

(assert (=> b!1098909 m!1018961))

(declare-fun m!1018963 () Bool)

(assert (=> b!1098909 m!1018963))

(declare-fun m!1018965 () Bool)

(assert (=> b!1098910 m!1018965))

(check-sat (not b!1098909) (not start!96666) (not b!1098914) (not b!1098921) tp_is_empty!27153 (not b!1098912) (not b!1098920) (not b!1098915) (not b!1098919) (not b_next!23103) (not b_lambda!17911) (not b!1098910) b_and!36945 (not mapNonEmpty!42502))
(check-sat b_and!36945 (not b_next!23103))
