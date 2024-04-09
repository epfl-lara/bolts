; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!95706 () Bool)

(assert start!95706)

(declare-fun b_free!22323 () Bool)

(declare-fun b_next!22323 () Bool)

(assert (=> start!95706 (= b_free!22323 (not b_next!22323))))

(declare-fun tp!78818 () Bool)

(declare-fun b_and!35339 () Bool)

(assert (=> start!95706 (= tp!78818 b_and!35339)))

(declare-fun b!1081299 () Bool)

(declare-fun res!720819 () Bool)

(declare-fun e!618099 () Bool)

(assert (=> b!1081299 (=> (not res!720819) (not e!618099))))

(declare-datatypes ((array!69554 0))(
  ( (array!69555 (arr!33447 (Array (_ BitVec 32) (_ BitVec 64))) (size!33984 (_ BitVec 32))) )
))
(declare-fun _keys!1070 () array!69554)

(declare-fun mask!1414 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!69554 (_ BitVec 32)) Bool)

(assert (=> b!1081299 (= res!720819 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1070 mask!1414))))

(declare-fun b!1081300 () Bool)

(declare-fun e!618103 () Bool)

(assert (=> b!1081300 (= e!618103 (not true))))

(declare-fun defaultEntry!882 () Int)

(declare-datatypes ((V!40227 0))(
  ( (V!40228 (val!13219 Int)) )
))
(declare-datatypes ((ValueCell!12453 0))(
  ( (ValueCellFull!12453 (v!15841 V!40227)) (EmptyCell!12453) )
))
(declare-datatypes ((array!69556 0))(
  ( (array!69557 (arr!33448 (Array (_ BitVec 32) ValueCell!12453)) (size!33985 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!69556)

(declare-fun minValue!831 () V!40227)

(declare-fun i!650 () (_ BitVec 32))

(declare-fun extraKeys!811 () (_ BitVec 32))

(declare-fun lt!479249 () array!69554)

(declare-datatypes ((tuple2!16818 0))(
  ( (tuple2!16819 (_1!8419 (_ BitVec 64)) (_2!8419 V!40227)) )
))
(declare-datatypes ((List!23444 0))(
  ( (Nil!23441) (Cons!23440 (h!24649 tuple2!16818) (t!32832 List!23444)) )
))
(declare-datatypes ((ListLongMap!14799 0))(
  ( (ListLongMap!14800 (toList!7415 List!23444)) )
))
(declare-fun lt!479251 () ListLongMap!14799)

(declare-fun zeroValue!831 () V!40227)

(declare-fun getCurrentListMapNoExtraKeys!3926 (array!69554 array!69556 (_ BitVec 32) (_ BitVec 32) V!40227 V!40227 (_ BitVec 32) Int) ListLongMap!14799)

(declare-fun dynLambda!2062 (Int (_ BitVec 64)) V!40227)

(assert (=> b!1081300 (= lt!479251 (getCurrentListMapNoExtraKeys!3926 lt!479249 (array!69557 (store (arr!33448 _values!874) i!650 (ValueCellFull!12453 (dynLambda!2062 defaultEntry!882 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!33985 _values!874)) mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun lt!479250 () ListLongMap!14799)

(assert (=> b!1081300 (= lt!479250 (getCurrentListMapNoExtraKeys!3926 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun k0!904 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!69554 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1081300 (arrayContainsKey!0 _keys!1070 k0!904 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!35509 0))(
  ( (Unit!35510) )
))
(declare-fun lt!479252 () Unit!35509)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!69554 (_ BitVec 64) (_ BitVec 32)) Unit!35509)

(assert (=> b!1081300 (= lt!479252 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1070 k0!904 i!650))))

(declare-fun b!1081301 () Bool)

(declare-fun res!720823 () Bool)

(assert (=> b!1081301 (=> (not res!720823) (not e!618099))))

(declare-datatypes ((List!23445 0))(
  ( (Nil!23442) (Cons!23441 (h!24650 (_ BitVec 64)) (t!32833 List!23445)) )
))
(declare-fun arrayNoDuplicates!0 (array!69554 (_ BitVec 32) List!23445) Bool)

(assert (=> b!1081301 (= res!720823 (arrayNoDuplicates!0 _keys!1070 #b00000000000000000000000000000000 Nil!23442))))

(declare-fun b!1081302 () Bool)

(declare-fun res!720818 () Bool)

(assert (=> b!1081302 (=> (not res!720818) (not e!618099))))

(assert (=> b!1081302 (= res!720818 (= (select (arr!33447 _keys!1070) i!650) k0!904))))

(declare-fun b!1081303 () Bool)

(declare-fun e!618102 () Bool)

(declare-fun tp_is_empty!26325 () Bool)

(assert (=> b!1081303 (= e!618102 tp_is_empty!26325)))

(declare-fun b!1081304 () Bool)

(declare-fun res!720822 () Bool)

(assert (=> b!1081304 (=> (not res!720822) (not e!618099))))

(assert (=> b!1081304 (= res!720822 (and (bvsge i!650 #b00000000000000000000000000000000) (bvslt i!650 (size!33984 _keys!1070))))))

(declare-fun mapIsEmpty!41242 () Bool)

(declare-fun mapRes!41242 () Bool)

(assert (=> mapIsEmpty!41242 mapRes!41242))

(declare-fun b!1081305 () Bool)

(declare-fun res!720821 () Bool)

(assert (=> b!1081305 (=> (not res!720821) (not e!618099))))

(assert (=> b!1081305 (= res!720821 (and (= (size!33985 _values!874) (bvadd #b00000000000000000000000000000001 mask!1414)) (= (size!33984 _keys!1070) (size!33985 _values!874)) (bvsge mask!1414 #b00000000000000000000000000000000) (bvsge extraKeys!811 #b00000000000000000000000000000000) (bvsle extraKeys!811 #b00000000000000000000000000000011)))))

(declare-fun b!1081306 () Bool)

(declare-fun res!720817 () Bool)

(assert (=> b!1081306 (=> (not res!720817) (not e!618099))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1081306 (= res!720817 (validKeyInArray!0 k0!904))))

(declare-fun b!1081307 () Bool)

(assert (=> b!1081307 (= e!618099 e!618103)))

(declare-fun res!720824 () Bool)

(assert (=> b!1081307 (=> (not res!720824) (not e!618103))))

(assert (=> b!1081307 (= res!720824 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!479249 mask!1414))))

(assert (=> b!1081307 (= lt!479249 (array!69555 (store (arr!33447 _keys!1070) i!650 #b1000000000000000000000000000000000000000000000000000000000000000) (size!33984 _keys!1070)))))

(declare-fun b!1081308 () Bool)

(declare-fun e!618098 () Bool)

(assert (=> b!1081308 (= e!618098 (and e!618102 mapRes!41242))))

(declare-fun condMapEmpty!41242 () Bool)

(declare-fun mapDefault!41242 () ValueCell!12453)

(assert (=> b!1081308 (= condMapEmpty!41242 (= (arr!33448 _values!874) ((as const (Array (_ BitVec 32) ValueCell!12453)) mapDefault!41242)))))

(declare-fun mapNonEmpty!41242 () Bool)

(declare-fun tp!78819 () Bool)

(declare-fun e!618100 () Bool)

(assert (=> mapNonEmpty!41242 (= mapRes!41242 (and tp!78819 e!618100))))

(declare-fun mapValue!41242 () ValueCell!12453)

(declare-fun mapKey!41242 () (_ BitVec 32))

(declare-fun mapRest!41242 () (Array (_ BitVec 32) ValueCell!12453))

(assert (=> mapNonEmpty!41242 (= (arr!33448 _values!874) (store mapRest!41242 mapKey!41242 mapValue!41242))))

(declare-fun res!720820 () Bool)

(assert (=> start!95706 (=> (not res!720820) (not e!618099))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!95706 (= res!720820 (validMask!0 mask!1414))))

(assert (=> start!95706 e!618099))

(assert (=> start!95706 tp!78818))

(assert (=> start!95706 true))

(assert (=> start!95706 tp_is_empty!26325))

(declare-fun array_inv!25682 (array!69554) Bool)

(assert (=> start!95706 (array_inv!25682 _keys!1070)))

(declare-fun array_inv!25683 (array!69556) Bool)

(assert (=> start!95706 (and (array_inv!25683 _values!874) e!618098)))

(declare-fun b!1081309 () Bool)

(assert (=> b!1081309 (= e!618100 tp_is_empty!26325)))

(declare-fun b!1081310 () Bool)

(declare-fun res!720816 () Bool)

(assert (=> b!1081310 (=> (not res!720816) (not e!618103))))

(assert (=> b!1081310 (= res!720816 (arrayNoDuplicates!0 lt!479249 #b00000000000000000000000000000000 Nil!23442))))

(assert (= (and start!95706 res!720820) b!1081305))

(assert (= (and b!1081305 res!720821) b!1081299))

(assert (= (and b!1081299 res!720819) b!1081301))

(assert (= (and b!1081301 res!720823) b!1081304))

(assert (= (and b!1081304 res!720822) b!1081306))

(assert (= (and b!1081306 res!720817) b!1081302))

(assert (= (and b!1081302 res!720818) b!1081307))

(assert (= (and b!1081307 res!720824) b!1081310))

(assert (= (and b!1081310 res!720816) b!1081300))

(assert (= (and b!1081308 condMapEmpty!41242) mapIsEmpty!41242))

(assert (= (and b!1081308 (not condMapEmpty!41242)) mapNonEmpty!41242))

(get-info :version)

(assert (= (and mapNonEmpty!41242 ((_ is ValueCellFull!12453) mapValue!41242)) b!1081309))

(assert (= (and b!1081308 ((_ is ValueCellFull!12453) mapDefault!41242)) b!1081303))

(assert (= start!95706 b!1081308))

(declare-fun b_lambda!17023 () Bool)

(assert (=> (not b_lambda!17023) (not b!1081300)))

(declare-fun t!32831 () Bool)

(declare-fun tb!7209 () Bool)

(assert (=> (and start!95706 (= defaultEntry!882 defaultEntry!882) t!32831) tb!7209))

(declare-fun result!14929 () Bool)

(assert (=> tb!7209 (= result!14929 tp_is_empty!26325)))

(assert (=> b!1081300 t!32831))

(declare-fun b_and!35341 () Bool)

(assert (= b_and!35339 (and (=> t!32831 result!14929) b_and!35341)))

(declare-fun m!999235 () Bool)

(assert (=> mapNonEmpty!41242 m!999235))

(declare-fun m!999237 () Bool)

(assert (=> b!1081299 m!999237))

(declare-fun m!999239 () Bool)

(assert (=> b!1081307 m!999239))

(declare-fun m!999241 () Bool)

(assert (=> b!1081307 m!999241))

(declare-fun m!999243 () Bool)

(assert (=> b!1081306 m!999243))

(declare-fun m!999245 () Bool)

(assert (=> b!1081310 m!999245))

(declare-fun m!999247 () Bool)

(assert (=> b!1081302 m!999247))

(declare-fun m!999249 () Bool)

(assert (=> start!95706 m!999249))

(declare-fun m!999251 () Bool)

(assert (=> start!95706 m!999251))

(declare-fun m!999253 () Bool)

(assert (=> start!95706 m!999253))

(declare-fun m!999255 () Bool)

(assert (=> b!1081300 m!999255))

(declare-fun m!999257 () Bool)

(assert (=> b!1081300 m!999257))

(declare-fun m!999259 () Bool)

(assert (=> b!1081300 m!999259))

(declare-fun m!999261 () Bool)

(assert (=> b!1081300 m!999261))

(declare-fun m!999263 () Bool)

(assert (=> b!1081300 m!999263))

(declare-fun m!999265 () Bool)

(assert (=> b!1081300 m!999265))

(declare-fun m!999267 () Bool)

(assert (=> b!1081301 m!999267))

(check-sat (not start!95706) (not b!1081307) (not b!1081301) b_and!35341 (not b!1081306) (not b_next!22323) (not b!1081300) (not mapNonEmpty!41242) tp_is_empty!26325 (not b!1081310) (not b!1081299) (not b_lambda!17023))
(check-sat b_and!35341 (not b_next!22323))
