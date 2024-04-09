; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!96482 () Bool)

(assert start!96482)

(declare-fun b_free!23025 () Bool)

(declare-fun b_next!23025 () Bool)

(assert (=> start!96482 (= b_free!23025 (not b_next!23025))))

(declare-fun tp!81003 () Bool)

(declare-fun b_and!36731 () Bool)

(assert (=> start!96482 (= tp!81003 b_and!36731)))

(declare-fun b!1096510 () Bool)

(declare-fun res!731920 () Bool)

(declare-fun e!625935 () Bool)

(assert (=> b!1096510 (=> (not res!731920) (not e!625935))))

(declare-fun k0!904 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1096510 (= res!731920 (validKeyInArray!0 k0!904))))

(declare-fun b!1096511 () Bool)

(declare-fun e!625933 () Bool)

(assert (=> b!1096511 (= e!625935 e!625933)))

(declare-fun res!731921 () Bool)

(assert (=> b!1096511 (=> (not res!731921) (not e!625933))))

(declare-datatypes ((array!71010 0))(
  ( (array!71011 (arr!34173 (Array (_ BitVec 32) (_ BitVec 64))) (size!34710 (_ BitVec 32))) )
))
(declare-fun lt!490163 () array!71010)

(declare-fun mask!1414 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!71010 (_ BitVec 32)) Bool)

(assert (=> b!1096511 (= res!731921 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!490163 mask!1414))))

(declare-fun _keys!1070 () array!71010)

(declare-fun i!650 () (_ BitVec 32))

