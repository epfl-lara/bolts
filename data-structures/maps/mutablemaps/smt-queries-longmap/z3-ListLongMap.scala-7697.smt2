; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!96672 () Bool)

(assert start!96672)

(declare-fun b_free!23109 () Bool)

(declare-fun b_next!23109 () Bool)

(assert (=> start!96672 (= b_free!23109 (not b_next!23109))))

(declare-fun tp!81267 () Bool)

(declare-fun b_and!36955 () Bool)

(assert (=> start!96672 (= tp!81267 b_and!36955)))

(declare-fun mapIsEmpty!42511 () Bool)

(declare-fun mapRes!42511 () Bool)

(assert (=> mapIsEmpty!42511 mapRes!42511))

(declare-fun res!733542 () Bool)

(declare-fun e!627328 () Bool)

(assert (=> start!96672 (=> (not res!733542) (not e!627328))))

(declare-fun mask!1414 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!96672 (= res!733542 (validMask!0 mask!1414))))

(assert (=> start!96672 e!627328))

(assert (=> start!96672 tp!81267))

(assert (=> start!96672 true))

(declare-fun tp_is_empty!27159 () Bool)

(assert (=> start!96672 tp_is_empty!27159))

(declare-datatypes ((array!71186 0))(
  ( (array!71187 (arr!34257 (Array (_ BitVec 32) (_ BitVec 64))) (size!34794 (_ BitVec 32))) )
))
(declare-fun _keys!1070 () array!71186)

(declare-fun array_inv!26250 (array!71186) Bool)

(assert (=> start!96672 (array_inv!26250 _keys!1070)))

