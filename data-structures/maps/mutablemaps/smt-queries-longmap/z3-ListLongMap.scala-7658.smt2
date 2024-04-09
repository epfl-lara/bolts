; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!96306 () Bool)

(assert start!96306)

(declare-fun b_free!22923 () Bool)

(declare-fun b_next!22923 () Bool)

(assert (=> start!96306 (= b_free!22923 (not b_next!22923))))

(declare-fun tp!80618 () Bool)

(declare-fun b_and!36539 () Bool)

(assert (=> start!96306 (= tp!80618 b_and!36539)))

(declare-fun b!1093761 () Bool)

(declare-fun e!624535 () Bool)

(declare-fun e!624533 () Bool)

(declare-fun mapRes!42142 () Bool)

(assert (=> b!1093761 (= e!624535 (and e!624533 mapRes!42142))))

(declare-fun condMapEmpty!42142 () Bool)

(declare-datatypes ((V!41027 0))(
  ( (V!41028 (val!13519 Int)) )
))
(declare-datatypes ((ValueCell!12753 0))(
  ( (ValueCellFull!12753 (v!16141 V!41027)) (EmptyCell!12753) )
))
(declare-datatypes ((array!70722 0))(
  ( (array!70723 (arr!34031 (Array (_ BitVec 32) ValueCell!12753)) (size!34568 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!70722)

(declare-fun mapDefault!42142 () ValueCell!12753)

(assert (=> b!1093761 (= condMapEmpty!42142 (= (arr!34031 _values!874) ((as const (Array (_ BitVec 32) ValueCell!12753)) mapDefault!42142)))))

(declare-fun b!1093762 () Bool)

(declare-fun e!624538 () Bool)

(declare-fun tp_is_empty!26925 () Bool)

(assert (=> b!1093762 (= e!624538 tp_is_empty!26925)))

(declare-fun b!1093763 () Bool)

(declare-fun res!729981 () Bool)

(declare-fun e!624536 () Bool)

(assert (=> b!1093763 (=> (not res!729981) (not e!624536))))

(declare-datatypes ((array!70724 0))(
  ( (array!70725 (arr!34032 (Array (_ BitVec 32) (_ BitVec 64))) (size!34569 (_ BitVec 32))) )
))
(declare-fun _keys!1070 () array!70724)

(declare-datatypes ((List!23914 0))(
  ( (Nil!23911) (Cons!23910 (h!25119 (_ BitVec 64)) (t!33902 List!23914)) )
))
(declare-fun arrayNoDuplicates!0 (array!70724 (_ BitVec 32) List!23914) Bool)

(assert (=> b!1093763 (= res!729981 (arrayNoDuplicates!0 _keys!1070 #b00000000000000000000000000000000 Nil!23911))))

(declare-fun b!1093764 () Bool)

(declare-fun res!729978 () Bool)

(assert (=> b!1093764 (=> (not res!729978) (not e!624536))))

(declare-fun k0!904 () (_ BitVec 64))

(declare-fun i!650 () (_ BitVec 32))

(assert (=> b!1093764 (= res!729978 (= (select (arr!34032 _keys!1070) i!650) k0!904))))

(declare-fun b!1093765 () Bool)

(declare-fun res!729980 () Bool)

(assert (=> b!1093765 (=> (not res!729980) (not e!624536))))

(declare-fun mask!1414 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!70724 (_ BitVec 32)) Bool)

(assert (=> b!1093765 (= res!729980 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1070 mask!1414))))

(declare-fun b!1093766 () Bool)

(declare-fun res!729982 () Bool)

(assert (=> b!1093766 (=> (not res!729982) (not e!624536))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1093766 (= res!729982 (validKeyInArray!0 k0!904))))

(declare-fun mapIsEmpty!42142 () Bool)

(assert (=> mapIsEmpty!42142 mapRes!42142))

(declare-fun b!1093768 () Bool)

(declare-fun e!624534 () Bool)

(assert (=> b!1093768 (= e!624534 (not true))))

(declare-fun minValue!831 () V!41027)

(declare-datatypes ((tuple2!17268 0))(
  ( (tuple2!17269 (_1!8644 (_ BitVec 64)) (_2!8644 V!41027)) )
))
(declare-datatypes ((List!23915 0))(
  ( (Nil!23912) (Cons!23911 (h!25120 tuple2!17268) (t!33903 List!23915)) )
))
(declare-datatypes ((ListLongMap!15249 0))(
  ( (ListLongMap!15250 (toList!7640 List!23915)) )
))
(declare-fun lt!489245 () ListLongMap!15249)

(declare-fun extraKeys!811 () (_ BitVec 32))

(declare-fun zeroValue!831 () V!41027)

(declare-fun defaultEntry!882 () Int)

(declare-fun getCurrentListMap!4375 (array!70724 array!70722 (_ BitVec 32) (_ BitVec 32) V!41027 V!41027 (_ BitVec 32) Int) ListLongMap!15249)

(assert (=> b!1093768 (= lt!489245 (getCurrentListMap!4375 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun lt!489237 () ListLongMap!15249)

(declare-fun lt!489244 () array!70724)

(declare-fun lt!489240 () array!70722)

(assert (=> b!1093768 (= lt!489237 (getCurrentListMap!4375 lt!489244 lt!489240 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun lt!489239 () ListLongMap!15249)

(declare-fun lt!489238 () ListLongMap!15249)

(assert (=> b!1093768 (and (= lt!489239 lt!489238) (= lt!489238 lt!489239))))

(declare-fun lt!489242 () ListLongMap!15249)

(declare-fun -!916 (ListLongMap!15249 (_ BitVec 64)) ListLongMap!15249)

(assert (=> b!1093768 (= lt!489238 (-!916 lt!489242 k0!904))))

(declare-datatypes ((Unit!35947 0))(
  ( (Unit!35948) )
))
(declare-fun lt!489241 () Unit!35947)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!181 (array!70724 array!70722 (_ BitVec 32) (_ BitVec 32) V!41027 V!41027 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!35947)

(assert (=> b!1093768 (= lt!489241 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!181 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 i!650 k0!904 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun getCurrentListMapNoExtraKeys!4127 (array!70724 array!70722 (_ BitVec 32) (_ BitVec 32) V!41027 V!41027 (_ BitVec 32) Int) ListLongMap!15249)

(assert (=> b!1093768 (= lt!489239 (getCurrentListMapNoExtraKeys!4127 lt!489244 lt!489240 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun dynLambda!2263 (Int (_ BitVec 64)) V!41027)

(assert (=> b!1093768 (= lt!489240 (array!70723 (store (arr!34031 _values!874) i!650 (ValueCellFull!12753 (dynLambda!2263 defaultEntry!882 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!34568 _values!874)))))

(assert (=> b!1093768 (= lt!489242 (getCurrentListMapNoExtraKeys!4127 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun arrayContainsKey!0 (array!70724 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1093768 (arrayContainsKey!0 _keys!1070 k0!904 #b00000000000000000000000000000000)))

(declare-fun lt!489243 () Unit!35947)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!70724 (_ BitVec 64) (_ BitVec 32)) Unit!35947)

(assert (=> b!1093768 (= lt!489243 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1070 k0!904 i!650))))

(declare-fun mapNonEmpty!42142 () Bool)

(declare-fun tp!80619 () Bool)

(assert (=> mapNonEmpty!42142 (= mapRes!42142 (and tp!80619 e!624538))))

(declare-fun mapRest!42142 () (Array (_ BitVec 32) ValueCell!12753))

(declare-fun mapValue!42142 () ValueCell!12753)

(declare-fun mapKey!42142 () (_ BitVec 32))

(assert (=> mapNonEmpty!42142 (= (arr!34031 _values!874) (store mapRest!42142 mapKey!42142 mapValue!42142))))

(declare-fun b!1093769 () Bool)

(declare-fun res!729983 () Bool)

(assert (=> b!1093769 (=> (not res!729983) (not e!624536))))

(assert (=> b!1093769 (= res!729983 (and (= (size!34568 _values!874) (bvadd #b00000000000000000000000000000001 mask!1414)) (= (size!34569 _keys!1070) (size!34568 _values!874)) (bvsge mask!1414 #b00000000000000000000000000000000) (bvsge extraKeys!811 #b00000000000000000000000000000000) (bvsle extraKeys!811 #b00000000000000000000000000000011)))))

(declare-fun b!1093770 () Bool)

(declare-fun res!729979 () Bool)

(assert (=> b!1093770 (=> (not res!729979) (not e!624536))))

(assert (=> b!1093770 (= res!729979 (and (bvsge i!650 #b00000000000000000000000000000000) (bvslt i!650 (size!34569 _keys!1070))))))

(declare-fun res!729986 () Bool)

(assert (=> start!96306 (=> (not res!729986) (not e!624536))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!96306 (= res!729986 (validMask!0 mask!1414))))

(assert (=> start!96306 e!624536))

(assert (=> start!96306 tp!80618))

(assert (=> start!96306 true))

(assert (=> start!96306 tp_is_empty!26925))

(declare-fun array_inv!26080 (array!70724) Bool)

(assert (=> start!96306 (array_inv!26080 _keys!1070)))

(declare-fun array_inv!26081 (array!70722) Bool)

(assert (=> start!96306 (and (array_inv!26081 _values!874) e!624535)))

(declare-fun b!1093767 () Bool)

(assert (=> b!1093767 (= e!624536 e!624534)))

(declare-fun res!729984 () Bool)

(assert (=> b!1093767 (=> (not res!729984) (not e!624534))))

(assert (=> b!1093767 (= res!729984 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!489244 mask!1414))))

(assert (=> b!1093767 (= lt!489244 (array!70725 (store (arr!34032 _keys!1070) i!650 #b1000000000000000000000000000000000000000000000000000000000000000) (size!34569 _keys!1070)))))

(declare-fun b!1093771 () Bool)

(assert (=> b!1093771 (= e!624533 tp_is_empty!26925)))

(declare-fun b!1093772 () Bool)

(declare-fun res!729985 () Bool)

(assert (=> b!1093772 (=> (not res!729985) (not e!624534))))

(assert (=> b!1093772 (= res!729985 (arrayNoDuplicates!0 lt!489244 #b00000000000000000000000000000000 Nil!23911))))

(assert (= (and start!96306 res!729986) b!1093769))

(assert (= (and b!1093769 res!729983) b!1093765))

(assert (= (and b!1093765 res!729980) b!1093763))

(assert (= (and b!1093763 res!729981) b!1093770))

(assert (= (and b!1093770 res!729979) b!1093766))

(assert (= (and b!1093766 res!729982) b!1093764))

(assert (= (and b!1093764 res!729978) b!1093767))

(assert (= (and b!1093767 res!729984) b!1093772))

(assert (= (and b!1093772 res!729985) b!1093768))

(assert (= (and b!1093761 condMapEmpty!42142) mapIsEmpty!42142))

(assert (= (and b!1093761 (not condMapEmpty!42142)) mapNonEmpty!42142))

(get-info :version)

(assert (= (and mapNonEmpty!42142 ((_ is ValueCellFull!12753) mapValue!42142)) b!1093762))

(assert (= (and b!1093761 ((_ is ValueCellFull!12753) mapDefault!42142)) b!1093771))

(assert (= start!96306 b!1093761))

(declare-fun b_lambda!17623 () Bool)

(assert (=> (not b_lambda!17623) (not b!1093768)))

(declare-fun t!33901 () Bool)

(declare-fun tb!7809 () Bool)

(assert (=> (and start!96306 (= defaultEntry!882 defaultEntry!882) t!33901) tb!7809))

(declare-fun result!16129 () Bool)

(assert (=> tb!7809 (= result!16129 tp_is_empty!26925)))

(assert (=> b!1093768 t!33901))

(declare-fun b_and!36541 () Bool)

(assert (= b_and!36539 (and (=> t!33901 result!16129) b_and!36541)))

(declare-fun m!1013805 () Bool)

(assert (=> b!1093767 m!1013805))

(declare-fun m!1013807 () Bool)

(assert (=> b!1093767 m!1013807))

(declare-fun m!1013809 () Bool)

(assert (=> mapNonEmpty!42142 m!1013809))

(declare-fun m!1013811 () Bool)

(assert (=> b!1093768 m!1013811))

(declare-fun m!1013813 () Bool)

(assert (=> b!1093768 m!1013813))

(declare-fun m!1013815 () Bool)

(assert (=> b!1093768 m!1013815))

(declare-fun m!1013817 () Bool)

(assert (=> b!1093768 m!1013817))

(declare-fun m!1013819 () Bool)

(assert (=> b!1093768 m!1013819))

(declare-fun m!1013821 () Bool)

(assert (=> b!1093768 m!1013821))

(declare-fun m!1013823 () Bool)

(assert (=> b!1093768 m!1013823))

(declare-fun m!1013825 () Bool)

(assert (=> b!1093768 m!1013825))

(declare-fun m!1013827 () Bool)

(assert (=> b!1093768 m!1013827))

(declare-fun m!1013829 () Bool)

(assert (=> b!1093768 m!1013829))

(declare-fun m!1013831 () Bool)

(assert (=> b!1093764 m!1013831))

(declare-fun m!1013833 () Bool)

(assert (=> b!1093765 m!1013833))

(declare-fun m!1013835 () Bool)

(assert (=> start!96306 m!1013835))

(declare-fun m!1013837 () Bool)

(assert (=> start!96306 m!1013837))

(declare-fun m!1013839 () Bool)

(assert (=> start!96306 m!1013839))

(declare-fun m!1013841 () Bool)

(assert (=> b!1093772 m!1013841))

(declare-fun m!1013843 () Bool)

(assert (=> b!1093763 m!1013843))

(declare-fun m!1013845 () Bool)

(assert (=> b!1093766 m!1013845))

(check-sat b_and!36541 (not start!96306) tp_is_empty!26925 (not b!1093767) (not b_lambda!17623) (not b!1093765) (not b!1093766) (not mapNonEmpty!42142) (not b!1093763) (not b_next!22923) (not b!1093772) (not b!1093768))
(check-sat b_and!36541 (not b_next!22923))
