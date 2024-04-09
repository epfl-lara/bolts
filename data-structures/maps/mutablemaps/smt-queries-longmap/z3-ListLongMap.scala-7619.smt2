; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!96072 () Bool)

(assert start!96072)

(declare-fun b_free!22689 () Bool)

(declare-fun b_next!22689 () Bool)

(assert (=> start!96072 (= b_free!22689 (not b_next!22689))))

(declare-fun tp!79916 () Bool)

(declare-fun b_and!36071 () Bool)

(assert (=> start!96072 (= tp!79916 b_and!36071)))

(declare-fun b!1088848 () Bool)

(declare-fun res!726360 () Bool)

(declare-fun e!621975 () Bool)

(assert (=> b!1088848 (=> (not res!726360) (not e!621975))))

(declare-datatypes ((array!70274 0))(
  ( (array!70275 (arr!33807 (Array (_ BitVec 32) (_ BitVec 64))) (size!34344 (_ BitVec 32))) )
))
(declare-fun _keys!1070 () array!70274)

(declare-datatypes ((List!23733 0))(
  ( (Nil!23730) (Cons!23729 (h!24938 (_ BitVec 64)) (t!33487 List!23733)) )
))
(declare-fun arrayNoDuplicates!0 (array!70274 (_ BitVec 32) List!23733) Bool)

