; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!96918 () Bool)

(assert start!96918)

(declare-fun b_free!23199 () Bool)

(declare-fun b_next!23199 () Bool)

(assert (=> start!96918 (= b_free!23199 (not b_next!23199))))

(declare-fun tp!81554 () Bool)

(declare-fun b_and!37219 () Bool)

(assert (=> start!96918 (= tp!81554 b_and!37219)))

(declare-fun b!1102188 () Bool)

(declare-fun res!735540 () Bool)

(declare-fun e!629143 () Bool)

(assert (=> b!1102188 (=> (not res!735540) (not e!629143))))

(declare-datatypes ((array!71372 0))(
  ( (array!71373 (arr!34344 (Array (_ BitVec 32) (_ BitVec 64))) (size!34881 (_ BitVec 32))) )
))
(declare-fun _keys!1070 () array!71372)

(declare-fun mask!1414 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!71372 (_ BitVec 32)) Bool)

(assert (=> b!1102188 (= res!735540 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1070 mask!1414))))

(declare-fun b!1102189 () Bool)

(declare-fun res!735543 () Bool)

(assert (=> b!1102189 (=> (not res!735543) (not e!629143))))

(declare-fun k0!904 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1102189 (= res!735543 (validKeyInArray!0 k0!904))))

(declare-fun b!1102190 () Bool)

(declare-fun e!629145 () Bool)

(assert (=> b!1102190 (= e!629143 e!629145)))

(declare-fun res!735536 () Bool)

(assert (=> b!1102190 (=> (not res!735536) (not e!629145))))

(declare-fun lt!494445 () array!71372)

(assert (=> b!1102190 (= res!735536 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!494445 mask!1414))))

(declare-fun i!650 () (_ BitVec 32))

