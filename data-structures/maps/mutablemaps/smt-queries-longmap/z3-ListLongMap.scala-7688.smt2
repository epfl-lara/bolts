; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!96512 () Bool)

(assert start!96512)

(declare-fun b_free!23055 () Bool)

(declare-fun b_next!23055 () Bool)

(assert (=> start!96512 (= b_free!23055 (not b_next!23055))))

(declare-fun tp!81093 () Bool)

(declare-fun b_and!36791 () Bool)

(assert (=> start!96512 (= tp!81093 b_and!36791)))

(declare-fun b!1097080 () Bool)

(declare-fun e!626200 () Bool)

(declare-fun e!626203 () Bool)

(assert (=> b!1097080 (= e!626200 e!626203)))

(declare-fun res!732320 () Bool)

(assert (=> b!1097080 (=> (not res!732320) (not e!626203))))

(declare-datatypes ((array!71070 0))(
  ( (array!71071 (arr!34203 (Array (_ BitVec 32) (_ BitVec 64))) (size!34740 (_ BitVec 32))) )
))
(declare-fun lt!490374 () array!71070)

(declare-fun mask!1414 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!71070 (_ BitVec 32)) Bool)

(assert (=> b!1097080 (= res!732320 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!490374 mask!1414))))

(declare-fun _keys!1070 () array!71070)

(declare-fun i!650 () (_ BitVec 32))

