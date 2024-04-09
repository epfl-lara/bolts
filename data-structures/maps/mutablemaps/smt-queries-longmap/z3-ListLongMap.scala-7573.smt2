; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!95796 () Bool)

(assert start!95796)

(declare-fun b_free!22413 () Bool)

(declare-fun b_next!22413 () Bool)

(assert (=> start!95796 (= b_free!22413 (not b_next!22413))))

(declare-fun tp!79088 () Bool)

(declare-fun b_and!35519 () Bool)

(assert (=> start!95796 (= tp!79088 b_and!35519)))

(declare-fun b!1083009 () Bool)

(declare-fun res!722037 () Bool)

(declare-fun e!618910 () Bool)

(assert (=> b!1083009 (=> (not res!722037) (not e!618910))))

(declare-fun i!650 () (_ BitVec 32))

(declare-datatypes ((array!69732 0))(
  ( (array!69733 (arr!33536 (Array (_ BitVec 32) (_ BitVec 64))) (size!34073 (_ BitVec 32))) )
))
(declare-fun _keys!1070 () array!69732)

(assert (=> b!1083009 (= res!722037 (and (bvsge i!650 #b00000000000000000000000000000000) (bvslt i!650 (size!34073 _keys!1070))))))

(declare-fun b!1083010 () Bool)

(declare-fun res!722036 () Bool)

(assert (=> b!1083010 (=> (not res!722036) (not e!618910))))

(declare-fun mask!1414 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!69732 (_ BitVec 32)) Bool)

(assert (=> b!1083010 (= res!722036 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1070 mask!1414))))

(declare-fun b!1083011 () Bool)

(declare-fun res!722032 () Bool)

(assert (=> b!1083011 (=> (not res!722032) (not e!618910))))

(declare-fun extraKeys!811 () (_ BitVec 32))

(declare-datatypes ((V!40347 0))(
  ( (V!40348 (val!13264 Int)) )
))
(declare-datatypes ((ValueCell!12498 0))(
  ( (ValueCellFull!12498 (v!15886 V!40347)) (EmptyCell!12498) )
))
(declare-datatypes ((array!69734 0))(
  ( (array!69735 (arr!33537 (Array (_ BitVec 32) ValueCell!12498)) (size!34074 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!69734)

(assert (=> b!1083011 (= res!722032 (and (= (size!34074 _values!874) (bvadd #b00000000000000000000000000000001 mask!1414)) (= (size!34073 _keys!1070) (size!34074 _values!874)) (bvsge mask!1414 #b00000000000000000000000000000000) (bvsge extraKeys!811 #b00000000000000000000000000000000) (bvsle extraKeys!811 #b00000000000000000000000000000011)))))

(declare-fun b!1083012 () Bool)

(declare-fun res!722033 () Bool)

(assert (=> b!1083012 (=> (not res!722033) (not e!618910))))

(declare-datatypes ((List!23510 0))(
  ( (Nil!23507) (Cons!23506 (h!24715 (_ BitVec 64)) (t!32988 List!23510)) )
))
(declare-fun arrayNoDuplicates!0 (array!69732 (_ BitVec 32) List!23510) Bool)

(assert (=> b!1083012 (= res!722033 (arrayNoDuplicates!0 _keys!1070 #b00000000000000000000000000000000 Nil!23507))))

(declare-fun mapIsEmpty!41377 () Bool)

(declare-fun mapRes!41377 () Bool)

(assert (=> mapIsEmpty!41377 mapRes!41377))

(declare-fun b!1083013 () Bool)

(declare-fun e!618909 () Bool)

(assert (=> b!1083013 (= e!618909 (not true))))

(declare-datatypes ((tuple2!16874 0))(
  ( (tuple2!16875 (_1!8447 (_ BitVec 64)) (_2!8447 V!40347)) )
))
(declare-datatypes ((List!23511 0))(
  ( (Nil!23508) (Cons!23507 (h!24716 tuple2!16874) (t!32989 List!23511)) )
))
(declare-datatypes ((ListLongMap!14855 0))(
  ( (ListLongMap!14856 (toList!7443 List!23511)) )
))
(declare-fun lt!479875 () ListLongMap!14855)

(declare-fun lt!479874 () ListLongMap!14855)

(assert (=> b!1083013 (and (= lt!479875 lt!479874) (= lt!479874 lt!479875))))

(declare-fun lt!479871 () ListLongMap!14855)

(declare-fun k0!904 () (_ BitVec 64))

(declare-fun -!725 (ListLongMap!14855 (_ BitVec 64)) ListLongMap!14855)

(assert (=> b!1083013 (= lt!479874 (-!725 lt!479871 k0!904))))

(declare-fun defaultEntry!882 () Int)

(declare-datatypes ((Unit!35565 0))(
  ( (Unit!35566) )
))
(declare-fun lt!479876 () Unit!35565)

(declare-fun minValue!831 () V!40347)

(declare-fun zeroValue!831 () V!40347)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!8 (array!69732 array!69734 (_ BitVec 32) (_ BitVec 32) V!40347 V!40347 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!35565)

(assert (=> b!1083013 (= lt!479876 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!8 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 i!650 k0!904 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun lt!479872 () array!69732)

(declare-fun getCurrentListMapNoExtraKeys!3954 (array!69732 array!69734 (_ BitVec 32) (_ BitVec 32) V!40347 V!40347 (_ BitVec 32) Int) ListLongMap!14855)

(declare-fun dynLambda!2090 (Int (_ BitVec 64)) V!40347)

(assert (=> b!1083013 (= lt!479875 (getCurrentListMapNoExtraKeys!3954 lt!479872 (array!69735 (store (arr!33537 _values!874) i!650 (ValueCellFull!12498 (dynLambda!2090 defaultEntry!882 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!34074 _values!874)) mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(assert (=> b!1083013 (= lt!479871 (getCurrentListMapNoExtraKeys!3954 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun arrayContainsKey!0 (array!69732 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1083013 (arrayContainsKey!0 _keys!1070 k0!904 #b00000000000000000000000000000000)))

(declare-fun lt!479873 () Unit!35565)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!69732 (_ BitVec 64) (_ BitVec 32)) Unit!35565)

(assert (=> b!1083013 (= lt!479873 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1070 k0!904 i!650))))

(declare-fun b!1083014 () Bool)

(assert (=> b!1083014 (= e!618910 e!618909)))

(declare-fun res!722031 () Bool)

(assert (=> b!1083014 (=> (not res!722031) (not e!618909))))

(assert (=> b!1083014 (= res!722031 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!479872 mask!1414))))

(assert (=> b!1083014 (= lt!479872 (array!69733 (store (arr!33536 _keys!1070) i!650 #b1000000000000000000000000000000000000000000000000000000000000000) (size!34073 _keys!1070)))))

(declare-fun b!1083016 () Bool)

(declare-fun e!618908 () Bool)

(declare-fun tp_is_empty!26415 () Bool)

(assert (=> b!1083016 (= e!618908 tp_is_empty!26415)))

(declare-fun b!1083017 () Bool)

(declare-fun e!618912 () Bool)

(assert (=> b!1083017 (= e!618912 (and e!618908 mapRes!41377))))

(declare-fun condMapEmpty!41377 () Bool)

(declare-fun mapDefault!41377 () ValueCell!12498)

(assert (=> b!1083017 (= condMapEmpty!41377 (= (arr!33537 _values!874) ((as const (Array (_ BitVec 32) ValueCell!12498)) mapDefault!41377)))))

(declare-fun b!1083018 () Bool)

(declare-fun res!722035 () Bool)

(assert (=> b!1083018 (=> (not res!722035) (not e!618910))))

(assert (=> b!1083018 (= res!722035 (= (select (arr!33536 _keys!1070) i!650) k0!904))))

(declare-fun b!1083019 () Bool)

(declare-fun e!618911 () Bool)

(assert (=> b!1083019 (= e!618911 tp_is_empty!26415)))

(declare-fun b!1083020 () Bool)

(declare-fun res!722034 () Bool)

(assert (=> b!1083020 (=> (not res!722034) (not e!618910))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1083020 (= res!722034 (validKeyInArray!0 k0!904))))

(declare-fun mapNonEmpty!41377 () Bool)

(declare-fun tp!79089 () Bool)

(assert (=> mapNonEmpty!41377 (= mapRes!41377 (and tp!79089 e!618911))))

(declare-fun mapKey!41377 () (_ BitVec 32))

(declare-fun mapRest!41377 () (Array (_ BitVec 32) ValueCell!12498))

(declare-fun mapValue!41377 () ValueCell!12498)

(assert (=> mapNonEmpty!41377 (= (arr!33537 _values!874) (store mapRest!41377 mapKey!41377 mapValue!41377))))

(declare-fun res!722039 () Bool)

(assert (=> start!95796 (=> (not res!722039) (not e!618910))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!95796 (= res!722039 (validMask!0 mask!1414))))

(assert (=> start!95796 e!618910))

(assert (=> start!95796 tp!79088))

(assert (=> start!95796 true))

(assert (=> start!95796 tp_is_empty!26415))

(declare-fun array_inv!25742 (array!69732) Bool)

(assert (=> start!95796 (array_inv!25742 _keys!1070)))

(declare-fun array_inv!25743 (array!69734) Bool)

(assert (=> start!95796 (and (array_inv!25743 _values!874) e!618912)))

(declare-fun b!1083015 () Bool)

(declare-fun res!722038 () Bool)

(assert (=> b!1083015 (=> (not res!722038) (not e!618909))))

(assert (=> b!1083015 (= res!722038 (arrayNoDuplicates!0 lt!479872 #b00000000000000000000000000000000 Nil!23507))))

(assert (= (and start!95796 res!722039) b!1083011))

(assert (= (and b!1083011 res!722032) b!1083010))

(assert (= (and b!1083010 res!722036) b!1083012))

(assert (= (and b!1083012 res!722033) b!1083009))

(assert (= (and b!1083009 res!722037) b!1083020))

(assert (= (and b!1083020 res!722034) b!1083018))

(assert (= (and b!1083018 res!722035) b!1083014))

(assert (= (and b!1083014 res!722031) b!1083015))

(assert (= (and b!1083015 res!722038) b!1083013))

(assert (= (and b!1083017 condMapEmpty!41377) mapIsEmpty!41377))

(assert (= (and b!1083017 (not condMapEmpty!41377)) mapNonEmpty!41377))

(get-info :version)

(assert (= (and mapNonEmpty!41377 ((_ is ValueCellFull!12498) mapValue!41377)) b!1083019))

(assert (= (and b!1083017 ((_ is ValueCellFull!12498) mapDefault!41377)) b!1083016))

(assert (= start!95796 b!1083017))

(declare-fun b_lambda!17113 () Bool)

(assert (=> (not b_lambda!17113) (not b!1083013)))

(declare-fun t!32987 () Bool)

(declare-fun tb!7299 () Bool)

(assert (=> (and start!95796 (= defaultEntry!882 defaultEntry!882) t!32987) tb!7299))

(declare-fun result!15109 () Bool)

(assert (=> tb!7299 (= result!15109 tp_is_empty!26415)))

(assert (=> b!1083013 t!32987))

(declare-fun b_and!35521 () Bool)

(assert (= b_and!35519 (and (=> t!32987 result!15109) b_and!35521)))

(declare-fun m!1000817 () Bool)

(assert (=> b!1083013 m!1000817))

(declare-fun m!1000819 () Bool)

(assert (=> b!1083013 m!1000819))

(declare-fun m!1000821 () Bool)

(assert (=> b!1083013 m!1000821))

(declare-fun m!1000823 () Bool)

(assert (=> b!1083013 m!1000823))

(declare-fun m!1000825 () Bool)

(assert (=> b!1083013 m!1000825))

(declare-fun m!1000827 () Bool)

(assert (=> b!1083013 m!1000827))

(declare-fun m!1000829 () Bool)

(assert (=> b!1083013 m!1000829))

(declare-fun m!1000831 () Bool)

(assert (=> b!1083013 m!1000831))

(declare-fun m!1000833 () Bool)

(assert (=> b!1083015 m!1000833))

(declare-fun m!1000835 () Bool)

(assert (=> b!1083012 m!1000835))

(declare-fun m!1000837 () Bool)

(assert (=> b!1083010 m!1000837))

(declare-fun m!1000839 () Bool)

(assert (=> start!95796 m!1000839))

(declare-fun m!1000841 () Bool)

(assert (=> start!95796 m!1000841))

(declare-fun m!1000843 () Bool)

(assert (=> start!95796 m!1000843))

(declare-fun m!1000845 () Bool)

(assert (=> b!1083018 m!1000845))

(declare-fun m!1000847 () Bool)

(assert (=> b!1083014 m!1000847))

(declare-fun m!1000849 () Bool)

(assert (=> b!1083014 m!1000849))

(declare-fun m!1000851 () Bool)

(assert (=> mapNonEmpty!41377 m!1000851))

(declare-fun m!1000853 () Bool)

(assert (=> b!1083020 m!1000853))

(check-sat (not b_lambda!17113) (not b!1083010) (not b!1083014) (not b_next!22413) (not b!1083013) tp_is_empty!26415 (not b!1083015) (not b!1083020) (not mapNonEmpty!41377) b_and!35521 (not b!1083012) (not start!95796))
(check-sat b_and!35521 (not b_next!22413))
