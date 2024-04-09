; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!95904 () Bool)

(assert start!95904)

(declare-fun b_free!22521 () Bool)

(declare-fun b_next!22521 () Bool)

(assert (=> start!95904 (= b_free!22521 (not b_next!22521))))

(declare-fun tp!79413 () Bool)

(declare-fun b_and!35735 () Bool)

(assert (=> start!95904 (= tp!79413 b_and!35735)))

(declare-fun mapIsEmpty!41539 () Bool)

(declare-fun mapRes!41539 () Bool)

(assert (=> mapIsEmpty!41539 mapRes!41539))

(declare-fun b!1085143 () Bool)

(declare-fun res!723573 () Bool)

(declare-fun e!619957 () Bool)

(assert (=> b!1085143 (=> (not res!723573) (not e!619957))))

(declare-datatypes ((array!69948 0))(
  ( (array!69949 (arr!33644 (Array (_ BitVec 32) (_ BitVec 64))) (size!34181 (_ BitVec 32))) )
))
(declare-fun _keys!1070 () array!69948)

(declare-fun mask!1414 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!69948 (_ BitVec 32)) Bool)

(assert (=> b!1085143 (= res!723573 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1070 mask!1414))))

(declare-fun b!1085144 () Bool)

(declare-fun e!619954 () Bool)

(declare-fun tp_is_empty!26523 () Bool)

(assert (=> b!1085144 (= e!619954 tp_is_empty!26523)))

(declare-fun b!1085145 () Bool)

(declare-fun res!723574 () Bool)

(declare-fun e!619953 () Bool)

(assert (=> b!1085145 (=> (not res!723574) (not e!619953))))

(declare-fun lt!481387 () array!69948)

(declare-datatypes ((List!23594 0))(
  ( (Nil!23591) (Cons!23590 (h!24799 (_ BitVec 64)) (t!33180 List!23594)) )
))
(declare-fun arrayNoDuplicates!0 (array!69948 (_ BitVec 32) List!23594) Bool)

