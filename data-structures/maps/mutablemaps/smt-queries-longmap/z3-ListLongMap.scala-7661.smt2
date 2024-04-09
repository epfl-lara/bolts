; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!96324 () Bool)

(assert start!96324)

(declare-fun b_free!22941 () Bool)

(declare-fun b_next!22941 () Bool)

(assert (=> start!96324 (= b_free!22941 (not b_next!22941))))

(declare-fun tp!80672 () Bool)

(declare-fun b_and!36575 () Bool)

(assert (=> start!96324 (= tp!80672 b_and!36575)))

(declare-fun b!1094103 () Bool)

(declare-fun e!624699 () Bool)

(declare-fun e!624698 () Bool)

(assert (=> b!1094103 (= e!624699 e!624698)))

(declare-fun res!730226 () Bool)

(assert (=> b!1094103 (=> (not res!730226) (not e!624698))))

(declare-datatypes ((array!70758 0))(
  ( (array!70759 (arr!34049 (Array (_ BitVec 32) (_ BitVec 64))) (size!34586 (_ BitVec 32))) )
))
(declare-fun lt!489483 () array!70758)

(declare-fun mask!1414 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!70758 (_ BitVec 32)) Bool)

(assert (=> b!1094103 (= res!730226 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!489483 mask!1414))))

(declare-fun _keys!1070 () array!70758)

(declare-fun i!650 () (_ BitVec 32))

