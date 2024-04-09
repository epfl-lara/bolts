; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!95856 () Bool)

(assert start!95856)

(declare-fun b_free!22473 () Bool)

(declare-fun b_next!22473 () Bool)

(assert (=> start!95856 (= b_free!22473 (not b_next!22473))))

(declare-fun tp!79268 () Bool)

(declare-fun b_and!35639 () Bool)

(assert (=> start!95856 (= tp!79268 b_and!35639)))

(declare-fun b!1084149 () Bool)

(declare-fun res!722846 () Bool)

(declare-fun e!619449 () Bool)

(assert (=> b!1084149 (=> (not res!722846) (not e!619449))))

(declare-datatypes ((array!69852 0))(
  ( (array!69853 (arr!33596 (Array (_ BitVec 32) (_ BitVec 64))) (size!34133 (_ BitVec 32))) )
))
(declare-fun _keys!1070 () array!69852)

(declare-fun mask!1414 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!69852 (_ BitVec 32)) Bool)

(assert (=> b!1084149 (= res!722846 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1070 mask!1414))))

(declare-fun mapNonEmpty!41467 () Bool)

(declare-fun mapRes!41467 () Bool)

(declare-fun tp!79269 () Bool)

(declare-fun e!619452 () Bool)

(assert (=> mapNonEmpty!41467 (= mapRes!41467 (and tp!79269 e!619452))))

(declare-datatypes ((V!40427 0))(
  ( (V!40428 (val!13294 Int)) )
))
(declare-datatypes ((ValueCell!12528 0))(
  ( (ValueCellFull!12528 (v!15916 V!40427)) (EmptyCell!12528) )
))
(declare-fun mapValue!41467 () ValueCell!12528)

