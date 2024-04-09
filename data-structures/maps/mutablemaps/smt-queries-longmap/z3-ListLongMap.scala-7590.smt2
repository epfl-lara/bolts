; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!95898 () Bool)

(assert start!95898)

(declare-fun b_free!22515 () Bool)

(declare-fun b_next!22515 () Bool)

(assert (=> start!95898 (= b_free!22515 (not b_next!22515))))

(declare-fun tp!79395 () Bool)

(declare-fun b_and!35723 () Bool)

(assert (=> start!95898 (= tp!79395 b_and!35723)))

(declare-fun b!1085011 () Bool)

(declare-fun e!619883 () Bool)

(declare-fun tp_is_empty!26517 () Bool)

(assert (=> b!1085011 (= e!619883 tp_is_empty!26517)))

(declare-fun b!1085012 () Bool)

(declare-fun res!723480 () Bool)

(declare-fun e!619882 () Bool)

(assert (=> b!1085012 (=> (not res!723480) (not e!619882))))

(declare-datatypes ((array!69936 0))(
  ( (array!69937 (arr!33638 (Array (_ BitVec 32) (_ BitVec 64))) (size!34175 (_ BitVec 32))) )
))
(declare-fun _keys!1070 () array!69936)

(declare-datatypes ((List!23588 0))(
  ( (Nil!23585) (Cons!23584 (h!24793 (_ BitVec 64)) (t!33168 List!23588)) )
))
(declare-fun arrayNoDuplicates!0 (array!69936 (_ BitVec 32) List!23588) Bool)

