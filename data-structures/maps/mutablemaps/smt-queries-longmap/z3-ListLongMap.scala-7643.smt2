; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!96216 () Bool)

(assert start!96216)

(declare-fun b_free!22833 () Bool)

(declare-fun b_next!22833 () Bool)

(assert (=> start!96216 (= b_free!22833 (not b_next!22833))))

(declare-fun tp!80349 () Bool)

(declare-fun b_and!36359 () Bool)

(assert (=> start!96216 (= tp!80349 b_and!36359)))

(declare-fun b!1092025 () Bool)

(declare-fun e!623698 () Bool)

(assert (=> b!1092025 (= e!623698 true)))

(declare-datatypes ((V!40907 0))(
  ( (V!40908 (val!13474 Int)) )
))
(declare-datatypes ((tuple2!17216 0))(
  ( (tuple2!17217 (_1!8618 (_ BitVec 64)) (_2!8618 V!40907)) )
))
(declare-datatypes ((List!23854 0))(
  ( (Nil!23851) (Cons!23850 (h!25059 tuple2!17216) (t!33752 List!23854)) )
))
(declare-datatypes ((ListLongMap!15197 0))(
  ( (ListLongMap!15198 (toList!7614 List!23854)) )
))
(declare-fun lt!487971 () ListLongMap!15197)

(declare-fun k0!904 () (_ BitVec 64))

(declare-fun lt!487968 () ListLongMap!15197)

(declare-fun -!890 (ListLongMap!15197 (_ BitVec 64)) ListLongMap!15197)

(assert (=> b!1092025 (= (-!890 lt!487971 k0!904) lt!487968)))

(declare-fun lt!487973 () ListLongMap!15197)

(declare-fun minValue!831 () V!40907)

(declare-datatypes ((Unit!35895 0))(
  ( (Unit!35896) )
))
(declare-fun lt!487969 () Unit!35895)

(declare-fun addRemoveCommutativeForDiffKeys!117 (ListLongMap!15197 (_ BitVec 64) V!40907 (_ BitVec 64)) Unit!35895)

(assert (=> b!1092025 (= lt!487969 (addRemoveCommutativeForDiffKeys!117 lt!487973 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!831 k0!904))))

(declare-fun res!728740 () Bool)

(declare-fun e!623701 () Bool)

(assert (=> start!96216 (=> (not res!728740) (not e!623701))))

(declare-fun mask!1414 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!96216 (= res!728740 (validMask!0 mask!1414))))

(assert (=> start!96216 e!623701))

(assert (=> start!96216 tp!80349))

(assert (=> start!96216 true))

(declare-fun tp_is_empty!26835 () Bool)

(assert (=> start!96216 tp_is_empty!26835))

(declare-datatypes ((array!70554 0))(
  ( (array!70555 (arr!33947 (Array (_ BitVec 32) (_ BitVec 64))) (size!34484 (_ BitVec 32))) )
))
(declare-fun _keys!1070 () array!70554)

(declare-fun array_inv!26030 (array!70554) Bool)

(assert (=> start!96216 (array_inv!26030 _keys!1070)))

