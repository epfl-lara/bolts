; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!95982 () Bool)

(assert start!95982)

(declare-fun b_free!22599 () Bool)

(declare-fun b_next!22599 () Bool)

(assert (=> start!95982 (= b_free!22599 (not b_next!22599))))

(declare-fun tp!79647 () Bool)

(declare-fun b_and!35891 () Bool)

(assert (=> start!95982 (= tp!79647 b_and!35891)))

(declare-fun b!1086859 () Bool)

(declare-fun res!724867 () Bool)

(declare-fun e!620895 () Bool)

(assert (=> b!1086859 (=> (not res!724867) (not e!620895))))

(declare-datatypes ((array!70098 0))(
  ( (array!70099 (arr!33719 (Array (_ BitVec 32) (_ BitVec 64))) (size!34256 (_ BitVec 32))) )
))
(declare-fun lt!483378 () array!70098)

(declare-datatypes ((List!23654 0))(
  ( (Nil!23651) (Cons!23650 (h!24859 (_ BitVec 64)) (t!33318 List!23654)) )
))
(declare-fun arrayNoDuplicates!0 (array!70098 (_ BitVec 32) List!23654) Bool)

(assert (=> b!1086859 (= res!724867 (arrayNoDuplicates!0 lt!483378 #b00000000000000000000000000000000 Nil!23651))))

(declare-fun b!1086860 () Bool)

(declare-fun e!620890 () Bool)

(assert (=> b!1086860 (= e!620890 e!620895)))

(declare-fun res!724859 () Bool)

(assert (=> b!1086860 (=> (not res!724859) (not e!620895))))

(declare-fun mask!1414 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!70098 (_ BitVec 32)) Bool)

(assert (=> b!1086860 (= res!724859 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!483378 mask!1414))))

(declare-fun _keys!1070 () array!70098)

(declare-fun i!650 () (_ BitVec 32))

(assert (=> b!1086860 (= lt!483378 (array!70099 (store (arr!33719 _keys!1070) i!650 #b1000000000000000000000000000000000000000000000000000000000000000) (size!34256 _keys!1070)))))

(declare-fun b!1086861 () Bool)

(declare-fun res!724858 () Bool)

(assert (=> b!1086861 (=> (not res!724858) (not e!620890))))

(assert (=> b!1086861 (= res!724858 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1070 mask!1414))))

(declare-fun mapIsEmpty!41656 () Bool)

(declare-fun mapRes!41656 () Bool)

(assert (=> mapIsEmpty!41656 mapRes!41656))

(declare-fun b!1086862 () Bool)

(declare-fun res!724862 () Bool)

(assert (=> b!1086862 (=> (not res!724862) (not e!620890))))

(assert (=> b!1086862 (= res!724862 (arrayNoDuplicates!0 _keys!1070 #b00000000000000000000000000000000 Nil!23651))))

(declare-fun b!1086863 () Bool)

(declare-fun e!620889 () Bool)

(declare-fun e!620896 () Bool)

(assert (=> b!1086863 (= e!620889 e!620896)))

(declare-fun res!724864 () Bool)

(assert (=> b!1086863 (=> res!724864 e!620896)))

(declare-fun k0!904 () (_ BitVec 64))

(assert (=> b!1086863 (= res!724864 (= #b1000000000000000000000000000000000000000000000000000000000000000 k0!904))))

(declare-datatypes ((V!40595 0))(
  ( (V!40596 (val!13357 Int)) )
))
(declare-datatypes ((tuple2!17014 0))(
  ( (tuple2!17015 (_1!8517 (_ BitVec 64)) (_2!8517 V!40595)) )
))
(declare-datatypes ((List!23655 0))(
  ( (Nil!23652) (Cons!23651 (h!24860 tuple2!17014) (t!33319 List!23655)) )
))
(declare-datatypes ((ListLongMap!14995 0))(
  ( (ListLongMap!14996 (toList!7513 List!23655)) )
))
(declare-fun lt!483364 () ListLongMap!14995)

(declare-fun lt!483375 () ListLongMap!14995)

(assert (=> b!1086863 (= lt!483364 lt!483375)))

(declare-fun lt!483374 () ListLongMap!14995)

(declare-fun -!794 (ListLongMap!14995 (_ BitVec 64)) ListLongMap!14995)

(assert (=> b!1086863 (= lt!483364 (-!794 lt!483374 k0!904))))

(declare-fun lt!483379 () ListLongMap!14995)

(declare-datatypes ((Unit!35703 0))(
  ( (Unit!35704) )
))
(declare-fun lt!483376 () Unit!35703)

(declare-fun zeroValue!831 () V!40595)

(declare-fun addRemoveCommutativeForDiffKeys!37 (ListLongMap!14995 (_ BitVec 64) V!40595 (_ BitVec 64)) Unit!35703)

(assert (=> b!1086863 (= lt!483376 (addRemoveCommutativeForDiffKeys!37 lt!483379 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!831 k0!904))))

(declare-fun lt!483366 () ListLongMap!14995)

(declare-fun lt!483377 () tuple2!17014)

(declare-fun +!3241 (ListLongMap!14995 tuple2!17014) ListLongMap!14995)

(assert (=> b!1086863 (= lt!483366 (+!3241 lt!483375 lt!483377))))

(declare-fun lt!483365 () ListLongMap!14995)

(declare-fun lt!483369 () tuple2!17014)

(assert (=> b!1086863 (= lt!483375 (+!3241 lt!483365 lt!483369))))

(declare-fun lt!483380 () ListLongMap!14995)

(declare-fun lt!483370 () ListLongMap!14995)

(assert (=> b!1086863 (= lt!483380 lt!483370)))

(assert (=> b!1086863 (= lt!483370 (+!3241 lt!483374 lt!483377))))

(assert (=> b!1086863 (= lt!483374 (+!3241 lt!483379 lt!483369))))

(declare-fun lt!483368 () ListLongMap!14995)

(assert (=> b!1086863 (= lt!483366 (+!3241 (+!3241 lt!483368 lt!483369) lt!483377))))

(declare-fun minValue!831 () V!40595)

(assert (=> b!1086863 (= lt!483377 (tuple2!17015 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!831))))

(assert (=> b!1086863 (= lt!483369 (tuple2!17015 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!831))))

(declare-fun b!1086864 () Bool)

(declare-fun e!620893 () Bool)

(declare-fun tp_is_empty!26601 () Bool)

(assert (=> b!1086864 (= e!620893 tp_is_empty!26601)))

(declare-fun b!1086865 () Bool)

(declare-fun res!724866 () Bool)

(assert (=> b!1086865 (=> (not res!724866) (not e!620890))))

(assert (=> b!1086865 (= res!724866 (= (select (arr!33719 _keys!1070) i!650) k0!904))))

(declare-fun b!1086866 () Bool)

(declare-fun e!620892 () Bool)

(assert (=> b!1086866 (= e!620892 tp_is_empty!26601)))

(declare-fun b!1086867 () Bool)

(declare-fun e!620891 () Bool)

(assert (=> b!1086867 (= e!620891 (and e!620892 mapRes!41656))))

(declare-fun condMapEmpty!41656 () Bool)

(declare-datatypes ((ValueCell!12591 0))(
  ( (ValueCellFull!12591 (v!15979 V!40595)) (EmptyCell!12591) )
))
(declare-datatypes ((array!70100 0))(
  ( (array!70101 (arr!33720 (Array (_ BitVec 32) ValueCell!12591)) (size!34257 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!70100)

(declare-fun mapDefault!41656 () ValueCell!12591)

(assert (=> b!1086867 (= condMapEmpty!41656 (= (arr!33720 _values!874) ((as const (Array (_ BitVec 32) ValueCell!12591)) mapDefault!41656)))))

(declare-fun b!1086868 () Bool)

(declare-fun res!724865 () Bool)

(assert (=> b!1086868 (=> (not res!724865) (not e!620890))))

(assert (=> b!1086868 (= res!724865 (and (bvsge i!650 #b00000000000000000000000000000000) (bvslt i!650 (size!34256 _keys!1070))))))

(declare-fun mapNonEmpty!41656 () Bool)

(declare-fun tp!79646 () Bool)

(assert (=> mapNonEmpty!41656 (= mapRes!41656 (and tp!79646 e!620893))))

(declare-fun mapRest!41656 () (Array (_ BitVec 32) ValueCell!12591))

(declare-fun mapKey!41656 () (_ BitVec 32))

(declare-fun mapValue!41656 () ValueCell!12591)

(assert (=> mapNonEmpty!41656 (= (arr!33720 _values!874) (store mapRest!41656 mapKey!41656 mapValue!41656))))

(declare-fun res!724868 () Bool)

(assert (=> start!95982 (=> (not res!724868) (not e!620890))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!95982 (= res!724868 (validMask!0 mask!1414))))

(assert (=> start!95982 e!620890))

(assert (=> start!95982 tp!79647))

(assert (=> start!95982 true))

(assert (=> start!95982 tp_is_empty!26601))

(declare-fun array_inv!25868 (array!70098) Bool)

(assert (=> start!95982 (array_inv!25868 _keys!1070)))

(declare-fun array_inv!25869 (array!70100) Bool)

(assert (=> start!95982 (and (array_inv!25869 _values!874) e!620891)))

(declare-fun b!1086869 () Bool)

(assert (=> b!1086869 (= e!620896 true)))

(assert (=> b!1086869 (= (-!794 lt!483370 k0!904) (+!3241 lt!483364 lt!483377))))

(declare-fun lt!483371 () Unit!35703)

(assert (=> b!1086869 (= lt!483371 (addRemoveCommutativeForDiffKeys!37 lt!483374 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!831 k0!904))))

(declare-fun b!1086870 () Bool)

(assert (=> b!1086870 (= e!620895 (not e!620889))))

(declare-fun res!724860 () Bool)

(assert (=> b!1086870 (=> res!724860 e!620889)))

(declare-fun extraKeys!811 () (_ BitVec 32))

(assert (=> b!1086870 (= res!724860 (or (= (bvand extraKeys!811 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (= (bvand extraKeys!811 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun defaultEntry!882 () Int)

(declare-fun getCurrentListMap!4267 (array!70098 array!70100 (_ BitVec 32) (_ BitVec 32) V!40595 V!40595 (_ BitVec 32) Int) ListLongMap!14995)

(assert (=> b!1086870 (= lt!483380 (getCurrentListMap!4267 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun lt!483367 () array!70100)

(assert (=> b!1086870 (= lt!483366 (getCurrentListMap!4267 lt!483378 lt!483367 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(assert (=> b!1086870 (and (= lt!483368 lt!483365) (= lt!483365 lt!483368))))

(assert (=> b!1086870 (= lt!483365 (-!794 lt!483379 k0!904))))

(declare-fun lt!483373 () Unit!35703)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!73 (array!70098 array!70100 (_ BitVec 32) (_ BitVec 32) V!40595 V!40595 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!35703)

(assert (=> b!1086870 (= lt!483373 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!73 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 i!650 k0!904 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun getCurrentListMapNoExtraKeys!4019 (array!70098 array!70100 (_ BitVec 32) (_ BitVec 32) V!40595 V!40595 (_ BitVec 32) Int) ListLongMap!14995)

(assert (=> b!1086870 (= lt!483368 (getCurrentListMapNoExtraKeys!4019 lt!483378 lt!483367 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun dynLambda!2155 (Int (_ BitVec 64)) V!40595)

(assert (=> b!1086870 (= lt!483367 (array!70101 (store (arr!33720 _values!874) i!650 (ValueCellFull!12591 (dynLambda!2155 defaultEntry!882 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!34257 _values!874)))))

(assert (=> b!1086870 (= lt!483379 (getCurrentListMapNoExtraKeys!4019 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun arrayContainsKey!0 (array!70098 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1086870 (arrayContainsKey!0 _keys!1070 k0!904 #b00000000000000000000000000000000)))

(declare-fun lt!483372 () Unit!35703)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!70098 (_ BitVec 64) (_ BitVec 32)) Unit!35703)

(assert (=> b!1086870 (= lt!483372 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1070 k0!904 i!650))))

(declare-fun b!1086871 () Bool)

(declare-fun res!724863 () Bool)

(assert (=> b!1086871 (=> (not res!724863) (not e!620890))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1086871 (= res!724863 (validKeyInArray!0 k0!904))))

(declare-fun b!1086872 () Bool)

(declare-fun res!724861 () Bool)

(assert (=> b!1086872 (=> (not res!724861) (not e!620890))))

(assert (=> b!1086872 (= res!724861 (and (= (size!34257 _values!874) (bvadd #b00000000000000000000000000000001 mask!1414)) (= (size!34256 _keys!1070) (size!34257 _values!874)) (bvsge mask!1414 #b00000000000000000000000000000000) (bvsge extraKeys!811 #b00000000000000000000000000000000) (bvsle extraKeys!811 #b00000000000000000000000000000011)))))

(assert (= (and start!95982 res!724868) b!1086872))

(assert (= (and b!1086872 res!724861) b!1086861))

(assert (= (and b!1086861 res!724858) b!1086862))

(assert (= (and b!1086862 res!724862) b!1086868))

(assert (= (and b!1086868 res!724865) b!1086871))

(assert (= (and b!1086871 res!724863) b!1086865))

(assert (= (and b!1086865 res!724866) b!1086860))

(assert (= (and b!1086860 res!724859) b!1086859))

(assert (= (and b!1086859 res!724867) b!1086870))

(assert (= (and b!1086870 (not res!724860)) b!1086863))

(assert (= (and b!1086863 (not res!724864)) b!1086869))

(assert (= (and b!1086867 condMapEmpty!41656) mapIsEmpty!41656))

(assert (= (and b!1086867 (not condMapEmpty!41656)) mapNonEmpty!41656))

(get-info :version)

(assert (= (and mapNonEmpty!41656 ((_ is ValueCellFull!12591) mapValue!41656)) b!1086864))

(assert (= (and b!1086867 ((_ is ValueCellFull!12591) mapDefault!41656)) b!1086866))

(assert (= start!95982 b!1086867))

(declare-fun b_lambda!17299 () Bool)

(assert (=> (not b_lambda!17299) (not b!1086870)))

(declare-fun t!33317 () Bool)

(declare-fun tb!7485 () Bool)

(assert (=> (and start!95982 (= defaultEntry!882 defaultEntry!882) t!33317) tb!7485))

(declare-fun result!15481 () Bool)

(assert (=> tb!7485 (= result!15481 tp_is_empty!26601)))

(assert (=> b!1086870 t!33317))

(declare-fun b_and!35893 () Bool)

(assert (= b_and!35891 (and (=> t!33317 result!15481) b_and!35893)))

(declare-fun m!1005709 () Bool)

(assert (=> b!1086871 m!1005709))

(declare-fun m!1005711 () Bool)

(assert (=> b!1086870 m!1005711))

(declare-fun m!1005713 () Bool)

(assert (=> b!1086870 m!1005713))

(declare-fun m!1005715 () Bool)

(assert (=> b!1086870 m!1005715))

(declare-fun m!1005717 () Bool)

(assert (=> b!1086870 m!1005717))

(declare-fun m!1005719 () Bool)

(assert (=> b!1086870 m!1005719))

(declare-fun m!1005721 () Bool)

(assert (=> b!1086870 m!1005721))

(declare-fun m!1005723 () Bool)

(assert (=> b!1086870 m!1005723))

(declare-fun m!1005725 () Bool)

(assert (=> b!1086870 m!1005725))

(declare-fun m!1005727 () Bool)

(assert (=> b!1086870 m!1005727))

(declare-fun m!1005729 () Bool)

(assert (=> b!1086870 m!1005729))

(declare-fun m!1005731 () Bool)

(assert (=> b!1086865 m!1005731))

(declare-fun m!1005733 () Bool)

(assert (=> b!1086869 m!1005733))

(declare-fun m!1005735 () Bool)

(assert (=> b!1086869 m!1005735))

(declare-fun m!1005737 () Bool)

(assert (=> b!1086869 m!1005737))

(declare-fun m!1005739 () Bool)

(assert (=> b!1086861 m!1005739))

(declare-fun m!1005741 () Bool)

(assert (=> b!1086859 m!1005741))

(declare-fun m!1005743 () Bool)

(assert (=> b!1086860 m!1005743))

(declare-fun m!1005745 () Bool)

(assert (=> b!1086860 m!1005745))

(declare-fun m!1005747 () Bool)

(assert (=> mapNonEmpty!41656 m!1005747))

(declare-fun m!1005749 () Bool)

(assert (=> start!95982 m!1005749))

(declare-fun m!1005751 () Bool)

(assert (=> start!95982 m!1005751))

(declare-fun m!1005753 () Bool)

(assert (=> start!95982 m!1005753))

(declare-fun m!1005755 () Bool)

(assert (=> b!1086862 m!1005755))

(declare-fun m!1005757 () Bool)

(assert (=> b!1086863 m!1005757))

(declare-fun m!1005759 () Bool)

(assert (=> b!1086863 m!1005759))

(declare-fun m!1005761 () Bool)

(assert (=> b!1086863 m!1005761))

(declare-fun m!1005763 () Bool)

(assert (=> b!1086863 m!1005763))

(assert (=> b!1086863 m!1005761))

(declare-fun m!1005765 () Bool)

(assert (=> b!1086863 m!1005765))

(declare-fun m!1005767 () Bool)

(assert (=> b!1086863 m!1005767))

(declare-fun m!1005769 () Bool)

(assert (=> b!1086863 m!1005769))

(declare-fun m!1005771 () Bool)

(assert (=> b!1086863 m!1005771))

(check-sat (not b!1086863) (not b!1086859) (not b!1086861) (not b!1086862) (not start!95982) tp_is_empty!26601 (not b!1086869) b_and!35893 (not mapNonEmpty!41656) (not b_next!22599) (not b!1086870) (not b!1086871) (not b_lambda!17299) (not b!1086860))
(check-sat b_and!35893 (not b_next!22599))
