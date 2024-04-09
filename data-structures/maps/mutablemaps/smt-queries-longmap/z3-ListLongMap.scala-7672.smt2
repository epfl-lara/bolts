; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!96416 () Bool)

(assert start!96416)

(declare-fun b_free!22959 () Bool)

(declare-fun b_next!22959 () Bool)

(assert (=> start!96416 (= b_free!22959 (not b_next!22959))))

(declare-fun tp!80805 () Bool)

(declare-fun b_and!36603 () Bool)

(assert (=> start!96416 (= tp!80805 b_and!36603)))

(declare-fun mapNonEmpty!42274 () Bool)

(declare-fun mapRes!42274 () Bool)

(declare-fun tp!80804 () Bool)

(declare-fun e!625339 () Bool)

(assert (=> mapNonEmpty!42274 (= mapRes!42274 (and tp!80804 e!625339))))

(declare-fun mapKey!42274 () (_ BitVec 32))

(declare-datatypes ((V!41139 0))(
  ( (V!41140 (val!13561 Int)) )
))
(declare-datatypes ((ValueCell!12795 0))(
  ( (ValueCellFull!12795 (v!16183 V!41139)) (EmptyCell!12795) )
))
(declare-fun mapRest!42274 () (Array (_ BitVec 32) ValueCell!12795))