(assert (=> b!1097080 (= lt!490374 (array!71071 (store (arr!34203 _keys!1070) i!650 #b1000000000000000000000000000000000000000000000000000000000000000) (size!34740 _keys!1070)))))

(declare-fun b!1097081 () Bool)

(declare-fun res!732319 () Bool)

(assert (=> b!1097081 (=> (not res!732319) (not e!626200))))

(assert (=> b!1097081 (= res!732319 (and (bvsge i!650 #b00000000000000000000000000000000) (bvslt i!650 (size!34740 _keys!1070))))))

(declare-fun b!1097082 () Bool)

(declare-fun res!732323 () Bool)

(assert (=> b!1097082 (=> (not res!732323) (not e!626200))))

(declare-fun k0!904 () (_ BitVec 64))

(assert (=> b!1097082 (= res!732323 (= (select (arr!34203 _keys!1070) i!650) k0!904))))

(declare-fun b!1097083 () Bool)

(declare-fun e!626205 () Bool)

(declare-fun e!626204 () Bool)

(declare-fun mapRes!42418 () Bool)

(assert (=> b!1097083 (= e!626205 (and e!626204 mapRes!42418))))

(declare-fun condMapEmpty!42418 () Bool)

(declare-datatypes ((V!41267 0))(
  ( (V!41268 (val!13609 Int)) )
))
(declare-datatypes ((ValueCell!12843 0))(
  ( (ValueCellFull!12843 (v!16231 V!41267)) (EmptyCell!12843) )
))
(declare-datatypes ((array!71072 0))(
  ( (array!71073 (arr!34204 (Array (_ BitVec 32) ValueCell!12843)) (size!34741 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!71072)

(declare-fun mapDefault!42418 () ValueCell!12843)

(assert (=> b!1097083 (= condMapEmpty!42418 (= (arr!34204 _values!874) ((as const (Array (_ BitVec 32) ValueCell!12843)) mapDefault!42418)))))

(declare-fun res!732325 () Bool)

(assert (=> start!96512 (=> (not res!732325) (not e!626200))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!96512 (= res!732325 (validMask!0 mask!1414))))

(assert (=> start!96512 e!626200))

(assert (=> start!96512 tp!81093))

(assert (=> start!96512 true))

(declare-fun tp_is_empty!27105 () Bool)

(assert (=> start!96512 tp_is_empty!27105))

(declare-fun array_inv!26206 (array!71070) Bool)

(assert (=> start!96512 (array_inv!26206 _keys!1070)))

(declare-fun array_inv!26207 (array!71072) Bool)

(assert (=> start!96512 (and (array_inv!26207 _values!874) e!626205)))

(declare-fun mapIsEmpty!42418 () Bool)

(assert (=> mapIsEmpty!42418 mapRes!42418))

(declare-fun b!1097084 () Bool)

(declare-fun e!626201 () Bool)

(assert (=> b!1097084 (= e!626201 tp_is_empty!27105)))

(declare-fun b!1097085 () Bool)

(declare-fun res!732327 () Bool)

(assert (=> b!1097085 (=> (not res!732327) (not e!626200))))

(declare-fun extraKeys!811 () (_ BitVec 32))

(assert (=> b!1097085 (= res!732327 (and (= (size!34741 _values!874) (bvadd #b00000000000000000000000000000001 mask!1414)) (= (size!34740 _keys!1070) (size!34741 _values!874)) (bvsge mask!1414 #b00000000000000000000000000000000) (bvsge extraKeys!811 #b00000000000000000000000000000000) (bvsle extraKeys!811 #b00000000000000000000000000000011)))))

(declare-fun b!1097086 () Bool)

(declare-fun res!732324 () Bool)

(assert (=> b!1097086 (=> (not res!732324) (not e!626200))))

(declare-datatypes ((List!24024 0))(
  ( (Nil!24021) (Cons!24020 (h!25229 (_ BitVec 64)) (t!34132 List!24024)) )
))
(declare-fun arrayNoDuplicates!0 (array!71070 (_ BitVec 32) List!24024) Bool)

(assert (=> b!1097086 (= res!732324 (arrayNoDuplicates!0 _keys!1070 #b00000000000000000000000000000000 Nil!24021))))

(declare-fun b!1097087 () Bool)

(declare-fun res!732322 () Bool)

(assert (=> b!1097087 (=> (not res!732322) (not e!626200))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1097087 (= res!732322 (validKeyInArray!0 k0!904))))

(declare-fun b!1097088 () Bool)

(declare-fun res!732321 () Bool)

(assert (=> b!1097088 (=> (not res!732321) (not e!626200))))

(assert (=> b!1097088 (= res!732321 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1070 mask!1414))))

(declare-fun b!1097089 () Bool)

(declare-fun res!732326 () Bool)

(assert (=> b!1097089 (=> (not res!732326) (not e!626203))))

(assert (=> b!1097089 (= res!732326 (arrayNoDuplicates!0 lt!490374 #b00000000000000000000000000000000 Nil!24021))))

(declare-fun b!1097090 () Bool)

(assert (=> b!1097090 (= e!626204 tp_is_empty!27105)))

(declare-fun mapNonEmpty!42418 () Bool)

(declare-fun tp!81092 () Bool)

(assert (=> mapNonEmpty!42418 (= mapRes!42418 (and tp!81092 e!626201))))

(declare-fun mapKey!42418 () (_ BitVec 32))

(declare-fun mapValue!42418 () ValueCell!12843)

(declare-fun mapRest!42418 () (Array (_ BitVec 32) ValueCell!12843))

(assert (=> mapNonEmpty!42418 (= (arr!34204 _values!874) (store mapRest!42418 mapKey!42418 mapValue!42418))))

(declare-fun b!1097091 () Bool)

(assert (=> b!1097091 (= e!626203 (not true))))

(declare-datatypes ((tuple2!17346 0))(
  ( (tuple2!17347 (_1!8683 (_ BitVec 64)) (_2!8683 V!41267)) )
))
(declare-datatypes ((List!24025 0))(
  ( (Nil!24022) (Cons!24021 (h!25230 tuple2!17346) (t!34133 List!24025)) )
))
(declare-datatypes ((ListLongMap!15327 0))(
  ( (ListLongMap!15328 (toList!7679 List!24025)) )
))
(declare-fun lt!490371 () ListLongMap!15327)

(declare-fun lt!490375 () ListLongMap!15327)

(assert (=> b!1097091 (and (= lt!490371 lt!490375) (= lt!490375 lt!490371))))

(declare-fun lt!490373 () ListLongMap!15327)

(declare-fun -!926 (ListLongMap!15327 (_ BitVec 64)) ListLongMap!15327)

(assert (=> b!1097091 (= lt!490375 (-!926 lt!490373 k0!904))))

(declare-fun defaultEntry!882 () Int)

(declare-fun minValue!831 () V!41267)

(declare-datatypes ((Unit!36031 0))(
  ( (Unit!36032) )
))
(declare-fun lt!490376 () Unit!36031)

(declare-fun zeroValue!831 () V!41267)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!191 (array!71070 array!71072 (_ BitVec 32) (_ BitVec 32) V!41267 V!41267 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!36031)

(assert (=> b!1097091 (= lt!490376 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!191 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 i!650 k0!904 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun getCurrentListMapNoExtraKeys!4166 (array!71070 array!71072 (_ BitVec 32) (_ BitVec 32) V!41267 V!41267 (_ BitVec 32) Int) ListLongMap!15327)

(declare-fun dynLambda!2297 (Int (_ BitVec 64)) V!41267)

(assert (=> b!1097091 (= lt!490371 (getCurrentListMapNoExtraKeys!4166 lt!490374 (array!71073 (store (arr!34204 _values!874) i!650 (ValueCellFull!12843 (dynLambda!2297 defaultEntry!882 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!34741 _values!874)) mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(assert (=> b!1097091 (= lt!490373 (getCurrentListMapNoExtraKeys!4166 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun arrayContainsKey!0 (array!71070 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1097091 (arrayContainsKey!0 _keys!1070 k0!904 #b00000000000000000000000000000000)))

(declare-fun lt!490372 () Unit!36031)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!71070 (_ BitVec 64) (_ BitVec 32)) Unit!36031)

(assert (=> b!1097091 (= lt!490372 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1070 k0!904 i!650))))

(assert (= (and start!96512 res!732325) b!1097085))

(assert (= (and b!1097085 res!732327) b!1097088))

(assert (= (and b!1097088 res!732321) b!1097086))

(assert (= (and b!1097086 res!732324) b!1097081))

(assert (= (and b!1097081 res!732319) b!1097087))

(assert (= (and b!1097087 res!732322) b!1097082))

(assert (= (and b!1097082 res!732323) b!1097080))

(assert (= (and b!1097080 res!732320) b!1097089))

(assert (= (and b!1097089 res!732326) b!1097091))

(assert (= (and b!1097083 condMapEmpty!42418) mapIsEmpty!42418))

(assert (= (and b!1097083 (not condMapEmpty!42418)) mapNonEmpty!42418))

(get-info :version)

(assert (= (and mapNonEmpty!42418 ((_ is ValueCellFull!12843) mapValue!42418)) b!1097084))

(assert (= (and b!1097083 ((_ is ValueCellFull!12843) mapDefault!42418)) b!1097090))

(assert (= start!96512 b!1097083))

(declare-fun b_lambda!17743 () Bool)

(assert (=> (not b_lambda!17743) (not b!1097091)))

(declare-fun t!34131 () Bool)

(declare-fun tb!7929 () Bool)

(assert (=> (and start!96512 (= defaultEntry!882 defaultEntry!882) t!34131) tb!7929))

(declare-fun result!16373 () Bool)

(assert (=> tb!7929 (= result!16373 tp_is_empty!27105)))

(assert (=> b!1097091 t!34131))

(declare-fun b_and!36793 () Bool)

(assert (= b_and!36791 (and (=> t!34131 result!16373) b_and!36793)))

(declare-fun m!1016691 () Bool)

(assert (=> b!1097080 m!1016691))

(declare-fun m!1016693 () Bool)

(assert (=> b!1097080 m!1016693))

(declare-fun m!1016695 () Bool)

(assert (=> b!1097088 m!1016695))

(declare-fun m!1016697 () Bool)

(assert (=> mapNonEmpty!42418 m!1016697))

(declare-fun m!1016699 () Bool)

(assert (=> b!1097082 m!1016699))

(declare-fun m!1016701 () Bool)

(assert (=> b!1097087 m!1016701))

(declare-fun m!1016703 () Bool)

(assert (=> b!1097089 m!1016703))

(declare-fun m!1016705 () Bool)

(assert (=> b!1097086 m!1016705))

(declare-fun m!1016707 () Bool)

(assert (=> b!1097091 m!1016707))

(declare-fun m!1016709 () Bool)

(assert (=> b!1097091 m!1016709))

(declare-fun m!1016711 () Bool)

(assert (=> b!1097091 m!1016711))

(declare-fun m!1016713 () Bool)

(assert (=> b!1097091 m!1016713))

(declare-fun m!1016715 () Bool)

(assert (=> b!1097091 m!1016715))

(declare-fun m!1016717 () Bool)

(assert (=> b!1097091 m!1016717))

(declare-fun m!1016719 () Bool)

(assert (=> b!1097091 m!1016719))

(declare-fun m!1016721 () Bool)

(assert (=> b!1097091 m!1016721))

(declare-fun m!1016723 () Bool)

(assert (=> start!96512 m!1016723))

(declare-fun m!1016725 () Bool)

(assert (=> start!96512 m!1016725))

(declare-fun m!1016727 () Bool)

(assert (=> start!96512 m!1016727))

(check-sat (not b_next!23055) (not b!1097091) (not b_lambda!17743) (not b!1097080) (not b!1097088) (not b!1097089) (not mapNonEmpty!42418) (not b!1097087) b_and!36793 tp_is_empty!27105 (not start!96512) (not b!1097086))
(check-sat b_and!36793 (not b_next!23055))
