; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!96102 () Bool)

(assert start!96102)

(declare-fun b_free!22719 () Bool)

(declare-fun b_next!22719 () Bool)

(assert (=> start!96102 (= b_free!22719 (not b_next!22719))))

(declare-fun tp!80007 () Bool)

(declare-fun b_and!36131 () Bool)

(assert (=> start!96102 (= tp!80007 b_and!36131)))

(declare-fun b!1089508 () Bool)

(declare-fun res!726857 () Bool)

(declare-fun e!622336 () Bool)

(assert (=> b!1089508 (=> (not res!726857) (not e!622336))))

(declare-fun mask!1414 () (_ BitVec 32))

(declare-fun extraKeys!811 () (_ BitVec 32))

(declare-datatypes ((array!70330 0))(
  ( (array!70331 (arr!33835 (Array (_ BitVec 32) (_ BitVec 64))) (size!34372 (_ BitVec 32))) )
))
(declare-fun _keys!1070 () array!70330)

(declare-datatypes ((V!40755 0))(
  ( (V!40756 (val!13417 Int)) )
))
(declare-datatypes ((ValueCell!12651 0))(
  ( (ValueCellFull!12651 (v!16039 V!40755)) (EmptyCell!12651) )
))
(declare-datatypes ((array!70332 0))(
  ( (array!70333 (arr!33836 (Array (_ BitVec 32) ValueCell!12651)) (size!34373 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!70332)

(assert (=> b!1089508 (= res!726857 (and (= (size!34373 _values!874) (bvadd #b00000000000000000000000000000001 mask!1414)) (= (size!34372 _keys!1070) (size!34373 _values!874)) (bvsge mask!1414 #b00000000000000000000000000000000) (bvsge extraKeys!811 #b00000000000000000000000000000000) (bvsle extraKeys!811 #b00000000000000000000000000000011)))))

(declare-fun b!1089509 () Bool)

(declare-fun e!622333 () Bool)

(declare-fun e!622331 () Bool)

(assert (=> b!1089509 (= e!622333 e!622331)))

(declare-fun res!726850 () Bool)

(assert (=> b!1089509 (=> res!726850 e!622331)))

(declare-fun k0!904 () (_ BitVec 64))

(assert (=> b!1089509 (= res!726850 (= #b0000000000000000000000000000000000000000000000000000000000000000 k0!904))))

(declare-datatypes ((tuple2!17122 0))(
  ( (tuple2!17123 (_1!8571 (_ BitVec 64)) (_2!8571 V!40755)) )
))
(declare-datatypes ((List!23760 0))(
  ( (Nil!23757) (Cons!23756 (h!24965 tuple2!17122) (t!33544 List!23760)) )
))
(declare-datatypes ((ListLongMap!15103 0))(
  ( (ListLongMap!15104 (toList!7567 List!23760)) )
))
(declare-fun lt!485769 () ListLongMap!15103)

(declare-fun lt!485766 () ListLongMap!15103)

(assert (=> b!1089509 (= lt!485769 lt!485766)))

(declare-fun lt!485777 () ListLongMap!15103)

(declare-fun lt!485776 () tuple2!17122)

(declare-fun +!3280 (ListLongMap!15103 tuple2!17122) ListLongMap!15103)

(assert (=> b!1089509 (= lt!485766 (+!3280 lt!485777 lt!485776))))

(declare-fun lt!485774 () ListLongMap!15103)

(declare-fun lt!485765 () ListLongMap!15103)

(assert (=> b!1089509 (= lt!485774 lt!485765)))

(declare-fun lt!485773 () ListLongMap!15103)

(assert (=> b!1089509 (= lt!485765 (+!3280 lt!485773 lt!485776))))

(declare-fun lt!485775 () ListLongMap!15103)

(assert (=> b!1089509 (= lt!485769 (+!3280 lt!485775 lt!485776))))

(declare-fun zeroValue!831 () V!40755)

(assert (=> b!1089509 (= lt!485776 (tuple2!17123 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!831))))

(declare-fun b!1089510 () Bool)

(declare-fun e!622335 () Bool)

(assert (=> b!1089510 (= e!622335 (not e!622333))))

(declare-fun res!726849 () Bool)

(assert (=> b!1089510 (=> res!726849 e!622333)))

(assert (=> b!1089510 (= res!726849 (or (not (= (bvand extraKeys!811 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeys!811 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun defaultEntry!882 () Int)

(declare-fun minValue!831 () V!40755)

(declare-fun getCurrentListMap!4309 (array!70330 array!70332 (_ BitVec 32) (_ BitVec 32) V!40755 V!40755 (_ BitVec 32) Int) ListLongMap!15103)

(assert (=> b!1089510 (= lt!485774 (getCurrentListMap!4309 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun lt!485767 () array!70330)

(declare-fun lt!485770 () array!70332)

(assert (=> b!1089510 (= lt!485769 (getCurrentListMap!4309 lt!485767 lt!485770 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(assert (=> b!1089510 (and (= lt!485775 lt!485777) (= lt!485777 lt!485775))))

(declare-fun -!845 (ListLongMap!15103 (_ BitVec 64)) ListLongMap!15103)

(assert (=> b!1089510 (= lt!485777 (-!845 lt!485773 k0!904))))

(declare-fun i!650 () (_ BitVec 32))

(declare-datatypes ((Unit!35805 0))(
  ( (Unit!35806) )
))
(declare-fun lt!485772 () Unit!35805)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!115 (array!70330 array!70332 (_ BitVec 32) (_ BitVec 32) V!40755 V!40755 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!35805)

(assert (=> b!1089510 (= lt!485772 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!115 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 i!650 k0!904 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun getCurrentListMapNoExtraKeys!4061 (array!70330 array!70332 (_ BitVec 32) (_ BitVec 32) V!40755 V!40755 (_ BitVec 32) Int) ListLongMap!15103)

(assert (=> b!1089510 (= lt!485775 (getCurrentListMapNoExtraKeys!4061 lt!485767 lt!485770 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun dynLambda!2197 (Int (_ BitVec 64)) V!40755)

(assert (=> b!1089510 (= lt!485770 (array!70333 (store (arr!33836 _values!874) i!650 (ValueCellFull!12651 (dynLambda!2197 defaultEntry!882 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!34373 _values!874)))))

(assert (=> b!1089510 (= lt!485773 (getCurrentListMapNoExtraKeys!4061 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun arrayContainsKey!0 (array!70330 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1089510 (arrayContainsKey!0 _keys!1070 k0!904 #b00000000000000000000000000000000)))

(declare-fun lt!485768 () Unit!35805)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!70330 (_ BitVec 64) (_ BitVec 32)) Unit!35805)

(assert (=> b!1089510 (= lt!485768 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1070 k0!904 i!650))))

(declare-fun b!1089511 () Bool)

(assert (=> b!1089511 (= e!622336 e!622335)))

(declare-fun res!726856 () Bool)

(assert (=> b!1089511 (=> (not res!726856) (not e!622335))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!70330 (_ BitVec 32)) Bool)

(assert (=> b!1089511 (= res!726856 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!485767 mask!1414))))

(assert (=> b!1089511 (= lt!485767 (array!70331 (store (arr!33835 _keys!1070) i!650 #b1000000000000000000000000000000000000000000000000000000000000000) (size!34372 _keys!1070)))))

(declare-fun mapNonEmpty!41836 () Bool)

(declare-fun mapRes!41836 () Bool)

(declare-fun tp!80006 () Bool)

(declare-fun e!622330 () Bool)

(assert (=> mapNonEmpty!41836 (= mapRes!41836 (and tp!80006 e!622330))))

(declare-fun mapRest!41836 () (Array (_ BitVec 32) ValueCell!12651))

(declare-fun mapKey!41836 () (_ BitVec 32))

(declare-fun mapValue!41836 () ValueCell!12651)

(assert (=> mapNonEmpty!41836 (= (arr!33836 _values!874) (store mapRest!41836 mapKey!41836 mapValue!41836))))

(declare-fun mapIsEmpty!41836 () Bool)

(assert (=> mapIsEmpty!41836 mapRes!41836))

(declare-fun b!1089512 () Bool)

(declare-fun res!726851 () Bool)

(assert (=> b!1089512 (=> (not res!726851) (not e!622336))))

(assert (=> b!1089512 (= res!726851 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1070 mask!1414))))

(declare-fun b!1089513 () Bool)

(declare-fun res!726847 () Bool)

(assert (=> b!1089513 (=> (not res!726847) (not e!622336))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1089513 (= res!726847 (validKeyInArray!0 k0!904))))

(declare-fun b!1089514 () Bool)

(declare-fun tp_is_empty!26721 () Bool)

(assert (=> b!1089514 (= e!622330 tp_is_empty!26721)))

(declare-fun b!1089515 () Bool)

(declare-fun res!726852 () Bool)

(assert (=> b!1089515 (=> (not res!726852) (not e!622336))))

(assert (=> b!1089515 (= res!726852 (and (bvsge i!650 #b00000000000000000000000000000000) (bvslt i!650 (size!34372 _keys!1070))))))

(declare-fun b!1089516 () Bool)

(declare-fun res!726853 () Bool)

(assert (=> b!1089516 (=> (not res!726853) (not e!622336))))

(assert (=> b!1089516 (= res!726853 (= (select (arr!33835 _keys!1070) i!650) k0!904))))

(declare-fun b!1089517 () Bool)

(declare-fun res!726848 () Bool)

(assert (=> b!1089517 (=> (not res!726848) (not e!622335))))

(declare-datatypes ((List!23761 0))(
  ( (Nil!23758) (Cons!23757 (h!24966 (_ BitVec 64)) (t!33545 List!23761)) )
))
(declare-fun arrayNoDuplicates!0 (array!70330 (_ BitVec 32) List!23761) Bool)

(assert (=> b!1089517 (= res!726848 (arrayNoDuplicates!0 lt!485767 #b00000000000000000000000000000000 Nil!23758))))

(declare-fun b!1089518 () Bool)

(assert (=> b!1089518 (= e!622331 true)))

(assert (=> b!1089518 (= (-!845 lt!485765 k0!904) lt!485766)))

(declare-fun lt!485771 () Unit!35805)

(declare-fun addRemoveCommutativeForDiffKeys!78 (ListLongMap!15103 (_ BitVec 64) V!40755 (_ BitVec 64)) Unit!35805)

(assert (=> b!1089518 (= lt!485771 (addRemoveCommutativeForDiffKeys!78 lt!485773 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!831 k0!904))))

(declare-fun b!1089519 () Bool)

(declare-fun res!726854 () Bool)

(assert (=> b!1089519 (=> (not res!726854) (not e!622336))))

(assert (=> b!1089519 (= res!726854 (arrayNoDuplicates!0 _keys!1070 #b00000000000000000000000000000000 Nil!23758))))

(declare-fun b!1089520 () Bool)

(declare-fun e!622329 () Bool)

(assert (=> b!1089520 (= e!622329 tp_is_empty!26721)))

(declare-fun b!1089521 () Bool)

(declare-fun e!622332 () Bool)

(assert (=> b!1089521 (= e!622332 (and e!622329 mapRes!41836))))

(declare-fun condMapEmpty!41836 () Bool)

(declare-fun mapDefault!41836 () ValueCell!12651)

(assert (=> b!1089521 (= condMapEmpty!41836 (= (arr!33836 _values!874) ((as const (Array (_ BitVec 32) ValueCell!12651)) mapDefault!41836)))))

(declare-fun res!726855 () Bool)

(assert (=> start!96102 (=> (not res!726855) (not e!622336))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!96102 (= res!726855 (validMask!0 mask!1414))))

(assert (=> start!96102 e!622336))

(assert (=> start!96102 tp!80007))

(assert (=> start!96102 true))

(assert (=> start!96102 tp_is_empty!26721))

(declare-fun array_inv!25956 (array!70330) Bool)

(assert (=> start!96102 (array_inv!25956 _keys!1070)))

(declare-fun array_inv!25957 (array!70332) Bool)

(assert (=> start!96102 (and (array_inv!25957 _values!874) e!622332)))

(assert (= (and start!96102 res!726855) b!1089508))

(assert (= (and b!1089508 res!726857) b!1089512))

(assert (= (and b!1089512 res!726851) b!1089519))

(assert (= (and b!1089519 res!726854) b!1089515))

(assert (= (and b!1089515 res!726852) b!1089513))

(assert (= (and b!1089513 res!726847) b!1089516))

(assert (= (and b!1089516 res!726853) b!1089511))

(assert (= (and b!1089511 res!726856) b!1089517))

(assert (= (and b!1089517 res!726848) b!1089510))

(assert (= (and b!1089510 (not res!726849)) b!1089509))

(assert (= (and b!1089509 (not res!726850)) b!1089518))

(assert (= (and b!1089521 condMapEmpty!41836) mapIsEmpty!41836))

(assert (= (and b!1089521 (not condMapEmpty!41836)) mapNonEmpty!41836))

(get-info :version)

(assert (= (and mapNonEmpty!41836 ((_ is ValueCellFull!12651) mapValue!41836)) b!1089514))

(assert (= (and b!1089521 ((_ is ValueCellFull!12651) mapDefault!41836)) b!1089520))

(assert (= start!96102 b!1089521))

(declare-fun b_lambda!17419 () Bool)

(assert (=> (not b_lambda!17419) (not b!1089510)))

(declare-fun t!33543 () Bool)

(declare-fun tb!7605 () Bool)

(assert (=> (and start!96102 (= defaultEntry!882 defaultEntry!882) t!33543) tb!7605))

(declare-fun result!15721 () Bool)

(assert (=> tb!7605 (= result!15721 tp_is_empty!26721)))

(assert (=> b!1089510 t!33543))

(declare-fun b_and!36133 () Bool)

(assert (= b_and!36131 (and (=> t!33543 result!15721) b_and!36133)))

(declare-fun m!1008913 () Bool)

(assert (=> b!1089509 m!1008913))

(declare-fun m!1008915 () Bool)

(assert (=> b!1089509 m!1008915))

(declare-fun m!1008917 () Bool)

(assert (=> b!1089509 m!1008917))

(declare-fun m!1008919 () Bool)

(assert (=> b!1089518 m!1008919))

(declare-fun m!1008921 () Bool)

(assert (=> b!1089518 m!1008921))

(declare-fun m!1008923 () Bool)

(assert (=> b!1089517 m!1008923))

(declare-fun m!1008925 () Bool)

(assert (=> b!1089511 m!1008925))

(declare-fun m!1008927 () Bool)

(assert (=> b!1089511 m!1008927))

(declare-fun m!1008929 () Bool)

(assert (=> mapNonEmpty!41836 m!1008929))

(declare-fun m!1008931 () Bool)

(assert (=> b!1089510 m!1008931))

(declare-fun m!1008933 () Bool)

(assert (=> b!1089510 m!1008933))

(declare-fun m!1008935 () Bool)

(assert (=> b!1089510 m!1008935))

(declare-fun m!1008937 () Bool)

(assert (=> b!1089510 m!1008937))

(declare-fun m!1008939 () Bool)

(assert (=> b!1089510 m!1008939))

(declare-fun m!1008941 () Bool)

(assert (=> b!1089510 m!1008941))

(declare-fun m!1008943 () Bool)

(assert (=> b!1089510 m!1008943))

(declare-fun m!1008945 () Bool)

(assert (=> b!1089510 m!1008945))

(declare-fun m!1008947 () Bool)

(assert (=> b!1089510 m!1008947))

(declare-fun m!1008949 () Bool)

(assert (=> b!1089510 m!1008949))

(declare-fun m!1008951 () Bool)

(assert (=> b!1089516 m!1008951))

(declare-fun m!1008953 () Bool)

(assert (=> b!1089512 m!1008953))

(declare-fun m!1008955 () Bool)

(assert (=> b!1089519 m!1008955))

(declare-fun m!1008957 () Bool)

(assert (=> start!96102 m!1008957))

(declare-fun m!1008959 () Bool)

(assert (=> start!96102 m!1008959))

(declare-fun m!1008961 () Bool)

(assert (=> start!96102 m!1008961))

(declare-fun m!1008963 () Bool)

(assert (=> b!1089513 m!1008963))

(check-sat (not start!96102) (not b!1089510) (not b!1089513) (not b!1089519) (not b!1089509) (not b!1089511) (not b!1089512) (not mapNonEmpty!41836) tp_is_empty!26721 (not b!1089517) (not b_lambda!17419) b_and!36133 (not b!1089518) (not b_next!22719))
(check-sat b_and!36133 (not b_next!22719))