(assert (=> b!1085012 (= res!723480 (arrayNoDuplicates!0 _keys!1070 #b00000000000000000000000000000000 Nil!23585))))

(declare-fun b!1085013 () Bool)

(declare-fun res!723475 () Bool)

(assert (=> b!1085013 (=> (not res!723475) (not e!619882))))

(declare-fun mask!1414 () (_ BitVec 32))

(declare-fun extraKeys!811 () (_ BitVec 32))

(declare-datatypes ((V!40483 0))(
  ( (V!40484 (val!13315 Int)) )
))
(declare-datatypes ((ValueCell!12549 0))(
  ( (ValueCellFull!12549 (v!15937 V!40483)) (EmptyCell!12549) )
))
(declare-datatypes ((array!69938 0))(
  ( (array!69939 (arr!33639 (Array (_ BitVec 32) ValueCell!12549)) (size!34176 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!69938)

(assert (=> b!1085013 (= res!723475 (and (= (size!34176 _values!874) (bvadd #b00000000000000000000000000000001 mask!1414)) (= (size!34175 _keys!1070) (size!34176 _values!874)) (bvsge mask!1414 #b00000000000000000000000000000000) (bvsge extraKeys!811 #b00000000000000000000000000000000) (bvsle extraKeys!811 #b00000000000000000000000000000011)))))

(declare-fun b!1085014 () Bool)

(declare-fun e!619884 () Bool)

(declare-fun e!619881 () Bool)

(assert (=> b!1085014 (= e!619884 (not e!619881))))

(declare-fun res!723474 () Bool)

(assert (=> b!1085014 (=> res!723474 e!619881)))

(assert (=> b!1085014 (= res!723474 (or (= (bvand extraKeys!811 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (= (bvand extraKeys!811 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun defaultEntry!882 () Int)

(declare-fun minValue!831 () V!40483)

(declare-fun zeroValue!831 () V!40483)

(declare-datatypes ((tuple2!16946 0))(
  ( (tuple2!16947 (_1!8483 (_ BitVec 64)) (_2!8483 V!40483)) )
))
(declare-datatypes ((List!23589 0))(
  ( (Nil!23586) (Cons!23585 (h!24794 tuple2!16946) (t!33169 List!23589)) )
))
(declare-datatypes ((ListLongMap!14927 0))(
  ( (ListLongMap!14928 (toList!7479 List!23589)) )
))
(declare-fun lt!481226 () ListLongMap!14927)

(declare-fun getCurrentListMap!4236 (array!69936 array!69938 (_ BitVec 32) (_ BitVec 32) V!40483 V!40483 (_ BitVec 32) Int) ListLongMap!14927)

(assert (=> b!1085014 (= lt!481226 (getCurrentListMap!4236 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun lt!481238 () array!69938)

(declare-fun lt!481222 () ListLongMap!14927)

(declare-fun lt!481225 () array!69936)

(assert (=> b!1085014 (= lt!481222 (getCurrentListMap!4236 lt!481225 lt!481238 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun lt!481232 () ListLongMap!14927)

(declare-fun lt!481234 () ListLongMap!14927)

(assert (=> b!1085014 (and (= lt!481232 lt!481234) (= lt!481234 lt!481232))))

(declare-fun lt!481231 () ListLongMap!14927)

(declare-fun k0!904 () (_ BitVec 64))

(declare-fun -!760 (ListLongMap!14927 (_ BitVec 64)) ListLongMap!14927)

(assert (=> b!1085014 (= lt!481234 (-!760 lt!481231 k0!904))))

(declare-fun i!650 () (_ BitVec 32))

(declare-datatypes ((Unit!35635 0))(
  ( (Unit!35636) )
))
(declare-fun lt!481230 () Unit!35635)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!42 (array!69936 array!69938 (_ BitVec 32) (_ BitVec 32) V!40483 V!40483 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!35635)

(assert (=> b!1085014 (= lt!481230 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!42 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 i!650 k0!904 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun getCurrentListMapNoExtraKeys!3988 (array!69936 array!69938 (_ BitVec 32) (_ BitVec 32) V!40483 V!40483 (_ BitVec 32) Int) ListLongMap!14927)

(assert (=> b!1085014 (= lt!481232 (getCurrentListMapNoExtraKeys!3988 lt!481225 lt!481238 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun dynLambda!2124 (Int (_ BitVec 64)) V!40483)

(assert (=> b!1085014 (= lt!481238 (array!69939 (store (arr!33639 _values!874) i!650 (ValueCellFull!12549 (dynLambda!2124 defaultEntry!882 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!34176 _values!874)))))

(assert (=> b!1085014 (= lt!481231 (getCurrentListMapNoExtraKeys!3988 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun arrayContainsKey!0 (array!69936 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1085014 (arrayContainsKey!0 _keys!1070 k0!904 #b00000000000000000000000000000000)))

(declare-fun lt!481233 () Unit!35635)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!69936 (_ BitVec 64) (_ BitVec 32)) Unit!35635)

(assert (=> b!1085014 (= lt!481233 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1070 k0!904 i!650))))

(declare-fun b!1085015 () Bool)

(declare-fun res!723476 () Bool)

(assert (=> b!1085015 (=> (not res!723476) (not e!619884))))

(assert (=> b!1085015 (= res!723476 (arrayNoDuplicates!0 lt!481225 #b00000000000000000000000000000000 Nil!23585))))

(declare-fun b!1085016 () Bool)

(declare-fun e!619885 () Bool)

(assert (=> b!1085016 (= e!619881 e!619885)))

(declare-fun res!723477 () Bool)

(assert (=> b!1085016 (=> res!723477 e!619885)))

(assert (=> b!1085016 (= res!723477 (= #b1000000000000000000000000000000000000000000000000000000000000000 k0!904))))

(declare-fun lt!481236 () ListLongMap!14927)

(declare-fun lt!481224 () ListLongMap!14927)

(assert (=> b!1085016 (= lt!481236 lt!481224)))

(declare-fun lt!481229 () ListLongMap!14927)

(assert (=> b!1085016 (= lt!481236 (-!760 lt!481229 k0!904))))

(declare-fun lt!481228 () Unit!35635)

(declare-fun addRemoveCommutativeForDiffKeys!7 (ListLongMap!14927 (_ BitVec 64) V!40483 (_ BitVec 64)) Unit!35635)

(assert (=> b!1085016 (= lt!481228 (addRemoveCommutativeForDiffKeys!7 lt!481231 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!831 k0!904))))

(declare-fun lt!481237 () tuple2!16946)

(declare-fun +!3211 (ListLongMap!14927 tuple2!16946) ListLongMap!14927)

(assert (=> b!1085016 (= lt!481222 (+!3211 lt!481224 lt!481237))))

(declare-fun lt!481235 () tuple2!16946)

(assert (=> b!1085016 (= lt!481224 (+!3211 lt!481234 lt!481235))))

(declare-fun lt!481227 () ListLongMap!14927)

(assert (=> b!1085016 (= lt!481226 lt!481227)))

(assert (=> b!1085016 (= lt!481227 (+!3211 lt!481229 lt!481237))))

(assert (=> b!1085016 (= lt!481229 (+!3211 lt!481231 lt!481235))))

(assert (=> b!1085016 (= lt!481222 (+!3211 (+!3211 lt!481232 lt!481235) lt!481237))))

(assert (=> b!1085016 (= lt!481237 (tuple2!16947 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!831))))

(assert (=> b!1085016 (= lt!481235 (tuple2!16947 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!831))))

(declare-fun b!1085017 () Bool)

(assert (=> b!1085017 (= e!619882 e!619884)))

(declare-fun res!723479 () Bool)

(assert (=> b!1085017 (=> (not res!723479) (not e!619884))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!69936 (_ BitVec 32)) Bool)

(assert (=> b!1085017 (= res!723479 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!481225 mask!1414))))

(assert (=> b!1085017 (= lt!481225 (array!69937 (store (arr!33638 _keys!1070) i!650 #b1000000000000000000000000000000000000000000000000000000000000000) (size!34175 _keys!1070)))))

(declare-fun b!1085018 () Bool)

(declare-fun e!619888 () Bool)

(assert (=> b!1085018 (= e!619888 tp_is_empty!26517)))

(declare-fun b!1085019 () Bool)

(declare-fun res!723473 () Bool)

(assert (=> b!1085019 (=> (not res!723473) (not e!619882))))

(assert (=> b!1085019 (= res!723473 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1070 mask!1414))))

(declare-fun b!1085020 () Bool)

(assert (=> b!1085020 (= e!619885 true)))

(assert (=> b!1085020 (= (-!760 lt!481227 k0!904) (+!3211 lt!481236 lt!481237))))

(declare-fun lt!481223 () Unit!35635)

(assert (=> b!1085020 (= lt!481223 (addRemoveCommutativeForDiffKeys!7 lt!481229 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!831 k0!904))))

(declare-fun b!1085022 () Bool)

(declare-fun res!723481 () Bool)

(assert (=> b!1085022 (=> (not res!723481) (not e!619882))))

(assert (=> b!1085022 (= res!723481 (= (select (arr!33638 _keys!1070) i!650) k0!904))))

(declare-fun mapIsEmpty!41530 () Bool)

(declare-fun mapRes!41530 () Bool)

(assert (=> mapIsEmpty!41530 mapRes!41530))

(declare-fun b!1085023 () Bool)

(declare-fun e!619887 () Bool)

(assert (=> b!1085023 (= e!619887 (and e!619883 mapRes!41530))))

(declare-fun condMapEmpty!41530 () Bool)

(declare-fun mapDefault!41530 () ValueCell!12549)

(assert (=> b!1085023 (= condMapEmpty!41530 (= (arr!33639 _values!874) ((as const (Array (_ BitVec 32) ValueCell!12549)) mapDefault!41530)))))

(declare-fun b!1085021 () Bool)

(declare-fun res!723482 () Bool)

(assert (=> b!1085021 (=> (not res!723482) (not e!619882))))

(assert (=> b!1085021 (= res!723482 (and (bvsge i!650 #b00000000000000000000000000000000) (bvslt i!650 (size!34175 _keys!1070))))))

(declare-fun res!723478 () Bool)

(assert (=> start!95898 (=> (not res!723478) (not e!619882))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!95898 (= res!723478 (validMask!0 mask!1414))))

(assert (=> start!95898 e!619882))

(assert (=> start!95898 tp!79395))

(assert (=> start!95898 true))

(assert (=> start!95898 tp_is_empty!26517))

(declare-fun array_inv!25812 (array!69936) Bool)

(assert (=> start!95898 (array_inv!25812 _keys!1070)))

(declare-fun array_inv!25813 (array!69938) Bool)

(assert (=> start!95898 (and (array_inv!25813 _values!874) e!619887)))

(declare-fun mapNonEmpty!41530 () Bool)

(declare-fun tp!79394 () Bool)

(assert (=> mapNonEmpty!41530 (= mapRes!41530 (and tp!79394 e!619888))))

(declare-fun mapValue!41530 () ValueCell!12549)

(declare-fun mapKey!41530 () (_ BitVec 32))

(declare-fun mapRest!41530 () (Array (_ BitVec 32) ValueCell!12549))

(assert (=> mapNonEmpty!41530 (= (arr!33639 _values!874) (store mapRest!41530 mapKey!41530 mapValue!41530))))

(declare-fun b!1085024 () Bool)

(declare-fun res!723472 () Bool)

(assert (=> b!1085024 (=> (not res!723472) (not e!619882))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1085024 (= res!723472 (validKeyInArray!0 k0!904))))

(assert (= (and start!95898 res!723478) b!1085013))

(assert (= (and b!1085013 res!723475) b!1085019))

(assert (= (and b!1085019 res!723473) b!1085012))

(assert (= (and b!1085012 res!723480) b!1085021))

(assert (= (and b!1085021 res!723482) b!1085024))

(assert (= (and b!1085024 res!723472) b!1085022))

(assert (= (and b!1085022 res!723481) b!1085017))

(assert (= (and b!1085017 res!723479) b!1085015))

(assert (= (and b!1085015 res!723476) b!1085014))

(assert (= (and b!1085014 (not res!723474)) b!1085016))

(assert (= (and b!1085016 (not res!723477)) b!1085020))

(assert (= (and b!1085023 condMapEmpty!41530) mapIsEmpty!41530))

(assert (= (and b!1085023 (not condMapEmpty!41530)) mapNonEmpty!41530))

(get-info :version)

(assert (= (and mapNonEmpty!41530 ((_ is ValueCellFull!12549) mapValue!41530)) b!1085018))

(assert (= (and b!1085023 ((_ is ValueCellFull!12549) mapDefault!41530)) b!1085011))

(assert (= start!95898 b!1085023))

(declare-fun b_lambda!17215 () Bool)

(assert (=> (not b_lambda!17215) (not b!1085014)))

(declare-fun t!33167 () Bool)

(declare-fun tb!7401 () Bool)

(assert (=> (and start!95898 (= defaultEntry!882 defaultEntry!882) t!33167) tb!7401))

(declare-fun result!15313 () Bool)

(assert (=> tb!7401 (= result!15313 tp_is_empty!26517)))

(assert (=> b!1085014 t!33167))

(declare-fun b_and!35725 () Bool)

(assert (= b_and!35723 (and (=> t!33167 result!15313) b_and!35725)))

(declare-fun m!1003021 () Bool)

(assert (=> b!1085017 m!1003021))

(declare-fun m!1003023 () Bool)

(assert (=> b!1085017 m!1003023))

(declare-fun m!1003025 () Bool)

(assert (=> mapNonEmpty!41530 m!1003025))

(declare-fun m!1003027 () Bool)

(assert (=> b!1085012 m!1003027))

(declare-fun m!1003029 () Bool)

(assert (=> b!1085022 m!1003029))

(declare-fun m!1003031 () Bool)

(assert (=> b!1085019 m!1003031))

(declare-fun m!1003033 () Bool)

(assert (=> start!95898 m!1003033))

(declare-fun m!1003035 () Bool)

(assert (=> start!95898 m!1003035))

(declare-fun m!1003037 () Bool)

(assert (=> start!95898 m!1003037))

(declare-fun m!1003039 () Bool)

(assert (=> b!1085020 m!1003039))

(declare-fun m!1003041 () Bool)

(assert (=> b!1085020 m!1003041))

(declare-fun m!1003043 () Bool)

(assert (=> b!1085020 m!1003043))

(declare-fun m!1003045 () Bool)

(assert (=> b!1085014 m!1003045))

(declare-fun m!1003047 () Bool)

(assert (=> b!1085014 m!1003047))

(declare-fun m!1003049 () Bool)

(assert (=> b!1085014 m!1003049))

(declare-fun m!1003051 () Bool)

(assert (=> b!1085014 m!1003051))

(declare-fun m!1003053 () Bool)

(assert (=> b!1085014 m!1003053))

(declare-fun m!1003055 () Bool)

(assert (=> b!1085014 m!1003055))

(declare-fun m!1003057 () Bool)

(assert (=> b!1085014 m!1003057))

(declare-fun m!1003059 () Bool)

(assert (=> b!1085014 m!1003059))

(declare-fun m!1003061 () Bool)

(assert (=> b!1085014 m!1003061))

(declare-fun m!1003063 () Bool)

(assert (=> b!1085014 m!1003063))

(declare-fun m!1003065 () Bool)

(assert (=> b!1085016 m!1003065))

(declare-fun m!1003067 () Bool)

(assert (=> b!1085016 m!1003067))

(declare-fun m!1003069 () Bool)

(assert (=> b!1085016 m!1003069))

(declare-fun m!1003071 () Bool)

(assert (=> b!1085016 m!1003071))

(declare-fun m!1003073 () Bool)

(assert (=> b!1085016 m!1003073))

(declare-fun m!1003075 () Bool)

(assert (=> b!1085016 m!1003075))

(declare-fun m!1003077 () Bool)

(assert (=> b!1085016 m!1003077))

(assert (=> b!1085016 m!1003075))

(declare-fun m!1003079 () Bool)

(assert (=> b!1085016 m!1003079))

(declare-fun m!1003081 () Bool)

(assert (=> b!1085024 m!1003081))

(declare-fun m!1003083 () Bool)

(assert (=> b!1085015 m!1003083))

(check-sat (not b!1085015) (not b_next!22515) (not b!1085016) (not mapNonEmpty!41530) (not b!1085020) (not start!95898) tp_is_empty!26517 (not b!1085017) (not b!1085019) (not b!1085014) b_and!35725 (not b!1085012) (not b_lambda!17215) (not b!1085024))
(check-sat b_and!35725 (not b_next!22515))
