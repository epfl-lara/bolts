; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!95808 () Bool)

(assert start!95808)

(declare-fun b_free!22425 () Bool)

(declare-fun b_next!22425 () Bool)

(assert (=> start!95808 (= b_free!22425 (not b_next!22425))))

(declare-fun tp!79124 () Bool)

(declare-fun b_and!35543 () Bool)

(assert (=> start!95808 (= tp!79124 b_and!35543)))

(declare-fun mapIsEmpty!41395 () Bool)

(declare-fun mapRes!41395 () Bool)

(assert (=> mapIsEmpty!41395 mapRes!41395))

(declare-fun b!1083237 () Bool)

(declare-fun e!619016 () Bool)

(declare-fun e!619020 () Bool)

(assert (=> b!1083237 (= e!619016 e!619020)))

(declare-fun res!722194 () Bool)

(assert (=> b!1083237 (=> (not res!722194) (not e!619020))))

(declare-datatypes ((array!69756 0))(
  ( (array!69757 (arr!33548 (Array (_ BitVec 32) (_ BitVec 64))) (size!34085 (_ BitVec 32))) )
))
(declare-fun lt!479981 () array!69756)

(declare-fun mask!1414 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!69756 (_ BitVec 32)) Bool)

(assert (=> b!1083237 (= res!722194 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!479981 mask!1414))))

(declare-fun _keys!1070 () array!69756)

(declare-fun i!650 () (_ BitVec 32))

