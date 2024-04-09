; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!96960 () Bool)

(assert start!96960)

(declare-fun b_free!23217 () Bool)

(declare-fun b_next!23217 () Bool)

(assert (=> start!96960 (= b_free!23217 (not b_next!23217))))

(declare-fun tp!81611 () Bool)

(declare-fun b_and!37269 () Bool)

(assert (=> start!96960 (= tp!81611 b_and!37269)))

(declare-fun b!1102726 () Bool)

(declare-fun e!629434 () Bool)

(declare-fun e!629437 () Bool)

(declare-fun mapRes!42694 () Bool)

(assert (=> b!1102726 (= e!629434 (and e!629437 mapRes!42694))))

(declare-fun condMapEmpty!42694 () Bool)

(declare-datatypes ((V!41483 0))(
  ( (V!41484 (val!13690 Int)) )
))
(declare-datatypes ((ValueCell!12924 0))(
  ( (ValueCellFull!12924 (v!16322 V!41483)) (EmptyCell!12924) )
))
(declare-datatypes ((array!71410 0))(
  ( (array!71411 (arr!34362 (Array (_ BitVec 32) ValueCell!12924)) (size!34899 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!71410)

(declare-fun mapDefault!42694 () ValueCell!12924)

(assert (=> b!1102726 (= condMapEmpty!42694 (= (arr!34362 _values!874) ((as const (Array (_ BitVec 32) ValueCell!12924)) mapDefault!42694)))))

(declare-fun b!1102727 () Bool)

(declare-fun e!629436 () Bool)

(declare-fun e!629435 () Bool)

(assert (=> b!1102727 (= e!629436 (not e!629435))))

(declare-fun res!735872 () Bool)

(assert (=> b!1102727 (=> res!735872 e!629435)))

(declare-fun lt!494843 () Bool)

(declare-fun extraKeys!811 () (_ BitVec 32))

(declare-datatypes ((tuple2!17482 0))(
  ( (tuple2!17483 (_1!8751 (_ BitVec 64)) (_2!8751 V!41483)) )
))
(declare-datatypes ((List!24155 0))(
  ( (Nil!24152) (Cons!24151 (h!25360 tuple2!17482) (t!34425 List!24155)) )
))
(declare-datatypes ((ListLongMap!15463 0))(
  ( (ListLongMap!15464 (toList!7747 List!24155)) )
))
(declare-fun lt!494847 () ListLongMap!15463)

(declare-fun lt!494850 () ListLongMap!15463)

(assert (=> b!1102727 (= res!735872 (or (and (not lt!494843) (not (= (bvand extraKeys!811 #b00000000000000000000000000000010) #b00000000000000000000000000000000))) (and (not lt!494843) (= (bvand extraKeys!811 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (and (not (= (bvand extraKeys!811 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!494843) (not (= lt!494847 lt!494850))))))

(assert (=> b!1102727 (= lt!494843 (= (bvand extraKeys!811 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(declare-fun defaultEntry!882 () Int)

(declare-fun minValue!831 () V!41483)

(declare-fun mask!1414 () (_ BitVec 32))

(declare-fun lt!494846 () ListLongMap!15463)

(declare-fun zeroValue!831 () V!41483)

(declare-datatypes ((array!71412 0))(
  ( (array!71413 (arr!34363 (Array (_ BitVec 32) (_ BitVec 64))) (size!34900 (_ BitVec 32))) )
))
(declare-fun _keys!1070 () array!71412)

(declare-fun getCurrentListMap!4430 (array!71412 array!71410 (_ BitVec 32) (_ BitVec 32) V!41483 V!41483 (_ BitVec 32) Int) ListLongMap!15463)

(assert (=> b!1102727 (= lt!494846 (getCurrentListMap!4430 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun lt!494849 () array!71410)

(declare-fun lt!494848 () array!71412)

(assert (=> b!1102727 (= lt!494847 (getCurrentListMap!4430 lt!494848 lt!494849 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun lt!494851 () ListLongMap!15463)

(assert (=> b!1102727 (and (= lt!494850 lt!494851) (= lt!494851 lt!494850))))

(declare-fun lt!494844 () ListLongMap!15463)

(declare-fun k0!904 () (_ BitVec 64))

(declare-fun -!984 (ListLongMap!15463 (_ BitVec 64)) ListLongMap!15463)

(assert (=> b!1102727 (= lt!494851 (-!984 lt!494844 k0!904))))

(declare-datatypes ((Unit!36169 0))(
  ( (Unit!36170) )
))
(declare-fun lt!494845 () Unit!36169)

(declare-fun i!650 () (_ BitVec 32))

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!242 (array!71412 array!71410 (_ BitVec 32) (_ BitVec 32) V!41483 V!41483 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!36169)

(assert (=> b!1102727 (= lt!494845 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!242 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 i!650 k0!904 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun getCurrentListMapNoExtraKeys!4217 (array!71412 array!71410 (_ BitVec 32) (_ BitVec 32) V!41483 V!41483 (_ BitVec 32) Int) ListLongMap!15463)

(assert (=> b!1102727 (= lt!494850 (getCurrentListMapNoExtraKeys!4217 lt!494848 lt!494849 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun dynLambda!2348 (Int (_ BitVec 64)) V!41483)

(assert (=> b!1102727 (= lt!494849 (array!71411 (store (arr!34362 _values!874) i!650 (ValueCellFull!12924 (dynLambda!2348 defaultEntry!882 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!34899 _values!874)))))

(assert (=> b!1102727 (= lt!494844 (getCurrentListMapNoExtraKeys!4217 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun arrayContainsKey!0 (array!71412 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1102727 (arrayContainsKey!0 _keys!1070 k0!904 #b00000000000000000000000000000000)))

(declare-fun lt!494842 () Unit!36169)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!71412 (_ BitVec 64) (_ BitVec 32)) Unit!36169)

(assert (=> b!1102727 (= lt!494842 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1070 k0!904 i!650))))

(declare-fun b!1102728 () Bool)

(declare-fun res!735866 () Bool)

(declare-fun e!629439 () Bool)

(assert (=> b!1102728 (=> (not res!735866) (not e!629439))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1102728 (= res!735866 (validKeyInArray!0 k0!904))))

(declare-fun mapIsEmpty!42694 () Bool)

(assert (=> mapIsEmpty!42694 mapRes!42694))

(declare-fun b!1102729 () Bool)

(declare-fun e!629433 () Bool)

(declare-fun tp_is_empty!27267 () Bool)

(assert (=> b!1102729 (= e!629433 tp_is_empty!27267)))

(declare-fun b!1102730 () Bool)

(declare-fun res!735869 () Bool)

(assert (=> b!1102730 (=> (not res!735869) (not e!629439))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!71412 (_ BitVec 32)) Bool)

(assert (=> b!1102730 (= res!735869 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1070 mask!1414))))

(declare-fun b!1102731 () Bool)

(declare-fun res!735868 () Bool)

(assert (=> b!1102731 (=> (not res!735868) (not e!629436))))

(declare-datatypes ((List!24156 0))(
  ( (Nil!24153) (Cons!24152 (h!25361 (_ BitVec 64)) (t!34426 List!24156)) )
))
(declare-fun arrayNoDuplicates!0 (array!71412 (_ BitVec 32) List!24156) Bool)

(assert (=> b!1102731 (= res!735868 (arrayNoDuplicates!0 lt!494848 #b00000000000000000000000000000000 Nil!24153))))

(declare-fun b!1102732 () Bool)

(declare-fun res!735873 () Bool)

(assert (=> b!1102732 (=> (not res!735873) (not e!629439))))

(assert (=> b!1102732 (= res!735873 (and (= (size!34899 _values!874) (bvadd #b00000000000000000000000000000001 mask!1414)) (= (size!34900 _keys!1070) (size!34899 _values!874)) (bvsge mask!1414 #b00000000000000000000000000000000) (bvsge extraKeys!811 #b00000000000000000000000000000000) (bvsle extraKeys!811 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!42694 () Bool)

(declare-fun tp!81612 () Bool)

(assert (=> mapNonEmpty!42694 (= mapRes!42694 (and tp!81612 e!629433))))

(declare-fun mapRest!42694 () (Array (_ BitVec 32) ValueCell!12924))

(declare-fun mapValue!42694 () ValueCell!12924)

(declare-fun mapKey!42694 () (_ BitVec 32))

(assert (=> mapNonEmpty!42694 (= (arr!34362 _values!874) (store mapRest!42694 mapKey!42694 mapValue!42694))))

(declare-fun b!1102733 () Bool)

(assert (=> b!1102733 (= e!629435 (= (-!984 lt!494846 k0!904) lt!494847))))

(declare-fun b!1102734 () Bool)

(assert (=> b!1102734 (= e!629437 tp_is_empty!27267)))

(declare-fun b!1102736 () Bool)

(declare-fun res!735871 () Bool)

(assert (=> b!1102736 (=> (not res!735871) (not e!629439))))

(assert (=> b!1102736 (= res!735871 (arrayNoDuplicates!0 _keys!1070 #b00000000000000000000000000000000 Nil!24153))))

(declare-fun b!1102737 () Bool)

(assert (=> b!1102737 (= e!629439 e!629436)))

(declare-fun res!735870 () Bool)

(assert (=> b!1102737 (=> (not res!735870) (not e!629436))))

(assert (=> b!1102737 (= res!735870 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!494848 mask!1414))))

(assert (=> b!1102737 (= lt!494848 (array!71413 (store (arr!34363 _keys!1070) i!650 #b1000000000000000000000000000000000000000000000000000000000000000) (size!34900 _keys!1070)))))

(declare-fun b!1102738 () Bool)

(declare-fun res!735864 () Bool)

(assert (=> b!1102738 (=> (not res!735864) (not e!629439))))

(assert (=> b!1102738 (= res!735864 (= (select (arr!34363 _keys!1070) i!650) k0!904))))

(declare-fun res!735867 () Bool)

(assert (=> start!96960 (=> (not res!735867) (not e!629439))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!96960 (= res!735867 (validMask!0 mask!1414))))

(assert (=> start!96960 e!629439))

(assert (=> start!96960 tp!81611))

(assert (=> start!96960 true))

(assert (=> start!96960 tp_is_empty!27267))

(declare-fun array_inv!26320 (array!71412) Bool)

(assert (=> start!96960 (array_inv!26320 _keys!1070)))

(declare-fun array_inv!26321 (array!71410) Bool)

(assert (=> start!96960 (and (array_inv!26321 _values!874) e!629434)))

(declare-fun b!1102735 () Bool)

(declare-fun res!735865 () Bool)

(assert (=> b!1102735 (=> (not res!735865) (not e!629439))))

(assert (=> b!1102735 (= res!735865 (and (bvsge i!650 #b00000000000000000000000000000000) (bvslt i!650 (size!34900 _keys!1070))))))

(assert (= (and start!96960 res!735867) b!1102732))

(assert (= (and b!1102732 res!735873) b!1102730))

(assert (= (and b!1102730 res!735869) b!1102736))

(assert (= (and b!1102736 res!735871) b!1102735))

(assert (= (and b!1102735 res!735865) b!1102728))

(assert (= (and b!1102728 res!735866) b!1102738))

(assert (= (and b!1102738 res!735864) b!1102737))

(assert (= (and b!1102737 res!735870) b!1102731))

(assert (= (and b!1102731 res!735868) b!1102727))

(assert (= (and b!1102727 (not res!735872)) b!1102733))

(assert (= (and b!1102726 condMapEmpty!42694) mapIsEmpty!42694))

(assert (= (and b!1102726 (not condMapEmpty!42694)) mapNonEmpty!42694))

(get-info :version)

(assert (= (and mapNonEmpty!42694 ((_ is ValueCellFull!12924) mapValue!42694)) b!1102729))

(assert (= (and b!1102726 ((_ is ValueCellFull!12924) mapDefault!42694)) b!1102734))

(assert (= start!96960 b!1102726))

(declare-fun b_lambda!18235 () Bool)

(assert (=> (not b_lambda!18235) (not b!1102727)))

(declare-fun t!34424 () Bool)

(declare-fun tb!8091 () Bool)

(assert (=> (and start!96960 (= defaultEntry!882 defaultEntry!882) t!34424) tb!8091))

(declare-fun result!16719 () Bool)

(assert (=> tb!8091 (= result!16719 tp_is_empty!27267)))

(assert (=> b!1102727 t!34424))

(declare-fun b_and!37271 () Bool)

(assert (= b_and!37269 (and (=> t!34424 result!16719) b_and!37271)))

(declare-fun m!1023187 () Bool)

(assert (=> b!1102737 m!1023187))

(declare-fun m!1023189 () Bool)

(assert (=> b!1102737 m!1023189))

(declare-fun m!1023191 () Bool)

(assert (=> b!1102738 m!1023191))

(declare-fun m!1023193 () Bool)

(assert (=> b!1102736 m!1023193))

(declare-fun m!1023195 () Bool)

(assert (=> b!1102728 m!1023195))

(declare-fun m!1023197 () Bool)

(assert (=> mapNonEmpty!42694 m!1023197))

(declare-fun m!1023199 () Bool)

(assert (=> b!1102731 m!1023199))

(declare-fun m!1023201 () Bool)

(assert (=> start!96960 m!1023201))

(declare-fun m!1023203 () Bool)

(assert (=> start!96960 m!1023203))

(declare-fun m!1023205 () Bool)

(assert (=> start!96960 m!1023205))

(declare-fun m!1023207 () Bool)

(assert (=> b!1102730 m!1023207))

(declare-fun m!1023209 () Bool)

(assert (=> b!1102727 m!1023209))

(declare-fun m!1023211 () Bool)

(assert (=> b!1102727 m!1023211))

(declare-fun m!1023213 () Bool)

(assert (=> b!1102727 m!1023213))

(declare-fun m!1023215 () Bool)

(assert (=> b!1102727 m!1023215))

(declare-fun m!1023217 () Bool)

(assert (=> b!1102727 m!1023217))

(declare-fun m!1023219 () Bool)

(assert (=> b!1102727 m!1023219))

(declare-fun m!1023221 () Bool)

(assert (=> b!1102727 m!1023221))

(declare-fun m!1023223 () Bool)

(assert (=> b!1102727 m!1023223))

(declare-fun m!1023225 () Bool)

(assert (=> b!1102727 m!1023225))

(declare-fun m!1023227 () Bool)

(assert (=> b!1102727 m!1023227))

(declare-fun m!1023229 () Bool)

(assert (=> b!1102733 m!1023229))

(check-sat b_and!37271 (not start!96960) (not b_next!23217) (not b!1102731) (not mapNonEmpty!42694) tp_is_empty!27267 (not b!1102728) (not b!1102737) (not b_lambda!18235) (not b!1102733) (not b!1102736) (not b!1102727) (not b!1102730))
(check-sat b_and!37271 (not b_next!23217))
(get-model)

(declare-fun b_lambda!18239 () Bool)

(assert (= b_lambda!18235 (or (and start!96960 b_free!23217) b_lambda!18239)))

(check-sat b_and!37271 (not start!96960) (not b_next!23217) (not b!1102731) (not mapNonEmpty!42694) tp_is_empty!27267 (not b!1102728) (not b!1102737) (not b!1102736) (not b!1102727) (not b!1102730) (not b_lambda!18239) (not b!1102733))
(check-sat b_and!37271 (not b_next!23217))
(get-model)

(declare-fun d!130713 () Bool)

(declare-fun res!735908 () Bool)

(declare-fun e!629465 () Bool)

(assert (=> d!130713 (=> res!735908 e!629465)))

(assert (=> d!130713 (= res!735908 (= (select (arr!34363 _keys!1070) #b00000000000000000000000000000000) k0!904))))

(assert (=> d!130713 (= (arrayContainsKey!0 _keys!1070 k0!904 #b00000000000000000000000000000000) e!629465)))

(declare-fun b!1102786 () Bool)

(declare-fun e!629466 () Bool)

(assert (=> b!1102786 (= e!629465 e!629466)))

(declare-fun res!735909 () Bool)

(assert (=> b!1102786 (=> (not res!735909) (not e!629466))))

(assert (=> b!1102786 (= res!735909 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!34900 _keys!1070)))))

(declare-fun b!1102787 () Bool)

(assert (=> b!1102787 (= e!629466 (arrayContainsKey!0 _keys!1070 k0!904 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!130713 (not res!735908)) b!1102786))

(assert (= (and b!1102786 res!735909) b!1102787))

(declare-fun m!1023275 () Bool)

(assert (=> d!130713 m!1023275))

(declare-fun m!1023277 () Bool)

(assert (=> b!1102787 m!1023277))

(assert (=> b!1102727 d!130713))

(declare-fun call!46287 () ListLongMap!15463)

(declare-fun c!108883 () Bool)

(declare-fun call!46291 () ListLongMap!15463)

(declare-fun call!46288 () ListLongMap!15463)

(declare-fun call!46292 () ListLongMap!15463)

(declare-fun c!108881 () Bool)

(declare-fun bm!46283 () Bool)

(declare-fun +!3372 (ListLongMap!15463 tuple2!17482) ListLongMap!15463)

(assert (=> bm!46283 (= call!46292 (+!3372 (ite c!108881 call!46287 (ite c!108883 call!46288 call!46291)) (ite (or c!108881 c!108883) (tuple2!17483 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!831) (tuple2!17483 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!831))))))

(declare-fun bm!46284 () Bool)

(declare-fun call!46290 () ListLongMap!15463)

(assert (=> bm!46284 (= call!46290 call!46292)))

(declare-fun bm!46285 () Bool)

(assert (=> bm!46285 (= call!46291 call!46288)))

(declare-fun b!1102830 () Bool)

(declare-fun e!629496 () ListLongMap!15463)

(assert (=> b!1102830 (= e!629496 call!46290)))

(declare-fun b!1102831 () Bool)

(declare-fun e!629498 () Unit!36169)

(declare-fun lt!494940 () Unit!36169)

(assert (=> b!1102831 (= e!629498 lt!494940)))

(declare-fun lt!494934 () ListLongMap!15463)

(assert (=> b!1102831 (= lt!494934 (getCurrentListMapNoExtraKeys!4217 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun lt!494932 () (_ BitVec 64))

(assert (=> b!1102831 (= lt!494932 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!494926 () (_ BitVec 64))

(assert (=> b!1102831 (= lt!494926 (select (arr!34363 _keys!1070) #b00000000000000000000000000000000))))

(declare-fun lt!494930 () Unit!36169)

(declare-fun addStillContains!671 (ListLongMap!15463 (_ BitVec 64) V!41483 (_ BitVec 64)) Unit!36169)

(assert (=> b!1102831 (= lt!494930 (addStillContains!671 lt!494934 lt!494932 zeroValue!831 lt!494926))))

(declare-fun contains!6422 (ListLongMap!15463 (_ BitVec 64)) Bool)

(assert (=> b!1102831 (contains!6422 (+!3372 lt!494934 (tuple2!17483 lt!494932 zeroValue!831)) lt!494926)))

(declare-fun lt!494946 () Unit!36169)

(assert (=> b!1102831 (= lt!494946 lt!494930)))

(declare-fun lt!494945 () ListLongMap!15463)

(assert (=> b!1102831 (= lt!494945 (getCurrentListMapNoExtraKeys!4217 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun lt!494943 () (_ BitVec 64))

(assert (=> b!1102831 (= lt!494943 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!494937 () (_ BitVec 64))

(assert (=> b!1102831 (= lt!494937 (select (arr!34363 _keys!1070) #b00000000000000000000000000000000))))

(declare-fun lt!494927 () Unit!36169)

(declare-fun addApplyDifferent!523 (ListLongMap!15463 (_ BitVec 64) V!41483 (_ BitVec 64)) Unit!36169)

(assert (=> b!1102831 (= lt!494927 (addApplyDifferent!523 lt!494945 lt!494943 minValue!831 lt!494937))))

(declare-fun apply!989 (ListLongMap!15463 (_ BitVec 64)) V!41483)

(assert (=> b!1102831 (= (apply!989 (+!3372 lt!494945 (tuple2!17483 lt!494943 minValue!831)) lt!494937) (apply!989 lt!494945 lt!494937))))

(declare-fun lt!494938 () Unit!36169)

(assert (=> b!1102831 (= lt!494938 lt!494927)))

(declare-fun lt!494936 () ListLongMap!15463)

(assert (=> b!1102831 (= lt!494936 (getCurrentListMapNoExtraKeys!4217 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun lt!494947 () (_ BitVec 64))

(assert (=> b!1102831 (= lt!494947 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!494941 () (_ BitVec 64))

(assert (=> b!1102831 (= lt!494941 (select (arr!34363 _keys!1070) #b00000000000000000000000000000000))))

(declare-fun lt!494928 () Unit!36169)

(assert (=> b!1102831 (= lt!494928 (addApplyDifferent!523 lt!494936 lt!494947 zeroValue!831 lt!494941))))

(assert (=> b!1102831 (= (apply!989 (+!3372 lt!494936 (tuple2!17483 lt!494947 zeroValue!831)) lt!494941) (apply!989 lt!494936 lt!494941))))

(declare-fun lt!494933 () Unit!36169)

(assert (=> b!1102831 (= lt!494933 lt!494928)))

(declare-fun lt!494935 () ListLongMap!15463)

(assert (=> b!1102831 (= lt!494935 (getCurrentListMapNoExtraKeys!4217 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun lt!494942 () (_ BitVec 64))

(assert (=> b!1102831 (= lt!494942 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!494931 () (_ BitVec 64))

(assert (=> b!1102831 (= lt!494931 (select (arr!34363 _keys!1070) #b00000000000000000000000000000000))))

(assert (=> b!1102831 (= lt!494940 (addApplyDifferent!523 lt!494935 lt!494942 minValue!831 lt!494931))))

(assert (=> b!1102831 (= (apply!989 (+!3372 lt!494935 (tuple2!17483 lt!494942 minValue!831)) lt!494931) (apply!989 lt!494935 lt!494931))))

(declare-fun b!1102832 () Bool)

(declare-fun e!629500 () Bool)

(declare-fun call!46286 () Bool)

(assert (=> b!1102832 (= e!629500 (not call!46286))))

(declare-fun b!1102833 () Bool)

(declare-fun e!629493 () Bool)

(assert (=> b!1102833 (= e!629500 e!629493)))

(declare-fun res!735931 () Bool)

(assert (=> b!1102833 (= res!735931 call!46286)))

(assert (=> b!1102833 (=> (not res!735931) (not e!629493))))

(declare-fun b!1102834 () Bool)

(declare-fun res!735928 () Bool)

(declare-fun e!629499 () Bool)

(assert (=> b!1102834 (=> (not res!735928) (not e!629499))))

(assert (=> b!1102834 (= res!735928 e!629500)))

(declare-fun c!108880 () Bool)

(assert (=> b!1102834 (= c!108880 (not (= (bvand extraKeys!811 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!1102835 () Bool)

(declare-fun lt!494929 () ListLongMap!15463)

(assert (=> b!1102835 (= e!629493 (= (apply!989 lt!494929 #b0000000000000000000000000000000000000000000000000000000000000000) zeroValue!831))))

(declare-fun e!629501 () Bool)

(declare-fun b!1102836 () Bool)

(declare-fun get!17683 (ValueCell!12924 V!41483) V!41483)

(assert (=> b!1102836 (= e!629501 (= (apply!989 lt!494929 (select (arr!34363 _keys!1070) #b00000000000000000000000000000000)) (get!17683 (select (arr!34362 _values!874) #b00000000000000000000000000000000) (dynLambda!2348 defaultEntry!882 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1102836 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!34899 _values!874)))))

(assert (=> b!1102836 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!34900 _keys!1070)))))

(declare-fun b!1102837 () Bool)

(declare-fun e!629494 () Bool)

(assert (=> b!1102837 (= e!629494 (validKeyInArray!0 (select (arr!34363 _keys!1070) #b00000000000000000000000000000000)))))

(declare-fun b!1102838 () Bool)

(declare-fun e!629503 () Bool)

(assert (=> b!1102838 (= e!629503 (= (apply!989 lt!494929 #b1000000000000000000000000000000000000000000000000000000000000000) minValue!831))))

(declare-fun bm!46286 () Bool)

(assert (=> bm!46286 (= call!46287 (getCurrentListMapNoExtraKeys!4217 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun b!1102839 () Bool)

(declare-fun e!629504 () Bool)

(assert (=> b!1102839 (= e!629504 (validKeyInArray!0 (select (arr!34363 _keys!1070) #b00000000000000000000000000000000)))))

(declare-fun b!1102840 () Bool)

(declare-fun res!735929 () Bool)

(assert (=> b!1102840 (=> (not res!735929) (not e!629499))))

(declare-fun e!629497 () Bool)

(assert (=> b!1102840 (= res!735929 e!629497)))

(declare-fun res!735930 () Bool)

(assert (=> b!1102840 (=> res!735930 e!629497)))

(assert (=> b!1102840 (= res!735930 (not e!629504))))

(declare-fun res!735934 () Bool)

(assert (=> b!1102840 (=> (not res!735934) (not e!629504))))

(assert (=> b!1102840 (= res!735934 (bvslt #b00000000000000000000000000000000 (size!34900 _keys!1070)))))

(declare-fun b!1102841 () Bool)

(declare-fun e!629502 () ListLongMap!15463)

(assert (=> b!1102841 (= e!629502 (+!3372 call!46292 (tuple2!17483 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!831)))))

(declare-fun b!1102842 () Bool)

(assert (=> b!1102842 (= e!629502 e!629496)))

(assert (=> b!1102842 (= c!108883 (and (not (= (bvand extraKeys!811 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeys!811 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1102843 () Bool)

(declare-fun c!108882 () Bool)

(assert (=> b!1102843 (= c!108882 (and (not (= (bvand extraKeys!811 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeys!811 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun e!629505 () ListLongMap!15463)

(assert (=> b!1102843 (= e!629496 e!629505)))

(declare-fun b!1102844 () Bool)

(declare-fun Unit!36171 () Unit!36169)

(assert (=> b!1102844 (= e!629498 Unit!36171)))

(declare-fun b!1102845 () Bool)

(declare-fun e!629495 () Bool)

(assert (=> b!1102845 (= e!629499 e!629495)))

(declare-fun c!108884 () Bool)

(assert (=> b!1102845 (= c!108884 (not (= (bvand extraKeys!811 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1102846 () Bool)

(declare-fun call!46289 () Bool)

(assert (=> b!1102846 (= e!629495 (not call!46289))))

(declare-fun bm!46287 () Bool)

(assert (=> bm!46287 (= call!46288 call!46287)))

(declare-fun b!1102847 () Bool)

(assert (=> b!1102847 (= e!629505 call!46291)))

(declare-fun b!1102848 () Bool)

(assert (=> b!1102848 (= e!629497 e!629501)))

(declare-fun res!735932 () Bool)

(assert (=> b!1102848 (=> (not res!735932) (not e!629501))))

(assert (=> b!1102848 (= res!735932 (contains!6422 lt!494929 (select (arr!34363 _keys!1070) #b00000000000000000000000000000000)))))

(assert (=> b!1102848 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!34900 _keys!1070)))))

(declare-fun bm!46288 () Bool)

(assert (=> bm!46288 (= call!46286 (contains!6422 lt!494929 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1102849 () Bool)

(assert (=> b!1102849 (= e!629495 e!629503)))

(declare-fun res!735936 () Bool)

(assert (=> b!1102849 (= res!735936 call!46289)))

(assert (=> b!1102849 (=> (not res!735936) (not e!629503))))

(declare-fun b!1102850 () Bool)

(assert (=> b!1102850 (= e!629505 call!46290)))

(declare-fun bm!46289 () Bool)

(assert (=> bm!46289 (= call!46289 (contains!6422 lt!494929 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun d!130715 () Bool)

(assert (=> d!130715 e!629499))

(declare-fun res!735935 () Bool)

(assert (=> d!130715 (=> (not res!735935) (not e!629499))))

(assert (=> d!130715 (= res!735935 (or (bvsge #b00000000000000000000000000000000 (size!34900 _keys!1070)) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!34900 _keys!1070)))))))

(declare-fun lt!494939 () ListLongMap!15463)

(assert (=> d!130715 (= lt!494929 lt!494939)))

(declare-fun lt!494944 () Unit!36169)

(assert (=> d!130715 (= lt!494944 e!629498)))

(declare-fun c!108885 () Bool)

(assert (=> d!130715 (= c!108885 e!629494)))

(declare-fun res!735933 () Bool)

(assert (=> d!130715 (=> (not res!735933) (not e!629494))))

(assert (=> d!130715 (= res!735933 (bvslt #b00000000000000000000000000000000 (size!34900 _keys!1070)))))

(assert (=> d!130715 (= lt!494939 e!629502)))

(assert (=> d!130715 (= c!108881 (and (not (= (bvand extraKeys!811 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!811 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!130715 (validMask!0 mask!1414)))

(assert (=> d!130715 (= (getCurrentListMap!4430 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882) lt!494929)))

(assert (= (and d!130715 c!108881) b!1102841))

(assert (= (and d!130715 (not c!108881)) b!1102842))

(assert (= (and b!1102842 c!108883) b!1102830))

(assert (= (and b!1102842 (not c!108883)) b!1102843))

(assert (= (and b!1102843 c!108882) b!1102850))

(assert (= (and b!1102843 (not c!108882)) b!1102847))

(assert (= (or b!1102850 b!1102847) bm!46285))

(assert (= (or b!1102830 bm!46285) bm!46287))

(assert (= (or b!1102830 b!1102850) bm!46284))

(assert (= (or b!1102841 bm!46287) bm!46286))

(assert (= (or b!1102841 bm!46284) bm!46283))

(assert (= (and d!130715 res!735933) b!1102837))

(assert (= (and d!130715 c!108885) b!1102831))

(assert (= (and d!130715 (not c!108885)) b!1102844))

(assert (= (and d!130715 res!735935) b!1102840))

(assert (= (and b!1102840 res!735934) b!1102839))

(assert (= (and b!1102840 (not res!735930)) b!1102848))

(assert (= (and b!1102848 res!735932) b!1102836))

(assert (= (and b!1102840 res!735929) b!1102834))

(assert (= (and b!1102834 c!108880) b!1102833))

(assert (= (and b!1102834 (not c!108880)) b!1102832))

(assert (= (and b!1102833 res!735931) b!1102835))

(assert (= (or b!1102833 b!1102832) bm!46288))

(assert (= (and b!1102834 res!735928) b!1102845))

(assert (= (and b!1102845 c!108884) b!1102849))

(assert (= (and b!1102845 (not c!108884)) b!1102846))

(assert (= (and b!1102849 res!735936) b!1102838))

(assert (= (or b!1102849 b!1102846) bm!46289))

(declare-fun b_lambda!18241 () Bool)

(assert (=> (not b_lambda!18241) (not b!1102836)))

(assert (=> b!1102836 t!34424))

(declare-fun b_and!37277 () Bool)

(assert (= b_and!37271 (and (=> t!34424 result!16719) b_and!37277)))

(declare-fun m!1023279 () Bool)

(assert (=> b!1102838 m!1023279))

(assert (=> b!1102848 m!1023275))

(assert (=> b!1102848 m!1023275))

(declare-fun m!1023281 () Bool)

(assert (=> b!1102848 m!1023281))

(declare-fun m!1023283 () Bool)

(assert (=> b!1102841 m!1023283))

(assert (=> d!130715 m!1023201))

(assert (=> b!1102839 m!1023275))

(assert (=> b!1102839 m!1023275))

(declare-fun m!1023285 () Bool)

(assert (=> b!1102839 m!1023285))

(declare-fun m!1023287 () Bool)

(assert (=> b!1102836 m!1023287))

(assert (=> b!1102836 m!1023209))

(declare-fun m!1023289 () Bool)

(assert (=> b!1102836 m!1023289))

(assert (=> b!1102836 m!1023287))

(assert (=> b!1102836 m!1023275))

(assert (=> b!1102836 m!1023209))

(assert (=> b!1102836 m!1023275))

(declare-fun m!1023291 () Bool)

(assert (=> b!1102836 m!1023291))

(declare-fun m!1023293 () Bool)

(assert (=> b!1102831 m!1023293))

(declare-fun m!1023295 () Bool)

(assert (=> b!1102831 m!1023295))

(declare-fun m!1023297 () Bool)

(assert (=> b!1102831 m!1023297))

(declare-fun m!1023299 () Bool)

(assert (=> b!1102831 m!1023299))

(assert (=> b!1102831 m!1023223))

(assert (=> b!1102831 m!1023275))

(declare-fun m!1023301 () Bool)

(assert (=> b!1102831 m!1023301))

(declare-fun m!1023303 () Bool)

(assert (=> b!1102831 m!1023303))

(assert (=> b!1102831 m!1023295))

(declare-fun m!1023305 () Bool)

(assert (=> b!1102831 m!1023305))

(declare-fun m!1023307 () Bool)

(assert (=> b!1102831 m!1023307))

(declare-fun m!1023309 () Bool)

(assert (=> b!1102831 m!1023309))

(assert (=> b!1102831 m!1023301))

(declare-fun m!1023311 () Bool)

(assert (=> b!1102831 m!1023311))

(declare-fun m!1023313 () Bool)

(assert (=> b!1102831 m!1023313))

(declare-fun m!1023315 () Bool)

(assert (=> b!1102831 m!1023315))

(assert (=> b!1102831 m!1023293))

(declare-fun m!1023317 () Bool)

(assert (=> b!1102831 m!1023317))

(declare-fun m!1023319 () Bool)

(assert (=> b!1102831 m!1023319))

(declare-fun m!1023321 () Bool)

(assert (=> b!1102831 m!1023321))

(assert (=> b!1102831 m!1023313))

(declare-fun m!1023323 () Bool)

(assert (=> bm!46289 m!1023323))

(assert (=> bm!46286 m!1023223))

(declare-fun m!1023325 () Bool)

(assert (=> bm!46283 m!1023325))

(declare-fun m!1023327 () Bool)

(assert (=> bm!46288 m!1023327))

(declare-fun m!1023329 () Bool)

(assert (=> b!1102835 m!1023329))

(assert (=> b!1102837 m!1023275))

(assert (=> b!1102837 m!1023275))

(assert (=> b!1102837 m!1023285))

(assert (=> b!1102727 d!130715))

(declare-fun call!46299 () ListLongMap!15463)

(declare-fun call!46295 () ListLongMap!15463)

(declare-fun bm!46290 () Bool)

(declare-fun call!46298 () ListLongMap!15463)

(declare-fun c!108889 () Bool)

(declare-fun call!46294 () ListLongMap!15463)

(declare-fun c!108887 () Bool)

(assert (=> bm!46290 (= call!46299 (+!3372 (ite c!108887 call!46294 (ite c!108889 call!46295 call!46298)) (ite (or c!108887 c!108889) (tuple2!17483 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!831) (tuple2!17483 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!831))))))

(declare-fun bm!46291 () Bool)

(declare-fun call!46297 () ListLongMap!15463)

(assert (=> bm!46291 (= call!46297 call!46299)))

(declare-fun bm!46292 () Bool)

(assert (=> bm!46292 (= call!46298 call!46295)))

(declare-fun b!1102851 () Bool)

(declare-fun e!629509 () ListLongMap!15463)

(assert (=> b!1102851 (= e!629509 call!46297)))

(declare-fun b!1102852 () Bool)

(declare-fun e!629511 () Unit!36169)

(declare-fun lt!494962 () Unit!36169)

(assert (=> b!1102852 (= e!629511 lt!494962)))

(declare-fun lt!494956 () ListLongMap!15463)

(assert (=> b!1102852 (= lt!494956 (getCurrentListMapNoExtraKeys!4217 lt!494848 lt!494849 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun lt!494954 () (_ BitVec 64))

(assert (=> b!1102852 (= lt!494954 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!494948 () (_ BitVec 64))

(assert (=> b!1102852 (= lt!494948 (select (arr!34363 lt!494848) #b00000000000000000000000000000000))))

(declare-fun lt!494952 () Unit!36169)

(assert (=> b!1102852 (= lt!494952 (addStillContains!671 lt!494956 lt!494954 zeroValue!831 lt!494948))))

(assert (=> b!1102852 (contains!6422 (+!3372 lt!494956 (tuple2!17483 lt!494954 zeroValue!831)) lt!494948)))

(declare-fun lt!494968 () Unit!36169)

(assert (=> b!1102852 (= lt!494968 lt!494952)))

(declare-fun lt!494967 () ListLongMap!15463)

(assert (=> b!1102852 (= lt!494967 (getCurrentListMapNoExtraKeys!4217 lt!494848 lt!494849 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun lt!494965 () (_ BitVec 64))

(assert (=> b!1102852 (= lt!494965 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!494959 () (_ BitVec 64))

(assert (=> b!1102852 (= lt!494959 (select (arr!34363 lt!494848) #b00000000000000000000000000000000))))

(declare-fun lt!494949 () Unit!36169)

(assert (=> b!1102852 (= lt!494949 (addApplyDifferent!523 lt!494967 lt!494965 minValue!831 lt!494959))))

(assert (=> b!1102852 (= (apply!989 (+!3372 lt!494967 (tuple2!17483 lt!494965 minValue!831)) lt!494959) (apply!989 lt!494967 lt!494959))))

(declare-fun lt!494960 () Unit!36169)

(assert (=> b!1102852 (= lt!494960 lt!494949)))

(declare-fun lt!494958 () ListLongMap!15463)

(assert (=> b!1102852 (= lt!494958 (getCurrentListMapNoExtraKeys!4217 lt!494848 lt!494849 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun lt!494969 () (_ BitVec 64))

(assert (=> b!1102852 (= lt!494969 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!494963 () (_ BitVec 64))

(assert (=> b!1102852 (= lt!494963 (select (arr!34363 lt!494848) #b00000000000000000000000000000000))))

(declare-fun lt!494950 () Unit!36169)

(assert (=> b!1102852 (= lt!494950 (addApplyDifferent!523 lt!494958 lt!494969 zeroValue!831 lt!494963))))

(assert (=> b!1102852 (= (apply!989 (+!3372 lt!494958 (tuple2!17483 lt!494969 zeroValue!831)) lt!494963) (apply!989 lt!494958 lt!494963))))

(declare-fun lt!494955 () Unit!36169)

(assert (=> b!1102852 (= lt!494955 lt!494950)))

(declare-fun lt!494957 () ListLongMap!15463)

(assert (=> b!1102852 (= lt!494957 (getCurrentListMapNoExtraKeys!4217 lt!494848 lt!494849 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun lt!494964 () (_ BitVec 64))

(assert (=> b!1102852 (= lt!494964 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!494953 () (_ BitVec 64))

(assert (=> b!1102852 (= lt!494953 (select (arr!34363 lt!494848) #b00000000000000000000000000000000))))

(assert (=> b!1102852 (= lt!494962 (addApplyDifferent!523 lt!494957 lt!494964 minValue!831 lt!494953))))

(assert (=> b!1102852 (= (apply!989 (+!3372 lt!494957 (tuple2!17483 lt!494964 minValue!831)) lt!494953) (apply!989 lt!494957 lt!494953))))

(declare-fun b!1102853 () Bool)

(declare-fun e!629513 () Bool)

(declare-fun call!46293 () Bool)

(assert (=> b!1102853 (= e!629513 (not call!46293))))

(declare-fun b!1102854 () Bool)

(declare-fun e!629506 () Bool)

(assert (=> b!1102854 (= e!629513 e!629506)))

(declare-fun res!735940 () Bool)

(assert (=> b!1102854 (= res!735940 call!46293)))

(assert (=> b!1102854 (=> (not res!735940) (not e!629506))))

(declare-fun b!1102855 () Bool)

(declare-fun res!735937 () Bool)

(declare-fun e!629512 () Bool)

(assert (=> b!1102855 (=> (not res!735937) (not e!629512))))

(assert (=> b!1102855 (= res!735937 e!629513)))

(declare-fun c!108886 () Bool)

(assert (=> b!1102855 (= c!108886 (not (= (bvand extraKeys!811 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!1102856 () Bool)

(declare-fun lt!494951 () ListLongMap!15463)

(assert (=> b!1102856 (= e!629506 (= (apply!989 lt!494951 #b0000000000000000000000000000000000000000000000000000000000000000) zeroValue!831))))

(declare-fun b!1102857 () Bool)

(declare-fun e!629514 () Bool)

(assert (=> b!1102857 (= e!629514 (= (apply!989 lt!494951 (select (arr!34363 lt!494848) #b00000000000000000000000000000000)) (get!17683 (select (arr!34362 lt!494849) #b00000000000000000000000000000000) (dynLambda!2348 defaultEntry!882 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1102857 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!34899 lt!494849)))))

(assert (=> b!1102857 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!34900 lt!494848)))))

(declare-fun b!1102858 () Bool)

(declare-fun e!629507 () Bool)

(assert (=> b!1102858 (= e!629507 (validKeyInArray!0 (select (arr!34363 lt!494848) #b00000000000000000000000000000000)))))

(declare-fun b!1102859 () Bool)

(declare-fun e!629516 () Bool)

(assert (=> b!1102859 (= e!629516 (= (apply!989 lt!494951 #b1000000000000000000000000000000000000000000000000000000000000000) minValue!831))))

(declare-fun bm!46293 () Bool)

(assert (=> bm!46293 (= call!46294 (getCurrentListMapNoExtraKeys!4217 lt!494848 lt!494849 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun b!1102860 () Bool)

(declare-fun e!629517 () Bool)

(assert (=> b!1102860 (= e!629517 (validKeyInArray!0 (select (arr!34363 lt!494848) #b00000000000000000000000000000000)))))

(declare-fun b!1102861 () Bool)

(declare-fun res!735938 () Bool)

(assert (=> b!1102861 (=> (not res!735938) (not e!629512))))

(declare-fun e!629510 () Bool)

(assert (=> b!1102861 (= res!735938 e!629510)))

(declare-fun res!735939 () Bool)

(assert (=> b!1102861 (=> res!735939 e!629510)))

(assert (=> b!1102861 (= res!735939 (not e!629517))))

(declare-fun res!735943 () Bool)

(assert (=> b!1102861 (=> (not res!735943) (not e!629517))))

(assert (=> b!1102861 (= res!735943 (bvslt #b00000000000000000000000000000000 (size!34900 lt!494848)))))

(declare-fun b!1102862 () Bool)

(declare-fun e!629515 () ListLongMap!15463)

(assert (=> b!1102862 (= e!629515 (+!3372 call!46299 (tuple2!17483 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!831)))))

(declare-fun b!1102863 () Bool)

(assert (=> b!1102863 (= e!629515 e!629509)))

(assert (=> b!1102863 (= c!108889 (and (not (= (bvand extraKeys!811 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeys!811 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1102864 () Bool)

(declare-fun c!108888 () Bool)

(assert (=> b!1102864 (= c!108888 (and (not (= (bvand extraKeys!811 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeys!811 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun e!629518 () ListLongMap!15463)

(assert (=> b!1102864 (= e!629509 e!629518)))

(declare-fun b!1102865 () Bool)

(declare-fun Unit!36172 () Unit!36169)

(assert (=> b!1102865 (= e!629511 Unit!36172)))

(declare-fun b!1102866 () Bool)

(declare-fun e!629508 () Bool)

(assert (=> b!1102866 (= e!629512 e!629508)))

(declare-fun c!108890 () Bool)

(assert (=> b!1102866 (= c!108890 (not (= (bvand extraKeys!811 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1102867 () Bool)

(declare-fun call!46296 () Bool)

(assert (=> b!1102867 (= e!629508 (not call!46296))))

(declare-fun bm!46294 () Bool)

(assert (=> bm!46294 (= call!46295 call!46294)))

(declare-fun b!1102868 () Bool)

(assert (=> b!1102868 (= e!629518 call!46298)))

(declare-fun b!1102869 () Bool)

(assert (=> b!1102869 (= e!629510 e!629514)))

(declare-fun res!735941 () Bool)

(assert (=> b!1102869 (=> (not res!735941) (not e!629514))))

(assert (=> b!1102869 (= res!735941 (contains!6422 lt!494951 (select (arr!34363 lt!494848) #b00000000000000000000000000000000)))))

(assert (=> b!1102869 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!34900 lt!494848)))))

(declare-fun bm!46295 () Bool)

(assert (=> bm!46295 (= call!46293 (contains!6422 lt!494951 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1102870 () Bool)

(assert (=> b!1102870 (= e!629508 e!629516)))

(declare-fun res!735945 () Bool)

(assert (=> b!1102870 (= res!735945 call!46296)))

(assert (=> b!1102870 (=> (not res!735945) (not e!629516))))

(declare-fun b!1102871 () Bool)

(assert (=> b!1102871 (= e!629518 call!46297)))

(declare-fun bm!46296 () Bool)

(assert (=> bm!46296 (= call!46296 (contains!6422 lt!494951 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun d!130717 () Bool)

(assert (=> d!130717 e!629512))

(declare-fun res!735944 () Bool)

(assert (=> d!130717 (=> (not res!735944) (not e!629512))))

(assert (=> d!130717 (= res!735944 (or (bvsge #b00000000000000000000000000000000 (size!34900 lt!494848)) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!34900 lt!494848)))))))

(declare-fun lt!494961 () ListLongMap!15463)

(assert (=> d!130717 (= lt!494951 lt!494961)))

(declare-fun lt!494966 () Unit!36169)

(assert (=> d!130717 (= lt!494966 e!629511)))

(declare-fun c!108891 () Bool)

(assert (=> d!130717 (= c!108891 e!629507)))

(declare-fun res!735942 () Bool)

(assert (=> d!130717 (=> (not res!735942) (not e!629507))))

(assert (=> d!130717 (= res!735942 (bvslt #b00000000000000000000000000000000 (size!34900 lt!494848)))))

(assert (=> d!130717 (= lt!494961 e!629515)))

(assert (=> d!130717 (= c!108887 (and (not (= (bvand extraKeys!811 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!811 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!130717 (validMask!0 mask!1414)))

(assert (=> d!130717 (= (getCurrentListMap!4430 lt!494848 lt!494849 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882) lt!494951)))

(assert (= (and d!130717 c!108887) b!1102862))

(assert (= (and d!130717 (not c!108887)) b!1102863))

(assert (= (and b!1102863 c!108889) b!1102851))

(assert (= (and b!1102863 (not c!108889)) b!1102864))

(assert (= (and b!1102864 c!108888) b!1102871))

(assert (= (and b!1102864 (not c!108888)) b!1102868))

(assert (= (or b!1102871 b!1102868) bm!46292))

(assert (= (or b!1102851 bm!46292) bm!46294))

(assert (= (or b!1102851 b!1102871) bm!46291))

(assert (= (or b!1102862 bm!46294) bm!46293))

(assert (= (or b!1102862 bm!46291) bm!46290))

(assert (= (and d!130717 res!735942) b!1102858))

(assert (= (and d!130717 c!108891) b!1102852))

(assert (= (and d!130717 (not c!108891)) b!1102865))

(assert (= (and d!130717 res!735944) b!1102861))

(assert (= (and b!1102861 res!735943) b!1102860))

(assert (= (and b!1102861 (not res!735939)) b!1102869))

(assert (= (and b!1102869 res!735941) b!1102857))

(assert (= (and b!1102861 res!735938) b!1102855))

(assert (= (and b!1102855 c!108886) b!1102854))

(assert (= (and b!1102855 (not c!108886)) b!1102853))

(assert (= (and b!1102854 res!735940) b!1102856))

(assert (= (or b!1102854 b!1102853) bm!46295))

(assert (= (and b!1102855 res!735937) b!1102866))

(assert (= (and b!1102866 c!108890) b!1102870))

(assert (= (and b!1102866 (not c!108890)) b!1102867))

(assert (= (and b!1102870 res!735945) b!1102859))

(assert (= (or b!1102870 b!1102867) bm!46296))

(declare-fun b_lambda!18243 () Bool)

(assert (=> (not b_lambda!18243) (not b!1102857)))

(assert (=> b!1102857 t!34424))

(declare-fun b_and!37279 () Bool)

(assert (= b_and!37277 (and (=> t!34424 result!16719) b_and!37279)))

(declare-fun m!1023331 () Bool)

(assert (=> b!1102859 m!1023331))

(declare-fun m!1023333 () Bool)

(assert (=> b!1102869 m!1023333))

(assert (=> b!1102869 m!1023333))

(declare-fun m!1023335 () Bool)

(assert (=> b!1102869 m!1023335))

(declare-fun m!1023337 () Bool)

(assert (=> b!1102862 m!1023337))

(assert (=> d!130717 m!1023201))

(assert (=> b!1102860 m!1023333))

(assert (=> b!1102860 m!1023333))

(declare-fun m!1023339 () Bool)

(assert (=> b!1102860 m!1023339))

(declare-fun m!1023341 () Bool)

(assert (=> b!1102857 m!1023341))

(assert (=> b!1102857 m!1023209))

(declare-fun m!1023343 () Bool)

(assert (=> b!1102857 m!1023343))

(assert (=> b!1102857 m!1023341))

(assert (=> b!1102857 m!1023333))

(assert (=> b!1102857 m!1023209))

(assert (=> b!1102857 m!1023333))

(declare-fun m!1023345 () Bool)

(assert (=> b!1102857 m!1023345))

(declare-fun m!1023347 () Bool)

(assert (=> b!1102852 m!1023347))

(declare-fun m!1023349 () Bool)

(assert (=> b!1102852 m!1023349))

(declare-fun m!1023351 () Bool)

(assert (=> b!1102852 m!1023351))

(declare-fun m!1023353 () Bool)

(assert (=> b!1102852 m!1023353))

(assert (=> b!1102852 m!1023211))

(assert (=> b!1102852 m!1023333))

(declare-fun m!1023355 () Bool)

(assert (=> b!1102852 m!1023355))

(declare-fun m!1023357 () Bool)

(assert (=> b!1102852 m!1023357))

(assert (=> b!1102852 m!1023349))

(declare-fun m!1023359 () Bool)

(assert (=> b!1102852 m!1023359))

(declare-fun m!1023361 () Bool)

(assert (=> b!1102852 m!1023361))

(declare-fun m!1023363 () Bool)

(assert (=> b!1102852 m!1023363))

(assert (=> b!1102852 m!1023355))

(declare-fun m!1023365 () Bool)

(assert (=> b!1102852 m!1023365))

(declare-fun m!1023367 () Bool)

(assert (=> b!1102852 m!1023367))

(declare-fun m!1023369 () Bool)

(assert (=> b!1102852 m!1023369))

(assert (=> b!1102852 m!1023347))

(declare-fun m!1023371 () Bool)

(assert (=> b!1102852 m!1023371))

(declare-fun m!1023373 () Bool)

(assert (=> b!1102852 m!1023373))

(declare-fun m!1023375 () Bool)

(assert (=> b!1102852 m!1023375))

(assert (=> b!1102852 m!1023367))

(declare-fun m!1023377 () Bool)

(assert (=> bm!46296 m!1023377))

(assert (=> bm!46293 m!1023211))

(declare-fun m!1023379 () Bool)

(assert (=> bm!46290 m!1023379))

(declare-fun m!1023381 () Bool)

(assert (=> bm!46295 m!1023381))

(declare-fun m!1023383 () Bool)

(assert (=> b!1102856 m!1023383))

(assert (=> b!1102858 m!1023333))

(assert (=> b!1102858 m!1023333))

(assert (=> b!1102858 m!1023339))

(assert (=> b!1102727 d!130717))

(declare-fun bm!46301 () Bool)

(declare-fun call!46305 () ListLongMap!15463)

(assert (=> bm!46301 (= call!46305 (getCurrentListMapNoExtraKeys!4217 (array!71413 (store (arr!34363 _keys!1070) i!650 #b1000000000000000000000000000000000000000000000000000000000000000) (size!34900 _keys!1070)) (array!71411 (store (arr!34362 _values!874) i!650 (ValueCellFull!12924 (dynLambda!2348 defaultEntry!882 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!34899 _values!874)) mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun b!1102878 () Bool)

(declare-fun e!629524 () Bool)

(declare-fun e!629523 () Bool)

(assert (=> b!1102878 (= e!629524 e!629523)))

(declare-fun c!108894 () Bool)

(assert (=> b!1102878 (= c!108894 (bvsle #b00000000000000000000000000000000 i!650))))

(declare-fun d!130719 () Bool)

(assert (=> d!130719 e!629524))

(declare-fun res!735948 () Bool)

(assert (=> d!130719 (=> (not res!735948) (not e!629524))))

(assert (=> d!130719 (= res!735948 (and (or (not (bvsle #b00000000000000000000000000000000 i!650)) (and (bvsge i!650 #b00000000000000000000000000000000) (bvslt i!650 (size!34900 _keys!1070)))) (or (bvsle #b00000000000000000000000000000000 i!650) (and (bvsge i!650 #b00000000000000000000000000000000) (bvslt i!650 (size!34900 _keys!1070))))))))

(declare-fun lt!494972 () Unit!36169)

(declare-fun choose!1780 (array!71412 array!71410 (_ BitVec 32) (_ BitVec 32) V!41483 V!41483 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!36169)

(assert (=> d!130719 (= lt!494972 (choose!1780 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 i!650 k0!904 #b00000000000000000000000000000000 defaultEntry!882))))

(assert (=> d!130719 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvsle #b00000000000000000000000000000000 (size!34900 _keys!1070)))))

(assert (=> d!130719 (= (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!242 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 i!650 k0!904 #b00000000000000000000000000000000 defaultEntry!882) lt!494972)))

(declare-fun call!46304 () ListLongMap!15463)

(declare-fun b!1102879 () Bool)

(assert (=> b!1102879 (= e!629523 (= call!46305 (-!984 call!46304 k0!904)))))

(assert (=> b!1102879 (and (bvsge i!650 #b00000000000000000000000000000000) (bvslt i!650 (size!34899 _values!874)))))

(declare-fun b!1102880 () Bool)

(assert (=> b!1102880 (= e!629523 (= call!46305 call!46304))))

(assert (=> b!1102880 (and (bvsge i!650 #b00000000000000000000000000000000) (bvslt i!650 (size!34899 _values!874)))))

(declare-fun bm!46302 () Bool)

(assert (=> bm!46302 (= call!46304 (getCurrentListMapNoExtraKeys!4217 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(assert (= (and d!130719 res!735948) b!1102878))

(assert (= (and b!1102878 c!108894) b!1102879))

(assert (= (and b!1102878 (not c!108894)) b!1102880))

(assert (= (or b!1102879 b!1102880) bm!46302))

(assert (= (or b!1102879 b!1102880) bm!46301))

(declare-fun b_lambda!18245 () Bool)

(assert (=> (not b_lambda!18245) (not bm!46301)))

(assert (=> bm!46301 t!34424))

(declare-fun b_and!37281 () Bool)

(assert (= b_and!37279 (and (=> t!34424 result!16719) b_and!37281)))

(assert (=> bm!46301 m!1023189))

(assert (=> bm!46301 m!1023209))

(assert (=> bm!46301 m!1023213))

(declare-fun m!1023385 () Bool)

(assert (=> bm!46301 m!1023385))

(declare-fun m!1023387 () Bool)

(assert (=> d!130719 m!1023387))

(declare-fun m!1023389 () Bool)

(assert (=> b!1102879 m!1023389))

(assert (=> bm!46302 m!1023223))

(assert (=> b!1102727 d!130719))

(declare-fun d!130721 () Bool)

(declare-fun lt!494975 () ListLongMap!15463)

(assert (=> d!130721 (not (contains!6422 lt!494975 k0!904))))

(declare-fun removeStrictlySorted!89 (List!24155 (_ BitVec 64)) List!24155)

(assert (=> d!130721 (= lt!494975 (ListLongMap!15464 (removeStrictlySorted!89 (toList!7747 lt!494844) k0!904)))))

(assert (=> d!130721 (= (-!984 lt!494844 k0!904) lt!494975)))

(declare-fun bs!32349 () Bool)

(assert (= bs!32349 d!130721))

(declare-fun m!1023391 () Bool)

(assert (=> bs!32349 m!1023391))

(declare-fun m!1023393 () Bool)

(assert (=> bs!32349 m!1023393))

(assert (=> b!1102727 d!130721))

(declare-fun bm!46305 () Bool)

(declare-fun call!46308 () ListLongMap!15463)

(assert (=> bm!46305 (= call!46308 (getCurrentListMapNoExtraKeys!4217 lt!494848 lt!494849 mask!1414 extraKeys!811 zeroValue!831 minValue!831 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) defaultEntry!882))))

(declare-fun b!1102905 () Bool)

(declare-fun e!629545 () Bool)

(declare-fun e!629542 () Bool)

(assert (=> b!1102905 (= e!629545 e!629542)))

(declare-fun c!108906 () Bool)

(assert (=> b!1102905 (= c!108906 (bvslt #b00000000000000000000000000000000 (size!34900 lt!494848)))))

(declare-fun b!1102907 () Bool)

(declare-fun lt!494990 () ListLongMap!15463)

(declare-fun isEmpty!975 (ListLongMap!15463) Bool)

(assert (=> b!1102907 (= e!629542 (isEmpty!975 lt!494990))))

(declare-fun b!1102908 () Bool)

(declare-fun e!629540 () ListLongMap!15463)

(declare-fun e!629539 () ListLongMap!15463)

(assert (=> b!1102908 (= e!629540 e!629539)))

(declare-fun c!108904 () Bool)

(assert (=> b!1102908 (= c!108904 (validKeyInArray!0 (select (arr!34363 lt!494848) #b00000000000000000000000000000000)))))

(declare-fun b!1102909 () Bool)

(assert (=> b!1102909 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!34900 lt!494848)))))

(assert (=> b!1102909 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!34899 lt!494849)))))

(declare-fun e!629544 () Bool)

(assert (=> b!1102909 (= e!629544 (= (apply!989 lt!494990 (select (arr!34363 lt!494848) #b00000000000000000000000000000000)) (get!17683 (select (arr!34362 lt!494849) #b00000000000000000000000000000000) (dynLambda!2348 defaultEntry!882 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1102910 () Bool)

(declare-fun e!629543 () Bool)

(assert (=> b!1102910 (= e!629543 e!629545)))

(declare-fun c!108903 () Bool)

(declare-fun e!629541 () Bool)

(assert (=> b!1102910 (= c!108903 e!629541)))

(declare-fun res!735960 () Bool)

(assert (=> b!1102910 (=> (not res!735960) (not e!629541))))

(assert (=> b!1102910 (= res!735960 (bvslt #b00000000000000000000000000000000 (size!34900 lt!494848)))))

(declare-fun b!1102906 () Bool)

(assert (=> b!1102906 (= e!629539 call!46308)))

(declare-fun d!130723 () Bool)

(assert (=> d!130723 e!629543))

(declare-fun res!735959 () Bool)

(assert (=> d!130723 (=> (not res!735959) (not e!629543))))

(assert (=> d!130723 (= res!735959 (not (contains!6422 lt!494990 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!130723 (= lt!494990 e!629540)))

(declare-fun c!108905 () Bool)

(assert (=> d!130723 (= c!108905 (bvsge #b00000000000000000000000000000000 (size!34900 lt!494848)))))

(assert (=> d!130723 (validMask!0 mask!1414)))

(assert (=> d!130723 (= (getCurrentListMapNoExtraKeys!4217 lt!494848 lt!494849 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882) lt!494990)))

(declare-fun b!1102911 () Bool)

(assert (=> b!1102911 (= e!629541 (validKeyInArray!0 (select (arr!34363 lt!494848) #b00000000000000000000000000000000)))))

(assert (=> b!1102911 (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000)))

(declare-fun b!1102912 () Bool)

(assert (=> b!1102912 (= e!629545 e!629544)))

(assert (=> b!1102912 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!34900 lt!494848)))))

(declare-fun res!735958 () Bool)

(assert (=> b!1102912 (= res!735958 (contains!6422 lt!494990 (select (arr!34363 lt!494848) #b00000000000000000000000000000000)))))

(assert (=> b!1102912 (=> (not res!735958) (not e!629544))))

(declare-fun b!1102913 () Bool)

(assert (=> b!1102913 (= e!629542 (= lt!494990 (getCurrentListMapNoExtraKeys!4217 lt!494848 lt!494849 mask!1414 extraKeys!811 zeroValue!831 minValue!831 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) defaultEntry!882)))))

(declare-fun b!1102914 () Bool)

(assert (=> b!1102914 (= e!629540 (ListLongMap!15464 Nil!24152))))

(declare-fun b!1102915 () Bool)

(declare-fun lt!494995 () Unit!36169)

(declare-fun lt!494996 () Unit!36169)

(assert (=> b!1102915 (= lt!494995 lt!494996)))

(declare-fun lt!494993 () (_ BitVec 64))

(declare-fun lt!494994 () V!41483)

(declare-fun lt!494991 () ListLongMap!15463)

(declare-fun lt!494992 () (_ BitVec 64))

(assert (=> b!1102915 (not (contains!6422 (+!3372 lt!494991 (tuple2!17483 lt!494992 lt!494994)) lt!494993))))

(declare-fun addStillNotContains!284 (ListLongMap!15463 (_ BitVec 64) V!41483 (_ BitVec 64)) Unit!36169)

(assert (=> b!1102915 (= lt!494996 (addStillNotContains!284 lt!494991 lt!494992 lt!494994 lt!494993))))

(assert (=> b!1102915 (= lt!494993 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!1102915 (= lt!494994 (get!17683 (select (arr!34362 lt!494849) #b00000000000000000000000000000000) (dynLambda!2348 defaultEntry!882 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!1102915 (= lt!494992 (select (arr!34363 lt!494848) #b00000000000000000000000000000000))))

(assert (=> b!1102915 (= lt!494991 call!46308)))

(assert (=> b!1102915 (= e!629539 (+!3372 call!46308 (tuple2!17483 (select (arr!34363 lt!494848) #b00000000000000000000000000000000) (get!17683 (select (arr!34362 lt!494849) #b00000000000000000000000000000000) (dynLambda!2348 defaultEntry!882 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!1102916 () Bool)

(declare-fun res!735957 () Bool)

(assert (=> b!1102916 (=> (not res!735957) (not e!629543))))

(assert (=> b!1102916 (= res!735957 (not (contains!6422 lt!494990 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!130723 c!108905) b!1102914))

(assert (= (and d!130723 (not c!108905)) b!1102908))

(assert (= (and b!1102908 c!108904) b!1102915))

(assert (= (and b!1102908 (not c!108904)) b!1102906))

(assert (= (or b!1102915 b!1102906) bm!46305))

(assert (= (and d!130723 res!735959) b!1102916))

(assert (= (and b!1102916 res!735957) b!1102910))

(assert (= (and b!1102910 res!735960) b!1102911))

(assert (= (and b!1102910 c!108903) b!1102912))

(assert (= (and b!1102910 (not c!108903)) b!1102905))

(assert (= (and b!1102912 res!735958) b!1102909))

(assert (= (and b!1102905 c!108906) b!1102913))

(assert (= (and b!1102905 (not c!108906)) b!1102907))

(declare-fun b_lambda!18247 () Bool)

(assert (=> (not b_lambda!18247) (not b!1102909)))

(assert (=> b!1102909 t!34424))

(declare-fun b_and!37283 () Bool)

(assert (= b_and!37281 (and (=> t!34424 result!16719) b_and!37283)))

(declare-fun b_lambda!18249 () Bool)

(assert (=> (not b_lambda!18249) (not b!1102915)))

(assert (=> b!1102915 t!34424))

(declare-fun b_and!37285 () Bool)

(assert (= b_and!37283 (and (=> t!34424 result!16719) b_and!37285)))

(assert (=> b!1102911 m!1023333))

(assert (=> b!1102911 m!1023333))

(assert (=> b!1102911 m!1023339))

(declare-fun m!1023395 () Bool)

(assert (=> b!1102913 m!1023395))

(declare-fun m!1023397 () Bool)

(assert (=> b!1102907 m!1023397))

(declare-fun m!1023399 () Bool)

(assert (=> b!1102915 m!1023399))

(declare-fun m!1023401 () Bool)

(assert (=> b!1102915 m!1023401))

(assert (=> b!1102915 m!1023399))

(declare-fun m!1023403 () Bool)

(assert (=> b!1102915 m!1023403))

(declare-fun m!1023405 () Bool)

(assert (=> b!1102915 m!1023405))

(assert (=> b!1102915 m!1023341))

(assert (=> b!1102915 m!1023333))

(assert (=> b!1102915 m!1023341))

(assert (=> b!1102915 m!1023209))

(assert (=> b!1102915 m!1023343))

(assert (=> b!1102915 m!1023209))

(assert (=> b!1102908 m!1023333))

(assert (=> b!1102908 m!1023333))

(assert (=> b!1102908 m!1023339))

(declare-fun m!1023407 () Bool)

(assert (=> d!130723 m!1023407))

(assert (=> d!130723 m!1023201))

(declare-fun m!1023409 () Bool)

(assert (=> b!1102916 m!1023409))

(assert (=> b!1102909 m!1023341))

(assert (=> b!1102909 m!1023333))

(declare-fun m!1023411 () Bool)

(assert (=> b!1102909 m!1023411))

(assert (=> b!1102909 m!1023333))

(assert (=> b!1102909 m!1023341))

(assert (=> b!1102909 m!1023209))

(assert (=> b!1102909 m!1023343))

(assert (=> b!1102909 m!1023209))

(assert (=> b!1102912 m!1023333))

(assert (=> b!1102912 m!1023333))

(declare-fun m!1023413 () Bool)

(assert (=> b!1102912 m!1023413))

(assert (=> bm!46305 m!1023395))

(assert (=> b!1102727 d!130723))

(declare-fun call!46309 () ListLongMap!15463)

(declare-fun bm!46306 () Bool)

(assert (=> bm!46306 (= call!46309 (getCurrentListMapNoExtraKeys!4217 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) defaultEntry!882))))

(declare-fun b!1102917 () Bool)

(declare-fun e!629552 () Bool)

(declare-fun e!629549 () Bool)

(assert (=> b!1102917 (= e!629552 e!629549)))

(declare-fun c!108910 () Bool)

(assert (=> b!1102917 (= c!108910 (bvslt #b00000000000000000000000000000000 (size!34900 _keys!1070)))))

(declare-fun b!1102919 () Bool)

(declare-fun lt!494997 () ListLongMap!15463)

(assert (=> b!1102919 (= e!629549 (isEmpty!975 lt!494997))))

(declare-fun b!1102920 () Bool)

(declare-fun e!629547 () ListLongMap!15463)

(declare-fun e!629546 () ListLongMap!15463)

(assert (=> b!1102920 (= e!629547 e!629546)))

(declare-fun c!108908 () Bool)

(assert (=> b!1102920 (= c!108908 (validKeyInArray!0 (select (arr!34363 _keys!1070) #b00000000000000000000000000000000)))))

(declare-fun b!1102921 () Bool)

(assert (=> b!1102921 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!34900 _keys!1070)))))

(assert (=> b!1102921 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!34899 _values!874)))))

(declare-fun e!629551 () Bool)

(assert (=> b!1102921 (= e!629551 (= (apply!989 lt!494997 (select (arr!34363 _keys!1070) #b00000000000000000000000000000000)) (get!17683 (select (arr!34362 _values!874) #b00000000000000000000000000000000) (dynLambda!2348 defaultEntry!882 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1102922 () Bool)

(declare-fun e!629550 () Bool)

(assert (=> b!1102922 (= e!629550 e!629552)))

(declare-fun c!108907 () Bool)

(declare-fun e!629548 () Bool)

(assert (=> b!1102922 (= c!108907 e!629548)))

(declare-fun res!735964 () Bool)

(assert (=> b!1102922 (=> (not res!735964) (not e!629548))))

(assert (=> b!1102922 (= res!735964 (bvslt #b00000000000000000000000000000000 (size!34900 _keys!1070)))))

(declare-fun b!1102918 () Bool)

(assert (=> b!1102918 (= e!629546 call!46309)))

(declare-fun d!130725 () Bool)

(assert (=> d!130725 e!629550))

(declare-fun res!735963 () Bool)

(assert (=> d!130725 (=> (not res!735963) (not e!629550))))

(assert (=> d!130725 (= res!735963 (not (contains!6422 lt!494997 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!130725 (= lt!494997 e!629547)))

(declare-fun c!108909 () Bool)

(assert (=> d!130725 (= c!108909 (bvsge #b00000000000000000000000000000000 (size!34900 _keys!1070)))))

(assert (=> d!130725 (validMask!0 mask!1414)))

(assert (=> d!130725 (= (getCurrentListMapNoExtraKeys!4217 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882) lt!494997)))

(declare-fun b!1102923 () Bool)

(assert (=> b!1102923 (= e!629548 (validKeyInArray!0 (select (arr!34363 _keys!1070) #b00000000000000000000000000000000)))))

(assert (=> b!1102923 (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000)))

(declare-fun b!1102924 () Bool)

(assert (=> b!1102924 (= e!629552 e!629551)))

(assert (=> b!1102924 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!34900 _keys!1070)))))

(declare-fun res!735962 () Bool)

(assert (=> b!1102924 (= res!735962 (contains!6422 lt!494997 (select (arr!34363 _keys!1070) #b00000000000000000000000000000000)))))

(assert (=> b!1102924 (=> (not res!735962) (not e!629551))))

(declare-fun b!1102925 () Bool)

(assert (=> b!1102925 (= e!629549 (= lt!494997 (getCurrentListMapNoExtraKeys!4217 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) defaultEntry!882)))))

(declare-fun b!1102926 () Bool)

(assert (=> b!1102926 (= e!629547 (ListLongMap!15464 Nil!24152))))

(declare-fun b!1102927 () Bool)

(declare-fun lt!495002 () Unit!36169)

(declare-fun lt!495003 () Unit!36169)

(assert (=> b!1102927 (= lt!495002 lt!495003)))

(declare-fun lt!495001 () V!41483)

(declare-fun lt!494998 () ListLongMap!15463)

(declare-fun lt!495000 () (_ BitVec 64))

(declare-fun lt!494999 () (_ BitVec 64))

(assert (=> b!1102927 (not (contains!6422 (+!3372 lt!494998 (tuple2!17483 lt!494999 lt!495001)) lt!495000))))

(assert (=> b!1102927 (= lt!495003 (addStillNotContains!284 lt!494998 lt!494999 lt!495001 lt!495000))))

(assert (=> b!1102927 (= lt!495000 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!1102927 (= lt!495001 (get!17683 (select (arr!34362 _values!874) #b00000000000000000000000000000000) (dynLambda!2348 defaultEntry!882 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!1102927 (= lt!494999 (select (arr!34363 _keys!1070) #b00000000000000000000000000000000))))

(assert (=> b!1102927 (= lt!494998 call!46309)))

(assert (=> b!1102927 (= e!629546 (+!3372 call!46309 (tuple2!17483 (select (arr!34363 _keys!1070) #b00000000000000000000000000000000) (get!17683 (select (arr!34362 _values!874) #b00000000000000000000000000000000) (dynLambda!2348 defaultEntry!882 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!1102928 () Bool)

(declare-fun res!735961 () Bool)

(assert (=> b!1102928 (=> (not res!735961) (not e!629550))))

(assert (=> b!1102928 (= res!735961 (not (contains!6422 lt!494997 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!130725 c!108909) b!1102926))

(assert (= (and d!130725 (not c!108909)) b!1102920))

(assert (= (and b!1102920 c!108908) b!1102927))

(assert (= (and b!1102920 (not c!108908)) b!1102918))

(assert (= (or b!1102927 b!1102918) bm!46306))

(assert (= (and d!130725 res!735963) b!1102928))

(assert (= (and b!1102928 res!735961) b!1102922))

(assert (= (and b!1102922 res!735964) b!1102923))

(assert (= (and b!1102922 c!108907) b!1102924))

(assert (= (and b!1102922 (not c!108907)) b!1102917))

(assert (= (and b!1102924 res!735962) b!1102921))

(assert (= (and b!1102917 c!108910) b!1102925))

(assert (= (and b!1102917 (not c!108910)) b!1102919))

(declare-fun b_lambda!18251 () Bool)

(assert (=> (not b_lambda!18251) (not b!1102921)))

(assert (=> b!1102921 t!34424))

(declare-fun b_and!37287 () Bool)

(assert (= b_and!37285 (and (=> t!34424 result!16719) b_and!37287)))

(declare-fun b_lambda!18253 () Bool)

(assert (=> (not b_lambda!18253) (not b!1102927)))

(assert (=> b!1102927 t!34424))

(declare-fun b_and!37289 () Bool)

(assert (= b_and!37287 (and (=> t!34424 result!16719) b_and!37289)))

(assert (=> b!1102923 m!1023275))

(assert (=> b!1102923 m!1023275))

(assert (=> b!1102923 m!1023285))

(declare-fun m!1023415 () Bool)

(assert (=> b!1102925 m!1023415))

(declare-fun m!1023417 () Bool)

(assert (=> b!1102919 m!1023417))

(declare-fun m!1023419 () Bool)

(assert (=> b!1102927 m!1023419))

(declare-fun m!1023421 () Bool)

(assert (=> b!1102927 m!1023421))

(assert (=> b!1102927 m!1023419))

(declare-fun m!1023423 () Bool)

(assert (=> b!1102927 m!1023423))

(declare-fun m!1023425 () Bool)

(assert (=> b!1102927 m!1023425))

(assert (=> b!1102927 m!1023287))

(assert (=> b!1102927 m!1023275))

(assert (=> b!1102927 m!1023287))

(assert (=> b!1102927 m!1023209))

(assert (=> b!1102927 m!1023289))

(assert (=> b!1102927 m!1023209))

(assert (=> b!1102920 m!1023275))

(assert (=> b!1102920 m!1023275))

(assert (=> b!1102920 m!1023285))

(declare-fun m!1023427 () Bool)

(assert (=> d!130725 m!1023427))

(assert (=> d!130725 m!1023201))

(declare-fun m!1023429 () Bool)

(assert (=> b!1102928 m!1023429))

(assert (=> b!1102921 m!1023287))

(assert (=> b!1102921 m!1023275))

(declare-fun m!1023431 () Bool)

(assert (=> b!1102921 m!1023431))

(assert (=> b!1102921 m!1023275))

(assert (=> b!1102921 m!1023287))

(assert (=> b!1102921 m!1023209))

(assert (=> b!1102921 m!1023289))

(assert (=> b!1102921 m!1023209))

(assert (=> b!1102924 m!1023275))

(assert (=> b!1102924 m!1023275))

(declare-fun m!1023433 () Bool)

(assert (=> b!1102924 m!1023433))

(assert (=> bm!46306 m!1023415))

(assert (=> b!1102727 d!130725))

(declare-fun d!130727 () Bool)

(assert (=> d!130727 (arrayContainsKey!0 _keys!1070 k0!904 #b00000000000000000000000000000000)))

(declare-fun lt!495006 () Unit!36169)

(declare-fun choose!13 (array!71412 (_ BitVec 64) (_ BitVec 32)) Unit!36169)

(assert (=> d!130727 (= lt!495006 (choose!13 _keys!1070 k0!904 i!650))))

(assert (=> d!130727 (bvsge i!650 #b00000000000000000000000000000000)))

(assert (=> d!130727 (= (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1070 k0!904 i!650) lt!495006)))

(declare-fun bs!32350 () Bool)

(assert (= bs!32350 d!130727))

(assert (=> bs!32350 m!1023215))

(declare-fun m!1023435 () Bool)

(assert (=> bs!32350 m!1023435))

(assert (=> b!1102727 d!130727))

(declare-fun d!130729 () Bool)

(assert (=> d!130729 (= (validMask!0 mask!1414) (and (or (= mask!1414 #b00000000000000000000000000000111) (= mask!1414 #b00000000000000000000000000001111) (= mask!1414 #b00000000000000000000000000011111) (= mask!1414 #b00000000000000000000000000111111) (= mask!1414 #b00000000000000000000000001111111) (= mask!1414 #b00000000000000000000000011111111) (= mask!1414 #b00000000000000000000000111111111) (= mask!1414 #b00000000000000000000001111111111) (= mask!1414 #b00000000000000000000011111111111) (= mask!1414 #b00000000000000000000111111111111) (= mask!1414 #b00000000000000000001111111111111) (= mask!1414 #b00000000000000000011111111111111) (= mask!1414 #b00000000000000000111111111111111) (= mask!1414 #b00000000000000001111111111111111) (= mask!1414 #b00000000000000011111111111111111) (= mask!1414 #b00000000000000111111111111111111) (= mask!1414 #b00000000000001111111111111111111) (= mask!1414 #b00000000000011111111111111111111) (= mask!1414 #b00000000000111111111111111111111) (= mask!1414 #b00000000001111111111111111111111) (= mask!1414 #b00000000011111111111111111111111) (= mask!1414 #b00000000111111111111111111111111) (= mask!1414 #b00000001111111111111111111111111) (= mask!1414 #b00000011111111111111111111111111) (= mask!1414 #b00000111111111111111111111111111) (= mask!1414 #b00001111111111111111111111111111) (= mask!1414 #b00011111111111111111111111111111) (= mask!1414 #b00111111111111111111111111111111)) (bvsle mask!1414 #b00111111111111111111111111111111)))))

(assert (=> start!96960 d!130729))

(declare-fun d!130731 () Bool)

(assert (=> d!130731 (= (array_inv!26320 _keys!1070) (bvsge (size!34900 _keys!1070) #b00000000000000000000000000000000))))

(assert (=> start!96960 d!130731))

(declare-fun d!130733 () Bool)

(assert (=> d!130733 (= (array_inv!26321 _values!874) (bvsge (size!34899 _values!874) #b00000000000000000000000000000000))))

(assert (=> start!96960 d!130733))

(declare-fun b!1102939 () Bool)

(declare-fun e!629561 () Bool)

(declare-fun e!629563 () Bool)

(assert (=> b!1102939 (= e!629561 e!629563)))

(declare-fun c!108913 () Bool)

(assert (=> b!1102939 (= c!108913 (validKeyInArray!0 (select (arr!34363 lt!494848) #b00000000000000000000000000000000)))))

(declare-fun b!1102940 () Bool)

(declare-fun call!46312 () Bool)

(assert (=> b!1102940 (= e!629563 call!46312)))

(declare-fun bm!46309 () Bool)

(assert (=> bm!46309 (= call!46312 (arrayNoDuplicates!0 lt!494848 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!108913 (Cons!24152 (select (arr!34363 lt!494848) #b00000000000000000000000000000000) Nil!24153) Nil!24153)))))

(declare-fun b!1102941 () Bool)

(declare-fun e!629564 () Bool)

(declare-fun contains!6423 (List!24156 (_ BitVec 64)) Bool)

(assert (=> b!1102941 (= e!629564 (contains!6423 Nil!24153 (select (arr!34363 lt!494848) #b00000000000000000000000000000000)))))

(declare-fun b!1102942 () Bool)

(assert (=> b!1102942 (= e!629563 call!46312)))

(declare-fun d!130735 () Bool)

(declare-fun res!735973 () Bool)

(declare-fun e!629562 () Bool)

(assert (=> d!130735 (=> res!735973 e!629562)))

(assert (=> d!130735 (= res!735973 (bvsge #b00000000000000000000000000000000 (size!34900 lt!494848)))))

(assert (=> d!130735 (= (arrayNoDuplicates!0 lt!494848 #b00000000000000000000000000000000 Nil!24153) e!629562)))

(declare-fun b!1102943 () Bool)

(assert (=> b!1102943 (= e!629562 e!629561)))

(declare-fun res!735972 () Bool)

(assert (=> b!1102943 (=> (not res!735972) (not e!629561))))

(assert (=> b!1102943 (= res!735972 (not e!629564))))

(declare-fun res!735971 () Bool)

(assert (=> b!1102943 (=> (not res!735971) (not e!629564))))

(assert (=> b!1102943 (= res!735971 (validKeyInArray!0 (select (arr!34363 lt!494848) #b00000000000000000000000000000000)))))

(assert (= (and d!130735 (not res!735973)) b!1102943))

(assert (= (and b!1102943 res!735971) b!1102941))

(assert (= (and b!1102943 res!735972) b!1102939))

(assert (= (and b!1102939 c!108913) b!1102942))

(assert (= (and b!1102939 (not c!108913)) b!1102940))

(assert (= (or b!1102942 b!1102940) bm!46309))

(assert (=> b!1102939 m!1023333))

(assert (=> b!1102939 m!1023333))

(assert (=> b!1102939 m!1023339))

(assert (=> bm!46309 m!1023333))

(declare-fun m!1023437 () Bool)

(assert (=> bm!46309 m!1023437))

(assert (=> b!1102941 m!1023333))

(assert (=> b!1102941 m!1023333))

(declare-fun m!1023439 () Bool)

(assert (=> b!1102941 m!1023439))

(assert (=> b!1102943 m!1023333))

(assert (=> b!1102943 m!1023333))

(assert (=> b!1102943 m!1023339))

(assert (=> b!1102731 d!130735))

(declare-fun b!1102952 () Bool)

(declare-fun e!629571 () Bool)

(declare-fun call!46315 () Bool)

(assert (=> b!1102952 (= e!629571 call!46315)))

(declare-fun b!1102953 () Bool)

(declare-fun e!629572 () Bool)

(assert (=> b!1102953 (= e!629572 e!629571)))

(declare-fun lt!495013 () (_ BitVec 64))

(assert (=> b!1102953 (= lt!495013 (select (arr!34363 _keys!1070) #b00000000000000000000000000000000))))

(declare-fun lt!495015 () Unit!36169)

(assert (=> b!1102953 (= lt!495015 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1070 lt!495013 #b00000000000000000000000000000000))))

(assert (=> b!1102953 (arrayContainsKey!0 _keys!1070 lt!495013 #b00000000000000000000000000000000)))

(declare-fun lt!495014 () Unit!36169)

(assert (=> b!1102953 (= lt!495014 lt!495015)))

(declare-fun res!735979 () Bool)

(declare-datatypes ((SeekEntryResult!9914 0))(
  ( (MissingZero!9914 (index!42026 (_ BitVec 32))) (Found!9914 (index!42027 (_ BitVec 32))) (Intermediate!9914 (undefined!10726 Bool) (index!42028 (_ BitVec 32)) (x!99184 (_ BitVec 32))) (Undefined!9914) (MissingVacant!9914 (index!42029 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!71412 (_ BitVec 32)) SeekEntryResult!9914)

(assert (=> b!1102953 (= res!735979 (= (seekEntryOrOpen!0 (select (arr!34363 _keys!1070) #b00000000000000000000000000000000) _keys!1070 mask!1414) (Found!9914 #b00000000000000000000000000000000)))))

(assert (=> b!1102953 (=> (not res!735979) (not e!629571))))

(declare-fun b!1102954 () Bool)

(declare-fun e!629573 () Bool)

(assert (=> b!1102954 (= e!629573 e!629572)))

(declare-fun c!108916 () Bool)

(assert (=> b!1102954 (= c!108916 (validKeyInArray!0 (select (arr!34363 _keys!1070) #b00000000000000000000000000000000)))))

(declare-fun b!1102955 () Bool)

(assert (=> b!1102955 (= e!629572 call!46315)))

(declare-fun bm!46312 () Bool)

(assert (=> bm!46312 (= call!46315 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) _keys!1070 mask!1414))))

(declare-fun d!130737 () Bool)

(declare-fun res!735978 () Bool)

(assert (=> d!130737 (=> res!735978 e!629573)))

(assert (=> d!130737 (= res!735978 (bvsge #b00000000000000000000000000000000 (size!34900 _keys!1070)))))

(assert (=> d!130737 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1070 mask!1414) e!629573)))

(assert (= (and d!130737 (not res!735978)) b!1102954))

(assert (= (and b!1102954 c!108916) b!1102953))

(assert (= (and b!1102954 (not c!108916)) b!1102955))

(assert (= (and b!1102953 res!735979) b!1102952))

(assert (= (or b!1102952 b!1102955) bm!46312))

(assert (=> b!1102953 m!1023275))

(declare-fun m!1023441 () Bool)

(assert (=> b!1102953 m!1023441))

(declare-fun m!1023443 () Bool)

(assert (=> b!1102953 m!1023443))

(assert (=> b!1102953 m!1023275))

(declare-fun m!1023445 () Bool)

(assert (=> b!1102953 m!1023445))

(assert (=> b!1102954 m!1023275))

(assert (=> b!1102954 m!1023275))

(assert (=> b!1102954 m!1023285))

(declare-fun m!1023447 () Bool)

(assert (=> bm!46312 m!1023447))

(assert (=> b!1102730 d!130737))

(declare-fun d!130739 () Bool)

(declare-fun lt!495016 () ListLongMap!15463)

(assert (=> d!130739 (not (contains!6422 lt!495016 k0!904))))

(assert (=> d!130739 (= lt!495016 (ListLongMap!15464 (removeStrictlySorted!89 (toList!7747 lt!494846) k0!904)))))

(assert (=> d!130739 (= (-!984 lt!494846 k0!904) lt!495016)))

(declare-fun bs!32351 () Bool)

(assert (= bs!32351 d!130739))

(declare-fun m!1023449 () Bool)

(assert (=> bs!32351 m!1023449))

(declare-fun m!1023451 () Bool)

(assert (=> bs!32351 m!1023451))

(assert (=> b!1102733 d!130739))

(declare-fun b!1102956 () Bool)

(declare-fun e!629574 () Bool)

(declare-fun call!46316 () Bool)

(assert (=> b!1102956 (= e!629574 call!46316)))

(declare-fun b!1102957 () Bool)

(declare-fun e!629575 () Bool)

(assert (=> b!1102957 (= e!629575 e!629574)))

(declare-fun lt!495017 () (_ BitVec 64))

(assert (=> b!1102957 (= lt!495017 (select (arr!34363 lt!494848) #b00000000000000000000000000000000))))

(declare-fun lt!495019 () Unit!36169)

(assert (=> b!1102957 (= lt!495019 (lemmaArrayContainsFromImpliesContainsFromZero!0 lt!494848 lt!495017 #b00000000000000000000000000000000))))

(assert (=> b!1102957 (arrayContainsKey!0 lt!494848 lt!495017 #b00000000000000000000000000000000)))

(declare-fun lt!495018 () Unit!36169)

(assert (=> b!1102957 (= lt!495018 lt!495019)))

(declare-fun res!735981 () Bool)

(assert (=> b!1102957 (= res!735981 (= (seekEntryOrOpen!0 (select (arr!34363 lt!494848) #b00000000000000000000000000000000) lt!494848 mask!1414) (Found!9914 #b00000000000000000000000000000000)))))

(assert (=> b!1102957 (=> (not res!735981) (not e!629574))))

(declare-fun b!1102958 () Bool)

(declare-fun e!629576 () Bool)

(assert (=> b!1102958 (= e!629576 e!629575)))

(declare-fun c!108917 () Bool)

(assert (=> b!1102958 (= c!108917 (validKeyInArray!0 (select (arr!34363 lt!494848) #b00000000000000000000000000000000)))))

(declare-fun b!1102959 () Bool)

(assert (=> b!1102959 (= e!629575 call!46316)))

(declare-fun bm!46313 () Bool)

(assert (=> bm!46313 (= call!46316 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) lt!494848 mask!1414))))

(declare-fun d!130741 () Bool)

(declare-fun res!735980 () Bool)

(assert (=> d!130741 (=> res!735980 e!629576)))

(assert (=> d!130741 (= res!735980 (bvsge #b00000000000000000000000000000000 (size!34900 lt!494848)))))

(assert (=> d!130741 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!494848 mask!1414) e!629576)))

(assert (= (and d!130741 (not res!735980)) b!1102958))

(assert (= (and b!1102958 c!108917) b!1102957))

(assert (= (and b!1102958 (not c!108917)) b!1102959))

(assert (= (and b!1102957 res!735981) b!1102956))

(assert (= (or b!1102956 b!1102959) bm!46313))

(assert (=> b!1102957 m!1023333))

(declare-fun m!1023453 () Bool)

(assert (=> b!1102957 m!1023453))

(declare-fun m!1023455 () Bool)

(assert (=> b!1102957 m!1023455))

(assert (=> b!1102957 m!1023333))

(declare-fun m!1023457 () Bool)

(assert (=> b!1102957 m!1023457))

(assert (=> b!1102958 m!1023333))

(assert (=> b!1102958 m!1023333))

(assert (=> b!1102958 m!1023339))

(declare-fun m!1023459 () Bool)

(assert (=> bm!46313 m!1023459))

(assert (=> b!1102737 d!130741))

(declare-fun d!130743 () Bool)

(assert (=> d!130743 (= (validKeyInArray!0 k0!904) (and (not (= k0!904 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!904 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1102728 d!130743))

(declare-fun b!1102960 () Bool)

(declare-fun e!629577 () Bool)

(declare-fun e!629579 () Bool)

(assert (=> b!1102960 (= e!629577 e!629579)))

(declare-fun c!108918 () Bool)

(assert (=> b!1102960 (= c!108918 (validKeyInArray!0 (select (arr!34363 _keys!1070) #b00000000000000000000000000000000)))))

(declare-fun b!1102961 () Bool)

(declare-fun call!46317 () Bool)

(assert (=> b!1102961 (= e!629579 call!46317)))

(declare-fun bm!46314 () Bool)

(assert (=> bm!46314 (= call!46317 (arrayNoDuplicates!0 _keys!1070 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!108918 (Cons!24152 (select (arr!34363 _keys!1070) #b00000000000000000000000000000000) Nil!24153) Nil!24153)))))

(declare-fun b!1102962 () Bool)

(declare-fun e!629580 () Bool)

(assert (=> b!1102962 (= e!629580 (contains!6423 Nil!24153 (select (arr!34363 _keys!1070) #b00000000000000000000000000000000)))))

(declare-fun b!1102963 () Bool)

(assert (=> b!1102963 (= e!629579 call!46317)))

(declare-fun d!130745 () Bool)

(declare-fun res!735984 () Bool)

(declare-fun e!629578 () Bool)

(assert (=> d!130745 (=> res!735984 e!629578)))

(assert (=> d!130745 (= res!735984 (bvsge #b00000000000000000000000000000000 (size!34900 _keys!1070)))))

(assert (=> d!130745 (= (arrayNoDuplicates!0 _keys!1070 #b00000000000000000000000000000000 Nil!24153) e!629578)))

(declare-fun b!1102964 () Bool)

(assert (=> b!1102964 (= e!629578 e!629577)))

(declare-fun res!735983 () Bool)

(assert (=> b!1102964 (=> (not res!735983) (not e!629577))))

(assert (=> b!1102964 (= res!735983 (not e!629580))))

(declare-fun res!735982 () Bool)

(assert (=> b!1102964 (=> (not res!735982) (not e!629580))))

(assert (=> b!1102964 (= res!735982 (validKeyInArray!0 (select (arr!34363 _keys!1070) #b00000000000000000000000000000000)))))

(assert (= (and d!130745 (not res!735984)) b!1102964))

(assert (= (and b!1102964 res!735982) b!1102962))

(assert (= (and b!1102964 res!735983) b!1102960))

(assert (= (and b!1102960 c!108918) b!1102963))

(assert (= (and b!1102960 (not c!108918)) b!1102961))

(assert (= (or b!1102963 b!1102961) bm!46314))

(assert (=> b!1102960 m!1023275))

(assert (=> b!1102960 m!1023275))

(assert (=> b!1102960 m!1023285))

(assert (=> bm!46314 m!1023275))

(declare-fun m!1023461 () Bool)

(assert (=> bm!46314 m!1023461))

(assert (=> b!1102962 m!1023275))

(assert (=> b!1102962 m!1023275))

(declare-fun m!1023463 () Bool)

(assert (=> b!1102962 m!1023463))

(assert (=> b!1102964 m!1023275))

(assert (=> b!1102964 m!1023275))

(assert (=> b!1102964 m!1023285))

(assert (=> b!1102736 d!130745))

(declare-fun condMapEmpty!42700 () Bool)

(declare-fun mapDefault!42700 () ValueCell!12924)

(assert (=> mapNonEmpty!42694 (= condMapEmpty!42700 (= mapRest!42694 ((as const (Array (_ BitVec 32) ValueCell!12924)) mapDefault!42700)))))

(declare-fun e!629585 () Bool)

(declare-fun mapRes!42700 () Bool)

(assert (=> mapNonEmpty!42694 (= tp!81612 (and e!629585 mapRes!42700))))

(declare-fun mapNonEmpty!42700 () Bool)

(declare-fun tp!81621 () Bool)

(declare-fun e!629586 () Bool)

(assert (=> mapNonEmpty!42700 (= mapRes!42700 (and tp!81621 e!629586))))

(declare-fun mapValue!42700 () ValueCell!12924)

(declare-fun mapKey!42700 () (_ BitVec 32))

(declare-fun mapRest!42700 () (Array (_ BitVec 32) ValueCell!12924))

(assert (=> mapNonEmpty!42700 (= mapRest!42694 (store mapRest!42700 mapKey!42700 mapValue!42700))))

(declare-fun mapIsEmpty!42700 () Bool)

(assert (=> mapIsEmpty!42700 mapRes!42700))

(declare-fun b!1102972 () Bool)

(assert (=> b!1102972 (= e!629585 tp_is_empty!27267)))

(declare-fun b!1102971 () Bool)

(assert (=> b!1102971 (= e!629586 tp_is_empty!27267)))

(assert (= (and mapNonEmpty!42694 condMapEmpty!42700) mapIsEmpty!42700))

(assert (= (and mapNonEmpty!42694 (not condMapEmpty!42700)) mapNonEmpty!42700))

(assert (= (and mapNonEmpty!42700 ((_ is ValueCellFull!12924) mapValue!42700)) b!1102971))

(assert (= (and mapNonEmpty!42694 ((_ is ValueCellFull!12924) mapDefault!42700)) b!1102972))

(declare-fun m!1023465 () Bool)

(assert (=> mapNonEmpty!42700 m!1023465))

(declare-fun b_lambda!18255 () Bool)

(assert (= b_lambda!18253 (or (and start!96960 b_free!23217) b_lambda!18255)))

(declare-fun b_lambda!18257 () Bool)

(assert (= b_lambda!18251 (or (and start!96960 b_free!23217) b_lambda!18257)))

(declare-fun b_lambda!18259 () Bool)

(assert (= b_lambda!18241 (or (and start!96960 b_free!23217) b_lambda!18259)))

(declare-fun b_lambda!18261 () Bool)

(assert (= b_lambda!18245 (or (and start!96960 b_free!23217) b_lambda!18261)))

(declare-fun b_lambda!18263 () Bool)

(assert (= b_lambda!18243 (or (and start!96960 b_free!23217) b_lambda!18263)))

(declare-fun b_lambda!18265 () Bool)

(assert (= b_lambda!18247 (or (and start!96960 b_free!23217) b_lambda!18265)))

(declare-fun b_lambda!18267 () Bool)

(assert (= b_lambda!18249 (or (and start!96960 b_free!23217) b_lambda!18267)))

(check-sat (not bm!46309) (not b!1102960) (not b!1102838) (not bm!46288) (not b!1102911) (not bm!46293) (not b!1102831) (not bm!46301) (not bm!46312) (not b!1102941) (not b_lambda!18265) (not b!1102859) (not d!130717) (not bm!46296) (not b!1102862) (not bm!46314) (not d!130721) (not b!1102925) (not b!1102923) (not b_next!23217) (not b!1102860) (not b!1102857) (not b!1102912) (not b_lambda!18259) (not b!1102921) (not b!1102839) (not b!1102964) (not b!1102913) (not d!130719) (not b!1102957) (not b_lambda!18255) b_and!37289 (not d!130715) (not b!1102908) (not d!130727) (not b_lambda!18261) (not b!1102836) (not b!1102835) (not b!1102879) (not bm!46295) (not b!1102915) (not b!1102856) (not bm!46289) (not bm!46305) (not b!1102916) (not bm!46306) (not b!1102953) tp_is_empty!27267 (not d!130725) (not b!1102958) (not b!1102841) (not b_lambda!18267) (not b!1102848) (not b!1102869) (not b!1102907) (not b_lambda!18257) (not bm!46283) (not bm!46302) (not b!1102920) (not b!1102919) (not mapNonEmpty!42700) (not b!1102852) (not b!1102928) (not b!1102927) (not b!1102939) (not b!1102924) (not b!1102787) (not d!130739) (not b!1102909) (not bm!46313) (not b_lambda!18239) (not b!1102962) (not b!1102837) (not b_lambda!18263) (not b!1102858) (not bm!46290) (not b!1102943) (not d!130723) (not bm!46286) (not b!1102954))
(check-sat b_and!37289 (not b_next!23217))
