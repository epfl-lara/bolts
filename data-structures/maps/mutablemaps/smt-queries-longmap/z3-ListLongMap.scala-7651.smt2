; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!96264 () Bool)

(assert start!96264)

(declare-fun b_free!22881 () Bool)

(declare-fun b_next!22881 () Bool)

(assert (=> start!96264 (= b_free!22881 (not b_next!22881))))

(declare-fun tp!80492 () Bool)

(declare-fun b_and!36455 () Bool)

(assert (=> start!96264 (= tp!80492 b_and!36455)))

(declare-fun mapNonEmpty!42079 () Bool)

(declare-fun mapRes!42079 () Bool)

(declare-fun tp!80493 () Bool)

(declare-fun e!624156 () Bool)

(assert (=> mapNonEmpty!42079 (= mapRes!42079 (and tp!80493 e!624156))))

(declare-datatypes ((V!40971 0))(
  ( (V!40972 (val!13498 Int)) )
))
(declare-datatypes ((ValueCell!12732 0))(
  ( (ValueCellFull!12732 (v!16120 V!40971)) (EmptyCell!12732) )
))
(declare-datatypes ((array!70640 0))(
  ( (array!70641 (arr!33990 (Array (_ BitVec 32) ValueCell!12732)) (size!34527 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!70640)

(declare-fun mapValue!42079 () ValueCell!12732)

(declare-fun mapKey!42079 () (_ BitVec 32))

(declare-fun mapRest!42079 () (Array (_ BitVec 32) ValueCell!12732))

(assert (=> mapNonEmpty!42079 (= (arr!33990 _values!874) (store mapRest!42079 mapKey!42079 mapValue!42079))))

(declare-fun res!729416 () Bool)

(declare-fun e!624159 () Bool)

(assert (=> start!96264 (=> (not res!729416) (not e!624159))))

(declare-fun mask!1414 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!96264 (= res!729416 (validMask!0 mask!1414))))

(assert (=> start!96264 e!624159))

(assert (=> start!96264 tp!80492))

(assert (=> start!96264 true))

(declare-fun tp_is_empty!26883 () Bool)

(assert (=> start!96264 tp_is_empty!26883))

(declare-datatypes ((array!70642 0))(
  ( (array!70643 (arr!33991 (Array (_ BitVec 32) (_ BitVec 64))) (size!34528 (_ BitVec 32))) )
))
(declare-fun _keys!1070 () array!70642)

(declare-fun array_inv!26052 (array!70642) Bool)

(assert (=> start!96264 (array_inv!26052 _keys!1070)))

(declare-fun e!624155 () Bool)

(declare-fun array_inv!26053 (array!70640) Bool)

(assert (=> start!96264 (and (array_inv!26053 _values!874) e!624155)))

(declare-fun b!1092963 () Bool)

(declare-fun e!624157 () Bool)

(assert (=> b!1092963 (= e!624155 (and e!624157 mapRes!42079))))

(declare-fun condMapEmpty!42079 () Bool)

(declare-fun mapDefault!42079 () ValueCell!12732)

(assert (=> b!1092963 (= condMapEmpty!42079 (= (arr!33990 _values!874) ((as const (Array (_ BitVec 32) ValueCell!12732)) mapDefault!42079)))))

(declare-fun b!1092964 () Bool)

(assert (=> b!1092964 (= e!624156 tp_is_empty!26883)))

(declare-fun b!1092965 () Bool)

(declare-fun res!729418 () Bool)

(declare-fun e!624158 () Bool)

(assert (=> b!1092965 (=> (not res!729418) (not e!624158))))

(declare-fun lt!488665 () array!70642)

(declare-datatypes ((List!23881 0))(
  ( (Nil!23878) (Cons!23877 (h!25086 (_ BitVec 64)) (t!33827 List!23881)) )
))
(declare-fun arrayNoDuplicates!0 (array!70642 (_ BitVec 32) List!23881) Bool)

(assert (=> b!1092965 (= res!729418 (arrayNoDuplicates!0 lt!488665 #b00000000000000000000000000000000 Nil!23878))))

(declare-fun mapIsEmpty!42079 () Bool)

(assert (=> mapIsEmpty!42079 mapRes!42079))

(declare-fun b!1092966 () Bool)

(declare-fun res!729419 () Bool)

(assert (=> b!1092966 (=> (not res!729419) (not e!624159))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!70642 (_ BitVec 32)) Bool)

(assert (=> b!1092966 (= res!729419 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1070 mask!1414))))

(declare-fun b!1092967 () Bool)

(assert (=> b!1092967 (= e!624157 tp_is_empty!26883)))

(declare-fun b!1092968 () Bool)

(declare-fun res!729413 () Bool)

(assert (=> b!1092968 (=> (not res!729413) (not e!624159))))

(declare-fun k0!904 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1092968 (= res!729413 (validKeyInArray!0 k0!904))))

(declare-fun b!1092969 () Bool)

(assert (=> b!1092969 (= e!624158 (not true))))

(declare-fun defaultEntry!882 () Int)

(declare-fun minValue!831 () V!40971)

(declare-fun extraKeys!811 () (_ BitVec 32))

(declare-datatypes ((tuple2!17238 0))(
  ( (tuple2!17239 (_1!8629 (_ BitVec 64)) (_2!8629 V!40971)) )
))
(declare-datatypes ((List!23882 0))(
  ( (Nil!23879) (Cons!23878 (h!25087 tuple2!17238) (t!33828 List!23882)) )
))
(declare-datatypes ((ListLongMap!15219 0))(
  ( (ListLongMap!15220 (toList!7625 List!23882)) )
))
(declare-fun lt!488669 () ListLongMap!15219)

(declare-fun zeroValue!831 () V!40971)

(declare-fun getCurrentListMap!4360 (array!70642 array!70640 (_ BitVec 32) (_ BitVec 32) V!40971 V!40971 (_ BitVec 32) Int) ListLongMap!15219)

(assert (=> b!1092969 (= lt!488669 (getCurrentListMap!4360 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun lt!488666 () ListLongMap!15219)

(declare-fun lt!488664 () array!70640)

(assert (=> b!1092969 (= lt!488666 (getCurrentListMap!4360 lt!488665 lt!488664 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun lt!488662 () ListLongMap!15219)

(declare-fun lt!488667 () ListLongMap!15219)

(assert (=> b!1092969 (and (= lt!488662 lt!488667) (= lt!488667 lt!488662))))

(declare-fun lt!488668 () ListLongMap!15219)

(declare-fun -!901 (ListLongMap!15219 (_ BitVec 64)) ListLongMap!15219)

(assert (=> b!1092969 (= lt!488667 (-!901 lt!488668 k0!904))))

(declare-datatypes ((Unit!35917 0))(
  ( (Unit!35918) )
))
(declare-fun lt!488663 () Unit!35917)

(declare-fun i!650 () (_ BitVec 32))

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!166 (array!70642 array!70640 (_ BitVec 32) (_ BitVec 32) V!40971 V!40971 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!35917)

(assert (=> b!1092969 (= lt!488663 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!166 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 i!650 k0!904 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun getCurrentListMapNoExtraKeys!4112 (array!70642 array!70640 (_ BitVec 32) (_ BitVec 32) V!40971 V!40971 (_ BitVec 32) Int) ListLongMap!15219)

(assert (=> b!1092969 (= lt!488662 (getCurrentListMapNoExtraKeys!4112 lt!488665 lt!488664 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun dynLambda!2248 (Int (_ BitVec 64)) V!40971)

(assert (=> b!1092969 (= lt!488664 (array!70641 (store (arr!33990 _values!874) i!650 (ValueCellFull!12732 (dynLambda!2248 defaultEntry!882 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!34527 _values!874)))))

(assert (=> b!1092969 (= lt!488668 (getCurrentListMapNoExtraKeys!4112 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun arrayContainsKey!0 (array!70642 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1092969 (arrayContainsKey!0 _keys!1070 k0!904 #b00000000000000000000000000000000)))

(declare-fun lt!488661 () Unit!35917)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!70642 (_ BitVec 64) (_ BitVec 32)) Unit!35917)

(assert (=> b!1092969 (= lt!488661 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1070 k0!904 i!650))))

(declare-fun b!1092970 () Bool)

(declare-fun res!729414 () Bool)

(assert (=> b!1092970 (=> (not res!729414) (not e!624159))))

(assert (=> b!1092970 (= res!729414 (arrayNoDuplicates!0 _keys!1070 #b00000000000000000000000000000000 Nil!23878))))

(declare-fun b!1092971 () Bool)

(declare-fun res!729415 () Bool)

(assert (=> b!1092971 (=> (not res!729415) (not e!624159))))

(assert (=> b!1092971 (= res!729415 (= (select (arr!33991 _keys!1070) i!650) k0!904))))

(declare-fun b!1092972 () Bool)

(assert (=> b!1092972 (= e!624159 e!624158)))

(declare-fun res!729411 () Bool)

(assert (=> b!1092972 (=> (not res!729411) (not e!624158))))

(assert (=> b!1092972 (= res!729411 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!488665 mask!1414))))

(assert (=> b!1092972 (= lt!488665 (array!70643 (store (arr!33991 _keys!1070) i!650 #b1000000000000000000000000000000000000000000000000000000000000000) (size!34528 _keys!1070)))))

(declare-fun b!1092973 () Bool)

(declare-fun res!729417 () Bool)

(assert (=> b!1092973 (=> (not res!729417) (not e!624159))))

(assert (=> b!1092973 (= res!729417 (and (bvsge i!650 #b00000000000000000000000000000000) (bvslt i!650 (size!34528 _keys!1070))))))

(declare-fun b!1092974 () Bool)

(declare-fun res!729412 () Bool)

(assert (=> b!1092974 (=> (not res!729412) (not e!624159))))

(assert (=> b!1092974 (= res!729412 (and (= (size!34527 _values!874) (bvadd #b00000000000000000000000000000001 mask!1414)) (= (size!34528 _keys!1070) (size!34527 _values!874)) (bvsge mask!1414 #b00000000000000000000000000000000) (bvsge extraKeys!811 #b00000000000000000000000000000000) (bvsle extraKeys!811 #b00000000000000000000000000000011)))))

(assert (= (and start!96264 res!729416) b!1092974))

(assert (= (and b!1092974 res!729412) b!1092966))

(assert (= (and b!1092966 res!729419) b!1092970))

(assert (= (and b!1092970 res!729414) b!1092973))

(assert (= (and b!1092973 res!729417) b!1092968))

(assert (= (and b!1092968 res!729413) b!1092971))

(assert (= (and b!1092971 res!729415) b!1092972))

(assert (= (and b!1092972 res!729411) b!1092965))

(assert (= (and b!1092965 res!729418) b!1092969))

(assert (= (and b!1092963 condMapEmpty!42079) mapIsEmpty!42079))

(assert (= (and b!1092963 (not condMapEmpty!42079)) mapNonEmpty!42079))

(get-info :version)

(assert (= (and mapNonEmpty!42079 ((_ is ValueCellFull!12732) mapValue!42079)) b!1092964))

(assert (= (and b!1092963 ((_ is ValueCellFull!12732) mapDefault!42079)) b!1092967))

(assert (= start!96264 b!1092963))

(declare-fun b_lambda!17581 () Bool)

(assert (=> (not b_lambda!17581) (not b!1092969)))

(declare-fun t!33826 () Bool)

(declare-fun tb!7767 () Bool)

(assert (=> (and start!96264 (= defaultEntry!882 defaultEntry!882) t!33826) tb!7767))

(declare-fun result!16045 () Bool)

(assert (=> tb!7767 (= result!16045 tp_is_empty!26883)))

(assert (=> b!1092969 t!33826))

(declare-fun b_and!36457 () Bool)

(assert (= b_and!36455 (and (=> t!33826 result!16045) b_and!36457)))

(declare-fun m!1012923 () Bool)

(assert (=> b!1092965 m!1012923))

(declare-fun m!1012925 () Bool)

(assert (=> b!1092970 m!1012925))

(declare-fun m!1012927 () Bool)

(assert (=> b!1092972 m!1012927))

(declare-fun m!1012929 () Bool)

(assert (=> b!1092972 m!1012929))

(declare-fun m!1012931 () Bool)

(assert (=> b!1092971 m!1012931))

(declare-fun m!1012933 () Bool)

(assert (=> start!96264 m!1012933))

(declare-fun m!1012935 () Bool)

(assert (=> start!96264 m!1012935))

(declare-fun m!1012937 () Bool)

(assert (=> start!96264 m!1012937))

(declare-fun m!1012939 () Bool)

(assert (=> b!1092969 m!1012939))

(declare-fun m!1012941 () Bool)

(assert (=> b!1092969 m!1012941))

(declare-fun m!1012943 () Bool)

(assert (=> b!1092969 m!1012943))

(declare-fun m!1012945 () Bool)

(assert (=> b!1092969 m!1012945))

(declare-fun m!1012947 () Bool)

(assert (=> b!1092969 m!1012947))

(declare-fun m!1012949 () Bool)

(assert (=> b!1092969 m!1012949))

(declare-fun m!1012951 () Bool)

(assert (=> b!1092969 m!1012951))

(declare-fun m!1012953 () Bool)

(assert (=> b!1092969 m!1012953))

(declare-fun m!1012955 () Bool)

(assert (=> b!1092969 m!1012955))

(declare-fun m!1012957 () Bool)

(assert (=> b!1092969 m!1012957))

(declare-fun m!1012959 () Bool)

(assert (=> b!1092968 m!1012959))

(declare-fun m!1012961 () Bool)

(assert (=> mapNonEmpty!42079 m!1012961))

(declare-fun m!1012963 () Bool)

(assert (=> b!1092966 m!1012963))

(check-sat (not b!1092969) (not start!96264) (not b_lambda!17581) (not b!1092965) (not mapNonEmpty!42079) (not b_next!22881) (not b!1092970) tp_is_empty!26883 (not b!1092972) b_and!36457 (not b!1092968) (not b!1092966))
(check-sat b_and!36457 (not b_next!22881))