(assert (=> b!1083237 (= lt!479981 (array!69757 (store (arr!33548 _keys!1070) i!650 #b1000000000000000000000000000000000000000000000000000000000000000) (size!34085 _keys!1070)))))

(declare-fun b!1083238 () Bool)

(declare-fun res!722197 () Bool)

(assert (=> b!1083238 (=> (not res!722197) (not e!619016))))

(declare-fun k0!904 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1083238 (= res!722197 (validKeyInArray!0 k0!904))))

(declare-fun b!1083239 () Bool)

(declare-fun res!722198 () Bool)

(assert (=> b!1083239 (=> (not res!722198) (not e!619016))))

(declare-fun extraKeys!811 () (_ BitVec 32))

(declare-datatypes ((V!40363 0))(
  ( (V!40364 (val!13270 Int)) )
))
(declare-datatypes ((ValueCell!12504 0))(
  ( (ValueCellFull!12504 (v!15892 V!40363)) (EmptyCell!12504) )
))
(declare-datatypes ((array!69758 0))(
  ( (array!69759 (arr!33549 (Array (_ BitVec 32) ValueCell!12504)) (size!34086 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!69758)

(assert (=> b!1083239 (= res!722198 (and (= (size!34086 _values!874) (bvadd #b00000000000000000000000000000001 mask!1414)) (= (size!34085 _keys!1070) (size!34086 _values!874)) (bvsge mask!1414 #b00000000000000000000000000000000) (bvsge extraKeys!811 #b00000000000000000000000000000000) (bvsle extraKeys!811 #b00000000000000000000000000000011)))))

(declare-fun b!1083240 () Bool)

(declare-fun e!619019 () Bool)

(declare-fun tp_is_empty!26427 () Bool)

(assert (=> b!1083240 (= e!619019 tp_is_empty!26427)))

(declare-fun b!1083242 () Bool)

(declare-fun res!722193 () Bool)

(assert (=> b!1083242 (=> (not res!722193) (not e!619016))))

(declare-datatypes ((List!23518 0))(
  ( (Nil!23515) (Cons!23514 (h!24723 (_ BitVec 64)) (t!33008 List!23518)) )
))
(declare-fun arrayNoDuplicates!0 (array!69756 (_ BitVec 32) List!23518) Bool)

(assert (=> b!1083242 (= res!722193 (arrayNoDuplicates!0 _keys!1070 #b00000000000000000000000000000000 Nil!23515))))

(declare-fun b!1083243 () Bool)

(declare-fun res!722200 () Bool)

(assert (=> b!1083243 (=> (not res!722200) (not e!619016))))

(assert (=> b!1083243 (= res!722200 (= (select (arr!33548 _keys!1070) i!650) k0!904))))

(declare-fun b!1083244 () Bool)

(declare-fun res!722195 () Bool)

(assert (=> b!1083244 (=> (not res!722195) (not e!619016))))

(assert (=> b!1083244 (= res!722195 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1070 mask!1414))))

(declare-fun b!1083245 () Bool)

(declare-fun e!619018 () Bool)

(assert (=> b!1083245 (= e!619018 tp_is_empty!26427)))

(declare-fun b!1083246 () Bool)

(declare-fun res!722201 () Bool)

(assert (=> b!1083246 (=> (not res!722201) (not e!619020))))

(assert (=> b!1083246 (= res!722201 (arrayNoDuplicates!0 lt!479981 #b00000000000000000000000000000000 Nil!23515))))

(declare-fun mapNonEmpty!41395 () Bool)

(declare-fun tp!79125 () Bool)

(assert (=> mapNonEmpty!41395 (= mapRes!41395 (and tp!79125 e!619018))))

(declare-fun mapKey!41395 () (_ BitVec 32))

(declare-fun mapRest!41395 () (Array (_ BitVec 32) ValueCell!12504))

(declare-fun mapValue!41395 () ValueCell!12504)

(assert (=> mapNonEmpty!41395 (= (arr!33549 _values!874) (store mapRest!41395 mapKey!41395 mapValue!41395))))

(declare-fun b!1083247 () Bool)

(assert (=> b!1083247 (= e!619020 (not true))))

(declare-datatypes ((tuple2!16882 0))(
  ( (tuple2!16883 (_1!8451 (_ BitVec 64)) (_2!8451 V!40363)) )
))
(declare-datatypes ((List!23519 0))(
  ( (Nil!23516) (Cons!23515 (h!24724 tuple2!16882) (t!33009 List!23519)) )
))
(declare-datatypes ((ListLongMap!14863 0))(
  ( (ListLongMap!14864 (toList!7447 List!23519)) )
))
(declare-fun lt!479984 () ListLongMap!14863)

(declare-fun lt!479983 () ListLongMap!14863)

(assert (=> b!1083247 (and (= lt!479984 lt!479983) (= lt!479983 lt!479984))))

(declare-fun lt!479979 () ListLongMap!14863)

(declare-fun -!729 (ListLongMap!14863 (_ BitVec 64)) ListLongMap!14863)

(assert (=> b!1083247 (= lt!479983 (-!729 lt!479979 k0!904))))

(declare-fun defaultEntry!882 () Int)

(declare-fun minValue!831 () V!40363)

(declare-datatypes ((Unit!35573 0))(
  ( (Unit!35574) )
))
(declare-fun lt!479982 () Unit!35573)

(declare-fun zeroValue!831 () V!40363)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!12 (array!69756 array!69758 (_ BitVec 32) (_ BitVec 32) V!40363 V!40363 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!35573)

(assert (=> b!1083247 (= lt!479982 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!12 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 i!650 k0!904 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun getCurrentListMapNoExtraKeys!3958 (array!69756 array!69758 (_ BitVec 32) (_ BitVec 32) V!40363 V!40363 (_ BitVec 32) Int) ListLongMap!14863)

(declare-fun dynLambda!2094 (Int (_ BitVec 64)) V!40363)

(assert (=> b!1083247 (= lt!479984 (getCurrentListMapNoExtraKeys!3958 lt!479981 (array!69759 (store (arr!33549 _values!874) i!650 (ValueCellFull!12504 (dynLambda!2094 defaultEntry!882 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!34086 _values!874)) mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(assert (=> b!1083247 (= lt!479979 (getCurrentListMapNoExtraKeys!3958 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun arrayContainsKey!0 (array!69756 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1083247 (arrayContainsKey!0 _keys!1070 k0!904 #b00000000000000000000000000000000)))

(declare-fun lt!479980 () Unit!35573)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!69756 (_ BitVec 64) (_ BitVec 32)) Unit!35573)

(assert (=> b!1083247 (= lt!479980 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1070 k0!904 i!650))))

(declare-fun b!1083248 () Bool)

(declare-fun e!619017 () Bool)

(assert (=> b!1083248 (= e!619017 (and e!619019 mapRes!41395))))

(declare-fun condMapEmpty!41395 () Bool)

(declare-fun mapDefault!41395 () ValueCell!12504)

(assert (=> b!1083248 (= condMapEmpty!41395 (= (arr!33549 _values!874) ((as const (Array (_ BitVec 32) ValueCell!12504)) mapDefault!41395)))))

(declare-fun b!1083241 () Bool)

(declare-fun res!722199 () Bool)

(assert (=> b!1083241 (=> (not res!722199) (not e!619016))))

(assert (=> b!1083241 (= res!722199 (and (bvsge i!650 #b00000000000000000000000000000000) (bvslt i!650 (size!34085 _keys!1070))))))

(declare-fun res!722196 () Bool)

(assert (=> start!95808 (=> (not res!722196) (not e!619016))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!95808 (= res!722196 (validMask!0 mask!1414))))

(assert (=> start!95808 e!619016))

(assert (=> start!95808 tp!79124))

(assert (=> start!95808 true))

(assert (=> start!95808 tp_is_empty!26427))

(declare-fun array_inv!25746 (array!69756) Bool)

(assert (=> start!95808 (array_inv!25746 _keys!1070)))

(declare-fun array_inv!25747 (array!69758) Bool)

(assert (=> start!95808 (and (array_inv!25747 _values!874) e!619017)))

(assert (= (and start!95808 res!722196) b!1083239))

(assert (= (and b!1083239 res!722198) b!1083244))

(assert (= (and b!1083244 res!722195) b!1083242))

(assert (= (and b!1083242 res!722193) b!1083241))

(assert (= (and b!1083241 res!722199) b!1083238))

(assert (= (and b!1083238 res!722197) b!1083243))

(assert (= (and b!1083243 res!722200) b!1083237))

(assert (= (and b!1083237 res!722194) b!1083246))

(assert (= (and b!1083246 res!722201) b!1083247))

(assert (= (and b!1083248 condMapEmpty!41395) mapIsEmpty!41395))

(assert (= (and b!1083248 (not condMapEmpty!41395)) mapNonEmpty!41395))

(get-info :version)

(assert (= (and mapNonEmpty!41395 ((_ is ValueCellFull!12504) mapValue!41395)) b!1083245))

(assert (= (and b!1083248 ((_ is ValueCellFull!12504) mapDefault!41395)) b!1083240))

(assert (= start!95808 b!1083248))

(declare-fun b_lambda!17125 () Bool)

(assert (=> (not b_lambda!17125) (not b!1083247)))

(declare-fun t!33007 () Bool)

(declare-fun tb!7311 () Bool)

(assert (=> (and start!95808 (= defaultEntry!882 defaultEntry!882) t!33007) tb!7311))

(declare-fun result!15133 () Bool)

(assert (=> tb!7311 (= result!15133 tp_is_empty!26427)))

(assert (=> b!1083247 t!33007))

(declare-fun b_and!35545 () Bool)

(assert (= b_and!35543 (and (=> t!33007 result!15133) b_and!35545)))

(declare-fun m!1001045 () Bool)

(assert (=> b!1083237 m!1001045))

(declare-fun m!1001047 () Bool)

(assert (=> b!1083237 m!1001047))

(declare-fun m!1001049 () Bool)

(assert (=> b!1083242 m!1001049))

(declare-fun m!1001051 () Bool)

(assert (=> b!1083244 m!1001051))

(declare-fun m!1001053 () Bool)

(assert (=> b!1083243 m!1001053))

(declare-fun m!1001055 () Bool)

(assert (=> b!1083246 m!1001055))

(declare-fun m!1001057 () Bool)

(assert (=> b!1083238 m!1001057))

(declare-fun m!1001059 () Bool)

(assert (=> start!95808 m!1001059))

(declare-fun m!1001061 () Bool)

(assert (=> start!95808 m!1001061))

(declare-fun m!1001063 () Bool)

(assert (=> start!95808 m!1001063))

(declare-fun m!1001065 () Bool)

(assert (=> b!1083247 m!1001065))

(declare-fun m!1001067 () Bool)

(assert (=> b!1083247 m!1001067))

(declare-fun m!1001069 () Bool)

(assert (=> b!1083247 m!1001069))

(declare-fun m!1001071 () Bool)

(assert (=> b!1083247 m!1001071))

(declare-fun m!1001073 () Bool)

(assert (=> b!1083247 m!1001073))

(declare-fun m!1001075 () Bool)

(assert (=> b!1083247 m!1001075))

(declare-fun m!1001077 () Bool)

(assert (=> b!1083247 m!1001077))

(declare-fun m!1001079 () Bool)

(assert (=> b!1083247 m!1001079))

(declare-fun m!1001081 () Bool)

(assert (=> mapNonEmpty!41395 m!1001081))

(check-sat (not b_next!22425) (not b!1083247) (not b_lambda!17125) (not b!1083246) (not b!1083238) (not b!1083244) (not b!1083242) b_and!35545 (not b!1083237) (not start!95808) tp_is_empty!26427 (not mapNonEmpty!41395))
(check-sat b_and!35545 (not b_next!22425))
