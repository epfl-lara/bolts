; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!96488 () Bool)

(assert start!96488)

(declare-fun b_free!23031 () Bool)

(declare-fun b_next!23031 () Bool)

(assert (=> start!96488 (= b_free!23031 (not b_next!23031))))

(declare-fun tp!81020 () Bool)

(declare-fun b_and!36743 () Bool)

(assert (=> start!96488 (= tp!81020 b_and!36743)))

(declare-fun b!1096624 () Bool)

(declare-fun e!625985 () Bool)

(assert (=> b!1096624 (= e!625985 (not true))))

(declare-fun defaultEntry!882 () Int)

(declare-datatypes ((V!41235 0))(
  ( (V!41236 (val!13597 Int)) )
))
(declare-datatypes ((ValueCell!12831 0))(
  ( (ValueCellFull!12831 (v!16219 V!41235)) (EmptyCell!12831) )
))
(declare-datatypes ((array!71022 0))(
  ( (array!71023 (arr!34179 (Array (_ BitVec 32) ValueCell!12831)) (size!34716 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!71022)

(declare-fun minValue!831 () V!41235)

(declare-fun mask!1414 () (_ BitVec 32))

(declare-fun i!650 () (_ BitVec 32))

(declare-fun extraKeys!811 () (_ BitVec 32))

(declare-datatypes ((array!71024 0))(
  ( (array!71025 (arr!34180 (Array (_ BitVec 32) (_ BitVec 64))) (size!34717 (_ BitVec 32))) )
))
(declare-fun lt!490202 () array!71024)

(declare-datatypes ((tuple2!17330 0))(
  ( (tuple2!17331 (_1!8675 (_ BitVec 64)) (_2!8675 V!41235)) )
))
(declare-datatypes ((List!24006 0))(
  ( (Nil!24003) (Cons!24002 (h!25211 tuple2!17330) (t!34090 List!24006)) )
))
(declare-datatypes ((ListLongMap!15311 0))(
  ( (ListLongMap!15312 (toList!7671 List!24006)) )
))
(declare-fun lt!490200 () ListLongMap!15311)

(declare-fun zeroValue!831 () V!41235)

(declare-fun getCurrentListMapNoExtraKeys!4158 (array!71024 array!71022 (_ BitVec 32) (_ BitVec 32) V!41235 V!41235 (_ BitVec 32) Int) ListLongMap!15311)

(declare-fun dynLambda!2289 (Int (_ BitVec 64)) V!41235)

(assert (=> b!1096624 (= lt!490200 (getCurrentListMapNoExtraKeys!4158 lt!490202 (array!71023 (store (arr!34179 _values!874) i!650 (ValueCellFull!12831 (dynLambda!2289 defaultEntry!882 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!34716 _values!874)) mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun _keys!1070 () array!71024)

(declare-fun lt!490199 () ListLongMap!15311)

(assert (=> b!1096624 (= lt!490199 (getCurrentListMapNoExtraKeys!4158 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun k0!904 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!71024 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1096624 (arrayContainsKey!0 _keys!1070 k0!904 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!36015 0))(
  ( (Unit!36016) )
))
(declare-fun lt!490201 () Unit!36015)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!71024 (_ BitVec 64) (_ BitVec 32)) Unit!36015)

(assert (=> b!1096624 (= lt!490201 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1070 k0!904 i!650))))

(declare-fun b!1096625 () Bool)

(declare-fun res!731998 () Bool)

(declare-fun e!625986 () Bool)

(assert (=> b!1096625 (=> (not res!731998) (not e!625986))))

(assert (=> b!1096625 (= res!731998 (and (bvsge i!650 #b00000000000000000000000000000000) (bvslt i!650 (size!34717 _keys!1070))))))

(declare-fun b!1096626 () Bool)

(declare-fun e!625988 () Bool)

(declare-fun e!625987 () Bool)

(declare-fun mapRes!42382 () Bool)

(assert (=> b!1096626 (= e!625988 (and e!625987 mapRes!42382))))

(declare-fun condMapEmpty!42382 () Bool)

(declare-fun mapDefault!42382 () ValueCell!12831)

(assert (=> b!1096626 (= condMapEmpty!42382 (= (arr!34179 _values!874) ((as const (Array (_ BitVec 32) ValueCell!12831)) mapDefault!42382)))))

(declare-fun b!1096627 () Bool)

(declare-fun res!732003 () Bool)

(assert (=> b!1096627 (=> (not res!732003) (not e!625986))))

(assert (=> b!1096627 (= res!732003 (= (select (arr!34180 _keys!1070) i!650) k0!904))))

(declare-fun b!1096628 () Bool)

(assert (=> b!1096628 (= e!625986 e!625985)))

(declare-fun res!732002 () Bool)

(assert (=> b!1096628 (=> (not res!732002) (not e!625985))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!71024 (_ BitVec 32)) Bool)

(assert (=> b!1096628 (= res!732002 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!490202 mask!1414))))

(assert (=> b!1096628 (= lt!490202 (array!71025 (store (arr!34180 _keys!1070) i!650 #b1000000000000000000000000000000000000000000000000000000000000000) (size!34717 _keys!1070)))))

(declare-fun b!1096629 () Bool)

(declare-fun res!731997 () Bool)

(assert (=> b!1096629 (=> (not res!731997) (not e!625986))))

(assert (=> b!1096629 (= res!731997 (and (= (size!34716 _values!874) (bvadd #b00000000000000000000000000000001 mask!1414)) (= (size!34717 _keys!1070) (size!34716 _values!874)) (bvsge mask!1414 #b00000000000000000000000000000000) (bvsge extraKeys!811 #b00000000000000000000000000000000) (bvsle extraKeys!811 #b00000000000000000000000000000011)))))

(declare-fun b!1096630 () Bool)

(declare-fun res!732000 () Bool)

(assert (=> b!1096630 (=> (not res!732000) (not e!625986))))

(declare-datatypes ((List!24007 0))(
  ( (Nil!24004) (Cons!24003 (h!25212 (_ BitVec 64)) (t!34091 List!24007)) )
))
(declare-fun arrayNoDuplicates!0 (array!71024 (_ BitVec 32) List!24007) Bool)

(assert (=> b!1096630 (= res!732000 (arrayNoDuplicates!0 _keys!1070 #b00000000000000000000000000000000 Nil!24004))))

(declare-fun b!1096631 () Bool)

(declare-fun tp_is_empty!27081 () Bool)

(assert (=> b!1096631 (= e!625987 tp_is_empty!27081)))

(declare-fun mapNonEmpty!42382 () Bool)

(declare-fun tp!81021 () Bool)

(declare-fun e!625984 () Bool)

(assert (=> mapNonEmpty!42382 (= mapRes!42382 (and tp!81021 e!625984))))

(declare-fun mapRest!42382 () (Array (_ BitVec 32) ValueCell!12831))

(declare-fun mapKey!42382 () (_ BitVec 32))

(declare-fun mapValue!42382 () ValueCell!12831)

(assert (=> mapNonEmpty!42382 (= (arr!34179 _values!874) (store mapRest!42382 mapKey!42382 mapValue!42382))))

(declare-fun b!1096632 () Bool)

(declare-fun res!732001 () Bool)

(assert (=> b!1096632 (=> (not res!732001) (not e!625986))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1096632 (= res!732001 (validKeyInArray!0 k0!904))))

(declare-fun b!1096633 () Bool)

(assert (=> b!1096633 (= e!625984 tp_is_empty!27081)))

(declare-fun mapIsEmpty!42382 () Bool)

(assert (=> mapIsEmpty!42382 mapRes!42382))

(declare-fun res!731999 () Bool)

(assert (=> start!96488 (=> (not res!731999) (not e!625986))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!96488 (= res!731999 (validMask!0 mask!1414))))

(assert (=> start!96488 e!625986))

(assert (=> start!96488 tp!81020))

(assert (=> start!96488 true))

(assert (=> start!96488 tp_is_empty!27081))

(declare-fun array_inv!26190 (array!71024) Bool)

(assert (=> start!96488 (array_inv!26190 _keys!1070)))

(declare-fun array_inv!26191 (array!71022) Bool)

(assert (=> start!96488 (and (array_inv!26191 _values!874) e!625988)))

(declare-fun b!1096634 () Bool)

(declare-fun res!731996 () Bool)

(assert (=> b!1096634 (=> (not res!731996) (not e!625985))))

(assert (=> b!1096634 (= res!731996 (arrayNoDuplicates!0 lt!490202 #b00000000000000000000000000000000 Nil!24004))))

(declare-fun b!1096635 () Bool)

(declare-fun res!731995 () Bool)

(assert (=> b!1096635 (=> (not res!731995) (not e!625986))))

(assert (=> b!1096635 (= res!731995 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1070 mask!1414))))

(assert (= (and start!96488 res!731999) b!1096629))

(assert (= (and b!1096629 res!731997) b!1096635))

(assert (= (and b!1096635 res!731995) b!1096630))

(assert (= (and b!1096630 res!732000) b!1096625))

(assert (= (and b!1096625 res!731998) b!1096632))

(assert (= (and b!1096632 res!732001) b!1096627))

(assert (= (and b!1096627 res!732003) b!1096628))

(assert (= (and b!1096628 res!732002) b!1096634))

(assert (= (and b!1096634 res!731996) b!1096624))

(assert (= (and b!1096626 condMapEmpty!42382) mapIsEmpty!42382))

(assert (= (and b!1096626 (not condMapEmpty!42382)) mapNonEmpty!42382))

(get-info :version)

(assert (= (and mapNonEmpty!42382 ((_ is ValueCellFull!12831) mapValue!42382)) b!1096633))

(assert (= (and b!1096626 ((_ is ValueCellFull!12831) mapDefault!42382)) b!1096631))

(assert (= start!96488 b!1096626))

(declare-fun b_lambda!17719 () Bool)

(assert (=> (not b_lambda!17719) (not b!1096624)))

(declare-fun t!34089 () Bool)

(declare-fun tb!7905 () Bool)

(assert (=> (and start!96488 (= defaultEntry!882 defaultEntry!882) t!34089) tb!7905))

(declare-fun result!16325 () Bool)

(assert (=> tb!7905 (= result!16325 tp_is_empty!27081)))

(assert (=> b!1096624 t!34089))

(declare-fun b_and!36745 () Bool)

(assert (= b_and!36743 (and (=> t!34089 result!16325) b_and!36745)))

(declare-fun m!1016267 () Bool)

(assert (=> mapNonEmpty!42382 m!1016267))

(declare-fun m!1016269 () Bool)

(assert (=> b!1096630 m!1016269))

(declare-fun m!1016271 () Bool)

(assert (=> b!1096627 m!1016271))

(declare-fun m!1016273 () Bool)

(assert (=> b!1096624 m!1016273))

(declare-fun m!1016275 () Bool)

(assert (=> b!1096624 m!1016275))

(declare-fun m!1016277 () Bool)

(assert (=> b!1096624 m!1016277))

(declare-fun m!1016279 () Bool)

(assert (=> b!1096624 m!1016279))

(declare-fun m!1016281 () Bool)

(assert (=> b!1096624 m!1016281))

(declare-fun m!1016283 () Bool)

(assert (=> b!1096624 m!1016283))

(declare-fun m!1016285 () Bool)

(assert (=> b!1096628 m!1016285))

(declare-fun m!1016287 () Bool)

(assert (=> b!1096628 m!1016287))

(declare-fun m!1016289 () Bool)

(assert (=> b!1096635 m!1016289))

(declare-fun m!1016291 () Bool)

(assert (=> b!1096632 m!1016291))

(declare-fun m!1016293 () Bool)

(assert (=> b!1096634 m!1016293))

(declare-fun m!1016295 () Bool)

(assert (=> start!96488 m!1016295))

(declare-fun m!1016297 () Bool)

(assert (=> start!96488 m!1016297))

(declare-fun m!1016299 () Bool)

(assert (=> start!96488 m!1016299))

(check-sat b_and!36745 (not start!96488) (not b_lambda!17719) tp_is_empty!27081 (not mapNonEmpty!42382) (not b_next!23031) (not b!1096630) (not b!1096632) (not b!1096635) (not b!1096624) (not b!1096634) (not b!1096628))
(check-sat b_and!36745 (not b_next!23031))