(assert (=> b!1102190 (= lt!494445 (array!71373 (store (arr!34344 _keys!1070) i!650 #b1000000000000000000000000000000000000000000000000000000000000000) (size!34881 _keys!1070)))))

(declare-fun res!735538 () Bool)

(assert (=> start!96918 (=> (not res!735538) (not e!629143))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!96918 (= res!735538 (validMask!0 mask!1414))))

(assert (=> start!96918 e!629143))

(assert (=> start!96918 tp!81554))

(assert (=> start!96918 true))

(declare-fun tp_is_empty!27249 () Bool)

(assert (=> start!96918 tp_is_empty!27249))

(declare-fun array_inv!26310 (array!71372) Bool)

(assert (=> start!96918 (array_inv!26310 _keys!1070)))

(declare-datatypes ((V!41459 0))(
  ( (V!41460 (val!13681 Int)) )
))
(declare-datatypes ((ValueCell!12915 0))(
  ( (ValueCellFull!12915 (v!16313 V!41459)) (EmptyCell!12915) )
))
(declare-datatypes ((array!71374 0))(
  ( (array!71375 (arr!34345 (Array (_ BitVec 32) ValueCell!12915)) (size!34882 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!71374)

(declare-fun e!629141 () Bool)

(declare-fun array_inv!26311 (array!71374) Bool)

(assert (=> start!96918 (and (array_inv!26311 _values!874) e!629141)))

(declare-fun b!1102191 () Bool)

(declare-fun res!735541 () Bool)

(assert (=> b!1102191 (=> (not res!735541) (not e!629143))))

(declare-datatypes ((List!24143 0))(
  ( (Nil!24140) (Cons!24139 (h!25348 (_ BitVec 64)) (t!34395 List!24143)) )
))
(declare-fun arrayNoDuplicates!0 (array!71372 (_ BitVec 32) List!24143) Bool)

(assert (=> b!1102191 (= res!735541 (arrayNoDuplicates!0 _keys!1070 #b00000000000000000000000000000000 Nil!24140))))

(declare-fun b!1102192 () Bool)

(declare-fun res!735537 () Bool)

(assert (=> b!1102192 (=> (not res!735537) (not e!629145))))

(assert (=> b!1102192 (= res!735537 (arrayNoDuplicates!0 lt!494445 #b00000000000000000000000000000000 Nil!24140))))

(declare-fun b!1102193 () Bool)

(declare-fun e!629144 () Bool)

(assert (=> b!1102193 (= e!629144 tp_is_empty!27249)))

(declare-fun b!1102194 () Bool)

(declare-fun res!735535 () Bool)

(assert (=> b!1102194 (=> (not res!735535) (not e!629143))))

(assert (=> b!1102194 (= res!735535 (= (select (arr!34344 _keys!1070) i!650) k0!904))))

(declare-fun mapIsEmpty!42664 () Bool)

(declare-fun mapRes!42664 () Bool)

(assert (=> mapIsEmpty!42664 mapRes!42664))

(declare-fun b!1102195 () Bool)

(declare-fun res!735539 () Bool)

(assert (=> b!1102195 (=> (not res!735539) (not e!629143))))

(declare-fun extraKeys!811 () (_ BitVec 32))

(assert (=> b!1102195 (= res!735539 (and (= (size!34882 _values!874) (bvadd #b00000000000000000000000000000001 mask!1414)) (= (size!34881 _keys!1070) (size!34882 _values!874)) (bvsge mask!1414 #b00000000000000000000000000000000) (bvsge extraKeys!811 #b00000000000000000000000000000000) (bvsle extraKeys!811 #b00000000000000000000000000000011)))))

(declare-fun b!1102196 () Bool)

(declare-fun res!735542 () Bool)

(assert (=> b!1102196 (=> (not res!735542) (not e!629143))))

(assert (=> b!1102196 (= res!735542 (and (bvsge i!650 #b00000000000000000000000000000000) (bvslt i!650 (size!34881 _keys!1070))))))

(declare-fun mapNonEmpty!42664 () Bool)

(declare-fun tp!81555 () Bool)

(assert (=> mapNonEmpty!42664 (= mapRes!42664 (and tp!81555 e!629144))))

(declare-fun mapValue!42664 () ValueCell!12915)

(declare-fun mapRest!42664 () (Array (_ BitVec 32) ValueCell!12915))

(declare-fun mapKey!42664 () (_ BitVec 32))

(assert (=> mapNonEmpty!42664 (= (arr!34345 _values!874) (store mapRest!42664 mapKey!42664 mapValue!42664))))

(declare-fun b!1102197 () Bool)

(declare-fun e!629142 () Bool)

(assert (=> b!1102197 (= e!629141 (and e!629142 mapRes!42664))))

(declare-fun condMapEmpty!42664 () Bool)

(declare-fun mapDefault!42664 () ValueCell!12915)

(assert (=> b!1102197 (= condMapEmpty!42664 (= (arr!34345 _values!874) ((as const (Array (_ BitVec 32) ValueCell!12915)) mapDefault!42664)))))

(declare-fun b!1102198 () Bool)

(assert (=> b!1102198 (= e!629142 tp_is_empty!27249)))

(declare-fun lt!494446 () Bool)

(declare-datatypes ((tuple2!17472 0))(
  ( (tuple2!17473 (_1!8746 (_ BitVec 64)) (_2!8746 V!41459)) )
))
(declare-datatypes ((List!24144 0))(
  ( (Nil!24141) (Cons!24140 (h!25349 tuple2!17472) (t!34396 List!24144)) )
))
(declare-datatypes ((ListLongMap!15453 0))(
  ( (ListLongMap!15454 (toList!7742 List!24144)) )
))
(declare-fun lt!494449 () ListLongMap!15453)

(declare-fun b!1102199 () Bool)

(declare-fun lt!494452 () ListLongMap!15453)

(assert (=> b!1102199 (= e!629145 (not (or (and (not lt!494446) (not (= (bvand extraKeys!811 #b00000000000000000000000000000010) #b00000000000000000000000000000000))) (and (not lt!494446) (= (bvand extraKeys!811 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (and (not (= (bvand extraKeys!811 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!494446) (= lt!494452 lt!494449))))))

(assert (=> b!1102199 (= lt!494446 (= (bvand extraKeys!811 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(declare-fun defaultEntry!882 () Int)

(declare-fun minValue!831 () V!41459)

(declare-fun lt!494448 () ListLongMap!15453)

(declare-fun zeroValue!831 () V!41459)

(declare-fun getCurrentListMap!4425 (array!71372 array!71374 (_ BitVec 32) (_ BitVec 32) V!41459 V!41459 (_ BitVec 32) Int) ListLongMap!15453)

(assert (=> b!1102199 (= lt!494448 (getCurrentListMap!4425 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun lt!494450 () array!71374)

(assert (=> b!1102199 (= lt!494452 (getCurrentListMap!4425 lt!494445 lt!494450 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun lt!494451 () ListLongMap!15453)

(assert (=> b!1102199 (and (= lt!494449 lt!494451) (= lt!494451 lt!494449))))

(declare-fun lt!494447 () ListLongMap!15453)

(declare-fun -!979 (ListLongMap!15453 (_ BitVec 64)) ListLongMap!15453)

(assert (=> b!1102199 (= lt!494451 (-!979 lt!494447 k0!904))))

(declare-datatypes ((Unit!36157 0))(
  ( (Unit!36158) )
))
(declare-fun lt!494444 () Unit!36157)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!237 (array!71372 array!71374 (_ BitVec 32) (_ BitVec 32) V!41459 V!41459 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!36157)

(assert (=> b!1102199 (= lt!494444 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!237 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 i!650 k0!904 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun getCurrentListMapNoExtraKeys!4212 (array!71372 array!71374 (_ BitVec 32) (_ BitVec 32) V!41459 V!41459 (_ BitVec 32) Int) ListLongMap!15453)

(assert (=> b!1102199 (= lt!494449 (getCurrentListMapNoExtraKeys!4212 lt!494445 lt!494450 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun dynLambda!2343 (Int (_ BitVec 64)) V!41459)

(assert (=> b!1102199 (= lt!494450 (array!71375 (store (arr!34345 _values!874) i!650 (ValueCellFull!12915 (dynLambda!2343 defaultEntry!882 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!34882 _values!874)))))

(assert (=> b!1102199 (= lt!494447 (getCurrentListMapNoExtraKeys!4212 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun arrayContainsKey!0 (array!71372 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1102199 (arrayContainsKey!0 _keys!1070 k0!904 #b00000000000000000000000000000000)))

(declare-fun lt!494453 () Unit!36157)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!71372 (_ BitVec 64) (_ BitVec 32)) Unit!36157)

(assert (=> b!1102199 (= lt!494453 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1070 k0!904 i!650))))

(assert (= (and start!96918 res!735538) b!1102195))

(assert (= (and b!1102195 res!735539) b!1102188))

(assert (= (and b!1102188 res!735540) b!1102191))

(assert (= (and b!1102191 res!735541) b!1102196))

(assert (= (and b!1102196 res!735542) b!1102189))

(assert (= (and b!1102189 res!735543) b!1102194))

(assert (= (and b!1102194 res!735535) b!1102190))

(assert (= (and b!1102190 res!735536) b!1102192))

(assert (= (and b!1102192 res!735537) b!1102199))

(assert (= (and b!1102197 condMapEmpty!42664) mapIsEmpty!42664))

(assert (= (and b!1102197 (not condMapEmpty!42664)) mapNonEmpty!42664))

(get-info :version)

(assert (= (and mapNonEmpty!42664 ((_ is ValueCellFull!12915) mapValue!42664)) b!1102193))

(assert (= (and b!1102197 ((_ is ValueCellFull!12915) mapDefault!42664)) b!1102198))

(assert (= start!96918 b!1102197))

(declare-fun b_lambda!18187 () Bool)

(assert (=> (not b_lambda!18187) (not b!1102199)))

(declare-fun t!34394 () Bool)

(declare-fun tb!8073 () Bool)

(assert (=> (and start!96918 (= defaultEntry!882 defaultEntry!882) t!34394) tb!8073))

(declare-fun result!16681 () Bool)

(assert (=> tb!8073 (= result!16681 tp_is_empty!27249)))

(assert (=> b!1102199 t!34394))

(declare-fun b_and!37221 () Bool)

(assert (= b_and!37219 (and (=> t!34394 result!16681) b_and!37221)))

(declare-fun m!1022619 () Bool)

(assert (=> mapNonEmpty!42664 m!1022619))

(declare-fun m!1022621 () Bool)

(assert (=> b!1102188 m!1022621))

(declare-fun m!1022623 () Bool)

(assert (=> b!1102194 m!1022623))

(declare-fun m!1022625 () Bool)

(assert (=> b!1102191 m!1022625))

(declare-fun m!1022627 () Bool)

(assert (=> start!96918 m!1022627))

(declare-fun m!1022629 () Bool)

(assert (=> start!96918 m!1022629))

(declare-fun m!1022631 () Bool)

(assert (=> start!96918 m!1022631))

(declare-fun m!1022633 () Bool)

(assert (=> b!1102192 m!1022633))

(declare-fun m!1022635 () Bool)

(assert (=> b!1102189 m!1022635))

(declare-fun m!1022637 () Bool)

(assert (=> b!1102190 m!1022637))

(declare-fun m!1022639 () Bool)

(assert (=> b!1102190 m!1022639))

(declare-fun m!1022641 () Bool)

(assert (=> b!1102199 m!1022641))

(declare-fun m!1022643 () Bool)

(assert (=> b!1102199 m!1022643))

(declare-fun m!1022645 () Bool)

(assert (=> b!1102199 m!1022645))

(declare-fun m!1022647 () Bool)

(assert (=> b!1102199 m!1022647))

(declare-fun m!1022649 () Bool)

(assert (=> b!1102199 m!1022649))

(declare-fun m!1022651 () Bool)

(assert (=> b!1102199 m!1022651))

(declare-fun m!1022653 () Bool)

(assert (=> b!1102199 m!1022653))

(declare-fun m!1022655 () Bool)

(assert (=> b!1102199 m!1022655))

(declare-fun m!1022657 () Bool)

(assert (=> b!1102199 m!1022657))

(declare-fun m!1022659 () Bool)

(assert (=> b!1102199 m!1022659))

(check-sat (not b!1102188) (not b!1102189) (not b!1102191) (not b_lambda!18187) (not b!1102190) (not start!96918) (not b!1102199) tp_is_empty!27249 (not b!1102192) (not b_next!23199) (not mapNonEmpty!42664) b_and!37221)
(check-sat b_and!37221 (not b_next!23199))
(get-model)

(declare-fun b_lambda!18191 () Bool)

(assert (= b_lambda!18187 (or (and start!96918 b_free!23199) b_lambda!18191)))

(check-sat (not b!1102188) (not b!1102189) (not b!1102191) (not b!1102190) (not start!96918) (not b!1102199) tp_is_empty!27249 (not b_lambda!18191) (not b!1102192) (not b_next!23199) (not mapNonEmpty!42664) b_and!37221)
(check-sat b_and!37221 (not b_next!23199))
(get-model)

(declare-fun b!1102250 () Bool)

(declare-fun e!629172 () Bool)

(declare-fun call!46228 () Bool)

(assert (=> b!1102250 (= e!629172 call!46228)))

(declare-fun bm!46225 () Bool)

(declare-fun c!108819 () Bool)

(assert (=> bm!46225 (= call!46228 (arrayNoDuplicates!0 lt!494445 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!108819 (Cons!24139 (select (arr!34344 lt!494445) #b00000000000000000000000000000000) Nil!24140) Nil!24140)))))

(declare-fun d!130675 () Bool)

(declare-fun res!735579 () Bool)

(declare-fun e!629174 () Bool)

(assert (=> d!130675 (=> res!735579 e!629174)))

(assert (=> d!130675 (= res!735579 (bvsge #b00000000000000000000000000000000 (size!34881 lt!494445)))))

(assert (=> d!130675 (= (arrayNoDuplicates!0 lt!494445 #b00000000000000000000000000000000 Nil!24140) e!629174)))

(declare-fun b!1102251 () Bool)

(declare-fun e!629175 () Bool)

(assert (=> b!1102251 (= e!629174 e!629175)))

(declare-fun res!735578 () Bool)

(assert (=> b!1102251 (=> (not res!735578) (not e!629175))))

(declare-fun e!629173 () Bool)

(assert (=> b!1102251 (= res!735578 (not e!629173))))

(declare-fun res!735577 () Bool)

(assert (=> b!1102251 (=> (not res!735577) (not e!629173))))

(assert (=> b!1102251 (= res!735577 (validKeyInArray!0 (select (arr!34344 lt!494445) #b00000000000000000000000000000000)))))

(declare-fun b!1102252 () Bool)

(assert (=> b!1102252 (= e!629172 call!46228)))

(declare-fun b!1102253 () Bool)

(assert (=> b!1102253 (= e!629175 e!629172)))

(assert (=> b!1102253 (= c!108819 (validKeyInArray!0 (select (arr!34344 lt!494445) #b00000000000000000000000000000000)))))

(declare-fun b!1102254 () Bool)

(declare-fun contains!6420 (List!24143 (_ BitVec 64)) Bool)

(assert (=> b!1102254 (= e!629173 (contains!6420 Nil!24140 (select (arr!34344 lt!494445) #b00000000000000000000000000000000)))))

(assert (= (and d!130675 (not res!735579)) b!1102251))

(assert (= (and b!1102251 res!735577) b!1102254))

(assert (= (and b!1102251 res!735578) b!1102253))

(assert (= (and b!1102253 c!108819) b!1102252))

(assert (= (and b!1102253 (not c!108819)) b!1102250))

(assert (= (or b!1102252 b!1102250) bm!46225))

(declare-fun m!1022703 () Bool)

(assert (=> bm!46225 m!1022703))

(declare-fun m!1022705 () Bool)

(assert (=> bm!46225 m!1022705))

(assert (=> b!1102251 m!1022703))

(assert (=> b!1102251 m!1022703))

(declare-fun m!1022707 () Bool)

(assert (=> b!1102251 m!1022707))

(assert (=> b!1102253 m!1022703))

(assert (=> b!1102253 m!1022703))

(assert (=> b!1102253 m!1022707))

(assert (=> b!1102254 m!1022703))

(assert (=> b!1102254 m!1022703))

(declare-fun m!1022709 () Bool)

(assert (=> b!1102254 m!1022709))

(assert (=> b!1102192 d!130675))

(declare-fun d!130677 () Bool)

(assert (=> d!130677 (= (validMask!0 mask!1414) (and (or (= mask!1414 #b00000000000000000000000000000111) (= mask!1414 #b00000000000000000000000000001111) (= mask!1414 #b00000000000000000000000000011111) (= mask!1414 #b00000000000000000000000000111111) (= mask!1414 #b00000000000000000000000001111111) (= mask!1414 #b00000000000000000000000011111111) (= mask!1414 #b00000000000000000000000111111111) (= mask!1414 #b00000000000000000000001111111111) (= mask!1414 #b00000000000000000000011111111111) (= mask!1414 #b00000000000000000000111111111111) (= mask!1414 #b00000000000000000001111111111111) (= mask!1414 #b00000000000000000011111111111111) (= mask!1414 #b00000000000000000111111111111111) (= mask!1414 #b00000000000000001111111111111111) (= mask!1414 #b00000000000000011111111111111111) (= mask!1414 #b00000000000000111111111111111111) (= mask!1414 #b00000000000001111111111111111111) (= mask!1414 #b00000000000011111111111111111111) (= mask!1414 #b00000000000111111111111111111111) (= mask!1414 #b00000000001111111111111111111111) (= mask!1414 #b00000000011111111111111111111111) (= mask!1414 #b00000000111111111111111111111111) (= mask!1414 #b00000001111111111111111111111111) (= mask!1414 #b00000011111111111111111111111111) (= mask!1414 #b00000111111111111111111111111111) (= mask!1414 #b00001111111111111111111111111111) (= mask!1414 #b00011111111111111111111111111111) (= mask!1414 #b00111111111111111111111111111111)) (bvsle mask!1414 #b00111111111111111111111111111111)))))

(assert (=> start!96918 d!130677))

(declare-fun d!130679 () Bool)

(assert (=> d!130679 (= (array_inv!26310 _keys!1070) (bvsge (size!34881 _keys!1070) #b00000000000000000000000000000000))))

(assert (=> start!96918 d!130679))

(declare-fun d!130681 () Bool)

(assert (=> d!130681 (= (array_inv!26311 _values!874) (bvsge (size!34882 _values!874) #b00000000000000000000000000000000))))

(assert (=> start!96918 d!130681))

(declare-fun b!1102263 () Bool)

(declare-fun e!629182 () Bool)

(declare-fun call!46231 () Bool)

(assert (=> b!1102263 (= e!629182 call!46231)))

(declare-fun b!1102264 () Bool)

(declare-fun e!629183 () Bool)

(assert (=> b!1102264 (= e!629183 call!46231)))

(declare-fun b!1102265 () Bool)

(assert (=> b!1102265 (= e!629183 e!629182)))

(declare-fun lt!494492 () (_ BitVec 64))

(assert (=> b!1102265 (= lt!494492 (select (arr!34344 _keys!1070) #b00000000000000000000000000000000))))

(declare-fun lt!494491 () Unit!36157)

(assert (=> b!1102265 (= lt!494491 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1070 lt!494492 #b00000000000000000000000000000000))))

(assert (=> b!1102265 (arrayContainsKey!0 _keys!1070 lt!494492 #b00000000000000000000000000000000)))

(declare-fun lt!494490 () Unit!36157)

(assert (=> b!1102265 (= lt!494490 lt!494491)))

(declare-fun res!735584 () Bool)

(declare-datatypes ((SeekEntryResult!9913 0))(
  ( (MissingZero!9913 (index!42022 (_ BitVec 32))) (Found!9913 (index!42023 (_ BitVec 32))) (Intermediate!9913 (undefined!10725 Bool) (index!42024 (_ BitVec 32)) (x!99130 (_ BitVec 32))) (Undefined!9913) (MissingVacant!9913 (index!42025 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!71372 (_ BitVec 32)) SeekEntryResult!9913)

(assert (=> b!1102265 (= res!735584 (= (seekEntryOrOpen!0 (select (arr!34344 _keys!1070) #b00000000000000000000000000000000) _keys!1070 mask!1414) (Found!9913 #b00000000000000000000000000000000)))))

(assert (=> b!1102265 (=> (not res!735584) (not e!629182))))

(declare-fun bm!46228 () Bool)

(assert (=> bm!46228 (= call!46231 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) _keys!1070 mask!1414))))

(declare-fun b!1102266 () Bool)

(declare-fun e!629184 () Bool)

(assert (=> b!1102266 (= e!629184 e!629183)))

(declare-fun c!108822 () Bool)

(assert (=> b!1102266 (= c!108822 (validKeyInArray!0 (select (arr!34344 _keys!1070) #b00000000000000000000000000000000)))))

(declare-fun d!130683 () Bool)

(declare-fun res!735585 () Bool)

(assert (=> d!130683 (=> res!735585 e!629184)))

(assert (=> d!130683 (= res!735585 (bvsge #b00000000000000000000000000000000 (size!34881 _keys!1070)))))

(assert (=> d!130683 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1070 mask!1414) e!629184)))

(assert (= (and d!130683 (not res!735585)) b!1102266))

(assert (= (and b!1102266 c!108822) b!1102265))

(assert (= (and b!1102266 (not c!108822)) b!1102264))

(assert (= (and b!1102265 res!735584) b!1102263))

(assert (= (or b!1102263 b!1102264) bm!46228))

(declare-fun m!1022711 () Bool)

(assert (=> b!1102265 m!1022711))

(declare-fun m!1022713 () Bool)

(assert (=> b!1102265 m!1022713))

(declare-fun m!1022715 () Bool)

(assert (=> b!1102265 m!1022715))

(assert (=> b!1102265 m!1022711))

(declare-fun m!1022717 () Bool)

(assert (=> b!1102265 m!1022717))

(declare-fun m!1022719 () Bool)

(assert (=> bm!46228 m!1022719))

(assert (=> b!1102266 m!1022711))

(assert (=> b!1102266 m!1022711))

(declare-fun m!1022721 () Bool)

(assert (=> b!1102266 m!1022721))

(assert (=> b!1102188 d!130683))

(declare-fun d!130685 () Bool)

(assert (=> d!130685 (= (validKeyInArray!0 k0!904) (and (not (= k0!904 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!904 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1102189 d!130685))

(declare-fun b!1102267 () Bool)

(declare-fun e!629185 () Bool)

(declare-fun call!46232 () Bool)

(assert (=> b!1102267 (= e!629185 call!46232)))

(declare-fun bm!46229 () Bool)

(declare-fun c!108823 () Bool)

(assert (=> bm!46229 (= call!46232 (arrayNoDuplicates!0 _keys!1070 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!108823 (Cons!24139 (select (arr!34344 _keys!1070) #b00000000000000000000000000000000) Nil!24140) Nil!24140)))))

(declare-fun d!130687 () Bool)

(declare-fun res!735588 () Bool)

(declare-fun e!629187 () Bool)

(assert (=> d!130687 (=> res!735588 e!629187)))

(assert (=> d!130687 (= res!735588 (bvsge #b00000000000000000000000000000000 (size!34881 _keys!1070)))))

(assert (=> d!130687 (= (arrayNoDuplicates!0 _keys!1070 #b00000000000000000000000000000000 Nil!24140) e!629187)))

(declare-fun b!1102268 () Bool)

(declare-fun e!629188 () Bool)

(assert (=> b!1102268 (= e!629187 e!629188)))

(declare-fun res!735587 () Bool)

(assert (=> b!1102268 (=> (not res!735587) (not e!629188))))

(declare-fun e!629186 () Bool)

(assert (=> b!1102268 (= res!735587 (not e!629186))))

(declare-fun res!735586 () Bool)

(assert (=> b!1102268 (=> (not res!735586) (not e!629186))))

(assert (=> b!1102268 (= res!735586 (validKeyInArray!0 (select (arr!34344 _keys!1070) #b00000000000000000000000000000000)))))

(declare-fun b!1102269 () Bool)

(assert (=> b!1102269 (= e!629185 call!46232)))

(declare-fun b!1102270 () Bool)

(assert (=> b!1102270 (= e!629188 e!629185)))

(assert (=> b!1102270 (= c!108823 (validKeyInArray!0 (select (arr!34344 _keys!1070) #b00000000000000000000000000000000)))))

(declare-fun b!1102271 () Bool)

(assert (=> b!1102271 (= e!629186 (contains!6420 Nil!24140 (select (arr!34344 _keys!1070) #b00000000000000000000000000000000)))))

(assert (= (and d!130687 (not res!735588)) b!1102268))

(assert (= (and b!1102268 res!735586) b!1102271))

(assert (= (and b!1102268 res!735587) b!1102270))

(assert (= (and b!1102270 c!108823) b!1102269))

(assert (= (and b!1102270 (not c!108823)) b!1102267))

(assert (= (or b!1102269 b!1102267) bm!46229))

(assert (=> bm!46229 m!1022711))

(declare-fun m!1022723 () Bool)

(assert (=> bm!46229 m!1022723))

(assert (=> b!1102268 m!1022711))

(assert (=> b!1102268 m!1022711))

(assert (=> b!1102268 m!1022721))

(assert (=> b!1102270 m!1022711))

(assert (=> b!1102270 m!1022711))

(assert (=> b!1102270 m!1022721))

(assert (=> b!1102271 m!1022711))

(assert (=> b!1102271 m!1022711))

(declare-fun m!1022725 () Bool)

(assert (=> b!1102271 m!1022725))

(assert (=> b!1102191 d!130687))

(declare-fun b!1102272 () Bool)

(declare-fun e!629189 () Bool)

(declare-fun call!46233 () Bool)

(assert (=> b!1102272 (= e!629189 call!46233)))

(declare-fun b!1102273 () Bool)

(declare-fun e!629190 () Bool)

(assert (=> b!1102273 (= e!629190 call!46233)))

(declare-fun b!1102274 () Bool)

(assert (=> b!1102274 (= e!629190 e!629189)))

(declare-fun lt!494495 () (_ BitVec 64))

(assert (=> b!1102274 (= lt!494495 (select (arr!34344 lt!494445) #b00000000000000000000000000000000))))

(declare-fun lt!494494 () Unit!36157)

(assert (=> b!1102274 (= lt!494494 (lemmaArrayContainsFromImpliesContainsFromZero!0 lt!494445 lt!494495 #b00000000000000000000000000000000))))

(assert (=> b!1102274 (arrayContainsKey!0 lt!494445 lt!494495 #b00000000000000000000000000000000)))

(declare-fun lt!494493 () Unit!36157)

(assert (=> b!1102274 (= lt!494493 lt!494494)))

(declare-fun res!735589 () Bool)

(assert (=> b!1102274 (= res!735589 (= (seekEntryOrOpen!0 (select (arr!34344 lt!494445) #b00000000000000000000000000000000) lt!494445 mask!1414) (Found!9913 #b00000000000000000000000000000000)))))

(assert (=> b!1102274 (=> (not res!735589) (not e!629189))))

(declare-fun bm!46230 () Bool)

(assert (=> bm!46230 (= call!46233 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) lt!494445 mask!1414))))

(declare-fun b!1102275 () Bool)

(declare-fun e!629191 () Bool)

(assert (=> b!1102275 (= e!629191 e!629190)))

(declare-fun c!108824 () Bool)

(assert (=> b!1102275 (= c!108824 (validKeyInArray!0 (select (arr!34344 lt!494445) #b00000000000000000000000000000000)))))

(declare-fun d!130689 () Bool)

(declare-fun res!735590 () Bool)

(assert (=> d!130689 (=> res!735590 e!629191)))

(assert (=> d!130689 (= res!735590 (bvsge #b00000000000000000000000000000000 (size!34881 lt!494445)))))

(assert (=> d!130689 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!494445 mask!1414) e!629191)))

(assert (= (and d!130689 (not res!735590)) b!1102275))

(assert (= (and b!1102275 c!108824) b!1102274))

(assert (= (and b!1102275 (not c!108824)) b!1102273))

(assert (= (and b!1102274 res!735589) b!1102272))

(assert (= (or b!1102272 b!1102273) bm!46230))

(assert (=> b!1102274 m!1022703))

(declare-fun m!1022727 () Bool)

(assert (=> b!1102274 m!1022727))

(declare-fun m!1022729 () Bool)

(assert (=> b!1102274 m!1022729))

(assert (=> b!1102274 m!1022703))

(declare-fun m!1022731 () Bool)

(assert (=> b!1102274 m!1022731))

(declare-fun m!1022733 () Bool)

(assert (=> bm!46230 m!1022733))

(assert (=> b!1102275 m!1022703))

(assert (=> b!1102275 m!1022703))

(assert (=> b!1102275 m!1022707))

(assert (=> b!1102190 d!130689))

(declare-fun d!130691 () Bool)

(declare-fun res!735595 () Bool)

(declare-fun e!629196 () Bool)

(assert (=> d!130691 (=> res!735595 e!629196)))

(assert (=> d!130691 (= res!735595 (= (select (arr!34344 _keys!1070) #b00000000000000000000000000000000) k0!904))))

(assert (=> d!130691 (= (arrayContainsKey!0 _keys!1070 k0!904 #b00000000000000000000000000000000) e!629196)))

(declare-fun b!1102280 () Bool)

(declare-fun e!629197 () Bool)

(assert (=> b!1102280 (= e!629196 e!629197)))

(declare-fun res!735596 () Bool)

(assert (=> b!1102280 (=> (not res!735596) (not e!629197))))

(assert (=> b!1102280 (= res!735596 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!34881 _keys!1070)))))

(declare-fun b!1102281 () Bool)

(assert (=> b!1102281 (= e!629197 (arrayContainsKey!0 _keys!1070 k0!904 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!130691 (not res!735595)) b!1102280))

(assert (= (and b!1102280 res!735596) b!1102281))

(assert (=> d!130691 m!1022711))

(declare-fun m!1022735 () Bool)

(assert (=> b!1102281 m!1022735))

(assert (=> b!1102199 d!130691))

(declare-fun b!1102324 () Bool)

(declare-fun e!629233 () Bool)

(declare-fun e!629229 () Bool)

(assert (=> b!1102324 (= e!629233 e!629229)))

(declare-fun res!735622 () Bool)

(assert (=> b!1102324 (=> (not res!735622) (not e!629229))))

(declare-fun lt!494555 () ListLongMap!15453)

(declare-fun contains!6421 (ListLongMap!15453 (_ BitVec 64)) Bool)

(assert (=> b!1102324 (= res!735622 (contains!6421 lt!494555 (select (arr!34344 _keys!1070) #b00000000000000000000000000000000)))))

(assert (=> b!1102324 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!34881 _keys!1070)))))

(declare-fun b!1102325 () Bool)

(declare-fun e!629234 () Bool)

(declare-fun e!629236 () Bool)

(assert (=> b!1102325 (= e!629234 e!629236)))

(declare-fun res!735618 () Bool)

(declare-fun call!46248 () Bool)

(assert (=> b!1102325 (= res!735618 call!46248)))

(assert (=> b!1102325 (=> (not res!735618) (not e!629236))))

(declare-fun b!1102326 () Bool)

(declare-fun e!629226 () ListLongMap!15453)

(declare-fun call!46254 () ListLongMap!15453)

(declare-fun +!3371 (ListLongMap!15453 tuple2!17472) ListLongMap!15453)

(assert (=> b!1102326 (= e!629226 (+!3371 call!46254 (tuple2!17473 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!831)))))

(declare-fun b!1102327 () Bool)

(declare-fun apply!988 (ListLongMap!15453 (_ BitVec 64)) V!41459)

(assert (=> b!1102327 (= e!629236 (= (apply!988 lt!494555 #b0000000000000000000000000000000000000000000000000000000000000000) zeroValue!831))))

(declare-fun b!1102328 () Bool)

(declare-fun e!629228 () ListLongMap!15453)

(declare-fun call!46251 () ListLongMap!15453)

(assert (=> b!1102328 (= e!629228 call!46251)))

(declare-fun b!1102329 () Bool)

(declare-fun e!629230 () Bool)

(declare-fun call!46252 () Bool)

(assert (=> b!1102329 (= e!629230 (not call!46252))))

(declare-fun b!1102330 () Bool)

(declare-fun e!629225 () ListLongMap!15453)

(declare-fun call!46253 () ListLongMap!15453)

(assert (=> b!1102330 (= e!629225 call!46253)))

(declare-fun b!1102331 () Bool)

(declare-fun e!629224 () Bool)

(assert (=> b!1102331 (= e!629224 (validKeyInArray!0 (select (arr!34344 _keys!1070) #b00000000000000000000000000000000)))))

(declare-fun b!1102332 () Bool)

(declare-fun c!108841 () Bool)

(assert (=> b!1102332 (= c!108841 (and (not (= (bvand extraKeys!811 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeys!811 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!1102332 (= e!629228 e!629225)))

(declare-fun bm!46245 () Bool)

(declare-fun call!46249 () ListLongMap!15453)

(assert (=> bm!46245 (= call!46253 call!46249)))

(declare-fun b!1102333 () Bool)

(declare-fun get!17676 (ValueCell!12915 V!41459) V!41459)

(assert (=> b!1102333 (= e!629229 (= (apply!988 lt!494555 (select (arr!34344 _keys!1070) #b00000000000000000000000000000000)) (get!17676 (select (arr!34345 _values!874) #b00000000000000000000000000000000) (dynLambda!2343 defaultEntry!882 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1102333 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!34882 _values!874)))))

(assert (=> b!1102333 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!34881 _keys!1070)))))

(declare-fun b!1102334 () Bool)

(declare-fun e!629232 () Unit!36157)

(declare-fun Unit!36159 () Unit!36157)

(assert (=> b!1102334 (= e!629232 Unit!36159)))

(declare-fun b!1102335 () Bool)

(declare-fun lt!494550 () Unit!36157)

(assert (=> b!1102335 (= e!629232 lt!494550)))

(declare-fun lt!494553 () ListLongMap!15453)

(assert (=> b!1102335 (= lt!494553 (getCurrentListMapNoExtraKeys!4212 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun lt!494546 () (_ BitVec 64))

(assert (=> b!1102335 (= lt!494546 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!494558 () (_ BitVec 64))

(assert (=> b!1102335 (= lt!494558 (select (arr!34344 _keys!1070) #b00000000000000000000000000000000))))

(declare-fun lt!494548 () Unit!36157)

(declare-fun addStillContains!670 (ListLongMap!15453 (_ BitVec 64) V!41459 (_ BitVec 64)) Unit!36157)

(assert (=> b!1102335 (= lt!494548 (addStillContains!670 lt!494553 lt!494546 zeroValue!831 lt!494558))))

(assert (=> b!1102335 (contains!6421 (+!3371 lt!494553 (tuple2!17473 lt!494546 zeroValue!831)) lt!494558)))

(declare-fun lt!494542 () Unit!36157)

(assert (=> b!1102335 (= lt!494542 lt!494548)))

(declare-fun lt!494543 () ListLongMap!15453)

(assert (=> b!1102335 (= lt!494543 (getCurrentListMapNoExtraKeys!4212 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun lt!494540 () (_ BitVec 64))

(assert (=> b!1102335 (= lt!494540 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!494556 () (_ BitVec 64))

(assert (=> b!1102335 (= lt!494556 (select (arr!34344 _keys!1070) #b00000000000000000000000000000000))))

(declare-fun lt!494541 () Unit!36157)

(declare-fun addApplyDifferent!522 (ListLongMap!15453 (_ BitVec 64) V!41459 (_ BitVec 64)) Unit!36157)

(assert (=> b!1102335 (= lt!494541 (addApplyDifferent!522 lt!494543 lt!494540 minValue!831 lt!494556))))

(assert (=> b!1102335 (= (apply!988 (+!3371 lt!494543 (tuple2!17473 lt!494540 minValue!831)) lt!494556) (apply!988 lt!494543 lt!494556))))

(declare-fun lt!494547 () Unit!36157)

(assert (=> b!1102335 (= lt!494547 lt!494541)))

(declare-fun lt!494559 () ListLongMap!15453)

(assert (=> b!1102335 (= lt!494559 (getCurrentListMapNoExtraKeys!4212 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun lt!494544 () (_ BitVec 64))

(assert (=> b!1102335 (= lt!494544 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!494545 () (_ BitVec 64))

(assert (=> b!1102335 (= lt!494545 (select (arr!34344 _keys!1070) #b00000000000000000000000000000000))))

(declare-fun lt!494560 () Unit!36157)

(assert (=> b!1102335 (= lt!494560 (addApplyDifferent!522 lt!494559 lt!494544 zeroValue!831 lt!494545))))

(assert (=> b!1102335 (= (apply!988 (+!3371 lt!494559 (tuple2!17473 lt!494544 zeroValue!831)) lt!494545) (apply!988 lt!494559 lt!494545))))

(declare-fun lt!494549 () Unit!36157)

(assert (=> b!1102335 (= lt!494549 lt!494560)))

(declare-fun lt!494557 () ListLongMap!15453)

(assert (=> b!1102335 (= lt!494557 (getCurrentListMapNoExtraKeys!4212 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun lt!494554 () (_ BitVec 64))

(assert (=> b!1102335 (= lt!494554 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!494561 () (_ BitVec 64))

(assert (=> b!1102335 (= lt!494561 (select (arr!34344 _keys!1070) #b00000000000000000000000000000000))))

(assert (=> b!1102335 (= lt!494550 (addApplyDifferent!522 lt!494557 lt!494554 minValue!831 lt!494561))))

(assert (=> b!1102335 (= (apply!988 (+!3371 lt!494557 (tuple2!17473 lt!494554 minValue!831)) lt!494561) (apply!988 lt!494557 lt!494561))))

(declare-fun b!1102336 () Bool)

(assert (=> b!1102336 (= e!629225 call!46251)))

(declare-fun b!1102337 () Bool)

(declare-fun e!629235 () Bool)

(assert (=> b!1102337 (= e!629235 e!629230)))

(declare-fun c!108840 () Bool)

(assert (=> b!1102337 (= c!108840 (not (= (bvand extraKeys!811 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun c!108842 () Bool)

(declare-fun bm!46246 () Bool)

(declare-fun c!108838 () Bool)

(declare-fun call!46250 () ListLongMap!15453)

(assert (=> bm!46246 (= call!46254 (+!3371 (ite c!108838 call!46250 (ite c!108842 call!46249 call!46253)) (ite (or c!108838 c!108842) (tuple2!17473 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!831) (tuple2!17473 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!831))))))

(declare-fun b!1102338 () Bool)

(declare-fun e!629231 () Bool)

(assert (=> b!1102338 (= e!629230 e!629231)))

(declare-fun res!735619 () Bool)

(assert (=> b!1102338 (= res!735619 call!46252)))

(assert (=> b!1102338 (=> (not res!735619) (not e!629231))))

(declare-fun bm!46247 () Bool)

(assert (=> bm!46247 (= call!46252 (contains!6421 lt!494555 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1102339 () Bool)

(assert (=> b!1102339 (= e!629226 e!629228)))

(assert (=> b!1102339 (= c!108842 (and (not (= (bvand extraKeys!811 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeys!811 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1102340 () Bool)

(declare-fun res!735620 () Bool)

(assert (=> b!1102340 (=> (not res!735620) (not e!629235))))

(assert (=> b!1102340 (= res!735620 e!629233)))

(declare-fun res!735615 () Bool)

(assert (=> b!1102340 (=> res!735615 e!629233)))

(assert (=> b!1102340 (= res!735615 (not e!629224))))

(declare-fun res!735623 () Bool)

(assert (=> b!1102340 (=> (not res!735623) (not e!629224))))

(assert (=> b!1102340 (= res!735623 (bvslt #b00000000000000000000000000000000 (size!34881 _keys!1070)))))

(declare-fun bm!46248 () Bool)

(assert (=> bm!46248 (= call!46250 (getCurrentListMapNoExtraKeys!4212 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun b!1102341 () Bool)

(assert (=> b!1102341 (= e!629231 (= (apply!988 lt!494555 #b1000000000000000000000000000000000000000000000000000000000000000) minValue!831))))

(declare-fun b!1102342 () Bool)

(declare-fun res!735617 () Bool)

(assert (=> b!1102342 (=> (not res!735617) (not e!629235))))

(assert (=> b!1102342 (= res!735617 e!629234)))

(declare-fun c!108837 () Bool)

(assert (=> b!1102342 (= c!108837 (not (= (bvand extraKeys!811 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun bm!46249 () Bool)

(assert (=> bm!46249 (= call!46249 call!46250)))

(declare-fun b!1102343 () Bool)

(assert (=> b!1102343 (= e!629234 (not call!46248))))

(declare-fun d!130693 () Bool)

(assert (=> d!130693 e!629235))

(declare-fun res!735616 () Bool)

(assert (=> d!130693 (=> (not res!735616) (not e!629235))))

(assert (=> d!130693 (= res!735616 (or (bvsge #b00000000000000000000000000000000 (size!34881 _keys!1070)) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!34881 _keys!1070)))))))

(declare-fun lt!494552 () ListLongMap!15453)

(assert (=> d!130693 (= lt!494555 lt!494552)))

(declare-fun lt!494551 () Unit!36157)

(assert (=> d!130693 (= lt!494551 e!629232)))

(declare-fun c!108839 () Bool)

(declare-fun e!629227 () Bool)

(assert (=> d!130693 (= c!108839 e!629227)))

(declare-fun res!735621 () Bool)

(assert (=> d!130693 (=> (not res!735621) (not e!629227))))

(assert (=> d!130693 (= res!735621 (bvslt #b00000000000000000000000000000000 (size!34881 _keys!1070)))))

(assert (=> d!130693 (= lt!494552 e!629226)))

(assert (=> d!130693 (= c!108838 (and (not (= (bvand extraKeys!811 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!811 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!130693 (validMask!0 mask!1414)))

(assert (=> d!130693 (= (getCurrentListMap!4425 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882) lt!494555)))

(declare-fun bm!46250 () Bool)

(assert (=> bm!46250 (= call!46248 (contains!6421 lt!494555 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun bm!46251 () Bool)

(assert (=> bm!46251 (= call!46251 call!46254)))

(declare-fun b!1102344 () Bool)

(assert (=> b!1102344 (= e!629227 (validKeyInArray!0 (select (arr!34344 _keys!1070) #b00000000000000000000000000000000)))))

(assert (= (and d!130693 c!108838) b!1102326))

(assert (= (and d!130693 (not c!108838)) b!1102339))

(assert (= (and b!1102339 c!108842) b!1102328))

(assert (= (and b!1102339 (not c!108842)) b!1102332))

(assert (= (and b!1102332 c!108841) b!1102336))

(assert (= (and b!1102332 (not c!108841)) b!1102330))

(assert (= (or b!1102336 b!1102330) bm!46245))

(assert (= (or b!1102328 bm!46245) bm!46249))

(assert (= (or b!1102328 b!1102336) bm!46251))

(assert (= (or b!1102326 bm!46249) bm!46248))

(assert (= (or b!1102326 bm!46251) bm!46246))

(assert (= (and d!130693 res!735621) b!1102344))

(assert (= (and d!130693 c!108839) b!1102335))

(assert (= (and d!130693 (not c!108839)) b!1102334))

(assert (= (and d!130693 res!735616) b!1102340))

(assert (= (and b!1102340 res!735623) b!1102331))

(assert (= (and b!1102340 (not res!735615)) b!1102324))

(assert (= (and b!1102324 res!735622) b!1102333))

(assert (= (and b!1102340 res!735620) b!1102342))

(assert (= (and b!1102342 c!108837) b!1102325))

(assert (= (and b!1102342 (not c!108837)) b!1102343))

(assert (= (and b!1102325 res!735618) b!1102327))

(assert (= (or b!1102325 b!1102343) bm!46250))

(assert (= (and b!1102342 res!735617) b!1102337))

(assert (= (and b!1102337 c!108840) b!1102338))

(assert (= (and b!1102337 (not c!108840)) b!1102329))

(assert (= (and b!1102338 res!735619) b!1102341))

(assert (= (or b!1102338 b!1102329) bm!46247))

(declare-fun b_lambda!18193 () Bool)

(assert (=> (not b_lambda!18193) (not b!1102333)))

(assert (=> b!1102333 t!34394))

(declare-fun b_and!37227 () Bool)

(assert (= b_and!37221 (and (=> t!34394 result!16681) b_and!37227)))

(declare-fun m!1022737 () Bool)

(assert (=> bm!46250 m!1022737))

(assert (=> b!1102331 m!1022711))

(assert (=> b!1102331 m!1022711))

(assert (=> b!1102331 m!1022721))

(declare-fun m!1022739 () Bool)

(assert (=> b!1102326 m!1022739))

(declare-fun m!1022741 () Bool)

(assert (=> bm!46247 m!1022741))

(declare-fun m!1022743 () Bool)

(assert (=> b!1102333 m!1022743))

(assert (=> b!1102333 m!1022643))

(declare-fun m!1022745 () Bool)

(assert (=> b!1102333 m!1022745))

(assert (=> b!1102333 m!1022711))

(assert (=> b!1102333 m!1022643))

(assert (=> b!1102333 m!1022743))

(assert (=> b!1102333 m!1022711))

(declare-fun m!1022747 () Bool)

(assert (=> b!1102333 m!1022747))

(assert (=> b!1102324 m!1022711))

(assert (=> b!1102324 m!1022711))

(declare-fun m!1022749 () Bool)

(assert (=> b!1102324 m!1022749))

(declare-fun m!1022751 () Bool)

(assert (=> b!1102341 m!1022751))

(declare-fun m!1022753 () Bool)

(assert (=> bm!46246 m!1022753))

(assert (=> d!130693 m!1022627))

(assert (=> b!1102335 m!1022651))

(declare-fun m!1022755 () Bool)

(assert (=> b!1102335 m!1022755))

(assert (=> b!1102335 m!1022711))

(declare-fun m!1022757 () Bool)

(assert (=> b!1102335 m!1022757))

(declare-fun m!1022759 () Bool)

(assert (=> b!1102335 m!1022759))

(declare-fun m!1022761 () Bool)

(assert (=> b!1102335 m!1022761))

(declare-fun m!1022763 () Bool)

(assert (=> b!1102335 m!1022763))

(declare-fun m!1022765 () Bool)

(assert (=> b!1102335 m!1022765))

(declare-fun m!1022767 () Bool)

(assert (=> b!1102335 m!1022767))

(declare-fun m!1022769 () Bool)

(assert (=> b!1102335 m!1022769))

(declare-fun m!1022771 () Bool)

(assert (=> b!1102335 m!1022771))

(declare-fun m!1022773 () Bool)

(assert (=> b!1102335 m!1022773))

(declare-fun m!1022775 () Bool)

(assert (=> b!1102335 m!1022775))

(declare-fun m!1022777 () Bool)

(assert (=> b!1102335 m!1022777))

(assert (=> b!1102335 m!1022757))

(assert (=> b!1102335 m!1022773))

(declare-fun m!1022779 () Bool)

(assert (=> b!1102335 m!1022779))

(declare-fun m!1022781 () Bool)

(assert (=> b!1102335 m!1022781))

(assert (=> b!1102335 m!1022767))

(declare-fun m!1022783 () Bool)

(assert (=> b!1102335 m!1022783))

(assert (=> b!1102335 m!1022769))

(declare-fun m!1022785 () Bool)

(assert (=> b!1102327 m!1022785))

(assert (=> b!1102344 m!1022711))

(assert (=> b!1102344 m!1022711))

(assert (=> b!1102344 m!1022721))

(assert (=> bm!46248 m!1022651))

(assert (=> b!1102199 d!130693))

(declare-fun b!1102369 () Bool)

(declare-fun e!629251 () Bool)

(declare-fun lt!494576 () ListLongMap!15453)

(declare-fun isEmpty!974 (ListLongMap!15453) Bool)

(assert (=> b!1102369 (= e!629251 (isEmpty!974 lt!494576))))

(declare-fun b!1102370 () Bool)

(declare-fun e!629257 () ListLongMap!15453)

(assert (=> b!1102370 (= e!629257 (ListLongMap!15454 Nil!24141))))

(declare-fun b!1102371 () Bool)

(declare-fun lt!494580 () Unit!36157)

(declare-fun lt!494579 () Unit!36157)

(assert (=> b!1102371 (= lt!494580 lt!494579)))

(declare-fun lt!494581 () V!41459)

(declare-fun lt!494577 () (_ BitVec 64))

(declare-fun lt!494582 () ListLongMap!15453)

(declare-fun lt!494578 () (_ BitVec 64))

(assert (=> b!1102371 (not (contains!6421 (+!3371 lt!494582 (tuple2!17473 lt!494578 lt!494581)) lt!494577))))

(declare-fun addStillNotContains!283 (ListLongMap!15453 (_ BitVec 64) V!41459 (_ BitVec 64)) Unit!36157)

(assert (=> b!1102371 (= lt!494579 (addStillNotContains!283 lt!494582 lt!494578 lt!494581 lt!494577))))

(assert (=> b!1102371 (= lt!494577 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!1102371 (= lt!494581 (get!17676 (select (arr!34345 lt!494450) #b00000000000000000000000000000000) (dynLambda!2343 defaultEntry!882 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!1102371 (= lt!494578 (select (arr!34344 lt!494445) #b00000000000000000000000000000000))))

(declare-fun call!46257 () ListLongMap!15453)

(assert (=> b!1102371 (= lt!494582 call!46257)))

(declare-fun e!629253 () ListLongMap!15453)

(assert (=> b!1102371 (= e!629253 (+!3371 call!46257 (tuple2!17473 (select (arr!34344 lt!494445) #b00000000000000000000000000000000) (get!17676 (select (arr!34345 lt!494450) #b00000000000000000000000000000000) (dynLambda!2343 defaultEntry!882 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!1102372 () Bool)

(declare-fun e!629252 () Bool)

(declare-fun e!629255 () Bool)

(assert (=> b!1102372 (= e!629252 e!629255)))

(assert (=> b!1102372 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!34881 lt!494445)))))

(declare-fun res!735633 () Bool)

(assert (=> b!1102372 (= res!735633 (contains!6421 lt!494576 (select (arr!34344 lt!494445) #b00000000000000000000000000000000)))))

(assert (=> b!1102372 (=> (not res!735633) (not e!629255))))

(declare-fun b!1102373 () Bool)

(declare-fun e!629256 () Bool)

(assert (=> b!1102373 (= e!629256 (validKeyInArray!0 (select (arr!34344 lt!494445) #b00000000000000000000000000000000)))))

(assert (=> b!1102373 (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000)))

(declare-fun b!1102374 () Bool)

(declare-fun e!629254 () Bool)

(assert (=> b!1102374 (= e!629254 e!629252)))

(declare-fun c!108853 () Bool)

(assert (=> b!1102374 (= c!108853 e!629256)))

(declare-fun res!735634 () Bool)

(assert (=> b!1102374 (=> (not res!735634) (not e!629256))))

(assert (=> b!1102374 (= res!735634 (bvslt #b00000000000000000000000000000000 (size!34881 lt!494445)))))

(declare-fun d!130695 () Bool)

(assert (=> d!130695 e!629254))

(declare-fun res!735635 () Bool)

(assert (=> d!130695 (=> (not res!735635) (not e!629254))))

(assert (=> d!130695 (= res!735635 (not (contains!6421 lt!494576 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!130695 (= lt!494576 e!629257)))

(declare-fun c!108854 () Bool)

(assert (=> d!130695 (= c!108854 (bvsge #b00000000000000000000000000000000 (size!34881 lt!494445)))))

(assert (=> d!130695 (validMask!0 mask!1414)))

(assert (=> d!130695 (= (getCurrentListMapNoExtraKeys!4212 lt!494445 lt!494450 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882) lt!494576)))

(declare-fun b!1102375 () Bool)

(assert (=> b!1102375 (= e!629251 (= lt!494576 (getCurrentListMapNoExtraKeys!4212 lt!494445 lt!494450 mask!1414 extraKeys!811 zeroValue!831 minValue!831 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) defaultEntry!882)))))

(declare-fun bm!46254 () Bool)

(assert (=> bm!46254 (= call!46257 (getCurrentListMapNoExtraKeys!4212 lt!494445 lt!494450 mask!1414 extraKeys!811 zeroValue!831 minValue!831 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) defaultEntry!882))))

(declare-fun b!1102376 () Bool)

(assert (=> b!1102376 (= e!629253 call!46257)))

(declare-fun b!1102377 () Bool)

(assert (=> b!1102377 (= e!629257 e!629253)))

(declare-fun c!108851 () Bool)

(assert (=> b!1102377 (= c!108851 (validKeyInArray!0 (select (arr!34344 lt!494445) #b00000000000000000000000000000000)))))

(declare-fun b!1102378 () Bool)

(assert (=> b!1102378 (= e!629252 e!629251)))

(declare-fun c!108852 () Bool)

(assert (=> b!1102378 (= c!108852 (bvslt #b00000000000000000000000000000000 (size!34881 lt!494445)))))

(declare-fun b!1102379 () Bool)

(assert (=> b!1102379 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!34881 lt!494445)))))

(assert (=> b!1102379 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!34882 lt!494450)))))

(assert (=> b!1102379 (= e!629255 (= (apply!988 lt!494576 (select (arr!34344 lt!494445) #b00000000000000000000000000000000)) (get!17676 (select (arr!34345 lt!494450) #b00000000000000000000000000000000) (dynLambda!2343 defaultEntry!882 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1102380 () Bool)

(declare-fun res!735632 () Bool)

(assert (=> b!1102380 (=> (not res!735632) (not e!629254))))

(assert (=> b!1102380 (= res!735632 (not (contains!6421 lt!494576 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!130695 c!108854) b!1102370))

(assert (= (and d!130695 (not c!108854)) b!1102377))

(assert (= (and b!1102377 c!108851) b!1102371))

(assert (= (and b!1102377 (not c!108851)) b!1102376))

(assert (= (or b!1102371 b!1102376) bm!46254))

(assert (= (and d!130695 res!735635) b!1102380))

(assert (= (and b!1102380 res!735632) b!1102374))

(assert (= (and b!1102374 res!735634) b!1102373))

(assert (= (and b!1102374 c!108853) b!1102372))

(assert (= (and b!1102374 (not c!108853)) b!1102378))

(assert (= (and b!1102372 res!735633) b!1102379))

(assert (= (and b!1102378 c!108852) b!1102375))

(assert (= (and b!1102378 (not c!108852)) b!1102369))

(declare-fun b_lambda!18195 () Bool)

(assert (=> (not b_lambda!18195) (not b!1102371)))

(assert (=> b!1102371 t!34394))

(declare-fun b_and!37229 () Bool)

(assert (= b_and!37227 (and (=> t!34394 result!16681) b_and!37229)))

(declare-fun b_lambda!18197 () Bool)

(assert (=> (not b_lambda!18197) (not b!1102379)))

(assert (=> b!1102379 t!34394))

(declare-fun b_and!37231 () Bool)

(assert (= b_and!37229 (and (=> t!34394 result!16681) b_and!37231)))

(declare-fun m!1022787 () Bool)

(assert (=> d!130695 m!1022787))

(assert (=> d!130695 m!1022627))

(declare-fun m!1022789 () Bool)

(assert (=> b!1102371 m!1022789))

(declare-fun m!1022791 () Bool)

(assert (=> b!1102371 m!1022791))

(assert (=> b!1102371 m!1022643))

(declare-fun m!1022793 () Bool)

(assert (=> b!1102371 m!1022793))

(assert (=> b!1102371 m!1022789))

(assert (=> b!1102371 m!1022643))

(declare-fun m!1022795 () Bool)

(assert (=> b!1102371 m!1022795))

(declare-fun m!1022797 () Bool)

(assert (=> b!1102371 m!1022797))

(assert (=> b!1102371 m!1022703))

(assert (=> b!1102371 m!1022793))

(declare-fun m!1022799 () Bool)

(assert (=> b!1102371 m!1022799))

(assert (=> b!1102379 m!1022789))

(assert (=> b!1102379 m!1022643))

(assert (=> b!1102379 m!1022703))

(declare-fun m!1022801 () Bool)

(assert (=> b!1102379 m!1022801))

(assert (=> b!1102379 m!1022789))

(assert (=> b!1102379 m!1022643))

(assert (=> b!1102379 m!1022795))

(assert (=> b!1102379 m!1022703))

(assert (=> b!1102373 m!1022703))

(assert (=> b!1102373 m!1022703))

(assert (=> b!1102373 m!1022707))

(assert (=> b!1102372 m!1022703))

(assert (=> b!1102372 m!1022703))

(declare-fun m!1022803 () Bool)

(assert (=> b!1102372 m!1022803))

(declare-fun m!1022805 () Bool)

(assert (=> b!1102375 m!1022805))

(assert (=> bm!46254 m!1022805))

(declare-fun m!1022807 () Bool)

(assert (=> b!1102369 m!1022807))

(assert (=> b!1102377 m!1022703))

(assert (=> b!1102377 m!1022703))

(assert (=> b!1102377 m!1022707))

(declare-fun m!1022809 () Bool)

(assert (=> b!1102380 m!1022809))

(assert (=> b!1102199 d!130695))

(declare-fun call!46263 () ListLongMap!15453)

(declare-fun call!46262 () ListLongMap!15453)

(declare-fun b!1102387 () Bool)

(declare-fun e!629263 () Bool)

(assert (=> b!1102387 (= e!629263 (= call!46263 (-!979 call!46262 k0!904)))))

(assert (=> b!1102387 (and (bvsge i!650 #b00000000000000000000000000000000) (bvslt i!650 (size!34882 _values!874)))))

(declare-fun d!130697 () Bool)

(declare-fun e!629262 () Bool)

(assert (=> d!130697 e!629262))

(declare-fun res!735638 () Bool)

(assert (=> d!130697 (=> (not res!735638) (not e!629262))))

(assert (=> d!130697 (= res!735638 (and (or (not (bvsle #b00000000000000000000000000000000 i!650)) (and (bvsge i!650 #b00000000000000000000000000000000) (bvslt i!650 (size!34881 _keys!1070)))) (or (bvsle #b00000000000000000000000000000000 i!650) (and (bvsge i!650 #b00000000000000000000000000000000) (bvslt i!650 (size!34881 _keys!1070))))))))

(declare-fun lt!494585 () Unit!36157)

(declare-fun choose!1779 (array!71372 array!71374 (_ BitVec 32) (_ BitVec 32) V!41459 V!41459 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!36157)

(assert (=> d!130697 (= lt!494585 (choose!1779 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 i!650 k0!904 #b00000000000000000000000000000000 defaultEntry!882))))

(assert (=> d!130697 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvsle #b00000000000000000000000000000000 (size!34881 _keys!1070)))))

(assert (=> d!130697 (= (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!237 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 i!650 k0!904 #b00000000000000000000000000000000 defaultEntry!882) lt!494585)))

(declare-fun bm!46259 () Bool)

(assert (=> bm!46259 (= call!46263 (getCurrentListMapNoExtraKeys!4212 (array!71373 (store (arr!34344 _keys!1070) i!650 #b1000000000000000000000000000000000000000000000000000000000000000) (size!34881 _keys!1070)) (array!71375 (store (arr!34345 _values!874) i!650 (ValueCellFull!12915 (dynLambda!2343 defaultEntry!882 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!34882 _values!874)) mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun b!1102388 () Bool)

(assert (=> b!1102388 (= e!629263 (= call!46263 call!46262))))

(assert (=> b!1102388 (and (bvsge i!650 #b00000000000000000000000000000000) (bvslt i!650 (size!34882 _values!874)))))

(declare-fun b!1102389 () Bool)

(assert (=> b!1102389 (= e!629262 e!629263)))

(declare-fun c!108857 () Bool)

(assert (=> b!1102389 (= c!108857 (bvsle #b00000000000000000000000000000000 i!650))))

(declare-fun bm!46260 () Bool)

(assert (=> bm!46260 (= call!46262 (getCurrentListMapNoExtraKeys!4212 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(assert (= (and d!130697 res!735638) b!1102389))

(assert (= (and b!1102389 c!108857) b!1102387))

(assert (= (and b!1102389 (not c!108857)) b!1102388))

(assert (= (or b!1102387 b!1102388) bm!46260))

(assert (= (or b!1102387 b!1102388) bm!46259))

(declare-fun b_lambda!18199 () Bool)

(assert (=> (not b_lambda!18199) (not bm!46259)))

(assert (=> bm!46259 t!34394))

(declare-fun b_and!37233 () Bool)

(assert (= b_and!37231 (and (=> t!34394 result!16681) b_and!37233)))

(declare-fun m!1022811 () Bool)

(assert (=> b!1102387 m!1022811))

(declare-fun m!1022813 () Bool)

(assert (=> d!130697 m!1022813))

(assert (=> bm!46259 m!1022639))

(assert (=> bm!46259 m!1022643))

(assert (=> bm!46259 m!1022645))

(declare-fun m!1022815 () Bool)

(assert (=> bm!46259 m!1022815))

(assert (=> bm!46260 m!1022651))

(assert (=> b!1102199 d!130697))

(declare-fun b!1102390 () Bool)

(declare-fun e!629273 () Bool)

(declare-fun e!629269 () Bool)

(assert (=> b!1102390 (= e!629273 e!629269)))

(declare-fun res!735646 () Bool)

(assert (=> b!1102390 (=> (not res!735646) (not e!629269))))

(declare-fun lt!494601 () ListLongMap!15453)

(assert (=> b!1102390 (= res!735646 (contains!6421 lt!494601 (select (arr!34344 lt!494445) #b00000000000000000000000000000000)))))

(assert (=> b!1102390 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!34881 lt!494445)))))

(declare-fun b!1102391 () Bool)

(declare-fun e!629274 () Bool)

(declare-fun e!629276 () Bool)

(assert (=> b!1102391 (= e!629274 e!629276)))

(declare-fun res!735642 () Bool)

(declare-fun call!46264 () Bool)

(assert (=> b!1102391 (= res!735642 call!46264)))

(assert (=> b!1102391 (=> (not res!735642) (not e!629276))))

(declare-fun b!1102392 () Bool)

(declare-fun e!629266 () ListLongMap!15453)

(declare-fun call!46270 () ListLongMap!15453)

(assert (=> b!1102392 (= e!629266 (+!3371 call!46270 (tuple2!17473 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!831)))))

(declare-fun b!1102393 () Bool)

(assert (=> b!1102393 (= e!629276 (= (apply!988 lt!494601 #b0000000000000000000000000000000000000000000000000000000000000000) zeroValue!831))))

(declare-fun b!1102394 () Bool)

(declare-fun e!629268 () ListLongMap!15453)

(declare-fun call!46267 () ListLongMap!15453)

(assert (=> b!1102394 (= e!629268 call!46267)))

(declare-fun b!1102395 () Bool)

(declare-fun e!629270 () Bool)

(declare-fun call!46268 () Bool)

(assert (=> b!1102395 (= e!629270 (not call!46268))))

(declare-fun b!1102396 () Bool)

(declare-fun e!629265 () ListLongMap!15453)

(declare-fun call!46269 () ListLongMap!15453)

(assert (=> b!1102396 (= e!629265 call!46269)))

(declare-fun b!1102397 () Bool)

(declare-fun e!629264 () Bool)

(assert (=> b!1102397 (= e!629264 (validKeyInArray!0 (select (arr!34344 lt!494445) #b00000000000000000000000000000000)))))

(declare-fun b!1102398 () Bool)

(declare-fun c!108862 () Bool)

(assert (=> b!1102398 (= c!108862 (and (not (= (bvand extraKeys!811 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeys!811 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!1102398 (= e!629268 e!629265)))

(declare-fun bm!46261 () Bool)

(declare-fun call!46265 () ListLongMap!15453)

(assert (=> bm!46261 (= call!46269 call!46265)))

(declare-fun b!1102399 () Bool)

(assert (=> b!1102399 (= e!629269 (= (apply!988 lt!494601 (select (arr!34344 lt!494445) #b00000000000000000000000000000000)) (get!17676 (select (arr!34345 lt!494450) #b00000000000000000000000000000000) (dynLambda!2343 defaultEntry!882 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1102399 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!34882 lt!494450)))))

(assert (=> b!1102399 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!34881 lt!494445)))))

(declare-fun b!1102400 () Bool)

(declare-fun e!629272 () Unit!36157)

(declare-fun Unit!36160 () Unit!36157)

(assert (=> b!1102400 (= e!629272 Unit!36160)))

(declare-fun b!1102401 () Bool)

(declare-fun lt!494596 () Unit!36157)

(assert (=> b!1102401 (= e!629272 lt!494596)))

(declare-fun lt!494599 () ListLongMap!15453)

(assert (=> b!1102401 (= lt!494599 (getCurrentListMapNoExtraKeys!4212 lt!494445 lt!494450 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun lt!494592 () (_ BitVec 64))

(assert (=> b!1102401 (= lt!494592 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!494604 () (_ BitVec 64))

(assert (=> b!1102401 (= lt!494604 (select (arr!34344 lt!494445) #b00000000000000000000000000000000))))

(declare-fun lt!494594 () Unit!36157)

(assert (=> b!1102401 (= lt!494594 (addStillContains!670 lt!494599 lt!494592 zeroValue!831 lt!494604))))

(assert (=> b!1102401 (contains!6421 (+!3371 lt!494599 (tuple2!17473 lt!494592 zeroValue!831)) lt!494604)))

(declare-fun lt!494588 () Unit!36157)

(assert (=> b!1102401 (= lt!494588 lt!494594)))

(declare-fun lt!494589 () ListLongMap!15453)

(assert (=> b!1102401 (= lt!494589 (getCurrentListMapNoExtraKeys!4212 lt!494445 lt!494450 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun lt!494586 () (_ BitVec 64))

(assert (=> b!1102401 (= lt!494586 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!494602 () (_ BitVec 64))

(assert (=> b!1102401 (= lt!494602 (select (arr!34344 lt!494445) #b00000000000000000000000000000000))))

(declare-fun lt!494587 () Unit!36157)

(assert (=> b!1102401 (= lt!494587 (addApplyDifferent!522 lt!494589 lt!494586 minValue!831 lt!494602))))

(assert (=> b!1102401 (= (apply!988 (+!3371 lt!494589 (tuple2!17473 lt!494586 minValue!831)) lt!494602) (apply!988 lt!494589 lt!494602))))

(declare-fun lt!494593 () Unit!36157)

(assert (=> b!1102401 (= lt!494593 lt!494587)))

(declare-fun lt!494605 () ListLongMap!15453)

(assert (=> b!1102401 (= lt!494605 (getCurrentListMapNoExtraKeys!4212 lt!494445 lt!494450 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun lt!494590 () (_ BitVec 64))

(assert (=> b!1102401 (= lt!494590 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!494591 () (_ BitVec 64))

(assert (=> b!1102401 (= lt!494591 (select (arr!34344 lt!494445) #b00000000000000000000000000000000))))

(declare-fun lt!494606 () Unit!36157)

(assert (=> b!1102401 (= lt!494606 (addApplyDifferent!522 lt!494605 lt!494590 zeroValue!831 lt!494591))))

(assert (=> b!1102401 (= (apply!988 (+!3371 lt!494605 (tuple2!17473 lt!494590 zeroValue!831)) lt!494591) (apply!988 lt!494605 lt!494591))))

(declare-fun lt!494595 () Unit!36157)

(assert (=> b!1102401 (= lt!494595 lt!494606)))

(declare-fun lt!494603 () ListLongMap!15453)

(assert (=> b!1102401 (= lt!494603 (getCurrentListMapNoExtraKeys!4212 lt!494445 lt!494450 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun lt!494600 () (_ BitVec 64))

(assert (=> b!1102401 (= lt!494600 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!494607 () (_ BitVec 64))

(assert (=> b!1102401 (= lt!494607 (select (arr!34344 lt!494445) #b00000000000000000000000000000000))))

(assert (=> b!1102401 (= lt!494596 (addApplyDifferent!522 lt!494603 lt!494600 minValue!831 lt!494607))))

(assert (=> b!1102401 (= (apply!988 (+!3371 lt!494603 (tuple2!17473 lt!494600 minValue!831)) lt!494607) (apply!988 lt!494603 lt!494607))))

(declare-fun b!1102402 () Bool)

(assert (=> b!1102402 (= e!629265 call!46267)))

(declare-fun b!1102403 () Bool)

(declare-fun e!629275 () Bool)

(assert (=> b!1102403 (= e!629275 e!629270)))

(declare-fun c!108861 () Bool)

(assert (=> b!1102403 (= c!108861 (not (= (bvand extraKeys!811 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun c!108859 () Bool)

(declare-fun bm!46262 () Bool)

(declare-fun c!108863 () Bool)

(declare-fun call!46266 () ListLongMap!15453)

(assert (=> bm!46262 (= call!46270 (+!3371 (ite c!108859 call!46266 (ite c!108863 call!46265 call!46269)) (ite (or c!108859 c!108863) (tuple2!17473 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!831) (tuple2!17473 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!831))))))

(declare-fun b!1102404 () Bool)

(declare-fun e!629271 () Bool)

(assert (=> b!1102404 (= e!629270 e!629271)))

(declare-fun res!735643 () Bool)

(assert (=> b!1102404 (= res!735643 call!46268)))

(assert (=> b!1102404 (=> (not res!735643) (not e!629271))))

(declare-fun bm!46263 () Bool)

(assert (=> bm!46263 (= call!46268 (contains!6421 lt!494601 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1102405 () Bool)

(assert (=> b!1102405 (= e!629266 e!629268)))

(assert (=> b!1102405 (= c!108863 (and (not (= (bvand extraKeys!811 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeys!811 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1102406 () Bool)

(declare-fun res!735644 () Bool)

(assert (=> b!1102406 (=> (not res!735644) (not e!629275))))

(assert (=> b!1102406 (= res!735644 e!629273)))

(declare-fun res!735639 () Bool)

(assert (=> b!1102406 (=> res!735639 e!629273)))

(assert (=> b!1102406 (= res!735639 (not e!629264))))

(declare-fun res!735647 () Bool)

(assert (=> b!1102406 (=> (not res!735647) (not e!629264))))

(assert (=> b!1102406 (= res!735647 (bvslt #b00000000000000000000000000000000 (size!34881 lt!494445)))))

(declare-fun bm!46264 () Bool)

(assert (=> bm!46264 (= call!46266 (getCurrentListMapNoExtraKeys!4212 lt!494445 lt!494450 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun b!1102407 () Bool)

(assert (=> b!1102407 (= e!629271 (= (apply!988 lt!494601 #b1000000000000000000000000000000000000000000000000000000000000000) minValue!831))))

(declare-fun b!1102408 () Bool)

(declare-fun res!735641 () Bool)

(assert (=> b!1102408 (=> (not res!735641) (not e!629275))))

(assert (=> b!1102408 (= res!735641 e!629274)))

(declare-fun c!108858 () Bool)

(assert (=> b!1102408 (= c!108858 (not (= (bvand extraKeys!811 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun bm!46265 () Bool)

(assert (=> bm!46265 (= call!46265 call!46266)))

(declare-fun b!1102409 () Bool)

(assert (=> b!1102409 (= e!629274 (not call!46264))))

(declare-fun d!130699 () Bool)

(assert (=> d!130699 e!629275))

(declare-fun res!735640 () Bool)

(assert (=> d!130699 (=> (not res!735640) (not e!629275))))

(assert (=> d!130699 (= res!735640 (or (bvsge #b00000000000000000000000000000000 (size!34881 lt!494445)) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!34881 lt!494445)))))))

(declare-fun lt!494598 () ListLongMap!15453)

(assert (=> d!130699 (= lt!494601 lt!494598)))

(declare-fun lt!494597 () Unit!36157)

(assert (=> d!130699 (= lt!494597 e!629272)))

(declare-fun c!108860 () Bool)

(declare-fun e!629267 () Bool)

(assert (=> d!130699 (= c!108860 e!629267)))

(declare-fun res!735645 () Bool)

(assert (=> d!130699 (=> (not res!735645) (not e!629267))))

(assert (=> d!130699 (= res!735645 (bvslt #b00000000000000000000000000000000 (size!34881 lt!494445)))))

(assert (=> d!130699 (= lt!494598 e!629266)))

(assert (=> d!130699 (= c!108859 (and (not (= (bvand extraKeys!811 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!811 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!130699 (validMask!0 mask!1414)))

(assert (=> d!130699 (= (getCurrentListMap!4425 lt!494445 lt!494450 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882) lt!494601)))

(declare-fun bm!46266 () Bool)

(assert (=> bm!46266 (= call!46264 (contains!6421 lt!494601 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun bm!46267 () Bool)

(assert (=> bm!46267 (= call!46267 call!46270)))

(declare-fun b!1102410 () Bool)

(assert (=> b!1102410 (= e!629267 (validKeyInArray!0 (select (arr!34344 lt!494445) #b00000000000000000000000000000000)))))

(assert (= (and d!130699 c!108859) b!1102392))

(assert (= (and d!130699 (not c!108859)) b!1102405))

(assert (= (and b!1102405 c!108863) b!1102394))

(assert (= (and b!1102405 (not c!108863)) b!1102398))

(assert (= (and b!1102398 c!108862) b!1102402))

(assert (= (and b!1102398 (not c!108862)) b!1102396))

(assert (= (or b!1102402 b!1102396) bm!46261))

(assert (= (or b!1102394 bm!46261) bm!46265))

(assert (= (or b!1102394 b!1102402) bm!46267))

(assert (= (or b!1102392 bm!46265) bm!46264))

(assert (= (or b!1102392 bm!46267) bm!46262))

(assert (= (and d!130699 res!735645) b!1102410))

(assert (= (and d!130699 c!108860) b!1102401))

(assert (= (and d!130699 (not c!108860)) b!1102400))

(assert (= (and d!130699 res!735640) b!1102406))

(assert (= (and b!1102406 res!735647) b!1102397))

(assert (= (and b!1102406 (not res!735639)) b!1102390))

(assert (= (and b!1102390 res!735646) b!1102399))

(assert (= (and b!1102406 res!735644) b!1102408))

(assert (= (and b!1102408 c!108858) b!1102391))

(assert (= (and b!1102408 (not c!108858)) b!1102409))

(assert (= (and b!1102391 res!735642) b!1102393))

(assert (= (or b!1102391 b!1102409) bm!46266))

(assert (= (and b!1102408 res!735641) b!1102403))

(assert (= (and b!1102403 c!108861) b!1102404))

(assert (= (and b!1102403 (not c!108861)) b!1102395))

(assert (= (and b!1102404 res!735643) b!1102407))

(assert (= (or b!1102404 b!1102395) bm!46263))

(declare-fun b_lambda!18201 () Bool)

(assert (=> (not b_lambda!18201) (not b!1102399)))

(assert (=> b!1102399 t!34394))

(declare-fun b_and!37235 () Bool)

(assert (= b_and!37233 (and (=> t!34394 result!16681) b_and!37235)))

(declare-fun m!1022817 () Bool)

(assert (=> bm!46266 m!1022817))

(assert (=> b!1102397 m!1022703))

(assert (=> b!1102397 m!1022703))

(assert (=> b!1102397 m!1022707))

(declare-fun m!1022819 () Bool)

(assert (=> b!1102392 m!1022819))

(declare-fun m!1022821 () Bool)

(assert (=> bm!46263 m!1022821))

(assert (=> b!1102399 m!1022789))

(assert (=> b!1102399 m!1022643))

(assert (=> b!1102399 m!1022795))

(assert (=> b!1102399 m!1022703))

(assert (=> b!1102399 m!1022643))

(assert (=> b!1102399 m!1022789))

(assert (=> b!1102399 m!1022703))

(declare-fun m!1022823 () Bool)

(assert (=> b!1102399 m!1022823))

(assert (=> b!1102390 m!1022703))

(assert (=> b!1102390 m!1022703))

(declare-fun m!1022825 () Bool)

(assert (=> b!1102390 m!1022825))

(declare-fun m!1022827 () Bool)

(assert (=> b!1102407 m!1022827))

(declare-fun m!1022829 () Bool)

(assert (=> bm!46262 m!1022829))

(assert (=> d!130699 m!1022627))

(assert (=> b!1102401 m!1022655))

(declare-fun m!1022831 () Bool)

(assert (=> b!1102401 m!1022831))

(assert (=> b!1102401 m!1022703))

(declare-fun m!1022833 () Bool)

(assert (=> b!1102401 m!1022833))

(declare-fun m!1022835 () Bool)

(assert (=> b!1102401 m!1022835))

(declare-fun m!1022837 () Bool)

(assert (=> b!1102401 m!1022837))

(declare-fun m!1022839 () Bool)

(assert (=> b!1102401 m!1022839))

(declare-fun m!1022841 () Bool)

(assert (=> b!1102401 m!1022841))

(declare-fun m!1022843 () Bool)

(assert (=> b!1102401 m!1022843))

(declare-fun m!1022845 () Bool)

(assert (=> b!1102401 m!1022845))

(declare-fun m!1022847 () Bool)

(assert (=> b!1102401 m!1022847))

(declare-fun m!1022849 () Bool)

(assert (=> b!1102401 m!1022849))

(declare-fun m!1022851 () Bool)

(assert (=> b!1102401 m!1022851))

(declare-fun m!1022853 () Bool)

(assert (=> b!1102401 m!1022853))

(assert (=> b!1102401 m!1022833))

(assert (=> b!1102401 m!1022849))

(declare-fun m!1022855 () Bool)

(assert (=> b!1102401 m!1022855))

(declare-fun m!1022857 () Bool)

(assert (=> b!1102401 m!1022857))

(assert (=> b!1102401 m!1022843))

(declare-fun m!1022859 () Bool)

(assert (=> b!1102401 m!1022859))

(assert (=> b!1102401 m!1022845))

(declare-fun m!1022861 () Bool)

(assert (=> b!1102393 m!1022861))

(assert (=> b!1102410 m!1022703))

(assert (=> b!1102410 m!1022703))

(assert (=> b!1102410 m!1022707))

(assert (=> bm!46264 m!1022655))

(assert (=> b!1102199 d!130699))

(declare-fun d!130701 () Bool)

(declare-fun lt!494610 () ListLongMap!15453)

(assert (=> d!130701 (not (contains!6421 lt!494610 k0!904))))

(declare-fun removeStrictlySorted!88 (List!24144 (_ BitVec 64)) List!24144)

(assert (=> d!130701 (= lt!494610 (ListLongMap!15454 (removeStrictlySorted!88 (toList!7742 lt!494447) k0!904)))))

(assert (=> d!130701 (= (-!979 lt!494447 k0!904) lt!494610)))

(declare-fun bs!32338 () Bool)

(assert (= bs!32338 d!130701))

(declare-fun m!1022863 () Bool)

(assert (=> bs!32338 m!1022863))

(declare-fun m!1022865 () Bool)

(assert (=> bs!32338 m!1022865))

(assert (=> b!1102199 d!130701))

(declare-fun b!1102411 () Bool)

(declare-fun e!629277 () Bool)

(declare-fun lt!494611 () ListLongMap!15453)

(assert (=> b!1102411 (= e!629277 (isEmpty!974 lt!494611))))

(declare-fun b!1102412 () Bool)

(declare-fun e!629283 () ListLongMap!15453)

(assert (=> b!1102412 (= e!629283 (ListLongMap!15454 Nil!24141))))

(declare-fun b!1102413 () Bool)

(declare-fun lt!494615 () Unit!36157)

(declare-fun lt!494614 () Unit!36157)

(assert (=> b!1102413 (= lt!494615 lt!494614)))

(declare-fun lt!494612 () (_ BitVec 64))

(declare-fun lt!494613 () (_ BitVec 64))

(declare-fun lt!494616 () V!41459)

(declare-fun lt!494617 () ListLongMap!15453)

(assert (=> b!1102413 (not (contains!6421 (+!3371 lt!494617 (tuple2!17473 lt!494613 lt!494616)) lt!494612))))

(assert (=> b!1102413 (= lt!494614 (addStillNotContains!283 lt!494617 lt!494613 lt!494616 lt!494612))))

(assert (=> b!1102413 (= lt!494612 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!1102413 (= lt!494616 (get!17676 (select (arr!34345 _values!874) #b00000000000000000000000000000000) (dynLambda!2343 defaultEntry!882 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!1102413 (= lt!494613 (select (arr!34344 _keys!1070) #b00000000000000000000000000000000))))

(declare-fun call!46271 () ListLongMap!15453)

(assert (=> b!1102413 (= lt!494617 call!46271)))

(declare-fun e!629279 () ListLongMap!15453)

(assert (=> b!1102413 (= e!629279 (+!3371 call!46271 (tuple2!17473 (select (arr!34344 _keys!1070) #b00000000000000000000000000000000) (get!17676 (select (arr!34345 _values!874) #b00000000000000000000000000000000) (dynLambda!2343 defaultEntry!882 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!1102414 () Bool)

(declare-fun e!629278 () Bool)

(declare-fun e!629281 () Bool)

(assert (=> b!1102414 (= e!629278 e!629281)))

(assert (=> b!1102414 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!34881 _keys!1070)))))

(declare-fun res!735649 () Bool)

(assert (=> b!1102414 (= res!735649 (contains!6421 lt!494611 (select (arr!34344 _keys!1070) #b00000000000000000000000000000000)))))

(assert (=> b!1102414 (=> (not res!735649) (not e!629281))))

(declare-fun b!1102415 () Bool)

(declare-fun e!629282 () Bool)

(assert (=> b!1102415 (= e!629282 (validKeyInArray!0 (select (arr!34344 _keys!1070) #b00000000000000000000000000000000)))))

(assert (=> b!1102415 (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000)))

(declare-fun b!1102416 () Bool)

(declare-fun e!629280 () Bool)

(assert (=> b!1102416 (= e!629280 e!629278)))

(declare-fun c!108866 () Bool)

(assert (=> b!1102416 (= c!108866 e!629282)))

(declare-fun res!735650 () Bool)

(assert (=> b!1102416 (=> (not res!735650) (not e!629282))))

(assert (=> b!1102416 (= res!735650 (bvslt #b00000000000000000000000000000000 (size!34881 _keys!1070)))))

(declare-fun d!130703 () Bool)

(assert (=> d!130703 e!629280))

(declare-fun res!735651 () Bool)

(assert (=> d!130703 (=> (not res!735651) (not e!629280))))

(assert (=> d!130703 (= res!735651 (not (contains!6421 lt!494611 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!130703 (= lt!494611 e!629283)))

(declare-fun c!108867 () Bool)

(assert (=> d!130703 (= c!108867 (bvsge #b00000000000000000000000000000000 (size!34881 _keys!1070)))))

(assert (=> d!130703 (validMask!0 mask!1414)))

(assert (=> d!130703 (= (getCurrentListMapNoExtraKeys!4212 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882) lt!494611)))

(declare-fun b!1102417 () Bool)

(assert (=> b!1102417 (= e!629277 (= lt!494611 (getCurrentListMapNoExtraKeys!4212 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) defaultEntry!882)))))

(declare-fun bm!46268 () Bool)

(assert (=> bm!46268 (= call!46271 (getCurrentListMapNoExtraKeys!4212 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) defaultEntry!882))))

(declare-fun b!1102418 () Bool)

(assert (=> b!1102418 (= e!629279 call!46271)))

(declare-fun b!1102419 () Bool)

(assert (=> b!1102419 (= e!629283 e!629279)))

(declare-fun c!108864 () Bool)

(assert (=> b!1102419 (= c!108864 (validKeyInArray!0 (select (arr!34344 _keys!1070) #b00000000000000000000000000000000)))))

(declare-fun b!1102420 () Bool)

(assert (=> b!1102420 (= e!629278 e!629277)))

(declare-fun c!108865 () Bool)

(assert (=> b!1102420 (= c!108865 (bvslt #b00000000000000000000000000000000 (size!34881 _keys!1070)))))

(declare-fun b!1102421 () Bool)

(assert (=> b!1102421 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!34881 _keys!1070)))))

(assert (=> b!1102421 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!34882 _values!874)))))

(assert (=> b!1102421 (= e!629281 (= (apply!988 lt!494611 (select (arr!34344 _keys!1070) #b00000000000000000000000000000000)) (get!17676 (select (arr!34345 _values!874) #b00000000000000000000000000000000) (dynLambda!2343 defaultEntry!882 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1102422 () Bool)

(declare-fun res!735648 () Bool)

(assert (=> b!1102422 (=> (not res!735648) (not e!629280))))

(assert (=> b!1102422 (= res!735648 (not (contains!6421 lt!494611 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!130703 c!108867) b!1102412))

(assert (= (and d!130703 (not c!108867)) b!1102419))

(assert (= (and b!1102419 c!108864) b!1102413))

(assert (= (and b!1102419 (not c!108864)) b!1102418))

(assert (= (or b!1102413 b!1102418) bm!46268))

(assert (= (and d!130703 res!735651) b!1102422))

(assert (= (and b!1102422 res!735648) b!1102416))

(assert (= (and b!1102416 res!735650) b!1102415))

(assert (= (and b!1102416 c!108866) b!1102414))

(assert (= (and b!1102416 (not c!108866)) b!1102420))

(assert (= (and b!1102414 res!735649) b!1102421))

(assert (= (and b!1102420 c!108865) b!1102417))

(assert (= (and b!1102420 (not c!108865)) b!1102411))

(declare-fun b_lambda!18203 () Bool)

(assert (=> (not b_lambda!18203) (not b!1102413)))

(assert (=> b!1102413 t!34394))

(declare-fun b_and!37237 () Bool)

(assert (= b_and!37235 (and (=> t!34394 result!16681) b_and!37237)))

(declare-fun b_lambda!18205 () Bool)

(assert (=> (not b_lambda!18205) (not b!1102421)))

(assert (=> b!1102421 t!34394))

(declare-fun b_and!37239 () Bool)

(assert (= b_and!37237 (and (=> t!34394 result!16681) b_and!37239)))

(declare-fun m!1022867 () Bool)

(assert (=> d!130703 m!1022867))

(assert (=> d!130703 m!1022627))

(assert (=> b!1102413 m!1022743))

(declare-fun m!1022869 () Bool)

(assert (=> b!1102413 m!1022869))

(assert (=> b!1102413 m!1022643))

(declare-fun m!1022871 () Bool)

(assert (=> b!1102413 m!1022871))

(assert (=> b!1102413 m!1022743))

(assert (=> b!1102413 m!1022643))

(assert (=> b!1102413 m!1022745))

(declare-fun m!1022873 () Bool)

(assert (=> b!1102413 m!1022873))

(assert (=> b!1102413 m!1022711))

(assert (=> b!1102413 m!1022871))

(declare-fun m!1022875 () Bool)

(assert (=> b!1102413 m!1022875))

(assert (=> b!1102421 m!1022743))

(assert (=> b!1102421 m!1022643))

(assert (=> b!1102421 m!1022711))

(declare-fun m!1022877 () Bool)

(assert (=> b!1102421 m!1022877))

(assert (=> b!1102421 m!1022743))

(assert (=> b!1102421 m!1022643))

(assert (=> b!1102421 m!1022745))

(assert (=> b!1102421 m!1022711))

(assert (=> b!1102415 m!1022711))

(assert (=> b!1102415 m!1022711))

(assert (=> b!1102415 m!1022721))

(assert (=> b!1102414 m!1022711))

(assert (=> b!1102414 m!1022711))

(declare-fun m!1022879 () Bool)

(assert (=> b!1102414 m!1022879))

(declare-fun m!1022881 () Bool)

(assert (=> b!1102417 m!1022881))

(assert (=> bm!46268 m!1022881))

(declare-fun m!1022883 () Bool)

(assert (=> b!1102411 m!1022883))

(assert (=> b!1102419 m!1022711))

(assert (=> b!1102419 m!1022711))

(assert (=> b!1102419 m!1022721))

(declare-fun m!1022885 () Bool)

(assert (=> b!1102422 m!1022885))

(assert (=> b!1102199 d!130703))

(declare-fun d!130705 () Bool)

(assert (=> d!130705 (arrayContainsKey!0 _keys!1070 k0!904 #b00000000000000000000000000000000)))

(declare-fun lt!494620 () Unit!36157)

(declare-fun choose!13 (array!71372 (_ BitVec 64) (_ BitVec 32)) Unit!36157)

(assert (=> d!130705 (= lt!494620 (choose!13 _keys!1070 k0!904 i!650))))

(assert (=> d!130705 (bvsge i!650 #b00000000000000000000000000000000)))

(assert (=> d!130705 (= (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1070 k0!904 i!650) lt!494620)))

(declare-fun bs!32339 () Bool)

(assert (= bs!32339 d!130705))

(assert (=> bs!32339 m!1022653))

(declare-fun m!1022887 () Bool)

(assert (=> bs!32339 m!1022887))

(assert (=> b!1102199 d!130705))

(declare-fun b!1102429 () Bool)

(declare-fun e!629289 () Bool)

(assert (=> b!1102429 (= e!629289 tp_is_empty!27249)))

(declare-fun mapNonEmpty!42670 () Bool)

(declare-fun mapRes!42670 () Bool)

(declare-fun tp!81564 () Bool)

(assert (=> mapNonEmpty!42670 (= mapRes!42670 (and tp!81564 e!629289))))

(declare-fun mapRest!42670 () (Array (_ BitVec 32) ValueCell!12915))

(declare-fun mapValue!42670 () ValueCell!12915)

(declare-fun mapKey!42670 () (_ BitVec 32))

(assert (=> mapNonEmpty!42670 (= mapRest!42664 (store mapRest!42670 mapKey!42670 mapValue!42670))))

(declare-fun b!1102430 () Bool)

(declare-fun e!629288 () Bool)

(assert (=> b!1102430 (= e!629288 tp_is_empty!27249)))

(declare-fun mapIsEmpty!42670 () Bool)

(assert (=> mapIsEmpty!42670 mapRes!42670))

(declare-fun condMapEmpty!42670 () Bool)

(declare-fun mapDefault!42670 () ValueCell!12915)

(assert (=> mapNonEmpty!42664 (= condMapEmpty!42670 (= mapRest!42664 ((as const (Array (_ BitVec 32) ValueCell!12915)) mapDefault!42670)))))

(assert (=> mapNonEmpty!42664 (= tp!81555 (and e!629288 mapRes!42670))))

(assert (= (and mapNonEmpty!42664 condMapEmpty!42670) mapIsEmpty!42670))

(assert (= (and mapNonEmpty!42664 (not condMapEmpty!42670)) mapNonEmpty!42670))

(assert (= (and mapNonEmpty!42670 ((_ is ValueCellFull!12915) mapValue!42670)) b!1102429))

(assert (= (and mapNonEmpty!42664 ((_ is ValueCellFull!12915) mapDefault!42670)) b!1102430))

(declare-fun m!1022889 () Bool)

(assert (=> mapNonEmpty!42670 m!1022889))

(declare-fun b_lambda!18207 () Bool)

(assert (= b_lambda!18195 (or (and start!96918 b_free!23199) b_lambda!18207)))

(declare-fun b_lambda!18209 () Bool)

(assert (= b_lambda!18197 (or (and start!96918 b_free!23199) b_lambda!18209)))

(declare-fun b_lambda!18211 () Bool)

(assert (= b_lambda!18199 (or (and start!96918 b_free!23199) b_lambda!18211)))

(declare-fun b_lambda!18213 () Bool)

(assert (= b_lambda!18205 (or (and start!96918 b_free!23199) b_lambda!18213)))

(declare-fun b_lambda!18215 () Bool)

(assert (= b_lambda!18203 (or (and start!96918 b_free!23199) b_lambda!18215)))

(declare-fun b_lambda!18217 () Bool)

(assert (= b_lambda!18193 (or (and start!96918 b_free!23199) b_lambda!18217)))

(declare-fun b_lambda!18219 () Bool)

(assert (= b_lambda!18201 (or (and start!96918 b_free!23199) b_lambda!18219)))

(check-sat (not b!1102274) (not bm!46259) (not b!1102393) (not b!1102392) (not b!1102266) (not bm!46268) (not mapNonEmpty!42670) (not b!1102344) (not b!1102377) (not b!1102407) (not bm!46248) (not b!1102401) (not bm!46262) (not bm!46264) (not b!1102410) (not b!1102379) (not b!1102371) (not bm!46247) (not b!1102265) (not d!130697) (not b!1102414) (not b!1102415) (not bm!46229) (not d!130705) (not d!130695) (not bm!46228) (not b!1102421) (not b!1102254) (not b!1102369) (not bm!46250) (not b_lambda!18215) (not b!1102326) (not b!1102380) (not b!1102275) (not bm!46266) (not bm!46254) (not b!1102422) (not b!1102271) (not d!130701) (not b!1102373) (not bm!46225) (not b!1102333) (not b!1102335) (not b!1102341) b_and!37239 (not b_lambda!18213) (not b_lambda!18209) (not bm!46246) (not b_lambda!18217) (not b_lambda!18219) (not bm!46260) (not b!1102253) (not b!1102411) (not b!1102270) (not b!1102419) (not b_lambda!18207) (not d!130699) (not b_lambda!18211) (not bm!46263) (not b!1102372) (not b!1102397) (not b!1102327) tp_is_empty!27249 (not b!1102331) (not b!1102417) (not d!130693) (not b!1102390) (not d!130703) (not b_lambda!18191) (not b_next!23199) (not b!1102324) (not b!1102413) (not b!1102251) (not b!1102375) (not b!1102399) (not b!1102268) (not bm!46230) (not b!1102387) (not b!1102281))
(check-sat b_and!37239 (not b_next!23199))
