; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!96312 () Bool)

(assert start!96312)

(declare-fun b_free!22929 () Bool)

(declare-fun b_next!22929 () Bool)

(assert (=> start!96312 (= b_free!22929 (not b_next!22929))))

(declare-fun tp!80636 () Bool)

(declare-fun b_and!36551 () Bool)

(assert (=> start!96312 (= tp!80636 b_and!36551)))

(declare-fun b!1093875 () Bool)

(declare-fun e!624592 () Bool)

(declare-fun e!624591 () Bool)

(declare-fun mapRes!42151 () Bool)

(assert (=> b!1093875 (= e!624592 (and e!624591 mapRes!42151))))

(declare-fun condMapEmpty!42151 () Bool)

(declare-datatypes ((V!41035 0))(
  ( (V!41036 (val!13522 Int)) )
))
(declare-datatypes ((ValueCell!12756 0))(
  ( (ValueCellFull!12756 (v!16144 V!41035)) (EmptyCell!12756) )
))
(declare-datatypes ((array!70734 0))(
  ( (array!70735 (arr!34037 (Array (_ BitVec 32) ValueCell!12756)) (size!34574 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!70734)

(declare-fun mapDefault!42151 () ValueCell!12756)

(assert (=> b!1093875 (= condMapEmpty!42151 (= (arr!34037 _values!874) ((as const (Array (_ BitVec 32) ValueCell!12756)) mapDefault!42151)))))

(declare-fun mapNonEmpty!42151 () Bool)

(declare-fun tp!80637 () Bool)

(declare-fun e!624588 () Bool)

(assert (=> mapNonEmpty!42151 (= mapRes!42151 (and tp!80637 e!624588))))

(declare-fun mapKey!42151 () (_ BitVec 32))

(declare-fun mapRest!42151 () (Array (_ BitVec 32) ValueCell!12756))

(declare-fun mapValue!42151 () ValueCell!12756)

(assert (=> mapNonEmpty!42151 (= (arr!34037 _values!874) (store mapRest!42151 mapKey!42151 mapValue!42151))))

(declare-fun b!1093876 () Bool)

(declare-fun tp_is_empty!26931 () Bool)

(assert (=> b!1093876 (= e!624588 tp_is_empty!26931)))

(declare-fun b!1093877 () Bool)

(declare-fun res!730061 () Bool)

(declare-fun e!624590 () Bool)

(assert (=> b!1093877 (=> (not res!730061) (not e!624590))))

(declare-fun i!650 () (_ BitVec 32))

(declare-datatypes ((array!70736 0))(
  ( (array!70737 (arr!34038 (Array (_ BitVec 32) (_ BitVec 64))) (size!34575 (_ BitVec 32))) )
))
(declare-fun _keys!1070 () array!70736)

(assert (=> b!1093877 (= res!730061 (and (bvsge i!650 #b00000000000000000000000000000000) (bvslt i!650 (size!34575 _keys!1070))))))

(declare-fun b!1093878 () Bool)

(declare-fun e!624587 () Bool)

(assert (=> b!1093878 (= e!624587 (not true))))

(declare-fun defaultEntry!882 () Int)

(declare-fun minValue!831 () V!41035)

(declare-fun mask!1414 () (_ BitVec 32))

(declare-fun extraKeys!811 () (_ BitVec 32))

(declare-datatypes ((tuple2!17272 0))(
  ( (tuple2!17273 (_1!8646 (_ BitVec 64)) (_2!8646 V!41035)) )
))
(declare-datatypes ((List!23919 0))(
  ( (Nil!23916) (Cons!23915 (h!25124 tuple2!17272) (t!33913 List!23919)) )
))
(declare-datatypes ((ListLongMap!15253 0))(
  ( (ListLongMap!15254 (toList!7642 List!23919)) )
))
(declare-fun lt!489318 () ListLongMap!15253)

(declare-fun zeroValue!831 () V!41035)

(declare-fun getCurrentListMap!4377 (array!70736 array!70734 (_ BitVec 32) (_ BitVec 32) V!41035 V!41035 (_ BitVec 32) Int) ListLongMap!15253)

(assert (=> b!1093878 (= lt!489318 (getCurrentListMap!4377 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun lt!489321 () array!70734)

(declare-fun lt!489324 () array!70736)

(declare-fun lt!489325 () ListLongMap!15253)

(assert (=> b!1093878 (= lt!489325 (getCurrentListMap!4377 lt!489324 lt!489321 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun lt!489319 () ListLongMap!15253)

(declare-fun lt!489322 () ListLongMap!15253)

(assert (=> b!1093878 (and (= lt!489319 lt!489322) (= lt!489322 lt!489319))))

(declare-fun lt!489326 () ListLongMap!15253)

(declare-fun k0!904 () (_ BitVec 64))

(declare-fun -!918 (ListLongMap!15253 (_ BitVec 64)) ListLongMap!15253)

(assert (=> b!1093878 (= lt!489322 (-!918 lt!489326 k0!904))))

(declare-datatypes ((Unit!35951 0))(
  ( (Unit!35952) )
))
(declare-fun lt!489323 () Unit!35951)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!183 (array!70736 array!70734 (_ BitVec 32) (_ BitVec 32) V!41035 V!41035 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!35951)

(assert (=> b!1093878 (= lt!489323 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!183 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 i!650 k0!904 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun getCurrentListMapNoExtraKeys!4129 (array!70736 array!70734 (_ BitVec 32) (_ BitVec 32) V!41035 V!41035 (_ BitVec 32) Int) ListLongMap!15253)

(assert (=> b!1093878 (= lt!489319 (getCurrentListMapNoExtraKeys!4129 lt!489324 lt!489321 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun dynLambda!2265 (Int (_ BitVec 64)) V!41035)

(assert (=> b!1093878 (= lt!489321 (array!70735 (store (arr!34037 _values!874) i!650 (ValueCellFull!12756 (dynLambda!2265 defaultEntry!882 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!34574 _values!874)))))

(assert (=> b!1093878 (= lt!489326 (getCurrentListMapNoExtraKeys!4129 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun arrayContainsKey!0 (array!70736 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1093878 (arrayContainsKey!0 _keys!1070 k0!904 #b00000000000000000000000000000000)))

(declare-fun lt!489320 () Unit!35951)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!70736 (_ BitVec 64) (_ BitVec 32)) Unit!35951)

(assert (=> b!1093878 (= lt!489320 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1070 k0!904 i!650))))

(declare-fun b!1093879 () Bool)

(declare-fun res!730063 () Bool)

(assert (=> b!1093879 (=> (not res!730063) (not e!624590))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1093879 (= res!730063 (validKeyInArray!0 k0!904))))

(declare-fun b!1093880 () Bool)

(assert (=> b!1093880 (= e!624591 tp_is_empty!26931)))

(declare-fun b!1093881 () Bool)

(declare-fun res!730060 () Bool)

(assert (=> b!1093881 (=> (not res!730060) (not e!624590))))

(assert (=> b!1093881 (= res!730060 (and (= (size!34574 _values!874) (bvadd #b00000000000000000000000000000001 mask!1414)) (= (size!34575 _keys!1070) (size!34574 _values!874)) (bvsge mask!1414 #b00000000000000000000000000000000) (bvsge extraKeys!811 #b00000000000000000000000000000000) (bvsle extraKeys!811 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!42151 () Bool)

(assert (=> mapIsEmpty!42151 mapRes!42151))

(declare-fun b!1093883 () Bool)

(declare-fun res!730062 () Bool)

(assert (=> b!1093883 (=> (not res!730062) (not e!624590))))

(assert (=> b!1093883 (= res!730062 (= (select (arr!34038 _keys!1070) i!650) k0!904))))

(declare-fun b!1093884 () Bool)

(declare-fun res!730064 () Bool)

(assert (=> b!1093884 (=> (not res!730064) (not e!624590))))

(declare-datatypes ((List!23920 0))(
  ( (Nil!23917) (Cons!23916 (h!25125 (_ BitVec 64)) (t!33914 List!23920)) )
))
(declare-fun arrayNoDuplicates!0 (array!70736 (_ BitVec 32) List!23920) Bool)

(assert (=> b!1093884 (= res!730064 (arrayNoDuplicates!0 _keys!1070 #b00000000000000000000000000000000 Nil!23917))))

(declare-fun b!1093885 () Bool)

(declare-fun res!730059 () Bool)

(assert (=> b!1093885 (=> (not res!730059) (not e!624590))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!70736 (_ BitVec 32)) Bool)

(assert (=> b!1093885 (= res!730059 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1070 mask!1414))))

(declare-fun b!1093886 () Bool)

(assert (=> b!1093886 (= e!624590 e!624587)))

(declare-fun res!730065 () Bool)

(assert (=> b!1093886 (=> (not res!730065) (not e!624587))))

(assert (=> b!1093886 (= res!730065 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!489324 mask!1414))))

(assert (=> b!1093886 (= lt!489324 (array!70737 (store (arr!34038 _keys!1070) i!650 #b1000000000000000000000000000000000000000000000000000000000000000) (size!34575 _keys!1070)))))

(declare-fun b!1093882 () Bool)

(declare-fun res!730067 () Bool)

(assert (=> b!1093882 (=> (not res!730067) (not e!624587))))

(assert (=> b!1093882 (= res!730067 (arrayNoDuplicates!0 lt!489324 #b00000000000000000000000000000000 Nil!23917))))

(declare-fun res!730066 () Bool)

(assert (=> start!96312 (=> (not res!730066) (not e!624590))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!96312 (= res!730066 (validMask!0 mask!1414))))

(assert (=> start!96312 e!624590))

(assert (=> start!96312 tp!80636))

(assert (=> start!96312 true))

(assert (=> start!96312 tp_is_empty!26931))

(declare-fun array_inv!26086 (array!70736) Bool)

(assert (=> start!96312 (array_inv!26086 _keys!1070)))

(declare-fun array_inv!26087 (array!70734) Bool)

(assert (=> start!96312 (and (array_inv!26087 _values!874) e!624592)))

(assert (= (and start!96312 res!730066) b!1093881))

(assert (= (and b!1093881 res!730060) b!1093885))

(assert (= (and b!1093885 res!730059) b!1093884))

(assert (= (and b!1093884 res!730064) b!1093877))

(assert (= (and b!1093877 res!730061) b!1093879))

(assert (= (and b!1093879 res!730063) b!1093883))

(assert (= (and b!1093883 res!730062) b!1093886))

(assert (= (and b!1093886 res!730065) b!1093882))

(assert (= (and b!1093882 res!730067) b!1093878))

(assert (= (and b!1093875 condMapEmpty!42151) mapIsEmpty!42151))

(assert (= (and b!1093875 (not condMapEmpty!42151)) mapNonEmpty!42151))

(get-info :version)

(assert (= (and mapNonEmpty!42151 ((_ is ValueCellFull!12756) mapValue!42151)) b!1093876))

(assert (= (and b!1093875 ((_ is ValueCellFull!12756) mapDefault!42151)) b!1093880))

(assert (= start!96312 b!1093875))

(declare-fun b_lambda!17629 () Bool)

(assert (=> (not b_lambda!17629) (not b!1093878)))

(declare-fun t!33912 () Bool)

(declare-fun tb!7815 () Bool)

(assert (=> (and start!96312 (= defaultEntry!882 defaultEntry!882) t!33912) tb!7815))

(declare-fun result!16141 () Bool)

(assert (=> tb!7815 (= result!16141 tp_is_empty!26931)))

(assert (=> b!1093878 t!33912))

(declare-fun b_and!36553 () Bool)

(assert (= b_and!36551 (and (=> t!33912 result!16141) b_and!36553)))

(declare-fun m!1013931 () Bool)

(assert (=> b!1093886 m!1013931))

(declare-fun m!1013933 () Bool)

(assert (=> b!1093886 m!1013933))

(declare-fun m!1013935 () Bool)

(assert (=> b!1093883 m!1013935))

(declare-fun m!1013937 () Bool)

(assert (=> b!1093884 m!1013937))

(declare-fun m!1013939 () Bool)

(assert (=> b!1093885 m!1013939))

(declare-fun m!1013941 () Bool)

(assert (=> b!1093879 m!1013941))

(declare-fun m!1013943 () Bool)

(assert (=> b!1093882 m!1013943))

(declare-fun m!1013945 () Bool)

(assert (=> mapNonEmpty!42151 m!1013945))

(declare-fun m!1013947 () Bool)

(assert (=> start!96312 m!1013947))

(declare-fun m!1013949 () Bool)

(assert (=> start!96312 m!1013949))

(declare-fun m!1013951 () Bool)

(assert (=> start!96312 m!1013951))

(declare-fun m!1013953 () Bool)

(assert (=> b!1093878 m!1013953))

(declare-fun m!1013955 () Bool)

(assert (=> b!1093878 m!1013955))

(declare-fun m!1013957 () Bool)

(assert (=> b!1093878 m!1013957))

(declare-fun m!1013959 () Bool)

(assert (=> b!1093878 m!1013959))

(declare-fun m!1013961 () Bool)

(assert (=> b!1093878 m!1013961))

(declare-fun m!1013963 () Bool)

(assert (=> b!1093878 m!1013963))

(declare-fun m!1013965 () Bool)

(assert (=> b!1093878 m!1013965))

(declare-fun m!1013967 () Bool)

(assert (=> b!1093878 m!1013967))

(declare-fun m!1013969 () Bool)

(assert (=> b!1093878 m!1013969))

(declare-fun m!1013971 () Bool)

(assert (=> b!1093878 m!1013971))

(check-sat (not b!1093879) (not b!1093882) (not start!96312) (not b!1093886) (not mapNonEmpty!42151) (not b!1093885) (not b_next!22929) b_and!36553 (not b_lambda!17629) (not b!1093878) tp_is_empty!26931 (not b!1093884))
(check-sat b_and!36553 (not b_next!22929))
