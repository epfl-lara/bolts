; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!96222 () Bool)

(assert start!96222)

(declare-fun b_free!22839 () Bool)

(declare-fun b_next!22839 () Bool)

(assert (=> start!96222 (= b_free!22839 (not b_next!22839))))

(declare-fun tp!80367 () Bool)

(declare-fun b_and!36371 () Bool)

(assert (=> start!96222 (= tp!80367 b_and!36371)))

(declare-fun b!1092157 () Bool)

(declare-fun res!728837 () Bool)

(declare-fun e!623774 () Bool)

(assert (=> b!1092157 (=> (not res!728837) (not e!623774))))

(declare-fun i!650 () (_ BitVec 32))

(declare-datatypes ((array!70564 0))(
  ( (array!70565 (arr!33952 (Array (_ BitVec 32) (_ BitVec 64))) (size!34489 (_ BitVec 32))) )
))
(declare-fun _keys!1070 () array!70564)

(assert (=> b!1092157 (= res!728837 (and (bvsge i!650 #b00000000000000000000000000000000) (bvslt i!650 (size!34489 _keys!1070))))))

(declare-fun b!1092158 () Bool)

(declare-fun res!728840 () Bool)

(assert (=> b!1092158 (=> (not res!728840) (not e!623774))))

(declare-fun k0!904 () (_ BitVec 64))

(assert (=> b!1092158 (= res!728840 (= (select (arr!33952 _keys!1070) i!650) k0!904))))

(declare-fun b!1092159 () Bool)

(declare-fun e!623770 () Bool)

(declare-fun e!623772 () Bool)

(assert (=> b!1092159 (= e!623770 (not e!623772))))

(declare-fun res!728846 () Bool)

(assert (=> b!1092159 (=> res!728846 e!623772)))

(declare-fun extraKeys!811 () (_ BitVec 32))

(assert (=> b!1092159 (= res!728846 (or (not (= (bvand extraKeys!811 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeys!811 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun defaultEntry!882 () Int)

(declare-datatypes ((V!40915 0))(
  ( (V!40916 (val!13477 Int)) )
))
(declare-fun minValue!831 () V!40915)

(declare-fun mask!1414 () (_ BitVec 32))

(declare-datatypes ((ValueCell!12711 0))(
  ( (ValueCellFull!12711 (v!16099 V!40915)) (EmptyCell!12711) )
))
(declare-datatypes ((array!70566 0))(
  ( (array!70567 (arr!33953 (Array (_ BitVec 32) ValueCell!12711)) (size!34490 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!70566)

(declare-fun zeroValue!831 () V!40915)

(declare-datatypes ((tuple2!17220 0))(
  ( (tuple2!17221 (_1!8620 (_ BitVec 64)) (_2!8620 V!40915)) )
))
(declare-datatypes ((List!23857 0))(
  ( (Nil!23854) (Cons!23853 (h!25062 tuple2!17220) (t!33761 List!23857)) )
))
(declare-datatypes ((ListLongMap!15201 0))(
  ( (ListLongMap!15202 (toList!7616 List!23857)) )
))
(declare-fun lt!488084 () ListLongMap!15201)

(declare-fun getCurrentListMap!4351 (array!70564 array!70566 (_ BitVec 32) (_ BitVec 32) V!40915 V!40915 (_ BitVec 32) Int) ListLongMap!15201)

(assert (=> b!1092159 (= lt!488084 (getCurrentListMap!4351 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun lt!488078 () ListLongMap!15201)

(declare-fun lt!488081 () array!70566)

(declare-fun lt!488085 () array!70564)

(assert (=> b!1092159 (= lt!488078 (getCurrentListMap!4351 lt!488085 lt!488081 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun lt!488090 () ListLongMap!15201)

(declare-fun lt!488079 () ListLongMap!15201)

(assert (=> b!1092159 (and (= lt!488090 lt!488079) (= lt!488079 lt!488090))))

(declare-fun lt!488080 () ListLongMap!15201)

(declare-fun -!892 (ListLongMap!15201 (_ BitVec 64)) ListLongMap!15201)

(assert (=> b!1092159 (= lt!488079 (-!892 lt!488080 k0!904))))

(declare-datatypes ((Unit!35899 0))(
  ( (Unit!35900) )
))
(declare-fun lt!488089 () Unit!35899)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!157 (array!70564 array!70566 (_ BitVec 32) (_ BitVec 32) V!40915 V!40915 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!35899)

(assert (=> b!1092159 (= lt!488089 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!157 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 i!650 k0!904 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun getCurrentListMapNoExtraKeys!4103 (array!70564 array!70566 (_ BitVec 32) (_ BitVec 32) V!40915 V!40915 (_ BitVec 32) Int) ListLongMap!15201)

(assert (=> b!1092159 (= lt!488090 (getCurrentListMapNoExtraKeys!4103 lt!488085 lt!488081 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun dynLambda!2239 (Int (_ BitVec 64)) V!40915)

(assert (=> b!1092159 (= lt!488081 (array!70567 (store (arr!33953 _values!874) i!650 (ValueCellFull!12711 (dynLambda!2239 defaultEntry!882 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!34490 _values!874)))))

(assert (=> b!1092159 (= lt!488080 (getCurrentListMapNoExtraKeys!4103 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun arrayContainsKey!0 (array!70564 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1092159 (arrayContainsKey!0 _keys!1070 k0!904 #b00000000000000000000000000000000)))

(declare-fun lt!488086 () Unit!35899)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!70564 (_ BitVec 64) (_ BitVec 32)) Unit!35899)

(assert (=> b!1092159 (= lt!488086 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1070 k0!904 i!650))))

(declare-fun b!1092160 () Bool)

(declare-fun e!623769 () Bool)

(declare-fun tp_is_empty!26841 () Bool)

(assert (=> b!1092160 (= e!623769 tp_is_empty!26841)))

(declare-fun mapNonEmpty!42016 () Bool)

(declare-fun mapRes!42016 () Bool)

(declare-fun tp!80366 () Bool)

(declare-fun e!623776 () Bool)

(assert (=> mapNonEmpty!42016 (= mapRes!42016 (and tp!80366 e!623776))))

(declare-fun mapKey!42016 () (_ BitVec 32))

(declare-fun mapRest!42016 () (Array (_ BitVec 32) ValueCell!12711))

(declare-fun mapValue!42016 () ValueCell!12711)

(assert (=> mapNonEmpty!42016 (= (arr!33953 _values!874) (store mapRest!42016 mapKey!42016 mapValue!42016))))

(declare-fun b!1092162 () Bool)

(declare-fun res!728838 () Bool)

(assert (=> b!1092162 (=> (not res!728838) (not e!623774))))

(assert (=> b!1092162 (= res!728838 (and (= (size!34490 _values!874) (bvadd #b00000000000000000000000000000001 mask!1414)) (= (size!34489 _keys!1070) (size!34490 _values!874)) (bvsge mask!1414 #b00000000000000000000000000000000) (bvsge extraKeys!811 #b00000000000000000000000000000000) (bvsle extraKeys!811 #b00000000000000000000000000000011)))))

(declare-fun b!1092163 () Bool)

(declare-fun e!623775 () Bool)

(assert (=> b!1092163 (= e!623775 (and e!623769 mapRes!42016))))

(declare-fun condMapEmpty!42016 () Bool)

(declare-fun mapDefault!42016 () ValueCell!12711)

(assert (=> b!1092163 (= condMapEmpty!42016 (= (arr!33953 _values!874) ((as const (Array (_ BitVec 32) ValueCell!12711)) mapDefault!42016)))))

(declare-fun b!1092164 () Bool)

(declare-fun e!623773 () Bool)

(assert (=> b!1092164 (= e!623773 (bvsle #b00000000000000000000000000000000 (size!34489 _keys!1070)))))

(declare-fun lt!488087 () ListLongMap!15201)

(declare-fun lt!488088 () ListLongMap!15201)

(assert (=> b!1092164 (= (-!892 lt!488087 k0!904) lt!488088)))

(declare-fun lt!488083 () Unit!35899)

(declare-fun addRemoveCommutativeForDiffKeys!118 (ListLongMap!15201 (_ BitVec 64) V!40915 (_ BitVec 64)) Unit!35899)

(assert (=> b!1092164 (= lt!488083 (addRemoveCommutativeForDiffKeys!118 lt!488080 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!831 k0!904))))

(declare-fun b!1092165 () Bool)

(declare-fun res!728841 () Bool)

(assert (=> b!1092165 (=> (not res!728841) (not e!623774))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!70564 (_ BitVec 32)) Bool)

(assert (=> b!1092165 (= res!728841 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1070 mask!1414))))

(declare-fun mapIsEmpty!42016 () Bool)

(assert (=> mapIsEmpty!42016 mapRes!42016))

(declare-fun b!1092166 () Bool)

(assert (=> b!1092166 (= e!623772 e!623773)))

(declare-fun res!728836 () Bool)

(assert (=> b!1092166 (=> res!728836 e!623773)))

(assert (=> b!1092166 (= res!728836 (= #b1000000000000000000000000000000000000000000000000000000000000000 k0!904))))

(assert (=> b!1092166 (= lt!488084 lt!488087)))

(declare-fun lt!488082 () tuple2!17220)

(declare-fun +!3316 (ListLongMap!15201 tuple2!17220) ListLongMap!15201)

(assert (=> b!1092166 (= lt!488087 (+!3316 lt!488080 lt!488082))))

(assert (=> b!1092166 (= lt!488078 lt!488088)))

(assert (=> b!1092166 (= lt!488088 (+!3316 lt!488079 lt!488082))))

(assert (=> b!1092166 (= lt!488078 (+!3316 lt!488090 lt!488082))))

(assert (=> b!1092166 (= lt!488082 (tuple2!17221 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!831))))

(declare-fun b!1092167 () Bool)

(assert (=> b!1092167 (= e!623776 tp_is_empty!26841)))

(declare-fun b!1092168 () Bool)

(declare-fun res!728845 () Bool)

(assert (=> b!1092168 (=> (not res!728845) (not e!623770))))

(declare-datatypes ((List!23858 0))(
  ( (Nil!23855) (Cons!23854 (h!25063 (_ BitVec 64)) (t!33762 List!23858)) )
))
(declare-fun arrayNoDuplicates!0 (array!70564 (_ BitVec 32) List!23858) Bool)

(assert (=> b!1092168 (= res!728845 (arrayNoDuplicates!0 lt!488085 #b00000000000000000000000000000000 Nil!23855))))

(declare-fun b!1092161 () Bool)

(declare-fun res!728839 () Bool)

(assert (=> b!1092161 (=> (not res!728839) (not e!623774))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1092161 (= res!728839 (validKeyInArray!0 k0!904))))

(declare-fun res!728843 () Bool)

(assert (=> start!96222 (=> (not res!728843) (not e!623774))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!96222 (= res!728843 (validMask!0 mask!1414))))

(assert (=> start!96222 e!623774))

(assert (=> start!96222 tp!80367))

(assert (=> start!96222 true))

(assert (=> start!96222 tp_is_empty!26841))

(declare-fun array_inv!26032 (array!70564) Bool)

(assert (=> start!96222 (array_inv!26032 _keys!1070)))

(declare-fun array_inv!26033 (array!70566) Bool)

(assert (=> start!96222 (and (array_inv!26033 _values!874) e!623775)))

(declare-fun b!1092169 () Bool)

(assert (=> b!1092169 (= e!623774 e!623770)))

(declare-fun res!728842 () Bool)

(assert (=> b!1092169 (=> (not res!728842) (not e!623770))))

(assert (=> b!1092169 (= res!728842 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!488085 mask!1414))))

(assert (=> b!1092169 (= lt!488085 (array!70565 (store (arr!33952 _keys!1070) i!650 #b1000000000000000000000000000000000000000000000000000000000000000) (size!34489 _keys!1070)))))

(declare-fun b!1092170 () Bool)

(declare-fun res!728844 () Bool)

(assert (=> b!1092170 (=> (not res!728844) (not e!623774))))

(assert (=> b!1092170 (= res!728844 (arrayNoDuplicates!0 _keys!1070 #b00000000000000000000000000000000 Nil!23855))))

(assert (= (and start!96222 res!728843) b!1092162))

(assert (= (and b!1092162 res!728838) b!1092165))

(assert (= (and b!1092165 res!728841) b!1092170))

(assert (= (and b!1092170 res!728844) b!1092157))

(assert (= (and b!1092157 res!728837) b!1092161))

(assert (= (and b!1092161 res!728839) b!1092158))

(assert (= (and b!1092158 res!728840) b!1092169))

(assert (= (and b!1092169 res!728842) b!1092168))

(assert (= (and b!1092168 res!728845) b!1092159))

(assert (= (and b!1092159 (not res!728846)) b!1092166))

(assert (= (and b!1092166 (not res!728836)) b!1092164))

(assert (= (and b!1092163 condMapEmpty!42016) mapIsEmpty!42016))

(assert (= (and b!1092163 (not condMapEmpty!42016)) mapNonEmpty!42016))

(get-info :version)

(assert (= (and mapNonEmpty!42016 ((_ is ValueCellFull!12711) mapValue!42016)) b!1092167))

(assert (= (and b!1092163 ((_ is ValueCellFull!12711) mapDefault!42016)) b!1092160))

(assert (= start!96222 b!1092163))

(declare-fun b_lambda!17539 () Bool)

(assert (=> (not b_lambda!17539) (not b!1092159)))

(declare-fun t!33760 () Bool)

(declare-fun tb!7725 () Bool)

(assert (=> (and start!96222 (= defaultEntry!882 defaultEntry!882) t!33760) tb!7725))

(declare-fun result!15961 () Bool)

(assert (=> tb!7725 (= result!15961 tp_is_empty!26841)))

(assert (=> b!1092159 t!33760))

(declare-fun b_and!36373 () Bool)

(assert (= b_and!36371 (and (=> t!33760 result!15961) b_and!36373)))

(declare-fun m!1012021 () Bool)

(assert (=> b!1092168 m!1012021))

(declare-fun m!1012023 () Bool)

(assert (=> b!1092161 m!1012023))

(declare-fun m!1012025 () Bool)

(assert (=> start!96222 m!1012025))

(declare-fun m!1012027 () Bool)

(assert (=> start!96222 m!1012027))

(declare-fun m!1012029 () Bool)

(assert (=> start!96222 m!1012029))

(declare-fun m!1012031 () Bool)

(assert (=> b!1092159 m!1012031))

(declare-fun m!1012033 () Bool)

(assert (=> b!1092159 m!1012033))

(declare-fun m!1012035 () Bool)

(assert (=> b!1092159 m!1012035))

(declare-fun m!1012037 () Bool)

(assert (=> b!1092159 m!1012037))

(declare-fun m!1012039 () Bool)

(assert (=> b!1092159 m!1012039))

(declare-fun m!1012041 () Bool)

(assert (=> b!1092159 m!1012041))

(declare-fun m!1012043 () Bool)

(assert (=> b!1092159 m!1012043))

(declare-fun m!1012045 () Bool)

(assert (=> b!1092159 m!1012045))

(declare-fun m!1012047 () Bool)

(assert (=> b!1092159 m!1012047))

(declare-fun m!1012049 () Bool)

(assert (=> b!1092159 m!1012049))

(declare-fun m!1012051 () Bool)

(assert (=> b!1092165 m!1012051))

(declare-fun m!1012053 () Bool)

(assert (=> b!1092166 m!1012053))

(declare-fun m!1012055 () Bool)

(assert (=> b!1092166 m!1012055))

(declare-fun m!1012057 () Bool)

(assert (=> b!1092166 m!1012057))

(declare-fun m!1012059 () Bool)

(assert (=> b!1092169 m!1012059))

(declare-fun m!1012061 () Bool)

(assert (=> b!1092169 m!1012061))

(declare-fun m!1012063 () Bool)

(assert (=> mapNonEmpty!42016 m!1012063))

(declare-fun m!1012065 () Bool)

(assert (=> b!1092170 m!1012065))

(declare-fun m!1012067 () Bool)

(assert (=> b!1092158 m!1012067))

(declare-fun m!1012069 () Bool)

(assert (=> b!1092164 m!1012069))

(declare-fun m!1012071 () Bool)

(assert (=> b!1092164 m!1012071))

(check-sat (not b!1092165) (not b!1092169) (not b!1092170) (not b_lambda!17539) (not b!1092159) (not b!1092168) (not b!1092166) b_and!36373 tp_is_empty!26841 (not b_next!22839) (not mapNonEmpty!42016) (not b!1092164) (not b!1092161) (not start!96222))
(check-sat b_and!36373 (not b_next!22839))
