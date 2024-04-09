; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!96494 () Bool)

(assert start!96494)

(declare-fun b_free!23037 () Bool)

(declare-fun b_next!23037 () Bool)

(assert (=> start!96494 (= b_free!23037 (not b_next!23037))))

(declare-fun tp!81038 () Bool)

(declare-fun b_and!36755 () Bool)

(assert (=> start!96494 (= tp!81038 b_and!36755)))

(declare-fun b!1096738 () Bool)

(declare-fun res!732077 () Bool)

(declare-fun e!626038 () Bool)

(assert (=> b!1096738 (=> (not res!732077) (not e!626038))))

(declare-datatypes ((array!71034 0))(
  ( (array!71035 (arr!34185 (Array (_ BitVec 32) (_ BitVec 64))) (size!34722 (_ BitVec 32))) )
))
(declare-fun _keys!1070 () array!71034)

(declare-fun k0!904 () (_ BitVec 64))

(declare-fun i!650 () (_ BitVec 32))

(assert (=> b!1096738 (= res!732077 (= (select (arr!34185 _keys!1070) i!650) k0!904))))

(declare-fun b!1096739 () Bool)

(declare-fun res!732084 () Bool)

(declare-fun e!626043 () Bool)

(assert (=> b!1096739 (=> (not res!732084) (not e!626043))))

(declare-fun lt!490238 () array!71034)

(declare-datatypes ((List!24012 0))(
  ( (Nil!24009) (Cons!24008 (h!25217 (_ BitVec 64)) (t!34102 List!24012)) )
))
(declare-fun arrayNoDuplicates!0 (array!71034 (_ BitVec 32) List!24012) Bool)

