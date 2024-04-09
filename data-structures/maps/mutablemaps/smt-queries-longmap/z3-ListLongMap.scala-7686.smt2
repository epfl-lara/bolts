; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!96500 () Bool)

(assert start!96500)

(declare-fun b_free!23043 () Bool)

(declare-fun b_next!23043 () Bool)

(assert (=> start!96500 (= b_free!23043 (not b_next!23043))))

(declare-fun tp!81057 () Bool)

(declare-fun b_and!36767 () Bool)

(assert (=> start!96500 (= tp!81057 b_and!36767)))

(declare-fun b!1096852 () Bool)

(declare-fun e!626097 () Bool)

(declare-fun tp_is_empty!27093 () Bool)

(assert (=> b!1096852 (= e!626097 tp_is_empty!27093)))

(declare-fun b!1096853 () Bool)

(declare-fun res!732159 () Bool)

(declare-fun e!626095 () Bool)

(assert (=> b!1096853 (=> (not res!732159) (not e!626095))))

(declare-datatypes ((array!71046 0))(
  ( (array!71047 (arr!34191 (Array (_ BitVec 32) (_ BitVec 64))) (size!34728 (_ BitVec 32))) )
))
(declare-fun lt!490273 () array!71046)

(declare-datatypes ((List!24014 0))(
  ( (Nil!24011) (Cons!24010 (h!25219 (_ BitVec 64)) (t!34110 List!24014)) )
))
(declare-fun arrayNoDuplicates!0 (array!71046 (_ BitVec 32) List!24014) Bool)

