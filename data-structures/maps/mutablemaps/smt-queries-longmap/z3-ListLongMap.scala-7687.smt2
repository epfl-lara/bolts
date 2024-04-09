; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!96506 () Bool)

(assert start!96506)

(declare-fun b_free!23049 () Bool)

(declare-fun b_next!23049 () Bool)

(assert (=> start!96506 (= b_free!23049 (not b_next!23049))))

(declare-fun tp!81074 () Bool)

(declare-fun b_and!36779 () Bool)

(assert (=> start!96506 (= tp!81074 b_and!36779)))

(declare-fun mapIsEmpty!42409 () Bool)

(declare-fun mapRes!42409 () Bool)

(assert (=> mapIsEmpty!42409 mapRes!42409))

(declare-fun b!1096966 () Bool)

(declare-fun e!626149 () Bool)

(declare-fun tp_is_empty!27099 () Bool)

(assert (=> b!1096966 (= e!626149 tp_is_empty!27099)))

(declare-fun b!1096967 () Bool)

(declare-fun res!732241 () Bool)

(declare-fun e!626146 () Bool)

(assert (=> b!1096967 (=> (not res!732241) (not e!626146))))

(declare-datatypes ((array!71058 0))(
  ( (array!71059 (arr!34197 (Array (_ BitVec 32) (_ BitVec 64))) (size!34734 (_ BitVec 32))) )
))
(declare-fun _keys!1070 () array!71058)

(declare-fun mask!1414 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!71058 (_ BitVec 32)) Bool)

(assert (=> b!1096967 (= res!732241 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1070 mask!1414))))

(declare-fun b!1096968 () Bool)

(declare-fun e!626147 () Bool)

(assert (=> b!1096968 (= e!626146 e!626147)))

(declare-fun res!732244 () Bool)

(assert (=> b!1096968 (=> (not res!732244) (not e!626147))))

(declare-fun lt!490319 () array!71058)

(assert (=> b!1096968 (= res!732244 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!490319 mask!1414))))

(declare-fun i!650 () (_ BitVec 32))