(assert (=> b!1094103 (= lt!489483 (array!70759 (store (arr!34049 _keys!1070) i!650 #b1000000000000000000000000000000000000000000000000000000000000000) (size!34586 _keys!1070)))))

(declare-fun b!1094105 () Bool)

(declare-fun res!730221 () Bool)

(assert (=> b!1094105 (=> (not res!730221) (not e!624699))))

(assert (=> b!1094105 (= res!730221 (and (bvsge i!650 #b00000000000000000000000000000000) (bvslt i!650 (size!34586 _keys!1070))))))

(declare-fun b!1094106 () Bool)

(declare-fun res!730222 () Bool)

(assert (=> b!1094106 (=> (not res!730222) (not e!624698))))

(declare-datatypes ((List!23926 0))(
  ( (Nil!23923) (Cons!23922 (h!25131 (_ BitVec 64)) (t!33932 List!23926)) )
))
(declare-fun arrayNoDuplicates!0 (array!70758 (_ BitVec 32) List!23926) Bool)

(assert (=> b!1094106 (= res!730222 (arrayNoDuplicates!0 lt!489483 #b00000000000000000000000000000000 Nil!23923))))

(declare-fun mapIsEmpty!42169 () Bool)

(declare-fun mapRes!42169 () Bool)

(assert (=> mapIsEmpty!42169 mapRes!42169))

(declare-fun b!1094107 () Bool)

(declare-fun res!730229 () Bool)

(assert (=> b!1094107 (=> (not res!730229) (not e!624699))))

(declare-fun extraKeys!811 () (_ BitVec 32))

(declare-datatypes ((V!41051 0))(
  ( (V!41052 (val!13528 Int)) )
))
(declare-datatypes ((ValueCell!12762 0))(
  ( (ValueCellFull!12762 (v!16150 V!41051)) (EmptyCell!12762) )
))
(declare-datatypes ((array!70760 0))(
  ( (array!70761 (arr!34050 (Array (_ BitVec 32) ValueCell!12762)) (size!34587 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!70760)

(assert (=> b!1094107 (= res!730229 (and (= (size!34587 _values!874) (bvadd #b00000000000000000000000000000001 mask!1414)) (= (size!34586 _keys!1070) (size!34587 _values!874)) (bvsge mask!1414 #b00000000000000000000000000000000) (bvsge extraKeys!811 #b00000000000000000000000000000000) (bvsle extraKeys!811 #b00000000000000000000000000000011)))))

(declare-fun b!1094108 () Bool)

(declare-fun res!730225 () Bool)

(assert (=> b!1094108 (=> (not res!730225) (not e!624699))))

(declare-fun k0!904 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1094108 (= res!730225 (validKeyInArray!0 k0!904))))

(declare-fun b!1094109 () Bool)

(assert (=> b!1094109 (= e!624698 (not true))))

(declare-fun defaultEntry!882 () Int)

(declare-fun minValue!831 () V!41051)

(declare-datatypes ((tuple2!17276 0))(
  ( (tuple2!17277 (_1!8648 (_ BitVec 64)) (_2!8648 V!41051)) )
))
(declare-datatypes ((List!23927 0))(
  ( (Nil!23924) (Cons!23923 (h!25132 tuple2!17276) (t!33933 List!23927)) )
))
(declare-datatypes ((ListLongMap!15257 0))(
  ( (ListLongMap!15258 (toList!7644 List!23927)) )
))
(declare-fun lt!489487 () ListLongMap!15257)

(declare-fun zeroValue!831 () V!41051)

(declare-fun getCurrentListMap!4379 (array!70758 array!70760 (_ BitVec 32) (_ BitVec 32) V!41051 V!41051 (_ BitVec 32) Int) ListLongMap!15257)

(assert (=> b!1094109 (= lt!489487 (getCurrentListMap!4379 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun lt!489481 () array!70760)

(declare-fun lt!489482 () ListLongMap!15257)

(assert (=> b!1094109 (= lt!489482 (getCurrentListMap!4379 lt!489483 lt!489481 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun lt!489485 () ListLongMap!15257)

(declare-fun lt!489484 () ListLongMap!15257)

(assert (=> b!1094109 (and (= lt!489485 lt!489484) (= lt!489484 lt!489485))))

(declare-fun lt!489488 () ListLongMap!15257)

(declare-fun -!920 (ListLongMap!15257 (_ BitVec 64)) ListLongMap!15257)

(assert (=> b!1094109 (= lt!489484 (-!920 lt!489488 k0!904))))

(declare-datatypes ((Unit!35955 0))(
  ( (Unit!35956) )
))
(declare-fun lt!489486 () Unit!35955)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!185 (array!70758 array!70760 (_ BitVec 32) (_ BitVec 32) V!41051 V!41051 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!35955)

(assert (=> b!1094109 (= lt!489486 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!185 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 i!650 k0!904 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun getCurrentListMapNoExtraKeys!4131 (array!70758 array!70760 (_ BitVec 32) (_ BitVec 32) V!41051 V!41051 (_ BitVec 32) Int) ListLongMap!15257)

(assert (=> b!1094109 (= lt!489485 (getCurrentListMapNoExtraKeys!4131 lt!489483 lt!489481 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun dynLambda!2267 (Int (_ BitVec 64)) V!41051)

(assert (=> b!1094109 (= lt!489481 (array!70761 (store (arr!34050 _values!874) i!650 (ValueCellFull!12762 (dynLambda!2267 defaultEntry!882 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!34587 _values!874)))))

(assert (=> b!1094109 (= lt!489488 (getCurrentListMapNoExtraKeys!4131 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun arrayContainsKey!0 (array!70758 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1094109 (arrayContainsKey!0 _keys!1070 k0!904 #b00000000000000000000000000000000)))

(declare-fun lt!489480 () Unit!35955)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!70758 (_ BitVec 64) (_ BitVec 32)) Unit!35955)

(assert (=> b!1094109 (= lt!489480 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1070 k0!904 i!650))))

(declare-fun b!1094110 () Bool)

(declare-fun e!624696 () Bool)

(declare-fun e!624697 () Bool)

(assert (=> b!1094110 (= e!624696 (and e!624697 mapRes!42169))))

(declare-fun condMapEmpty!42169 () Bool)

(declare-fun mapDefault!42169 () ValueCell!12762)

(assert (=> b!1094110 (= condMapEmpty!42169 (= (arr!34050 _values!874) ((as const (Array (_ BitVec 32) ValueCell!12762)) mapDefault!42169)))))

(declare-fun res!730228 () Bool)

(assert (=> start!96324 (=> (not res!730228) (not e!624699))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!96324 (= res!730228 (validMask!0 mask!1414))))

(assert (=> start!96324 e!624699))

(assert (=> start!96324 tp!80672))

(assert (=> start!96324 true))

(declare-fun tp_is_empty!26943 () Bool)

(assert (=> start!96324 tp_is_empty!26943))

(declare-fun array_inv!26094 (array!70758) Bool)

(assert (=> start!96324 (array_inv!26094 _keys!1070)))

(declare-fun array_inv!26095 (array!70760) Bool)

(assert (=> start!96324 (and (array_inv!26095 _values!874) e!624696)))

(declare-fun b!1094104 () Bool)

(declare-fun e!624695 () Bool)

(assert (=> b!1094104 (= e!624695 tp_is_empty!26943)))

(declare-fun b!1094111 () Bool)

(assert (=> b!1094111 (= e!624697 tp_is_empty!26943)))

(declare-fun b!1094112 () Bool)

(declare-fun res!730227 () Bool)

(assert (=> b!1094112 (=> (not res!730227) (not e!624699))))

(assert (=> b!1094112 (= res!730227 (arrayNoDuplicates!0 _keys!1070 #b00000000000000000000000000000000 Nil!23923))))

(declare-fun mapNonEmpty!42169 () Bool)

(declare-fun tp!80673 () Bool)

(assert (=> mapNonEmpty!42169 (= mapRes!42169 (and tp!80673 e!624695))))

(declare-fun mapValue!42169 () ValueCell!12762)

(declare-fun mapRest!42169 () (Array (_ BitVec 32) ValueCell!12762))

(declare-fun mapKey!42169 () (_ BitVec 32))

(assert (=> mapNonEmpty!42169 (= (arr!34050 _values!874) (store mapRest!42169 mapKey!42169 mapValue!42169))))

(declare-fun b!1094113 () Bool)

(declare-fun res!730224 () Bool)

(assert (=> b!1094113 (=> (not res!730224) (not e!624699))))

(assert (=> b!1094113 (= res!730224 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1070 mask!1414))))

(declare-fun b!1094114 () Bool)

(declare-fun res!730223 () Bool)

(assert (=> b!1094114 (=> (not res!730223) (not e!624699))))

(assert (=> b!1094114 (= res!730223 (= (select (arr!34049 _keys!1070) i!650) k0!904))))

(assert (= (and start!96324 res!730228) b!1094107))

(assert (= (and b!1094107 res!730229) b!1094113))

(assert (= (and b!1094113 res!730224) b!1094112))

(assert (= (and b!1094112 res!730227) b!1094105))

(assert (= (and b!1094105 res!730221) b!1094108))

(assert (= (and b!1094108 res!730225) b!1094114))

(assert (= (and b!1094114 res!730223) b!1094103))

(assert (= (and b!1094103 res!730226) b!1094106))

(assert (= (and b!1094106 res!730222) b!1094109))

(assert (= (and b!1094110 condMapEmpty!42169) mapIsEmpty!42169))

(assert (= (and b!1094110 (not condMapEmpty!42169)) mapNonEmpty!42169))

(get-info :version)

(assert (= (and mapNonEmpty!42169 ((_ is ValueCellFull!12762) mapValue!42169)) b!1094104))

(assert (= (and b!1094110 ((_ is ValueCellFull!12762) mapDefault!42169)) b!1094111))

(assert (= start!96324 b!1094110))

(declare-fun b_lambda!17641 () Bool)

(assert (=> (not b_lambda!17641) (not b!1094109)))

(declare-fun t!33931 () Bool)

(declare-fun tb!7827 () Bool)

(assert (=> (and start!96324 (= defaultEntry!882 defaultEntry!882) t!33931) tb!7827))

(declare-fun result!16165 () Bool)

(assert (=> tb!7827 (= result!16165 tp_is_empty!26943)))

(assert (=> b!1094109 t!33931))

(declare-fun b_and!36577 () Bool)

(assert (= b_and!36575 (and (=> t!33931 result!16165) b_and!36577)))

(declare-fun m!1014183 () Bool)

(assert (=> b!1094113 m!1014183))

(declare-fun m!1014185 () Bool)

(assert (=> mapNonEmpty!42169 m!1014185))

(declare-fun m!1014187 () Bool)

(assert (=> b!1094106 m!1014187))

(declare-fun m!1014189 () Bool)

(assert (=> b!1094114 m!1014189))

(declare-fun m!1014191 () Bool)

(assert (=> start!96324 m!1014191))

(declare-fun m!1014193 () Bool)

(assert (=> start!96324 m!1014193))

(declare-fun m!1014195 () Bool)

(assert (=> start!96324 m!1014195))

(declare-fun m!1014197 () Bool)

(assert (=> b!1094112 m!1014197))

(declare-fun m!1014199 () Bool)

(assert (=> b!1094109 m!1014199))

(declare-fun m!1014201 () Bool)

(assert (=> b!1094109 m!1014201))

(declare-fun m!1014203 () Bool)

(assert (=> b!1094109 m!1014203))

(declare-fun m!1014205 () Bool)

(assert (=> b!1094109 m!1014205))

(declare-fun m!1014207 () Bool)

(assert (=> b!1094109 m!1014207))

(declare-fun m!1014209 () Bool)

(assert (=> b!1094109 m!1014209))

(declare-fun m!1014211 () Bool)

(assert (=> b!1094109 m!1014211))

(declare-fun m!1014213 () Bool)

(assert (=> b!1094109 m!1014213))

(declare-fun m!1014215 () Bool)

(assert (=> b!1094109 m!1014215))

(declare-fun m!1014217 () Bool)

(assert (=> b!1094109 m!1014217))

(declare-fun m!1014219 () Bool)

(assert (=> b!1094108 m!1014219))

(declare-fun m!1014221 () Bool)

(assert (=> b!1094103 m!1014221))

(declare-fun m!1014223 () Bool)

(assert (=> b!1094103 m!1014223))

(check-sat (not b!1094112) (not b!1094108) (not b!1094113) (not b_next!22941) (not b!1094103) (not b!1094109) (not b!1094106) b_and!36577 (not start!96324) (not mapNonEmpty!42169) tp_is_empty!26943 (not b_lambda!17641))
(check-sat b_and!36577 (not b_next!22941))