(declare-datatypes ((V!41339 0))(
  ( (V!41340 (val!13636 Int)) )
))
(declare-datatypes ((ValueCell!12870 0))(
  ( (ValueCellFull!12870 (v!16262 V!41339)) (EmptyCell!12870) )
))
(declare-datatypes ((array!71188 0))(
  ( (array!71189 (arr!34258 (Array (_ BitVec 32) ValueCell!12870)) (size!34795 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!71188)

(declare-fun e!627325 () Bool)

(declare-fun array_inv!26251 (array!71188) Bool)

(assert (=> start!96672 (and (array_inv!26251 _values!874) e!627325)))

(declare-fun b!1099040 () Bool)

(declare-fun e!627327 () Bool)

(declare-fun e!627330 () Bool)

(assert (=> b!1099040 (= e!627327 e!627330)))

(declare-fun res!733544 () Bool)

(assert (=> b!1099040 (=> res!733544 e!627330)))

(declare-fun k0!904 () (_ BitVec 64))

(assert (=> b!1099040 (= res!733544 (= #b1000000000000000000000000000000000000000000000000000000000000000 k0!904))))

(declare-datatypes ((tuple2!17392 0))(
  ( (tuple2!17393 (_1!8706 (_ BitVec 64)) (_2!8706 V!41339)) )
))
(declare-datatypes ((List!24067 0))(
  ( (Nil!24064) (Cons!24063 (h!25272 tuple2!17392) (t!34229 List!24067)) )
))
(declare-datatypes ((ListLongMap!15373 0))(
  ( (ListLongMap!15374 (toList!7702 List!24067)) )
))
(declare-fun lt!492005 () ListLongMap!15373)

(declare-fun lt!492001 () ListLongMap!15373)

(assert (=> b!1099040 (= lt!492005 lt!492001)))

(declare-fun lt!492010 () ListLongMap!15373)

(declare-fun -!947 (ListLongMap!15373 (_ BitVec 64)) ListLongMap!15373)

(assert (=> b!1099040 (= lt!492005 (-!947 lt!492010 k0!904))))

(declare-datatypes ((Unit!36081 0))(
  ( (Unit!36082) )
))
(declare-fun lt!492007 () Unit!36081)

(declare-fun zeroValue!831 () V!41339)

(declare-fun lt!492012 () ListLongMap!15373)

(declare-fun addRemoveCommutativeForDiffKeys!128 (ListLongMap!15373 (_ BitVec 64) V!41339 (_ BitVec 64)) Unit!36081)

(assert (=> b!1099040 (= lt!492007 (addRemoveCommutativeForDiffKeys!128 lt!492012 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!831 k0!904))))

(declare-fun lt!492002 () ListLongMap!15373)

(declare-fun lt!492006 () tuple2!17392)

(declare-fun +!3337 (ListLongMap!15373 tuple2!17392) ListLongMap!15373)

(assert (=> b!1099040 (= lt!492002 (+!3337 lt!492001 lt!492006))))

(declare-fun lt!492013 () ListLongMap!15373)

(declare-fun lt!492008 () tuple2!17392)

(assert (=> b!1099040 (= lt!492001 (+!3337 lt!492013 lt!492008))))

(declare-fun lt!492000 () ListLongMap!15373)

(declare-fun lt!492014 () ListLongMap!15373)

(assert (=> b!1099040 (= lt!492000 lt!492014)))

(assert (=> b!1099040 (= lt!492014 (+!3337 lt!492010 lt!492006))))

(assert (=> b!1099040 (= lt!492010 (+!3337 lt!492012 lt!492008))))

(declare-fun lt!492003 () ListLongMap!15373)

(assert (=> b!1099040 (= lt!492002 (+!3337 (+!3337 lt!492003 lt!492008) lt!492006))))

(declare-fun minValue!831 () V!41339)

(assert (=> b!1099040 (= lt!492006 (tuple2!17393 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!831))))

(assert (=> b!1099040 (= lt!492008 (tuple2!17393 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!831))))

(declare-fun b!1099041 () Bool)

(declare-fun res!733543 () Bool)

(assert (=> b!1099041 (=> (not res!733543) (not e!627328))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!71186 (_ BitVec 32)) Bool)

(assert (=> b!1099041 (= res!733543 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1070 mask!1414))))

(declare-fun b!1099042 () Bool)

(declare-fun e!627331 () Bool)

(assert (=> b!1099042 (= e!627331 (not e!627327))))

(declare-fun res!733549 () Bool)

(assert (=> b!1099042 (=> res!733549 e!627327)))

(declare-fun extraKeys!811 () (_ BitVec 32))

(assert (=> b!1099042 (= res!733549 (or (= (bvand extraKeys!811 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (= (bvand extraKeys!811 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun defaultEntry!882 () Int)

(declare-fun getCurrentListMap!4396 (array!71186 array!71188 (_ BitVec 32) (_ BitVec 32) V!41339 V!41339 (_ BitVec 32) Int) ListLongMap!15373)

(assert (=> b!1099042 (= lt!492000 (getCurrentListMap!4396 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun lt!492015 () array!71186)

(declare-fun lt!492011 () array!71188)

(assert (=> b!1099042 (= lt!492002 (getCurrentListMap!4396 lt!492015 lt!492011 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(assert (=> b!1099042 (and (= lt!492003 lt!492013) (= lt!492013 lt!492003))))

(assert (=> b!1099042 (= lt!492013 (-!947 lt!492012 k0!904))))

(declare-fun i!650 () (_ BitVec 32))

(declare-fun lt!492004 () Unit!36081)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!208 (array!71186 array!71188 (_ BitVec 32) (_ BitVec 32) V!41339 V!41339 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!36081)

(assert (=> b!1099042 (= lt!492004 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!208 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 i!650 k0!904 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun getCurrentListMapNoExtraKeys!4183 (array!71186 array!71188 (_ BitVec 32) (_ BitVec 32) V!41339 V!41339 (_ BitVec 32) Int) ListLongMap!15373)

(assert (=> b!1099042 (= lt!492003 (getCurrentListMapNoExtraKeys!4183 lt!492015 lt!492011 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun dynLambda!2314 (Int (_ BitVec 64)) V!41339)

(assert (=> b!1099042 (= lt!492011 (array!71189 (store (arr!34258 _values!874) i!650 (ValueCellFull!12870 (dynLambda!2314 defaultEntry!882 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!34795 _values!874)))))

(assert (=> b!1099042 (= lt!492012 (getCurrentListMapNoExtraKeys!4183 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun arrayContainsKey!0 (array!71186 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1099042 (arrayContainsKey!0 _keys!1070 k0!904 #b00000000000000000000000000000000)))

(declare-fun lt!492016 () Unit!36081)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!71186 (_ BitVec 64) (_ BitVec 32)) Unit!36081)

(assert (=> b!1099042 (= lt!492016 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1070 k0!904 i!650))))

(declare-fun b!1099043 () Bool)

(declare-fun e!627329 () Bool)

(assert (=> b!1099043 (= e!627329 tp_is_empty!27159)))

(declare-fun b!1099044 () Bool)

(declare-fun e!627332 () Bool)

(assert (=> b!1099044 (= e!627332 tp_is_empty!27159)))

(declare-fun b!1099045 () Bool)

(declare-fun res!733550 () Bool)

(assert (=> b!1099045 (=> (not res!733550) (not e!627328))))

(assert (=> b!1099045 (= res!733550 (and (bvsge i!650 #b00000000000000000000000000000000) (bvslt i!650 (size!34794 _keys!1070))))))

(declare-fun b!1099046 () Bool)

(declare-fun res!733551 () Bool)

(assert (=> b!1099046 (=> (not res!733551) (not e!627328))))

(declare-datatypes ((List!24068 0))(
  ( (Nil!24065) (Cons!24064 (h!25273 (_ BitVec 64)) (t!34230 List!24068)) )
))
(declare-fun arrayNoDuplicates!0 (array!71186 (_ BitVec 32) List!24068) Bool)

(assert (=> b!1099046 (= res!733551 (arrayNoDuplicates!0 _keys!1070 #b00000000000000000000000000000000 Nil!24065))))

(declare-fun b!1099047 () Bool)

(assert (=> b!1099047 (= e!627325 (and e!627332 mapRes!42511))))

(declare-fun condMapEmpty!42511 () Bool)

(declare-fun mapDefault!42511 () ValueCell!12870)

(assert (=> b!1099047 (= condMapEmpty!42511 (= (arr!34258 _values!874) ((as const (Array (_ BitVec 32) ValueCell!12870)) mapDefault!42511)))))

(declare-fun b!1099048 () Bool)

(declare-fun res!733552 () Bool)

(assert (=> b!1099048 (=> (not res!733552) (not e!627328))))

(assert (=> b!1099048 (= res!733552 (and (= (size!34795 _values!874) (bvadd #b00000000000000000000000000000001 mask!1414)) (= (size!34794 _keys!1070) (size!34795 _values!874)) (bvsge mask!1414 #b00000000000000000000000000000000) (bvsge extraKeys!811 #b00000000000000000000000000000000) (bvsle extraKeys!811 #b00000000000000000000000000000011)))))

(declare-fun b!1099049 () Bool)

(assert (=> b!1099049 (= e!627330 (= (-!947 lt!492000 k0!904) lt!492002))))

(assert (=> b!1099049 (= (-!947 lt!492014 k0!904) (+!3337 lt!492005 lt!492006))))

(declare-fun lt!492009 () Unit!36081)

(assert (=> b!1099049 (= lt!492009 (addRemoveCommutativeForDiffKeys!128 lt!492010 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!831 k0!904))))

(declare-fun mapNonEmpty!42511 () Bool)

(declare-fun tp!81266 () Bool)

(assert (=> mapNonEmpty!42511 (= mapRes!42511 (and tp!81266 e!627329))))

(declare-fun mapValue!42511 () ValueCell!12870)

(declare-fun mapKey!42511 () (_ BitVec 32))

(declare-fun mapRest!42511 () (Array (_ BitVec 32) ValueCell!12870))

(assert (=> mapNonEmpty!42511 (= (arr!34258 _values!874) (store mapRest!42511 mapKey!42511 mapValue!42511))))

(declare-fun b!1099050 () Bool)

(assert (=> b!1099050 (= e!627328 e!627331)))

(declare-fun res!733546 () Bool)

(assert (=> b!1099050 (=> (not res!733546) (not e!627331))))

(assert (=> b!1099050 (= res!733546 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!492015 mask!1414))))

(assert (=> b!1099050 (= lt!492015 (array!71187 (store (arr!34257 _keys!1070) i!650 #b1000000000000000000000000000000000000000000000000000000000000000) (size!34794 _keys!1070)))))

(declare-fun b!1099051 () Bool)

(declare-fun res!733548 () Bool)

(assert (=> b!1099051 (=> (not res!733548) (not e!627328))))

(assert (=> b!1099051 (= res!733548 (= (select (arr!34257 _keys!1070) i!650) k0!904))))

(declare-fun b!1099052 () Bool)

(declare-fun res!733547 () Bool)

(assert (=> b!1099052 (=> (not res!733547) (not e!627328))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1099052 (= res!733547 (validKeyInArray!0 k0!904))))

(declare-fun b!1099053 () Bool)

(declare-fun res!733545 () Bool)

(assert (=> b!1099053 (=> (not res!733545) (not e!627331))))

(assert (=> b!1099053 (= res!733545 (arrayNoDuplicates!0 lt!492015 #b00000000000000000000000000000000 Nil!24065))))

(assert (= (and start!96672 res!733542) b!1099048))

(assert (= (and b!1099048 res!733552) b!1099041))

(assert (= (and b!1099041 res!733543) b!1099046))

(assert (= (and b!1099046 res!733551) b!1099045))

(assert (= (and b!1099045 res!733550) b!1099052))

(assert (= (and b!1099052 res!733547) b!1099051))

(assert (= (and b!1099051 res!733548) b!1099050))

(assert (= (and b!1099050 res!733546) b!1099053))

(assert (= (and b!1099053 res!733545) b!1099042))

(assert (= (and b!1099042 (not res!733549)) b!1099040))

(assert (= (and b!1099040 (not res!733544)) b!1099049))

(assert (= (and b!1099047 condMapEmpty!42511) mapIsEmpty!42511))

(assert (= (and b!1099047 (not condMapEmpty!42511)) mapNonEmpty!42511))

(get-info :version)

(assert (= (and mapNonEmpty!42511 ((_ is ValueCellFull!12870) mapValue!42511)) b!1099043))

(assert (= (and b!1099047 ((_ is ValueCellFull!12870) mapDefault!42511)) b!1099044))

(assert (= start!96672 b!1099047))

(declare-fun b_lambda!17917 () Bool)

(assert (=> (not b_lambda!17917) (not b!1099042)))

(declare-fun t!34228 () Bool)

(declare-fun tb!7983 () Bool)

(assert (=> (and start!96672 (= defaultEntry!882 defaultEntry!882) t!34228) tb!7983))

(declare-fun result!16489 () Bool)

(assert (=> tb!7983 (= result!16489 tp_is_empty!27159)))

(assert (=> b!1099042 t!34228))

(declare-fun b_and!36957 () Bool)

(assert (= b_and!36955 (and (=> t!34228 result!16489) b_and!36957)))

(declare-fun m!1019097 () Bool)

(assert (=> start!96672 m!1019097))

(declare-fun m!1019099 () Bool)

(assert (=> start!96672 m!1019099))

(declare-fun m!1019101 () Bool)

(assert (=> start!96672 m!1019101))

(declare-fun m!1019103 () Bool)

(assert (=> b!1099049 m!1019103))

(declare-fun m!1019105 () Bool)

(assert (=> b!1099049 m!1019105))

(declare-fun m!1019107 () Bool)

(assert (=> b!1099049 m!1019107))

(declare-fun m!1019109 () Bool)

(assert (=> b!1099049 m!1019109))

(declare-fun m!1019111 () Bool)

(assert (=> b!1099051 m!1019111))

(declare-fun m!1019113 () Bool)

(assert (=> b!1099053 m!1019113))

(declare-fun m!1019115 () Bool)

(assert (=> b!1099046 m!1019115))

(declare-fun m!1019117 () Bool)

(assert (=> b!1099052 m!1019117))

(declare-fun m!1019119 () Bool)

(assert (=> b!1099042 m!1019119))

(declare-fun m!1019121 () Bool)

(assert (=> b!1099042 m!1019121))

(declare-fun m!1019123 () Bool)

(assert (=> b!1099042 m!1019123))

(declare-fun m!1019125 () Bool)

(assert (=> b!1099042 m!1019125))

(declare-fun m!1019127 () Bool)

(assert (=> b!1099042 m!1019127))

(declare-fun m!1019129 () Bool)

(assert (=> b!1099042 m!1019129))

(declare-fun m!1019131 () Bool)

(assert (=> b!1099042 m!1019131))

(declare-fun m!1019133 () Bool)

(assert (=> b!1099042 m!1019133))

(declare-fun m!1019135 () Bool)

(assert (=> b!1099042 m!1019135))

(declare-fun m!1019137 () Bool)

(assert (=> b!1099042 m!1019137))

(declare-fun m!1019139 () Bool)

(assert (=> b!1099050 m!1019139))

(declare-fun m!1019141 () Bool)

(assert (=> b!1099050 m!1019141))

(declare-fun m!1019143 () Bool)

(assert (=> b!1099040 m!1019143))

(declare-fun m!1019145 () Bool)

(assert (=> b!1099040 m!1019145))

(declare-fun m!1019147 () Bool)

(assert (=> b!1099040 m!1019147))

(declare-fun m!1019149 () Bool)

(assert (=> b!1099040 m!1019149))

(declare-fun m!1019151 () Bool)

(assert (=> b!1099040 m!1019151))

(declare-fun m!1019153 () Bool)

(assert (=> b!1099040 m!1019153))

(assert (=> b!1099040 m!1019151))

(declare-fun m!1019155 () Bool)

(assert (=> b!1099040 m!1019155))

(declare-fun m!1019157 () Bool)

(assert (=> b!1099040 m!1019157))

(declare-fun m!1019159 () Bool)

(assert (=> b!1099041 m!1019159))

(declare-fun m!1019161 () Bool)

(assert (=> mapNonEmpty!42511 m!1019161))

(check-sat (not b_next!23109) (not b!1099050) (not mapNonEmpty!42511) (not b!1099049) (not start!96672) (not b!1099052) b_and!36957 (not b!1099053) tp_is_empty!27159 (not b!1099042) (not b!1099046) (not b!1099040) (not b_lambda!17917) (not b!1099041))
(check-sat b_and!36957 (not b_next!23109))