(assert (=> b!1096968 (= lt!490319 (array!71059 (store (arr!34197 _keys!1070) i!650 #b1000000000000000000000000000000000000000000000000000000000000000) (size!34734 _keys!1070)))))

(declare-fun b!1096969 () Bool)

(declare-datatypes ((V!41259 0))(
  ( (V!41260 (val!13606 Int)) )
))
(declare-datatypes ((tuple2!17342 0))(
  ( (tuple2!17343 (_1!8681 (_ BitVec 64)) (_2!8681 V!41259)) )
))
(declare-datatypes ((List!24019 0))(
  ( (Nil!24016) (Cons!24015 (h!25224 tuple2!17342) (t!34121 List!24019)) )
))
(declare-datatypes ((ListLongMap!15323 0))(
  ( (ListLongMap!15324 (toList!7677 List!24019)) )
))
(declare-fun lt!490322 () ListLongMap!15323)

(declare-fun lt!490321 () ListLongMap!15323)

(assert (=> b!1096969 (= e!626147 (not (= lt!490322 lt!490321)))))

(assert (=> b!1096969 (= lt!490321 lt!490322)))

(declare-fun lt!490320 () ListLongMap!15323)

(declare-fun k0!904 () (_ BitVec 64))

(declare-fun -!924 (ListLongMap!15323 (_ BitVec 64)) ListLongMap!15323)

(assert (=> b!1096969 (= lt!490322 (-!924 lt!490320 k0!904))))

(declare-datatypes ((Unit!36027 0))(
  ( (Unit!36028) )
))
(declare-fun lt!490318 () Unit!36027)

(declare-fun defaultEntry!882 () Int)

(declare-fun minValue!831 () V!41259)

(declare-fun extraKeys!811 () (_ BitVec 32))

(declare-fun zeroValue!831 () V!41259)

(declare-datatypes ((ValueCell!12840 0))(
  ( (ValueCellFull!12840 (v!16228 V!41259)) (EmptyCell!12840) )
))
(declare-datatypes ((array!71060 0))(
  ( (array!71061 (arr!34198 (Array (_ BitVec 32) ValueCell!12840)) (size!34735 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!71060)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!189 (array!71058 array!71060 (_ BitVec 32) (_ BitVec 32) V!41259 V!41259 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!36027)

(assert (=> b!1096969 (= lt!490318 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!189 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 i!650 k0!904 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun getCurrentListMapNoExtraKeys!4164 (array!71058 array!71060 (_ BitVec 32) (_ BitVec 32) V!41259 V!41259 (_ BitVec 32) Int) ListLongMap!15323)

(declare-fun dynLambda!2295 (Int (_ BitVec 64)) V!41259)

(assert (=> b!1096969 (= lt!490321 (getCurrentListMapNoExtraKeys!4164 lt!490319 (array!71061 (store (arr!34198 _values!874) i!650 (ValueCellFull!12840 (dynLambda!2295 defaultEntry!882 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!34735 _values!874)) mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(assert (=> b!1096969 (= lt!490320 (getCurrentListMapNoExtraKeys!4164 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun arrayContainsKey!0 (array!71058 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1096969 (arrayContainsKey!0 _keys!1070 k0!904 #b00000000000000000000000000000000)))

(declare-fun lt!490317 () Unit!36027)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!71058 (_ BitVec 64) (_ BitVec 32)) Unit!36027)

(assert (=> b!1096969 (= lt!490317 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1070 k0!904 i!650))))

(declare-fun b!1096971 () Bool)

(declare-fun e!626150 () Bool)

(assert (=> b!1096971 (= e!626150 tp_is_empty!27099)))

(declare-fun mapNonEmpty!42409 () Bool)

(declare-fun tp!81075 () Bool)

(assert (=> mapNonEmpty!42409 (= mapRes!42409 (and tp!81075 e!626149))))

(declare-fun mapRest!42409 () (Array (_ BitVec 32) ValueCell!12840))

(declare-fun mapKey!42409 () (_ BitVec 32))

(declare-fun mapValue!42409 () ValueCell!12840)

(assert (=> mapNonEmpty!42409 (= (arr!34198 _values!874) (store mapRest!42409 mapKey!42409 mapValue!42409))))

(declare-fun b!1096972 () Bool)

(declare-fun res!732245 () Bool)

(assert (=> b!1096972 (=> (not res!732245) (not e!626146))))

(assert (=> b!1096972 (= res!732245 (and (= (size!34735 _values!874) (bvadd #b00000000000000000000000000000001 mask!1414)) (= (size!34734 _keys!1070) (size!34735 _values!874)) (bvsge mask!1414 #b00000000000000000000000000000000) (bvsge extraKeys!811 #b00000000000000000000000000000000) (bvsle extraKeys!811 #b00000000000000000000000000000011)))))

(declare-fun b!1096973 () Bool)

(declare-fun res!732246 () Bool)

(assert (=> b!1096973 (=> (not res!732246) (not e!626147))))

(declare-datatypes ((List!24020 0))(
  ( (Nil!24017) (Cons!24016 (h!25225 (_ BitVec 64)) (t!34122 List!24020)) )
))
(declare-fun arrayNoDuplicates!0 (array!71058 (_ BitVec 32) List!24020) Bool)

(assert (=> b!1096973 (= res!732246 (arrayNoDuplicates!0 lt!490319 #b00000000000000000000000000000000 Nil!24017))))

(declare-fun b!1096974 () Bool)

(declare-fun e!626151 () Bool)

(assert (=> b!1096974 (= e!626151 (and e!626150 mapRes!42409))))

(declare-fun condMapEmpty!42409 () Bool)

(declare-fun mapDefault!42409 () ValueCell!12840)

(assert (=> b!1096974 (= condMapEmpty!42409 (= (arr!34198 _values!874) ((as const (Array (_ BitVec 32) ValueCell!12840)) mapDefault!42409)))))

(declare-fun b!1096975 () Bool)

(declare-fun res!732240 () Bool)

(assert (=> b!1096975 (=> (not res!732240) (not e!626146))))

(assert (=> b!1096975 (= res!732240 (and (bvsge i!650 #b00000000000000000000000000000000) (bvslt i!650 (size!34734 _keys!1070))))))

(declare-fun b!1096976 () Bool)

(declare-fun res!732239 () Bool)

(assert (=> b!1096976 (=> (not res!732239) (not e!626146))))

(assert (=> b!1096976 (= res!732239 (= (select (arr!34197 _keys!1070) i!650) k0!904))))

(declare-fun b!1096977 () Bool)

(declare-fun res!732242 () Bool)

(assert (=> b!1096977 (=> (not res!732242) (not e!626146))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1096977 (= res!732242 (validKeyInArray!0 k0!904))))

(declare-fun res!732243 () Bool)

(assert (=> start!96506 (=> (not res!732243) (not e!626146))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!96506 (= res!732243 (validMask!0 mask!1414))))

(assert (=> start!96506 e!626146))

(assert (=> start!96506 tp!81074))

(assert (=> start!96506 true))

(assert (=> start!96506 tp_is_empty!27099))

(declare-fun array_inv!26202 (array!71058) Bool)

(assert (=> start!96506 (array_inv!26202 _keys!1070)))

(declare-fun array_inv!26203 (array!71060) Bool)

(assert (=> start!96506 (and (array_inv!26203 _values!874) e!626151)))

(declare-fun b!1096970 () Bool)

(declare-fun res!732238 () Bool)

(assert (=> b!1096970 (=> (not res!732238) (not e!626146))))

(assert (=> b!1096970 (= res!732238 (arrayNoDuplicates!0 _keys!1070 #b00000000000000000000000000000000 Nil!24017))))

(assert (= (and start!96506 res!732243) b!1096972))

(assert (= (and b!1096972 res!732245) b!1096967))

(assert (= (and b!1096967 res!732241) b!1096970))

(assert (= (and b!1096970 res!732238) b!1096975))

(assert (= (and b!1096975 res!732240) b!1096977))

(assert (= (and b!1096977 res!732242) b!1096976))

(assert (= (and b!1096976 res!732239) b!1096968))

(assert (= (and b!1096968 res!732244) b!1096973))

(assert (= (and b!1096973 res!732246) b!1096969))

(assert (= (and b!1096974 condMapEmpty!42409) mapIsEmpty!42409))

(assert (= (and b!1096974 (not condMapEmpty!42409)) mapNonEmpty!42409))

(get-info :version)

(assert (= (and mapNonEmpty!42409 ((_ is ValueCellFull!12840) mapValue!42409)) b!1096966))

(assert (= (and b!1096974 ((_ is ValueCellFull!12840) mapDefault!42409)) b!1096971))

(assert (= start!96506 b!1096974))

(declare-fun b_lambda!17737 () Bool)

(assert (=> (not b_lambda!17737) (not b!1096969)))

(declare-fun t!34120 () Bool)

(declare-fun tb!7923 () Bool)

(assert (=> (and start!96506 (= defaultEntry!882 defaultEntry!882) t!34120) tb!7923))

(declare-fun result!16361 () Bool)

(assert (=> tb!7923 (= result!16361 tp_is_empty!27099)))

(assert (=> b!1096969 t!34120))

(declare-fun b_and!36781 () Bool)

(assert (= b_and!36779 (and (=> t!34120 result!16361) b_and!36781)))

(declare-fun m!1016577 () Bool)

(assert (=> start!96506 m!1016577))

(declare-fun m!1016579 () Bool)

(assert (=> start!96506 m!1016579))

(declare-fun m!1016581 () Bool)

(assert (=> start!96506 m!1016581))

(declare-fun m!1016583 () Bool)

(assert (=> b!1096969 m!1016583))

(declare-fun m!1016585 () Bool)

(assert (=> b!1096969 m!1016585))

(declare-fun m!1016587 () Bool)

(assert (=> b!1096969 m!1016587))

(declare-fun m!1016589 () Bool)

(assert (=> b!1096969 m!1016589))

(declare-fun m!1016591 () Bool)

(assert (=> b!1096969 m!1016591))

(declare-fun m!1016593 () Bool)

(assert (=> b!1096969 m!1016593))

(declare-fun m!1016595 () Bool)

(assert (=> b!1096969 m!1016595))

(declare-fun m!1016597 () Bool)

(assert (=> b!1096969 m!1016597))

(declare-fun m!1016599 () Bool)

(assert (=> b!1096973 m!1016599))

(declare-fun m!1016601 () Bool)

(assert (=> mapNonEmpty!42409 m!1016601))

(declare-fun m!1016603 () Bool)

(assert (=> b!1096970 m!1016603))

(declare-fun m!1016605 () Bool)

(assert (=> b!1096976 m!1016605))

(declare-fun m!1016607 () Bool)

(assert (=> b!1096977 m!1016607))

(declare-fun m!1016609 () Bool)

(assert (=> b!1096968 m!1016609))

(declare-fun m!1016611 () Bool)

(assert (=> b!1096968 m!1016611))

(declare-fun m!1016613 () Bool)

(assert (=> b!1096967 m!1016613))

(check-sat tp_is_empty!27099 (not b!1096977) (not b_lambda!17737) b_and!36781 (not b!1096969) (not b!1096968) (not b!1096973) (not b!1096970) (not start!96506) (not mapNonEmpty!42409) (not b!1096967) (not b_next!23049))
(check-sat b_and!36781 (not b_next!23049))