(assert (=> b!1085145 (= res!723574 (arrayNoDuplicates!0 lt!481387 #b00000000000000000000000000000000 Nil!23591))))

(declare-fun b!1085146 () Bool)

(declare-fun res!723579 () Bool)

(assert (=> b!1085146 (=> (not res!723579) (not e!619957))))

(assert (=> b!1085146 (= res!723579 (arrayNoDuplicates!0 _keys!1070 #b00000000000000000000000000000000 Nil!23591))))

(declare-fun b!1085147 () Bool)

(declare-fun e!619958 () Bool)

(declare-fun e!619955 () Bool)

(assert (=> b!1085147 (= e!619958 (and e!619955 mapRes!41539))))

(declare-fun condMapEmpty!41539 () Bool)

(declare-datatypes ((V!40491 0))(
  ( (V!40492 (val!13318 Int)) )
))
(declare-datatypes ((ValueCell!12552 0))(
  ( (ValueCellFull!12552 (v!15940 V!40491)) (EmptyCell!12552) )
))
(declare-datatypes ((array!69950 0))(
  ( (array!69951 (arr!33645 (Array (_ BitVec 32) ValueCell!12552)) (size!34182 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!69950)

(declare-fun mapDefault!41539 () ValueCell!12552)

(assert (=> b!1085147 (= condMapEmpty!41539 (= (arr!33645 _values!874) ((as const (Array (_ BitVec 32) ValueCell!12552)) mapDefault!41539)))))

(declare-fun b!1085148 () Bool)

(declare-fun e!619959 () Bool)

(declare-fun e!619956 () Bool)

(assert (=> b!1085148 (= e!619959 e!619956)))

(declare-fun res!723580 () Bool)

(assert (=> b!1085148 (=> res!723580 e!619956)))

(declare-fun k0!904 () (_ BitVec 64))

(assert (=> b!1085148 (= res!723580 (= #b1000000000000000000000000000000000000000000000000000000000000000 k0!904))))

(declare-datatypes ((tuple2!16952 0))(
  ( (tuple2!16953 (_1!8486 (_ BitVec 64)) (_2!8486 V!40491)) )
))
(declare-datatypes ((List!23595 0))(
  ( (Nil!23592) (Cons!23591 (h!24800 tuple2!16952) (t!33181 List!23595)) )
))
(declare-datatypes ((ListLongMap!14933 0))(
  ( (ListLongMap!14934 (toList!7482 List!23595)) )
))
(declare-fun lt!481376 () ListLongMap!14933)

(declare-fun lt!481383 () ListLongMap!14933)

(assert (=> b!1085148 (= lt!481376 lt!481383)))

(declare-fun lt!481386 () ListLongMap!14933)

(declare-fun -!763 (ListLongMap!14933 (_ BitVec 64)) ListLongMap!14933)

(assert (=> b!1085148 (= lt!481376 (-!763 lt!481386 k0!904))))

(declare-fun lt!481381 () ListLongMap!14933)

(declare-datatypes ((Unit!35641 0))(
  ( (Unit!35642) )
))
(declare-fun lt!481380 () Unit!35641)

(declare-fun zeroValue!831 () V!40491)

(declare-fun addRemoveCommutativeForDiffKeys!9 (ListLongMap!14933 (_ BitVec 64) V!40491 (_ BitVec 64)) Unit!35641)

(assert (=> b!1085148 (= lt!481380 (addRemoveCommutativeForDiffKeys!9 lt!481381 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!831 k0!904))))

(declare-fun lt!481385 () ListLongMap!14933)

(declare-fun lt!481375 () tuple2!16952)

(declare-fun +!3213 (ListLongMap!14933 tuple2!16952) ListLongMap!14933)

(assert (=> b!1085148 (= lt!481385 (+!3213 lt!481383 lt!481375))))

(declare-fun lt!481377 () ListLongMap!14933)

(declare-fun lt!481379 () tuple2!16952)

(assert (=> b!1085148 (= lt!481383 (+!3213 lt!481377 lt!481379))))

(declare-fun lt!481378 () ListLongMap!14933)

(declare-fun lt!481388 () ListLongMap!14933)

(assert (=> b!1085148 (= lt!481378 lt!481388)))

(assert (=> b!1085148 (= lt!481388 (+!3213 lt!481386 lt!481375))))

(assert (=> b!1085148 (= lt!481386 (+!3213 lt!481381 lt!481379))))

(declare-fun lt!481382 () ListLongMap!14933)

(assert (=> b!1085148 (= lt!481385 (+!3213 (+!3213 lt!481382 lt!481379) lt!481375))))

(declare-fun minValue!831 () V!40491)

(assert (=> b!1085148 (= lt!481375 (tuple2!16953 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!831))))

(assert (=> b!1085148 (= lt!481379 (tuple2!16953 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!831))))

(declare-fun b!1085149 () Bool)

(assert (=> b!1085149 (= e!619957 e!619953)))

(declare-fun res!723571 () Bool)

(assert (=> b!1085149 (=> (not res!723571) (not e!619953))))

(assert (=> b!1085149 (= res!723571 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!481387 mask!1414))))

(declare-fun i!650 () (_ BitVec 32))

(assert (=> b!1085149 (= lt!481387 (array!69949 (store (arr!33644 _keys!1070) i!650 #b1000000000000000000000000000000000000000000000000000000000000000) (size!34181 _keys!1070)))))

(declare-fun mapNonEmpty!41539 () Bool)

(declare-fun tp!79412 () Bool)

(assert (=> mapNonEmpty!41539 (= mapRes!41539 (and tp!79412 e!619954))))

(declare-fun mapKey!41539 () (_ BitVec 32))

(declare-fun mapValue!41539 () ValueCell!12552)

(declare-fun mapRest!41539 () (Array (_ BitVec 32) ValueCell!12552))

(assert (=> mapNonEmpty!41539 (= (arr!33645 _values!874) (store mapRest!41539 mapKey!41539 mapValue!41539))))

(declare-fun b!1085150 () Bool)

(assert (=> b!1085150 (= e!619953 (not e!619959))))

(declare-fun res!723581 () Bool)

(assert (=> b!1085150 (=> res!723581 e!619959)))

(declare-fun extraKeys!811 () (_ BitVec 32))

(assert (=> b!1085150 (= res!723581 (or (= (bvand extraKeys!811 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (= (bvand extraKeys!811 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun defaultEntry!882 () Int)

(declare-fun getCurrentListMap!4238 (array!69948 array!69950 (_ BitVec 32) (_ BitVec 32) V!40491 V!40491 (_ BitVec 32) Int) ListLongMap!14933)

(assert (=> b!1085150 (= lt!481378 (getCurrentListMap!4238 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun lt!481389 () array!69950)

(assert (=> b!1085150 (= lt!481385 (getCurrentListMap!4238 lt!481387 lt!481389 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(assert (=> b!1085150 (and (= lt!481382 lt!481377) (= lt!481377 lt!481382))))

(assert (=> b!1085150 (= lt!481377 (-!763 lt!481381 k0!904))))

(declare-fun lt!481384 () Unit!35641)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!44 (array!69948 array!69950 (_ BitVec 32) (_ BitVec 32) V!40491 V!40491 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!35641)

(assert (=> b!1085150 (= lt!481384 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!44 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 i!650 k0!904 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun getCurrentListMapNoExtraKeys!3990 (array!69948 array!69950 (_ BitVec 32) (_ BitVec 32) V!40491 V!40491 (_ BitVec 32) Int) ListLongMap!14933)

(assert (=> b!1085150 (= lt!481382 (getCurrentListMapNoExtraKeys!3990 lt!481387 lt!481389 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun dynLambda!2126 (Int (_ BitVec 64)) V!40491)

(assert (=> b!1085150 (= lt!481389 (array!69951 (store (arr!33645 _values!874) i!650 (ValueCellFull!12552 (dynLambda!2126 defaultEntry!882 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!34182 _values!874)))))

(assert (=> b!1085150 (= lt!481381 (getCurrentListMapNoExtraKeys!3990 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun arrayContainsKey!0 (array!69948 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1085150 (arrayContainsKey!0 _keys!1070 k0!904 #b00000000000000000000000000000000)))

(declare-fun lt!481391 () Unit!35641)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!69948 (_ BitVec 64) (_ BitVec 32)) Unit!35641)

(assert (=> b!1085150 (= lt!481391 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1070 k0!904 i!650))))

(declare-fun b!1085151 () Bool)

(declare-fun res!723575 () Bool)

(assert (=> b!1085151 (=> (not res!723575) (not e!619957))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1085151 (= res!723575 (validKeyInArray!0 k0!904))))

(declare-fun b!1085152 () Bool)

(declare-fun res!723572 () Bool)

(assert (=> b!1085152 (=> (not res!723572) (not e!619957))))

(assert (=> b!1085152 (= res!723572 (= (select (arr!33644 _keys!1070) i!650) k0!904))))

(declare-fun res!723576 () Bool)

(assert (=> start!95904 (=> (not res!723576) (not e!619957))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!95904 (= res!723576 (validMask!0 mask!1414))))

(assert (=> start!95904 e!619957))

(assert (=> start!95904 tp!79413))

(assert (=> start!95904 true))

(assert (=> start!95904 tp_is_empty!26523))

(declare-fun array_inv!25816 (array!69948) Bool)

(assert (=> start!95904 (array_inv!25816 _keys!1070)))

(declare-fun array_inv!25817 (array!69950) Bool)

(assert (=> start!95904 (and (array_inv!25817 _values!874) e!619958)))

(declare-fun b!1085153 () Bool)

(assert (=> b!1085153 (= e!619955 tp_is_empty!26523)))

(declare-fun b!1085154 () Bool)

(declare-fun res!723578 () Bool)

(assert (=> b!1085154 (=> (not res!723578) (not e!619957))))

(assert (=> b!1085154 (= res!723578 (and (bvsge i!650 #b00000000000000000000000000000000) (bvslt i!650 (size!34181 _keys!1070))))))

(declare-fun b!1085155 () Bool)

(assert (=> b!1085155 (= e!619956 true)))

(assert (=> b!1085155 (= (-!763 lt!481388 k0!904) (+!3213 lt!481376 lt!481375))))

(declare-fun lt!481390 () Unit!35641)

(assert (=> b!1085155 (= lt!481390 (addRemoveCommutativeForDiffKeys!9 lt!481386 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!831 k0!904))))

(declare-fun b!1085156 () Bool)

(declare-fun res!723577 () Bool)

(assert (=> b!1085156 (=> (not res!723577) (not e!619957))))

(assert (=> b!1085156 (= res!723577 (and (= (size!34182 _values!874) (bvadd #b00000000000000000000000000000001 mask!1414)) (= (size!34181 _keys!1070) (size!34182 _values!874)) (bvsge mask!1414 #b00000000000000000000000000000000) (bvsge extraKeys!811 #b00000000000000000000000000000000) (bvsle extraKeys!811 #b00000000000000000000000000000011)))))

(assert (= (and start!95904 res!723576) b!1085156))

(assert (= (and b!1085156 res!723577) b!1085143))

(assert (= (and b!1085143 res!723573) b!1085146))

(assert (= (and b!1085146 res!723579) b!1085154))

(assert (= (and b!1085154 res!723578) b!1085151))

(assert (= (and b!1085151 res!723575) b!1085152))

(assert (= (and b!1085152 res!723572) b!1085149))

(assert (= (and b!1085149 res!723571) b!1085145))

(assert (= (and b!1085145 res!723574) b!1085150))

(assert (= (and b!1085150 (not res!723581)) b!1085148))

(assert (= (and b!1085148 (not res!723580)) b!1085155))

(assert (= (and b!1085147 condMapEmpty!41539) mapIsEmpty!41539))

(assert (= (and b!1085147 (not condMapEmpty!41539)) mapNonEmpty!41539))

(get-info :version)

(assert (= (and mapNonEmpty!41539 ((_ is ValueCellFull!12552) mapValue!41539)) b!1085144))

(assert (= (and b!1085147 ((_ is ValueCellFull!12552) mapDefault!41539)) b!1085153))

(assert (= start!95904 b!1085147))

(declare-fun b_lambda!17221 () Bool)

(assert (=> (not b_lambda!17221) (not b!1085150)))

(declare-fun t!33179 () Bool)

(declare-fun tb!7407 () Bool)

(assert (=> (and start!95904 (= defaultEntry!882 defaultEntry!882) t!33179) tb!7407))

(declare-fun result!15325 () Bool)

(assert (=> tb!7407 (= result!15325 tp_is_empty!26523)))

(assert (=> b!1085150 t!33179))

(declare-fun b_and!35737 () Bool)

(assert (= b_and!35735 (and (=> t!33179 result!15325) b_and!35737)))

(declare-fun m!1003213 () Bool)

(assert (=> b!1085146 m!1003213))

(declare-fun m!1003215 () Bool)

(assert (=> b!1085149 m!1003215))

(declare-fun m!1003217 () Bool)

(assert (=> b!1085149 m!1003217))

(declare-fun m!1003219 () Bool)

(assert (=> b!1085145 m!1003219))

(declare-fun m!1003221 () Bool)

(assert (=> start!95904 m!1003221))

(declare-fun m!1003223 () Bool)

(assert (=> start!95904 m!1003223))

(declare-fun m!1003225 () Bool)

(assert (=> start!95904 m!1003225))

(declare-fun m!1003227 () Bool)

(assert (=> mapNonEmpty!41539 m!1003227))

(declare-fun m!1003229 () Bool)

(assert (=> b!1085155 m!1003229))

(declare-fun m!1003231 () Bool)

(assert (=> b!1085155 m!1003231))

(declare-fun m!1003233 () Bool)

(assert (=> b!1085155 m!1003233))

(declare-fun m!1003235 () Bool)

(assert (=> b!1085148 m!1003235))

(declare-fun m!1003237 () Bool)

(assert (=> b!1085148 m!1003237))

(declare-fun m!1003239 () Bool)

(assert (=> b!1085148 m!1003239))

(declare-fun m!1003241 () Bool)

(assert (=> b!1085148 m!1003241))

(declare-fun m!1003243 () Bool)

(assert (=> b!1085148 m!1003243))

(assert (=> b!1085148 m!1003237))

(declare-fun m!1003245 () Bool)

(assert (=> b!1085148 m!1003245))

(declare-fun m!1003247 () Bool)

(assert (=> b!1085148 m!1003247))

(declare-fun m!1003249 () Bool)

(assert (=> b!1085148 m!1003249))

(declare-fun m!1003251 () Bool)

(assert (=> b!1085150 m!1003251))

(declare-fun m!1003253 () Bool)

(assert (=> b!1085150 m!1003253))

(declare-fun m!1003255 () Bool)

(assert (=> b!1085150 m!1003255))

(declare-fun m!1003257 () Bool)

(assert (=> b!1085150 m!1003257))

(declare-fun m!1003259 () Bool)

(assert (=> b!1085150 m!1003259))

(declare-fun m!1003261 () Bool)

(assert (=> b!1085150 m!1003261))

(declare-fun m!1003263 () Bool)

(assert (=> b!1085150 m!1003263))

(declare-fun m!1003265 () Bool)

(assert (=> b!1085150 m!1003265))

(declare-fun m!1003267 () Bool)

(assert (=> b!1085150 m!1003267))

(declare-fun m!1003269 () Bool)

(assert (=> b!1085150 m!1003269))

(declare-fun m!1003271 () Bool)

(assert (=> b!1085152 m!1003271))

(declare-fun m!1003273 () Bool)

(assert (=> b!1085151 m!1003273))

(declare-fun m!1003275 () Bool)

(assert (=> b!1085143 m!1003275))

(check-sat (not start!95904) (not mapNonEmpty!41539) tp_is_empty!26523 (not b!1085148) (not b_lambda!17221) b_and!35737 (not b!1085155) (not b_next!22521) (not b!1085151) (not b!1085149) (not b!1085146) (not b!1085145) (not b!1085150) (not b!1085143))
(check-sat b_and!35737 (not b_next!22521))