(assert (=> b!1096511 (= lt!490163 (array!71011 (store (arr!34173 _keys!1070) i!650 #b1000000000000000000000000000000000000000000000000000000000000000) (size!34710 _keys!1070)))))

(declare-fun b!1096512 () Bool)

(declare-fun res!731917 () Bool)

(assert (=> b!1096512 (=> (not res!731917) (not e!625933))))

(declare-datatypes ((List!24000 0))(
  ( (Nil!23997) (Cons!23996 (h!25205 (_ BitVec 64)) (t!34078 List!24000)) )
))
(declare-fun arrayNoDuplicates!0 (array!71010 (_ BitVec 32) List!24000) Bool)

(assert (=> b!1096512 (= res!731917 (arrayNoDuplicates!0 lt!490163 #b00000000000000000000000000000000 Nil!23997))))

(declare-fun mapNonEmpty!42373 () Bool)

(declare-fun mapRes!42373 () Bool)

(declare-fun tp!81002 () Bool)

(declare-fun e!625930 () Bool)

(assert (=> mapNonEmpty!42373 (= mapRes!42373 (and tp!81002 e!625930))))

(declare-datatypes ((V!41227 0))(
  ( (V!41228 (val!13594 Int)) )
))
(declare-datatypes ((ValueCell!12828 0))(
  ( (ValueCellFull!12828 (v!16216 V!41227)) (EmptyCell!12828) )
))
(declare-datatypes ((array!71012 0))(
  ( (array!71013 (arr!34174 (Array (_ BitVec 32) ValueCell!12828)) (size!34711 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!71012)

(declare-fun mapValue!42373 () ValueCell!12828)

(declare-fun mapKey!42373 () (_ BitVec 32))

(declare-fun mapRest!42373 () (Array (_ BitVec 32) ValueCell!12828))

(assert (=> mapNonEmpty!42373 (= (arr!34174 _values!874) (store mapRest!42373 mapKey!42373 mapValue!42373))))

(declare-fun b!1096514 () Bool)

(declare-fun tp_is_empty!27075 () Bool)

(assert (=> b!1096514 (= e!625930 tp_is_empty!27075)))

(declare-fun b!1096515 () Bool)

(declare-fun res!731915 () Bool)

(assert (=> b!1096515 (=> (not res!731915) (not e!625935))))

(assert (=> b!1096515 (= res!731915 (and (bvsge i!650 #b00000000000000000000000000000000) (bvslt i!650 (size!34710 _keys!1070))))))

(declare-fun b!1096516 () Bool)

(assert (=> b!1096516 (= e!625933 (not true))))

(declare-datatypes ((tuple2!17324 0))(
  ( (tuple2!17325 (_1!8672 (_ BitVec 64)) (_2!8672 V!41227)) )
))
(declare-datatypes ((List!24001 0))(
  ( (Nil!23998) (Cons!23997 (h!25206 tuple2!17324) (t!34079 List!24001)) )
))
(declare-datatypes ((ListLongMap!15305 0))(
  ( (ListLongMap!15306 (toList!7668 List!24001)) )
))
(declare-fun lt!490165 () ListLongMap!15305)

(declare-fun defaultEntry!882 () Int)

(declare-fun minValue!831 () V!41227)

(declare-fun extraKeys!811 () (_ BitVec 32))

(declare-fun zeroValue!831 () V!41227)

(declare-fun getCurrentListMapNoExtraKeys!4155 (array!71010 array!71012 (_ BitVec 32) (_ BitVec 32) V!41227 V!41227 (_ BitVec 32) Int) ListLongMap!15305)

(declare-fun dynLambda!2286 (Int (_ BitVec 64)) V!41227)

(assert (=> b!1096516 (= lt!490165 (getCurrentListMapNoExtraKeys!4155 lt!490163 (array!71013 (store (arr!34174 _values!874) i!650 (ValueCellFull!12828 (dynLambda!2286 defaultEntry!882 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!34711 _values!874)) mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun lt!490164 () ListLongMap!15305)

(assert (=> b!1096516 (= lt!490164 (getCurrentListMapNoExtraKeys!4155 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun arrayContainsKey!0 (array!71010 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1096516 (arrayContainsKey!0 _keys!1070 k0!904 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!36009 0))(
  ( (Unit!36010) )
))
(declare-fun lt!490166 () Unit!36009)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!71010 (_ BitVec 64) (_ BitVec 32)) Unit!36009)

(assert (=> b!1096516 (= lt!490166 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1070 k0!904 i!650))))

(declare-fun b!1096517 () Bool)

(declare-fun res!731914 () Bool)

(assert (=> b!1096517 (=> (not res!731914) (not e!625935))))

(assert (=> b!1096517 (= res!731914 (= (select (arr!34173 _keys!1070) i!650) k0!904))))

(declare-fun b!1096518 () Bool)

(declare-fun res!731922 () Bool)

(assert (=> b!1096518 (=> (not res!731922) (not e!625935))))

(assert (=> b!1096518 (= res!731922 (arrayNoDuplicates!0 _keys!1070 #b00000000000000000000000000000000 Nil!23997))))

(declare-fun res!731919 () Bool)

(assert (=> start!96482 (=> (not res!731919) (not e!625935))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!96482 (= res!731919 (validMask!0 mask!1414))))

(assert (=> start!96482 e!625935))

(assert (=> start!96482 tp!81003))

(assert (=> start!96482 true))

(assert (=> start!96482 tp_is_empty!27075))

(declare-fun array_inv!26184 (array!71010) Bool)

(assert (=> start!96482 (array_inv!26184 _keys!1070)))

(declare-fun e!625931 () Bool)

(declare-fun array_inv!26185 (array!71012) Bool)

(assert (=> start!96482 (and (array_inv!26185 _values!874) e!625931)))

(declare-fun b!1096513 () Bool)

(declare-fun res!731916 () Bool)

(assert (=> b!1096513 (=> (not res!731916) (not e!625935))))

(assert (=> b!1096513 (= res!731916 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1070 mask!1414))))

(declare-fun b!1096519 () Bool)

(declare-fun e!625932 () Bool)

(assert (=> b!1096519 (= e!625932 tp_is_empty!27075)))

(declare-fun mapIsEmpty!42373 () Bool)

(assert (=> mapIsEmpty!42373 mapRes!42373))

(declare-fun b!1096520 () Bool)

(declare-fun res!731918 () Bool)

(assert (=> b!1096520 (=> (not res!731918) (not e!625935))))

(assert (=> b!1096520 (= res!731918 (and (= (size!34711 _values!874) (bvadd #b00000000000000000000000000000001 mask!1414)) (= (size!34710 _keys!1070) (size!34711 _values!874)) (bvsge mask!1414 #b00000000000000000000000000000000) (bvsge extraKeys!811 #b00000000000000000000000000000000) (bvsle extraKeys!811 #b00000000000000000000000000000011)))))

(declare-fun b!1096521 () Bool)

(assert (=> b!1096521 (= e!625931 (and e!625932 mapRes!42373))))

(declare-fun condMapEmpty!42373 () Bool)

(declare-fun mapDefault!42373 () ValueCell!12828)

(assert (=> b!1096521 (= condMapEmpty!42373 (= (arr!34174 _values!874) ((as const (Array (_ BitVec 32) ValueCell!12828)) mapDefault!42373)))))

(assert (= (and start!96482 res!731919) b!1096520))

(assert (= (and b!1096520 res!731918) b!1096513))

(assert (= (and b!1096513 res!731916) b!1096518))

(assert (= (and b!1096518 res!731922) b!1096515))

(assert (= (and b!1096515 res!731915) b!1096510))

(assert (= (and b!1096510 res!731920) b!1096517))

(assert (= (and b!1096517 res!731914) b!1096511))

(assert (= (and b!1096511 res!731921) b!1096512))

(assert (= (and b!1096512 res!731917) b!1096516))

(assert (= (and b!1096521 condMapEmpty!42373) mapIsEmpty!42373))

(assert (= (and b!1096521 (not condMapEmpty!42373)) mapNonEmpty!42373))

(get-info :version)

(assert (= (and mapNonEmpty!42373 ((_ is ValueCellFull!12828) mapValue!42373)) b!1096514))

(assert (= (and b!1096521 ((_ is ValueCellFull!12828) mapDefault!42373)) b!1096519))

(assert (= start!96482 b!1096521))

(declare-fun b_lambda!17713 () Bool)

(assert (=> (not b_lambda!17713) (not b!1096516)))

(declare-fun t!34077 () Bool)

(declare-fun tb!7899 () Bool)

(assert (=> (and start!96482 (= defaultEntry!882 defaultEntry!882) t!34077) tb!7899))

(declare-fun result!16313 () Bool)

(assert (=> tb!7899 (= result!16313 tp_is_empty!27075)))

(assert (=> b!1096516 t!34077))

(declare-fun b_and!36733 () Bool)

(assert (= b_and!36731 (and (=> t!34077 result!16313) b_and!36733)))

(declare-fun m!1016165 () Bool)

(assert (=> b!1096517 m!1016165))

(declare-fun m!1016167 () Bool)

(assert (=> mapNonEmpty!42373 m!1016167))

(declare-fun m!1016169 () Bool)

(assert (=> b!1096511 m!1016169))

(declare-fun m!1016171 () Bool)

(assert (=> b!1096511 m!1016171))

(declare-fun m!1016173 () Bool)

(assert (=> start!96482 m!1016173))

(declare-fun m!1016175 () Bool)

(assert (=> start!96482 m!1016175))

(declare-fun m!1016177 () Bool)

(assert (=> start!96482 m!1016177))

(declare-fun m!1016179 () Bool)

(assert (=> b!1096516 m!1016179))

(declare-fun m!1016181 () Bool)

(assert (=> b!1096516 m!1016181))

(declare-fun m!1016183 () Bool)

(assert (=> b!1096516 m!1016183))

(declare-fun m!1016185 () Bool)

(assert (=> b!1096516 m!1016185))

(declare-fun m!1016187 () Bool)

(assert (=> b!1096516 m!1016187))

(declare-fun m!1016189 () Bool)

(assert (=> b!1096516 m!1016189))

(declare-fun m!1016191 () Bool)

(assert (=> b!1096512 m!1016191))

(declare-fun m!1016193 () Bool)

(assert (=> b!1096518 m!1016193))

(declare-fun m!1016195 () Bool)

(assert (=> b!1096510 m!1016195))

(declare-fun m!1016197 () Bool)

(assert (=> b!1096513 m!1016197))

(check-sat (not b_next!23025) (not b!1096510) b_and!36733 (not start!96482) (not b!1096516) (not b_lambda!17713) (not b!1096512) (not b!1096518) (not b!1096511) (not b!1096513) tp_is_empty!27075 (not mapNonEmpty!42373))
(check-sat b_and!36733 (not b_next!23025))