(declare-datatypes ((ValueCell!12708 0))(
  ( (ValueCellFull!12708 (v!16096 V!40907)) (EmptyCell!12708) )
))
(declare-datatypes ((array!70556 0))(
  ( (array!70557 (arr!33948 (Array (_ BitVec 32) ValueCell!12708)) (size!34485 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!70556)

(declare-fun e!623704 () Bool)

(declare-fun array_inv!26031 (array!70556) Bool)

(assert (=> start!96216 (and (array_inv!26031 _values!874) e!623704)))

(declare-fun b!1092026 () Bool)

(declare-fun res!728747 () Bool)

(assert (=> b!1092026 (=> (not res!728747) (not e!623701))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1092026 (= res!728747 (validKeyInArray!0 k0!904))))

(declare-fun b!1092027 () Bool)

(declare-fun e!623702 () Bool)

(assert (=> b!1092027 (= e!623702 tp_is_empty!26835)))

(declare-fun b!1092028 () Bool)

(declare-fun e!623700 () Bool)

(assert (=> b!1092028 (= e!623700 e!623698)))

(declare-fun res!728738 () Bool)

(assert (=> b!1092028 (=> res!728738 e!623698)))

(assert (=> b!1092028 (= res!728738 (= #b1000000000000000000000000000000000000000000000000000000000000000 k0!904))))

(declare-fun lt!487967 () ListLongMap!15197)

(assert (=> b!1092028 (= lt!487967 lt!487971)))

(declare-fun lt!487970 () tuple2!17216)

(declare-fun +!3315 (ListLongMap!15197 tuple2!17216) ListLongMap!15197)

(assert (=> b!1092028 (= lt!487971 (+!3315 lt!487973 lt!487970))))

(declare-fun lt!487964 () ListLongMap!15197)

(assert (=> b!1092028 (= lt!487964 lt!487968)))

(declare-fun lt!487965 () ListLongMap!15197)

(assert (=> b!1092028 (= lt!487968 (+!3315 lt!487965 lt!487970))))

(declare-fun lt!487963 () ListLongMap!15197)

(assert (=> b!1092028 (= lt!487964 (+!3315 lt!487963 lt!487970))))

(assert (=> b!1092028 (= lt!487970 (tuple2!17217 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!831))))

(declare-fun b!1092029 () Bool)

(declare-fun res!728743 () Bool)

(assert (=> b!1092029 (=> (not res!728743) (not e!623701))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!70554 (_ BitVec 32)) Bool)

(assert (=> b!1092029 (= res!728743 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1070 mask!1414))))

(declare-fun b!1092030 () Bool)

(declare-fun e!623699 () Bool)

(assert (=> b!1092030 (= e!623699 tp_is_empty!26835)))

(declare-fun b!1092031 () Bool)

(declare-fun res!728739 () Bool)

(assert (=> b!1092031 (=> (not res!728739) (not e!623701))))

(declare-fun extraKeys!811 () (_ BitVec 32))

(assert (=> b!1092031 (= res!728739 (and (= (size!34485 _values!874) (bvadd #b00000000000000000000000000000001 mask!1414)) (= (size!34484 _keys!1070) (size!34485 _values!874)) (bvsge mask!1414 #b00000000000000000000000000000000) (bvsge extraKeys!811 #b00000000000000000000000000000000) (bvsle extraKeys!811 #b00000000000000000000000000000011)))))

(declare-fun b!1092032 () Bool)

(declare-fun mapRes!42007 () Bool)

(assert (=> b!1092032 (= e!623704 (and e!623699 mapRes!42007))))

(declare-fun condMapEmpty!42007 () Bool)

(declare-fun mapDefault!42007 () ValueCell!12708)

(assert (=> b!1092032 (= condMapEmpty!42007 (= (arr!33948 _values!874) ((as const (Array (_ BitVec 32) ValueCell!12708)) mapDefault!42007)))))

(declare-fun mapIsEmpty!42007 () Bool)

(assert (=> mapIsEmpty!42007 mapRes!42007))

(declare-fun b!1092033 () Bool)

(declare-fun res!728742 () Bool)

(declare-fun e!623697 () Bool)

(assert (=> b!1092033 (=> (not res!728742) (not e!623697))))

(declare-fun lt!487972 () array!70554)

(declare-datatypes ((List!23855 0))(
  ( (Nil!23852) (Cons!23851 (h!25060 (_ BitVec 64)) (t!33753 List!23855)) )
))
(declare-fun arrayNoDuplicates!0 (array!70554 (_ BitVec 32) List!23855) Bool)

(assert (=> b!1092033 (= res!728742 (arrayNoDuplicates!0 lt!487972 #b00000000000000000000000000000000 Nil!23852))))

(declare-fun b!1092034 () Bool)

(declare-fun res!728745 () Bool)

(assert (=> b!1092034 (=> (not res!728745) (not e!623701))))

(declare-fun i!650 () (_ BitVec 32))

(assert (=> b!1092034 (= res!728745 (= (select (arr!33947 _keys!1070) i!650) k0!904))))

(declare-fun b!1092035 () Bool)

(declare-fun res!728737 () Bool)

(assert (=> b!1092035 (=> (not res!728737) (not e!623701))))

(assert (=> b!1092035 (= res!728737 (arrayNoDuplicates!0 _keys!1070 #b00000000000000000000000000000000 Nil!23852))))

(declare-fun b!1092036 () Bool)

(assert (=> b!1092036 (= e!623697 (not e!623700))))

(declare-fun res!728744 () Bool)

(assert (=> b!1092036 (=> res!728744 e!623700)))

(assert (=> b!1092036 (= res!728744 (or (not (= (bvand extraKeys!811 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeys!811 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun defaultEntry!882 () Int)

(declare-fun zeroValue!831 () V!40907)

(declare-fun getCurrentListMap!4349 (array!70554 array!70556 (_ BitVec 32) (_ BitVec 32) V!40907 V!40907 (_ BitVec 32) Int) ListLongMap!15197)

(assert (=> b!1092036 (= lt!487967 (getCurrentListMap!4349 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun lt!487962 () array!70556)

(assert (=> b!1092036 (= lt!487964 (getCurrentListMap!4349 lt!487972 lt!487962 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(assert (=> b!1092036 (and (= lt!487963 lt!487965) (= lt!487965 lt!487963))))

(assert (=> b!1092036 (= lt!487965 (-!890 lt!487973 k0!904))))

(declare-fun lt!487961 () Unit!35895)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!155 (array!70554 array!70556 (_ BitVec 32) (_ BitVec 32) V!40907 V!40907 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!35895)

(assert (=> b!1092036 (= lt!487961 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!155 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 i!650 k0!904 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun getCurrentListMapNoExtraKeys!4101 (array!70554 array!70556 (_ BitVec 32) (_ BitVec 32) V!40907 V!40907 (_ BitVec 32) Int) ListLongMap!15197)

(assert (=> b!1092036 (= lt!487963 (getCurrentListMapNoExtraKeys!4101 lt!487972 lt!487962 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun dynLambda!2237 (Int (_ BitVec 64)) V!40907)

(assert (=> b!1092036 (= lt!487962 (array!70557 (store (arr!33948 _values!874) i!650 (ValueCellFull!12708 (dynLambda!2237 defaultEntry!882 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!34485 _values!874)))))

(assert (=> b!1092036 (= lt!487973 (getCurrentListMapNoExtraKeys!4101 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun arrayContainsKey!0 (array!70554 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1092036 (arrayContainsKey!0 _keys!1070 k0!904 #b00000000000000000000000000000000)))

(declare-fun lt!487966 () Unit!35895)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!70554 (_ BitVec 64) (_ BitVec 32)) Unit!35895)

(assert (=> b!1092036 (= lt!487966 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1070 k0!904 i!650))))

(declare-fun mapNonEmpty!42007 () Bool)

(declare-fun tp!80348 () Bool)

(assert (=> mapNonEmpty!42007 (= mapRes!42007 (and tp!80348 e!623702))))

(declare-fun mapRest!42007 () (Array (_ BitVec 32) ValueCell!12708))

(declare-fun mapKey!42007 () (_ BitVec 32))

(declare-fun mapValue!42007 () ValueCell!12708)

(assert (=> mapNonEmpty!42007 (= (arr!33948 _values!874) (store mapRest!42007 mapKey!42007 mapValue!42007))))

(declare-fun b!1092037 () Bool)

(declare-fun res!728741 () Bool)

(assert (=> b!1092037 (=> (not res!728741) (not e!623701))))

(assert (=> b!1092037 (= res!728741 (and (bvsge i!650 #b00000000000000000000000000000000) (bvslt i!650 (size!34484 _keys!1070))))))

(declare-fun b!1092038 () Bool)

(assert (=> b!1092038 (= e!623701 e!623697)))

(declare-fun res!728746 () Bool)

(assert (=> b!1092038 (=> (not res!728746) (not e!623697))))

(assert (=> b!1092038 (= res!728746 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!487972 mask!1414))))

(assert (=> b!1092038 (= lt!487972 (array!70555 (store (arr!33947 _keys!1070) i!650 #b1000000000000000000000000000000000000000000000000000000000000000) (size!34484 _keys!1070)))))

(assert (= (and start!96216 res!728740) b!1092031))

(assert (= (and b!1092031 res!728739) b!1092029))

(assert (= (and b!1092029 res!728743) b!1092035))

(assert (= (and b!1092035 res!728737) b!1092037))

(assert (= (and b!1092037 res!728741) b!1092026))

(assert (= (and b!1092026 res!728747) b!1092034))

(assert (= (and b!1092034 res!728745) b!1092038))

(assert (= (and b!1092038 res!728746) b!1092033))

(assert (= (and b!1092033 res!728742) b!1092036))

(assert (= (and b!1092036 (not res!728744)) b!1092028))

(assert (= (and b!1092028 (not res!728738)) b!1092025))

(assert (= (and b!1092032 condMapEmpty!42007) mapIsEmpty!42007))

(assert (= (and b!1092032 (not condMapEmpty!42007)) mapNonEmpty!42007))

(get-info :version)

(assert (= (and mapNonEmpty!42007 ((_ is ValueCellFull!12708) mapValue!42007)) b!1092027))

(assert (= (and b!1092032 ((_ is ValueCellFull!12708) mapDefault!42007)) b!1092030))

(assert (= start!96216 b!1092032))

(declare-fun b_lambda!17533 () Bool)

(assert (=> (not b_lambda!17533) (not b!1092036)))

(declare-fun t!33751 () Bool)

(declare-fun tb!7719 () Bool)

(assert (=> (and start!96216 (= defaultEntry!882 defaultEntry!882) t!33751) tb!7719))

(declare-fun result!15949 () Bool)

(assert (=> tb!7719 (= result!15949 tp_is_empty!26835)))

(assert (=> b!1092036 t!33751))

(declare-fun b_and!36361 () Bool)

(assert (= b_and!36359 (and (=> t!33751 result!15949) b_and!36361)))

(declare-fun m!1011865 () Bool)

(assert (=> b!1092034 m!1011865))

(declare-fun m!1011867 () Bool)

(assert (=> b!1092035 m!1011867))

(declare-fun m!1011869 () Bool)

(assert (=> b!1092038 m!1011869))

(declare-fun m!1011871 () Bool)

(assert (=> b!1092038 m!1011871))

(declare-fun m!1011873 () Bool)

(assert (=> b!1092029 m!1011873))

(declare-fun m!1011875 () Bool)

(assert (=> start!96216 m!1011875))

(declare-fun m!1011877 () Bool)

(assert (=> start!96216 m!1011877))

(declare-fun m!1011879 () Bool)

(assert (=> start!96216 m!1011879))

(declare-fun m!1011881 () Bool)

(assert (=> b!1092036 m!1011881))

(declare-fun m!1011883 () Bool)

(assert (=> b!1092036 m!1011883))

(declare-fun m!1011885 () Bool)

(assert (=> b!1092036 m!1011885))

(declare-fun m!1011887 () Bool)

(assert (=> b!1092036 m!1011887))

(declare-fun m!1011889 () Bool)

(assert (=> b!1092036 m!1011889))

(declare-fun m!1011891 () Bool)

(assert (=> b!1092036 m!1011891))

(declare-fun m!1011893 () Bool)

(assert (=> b!1092036 m!1011893))

(declare-fun m!1011895 () Bool)

(assert (=> b!1092036 m!1011895))

(declare-fun m!1011897 () Bool)

(assert (=> b!1092036 m!1011897))

(declare-fun m!1011899 () Bool)

(assert (=> b!1092036 m!1011899))

(declare-fun m!1011901 () Bool)

(assert (=> b!1092025 m!1011901))

(declare-fun m!1011903 () Bool)

(assert (=> b!1092025 m!1011903))

(declare-fun m!1011905 () Bool)

(assert (=> b!1092033 m!1011905))

(declare-fun m!1011907 () Bool)

(assert (=> b!1092026 m!1011907))

(declare-fun m!1011909 () Bool)

(assert (=> b!1092028 m!1011909))

(declare-fun m!1011911 () Bool)

(assert (=> b!1092028 m!1011911))

(declare-fun m!1011913 () Bool)

(assert (=> b!1092028 m!1011913))

(declare-fun m!1011915 () Bool)

(assert (=> mapNonEmpty!42007 m!1011915))

(check-sat (not b!1092038) tp_is_empty!26835 (not b_lambda!17533) (not b!1092036) (not b!1092028) (not start!96216) (not b!1092029) (not mapNonEmpty!42007) (not b!1092025) (not b!1092035) (not b!1092026) (not b!1092033) b_and!36361 (not b_next!22833))
(check-sat b_and!36361 (not b_next!22833))