(declare-datatypes ((array!69854 0))(
  ( (array!69855 (arr!33597 (Array (_ BitVec 32) ValueCell!12528)) (size!34134 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!69854)

(declare-fun mapKey!41467 () (_ BitVec 32))

(declare-fun mapRest!41467 () (Array (_ BitVec 32) ValueCell!12528))

(assert (=> mapNonEmpty!41467 (= (arr!33597 _values!874) (store mapRest!41467 mapKey!41467 mapValue!41467))))

(declare-fun b!1084150 () Bool)

(declare-fun res!722843 () Bool)

(assert (=> b!1084150 (=> (not res!722843) (not e!619449))))

(declare-fun extraKeys!811 () (_ BitVec 32))

(assert (=> b!1084150 (= res!722843 (and (= (size!34134 _values!874) (bvadd #b00000000000000000000000000000001 mask!1414)) (= (size!34133 _keys!1070) (size!34134 _values!874)) (bvsge mask!1414 #b00000000000000000000000000000000) (bvsge extraKeys!811 #b00000000000000000000000000000000) (bvsle extraKeys!811 #b00000000000000000000000000000011)))))

(declare-fun b!1084151 () Bool)

(declare-fun res!722841 () Bool)

(assert (=> b!1084151 (=> (not res!722841) (not e!619449))))

(declare-fun k0!904 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1084151 (= res!722841 (validKeyInArray!0 k0!904))))

(declare-fun mapIsEmpty!41467 () Bool)

(assert (=> mapIsEmpty!41467 mapRes!41467))

(declare-fun b!1084152 () Bool)

(declare-fun tp_is_empty!26475 () Bool)

(assert (=> b!1084152 (= e!619452 tp_is_empty!26475)))

(declare-fun b!1084153 () Bool)

(declare-fun res!722849 () Bool)

(assert (=> b!1084153 (=> (not res!722849) (not e!619449))))

(declare-fun i!650 () (_ BitVec 32))

(assert (=> b!1084153 (= res!722849 (= (select (arr!33596 _keys!1070) i!650) k0!904))))

(declare-fun b!1084154 () Bool)

(declare-fun e!619450 () Bool)

(assert (=> b!1084154 (= e!619450 tp_is_empty!26475)))

(declare-fun b!1084155 () Bool)

(declare-fun res!722848 () Bool)

(assert (=> b!1084155 (=> (not res!722848) (not e!619449))))

(declare-datatypes ((List!23554 0))(
  ( (Nil!23551) (Cons!23550 (h!24759 (_ BitVec 64)) (t!33092 List!23554)) )
))
(declare-fun arrayNoDuplicates!0 (array!69852 (_ BitVec 32) List!23554) Bool)

(assert (=> b!1084155 (= res!722848 (arrayNoDuplicates!0 _keys!1070 #b00000000000000000000000000000000 Nil!23551))))

(declare-fun b!1084156 () Bool)

(declare-fun e!619451 () Bool)

(assert (=> b!1084156 (= e!619451 (and e!619450 mapRes!41467))))

(declare-fun condMapEmpty!41467 () Bool)

(declare-fun mapDefault!41467 () ValueCell!12528)

(assert (=> b!1084156 (= condMapEmpty!41467 (= (arr!33597 _values!874) ((as const (Array (_ BitVec 32) ValueCell!12528)) mapDefault!41467)))))

(declare-fun b!1084157 () Bool)

(declare-fun e!619453 () Bool)

(assert (=> b!1084157 (= e!619453 (not true))))

(declare-fun lt!480511 () array!69854)

(declare-fun defaultEntry!882 () Int)

(declare-fun lt!480512 () array!69852)

(declare-fun minValue!831 () V!40427)

(declare-datatypes ((tuple2!16912 0))(
  ( (tuple2!16913 (_1!8466 (_ BitVec 64)) (_2!8466 V!40427)) )
))
(declare-datatypes ((List!23555 0))(
  ( (Nil!23552) (Cons!23551 (h!24760 tuple2!16912) (t!33093 List!23555)) )
))
(declare-datatypes ((ListLongMap!14893 0))(
  ( (ListLongMap!14894 (toList!7462 List!23555)) )
))
(declare-fun lt!480517 () ListLongMap!14893)

(declare-fun zeroValue!831 () V!40427)

(declare-fun getCurrentListMap!4221 (array!69852 array!69854 (_ BitVec 32) (_ BitVec 32) V!40427 V!40427 (_ BitVec 32) Int) ListLongMap!14893)

(assert (=> b!1084157 (= lt!480517 (getCurrentListMap!4221 lt!480512 lt!480511 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun lt!480514 () ListLongMap!14893)

(declare-fun lt!480518 () ListLongMap!14893)

(assert (=> b!1084157 (and (= lt!480514 lt!480518) (= lt!480518 lt!480514))))

(declare-fun lt!480515 () ListLongMap!14893)

(declare-fun -!744 (ListLongMap!14893 (_ BitVec 64)) ListLongMap!14893)

(assert (=> b!1084157 (= lt!480518 (-!744 lt!480515 k0!904))))

(declare-datatypes ((Unit!35603 0))(
  ( (Unit!35604) )
))
(declare-fun lt!480516 () Unit!35603)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!27 (array!69852 array!69854 (_ BitVec 32) (_ BitVec 32) V!40427 V!40427 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!35603)

(assert (=> b!1084157 (= lt!480516 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!27 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 i!650 k0!904 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun getCurrentListMapNoExtraKeys!3973 (array!69852 array!69854 (_ BitVec 32) (_ BitVec 32) V!40427 V!40427 (_ BitVec 32) Int) ListLongMap!14893)

(assert (=> b!1084157 (= lt!480514 (getCurrentListMapNoExtraKeys!3973 lt!480512 lt!480511 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun dynLambda!2109 (Int (_ BitVec 64)) V!40427)

(assert (=> b!1084157 (= lt!480511 (array!69855 (store (arr!33597 _values!874) i!650 (ValueCellFull!12528 (dynLambda!2109 defaultEntry!882 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!34134 _values!874)))))

(assert (=> b!1084157 (= lt!480515 (getCurrentListMapNoExtraKeys!3973 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun arrayContainsKey!0 (array!69852 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1084157 (arrayContainsKey!0 _keys!1070 k0!904 #b00000000000000000000000000000000)))

(declare-fun lt!480513 () Unit!35603)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!69852 (_ BitVec 64) (_ BitVec 32)) Unit!35603)

(assert (=> b!1084157 (= lt!480513 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1070 k0!904 i!650))))

(declare-fun b!1084158 () Bool)

(declare-fun res!722842 () Bool)

(assert (=> b!1084158 (=> (not res!722842) (not e!619453))))

(assert (=> b!1084158 (= res!722842 (arrayNoDuplicates!0 lt!480512 #b00000000000000000000000000000000 Nil!23551))))

(declare-fun res!722847 () Bool)

(assert (=> start!95856 (=> (not res!722847) (not e!619449))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!95856 (= res!722847 (validMask!0 mask!1414))))

(assert (=> start!95856 e!619449))

(assert (=> start!95856 tp!79268))

(assert (=> start!95856 true))

(assert (=> start!95856 tp_is_empty!26475))

(declare-fun array_inv!25778 (array!69852) Bool)

(assert (=> start!95856 (array_inv!25778 _keys!1070)))

(declare-fun array_inv!25779 (array!69854) Bool)

(assert (=> start!95856 (and (array_inv!25779 _values!874) e!619451)))

(declare-fun b!1084159 () Bool)

(declare-fun res!722845 () Bool)

(assert (=> b!1084159 (=> (not res!722845) (not e!619449))))

(assert (=> b!1084159 (= res!722845 (and (bvsge i!650 #b00000000000000000000000000000000) (bvslt i!650 (size!34133 _keys!1070))))))

(declare-fun b!1084160 () Bool)

(assert (=> b!1084160 (= e!619449 e!619453)))

(declare-fun res!722844 () Bool)

(assert (=> b!1084160 (=> (not res!722844) (not e!619453))))

(assert (=> b!1084160 (= res!722844 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!480512 mask!1414))))

(assert (=> b!1084160 (= lt!480512 (array!69853 (store (arr!33596 _keys!1070) i!650 #b1000000000000000000000000000000000000000000000000000000000000000) (size!34133 _keys!1070)))))

(assert (= (and start!95856 res!722847) b!1084150))

(assert (= (and b!1084150 res!722843) b!1084149))

(assert (= (and b!1084149 res!722846) b!1084155))

(assert (= (and b!1084155 res!722848) b!1084159))

(assert (= (and b!1084159 res!722845) b!1084151))

(assert (= (and b!1084151 res!722841) b!1084153))

(assert (= (and b!1084153 res!722849) b!1084160))

(assert (= (and b!1084160 res!722844) b!1084158))

(assert (= (and b!1084158 res!722842) b!1084157))

(assert (= (and b!1084156 condMapEmpty!41467) mapIsEmpty!41467))

(assert (= (and b!1084156 (not condMapEmpty!41467)) mapNonEmpty!41467))

(get-info :version)

(assert (= (and mapNonEmpty!41467 ((_ is ValueCellFull!12528) mapValue!41467)) b!1084152))

(assert (= (and b!1084156 ((_ is ValueCellFull!12528) mapDefault!41467)) b!1084154))

(assert (= start!95856 b!1084156))

(declare-fun b_lambda!17173 () Bool)

(assert (=> (not b_lambda!17173) (not b!1084157)))

(declare-fun t!33091 () Bool)

(declare-fun tb!7359 () Bool)

(assert (=> (and start!95856 (= defaultEntry!882 defaultEntry!882) t!33091) tb!7359))

(declare-fun result!15229 () Bool)

(assert (=> tb!7359 (= result!15229 tp_is_empty!26475)))

(assert (=> b!1084157 t!33091))

(declare-fun b_and!35641 () Bool)

(assert (= b_and!35639 (and (=> t!33091 result!15229) b_and!35641)))

(declare-fun m!1001989 () Bool)

(assert (=> b!1084160 m!1001989))

(declare-fun m!1001991 () Bool)

(assert (=> b!1084160 m!1001991))

(declare-fun m!1001993 () Bool)

(assert (=> b!1084149 m!1001993))

(declare-fun m!1001995 () Bool)

(assert (=> b!1084155 m!1001995))

(declare-fun m!1001997 () Bool)

(assert (=> b!1084158 m!1001997))

(declare-fun m!1001999 () Bool)

(assert (=> start!95856 m!1001999))

(declare-fun m!1002001 () Bool)

(assert (=> start!95856 m!1002001))

(declare-fun m!1002003 () Bool)

(assert (=> start!95856 m!1002003))

(declare-fun m!1002005 () Bool)

(assert (=> mapNonEmpty!41467 m!1002005))

(declare-fun m!1002007 () Bool)

(assert (=> b!1084153 m!1002007))

(declare-fun m!1002009 () Bool)

(assert (=> b!1084157 m!1002009))

(declare-fun m!1002011 () Bool)

(assert (=> b!1084157 m!1002011))

(declare-fun m!1002013 () Bool)

(assert (=> b!1084157 m!1002013))

(declare-fun m!1002015 () Bool)

(assert (=> b!1084157 m!1002015))

(declare-fun m!1002017 () Bool)

(assert (=> b!1084157 m!1002017))

(declare-fun m!1002019 () Bool)

(assert (=> b!1084157 m!1002019))

(declare-fun m!1002021 () Bool)

(assert (=> b!1084157 m!1002021))

(declare-fun m!1002023 () Bool)

(assert (=> b!1084157 m!1002023))

(declare-fun m!1002025 () Bool)

(assert (=> b!1084157 m!1002025))

(declare-fun m!1002027 () Bool)

(assert (=> b!1084151 m!1002027))

(check-sat (not mapNonEmpty!41467) (not b!1084149) (not b!1084160) (not b!1084155) b_and!35641 (not b!1084157) (not start!95856) tp_is_empty!26475 (not b!1084158) (not b!1084151) (not b_next!22473) (not b_lambda!17173))
(check-sat b_and!35641 (not b_next!22473))
