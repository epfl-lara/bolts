; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!96138 () Bool)

(assert start!96138)

(declare-fun b_free!22755 () Bool)

(declare-fun b_next!22755 () Bool)

(assert (=> start!96138 (= b_free!22755 (not b_next!22755))))

(declare-fun tp!80114 () Bool)

(declare-fun b_and!36203 () Bool)

(assert (=> start!96138 (= tp!80114 b_and!36203)))

(declare-fun b!1090309 () Bool)

(declare-fun e!622765 () Bool)

(declare-fun e!622762 () Bool)

(assert (=> b!1090309 (= e!622765 e!622762)))

(declare-fun res!727458 () Bool)

(assert (=> b!1090309 (=> (not res!727458) (not e!622762))))

(declare-datatypes ((array!70402 0))(
  ( (array!70403 (arr!33871 (Array (_ BitVec 32) (_ BitVec 64))) (size!34408 (_ BitVec 32))) )
))
(declare-fun lt!486444 () array!70402)

(declare-fun mask!1414 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!70402 (_ BitVec 32)) Bool)

(assert (=> b!1090309 (= res!727458 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!486444 mask!1414))))

(declare-fun _keys!1070 () array!70402)

(declare-fun i!650 () (_ BitVec 32))

(assert (=> b!1090309 (= lt!486444 (array!70403 (store (arr!33871 _keys!1070) i!650 #b1000000000000000000000000000000000000000000000000000000000000000) (size!34408 _keys!1070)))))

(declare-fun b!1090310 () Bool)

(declare-fun res!727460 () Bool)

(assert (=> b!1090310 (=> (not res!727460) (not e!622765))))

(declare-datatypes ((List!23787 0))(
  ( (Nil!23784) (Cons!23783 (h!24992 (_ BitVec 64)) (t!33607 List!23787)) )
))
(declare-fun arrayNoDuplicates!0 (array!70402 (_ BitVec 32) List!23787) Bool)

(assert (=> b!1090310 (= res!727460 (arrayNoDuplicates!0 _keys!1070 #b00000000000000000000000000000000 Nil!23784))))

(declare-fun b!1090311 () Bool)

(declare-fun e!622767 () Bool)

(declare-fun tp_is_empty!26757 () Bool)

(assert (=> b!1090311 (= e!622767 tp_is_empty!26757)))

(declare-fun mapIsEmpty!41890 () Bool)

(declare-fun mapRes!41890 () Bool)

(assert (=> mapIsEmpty!41890 mapRes!41890))

(declare-fun b!1090312 () Bool)

(declare-fun e!622763 () Bool)

(assert (=> b!1090312 (= e!622763 true)))

(declare-datatypes ((V!40803 0))(
  ( (V!40804 (val!13435 Int)) )
))
(declare-datatypes ((tuple2!17148 0))(
  ( (tuple2!17149 (_1!8584 (_ BitVec 64)) (_2!8584 V!40803)) )
))
(declare-datatypes ((List!23788 0))(
  ( (Nil!23785) (Cons!23784 (h!24993 tuple2!17148) (t!33608 List!23788)) )
))
(declare-datatypes ((ListLongMap!15129 0))(
  ( (ListLongMap!15130 (toList!7580 List!23788)) )
))
(declare-fun lt!486448 () ListLongMap!15129)

(declare-fun k0!904 () (_ BitVec 64))

(declare-fun lt!486451 () ListLongMap!15129)

(declare-fun -!858 (ListLongMap!15129 (_ BitVec 64)) ListLongMap!15129)

(assert (=> b!1090312 (= (-!858 lt!486448 k0!904) lt!486451)))

(declare-fun minValue!831 () V!40803)

(declare-datatypes ((Unit!35831 0))(
  ( (Unit!35832) )
))
(declare-fun lt!486445 () Unit!35831)

(declare-fun lt!486443 () ListLongMap!15129)

(declare-fun addRemoveCommutativeForDiffKeys!87 (ListLongMap!15129 (_ BitVec 64) V!40803 (_ BitVec 64)) Unit!35831)

(assert (=> b!1090312 (= lt!486445 (addRemoveCommutativeForDiffKeys!87 lt!486443 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!831 k0!904))))

(declare-fun res!727451 () Bool)

(assert (=> start!96138 (=> (not res!727451) (not e!622765))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!96138 (= res!727451 (validMask!0 mask!1414))))

(assert (=> start!96138 e!622765))

(assert (=> start!96138 tp!80114))

(assert (=> start!96138 true))

(assert (=> start!96138 tp_is_empty!26757))

(declare-fun array_inv!25976 (array!70402) Bool)

(assert (=> start!96138 (array_inv!25976 _keys!1070)))

(declare-datatypes ((ValueCell!12669 0))(
  ( (ValueCellFull!12669 (v!16057 V!40803)) (EmptyCell!12669) )
))
(declare-datatypes ((array!70404 0))(
  ( (array!70405 (arr!33872 (Array (_ BitVec 32) ValueCell!12669)) (size!34409 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!70404)

(declare-fun e!622761 () Bool)

(declare-fun array_inv!25977 (array!70404) Bool)

(assert (=> start!96138 (and (array_inv!25977 _values!874) e!622761)))

(declare-fun b!1090313 () Bool)

(declare-fun res!727459 () Bool)

(assert (=> b!1090313 (=> (not res!727459) (not e!622765))))

(declare-fun extraKeys!811 () (_ BitVec 32))

(assert (=> b!1090313 (= res!727459 (and (= (size!34409 _values!874) (bvadd #b00000000000000000000000000000001 mask!1414)) (= (size!34408 _keys!1070) (size!34409 _values!874)) (bvsge mask!1414 #b00000000000000000000000000000000) (bvsge extraKeys!811 #b00000000000000000000000000000000) (bvsle extraKeys!811 #b00000000000000000000000000000011)))))

(declare-fun b!1090314 () Bool)

(declare-fun e!622764 () Bool)

(assert (=> b!1090314 (= e!622764 e!622763)))

(declare-fun res!727453 () Bool)

(assert (=> b!1090314 (=> res!727453 e!622763)))

(assert (=> b!1090314 (= res!727453 (= #b1000000000000000000000000000000000000000000000000000000000000000 k0!904))))

(declare-fun lt!486447 () ListLongMap!15129)

(assert (=> b!1090314 (= lt!486447 lt!486448)))

(declare-fun lt!486441 () tuple2!17148)

(declare-fun +!3290 (ListLongMap!15129 tuple2!17148) ListLongMap!15129)

(assert (=> b!1090314 (= lt!486448 (+!3290 lt!486443 lt!486441))))

(declare-fun lt!486449 () ListLongMap!15129)

(assert (=> b!1090314 (= lt!486449 lt!486451)))

(declare-fun lt!486446 () ListLongMap!15129)

(assert (=> b!1090314 (= lt!486451 (+!3290 lt!486446 lt!486441))))

(declare-fun lt!486442 () ListLongMap!15129)

(assert (=> b!1090314 (= lt!486449 (+!3290 lt!486442 lt!486441))))

(assert (=> b!1090314 (= lt!486441 (tuple2!17149 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!831))))

(declare-fun b!1090315 () Bool)

(declare-fun res!727450 () Bool)

(assert (=> b!1090315 (=> (not res!727450) (not e!622765))))

(assert (=> b!1090315 (= res!727450 (and (bvsge i!650 #b00000000000000000000000000000000) (bvslt i!650 (size!34408 _keys!1070))))))

(declare-fun b!1090316 () Bool)

(declare-fun res!727456 () Bool)

(assert (=> b!1090316 (=> (not res!727456) (not e!622762))))

(assert (=> b!1090316 (= res!727456 (arrayNoDuplicates!0 lt!486444 #b00000000000000000000000000000000 Nil!23784))))

(declare-fun b!1090317 () Bool)

(declare-fun e!622768 () Bool)

(assert (=> b!1090317 (= e!622768 tp_is_empty!26757)))

(declare-fun b!1090318 () Bool)

(assert (=> b!1090318 (= e!622761 (and e!622768 mapRes!41890))))

(declare-fun condMapEmpty!41890 () Bool)

(declare-fun mapDefault!41890 () ValueCell!12669)

(assert (=> b!1090318 (= condMapEmpty!41890 (= (arr!33872 _values!874) ((as const (Array (_ BitVec 32) ValueCell!12669)) mapDefault!41890)))))

(declare-fun b!1090319 () Bool)

(declare-fun res!727455 () Bool)

(assert (=> b!1090319 (=> (not res!727455) (not e!622765))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1090319 (= res!727455 (validKeyInArray!0 k0!904))))

(declare-fun b!1090320 () Bool)

(declare-fun res!727454 () Bool)

(assert (=> b!1090320 (=> (not res!727454) (not e!622765))))

(assert (=> b!1090320 (= res!727454 (= (select (arr!33871 _keys!1070) i!650) k0!904))))

(declare-fun b!1090321 () Bool)

(assert (=> b!1090321 (= e!622762 (not e!622764))))

(declare-fun res!727452 () Bool)

(assert (=> b!1090321 (=> res!727452 e!622764)))

(assert (=> b!1090321 (= res!727452 (or (not (= (bvand extraKeys!811 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeys!811 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun defaultEntry!882 () Int)

(declare-fun zeroValue!831 () V!40803)

(declare-fun getCurrentListMap!4321 (array!70402 array!70404 (_ BitVec 32) (_ BitVec 32) V!40803 V!40803 (_ BitVec 32) Int) ListLongMap!15129)

(assert (=> b!1090321 (= lt!486447 (getCurrentListMap!4321 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun lt!486452 () array!70404)

(assert (=> b!1090321 (= lt!486449 (getCurrentListMap!4321 lt!486444 lt!486452 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(assert (=> b!1090321 (and (= lt!486442 lt!486446) (= lt!486446 lt!486442))))

(assert (=> b!1090321 (= lt!486446 (-!858 lt!486443 k0!904))))

(declare-fun lt!486440 () Unit!35831)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!127 (array!70402 array!70404 (_ BitVec 32) (_ BitVec 32) V!40803 V!40803 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!35831)

(assert (=> b!1090321 (= lt!486440 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!127 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 i!650 k0!904 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun getCurrentListMapNoExtraKeys!4073 (array!70402 array!70404 (_ BitVec 32) (_ BitVec 32) V!40803 V!40803 (_ BitVec 32) Int) ListLongMap!15129)

(assert (=> b!1090321 (= lt!486442 (getCurrentListMapNoExtraKeys!4073 lt!486444 lt!486452 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun dynLambda!2209 (Int (_ BitVec 64)) V!40803)

(assert (=> b!1090321 (= lt!486452 (array!70405 (store (arr!33872 _values!874) i!650 (ValueCellFull!12669 (dynLambda!2209 defaultEntry!882 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!34409 _values!874)))))

(assert (=> b!1090321 (= lt!486443 (getCurrentListMapNoExtraKeys!4073 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun arrayContainsKey!0 (array!70402 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1090321 (arrayContainsKey!0 _keys!1070 k0!904 #b00000000000000000000000000000000)))

(declare-fun lt!486450 () Unit!35831)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!70402 (_ BitVec 64) (_ BitVec 32)) Unit!35831)

(assert (=> b!1090321 (= lt!486450 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1070 k0!904 i!650))))

(declare-fun mapNonEmpty!41890 () Bool)

(declare-fun tp!80115 () Bool)

(assert (=> mapNonEmpty!41890 (= mapRes!41890 (and tp!80115 e!622767))))

(declare-fun mapKey!41890 () (_ BitVec 32))

(declare-fun mapValue!41890 () ValueCell!12669)

(declare-fun mapRest!41890 () (Array (_ BitVec 32) ValueCell!12669))

(assert (=> mapNonEmpty!41890 (= (arr!33872 _values!874) (store mapRest!41890 mapKey!41890 mapValue!41890))))

(declare-fun b!1090322 () Bool)

(declare-fun res!727457 () Bool)

(assert (=> b!1090322 (=> (not res!727457) (not e!622765))))

(assert (=> b!1090322 (= res!727457 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1070 mask!1414))))

(assert (= (and start!96138 res!727451) b!1090313))

(assert (= (and b!1090313 res!727459) b!1090322))

(assert (= (and b!1090322 res!727457) b!1090310))

(assert (= (and b!1090310 res!727460) b!1090315))

(assert (= (and b!1090315 res!727450) b!1090319))

(assert (= (and b!1090319 res!727455) b!1090320))

(assert (= (and b!1090320 res!727454) b!1090309))

(assert (= (and b!1090309 res!727458) b!1090316))

(assert (= (and b!1090316 res!727456) b!1090321))

(assert (= (and b!1090321 (not res!727452)) b!1090314))

(assert (= (and b!1090314 (not res!727453)) b!1090312))

(assert (= (and b!1090318 condMapEmpty!41890) mapIsEmpty!41890))

(assert (= (and b!1090318 (not condMapEmpty!41890)) mapNonEmpty!41890))

(get-info :version)

(assert (= (and mapNonEmpty!41890 ((_ is ValueCellFull!12669) mapValue!41890)) b!1090311))

(assert (= (and b!1090318 ((_ is ValueCellFull!12669) mapDefault!41890)) b!1090317))

(assert (= start!96138 b!1090318))

(declare-fun b_lambda!17455 () Bool)

(assert (=> (not b_lambda!17455) (not b!1090321)))

(declare-fun t!33606 () Bool)

(declare-fun tb!7641 () Bool)

(assert (=> (and start!96138 (= defaultEntry!882 defaultEntry!882) t!33606) tb!7641))

(declare-fun result!15793 () Bool)

(assert (=> tb!7641 (= result!15793 tp_is_empty!26757)))

(assert (=> b!1090321 t!33606))

(declare-fun b_and!36205 () Bool)

(assert (= b_and!36203 (and (=> t!33606 result!15793) b_and!36205)))

(declare-fun m!1009837 () Bool)

(assert (=> b!1090310 m!1009837))

(declare-fun m!1009839 () Bool)

(assert (=> start!96138 m!1009839))

(declare-fun m!1009841 () Bool)

(assert (=> start!96138 m!1009841))

(declare-fun m!1009843 () Bool)

(assert (=> start!96138 m!1009843))

(declare-fun m!1009845 () Bool)

(assert (=> mapNonEmpty!41890 m!1009845))

(declare-fun m!1009847 () Bool)

(assert (=> b!1090316 m!1009847))

(declare-fun m!1009849 () Bool)

(assert (=> b!1090320 m!1009849))

(declare-fun m!1009851 () Bool)

(assert (=> b!1090312 m!1009851))

(declare-fun m!1009853 () Bool)

(assert (=> b!1090312 m!1009853))

(declare-fun m!1009855 () Bool)

(assert (=> b!1090319 m!1009855))

(declare-fun m!1009857 () Bool)

(assert (=> b!1090322 m!1009857))

(declare-fun m!1009859 () Bool)

(assert (=> b!1090314 m!1009859))

(declare-fun m!1009861 () Bool)

(assert (=> b!1090314 m!1009861))

(declare-fun m!1009863 () Bool)

(assert (=> b!1090314 m!1009863))

(declare-fun m!1009865 () Bool)

(assert (=> b!1090309 m!1009865))

(declare-fun m!1009867 () Bool)

(assert (=> b!1090309 m!1009867))

(declare-fun m!1009869 () Bool)

(assert (=> b!1090321 m!1009869))

(declare-fun m!1009871 () Bool)

(assert (=> b!1090321 m!1009871))

(declare-fun m!1009873 () Bool)

(assert (=> b!1090321 m!1009873))

(declare-fun m!1009875 () Bool)

(assert (=> b!1090321 m!1009875))

(declare-fun m!1009877 () Bool)

(assert (=> b!1090321 m!1009877))

(declare-fun m!1009879 () Bool)

(assert (=> b!1090321 m!1009879))

(declare-fun m!1009881 () Bool)

(assert (=> b!1090321 m!1009881))

(declare-fun m!1009883 () Bool)

(assert (=> b!1090321 m!1009883))

(declare-fun m!1009885 () Bool)

(assert (=> b!1090321 m!1009885))

(declare-fun m!1009887 () Bool)

(assert (=> b!1090321 m!1009887))

(check-sat (not b!1090321) (not b!1090309) (not b!1090319) (not b_next!22755) (not b!1090314) (not b!1090312) (not b!1090322) (not mapNonEmpty!41890) tp_is_empty!26757 (not b_lambda!17455) (not b!1090316) b_and!36205 (not start!96138) (not b!1090310))
(check-sat b_and!36205 (not b_next!22755))