(assert (=> b!1096853 (= res!732159 (arrayNoDuplicates!0 lt!490273 #b00000000000000000000000000000000 Nil!24011))))

(declare-fun res!732164 () Bool)

(declare-fun e!626094 () Bool)

(assert (=> start!96500 (=> (not res!732164) (not e!626094))))

(declare-fun mask!1414 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!96500 (= res!732164 (validMask!0 mask!1414))))

(assert (=> start!96500 e!626094))

(assert (=> start!96500 tp!81057))

(assert (=> start!96500 true))

(assert (=> start!96500 tp_is_empty!27093))

(declare-fun _keys!1070 () array!71046)

(declare-fun array_inv!26198 (array!71046) Bool)

(assert (=> start!96500 (array_inv!26198 _keys!1070)))

(declare-datatypes ((V!41251 0))(
  ( (V!41252 (val!13603 Int)) )
))
(declare-datatypes ((ValueCell!12837 0))(
  ( (ValueCellFull!12837 (v!16225 V!41251)) (EmptyCell!12837) )
))
(declare-datatypes ((array!71048 0))(
  ( (array!71049 (arr!34192 (Array (_ BitVec 32) ValueCell!12837)) (size!34729 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!71048)

(declare-fun e!626092 () Bool)

(declare-fun array_inv!26199 (array!71048) Bool)

(assert (=> start!96500 (and (array_inv!26199 _values!874) e!626092)))

(declare-fun b!1096854 () Bool)

(declare-fun res!732161 () Bool)

(assert (=> b!1096854 (=> (not res!732161) (not e!626094))))

(declare-fun extraKeys!811 () (_ BitVec 32))

(assert (=> b!1096854 (= res!732161 (and (= (size!34729 _values!874) (bvadd #b00000000000000000000000000000001 mask!1414)) (= (size!34728 _keys!1070) (size!34729 _values!874)) (bvsge mask!1414 #b00000000000000000000000000000000) (bvsge extraKeys!811 #b00000000000000000000000000000000) (bvsle extraKeys!811 #b00000000000000000000000000000011)))))

(declare-fun b!1096855 () Bool)

(assert (=> b!1096855 (= e!626094 e!626095)))

(declare-fun res!732165 () Bool)

(assert (=> b!1096855 (=> (not res!732165) (not e!626095))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!71046 (_ BitVec 32)) Bool)

(assert (=> b!1096855 (= res!732165 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!490273 mask!1414))))

(declare-fun i!650 () (_ BitVec 32))

(assert (=> b!1096855 (= lt!490273 (array!71047 (store (arr!34191 _keys!1070) i!650 #b1000000000000000000000000000000000000000000000000000000000000000) (size!34728 _keys!1070)))))

(declare-fun b!1096856 () Bool)

(declare-fun res!732160 () Bool)

(assert (=> b!1096856 (=> (not res!732160) (not e!626094))))

(assert (=> b!1096856 (= res!732160 (arrayNoDuplicates!0 _keys!1070 #b00000000000000000000000000000000 Nil!24011))))

(declare-fun b!1096857 () Bool)

(assert (=> b!1096857 (= e!626095 (not true))))

(declare-fun defaultEntry!882 () Int)

(declare-fun minValue!831 () V!41251)

(declare-datatypes ((tuple2!17338 0))(
  ( (tuple2!17339 (_1!8679 (_ BitVec 64)) (_2!8679 V!41251)) )
))
(declare-datatypes ((List!24015 0))(
  ( (Nil!24012) (Cons!24011 (h!25220 tuple2!17338) (t!34111 List!24015)) )
))
(declare-datatypes ((ListLongMap!15319 0))(
  ( (ListLongMap!15320 (toList!7675 List!24015)) )
))
(declare-fun lt!490271 () ListLongMap!15319)

(declare-fun zeroValue!831 () V!41251)

(declare-fun getCurrentListMapNoExtraKeys!4162 (array!71046 array!71048 (_ BitVec 32) (_ BitVec 32) V!41251 V!41251 (_ BitVec 32) Int) ListLongMap!15319)

(declare-fun dynLambda!2293 (Int (_ BitVec 64)) V!41251)

(assert (=> b!1096857 (= lt!490271 (getCurrentListMapNoExtraKeys!4162 lt!490273 (array!71049 (store (arr!34192 _values!874) i!650 (ValueCellFull!12837 (dynLambda!2293 defaultEntry!882 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!34729 _values!874)) mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun lt!490274 () ListLongMap!15319)

(assert (=> b!1096857 (= lt!490274 (getCurrentListMapNoExtraKeys!4162 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun k0!904 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!71046 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1096857 (arrayContainsKey!0 _keys!1070 k0!904 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!36023 0))(
  ( (Unit!36024) )
))
(declare-fun lt!490272 () Unit!36023)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!71046 (_ BitVec 64) (_ BitVec 32)) Unit!36023)

(assert (=> b!1096857 (= lt!490272 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1070 k0!904 i!650))))

(declare-fun mapIsEmpty!42400 () Bool)

(declare-fun mapRes!42400 () Bool)

(assert (=> mapIsEmpty!42400 mapRes!42400))

(declare-fun b!1096858 () Bool)

(assert (=> b!1096858 (= e!626092 (and e!626097 mapRes!42400))))

(declare-fun condMapEmpty!42400 () Bool)

(declare-fun mapDefault!42400 () ValueCell!12837)

(assert (=> b!1096858 (= condMapEmpty!42400 (= (arr!34192 _values!874) ((as const (Array (_ BitVec 32) ValueCell!12837)) mapDefault!42400)))))

(declare-fun b!1096859 () Bool)

(declare-fun res!732158 () Bool)

(assert (=> b!1096859 (=> (not res!732158) (not e!626094))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1096859 (= res!732158 (validKeyInArray!0 k0!904))))

(declare-fun b!1096860 () Bool)

(declare-fun e!626096 () Bool)

(assert (=> b!1096860 (= e!626096 tp_is_empty!27093)))

(declare-fun b!1096861 () Bool)

(declare-fun res!732162 () Bool)

(assert (=> b!1096861 (=> (not res!732162) (not e!626094))))

(assert (=> b!1096861 (= res!732162 (and (bvsge i!650 #b00000000000000000000000000000000) (bvslt i!650 (size!34728 _keys!1070))))))

(declare-fun mapNonEmpty!42400 () Bool)

(declare-fun tp!81056 () Bool)

(assert (=> mapNonEmpty!42400 (= mapRes!42400 (and tp!81056 e!626096))))

(declare-fun mapRest!42400 () (Array (_ BitVec 32) ValueCell!12837))

(declare-fun mapValue!42400 () ValueCell!12837)

(declare-fun mapKey!42400 () (_ BitVec 32))

(assert (=> mapNonEmpty!42400 (= (arr!34192 _values!874) (store mapRest!42400 mapKey!42400 mapValue!42400))))

(declare-fun b!1096862 () Bool)

(declare-fun res!732157 () Bool)

(assert (=> b!1096862 (=> (not res!732157) (not e!626094))))

(assert (=> b!1096862 (= res!732157 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1070 mask!1414))))

(declare-fun b!1096863 () Bool)

(declare-fun res!732163 () Bool)

(assert (=> b!1096863 (=> (not res!732163) (not e!626094))))

(assert (=> b!1096863 (= res!732163 (= (select (arr!34191 _keys!1070) i!650) k0!904))))

(assert (= (and start!96500 res!732164) b!1096854))

(assert (= (and b!1096854 res!732161) b!1096862))

(assert (= (and b!1096862 res!732157) b!1096856))

(assert (= (and b!1096856 res!732160) b!1096861))

(assert (= (and b!1096861 res!732162) b!1096859))

(assert (= (and b!1096859 res!732158) b!1096863))

(assert (= (and b!1096863 res!732163) b!1096855))

(assert (= (and b!1096855 res!732165) b!1096853))

(assert (= (and b!1096853 res!732159) b!1096857))

(assert (= (and b!1096858 condMapEmpty!42400) mapIsEmpty!42400))

(assert (= (and b!1096858 (not condMapEmpty!42400)) mapNonEmpty!42400))

(get-info :version)

(assert (= (and mapNonEmpty!42400 ((_ is ValueCellFull!12837) mapValue!42400)) b!1096860))

(assert (= (and b!1096858 ((_ is ValueCellFull!12837) mapDefault!42400)) b!1096852))

(assert (= start!96500 b!1096858))

(declare-fun b_lambda!17731 () Bool)

(assert (=> (not b_lambda!17731) (not b!1096857)))

(declare-fun t!34109 () Bool)

(declare-fun tb!7917 () Bool)

(assert (=> (and start!96500 (= defaultEntry!882 defaultEntry!882) t!34109) tb!7917))

(declare-fun result!16349 () Bool)

(assert (=> tb!7917 (= result!16349 tp_is_empty!27093)))

(assert (=> b!1096857 t!34109))

(declare-fun b_and!36769 () Bool)

(assert (= b_and!36767 (and (=> t!34109 result!16349) b_and!36769)))

(declare-fun m!1016471 () Bool)

(assert (=> b!1096862 m!1016471))

(declare-fun m!1016473 () Bool)

(assert (=> b!1096855 m!1016473))

(declare-fun m!1016475 () Bool)

(assert (=> b!1096855 m!1016475))

(declare-fun m!1016477 () Bool)

(assert (=> start!96500 m!1016477))

(declare-fun m!1016479 () Bool)

(assert (=> start!96500 m!1016479))

(declare-fun m!1016481 () Bool)

(assert (=> start!96500 m!1016481))

(declare-fun m!1016483 () Bool)

(assert (=> b!1096859 m!1016483))

(declare-fun m!1016485 () Bool)

(assert (=> mapNonEmpty!42400 m!1016485))

(declare-fun m!1016487 () Bool)

(assert (=> b!1096853 m!1016487))

(declare-fun m!1016489 () Bool)

(assert (=> b!1096863 m!1016489))

(declare-fun m!1016491 () Bool)

(assert (=> b!1096857 m!1016491))

(declare-fun m!1016493 () Bool)

(assert (=> b!1096857 m!1016493))

(declare-fun m!1016495 () Bool)

(assert (=> b!1096857 m!1016495))

(declare-fun m!1016497 () Bool)

(assert (=> b!1096857 m!1016497))

(declare-fun m!1016499 () Bool)

(assert (=> b!1096857 m!1016499))

(declare-fun m!1016501 () Bool)

(assert (=> b!1096857 m!1016501))

(declare-fun m!1016503 () Bool)

(assert (=> b!1096856 m!1016503))

(check-sat (not b!1096856) (not b!1096857) (not b!1096855) (not b!1096862) (not b_next!23043) tp_is_empty!27093 (not start!96500) (not mapNonEmpty!42400) (not b_lambda!17731) b_and!36769 (not b!1096853) (not b!1096859))
(check-sat b_and!36769 (not b_next!23043))