(declare-datatypes ((array!70886 0))(
  ( (array!70887 (arr!34111 (Array (_ BitVec 32) ValueCell!12795)) (size!34648 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!70886)

(declare-fun mapValue!42274 () ValueCell!12795)

(assert (=> mapNonEmpty!42274 (= (arr!34111 _values!874) (store mapRest!42274 mapKey!42274 mapValue!42274))))

(declare-fun b!1095260 () Bool)

(declare-fun res!731030 () Bool)

(declare-fun e!625341 () Bool)

(assert (=> b!1095260 (=> (not res!731030) (not e!625341))))

(declare-fun k0!904 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1095260 (= res!731030 (validKeyInArray!0 k0!904))))

(declare-fun b!1095261 () Bool)

(declare-fun e!625336 () Bool)

(declare-fun tp_is_empty!27009 () Bool)

(assert (=> b!1095261 (= e!625336 tp_is_empty!27009)))

(declare-fun mapIsEmpty!42274 () Bool)

(assert (=> mapIsEmpty!42274 mapRes!42274))

(declare-fun b!1095262 () Bool)

(declare-fun e!625340 () Bool)

(declare-fun i!650 () (_ BitVec 32))

(assert (=> b!1095262 (= e!625340 (not (bvslt i!650 (size!34648 _values!874))))))

(declare-datatypes ((tuple2!17288 0))(
  ( (tuple2!17289 (_1!8654 (_ BitVec 64)) (_2!8654 V!41139)) )
))
(declare-datatypes ((List!23957 0))(
  ( (Nil!23954) (Cons!23953 (h!25162 tuple2!17288) (t!33971 List!23957)) )
))
(declare-datatypes ((ListLongMap!15269 0))(
  ( (ListLongMap!15270 (toList!7650 List!23957)) )
))
(declare-fun lt!489772 () ListLongMap!15269)

(declare-fun defaultEntry!882 () Int)

(declare-fun minValue!831 () V!41139)

(declare-fun mask!1414 () (_ BitVec 32))

(declare-fun extraKeys!811 () (_ BitVec 32))

(declare-fun zeroValue!831 () V!41139)

(declare-datatypes ((array!70888 0))(
  ( (array!70889 (arr!34112 (Array (_ BitVec 32) (_ BitVec 64))) (size!34649 (_ BitVec 32))) )
))
(declare-fun _keys!1070 () array!70888)

(declare-fun getCurrentListMapNoExtraKeys!4137 (array!70888 array!70886 (_ BitVec 32) (_ BitVec 32) V!41139 V!41139 (_ BitVec 32) Int) ListLongMap!15269)

(assert (=> b!1095262 (= lt!489772 (getCurrentListMapNoExtraKeys!4137 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun arrayContainsKey!0 (array!70888 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1095262 (arrayContainsKey!0 _keys!1070 k0!904 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!35973 0))(
  ( (Unit!35974) )
))
(declare-fun lt!489771 () Unit!35973)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!70888 (_ BitVec 64) (_ BitVec 32)) Unit!35973)

(assert (=> b!1095262 (= lt!489771 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1070 k0!904 i!650))))

(declare-fun b!1095263 () Bool)

(declare-fun res!731028 () Bool)

(assert (=> b!1095263 (=> (not res!731028) (not e!625341))))

(assert (=> b!1095263 (= res!731028 (and (bvsge i!650 #b00000000000000000000000000000000) (bvslt i!650 (size!34649 _keys!1070))))))

(declare-fun b!1095264 () Bool)

(assert (=> b!1095264 (= e!625339 tp_is_empty!27009)))

(declare-fun res!731023 () Bool)

(assert (=> start!96416 (=> (not res!731023) (not e!625341))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!96416 (= res!731023 (validMask!0 mask!1414))))

(assert (=> start!96416 e!625341))

(assert (=> start!96416 tp!80805))

(assert (=> start!96416 true))

(assert (=> start!96416 tp_is_empty!27009))

(declare-fun array_inv!26138 (array!70888) Bool)

(assert (=> start!96416 (array_inv!26138 _keys!1070)))

(declare-fun e!625337 () Bool)

(declare-fun array_inv!26139 (array!70886) Bool)

(assert (=> start!96416 (and (array_inv!26139 _values!874) e!625337)))

(declare-fun b!1095265 () Bool)

(declare-fun res!731025 () Bool)

(assert (=> b!1095265 (=> (not res!731025) (not e!625341))))

(assert (=> b!1095265 (= res!731025 (= (select (arr!34112 _keys!1070) i!650) k0!904))))

(declare-fun b!1095266 () Bool)

(declare-fun res!731024 () Bool)

(assert (=> b!1095266 (=> (not res!731024) (not e!625341))))

(assert (=> b!1095266 (= res!731024 (and (= (size!34648 _values!874) (bvadd #b00000000000000000000000000000001 mask!1414)) (= (size!34649 _keys!1070) (size!34648 _values!874)) (bvsge mask!1414 #b00000000000000000000000000000000) (bvsge extraKeys!811 #b00000000000000000000000000000000) (bvsle extraKeys!811 #b00000000000000000000000000000011)))))

(declare-fun b!1095267 () Bool)

(assert (=> b!1095267 (= e!625341 e!625340)))

(declare-fun res!731026 () Bool)

(assert (=> b!1095267 (=> (not res!731026) (not e!625340))))

(declare-fun lt!489773 () array!70888)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!70888 (_ BitVec 32)) Bool)

(assert (=> b!1095267 (= res!731026 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!489773 mask!1414))))

(assert (=> b!1095267 (= lt!489773 (array!70889 (store (arr!34112 _keys!1070) i!650 #b1000000000000000000000000000000000000000000000000000000000000000) (size!34649 _keys!1070)))))

(declare-fun b!1095268 () Bool)

(declare-fun res!731031 () Bool)

(assert (=> b!1095268 (=> (not res!731031) (not e!625340))))

(declare-datatypes ((List!23958 0))(
  ( (Nil!23955) (Cons!23954 (h!25163 (_ BitVec 64)) (t!33972 List!23958)) )
))
(declare-fun arrayNoDuplicates!0 (array!70888 (_ BitVec 32) List!23958) Bool)

(assert (=> b!1095268 (= res!731031 (arrayNoDuplicates!0 lt!489773 #b00000000000000000000000000000000 Nil!23955))))

(declare-fun b!1095269 () Bool)

(declare-fun res!731027 () Bool)

(assert (=> b!1095269 (=> (not res!731027) (not e!625341))))

(assert (=> b!1095269 (= res!731027 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1070 mask!1414))))

(declare-fun b!1095270 () Bool)

(declare-fun res!731029 () Bool)

(assert (=> b!1095270 (=> (not res!731029) (not e!625341))))

(assert (=> b!1095270 (= res!731029 (arrayNoDuplicates!0 _keys!1070 #b00000000000000000000000000000000 Nil!23955))))

(declare-fun b!1095271 () Bool)

(assert (=> b!1095271 (= e!625337 (and e!625336 mapRes!42274))))

(declare-fun condMapEmpty!42274 () Bool)

(declare-fun mapDefault!42274 () ValueCell!12795)

(assert (=> b!1095271 (= condMapEmpty!42274 (= (arr!34111 _values!874) ((as const (Array (_ BitVec 32) ValueCell!12795)) mapDefault!42274)))))

(assert (= (and start!96416 res!731023) b!1095266))

(assert (= (and b!1095266 res!731024) b!1095269))

(assert (= (and b!1095269 res!731027) b!1095270))

(assert (= (and b!1095270 res!731029) b!1095263))

(assert (= (and b!1095263 res!731028) b!1095260))

(assert (= (and b!1095260 res!731030) b!1095265))

(assert (= (and b!1095265 res!731025) b!1095267))

(assert (= (and b!1095267 res!731026) b!1095268))

(assert (= (and b!1095268 res!731031) b!1095262))

(assert (= (and b!1095271 condMapEmpty!42274) mapIsEmpty!42274))

(assert (= (and b!1095271 (not condMapEmpty!42274)) mapNonEmpty!42274))

(get-info :version)

(assert (= (and mapNonEmpty!42274 ((_ is ValueCellFull!12795) mapValue!42274)) b!1095264))

(assert (= (and b!1095271 ((_ is ValueCellFull!12795) mapDefault!42274)) b!1095261))

(assert (= start!96416 b!1095271))

(declare-fun m!1015055 () Bool)

(assert (=> b!1095268 m!1015055))

(declare-fun m!1015057 () Bool)

(assert (=> b!1095265 m!1015057))

(declare-fun m!1015059 () Bool)

(assert (=> b!1095260 m!1015059))

(declare-fun m!1015061 () Bool)

(assert (=> b!1095262 m!1015061))

(declare-fun m!1015063 () Bool)

(assert (=> b!1095262 m!1015063))

(declare-fun m!1015065 () Bool)

(assert (=> b!1095262 m!1015065))

(declare-fun m!1015067 () Bool)

(assert (=> b!1095270 m!1015067))

(declare-fun m!1015069 () Bool)

(assert (=> b!1095267 m!1015069))

(declare-fun m!1015071 () Bool)

(assert (=> b!1095267 m!1015071))

(declare-fun m!1015073 () Bool)

(assert (=> start!96416 m!1015073))

(declare-fun m!1015075 () Bool)

(assert (=> start!96416 m!1015075))

(declare-fun m!1015077 () Bool)

(assert (=> start!96416 m!1015077))

(declare-fun m!1015079 () Bool)

(assert (=> mapNonEmpty!42274 m!1015079))

(declare-fun m!1015081 () Bool)

(assert (=> b!1095269 m!1015081))

(check-sat (not start!96416) (not b!1095270) (not mapNonEmpty!42274) (not b!1095260) (not b!1095268) (not b!1095267) (not b!1095269) (not b!1095262) b_and!36603 tp_is_empty!27009 (not b_next!22959))
(check-sat b_and!36603 (not b_next!22959))