(assert (=> b!1096739 (= res!732084 (arrayNoDuplicates!0 lt!490238 #b00000000000000000000000000000000 Nil!24009))))

(declare-fun b!1096740 () Bool)

(declare-fun res!732080 () Bool)

(assert (=> b!1096740 (=> (not res!732080) (not e!626038))))

(assert (=> b!1096740 (= res!732080 (arrayNoDuplicates!0 _keys!1070 #b00000000000000000000000000000000 Nil!24009))))

(declare-fun b!1096741 () Bool)

(declare-fun res!732076 () Bool)

(assert (=> b!1096741 (=> (not res!732076) (not e!626038))))

(assert (=> b!1096741 (= res!732076 (and (bvsge i!650 #b00000000000000000000000000000000) (bvslt i!650 (size!34722 _keys!1070))))))

(declare-fun b!1096742 () Bool)

(declare-fun res!732078 () Bool)

(assert (=> b!1096742 (=> (not res!732078) (not e!626038))))

(declare-fun mask!1414 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!71034 (_ BitVec 32)) Bool)

(assert (=> b!1096742 (= res!732078 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1070 mask!1414))))

(declare-fun b!1096743 () Bool)

(declare-fun e!626040 () Bool)

(declare-fun tp_is_empty!27087 () Bool)

(assert (=> b!1096743 (= e!626040 tp_is_empty!27087)))

(declare-fun b!1096744 () Bool)

(declare-fun res!732082 () Bool)

(assert (=> b!1096744 (=> (not res!732082) (not e!626038))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1096744 (= res!732082 (validKeyInArray!0 k0!904))))

(declare-fun res!732081 () Bool)

(assert (=> start!96494 (=> (not res!732081) (not e!626038))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!96494 (= res!732081 (validMask!0 mask!1414))))

(assert (=> start!96494 e!626038))

(assert (=> start!96494 tp!81038))

(assert (=> start!96494 true))

(assert (=> start!96494 tp_is_empty!27087))

(declare-fun array_inv!26196 (array!71034) Bool)

(assert (=> start!96494 (array_inv!26196 _keys!1070)))

(declare-datatypes ((V!41243 0))(
  ( (V!41244 (val!13600 Int)) )
))
(declare-datatypes ((ValueCell!12834 0))(
  ( (ValueCellFull!12834 (v!16222 V!41243)) (EmptyCell!12834) )
))
(declare-datatypes ((array!71036 0))(
  ( (array!71037 (arr!34186 (Array (_ BitVec 32) ValueCell!12834)) (size!34723 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!71036)

(declare-fun e!626041 () Bool)

(declare-fun array_inv!26197 (array!71036) Bool)

(assert (=> start!96494 (and (array_inv!26197 _values!874) e!626041)))

(declare-fun b!1096745 () Bool)

(assert (=> b!1096745 (= e!626043 (not true))))

(declare-fun defaultEntry!882 () Int)

(declare-datatypes ((tuple2!17336 0))(
  ( (tuple2!17337 (_1!8678 (_ BitVec 64)) (_2!8678 V!41243)) )
))
(declare-datatypes ((List!24013 0))(
  ( (Nil!24010) (Cons!24009 (h!25218 tuple2!17336) (t!34103 List!24013)) )
))
(declare-datatypes ((ListLongMap!15317 0))(
  ( (ListLongMap!15318 (toList!7674 List!24013)) )
))
(declare-fun lt!490236 () ListLongMap!15317)

(declare-fun minValue!831 () V!41243)

(declare-fun extraKeys!811 () (_ BitVec 32))

(declare-fun zeroValue!831 () V!41243)

(declare-fun getCurrentListMapNoExtraKeys!4161 (array!71034 array!71036 (_ BitVec 32) (_ BitVec 32) V!41243 V!41243 (_ BitVec 32) Int) ListLongMap!15317)

(declare-fun dynLambda!2292 (Int (_ BitVec 64)) V!41243)

(assert (=> b!1096745 (= lt!490236 (getCurrentListMapNoExtraKeys!4161 lt!490238 (array!71037 (store (arr!34186 _values!874) i!650 (ValueCellFull!12834 (dynLambda!2292 defaultEntry!882 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!34723 _values!874)) mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun lt!490237 () ListLongMap!15317)

(assert (=> b!1096745 (= lt!490237 (getCurrentListMapNoExtraKeys!4161 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun arrayContainsKey!0 (array!71034 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1096745 (arrayContainsKey!0 _keys!1070 k0!904 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!36021 0))(
  ( (Unit!36022) )
))
(declare-fun lt!490235 () Unit!36021)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!71034 (_ BitVec 64) (_ BitVec 32)) Unit!36021)

(assert (=> b!1096745 (= lt!490235 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1070 k0!904 i!650))))

(declare-fun mapNonEmpty!42391 () Bool)

(declare-fun mapRes!42391 () Bool)

(declare-fun tp!81039 () Bool)

(declare-fun e!626042 () Bool)

(assert (=> mapNonEmpty!42391 (= mapRes!42391 (and tp!81039 e!626042))))

(declare-fun mapRest!42391 () (Array (_ BitVec 32) ValueCell!12834))

(declare-fun mapValue!42391 () ValueCell!12834)

(declare-fun mapKey!42391 () (_ BitVec 32))

(assert (=> mapNonEmpty!42391 (= (arr!34186 _values!874) (store mapRest!42391 mapKey!42391 mapValue!42391))))

(declare-fun b!1096746 () Bool)

(assert (=> b!1096746 (= e!626038 e!626043)))

(declare-fun res!732079 () Bool)

(assert (=> b!1096746 (=> (not res!732079) (not e!626043))))

(assert (=> b!1096746 (= res!732079 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!490238 mask!1414))))

(assert (=> b!1096746 (= lt!490238 (array!71035 (store (arr!34185 _keys!1070) i!650 #b1000000000000000000000000000000000000000000000000000000000000000) (size!34722 _keys!1070)))))

(declare-fun b!1096747 () Bool)

(declare-fun res!732083 () Bool)

(assert (=> b!1096747 (=> (not res!732083) (not e!626038))))

(assert (=> b!1096747 (= res!732083 (and (= (size!34723 _values!874) (bvadd #b00000000000000000000000000000001 mask!1414)) (= (size!34722 _keys!1070) (size!34723 _values!874)) (bvsge mask!1414 #b00000000000000000000000000000000) (bvsge extraKeys!811 #b00000000000000000000000000000000) (bvsle extraKeys!811 #b00000000000000000000000000000011)))))

(declare-fun b!1096748 () Bool)

(assert (=> b!1096748 (= e!626041 (and e!626040 mapRes!42391))))

(declare-fun condMapEmpty!42391 () Bool)

(declare-fun mapDefault!42391 () ValueCell!12834)

(assert (=> b!1096748 (= condMapEmpty!42391 (= (arr!34186 _values!874) ((as const (Array (_ BitVec 32) ValueCell!12834)) mapDefault!42391)))))

(declare-fun b!1096749 () Bool)

(assert (=> b!1096749 (= e!626042 tp_is_empty!27087)))

(declare-fun mapIsEmpty!42391 () Bool)

(assert (=> mapIsEmpty!42391 mapRes!42391))

(assert (= (and start!96494 res!732081) b!1096747))

(assert (= (and b!1096747 res!732083) b!1096742))

(assert (= (and b!1096742 res!732078) b!1096740))

(assert (= (and b!1096740 res!732080) b!1096741))

(assert (= (and b!1096741 res!732076) b!1096744))

(assert (= (and b!1096744 res!732082) b!1096738))

(assert (= (and b!1096738 res!732077) b!1096746))

(assert (= (and b!1096746 res!732079) b!1096739))

(assert (= (and b!1096739 res!732084) b!1096745))

(assert (= (and b!1096748 condMapEmpty!42391) mapIsEmpty!42391))

(assert (= (and b!1096748 (not condMapEmpty!42391)) mapNonEmpty!42391))

(get-info :version)

(assert (= (and mapNonEmpty!42391 ((_ is ValueCellFull!12834) mapValue!42391)) b!1096749))

(assert (= (and b!1096748 ((_ is ValueCellFull!12834) mapDefault!42391)) b!1096743))

(assert (= start!96494 b!1096748))

(declare-fun b_lambda!17725 () Bool)

(assert (=> (not b_lambda!17725) (not b!1096745)))

(declare-fun t!34101 () Bool)

(declare-fun tb!7911 () Bool)

(assert (=> (and start!96494 (= defaultEntry!882 defaultEntry!882) t!34101) tb!7911))

(declare-fun result!16337 () Bool)

(assert (=> tb!7911 (= result!16337 tp_is_empty!27087)))

(assert (=> b!1096745 t!34101))

(declare-fun b_and!36757 () Bool)

(assert (= b_and!36755 (and (=> t!34101 result!16337) b_and!36757)))

(declare-fun m!1016369 () Bool)

(assert (=> b!1096739 m!1016369))

(declare-fun m!1016371 () Bool)

(assert (=> b!1096744 m!1016371))

(declare-fun m!1016373 () Bool)

(assert (=> b!1096738 m!1016373))

(declare-fun m!1016375 () Bool)

(assert (=> start!96494 m!1016375))

(declare-fun m!1016377 () Bool)

(assert (=> start!96494 m!1016377))

(declare-fun m!1016379 () Bool)

(assert (=> start!96494 m!1016379))

(declare-fun m!1016381 () Bool)

(assert (=> b!1096742 m!1016381))

(declare-fun m!1016383 () Bool)

(assert (=> b!1096746 m!1016383))

(declare-fun m!1016385 () Bool)

(assert (=> b!1096746 m!1016385))

(declare-fun m!1016387 () Bool)

(assert (=> b!1096745 m!1016387))

(declare-fun m!1016389 () Bool)

(assert (=> b!1096745 m!1016389))

(declare-fun m!1016391 () Bool)

(assert (=> b!1096745 m!1016391))

(declare-fun m!1016393 () Bool)

(assert (=> b!1096745 m!1016393))

(declare-fun m!1016395 () Bool)

(assert (=> b!1096745 m!1016395))

(declare-fun m!1016397 () Bool)

(assert (=> b!1096745 m!1016397))

(declare-fun m!1016399 () Bool)

(assert (=> b!1096740 m!1016399))

(declare-fun m!1016401 () Bool)

(assert (=> mapNonEmpty!42391 m!1016401))

(check-sat (not b!1096746) (not b!1096744) (not start!96494) (not b_next!23037) (not mapNonEmpty!42391) (not b!1096745) (not b_lambda!17725) tp_is_empty!27087 b_and!36757 (not b!1096739) (not b!1096740) (not b!1096742))
(check-sat b_and!36757 (not b_next!23037))
