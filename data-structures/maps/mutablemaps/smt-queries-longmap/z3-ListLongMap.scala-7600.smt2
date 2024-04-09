; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!95958 () Bool)

(assert start!95958)

(declare-fun b_free!22575 () Bool)

(declare-fun b_next!22575 () Bool)

(assert (=> start!95958 (= b_free!22575 (not b_next!22575))))

(declare-fun tp!79574 () Bool)

(declare-fun b_and!35843 () Bool)

(assert (=> start!95958 (= tp!79574 b_and!35843)))

(declare-fun b!1086331 () Bool)

(declare-fun res!724463 () Bool)

(declare-fun e!620607 () Bool)

(assert (=> b!1086331 (=> (not res!724463) (not e!620607))))

(declare-fun mask!1414 () (_ BitVec 32))

(declare-fun extraKeys!811 () (_ BitVec 32))

(declare-datatypes ((array!70050 0))(
  ( (array!70051 (arr!33695 (Array (_ BitVec 32) (_ BitVec 64))) (size!34232 (_ BitVec 32))) )
))
(declare-fun _keys!1070 () array!70050)

(declare-datatypes ((V!40563 0))(
  ( (V!40564 (val!13345 Int)) )
))
(declare-datatypes ((ValueCell!12579 0))(
  ( (ValueCellFull!12579 (v!15967 V!40563)) (EmptyCell!12579) )
))
(declare-datatypes ((array!70052 0))(
  ( (array!70053 (arr!33696 (Array (_ BitVec 32) ValueCell!12579)) (size!34233 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!70052)

(assert (=> b!1086331 (= res!724463 (and (= (size!34233 _values!874) (bvadd #b00000000000000000000000000000001 mask!1414)) (= (size!34232 _keys!1070) (size!34233 _values!874)) (bvsge mask!1414 #b00000000000000000000000000000000) (bvsge extraKeys!811 #b00000000000000000000000000000000) (bvsle extraKeys!811 #b00000000000000000000000000000011)))))

(declare-fun b!1086332 () Bool)

(declare-fun res!724470 () Bool)

(assert (=> b!1086332 (=> (not res!724470) (not e!620607))))

(declare-datatypes ((List!23632 0))(
  ( (Nil!23629) (Cons!23628 (h!24837 (_ BitVec 64)) (t!33272 List!23632)) )
))
(declare-fun arrayNoDuplicates!0 (array!70050 (_ BitVec 32) List!23632) Bool)

(assert (=> b!1086332 (= res!724470 (arrayNoDuplicates!0 _keys!1070 #b00000000000000000000000000000000 Nil!23629))))

(declare-fun b!1086333 () Bool)

(declare-fun res!724465 () Bool)

(declare-fun e!620601 () Bool)

(assert (=> b!1086333 (=> (not res!724465) (not e!620601))))

(declare-fun lt!482764 () array!70050)

(assert (=> b!1086333 (= res!724465 (arrayNoDuplicates!0 lt!482764 #b00000000000000000000000000000000 Nil!23629))))

(declare-fun b!1086334 () Bool)

(declare-fun e!620603 () Bool)

(declare-fun e!620608 () Bool)

(assert (=> b!1086334 (= e!620603 e!620608)))

(declare-fun res!724462 () Bool)

(assert (=> b!1086334 (=> res!724462 e!620608)))

(declare-fun k0!904 () (_ BitVec 64))

(assert (=> b!1086334 (= res!724462 (= #b1000000000000000000000000000000000000000000000000000000000000000 k0!904))))

(declare-datatypes ((tuple2!16992 0))(
  ( (tuple2!16993 (_1!8506 (_ BitVec 64)) (_2!8506 V!40563)) )
))
(declare-datatypes ((List!23633 0))(
  ( (Nil!23630) (Cons!23629 (h!24838 tuple2!16992) (t!33273 List!23633)) )
))
(declare-datatypes ((ListLongMap!14973 0))(
  ( (ListLongMap!14974 (toList!7502 List!23633)) )
))
(declare-fun lt!482758 () ListLongMap!14973)

(declare-fun lt!482752 () ListLongMap!14973)

(assert (=> b!1086334 (= lt!482758 lt!482752)))

(declare-fun lt!482757 () ListLongMap!14973)

(declare-fun -!783 (ListLongMap!14973 (_ BitVec 64)) ListLongMap!14973)

(assert (=> b!1086334 (= lt!482758 (-!783 lt!482757 k0!904))))

(declare-fun lt!482762 () ListLongMap!14973)

(declare-datatypes ((Unit!35681 0))(
  ( (Unit!35682) )
))
(declare-fun lt!482763 () Unit!35681)

(declare-fun zeroValue!831 () V!40563)

(declare-fun addRemoveCommutativeForDiffKeys!27 (ListLongMap!14973 (_ BitVec 64) V!40563 (_ BitVec 64)) Unit!35681)

(assert (=> b!1086334 (= lt!482763 (addRemoveCommutativeForDiffKeys!27 lt!482762 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!831 k0!904))))

(declare-fun lt!482754 () ListLongMap!14973)

(declare-fun lt!482761 () tuple2!16992)

(declare-fun +!3231 (ListLongMap!14973 tuple2!16992) ListLongMap!14973)

(assert (=> b!1086334 (= lt!482754 (+!3231 lt!482752 lt!482761))))

(declare-fun lt!482765 () ListLongMap!14973)

(declare-fun lt!482760 () tuple2!16992)

(assert (=> b!1086334 (= lt!482752 (+!3231 lt!482765 lt!482760))))

(declare-fun lt!482759 () ListLongMap!14973)

(declare-fun lt!482756 () ListLongMap!14973)

(assert (=> b!1086334 (= lt!482759 lt!482756)))

(assert (=> b!1086334 (= lt!482756 (+!3231 lt!482757 lt!482761))))

(assert (=> b!1086334 (= lt!482757 (+!3231 lt!482762 lt!482760))))

(declare-fun lt!482766 () ListLongMap!14973)

(assert (=> b!1086334 (= lt!482754 (+!3231 (+!3231 lt!482766 lt!482760) lt!482761))))

(declare-fun minValue!831 () V!40563)

(assert (=> b!1086334 (= lt!482761 (tuple2!16993 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!831))))

(assert (=> b!1086334 (= lt!482760 (tuple2!16993 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!831))))

(declare-fun b!1086335 () Bool)

(assert (=> b!1086335 (= e!620607 e!620601)))

(declare-fun res!724468 () Bool)

(assert (=> b!1086335 (=> (not res!724468) (not e!620601))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!70050 (_ BitVec 32)) Bool)

(assert (=> b!1086335 (= res!724468 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!482764 mask!1414))))

(declare-fun i!650 () (_ BitVec 32))

(assert (=> b!1086335 (= lt!482764 (array!70051 (store (arr!33695 _keys!1070) i!650 #b1000000000000000000000000000000000000000000000000000000000000000) (size!34232 _keys!1070)))))

(declare-fun b!1086336 () Bool)

(declare-fun res!724469 () Bool)

(assert (=> b!1086336 (=> (not res!724469) (not e!620607))))

(assert (=> b!1086336 (= res!724469 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1070 mask!1414))))

(declare-fun b!1086337 () Bool)

(declare-fun res!724464 () Bool)

(assert (=> b!1086337 (=> (not res!724464) (not e!620607))))

(assert (=> b!1086337 (= res!724464 (= (select (arr!33695 _keys!1070) i!650) k0!904))))

(declare-fun b!1086338 () Bool)

(declare-fun e!620606 () Bool)

(declare-fun tp_is_empty!26577 () Bool)

(assert (=> b!1086338 (= e!620606 tp_is_empty!26577)))

(declare-fun b!1086339 () Bool)

(declare-fun e!620604 () Bool)

(assert (=> b!1086339 (= e!620604 tp_is_empty!26577)))

(declare-fun res!724467 () Bool)

(assert (=> start!95958 (=> (not res!724467) (not e!620607))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!95958 (= res!724467 (validMask!0 mask!1414))))

(assert (=> start!95958 e!620607))

(assert (=> start!95958 tp!79574))

(assert (=> start!95958 true))

(assert (=> start!95958 tp_is_empty!26577))

(declare-fun array_inv!25852 (array!70050) Bool)

(assert (=> start!95958 (array_inv!25852 _keys!1070)))

(declare-fun e!620605 () Bool)

(declare-fun array_inv!25853 (array!70052) Bool)

(assert (=> start!95958 (and (array_inv!25853 _values!874) e!620605)))

(declare-fun b!1086340 () Bool)

(assert (=> b!1086340 (= e!620601 (not e!620603))))

(declare-fun res!724472 () Bool)

(assert (=> b!1086340 (=> res!724472 e!620603)))

(assert (=> b!1086340 (= res!724472 (or (= (bvand extraKeys!811 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (= (bvand extraKeys!811 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun defaultEntry!882 () Int)

(declare-fun getCurrentListMap!4257 (array!70050 array!70052 (_ BitVec 32) (_ BitVec 32) V!40563 V!40563 (_ BitVec 32) Int) ListLongMap!14973)

(assert (=> b!1086340 (= lt!482759 (getCurrentListMap!4257 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun lt!482767 () array!70052)

(assert (=> b!1086340 (= lt!482754 (getCurrentListMap!4257 lt!482764 lt!482767 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(assert (=> b!1086340 (and (= lt!482766 lt!482765) (= lt!482765 lt!482766))))

(assert (=> b!1086340 (= lt!482765 (-!783 lt!482762 k0!904))))

(declare-fun lt!482755 () Unit!35681)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!63 (array!70050 array!70052 (_ BitVec 32) (_ BitVec 32) V!40563 V!40563 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!35681)

(assert (=> b!1086340 (= lt!482755 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!63 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 i!650 k0!904 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun getCurrentListMapNoExtraKeys!4009 (array!70050 array!70052 (_ BitVec 32) (_ BitVec 32) V!40563 V!40563 (_ BitVec 32) Int) ListLongMap!14973)

(assert (=> b!1086340 (= lt!482766 (getCurrentListMapNoExtraKeys!4009 lt!482764 lt!482767 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun dynLambda!2145 (Int (_ BitVec 64)) V!40563)

(assert (=> b!1086340 (= lt!482767 (array!70053 (store (arr!33696 _values!874) i!650 (ValueCellFull!12579 (dynLambda!2145 defaultEntry!882 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!34233 _values!874)))))

(assert (=> b!1086340 (= lt!482762 (getCurrentListMapNoExtraKeys!4009 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun arrayContainsKey!0 (array!70050 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1086340 (arrayContainsKey!0 _keys!1070 k0!904 #b00000000000000000000000000000000)))

(declare-fun lt!482753 () Unit!35681)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!70050 (_ BitVec 64) (_ BitVec 32)) Unit!35681)

(assert (=> b!1086340 (= lt!482753 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1070 k0!904 i!650))))

(declare-fun mapIsEmpty!41620 () Bool)

(declare-fun mapRes!41620 () Bool)

(assert (=> mapIsEmpty!41620 mapRes!41620))

(declare-fun mapNonEmpty!41620 () Bool)

(declare-fun tp!79575 () Bool)

(assert (=> mapNonEmpty!41620 (= mapRes!41620 (and tp!79575 e!620606))))

(declare-fun mapKey!41620 () (_ BitVec 32))

(declare-fun mapValue!41620 () ValueCell!12579)

(declare-fun mapRest!41620 () (Array (_ BitVec 32) ValueCell!12579))

(assert (=> mapNonEmpty!41620 (= (arr!33696 _values!874) (store mapRest!41620 mapKey!41620 mapValue!41620))))

(declare-fun b!1086341 () Bool)

(declare-fun res!724466 () Bool)

(assert (=> b!1086341 (=> (not res!724466) (not e!620607))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1086341 (= res!724466 (validKeyInArray!0 k0!904))))

(declare-fun b!1086342 () Bool)

(assert (=> b!1086342 (= e!620608 true)))

(assert (=> b!1086342 (= (-!783 lt!482756 k0!904) (+!3231 lt!482758 lt!482761))))

(declare-fun lt!482768 () Unit!35681)

(assert (=> b!1086342 (= lt!482768 (addRemoveCommutativeForDiffKeys!27 lt!482757 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!831 k0!904))))

(declare-fun b!1086343 () Bool)

(declare-fun res!724471 () Bool)

(assert (=> b!1086343 (=> (not res!724471) (not e!620607))))

(assert (=> b!1086343 (= res!724471 (and (bvsge i!650 #b00000000000000000000000000000000) (bvslt i!650 (size!34232 _keys!1070))))))

(declare-fun b!1086344 () Bool)

(assert (=> b!1086344 (= e!620605 (and e!620604 mapRes!41620))))

(declare-fun condMapEmpty!41620 () Bool)

(declare-fun mapDefault!41620 () ValueCell!12579)

(assert (=> b!1086344 (= condMapEmpty!41620 (= (arr!33696 _values!874) ((as const (Array (_ BitVec 32) ValueCell!12579)) mapDefault!41620)))))

(assert (= (and start!95958 res!724467) b!1086331))

(assert (= (and b!1086331 res!724463) b!1086336))

(assert (= (and b!1086336 res!724469) b!1086332))

(assert (= (and b!1086332 res!724470) b!1086343))

(assert (= (and b!1086343 res!724471) b!1086341))

(assert (= (and b!1086341 res!724466) b!1086337))

(assert (= (and b!1086337 res!724464) b!1086335))

(assert (= (and b!1086335 res!724468) b!1086333))

(assert (= (and b!1086333 res!724465) b!1086340))

(assert (= (and b!1086340 (not res!724472)) b!1086334))

(assert (= (and b!1086334 (not res!724462)) b!1086342))

(assert (= (and b!1086344 condMapEmpty!41620) mapIsEmpty!41620))

(assert (= (and b!1086344 (not condMapEmpty!41620)) mapNonEmpty!41620))

(get-info :version)

(assert (= (and mapNonEmpty!41620 ((_ is ValueCellFull!12579) mapValue!41620)) b!1086338))

(assert (= (and b!1086344 ((_ is ValueCellFull!12579) mapDefault!41620)) b!1086339))

(assert (= start!95958 b!1086344))

(declare-fun b_lambda!17275 () Bool)

(assert (=> (not b_lambda!17275) (not b!1086340)))

(declare-fun t!33271 () Bool)

(declare-fun tb!7461 () Bool)

(assert (=> (and start!95958 (= defaultEntry!882 defaultEntry!882) t!33271) tb!7461))

(declare-fun result!15433 () Bool)

(assert (=> tb!7461 (= result!15433 tp_is_empty!26577)))

(assert (=> b!1086340 t!33271))

(declare-fun b_and!35845 () Bool)

(assert (= b_and!35843 (and (=> t!33271 result!15433) b_and!35845)))

(declare-fun m!1004941 () Bool)

(assert (=> b!1086335 m!1004941))

(declare-fun m!1004943 () Bool)

(assert (=> b!1086335 m!1004943))

(declare-fun m!1004945 () Bool)

(assert (=> b!1086333 m!1004945))

(declare-fun m!1004947 () Bool)

(assert (=> b!1086336 m!1004947))

(declare-fun m!1004949 () Bool)

(assert (=> b!1086337 m!1004949))

(declare-fun m!1004951 () Bool)

(assert (=> start!95958 m!1004951))

(declare-fun m!1004953 () Bool)

(assert (=> start!95958 m!1004953))

(declare-fun m!1004955 () Bool)

(assert (=> start!95958 m!1004955))

(declare-fun m!1004957 () Bool)

(assert (=> b!1086334 m!1004957))

(declare-fun m!1004959 () Bool)

(assert (=> b!1086334 m!1004959))

(declare-fun m!1004961 () Bool)

(assert (=> b!1086334 m!1004961))

(declare-fun m!1004963 () Bool)

(assert (=> b!1086334 m!1004963))

(declare-fun m!1004965 () Bool)

(assert (=> b!1086334 m!1004965))

(assert (=> b!1086334 m!1004963))

(declare-fun m!1004967 () Bool)

(assert (=> b!1086334 m!1004967))

(declare-fun m!1004969 () Bool)

(assert (=> b!1086334 m!1004969))

(declare-fun m!1004971 () Bool)

(assert (=> b!1086334 m!1004971))

(declare-fun m!1004973 () Bool)

(assert (=> mapNonEmpty!41620 m!1004973))

(declare-fun m!1004975 () Bool)

(assert (=> b!1086340 m!1004975))

(declare-fun m!1004977 () Bool)

(assert (=> b!1086340 m!1004977))

(declare-fun m!1004979 () Bool)

(assert (=> b!1086340 m!1004979))

(declare-fun m!1004981 () Bool)

(assert (=> b!1086340 m!1004981))

(declare-fun m!1004983 () Bool)

(assert (=> b!1086340 m!1004983))

(declare-fun m!1004985 () Bool)

(assert (=> b!1086340 m!1004985))

(declare-fun m!1004987 () Bool)

(assert (=> b!1086340 m!1004987))

(declare-fun m!1004989 () Bool)

(assert (=> b!1086340 m!1004989))

(declare-fun m!1004991 () Bool)

(assert (=> b!1086340 m!1004991))

(declare-fun m!1004993 () Bool)

(assert (=> b!1086340 m!1004993))

(declare-fun m!1004995 () Bool)

(assert (=> b!1086332 m!1004995))

(declare-fun m!1004997 () Bool)

(assert (=> b!1086342 m!1004997))

(declare-fun m!1004999 () Bool)

(assert (=> b!1086342 m!1004999))

(declare-fun m!1005001 () Bool)

(assert (=> b!1086342 m!1005001))

(declare-fun m!1005003 () Bool)

(assert (=> b!1086341 m!1005003))

(check-sat (not b!1086340) (not b_next!22575) (not b_lambda!17275) b_and!35845 (not start!95958) (not b!1086332) (not b!1086335) (not b!1086341) tp_is_empty!26577 (not b!1086333) (not b!1086336) (not b!1086334) (not mapNonEmpty!41620) (not b!1086342))
(check-sat b_and!35845 (not b_next!22575))