(assert (=> b!1088848 (= res!726360 (arrayNoDuplicates!0 _keys!1070 #b00000000000000000000000000000000 Nil!23730))))

(declare-fun b!1088849 () Bool)

(declare-fun res!726358 () Bool)

(assert (=> b!1088849 (=> (not res!726358) (not e!621975))))

(declare-fun i!650 () (_ BitVec 32))

(assert (=> b!1088849 (= res!726358 (and (bvsge i!650 #b00000000000000000000000000000000) (bvslt i!650 (size!34344 _keys!1070))))))

(declare-fun b!1088850 () Bool)

(declare-fun e!621972 () Bool)

(declare-fun tp_is_empty!26691 () Bool)

(assert (=> b!1088850 (= e!621972 tp_is_empty!26691)))

(declare-fun b!1088851 () Bool)

(declare-fun res!726356 () Bool)

(assert (=> b!1088851 (=> (not res!726356) (not e!621975))))

(declare-fun k0!904 () (_ BitVec 64))

(assert (=> b!1088851 (= res!726356 (= (select (arr!33807 _keys!1070) i!650) k0!904))))

(declare-fun b!1088852 () Bool)

(declare-fun e!621974 () Bool)

(declare-fun e!621969 () Bool)

(assert (=> b!1088852 (= e!621974 e!621969)))

(declare-fun res!726355 () Bool)

(assert (=> b!1088852 (=> res!726355 e!621969)))

(assert (=> b!1088852 (= res!726355 (= #b0000000000000000000000000000000000000000000000000000000000000000 k0!904))))

(declare-datatypes ((V!40715 0))(
  ( (V!40716 (val!13402 Int)) )
))
(declare-datatypes ((tuple2!17094 0))(
  ( (tuple2!17095 (_1!8557 (_ BitVec 64)) (_2!8557 V!40715)) )
))
(declare-datatypes ((List!23734 0))(
  ( (Nil!23731) (Cons!23730 (h!24939 tuple2!17094) (t!33488 List!23734)) )
))
(declare-datatypes ((ListLongMap!15075 0))(
  ( (ListLongMap!15076 (toList!7553 List!23734)) )
))
(declare-fun lt!485191 () ListLongMap!15075)

(declare-fun lt!485188 () ListLongMap!15075)

(assert (=> b!1088852 (= lt!485191 lt!485188)))

(declare-fun lt!485189 () ListLongMap!15075)

(declare-fun lt!485182 () tuple2!17094)

(declare-fun +!3269 (ListLongMap!15075 tuple2!17094) ListLongMap!15075)

(assert (=> b!1088852 (= lt!485188 (+!3269 lt!485189 lt!485182))))

(declare-fun lt!485186 () ListLongMap!15075)

(declare-fun lt!485192 () ListLongMap!15075)

(assert (=> b!1088852 (= lt!485186 lt!485192)))

(declare-fun lt!485184 () ListLongMap!15075)

(assert (=> b!1088852 (= lt!485192 (+!3269 lt!485184 lt!485182))))

(declare-fun lt!485187 () ListLongMap!15075)

(assert (=> b!1088852 (= lt!485191 (+!3269 lt!485187 lt!485182))))

(declare-fun zeroValue!831 () V!40715)

(assert (=> b!1088852 (= lt!485182 (tuple2!17095 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!831))))

(declare-fun b!1088853 () Bool)

(declare-fun res!726354 () Bool)

(assert (=> b!1088853 (=> (not res!726354) (not e!621975))))

(declare-fun mask!1414 () (_ BitVec 32))

(declare-fun extraKeys!811 () (_ BitVec 32))

(declare-datatypes ((ValueCell!12636 0))(
  ( (ValueCellFull!12636 (v!16024 V!40715)) (EmptyCell!12636) )
))
(declare-datatypes ((array!70276 0))(
  ( (array!70277 (arr!33808 (Array (_ BitVec 32) ValueCell!12636)) (size!34345 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!70276)

(assert (=> b!1088853 (= res!726354 (and (= (size!34345 _values!874) (bvadd #b00000000000000000000000000000001 mask!1414)) (= (size!34344 _keys!1070) (size!34345 _values!874)) (bvsge mask!1414 #b00000000000000000000000000000000) (bvsge extraKeys!811 #b00000000000000000000000000000000) (bvsle extraKeys!811 #b00000000000000000000000000000011)))))

(declare-fun b!1088854 () Bool)

(declare-fun e!621971 () Bool)

(assert (=> b!1088854 (= e!621971 (not e!621974))))

(declare-fun res!726357 () Bool)

(assert (=> b!1088854 (=> res!726357 e!621974)))

(assert (=> b!1088854 (= res!726357 (or (not (= (bvand extraKeys!811 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeys!811 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun defaultEntry!882 () Int)

(declare-fun minValue!831 () V!40715)

(declare-fun getCurrentListMap!4300 (array!70274 array!70276 (_ BitVec 32) (_ BitVec 32) V!40715 V!40715 (_ BitVec 32) Int) ListLongMap!15075)

(assert (=> b!1088854 (= lt!485186 (getCurrentListMap!4300 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun lt!485181 () array!70276)

(declare-fun lt!485180 () array!70274)

(assert (=> b!1088854 (= lt!485191 (getCurrentListMap!4300 lt!485180 lt!485181 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(assert (=> b!1088854 (and (= lt!485187 lt!485189) (= lt!485189 lt!485187))))

(declare-fun -!833 (ListLongMap!15075 (_ BitVec 64)) ListLongMap!15075)

(assert (=> b!1088854 (= lt!485189 (-!833 lt!485184 k0!904))))

(declare-datatypes ((Unit!35781 0))(
  ( (Unit!35782) )
))
(declare-fun lt!485190 () Unit!35781)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!106 (array!70274 array!70276 (_ BitVec 32) (_ BitVec 32) V!40715 V!40715 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!35781)

(assert (=> b!1088854 (= lt!485190 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!106 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 i!650 k0!904 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun getCurrentListMapNoExtraKeys!4052 (array!70274 array!70276 (_ BitVec 32) (_ BitVec 32) V!40715 V!40715 (_ BitVec 32) Int) ListLongMap!15075)

(assert (=> b!1088854 (= lt!485187 (getCurrentListMapNoExtraKeys!4052 lt!485180 lt!485181 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun dynLambda!2188 (Int (_ BitVec 64)) V!40715)

(assert (=> b!1088854 (= lt!485181 (array!70277 (store (arr!33808 _values!874) i!650 (ValueCellFull!12636 (dynLambda!2188 defaultEntry!882 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!34345 _values!874)))))

(assert (=> b!1088854 (= lt!485184 (getCurrentListMapNoExtraKeys!4052 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun arrayContainsKey!0 (array!70274 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1088854 (arrayContainsKey!0 _keys!1070 k0!904 #b00000000000000000000000000000000)))

(declare-fun lt!485183 () Unit!35781)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!70274 (_ BitVec 64) (_ BitVec 32)) Unit!35781)

(assert (=> b!1088854 (= lt!485183 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1070 k0!904 i!650))))

(declare-fun b!1088855 () Bool)

(declare-fun res!726353 () Bool)

(assert (=> b!1088855 (=> (not res!726353) (not e!621971))))

(assert (=> b!1088855 (= res!726353 (arrayNoDuplicates!0 lt!485180 #b00000000000000000000000000000000 Nil!23730))))

(declare-fun mapNonEmpty!41791 () Bool)

(declare-fun mapRes!41791 () Bool)

(declare-fun tp!79917 () Bool)

(declare-fun e!621970 () Bool)

(assert (=> mapNonEmpty!41791 (= mapRes!41791 (and tp!79917 e!621970))))

(declare-fun mapKey!41791 () (_ BitVec 32))

(declare-fun mapRest!41791 () (Array (_ BitVec 32) ValueCell!12636))

(declare-fun mapValue!41791 () ValueCell!12636)

(assert (=> mapNonEmpty!41791 (= (arr!33808 _values!874) (store mapRest!41791 mapKey!41791 mapValue!41791))))

(declare-fun b!1088857 () Bool)

(assert (=> b!1088857 (= e!621975 e!621971)))

(declare-fun res!726359 () Bool)

(assert (=> b!1088857 (=> (not res!726359) (not e!621971))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!70274 (_ BitVec 32)) Bool)

(assert (=> b!1088857 (= res!726359 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!485180 mask!1414))))

(assert (=> b!1088857 (= lt!485180 (array!70275 (store (arr!33807 _keys!1070) i!650 #b1000000000000000000000000000000000000000000000000000000000000000) (size!34344 _keys!1070)))))

(declare-fun b!1088858 () Bool)

(assert (=> b!1088858 (= e!621970 tp_is_empty!26691)))

(declare-fun b!1088859 () Bool)

(declare-fun res!726352 () Bool)

(assert (=> b!1088859 (=> (not res!726352) (not e!621975))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1088859 (= res!726352 (validKeyInArray!0 k0!904))))

(declare-fun b!1088860 () Bool)

(assert (=> b!1088860 (= e!621969 true)))

(assert (=> b!1088860 (= (-!833 lt!485192 k0!904) lt!485188)))

(declare-fun lt!485185 () Unit!35781)

(declare-fun addRemoveCommutativeForDiffKeys!68 (ListLongMap!15075 (_ BitVec 64) V!40715 (_ BitVec 64)) Unit!35781)

(assert (=> b!1088860 (= lt!485185 (addRemoveCommutativeForDiffKeys!68 lt!485184 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!831 k0!904))))

(declare-fun mapIsEmpty!41791 () Bool)

(assert (=> mapIsEmpty!41791 mapRes!41791))

(declare-fun b!1088861 () Bool)

(declare-fun res!726362 () Bool)

(assert (=> b!1088861 (=> (not res!726362) (not e!621975))))

(assert (=> b!1088861 (= res!726362 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1070 mask!1414))))

(declare-fun b!1088856 () Bool)

(declare-fun e!621973 () Bool)

(assert (=> b!1088856 (= e!621973 (and e!621972 mapRes!41791))))

(declare-fun condMapEmpty!41791 () Bool)

(declare-fun mapDefault!41791 () ValueCell!12636)

(assert (=> b!1088856 (= condMapEmpty!41791 (= (arr!33808 _values!874) ((as const (Array (_ BitVec 32) ValueCell!12636)) mapDefault!41791)))))

(declare-fun res!726361 () Bool)

(assert (=> start!96072 (=> (not res!726361) (not e!621975))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!96072 (= res!726361 (validMask!0 mask!1414))))

(assert (=> start!96072 e!621975))

(assert (=> start!96072 tp!79916))

(assert (=> start!96072 true))

(assert (=> start!96072 tp_is_empty!26691))

(declare-fun array_inv!25940 (array!70274) Bool)

(assert (=> start!96072 (array_inv!25940 _keys!1070)))

(declare-fun array_inv!25941 (array!70276) Bool)

(assert (=> start!96072 (and (array_inv!25941 _values!874) e!621973)))

(assert (= (and start!96072 res!726361) b!1088853))

(assert (= (and b!1088853 res!726354) b!1088861))

(assert (= (and b!1088861 res!726362) b!1088848))

(assert (= (and b!1088848 res!726360) b!1088849))

(assert (= (and b!1088849 res!726358) b!1088859))

(assert (= (and b!1088859 res!726352) b!1088851))

(assert (= (and b!1088851 res!726356) b!1088857))

(assert (= (and b!1088857 res!726359) b!1088855))

(assert (= (and b!1088855 res!726353) b!1088854))

(assert (= (and b!1088854 (not res!726357)) b!1088852))

(assert (= (and b!1088852 (not res!726355)) b!1088860))

(assert (= (and b!1088856 condMapEmpty!41791) mapIsEmpty!41791))

(assert (= (and b!1088856 (not condMapEmpty!41791)) mapNonEmpty!41791))

(get-info :version)

(assert (= (and mapNonEmpty!41791 ((_ is ValueCellFull!12636) mapValue!41791)) b!1088858))

(assert (= (and b!1088856 ((_ is ValueCellFull!12636) mapDefault!41791)) b!1088850))

(assert (= start!96072 b!1088856))

(declare-fun b_lambda!17389 () Bool)

(assert (=> (not b_lambda!17389) (not b!1088854)))

(declare-fun t!33486 () Bool)

(declare-fun tb!7575 () Bool)

(assert (=> (and start!96072 (= defaultEntry!882 defaultEntry!882) t!33486) tb!7575))

(declare-fun result!15661 () Bool)

(assert (=> tb!7575 (= result!15661 tp_is_empty!26691)))

(assert (=> b!1088854 t!33486))

(declare-fun b_and!36073 () Bool)

(assert (= b_and!36071 (and (=> t!33486 result!15661) b_and!36073)))

(declare-fun m!1008133 () Bool)

(assert (=> b!1088855 m!1008133))

(declare-fun m!1008135 () Bool)

(assert (=> b!1088857 m!1008135))

(declare-fun m!1008137 () Bool)

(assert (=> b!1088857 m!1008137))

(declare-fun m!1008139 () Bool)

(assert (=> start!96072 m!1008139))

(declare-fun m!1008141 () Bool)

(assert (=> start!96072 m!1008141))

(declare-fun m!1008143 () Bool)

(assert (=> start!96072 m!1008143))

(declare-fun m!1008145 () Bool)

(assert (=> b!1088848 m!1008145))

(declare-fun m!1008147 () Bool)

(assert (=> b!1088860 m!1008147))

(declare-fun m!1008149 () Bool)

(assert (=> b!1088860 m!1008149))

(declare-fun m!1008151 () Bool)

(assert (=> b!1088854 m!1008151))

(declare-fun m!1008153 () Bool)

(assert (=> b!1088854 m!1008153))

(declare-fun m!1008155 () Bool)

(assert (=> b!1088854 m!1008155))

(declare-fun m!1008157 () Bool)

(assert (=> b!1088854 m!1008157))

(declare-fun m!1008159 () Bool)

(assert (=> b!1088854 m!1008159))

(declare-fun m!1008161 () Bool)

(assert (=> b!1088854 m!1008161))

(declare-fun m!1008163 () Bool)

(assert (=> b!1088854 m!1008163))

(declare-fun m!1008165 () Bool)

(assert (=> b!1088854 m!1008165))

(declare-fun m!1008167 () Bool)

(assert (=> b!1088854 m!1008167))

(declare-fun m!1008169 () Bool)

(assert (=> b!1088854 m!1008169))

(declare-fun m!1008171 () Bool)

(assert (=> b!1088852 m!1008171))

(declare-fun m!1008173 () Bool)

(assert (=> b!1088852 m!1008173))

(declare-fun m!1008175 () Bool)

(assert (=> b!1088852 m!1008175))

(declare-fun m!1008177 () Bool)

(assert (=> b!1088861 m!1008177))

(declare-fun m!1008179 () Bool)

(assert (=> mapNonEmpty!41791 m!1008179))

(declare-fun m!1008181 () Bool)

(assert (=> b!1088859 m!1008181))

(declare-fun m!1008183 () Bool)

(assert (=> b!1088851 m!1008183))

(check-sat (not b!1088857) (not b!1088848) (not b!1088855) (not start!96072) b_and!36073 (not b!1088861) (not b_next!22689) (not b_lambda!17389) (not b!1088852) tp_is_empty!26691 (not b!1088854) (not b!1088860) (not b!1088859) (not mapNonEmpty!41791))
(check-sat b_and!36073 (not b_next!22689))
