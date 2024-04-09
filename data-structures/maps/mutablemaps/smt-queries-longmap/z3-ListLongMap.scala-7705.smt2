; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!96798 () Bool)

(assert start!96798)

(declare-fun b_free!23157 () Bool)

(declare-fun b_next!23157 () Bool)

(assert (=> start!96798 (= b_free!23157 (not b_next!23157))))

(declare-fun tp!81420 () Bool)

(declare-fun b_and!37093 () Bool)

(assert (=> start!96798 (= tp!81420 b_and!37093)))

(declare-fun b!1100679 () Bool)

(declare-fun res!734589 () Bool)

(declare-fun e!628272 () Bool)

(assert (=> b!1100679 (=> (not res!734589) (not e!628272))))

(declare-fun mask!1414 () (_ BitVec 32))

(declare-fun extraKeys!811 () (_ BitVec 32))

(declare-datatypes ((array!71282 0))(
  ( (array!71283 (arr!34302 (Array (_ BitVec 32) (_ BitVec 64))) (size!34839 (_ BitVec 32))) )
))
(declare-fun _keys!1070 () array!71282)

(declare-datatypes ((V!41403 0))(
  ( (V!41404 (val!13660 Int)) )
))
(declare-datatypes ((ValueCell!12894 0))(
  ( (ValueCellFull!12894 (v!16289 V!41403)) (EmptyCell!12894) )
))
(declare-datatypes ((array!71284 0))(
  ( (array!71285 (arr!34303 (Array (_ BitVec 32) ValueCell!12894)) (size!34840 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!71284)

(assert (=> b!1100679 (= res!734589 (and (= (size!34840 _values!874) (bvadd #b00000000000000000000000000000001 mask!1414)) (= (size!34839 _keys!1070) (size!34840 _values!874)) (bvsge mask!1414 #b00000000000000000000000000000000) (bvsge extraKeys!811 #b00000000000000000000000000000000) (bvsle extraKeys!811 #b00000000000000000000000000000011)))))

(declare-fun b!1100680 () Bool)

(declare-fun e!628273 () Bool)

(declare-fun tp_is_empty!27207 () Bool)

(assert (=> b!1100680 (= e!628273 tp_is_empty!27207)))

(declare-fun b!1100681 () Bool)

(declare-fun res!734596 () Bool)

(assert (=> b!1100681 (=> (not res!734596) (not e!628272))))

(declare-fun k0!904 () (_ BitVec 64))

(declare-fun i!650 () (_ BitVec 32))

(assert (=> b!1100681 (= res!734596 (= (select (arr!34302 _keys!1070) i!650) k0!904))))

(declare-fun b!1100682 () Bool)

(declare-fun res!734595 () Bool)

(assert (=> b!1100682 (=> (not res!734595) (not e!628272))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!71282 (_ BitVec 32)) Bool)

(assert (=> b!1100682 (= res!734595 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1070 mask!1414))))

(declare-datatypes ((tuple2!17432 0))(
  ( (tuple2!17433 (_1!8726 (_ BitVec 64)) (_2!8726 V!41403)) )
))
(declare-datatypes ((List!24104 0))(
  ( (Nil!24101) (Cons!24100 (h!25309 tuple2!17432) (t!34314 List!24104)) )
))
(declare-datatypes ((ListLongMap!15413 0))(
  ( (ListLongMap!15414 (toList!7722 List!24104)) )
))
(declare-fun lt!493274 () ListLongMap!15413)

(declare-fun minValue!831 () V!41403)

(declare-fun b!1100683 () Bool)

(declare-fun lt!493279 () ListLongMap!15413)

(declare-fun e!628270 () Bool)

(declare-fun +!3355 (ListLongMap!15413 tuple2!17432) ListLongMap!15413)

(assert (=> b!1100683 (= e!628270 (= lt!493274 (+!3355 lt!493279 (tuple2!17433 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!831))))))

(declare-fun b!1100684 () Bool)

(declare-fun res!734587 () Bool)

(assert (=> b!1100684 (=> (not res!734587) (not e!628272))))

(assert (=> b!1100684 (= res!734587 (and (bvsge i!650 #b00000000000000000000000000000000) (bvslt i!650 (size!34839 _keys!1070))))))

(declare-fun b!1100685 () Bool)

(declare-fun res!734588 () Bool)

(assert (=> b!1100685 (=> (not res!734588) (not e!628272))))

(declare-datatypes ((List!24105 0))(
  ( (Nil!24102) (Cons!24101 (h!25310 (_ BitVec 64)) (t!34315 List!24105)) )
))
(declare-fun arrayNoDuplicates!0 (array!71282 (_ BitVec 32) List!24105) Bool)

(assert (=> b!1100685 (= res!734588 (arrayNoDuplicates!0 _keys!1070 #b00000000000000000000000000000000 Nil!24102))))

(declare-fun b!1100686 () Bool)

(declare-fun res!734592 () Bool)

(declare-fun e!628274 () Bool)

(assert (=> b!1100686 (=> (not res!734592) (not e!628274))))

(declare-fun lt!493278 () array!71282)

(assert (=> b!1100686 (= res!734592 (arrayNoDuplicates!0 lt!493278 #b00000000000000000000000000000000 Nil!24102))))

(declare-fun b!1100687 () Bool)

(assert (=> b!1100687 (= e!628274 (not e!628270))))

(declare-fun res!734590 () Bool)

(assert (=> b!1100687 (=> res!734590 e!628270)))

(assert (=> b!1100687 (= res!734590 (or (not (= (bvand extraKeys!811 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeys!811 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun defaultEntry!882 () Int)

(declare-fun lt!493281 () ListLongMap!15413)

(declare-fun zeroValue!831 () V!41403)

(declare-fun getCurrentListMap!4410 (array!71282 array!71284 (_ BitVec 32) (_ BitVec 32) V!41403 V!41403 (_ BitVec 32) Int) ListLongMap!15413)

(assert (=> b!1100687 (= lt!493281 (getCurrentListMap!4410 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun lt!493275 () array!71284)

(assert (=> b!1100687 (= lt!493274 (getCurrentListMap!4410 lt!493278 lt!493275 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun lt!493277 () ListLongMap!15413)

(assert (=> b!1100687 (and (= lt!493279 lt!493277) (= lt!493277 lt!493279))))

(declare-fun lt!493280 () ListLongMap!15413)

(declare-fun -!962 (ListLongMap!15413 (_ BitVec 64)) ListLongMap!15413)

(assert (=> b!1100687 (= lt!493277 (-!962 lt!493280 k0!904))))

(declare-datatypes ((Unit!36117 0))(
  ( (Unit!36118) )
))
(declare-fun lt!493276 () Unit!36117)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!222 (array!71282 array!71284 (_ BitVec 32) (_ BitVec 32) V!41403 V!41403 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!36117)

(assert (=> b!1100687 (= lt!493276 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!222 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 i!650 k0!904 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun getCurrentListMapNoExtraKeys!4197 (array!71282 array!71284 (_ BitVec 32) (_ BitVec 32) V!41403 V!41403 (_ BitVec 32) Int) ListLongMap!15413)

(assert (=> b!1100687 (= lt!493279 (getCurrentListMapNoExtraKeys!4197 lt!493278 lt!493275 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun dynLambda!2328 (Int (_ BitVec 64)) V!41403)

(assert (=> b!1100687 (= lt!493275 (array!71285 (store (arr!34303 _values!874) i!650 (ValueCellFull!12894 (dynLambda!2328 defaultEntry!882 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!34840 _values!874)))))

(assert (=> b!1100687 (= lt!493280 (getCurrentListMapNoExtraKeys!4197 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun arrayContainsKey!0 (array!71282 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1100687 (arrayContainsKey!0 _keys!1070 k0!904 #b00000000000000000000000000000000)))

(declare-fun lt!493282 () Unit!36117)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!71282 (_ BitVec 64) (_ BitVec 32)) Unit!36117)

(assert (=> b!1100687 (= lt!493282 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1070 k0!904 i!650))))

(declare-fun mapNonEmpty!42592 () Bool)

(declare-fun mapRes!42592 () Bool)

(declare-fun tp!81419 () Bool)

(declare-fun e!628268 () Bool)

(assert (=> mapNonEmpty!42592 (= mapRes!42592 (and tp!81419 e!628268))))

(declare-fun mapValue!42592 () ValueCell!12894)

(declare-fun mapKey!42592 () (_ BitVec 32))

(declare-fun mapRest!42592 () (Array (_ BitVec 32) ValueCell!12894))

(assert (=> mapNonEmpty!42592 (= (arr!34303 _values!874) (store mapRest!42592 mapKey!42592 mapValue!42592))))

(declare-fun b!1100688 () Bool)

(declare-fun e!628269 () Bool)

(assert (=> b!1100688 (= e!628269 (and e!628273 mapRes!42592))))

(declare-fun condMapEmpty!42592 () Bool)

(declare-fun mapDefault!42592 () ValueCell!12894)

(assert (=> b!1100688 (= condMapEmpty!42592 (= (arr!34303 _values!874) ((as const (Array (_ BitVec 32) ValueCell!12894)) mapDefault!42592)))))

(declare-fun b!1100689 () Bool)

(assert (=> b!1100689 (= e!628272 e!628274)))

(declare-fun res!734593 () Bool)

(assert (=> b!1100689 (=> (not res!734593) (not e!628274))))

(assert (=> b!1100689 (= res!734593 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!493278 mask!1414))))

(assert (=> b!1100689 (= lt!493278 (array!71283 (store (arr!34302 _keys!1070) i!650 #b1000000000000000000000000000000000000000000000000000000000000000) (size!34839 _keys!1070)))))

(declare-fun b!1100690 () Bool)

(declare-fun res!734591 () Bool)

(assert (=> b!1100690 (=> (not res!734591) (not e!628272))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1100690 (= res!734591 (validKeyInArray!0 k0!904))))

(declare-fun b!1100691 () Bool)

(assert (=> b!1100691 (= e!628268 tp_is_empty!27207)))

(declare-fun res!734594 () Bool)

(assert (=> start!96798 (=> (not res!734594) (not e!628272))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!96798 (= res!734594 (validMask!0 mask!1414))))

(assert (=> start!96798 e!628272))

(assert (=> start!96798 tp!81420))

(assert (=> start!96798 true))

(assert (=> start!96798 tp_is_empty!27207))

(declare-fun array_inv!26280 (array!71282) Bool)

(assert (=> start!96798 (array_inv!26280 _keys!1070)))

(declare-fun array_inv!26281 (array!71284) Bool)

(assert (=> start!96798 (and (array_inv!26281 _values!874) e!628269)))

(declare-fun mapIsEmpty!42592 () Bool)

(assert (=> mapIsEmpty!42592 mapRes!42592))

(assert (= (and start!96798 res!734594) b!1100679))

(assert (= (and b!1100679 res!734589) b!1100682))

(assert (= (and b!1100682 res!734595) b!1100685))

(assert (= (and b!1100685 res!734588) b!1100684))

(assert (= (and b!1100684 res!734587) b!1100690))

(assert (= (and b!1100690 res!734591) b!1100681))

(assert (= (and b!1100681 res!734596) b!1100689))

(assert (= (and b!1100689 res!734593) b!1100686))

(assert (= (and b!1100686 res!734592) b!1100687))

(assert (= (and b!1100687 (not res!734590)) b!1100683))

(assert (= (and b!1100688 condMapEmpty!42592) mapIsEmpty!42592))

(assert (= (and b!1100688 (not condMapEmpty!42592)) mapNonEmpty!42592))

(get-info :version)

(assert (= (and mapNonEmpty!42592 ((_ is ValueCellFull!12894) mapValue!42592)) b!1100691))

(assert (= (and b!1100688 ((_ is ValueCellFull!12894) mapDefault!42592)) b!1100680))

(assert (= start!96798 b!1100688))

(declare-fun b_lambda!18055 () Bool)

(assert (=> (not b_lambda!18055) (not b!1100687)))

(declare-fun t!34313 () Bool)

(declare-fun tb!8031 () Bool)

(assert (=> (and start!96798 (= defaultEntry!882 defaultEntry!882) t!34313) tb!8031))

(declare-fun result!16591 () Bool)

(assert (=> tb!8031 (= result!16591 tp_is_empty!27207)))

(assert (=> b!1100687 t!34313))

(declare-fun b_and!37095 () Bool)

(assert (= b_and!37093 (and (=> t!34313 result!16591) b_and!37095)))

(declare-fun m!1020941 () Bool)

(assert (=> b!1100689 m!1020941))

(declare-fun m!1020943 () Bool)

(assert (=> b!1100689 m!1020943))

(declare-fun m!1020945 () Bool)

(assert (=> b!1100685 m!1020945))

(declare-fun m!1020947 () Bool)

(assert (=> mapNonEmpty!42592 m!1020947))

(declare-fun m!1020949 () Bool)

(assert (=> start!96798 m!1020949))

(declare-fun m!1020951 () Bool)

(assert (=> start!96798 m!1020951))

(declare-fun m!1020953 () Bool)

(assert (=> start!96798 m!1020953))

(declare-fun m!1020955 () Bool)

(assert (=> b!1100687 m!1020955))

(declare-fun m!1020957 () Bool)

(assert (=> b!1100687 m!1020957))

(declare-fun m!1020959 () Bool)

(assert (=> b!1100687 m!1020959))

(declare-fun m!1020961 () Bool)

(assert (=> b!1100687 m!1020961))

(declare-fun m!1020963 () Bool)

(assert (=> b!1100687 m!1020963))

(declare-fun m!1020965 () Bool)

(assert (=> b!1100687 m!1020965))

(declare-fun m!1020967 () Bool)

(assert (=> b!1100687 m!1020967))

(declare-fun m!1020969 () Bool)

(assert (=> b!1100687 m!1020969))

(declare-fun m!1020971 () Bool)

(assert (=> b!1100687 m!1020971))

(declare-fun m!1020973 () Bool)

(assert (=> b!1100687 m!1020973))

(declare-fun m!1020975 () Bool)

(assert (=> b!1100690 m!1020975))

(declare-fun m!1020977 () Bool)

(assert (=> b!1100681 m!1020977))

(declare-fun m!1020979 () Bool)

(assert (=> b!1100682 m!1020979))

(declare-fun m!1020981 () Bool)

(assert (=> b!1100683 m!1020981))

(declare-fun m!1020983 () Bool)

(assert (=> b!1100686 m!1020983))

(check-sat (not b_next!23157) (not b!1100682) (not b!1100686) (not b!1100687) b_and!37095 (not b_lambda!18055) (not b!1100683) tp_is_empty!27207 (not start!96798) (not b!1100689) (not b!1100690) (not mapNonEmpty!42592) (not b!1100685))
(check-sat b_and!37095 (not b_next!23157))
(get-model)

(declare-fun b_lambda!18059 () Bool)

(assert (= b_lambda!18055 (or (and start!96798 b_free!23157) b_lambda!18059)))

(check-sat (not b_next!23157) (not b!1100682) (not b!1100686) (not b!1100687) b_and!37095 (not b!1100683) tp_is_empty!27207 (not start!96798) (not b!1100689) (not b!1100690) (not mapNonEmpty!42592) (not b!1100685) (not b_lambda!18059))
(check-sat b_and!37095 (not b_next!23157))
(get-model)

(declare-fun d!130551 () Bool)

(declare-fun res!734631 () Bool)

(declare-fun e!628300 () Bool)

(assert (=> d!130551 (=> res!734631 e!628300)))

(assert (=> d!130551 (= res!734631 (= (select (arr!34302 _keys!1070) #b00000000000000000000000000000000) k0!904))))

(assert (=> d!130551 (= (arrayContainsKey!0 _keys!1070 k0!904 #b00000000000000000000000000000000) e!628300)))

(declare-fun b!1100739 () Bool)

(declare-fun e!628301 () Bool)

(assert (=> b!1100739 (= e!628300 e!628301)))

(declare-fun res!734632 () Bool)

(assert (=> b!1100739 (=> (not res!734632) (not e!628301))))

(assert (=> b!1100739 (= res!734632 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!34839 _keys!1070)))))

(declare-fun b!1100740 () Bool)

(assert (=> b!1100740 (= e!628301 (arrayContainsKey!0 _keys!1070 k0!904 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!130551 (not res!734631)) b!1100739))

(assert (= (and b!1100739 res!734632) b!1100740))

(declare-fun m!1021029 () Bool)

(assert (=> d!130551 m!1021029))

(declare-fun m!1021031 () Bool)

(assert (=> b!1100740 m!1021031))

(assert (=> b!1100687 d!130551))

(declare-fun b!1100783 () Bool)

(declare-fun e!628330 () Bool)

(declare-fun call!46102 () Bool)

(assert (=> b!1100783 (= e!628330 (not call!46102))))

(declare-fun b!1100784 () Bool)

(declare-fun e!628337 () Bool)

(assert (=> b!1100784 (= e!628337 (validKeyInArray!0 (select (arr!34302 _keys!1070) #b00000000000000000000000000000000)))))

(declare-fun b!1100785 () Bool)

(declare-fun e!628334 () ListLongMap!15413)

(declare-fun call!46108 () ListLongMap!15413)

(assert (=> b!1100785 (= e!628334 call!46108)))

(declare-fun b!1100786 () Bool)

(declare-fun e!628328 () ListLongMap!15413)

(assert (=> b!1100786 (= e!628328 call!46108)))

(declare-fun e!628335 () Bool)

(declare-fun lt!493369 () ListLongMap!15413)

(declare-fun b!1100787 () Bool)

(declare-fun apply!985 (ListLongMap!15413 (_ BitVec 64)) V!41403)

(declare-fun get!17659 (ValueCell!12894 V!41403) V!41403)

(assert (=> b!1100787 (= e!628335 (= (apply!985 lt!493369 (select (arr!34302 _keys!1070) #b00000000000000000000000000000000)) (get!17659 (select (arr!34303 _values!874) #b00000000000000000000000000000000) (dynLambda!2328 defaultEntry!882 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1100787 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!34840 _values!874)))))

(assert (=> b!1100787 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!34839 _keys!1070)))))

(declare-fun bm!46099 () Bool)

(declare-fun call!46104 () ListLongMap!15413)

(declare-fun call!46106 () ListLongMap!15413)

(assert (=> bm!46099 (= call!46104 call!46106)))

(declare-fun b!1100788 () Bool)

(declare-fun res!734659 () Bool)

(declare-fun e!628339 () Bool)

(assert (=> b!1100788 (=> (not res!734659) (not e!628339))))

(declare-fun e!628338 () Bool)

(assert (=> b!1100788 (= res!734659 e!628338)))

(declare-fun res!734653 () Bool)

(assert (=> b!1100788 (=> res!734653 e!628338)))

(declare-fun e!628340 () Bool)

(assert (=> b!1100788 (= res!734653 (not e!628340))))

(declare-fun res!734655 () Bool)

(assert (=> b!1100788 (=> (not res!734655) (not e!628340))))

(assert (=> b!1100788 (= res!734655 (bvslt #b00000000000000000000000000000000 (size!34839 _keys!1070)))))

(declare-fun b!1100789 () Bool)

(declare-fun e!628333 () Unit!36117)

(declare-fun Unit!36119 () Unit!36117)

(assert (=> b!1100789 (= e!628333 Unit!36119)))

(declare-fun b!1100790 () Bool)

(declare-fun e!628336 () Bool)

(assert (=> b!1100790 (= e!628336 (= (apply!985 lt!493369 #b0000000000000000000000000000000000000000000000000000000000000000) zeroValue!831))))

(declare-fun b!1100791 () Bool)

(declare-fun e!628329 () Bool)

(assert (=> b!1100791 (= e!628329 (= (apply!985 lt!493369 #b1000000000000000000000000000000000000000000000000000000000000000) minValue!831))))

(declare-fun b!1100792 () Bool)

(declare-fun e!628331 () Bool)

(declare-fun call!46105 () Bool)

(assert (=> b!1100792 (= e!628331 (not call!46105))))

(declare-fun d!130553 () Bool)

(assert (=> d!130553 e!628339))

(declare-fun res!734652 () Bool)

(assert (=> d!130553 (=> (not res!734652) (not e!628339))))

(assert (=> d!130553 (= res!734652 (or (bvsge #b00000000000000000000000000000000 (size!34839 _keys!1070)) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!34839 _keys!1070)))))))

(declare-fun lt!493359 () ListLongMap!15413)

(assert (=> d!130553 (= lt!493369 lt!493359)))

(declare-fun lt!493374 () Unit!36117)

(assert (=> d!130553 (= lt!493374 e!628333)))

(declare-fun c!108681 () Bool)

(assert (=> d!130553 (= c!108681 e!628337)))

(declare-fun res!734654 () Bool)

(assert (=> d!130553 (=> (not res!734654) (not e!628337))))

(assert (=> d!130553 (= res!734654 (bvslt #b00000000000000000000000000000000 (size!34839 _keys!1070)))))

(declare-fun e!628332 () ListLongMap!15413)

(assert (=> d!130553 (= lt!493359 e!628332)))

(declare-fun c!108676 () Bool)

(assert (=> d!130553 (= c!108676 (and (not (= (bvand extraKeys!811 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!811 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!130553 (validMask!0 mask!1414)))

(assert (=> d!130553 (= (getCurrentListMap!4410 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882) lt!493369)))

(declare-fun bm!46100 () Bool)

(declare-fun contains!6411 (ListLongMap!15413 (_ BitVec 64)) Bool)

(assert (=> bm!46100 (= call!46105 (contains!6411 lt!493369 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1100793 () Bool)

(assert (=> b!1100793 (= e!628334 call!46104)))

(declare-fun bm!46101 () Bool)

(declare-fun call!46107 () ListLongMap!15413)

(assert (=> bm!46101 (= call!46106 call!46107)))

(declare-fun b!1100794 () Bool)

(declare-fun lt!493375 () Unit!36117)

(assert (=> b!1100794 (= e!628333 lt!493375)))

(declare-fun lt!493362 () ListLongMap!15413)

(assert (=> b!1100794 (= lt!493362 (getCurrentListMapNoExtraKeys!4197 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun lt!493363 () (_ BitVec 64))

(assert (=> b!1100794 (= lt!493363 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!493361 () (_ BitVec 64))

(assert (=> b!1100794 (= lt!493361 (select (arr!34302 _keys!1070) #b00000000000000000000000000000000))))

(declare-fun lt!493368 () Unit!36117)

(declare-fun addStillContains!667 (ListLongMap!15413 (_ BitVec 64) V!41403 (_ BitVec 64)) Unit!36117)

(assert (=> b!1100794 (= lt!493368 (addStillContains!667 lt!493362 lt!493363 zeroValue!831 lt!493361))))

(assert (=> b!1100794 (contains!6411 (+!3355 lt!493362 (tuple2!17433 lt!493363 zeroValue!831)) lt!493361)))

(declare-fun lt!493355 () Unit!36117)

(assert (=> b!1100794 (= lt!493355 lt!493368)))

(declare-fun lt!493354 () ListLongMap!15413)

(assert (=> b!1100794 (= lt!493354 (getCurrentListMapNoExtraKeys!4197 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun lt!493356 () (_ BitVec 64))

(assert (=> b!1100794 (= lt!493356 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!493366 () (_ BitVec 64))

(assert (=> b!1100794 (= lt!493366 (select (arr!34302 _keys!1070) #b00000000000000000000000000000000))))

(declare-fun lt!493367 () Unit!36117)

(declare-fun addApplyDifferent!519 (ListLongMap!15413 (_ BitVec 64) V!41403 (_ BitVec 64)) Unit!36117)

(assert (=> b!1100794 (= lt!493367 (addApplyDifferent!519 lt!493354 lt!493356 minValue!831 lt!493366))))

(assert (=> b!1100794 (= (apply!985 (+!3355 lt!493354 (tuple2!17433 lt!493356 minValue!831)) lt!493366) (apply!985 lt!493354 lt!493366))))

(declare-fun lt!493357 () Unit!36117)

(assert (=> b!1100794 (= lt!493357 lt!493367)))

(declare-fun lt!493364 () ListLongMap!15413)

(assert (=> b!1100794 (= lt!493364 (getCurrentListMapNoExtraKeys!4197 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun lt!493365 () (_ BitVec 64))

(assert (=> b!1100794 (= lt!493365 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!493371 () (_ BitVec 64))

(assert (=> b!1100794 (= lt!493371 (select (arr!34302 _keys!1070) #b00000000000000000000000000000000))))

(declare-fun lt!493370 () Unit!36117)

(assert (=> b!1100794 (= lt!493370 (addApplyDifferent!519 lt!493364 lt!493365 zeroValue!831 lt!493371))))

(assert (=> b!1100794 (= (apply!985 (+!3355 lt!493364 (tuple2!17433 lt!493365 zeroValue!831)) lt!493371) (apply!985 lt!493364 lt!493371))))

(declare-fun lt!493360 () Unit!36117)

(assert (=> b!1100794 (= lt!493360 lt!493370)))

(declare-fun lt!493372 () ListLongMap!15413)

(assert (=> b!1100794 (= lt!493372 (getCurrentListMapNoExtraKeys!4197 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun lt!493373 () (_ BitVec 64))

(assert (=> b!1100794 (= lt!493373 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!493358 () (_ BitVec 64))

(assert (=> b!1100794 (= lt!493358 (select (arr!34302 _keys!1070) #b00000000000000000000000000000000))))

(assert (=> b!1100794 (= lt!493375 (addApplyDifferent!519 lt!493372 lt!493373 minValue!831 lt!493358))))

(assert (=> b!1100794 (= (apply!985 (+!3355 lt!493372 (tuple2!17433 lt!493373 minValue!831)) lt!493358) (apply!985 lt!493372 lt!493358))))

(declare-fun b!1100795 () Bool)

(declare-fun res!734657 () Bool)

(assert (=> b!1100795 (=> (not res!734657) (not e!628339))))

(assert (=> b!1100795 (= res!734657 e!628331)))

(declare-fun c!108677 () Bool)

(assert (=> b!1100795 (= c!108677 (not (= (bvand extraKeys!811 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!1100796 () Bool)

(assert (=> b!1100796 (= e!628332 e!628328)))

(declare-fun c!108678 () Bool)

(assert (=> b!1100796 (= c!108678 (and (not (= (bvand extraKeys!811 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeys!811 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun bm!46102 () Bool)

(assert (=> bm!46102 (= call!46102 (contains!6411 lt!493369 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun call!46103 () ListLongMap!15413)

(declare-fun bm!46103 () Bool)

(assert (=> bm!46103 (= call!46103 (+!3355 (ite c!108676 call!46107 (ite c!108678 call!46106 call!46104)) (ite (or c!108676 c!108678) (tuple2!17433 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!831) (tuple2!17433 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!831))))))

(declare-fun b!1100797 () Bool)

(assert (=> b!1100797 (= e!628339 e!628330)))

(declare-fun c!108679 () Bool)

(assert (=> b!1100797 (= c!108679 (not (= (bvand extraKeys!811 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1100798 () Bool)

(assert (=> b!1100798 (= e!628338 e!628335)))

(declare-fun res!734651 () Bool)

(assert (=> b!1100798 (=> (not res!734651) (not e!628335))))

(assert (=> b!1100798 (= res!734651 (contains!6411 lt!493369 (select (arr!34302 _keys!1070) #b00000000000000000000000000000000)))))

(assert (=> b!1100798 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!34839 _keys!1070)))))

(declare-fun bm!46104 () Bool)

(assert (=> bm!46104 (= call!46108 call!46103)))

(declare-fun bm!46105 () Bool)

(assert (=> bm!46105 (= call!46107 (getCurrentListMapNoExtraKeys!4197 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun b!1100799 () Bool)

(declare-fun c!108680 () Bool)

(assert (=> b!1100799 (= c!108680 (and (not (= (bvand extraKeys!811 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeys!811 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!1100799 (= e!628328 e!628334)))

(declare-fun b!1100800 () Bool)

(assert (=> b!1100800 (= e!628332 (+!3355 call!46103 (tuple2!17433 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!831)))))

(declare-fun b!1100801 () Bool)

(assert (=> b!1100801 (= e!628331 e!628336)))

(declare-fun res!734656 () Bool)

(assert (=> b!1100801 (= res!734656 call!46105)))

(assert (=> b!1100801 (=> (not res!734656) (not e!628336))))

(declare-fun b!1100802 () Bool)

(assert (=> b!1100802 (= e!628330 e!628329)))

(declare-fun res!734658 () Bool)

(assert (=> b!1100802 (= res!734658 call!46102)))

(assert (=> b!1100802 (=> (not res!734658) (not e!628329))))

(declare-fun b!1100803 () Bool)

(assert (=> b!1100803 (= e!628340 (validKeyInArray!0 (select (arr!34302 _keys!1070) #b00000000000000000000000000000000)))))

(assert (= (and d!130553 c!108676) b!1100800))

(assert (= (and d!130553 (not c!108676)) b!1100796))

(assert (= (and b!1100796 c!108678) b!1100786))

(assert (= (and b!1100796 (not c!108678)) b!1100799))

(assert (= (and b!1100799 c!108680) b!1100785))

(assert (= (and b!1100799 (not c!108680)) b!1100793))

(assert (= (or b!1100785 b!1100793) bm!46099))

(assert (= (or b!1100786 bm!46099) bm!46101))

(assert (= (or b!1100786 b!1100785) bm!46104))

(assert (= (or b!1100800 bm!46101) bm!46105))

(assert (= (or b!1100800 bm!46104) bm!46103))

(assert (= (and d!130553 res!734654) b!1100784))

(assert (= (and d!130553 c!108681) b!1100794))

(assert (= (and d!130553 (not c!108681)) b!1100789))

(assert (= (and d!130553 res!734652) b!1100788))

(assert (= (and b!1100788 res!734655) b!1100803))

(assert (= (and b!1100788 (not res!734653)) b!1100798))

(assert (= (and b!1100798 res!734651) b!1100787))

(assert (= (and b!1100788 res!734659) b!1100795))

(assert (= (and b!1100795 c!108677) b!1100801))

(assert (= (and b!1100795 (not c!108677)) b!1100792))

(assert (= (and b!1100801 res!734656) b!1100790))

(assert (= (or b!1100801 b!1100792) bm!46100))

(assert (= (and b!1100795 res!734657) b!1100797))

(assert (= (and b!1100797 c!108679) b!1100802))

(assert (= (and b!1100797 (not c!108679)) b!1100783))

(assert (= (and b!1100802 res!734658) b!1100791))

(assert (= (or b!1100802 b!1100783) bm!46102))

(declare-fun b_lambda!18061 () Bool)

(assert (=> (not b_lambda!18061) (not b!1100787)))

(assert (=> b!1100787 t!34313))

(declare-fun b_and!37101 () Bool)

(assert (= b_and!37095 (and (=> t!34313 result!16591) b_and!37101)))

(assert (=> bm!46105 m!1020973))

(declare-fun m!1021033 () Bool)

(assert (=> bm!46102 m!1021033))

(assert (=> b!1100787 m!1021029))

(declare-fun m!1021035 () Bool)

(assert (=> b!1100787 m!1021035))

(assert (=> b!1100787 m!1020955))

(assert (=> b!1100787 m!1021035))

(assert (=> b!1100787 m!1020955))

(declare-fun m!1021037 () Bool)

(assert (=> b!1100787 m!1021037))

(assert (=> b!1100787 m!1021029))

(declare-fun m!1021039 () Bool)

(assert (=> b!1100787 m!1021039))

(assert (=> b!1100784 m!1021029))

(assert (=> b!1100784 m!1021029))

(declare-fun m!1021041 () Bool)

(assert (=> b!1100784 m!1021041))

(declare-fun m!1021043 () Bool)

(assert (=> b!1100790 m!1021043))

(declare-fun m!1021045 () Bool)

(assert (=> b!1100800 m!1021045))

(declare-fun m!1021047 () Bool)

(assert (=> bm!46103 m!1021047))

(declare-fun m!1021049 () Bool)

(assert (=> bm!46100 m!1021049))

(assert (=> b!1100803 m!1021029))

(assert (=> b!1100803 m!1021029))

(assert (=> b!1100803 m!1021041))

(declare-fun m!1021051 () Bool)

(assert (=> b!1100791 m!1021051))

(assert (=> b!1100798 m!1021029))

(assert (=> b!1100798 m!1021029))

(declare-fun m!1021053 () Bool)

(assert (=> b!1100798 m!1021053))

(assert (=> d!130553 m!1020949))

(declare-fun m!1021055 () Bool)

(assert (=> b!1100794 m!1021055))

(declare-fun m!1021057 () Bool)

(assert (=> b!1100794 m!1021057))

(assert (=> b!1100794 m!1021055))

(declare-fun m!1021059 () Bool)

(assert (=> b!1100794 m!1021059))

(assert (=> b!1100794 m!1021059))

(declare-fun m!1021061 () Bool)

(assert (=> b!1100794 m!1021061))

(declare-fun m!1021063 () Bool)

(assert (=> b!1100794 m!1021063))

(assert (=> b!1100794 m!1021029))

(declare-fun m!1021065 () Bool)

(assert (=> b!1100794 m!1021065))

(declare-fun m!1021067 () Bool)

(assert (=> b!1100794 m!1021067))

(declare-fun m!1021069 () Bool)

(assert (=> b!1100794 m!1021069))

(declare-fun m!1021071 () Bool)

(assert (=> b!1100794 m!1021071))

(declare-fun m!1021073 () Bool)

(assert (=> b!1100794 m!1021073))

(assert (=> b!1100794 m!1021071))

(declare-fun m!1021075 () Bool)

(assert (=> b!1100794 m!1021075))

(assert (=> b!1100794 m!1020973))

(declare-fun m!1021077 () Bool)

(assert (=> b!1100794 m!1021077))

(declare-fun m!1021079 () Bool)

(assert (=> b!1100794 m!1021079))

(assert (=> b!1100794 m!1021067))

(declare-fun m!1021081 () Bool)

(assert (=> b!1100794 m!1021081))

(declare-fun m!1021083 () Bool)

(assert (=> b!1100794 m!1021083))

(assert (=> b!1100687 d!130553))

(declare-fun b!1100804 () Bool)

(declare-fun e!628343 () Bool)

(declare-fun call!46109 () Bool)

(assert (=> b!1100804 (= e!628343 (not call!46109))))

(declare-fun b!1100805 () Bool)

(declare-fun e!628350 () Bool)

(assert (=> b!1100805 (= e!628350 (validKeyInArray!0 (select (arr!34302 lt!493278) #b00000000000000000000000000000000)))))

(declare-fun b!1100806 () Bool)

(declare-fun e!628347 () ListLongMap!15413)

(declare-fun call!46115 () ListLongMap!15413)

(assert (=> b!1100806 (= e!628347 call!46115)))

(declare-fun b!1100807 () Bool)

(declare-fun e!628341 () ListLongMap!15413)

(assert (=> b!1100807 (= e!628341 call!46115)))

(declare-fun b!1100808 () Bool)

(declare-fun lt!493391 () ListLongMap!15413)

(declare-fun e!628348 () Bool)

(assert (=> b!1100808 (= e!628348 (= (apply!985 lt!493391 (select (arr!34302 lt!493278) #b00000000000000000000000000000000)) (get!17659 (select (arr!34303 lt!493275) #b00000000000000000000000000000000) (dynLambda!2328 defaultEntry!882 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1100808 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!34840 lt!493275)))))

(assert (=> b!1100808 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!34839 lt!493278)))))

(declare-fun bm!46106 () Bool)

(declare-fun call!46111 () ListLongMap!15413)

(declare-fun call!46113 () ListLongMap!15413)

(assert (=> bm!46106 (= call!46111 call!46113)))

(declare-fun b!1100809 () Bool)

(declare-fun res!734668 () Bool)

(declare-fun e!628352 () Bool)

(assert (=> b!1100809 (=> (not res!734668) (not e!628352))))

(declare-fun e!628351 () Bool)

(assert (=> b!1100809 (= res!734668 e!628351)))

(declare-fun res!734662 () Bool)

(assert (=> b!1100809 (=> res!734662 e!628351)))

(declare-fun e!628353 () Bool)

(assert (=> b!1100809 (= res!734662 (not e!628353))))

(declare-fun res!734664 () Bool)

(assert (=> b!1100809 (=> (not res!734664) (not e!628353))))

(assert (=> b!1100809 (= res!734664 (bvslt #b00000000000000000000000000000000 (size!34839 lt!493278)))))

(declare-fun b!1100810 () Bool)

(declare-fun e!628346 () Unit!36117)

(declare-fun Unit!36120 () Unit!36117)

(assert (=> b!1100810 (= e!628346 Unit!36120)))

(declare-fun b!1100811 () Bool)

(declare-fun e!628349 () Bool)

(assert (=> b!1100811 (= e!628349 (= (apply!985 lt!493391 #b0000000000000000000000000000000000000000000000000000000000000000) zeroValue!831))))

(declare-fun b!1100812 () Bool)

(declare-fun e!628342 () Bool)

(assert (=> b!1100812 (= e!628342 (= (apply!985 lt!493391 #b1000000000000000000000000000000000000000000000000000000000000000) minValue!831))))

(declare-fun b!1100813 () Bool)

(declare-fun e!628344 () Bool)

(declare-fun call!46112 () Bool)

(assert (=> b!1100813 (= e!628344 (not call!46112))))

(declare-fun d!130555 () Bool)

(assert (=> d!130555 e!628352))

(declare-fun res!734661 () Bool)

(assert (=> d!130555 (=> (not res!734661) (not e!628352))))

(assert (=> d!130555 (= res!734661 (or (bvsge #b00000000000000000000000000000000 (size!34839 lt!493278)) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!34839 lt!493278)))))))

(declare-fun lt!493381 () ListLongMap!15413)

(assert (=> d!130555 (= lt!493391 lt!493381)))

(declare-fun lt!493396 () Unit!36117)

(assert (=> d!130555 (= lt!493396 e!628346)))

(declare-fun c!108687 () Bool)

(assert (=> d!130555 (= c!108687 e!628350)))

(declare-fun res!734663 () Bool)

(assert (=> d!130555 (=> (not res!734663) (not e!628350))))

(assert (=> d!130555 (= res!734663 (bvslt #b00000000000000000000000000000000 (size!34839 lt!493278)))))

(declare-fun e!628345 () ListLongMap!15413)

(assert (=> d!130555 (= lt!493381 e!628345)))

(declare-fun c!108682 () Bool)

(assert (=> d!130555 (= c!108682 (and (not (= (bvand extraKeys!811 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!811 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!130555 (validMask!0 mask!1414)))

(assert (=> d!130555 (= (getCurrentListMap!4410 lt!493278 lt!493275 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882) lt!493391)))

(declare-fun bm!46107 () Bool)

(assert (=> bm!46107 (= call!46112 (contains!6411 lt!493391 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1100814 () Bool)

(assert (=> b!1100814 (= e!628347 call!46111)))

(declare-fun bm!46108 () Bool)

(declare-fun call!46114 () ListLongMap!15413)

(assert (=> bm!46108 (= call!46113 call!46114)))

(declare-fun b!1100815 () Bool)

(declare-fun lt!493397 () Unit!36117)

(assert (=> b!1100815 (= e!628346 lt!493397)))

(declare-fun lt!493384 () ListLongMap!15413)

(assert (=> b!1100815 (= lt!493384 (getCurrentListMapNoExtraKeys!4197 lt!493278 lt!493275 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun lt!493385 () (_ BitVec 64))

(assert (=> b!1100815 (= lt!493385 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!493383 () (_ BitVec 64))

(assert (=> b!1100815 (= lt!493383 (select (arr!34302 lt!493278) #b00000000000000000000000000000000))))

(declare-fun lt!493390 () Unit!36117)

(assert (=> b!1100815 (= lt!493390 (addStillContains!667 lt!493384 lt!493385 zeroValue!831 lt!493383))))

(assert (=> b!1100815 (contains!6411 (+!3355 lt!493384 (tuple2!17433 lt!493385 zeroValue!831)) lt!493383)))

(declare-fun lt!493377 () Unit!36117)

(assert (=> b!1100815 (= lt!493377 lt!493390)))

(declare-fun lt!493376 () ListLongMap!15413)

(assert (=> b!1100815 (= lt!493376 (getCurrentListMapNoExtraKeys!4197 lt!493278 lt!493275 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun lt!493378 () (_ BitVec 64))

(assert (=> b!1100815 (= lt!493378 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!493388 () (_ BitVec 64))

(assert (=> b!1100815 (= lt!493388 (select (arr!34302 lt!493278) #b00000000000000000000000000000000))))

(declare-fun lt!493389 () Unit!36117)

(assert (=> b!1100815 (= lt!493389 (addApplyDifferent!519 lt!493376 lt!493378 minValue!831 lt!493388))))

(assert (=> b!1100815 (= (apply!985 (+!3355 lt!493376 (tuple2!17433 lt!493378 minValue!831)) lt!493388) (apply!985 lt!493376 lt!493388))))

(declare-fun lt!493379 () Unit!36117)

(assert (=> b!1100815 (= lt!493379 lt!493389)))

(declare-fun lt!493386 () ListLongMap!15413)

(assert (=> b!1100815 (= lt!493386 (getCurrentListMapNoExtraKeys!4197 lt!493278 lt!493275 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun lt!493387 () (_ BitVec 64))

(assert (=> b!1100815 (= lt!493387 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!493393 () (_ BitVec 64))

(assert (=> b!1100815 (= lt!493393 (select (arr!34302 lt!493278) #b00000000000000000000000000000000))))

(declare-fun lt!493392 () Unit!36117)

(assert (=> b!1100815 (= lt!493392 (addApplyDifferent!519 lt!493386 lt!493387 zeroValue!831 lt!493393))))

(assert (=> b!1100815 (= (apply!985 (+!3355 lt!493386 (tuple2!17433 lt!493387 zeroValue!831)) lt!493393) (apply!985 lt!493386 lt!493393))))

(declare-fun lt!493382 () Unit!36117)

(assert (=> b!1100815 (= lt!493382 lt!493392)))

(declare-fun lt!493394 () ListLongMap!15413)

(assert (=> b!1100815 (= lt!493394 (getCurrentListMapNoExtraKeys!4197 lt!493278 lt!493275 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun lt!493395 () (_ BitVec 64))

(assert (=> b!1100815 (= lt!493395 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!493380 () (_ BitVec 64))

(assert (=> b!1100815 (= lt!493380 (select (arr!34302 lt!493278) #b00000000000000000000000000000000))))

(assert (=> b!1100815 (= lt!493397 (addApplyDifferent!519 lt!493394 lt!493395 minValue!831 lt!493380))))

(assert (=> b!1100815 (= (apply!985 (+!3355 lt!493394 (tuple2!17433 lt!493395 minValue!831)) lt!493380) (apply!985 lt!493394 lt!493380))))

(declare-fun b!1100816 () Bool)

(declare-fun res!734666 () Bool)

(assert (=> b!1100816 (=> (not res!734666) (not e!628352))))

(assert (=> b!1100816 (= res!734666 e!628344)))

(declare-fun c!108683 () Bool)

(assert (=> b!1100816 (= c!108683 (not (= (bvand extraKeys!811 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!1100817 () Bool)

(assert (=> b!1100817 (= e!628345 e!628341)))

(declare-fun c!108684 () Bool)

(assert (=> b!1100817 (= c!108684 (and (not (= (bvand extraKeys!811 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeys!811 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun bm!46109 () Bool)

(assert (=> bm!46109 (= call!46109 (contains!6411 lt!493391 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun bm!46110 () Bool)

(declare-fun call!46110 () ListLongMap!15413)

(assert (=> bm!46110 (= call!46110 (+!3355 (ite c!108682 call!46114 (ite c!108684 call!46113 call!46111)) (ite (or c!108682 c!108684) (tuple2!17433 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!831) (tuple2!17433 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!831))))))

(declare-fun b!1100818 () Bool)

(assert (=> b!1100818 (= e!628352 e!628343)))

(declare-fun c!108685 () Bool)

(assert (=> b!1100818 (= c!108685 (not (= (bvand extraKeys!811 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1100819 () Bool)

(assert (=> b!1100819 (= e!628351 e!628348)))

(declare-fun res!734660 () Bool)

(assert (=> b!1100819 (=> (not res!734660) (not e!628348))))

(assert (=> b!1100819 (= res!734660 (contains!6411 lt!493391 (select (arr!34302 lt!493278) #b00000000000000000000000000000000)))))

(assert (=> b!1100819 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!34839 lt!493278)))))

(declare-fun bm!46111 () Bool)

(assert (=> bm!46111 (= call!46115 call!46110)))

(declare-fun bm!46112 () Bool)

(assert (=> bm!46112 (= call!46114 (getCurrentListMapNoExtraKeys!4197 lt!493278 lt!493275 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun b!1100820 () Bool)

(declare-fun c!108686 () Bool)

(assert (=> b!1100820 (= c!108686 (and (not (= (bvand extraKeys!811 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeys!811 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!1100820 (= e!628341 e!628347)))

(declare-fun b!1100821 () Bool)

(assert (=> b!1100821 (= e!628345 (+!3355 call!46110 (tuple2!17433 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!831)))))

(declare-fun b!1100822 () Bool)

(assert (=> b!1100822 (= e!628344 e!628349)))

(declare-fun res!734665 () Bool)

(assert (=> b!1100822 (= res!734665 call!46112)))

(assert (=> b!1100822 (=> (not res!734665) (not e!628349))))

(declare-fun b!1100823 () Bool)

(assert (=> b!1100823 (= e!628343 e!628342)))

(declare-fun res!734667 () Bool)

(assert (=> b!1100823 (= res!734667 call!46109)))

(assert (=> b!1100823 (=> (not res!734667) (not e!628342))))

(declare-fun b!1100824 () Bool)

(assert (=> b!1100824 (= e!628353 (validKeyInArray!0 (select (arr!34302 lt!493278) #b00000000000000000000000000000000)))))

(assert (= (and d!130555 c!108682) b!1100821))

(assert (= (and d!130555 (not c!108682)) b!1100817))

(assert (= (and b!1100817 c!108684) b!1100807))

(assert (= (and b!1100817 (not c!108684)) b!1100820))

(assert (= (and b!1100820 c!108686) b!1100806))

(assert (= (and b!1100820 (not c!108686)) b!1100814))

(assert (= (or b!1100806 b!1100814) bm!46106))

(assert (= (or b!1100807 bm!46106) bm!46108))

(assert (= (or b!1100807 b!1100806) bm!46111))

(assert (= (or b!1100821 bm!46108) bm!46112))

(assert (= (or b!1100821 bm!46111) bm!46110))

(assert (= (and d!130555 res!734663) b!1100805))

(assert (= (and d!130555 c!108687) b!1100815))

(assert (= (and d!130555 (not c!108687)) b!1100810))

(assert (= (and d!130555 res!734661) b!1100809))

(assert (= (and b!1100809 res!734664) b!1100824))

(assert (= (and b!1100809 (not res!734662)) b!1100819))

(assert (= (and b!1100819 res!734660) b!1100808))

(assert (= (and b!1100809 res!734668) b!1100816))

(assert (= (and b!1100816 c!108683) b!1100822))

(assert (= (and b!1100816 (not c!108683)) b!1100813))

(assert (= (and b!1100822 res!734665) b!1100811))

(assert (= (or b!1100822 b!1100813) bm!46107))

(assert (= (and b!1100816 res!734666) b!1100818))

(assert (= (and b!1100818 c!108685) b!1100823))

(assert (= (and b!1100818 (not c!108685)) b!1100804))

(assert (= (and b!1100823 res!734667) b!1100812))

(assert (= (or b!1100823 b!1100804) bm!46109))

(declare-fun b_lambda!18063 () Bool)

(assert (=> (not b_lambda!18063) (not b!1100808)))

(assert (=> b!1100808 t!34313))

(declare-fun b_and!37103 () Bool)

(assert (= b_and!37101 (and (=> t!34313 result!16591) b_and!37103)))

(assert (=> bm!46112 m!1020971))

(declare-fun m!1021085 () Bool)

(assert (=> bm!46109 m!1021085))

(declare-fun m!1021087 () Bool)

(assert (=> b!1100808 m!1021087))

(declare-fun m!1021089 () Bool)

(assert (=> b!1100808 m!1021089))

(assert (=> b!1100808 m!1020955))

(assert (=> b!1100808 m!1021089))

(assert (=> b!1100808 m!1020955))

(declare-fun m!1021091 () Bool)

(assert (=> b!1100808 m!1021091))

(assert (=> b!1100808 m!1021087))

(declare-fun m!1021093 () Bool)

(assert (=> b!1100808 m!1021093))

(assert (=> b!1100805 m!1021087))

(assert (=> b!1100805 m!1021087))

(declare-fun m!1021095 () Bool)

(assert (=> b!1100805 m!1021095))

(declare-fun m!1021097 () Bool)

(assert (=> b!1100811 m!1021097))

(declare-fun m!1021099 () Bool)

(assert (=> b!1100821 m!1021099))

(declare-fun m!1021101 () Bool)

(assert (=> bm!46110 m!1021101))

(declare-fun m!1021103 () Bool)

(assert (=> bm!46107 m!1021103))

(assert (=> b!1100824 m!1021087))

(assert (=> b!1100824 m!1021087))

(assert (=> b!1100824 m!1021095))

(declare-fun m!1021105 () Bool)

(assert (=> b!1100812 m!1021105))

(assert (=> b!1100819 m!1021087))

(assert (=> b!1100819 m!1021087))

(declare-fun m!1021107 () Bool)

(assert (=> b!1100819 m!1021107))

(assert (=> d!130555 m!1020949))

(declare-fun m!1021109 () Bool)

(assert (=> b!1100815 m!1021109))

(declare-fun m!1021111 () Bool)

(assert (=> b!1100815 m!1021111))

(assert (=> b!1100815 m!1021109))

(declare-fun m!1021113 () Bool)

(assert (=> b!1100815 m!1021113))

(assert (=> b!1100815 m!1021113))

(declare-fun m!1021115 () Bool)

(assert (=> b!1100815 m!1021115))

(declare-fun m!1021117 () Bool)

(assert (=> b!1100815 m!1021117))

(assert (=> b!1100815 m!1021087))

(declare-fun m!1021119 () Bool)

(assert (=> b!1100815 m!1021119))

(declare-fun m!1021121 () Bool)

(assert (=> b!1100815 m!1021121))

(declare-fun m!1021123 () Bool)

(assert (=> b!1100815 m!1021123))

(declare-fun m!1021125 () Bool)

(assert (=> b!1100815 m!1021125))

(declare-fun m!1021127 () Bool)

(assert (=> b!1100815 m!1021127))

(assert (=> b!1100815 m!1021125))

(declare-fun m!1021129 () Bool)

(assert (=> b!1100815 m!1021129))

(assert (=> b!1100815 m!1020971))

(declare-fun m!1021131 () Bool)

(assert (=> b!1100815 m!1021131))

(declare-fun m!1021133 () Bool)

(assert (=> b!1100815 m!1021133))

(assert (=> b!1100815 m!1021121))

(declare-fun m!1021135 () Bool)

(assert (=> b!1100815 m!1021135))

(declare-fun m!1021137 () Bool)

(assert (=> b!1100815 m!1021137))

(assert (=> b!1100687 d!130555))

(declare-fun lt!493413 () ListLongMap!15413)

(declare-fun b!1100849 () Bool)

(declare-fun e!628368 () Bool)

(assert (=> b!1100849 (= e!628368 (= lt!493413 (getCurrentListMapNoExtraKeys!4197 lt!493278 lt!493275 mask!1414 extraKeys!811 zeroValue!831 minValue!831 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) defaultEntry!882)))))

(declare-fun d!130557 () Bool)

(declare-fun e!628373 () Bool)

(assert (=> d!130557 e!628373))

(declare-fun res!734678 () Bool)

(assert (=> d!130557 (=> (not res!734678) (not e!628373))))

(assert (=> d!130557 (= res!734678 (not (contains!6411 lt!493413 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun e!628369 () ListLongMap!15413)

(assert (=> d!130557 (= lt!493413 e!628369)))

(declare-fun c!108698 () Bool)

(assert (=> d!130557 (= c!108698 (bvsge #b00000000000000000000000000000000 (size!34839 lt!493278)))))

(assert (=> d!130557 (validMask!0 mask!1414)))

(assert (=> d!130557 (= (getCurrentListMapNoExtraKeys!4197 lt!493278 lt!493275 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882) lt!493413)))

(declare-fun b!1100850 () Bool)

(assert (=> b!1100850 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!34839 lt!493278)))))

(assert (=> b!1100850 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!34840 lt!493275)))))

(declare-fun e!628374 () Bool)

(assert (=> b!1100850 (= e!628374 (= (apply!985 lt!493413 (select (arr!34302 lt!493278) #b00000000000000000000000000000000)) (get!17659 (select (arr!34303 lt!493275) #b00000000000000000000000000000000) (dynLambda!2328 defaultEntry!882 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun bm!46115 () Bool)

(declare-fun call!46118 () ListLongMap!15413)

(assert (=> bm!46115 (= call!46118 (getCurrentListMapNoExtraKeys!4197 lt!493278 lt!493275 mask!1414 extraKeys!811 zeroValue!831 minValue!831 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) defaultEntry!882))))

(declare-fun b!1100851 () Bool)

(declare-fun lt!493417 () Unit!36117)

(declare-fun lt!493416 () Unit!36117)

(assert (=> b!1100851 (= lt!493417 lt!493416)))

(declare-fun lt!493412 () ListLongMap!15413)

(declare-fun lt!493414 () (_ BitVec 64))

(declare-fun lt!493418 () (_ BitVec 64))

(declare-fun lt!493415 () V!41403)

(assert (=> b!1100851 (not (contains!6411 (+!3355 lt!493412 (tuple2!17433 lt!493414 lt!493415)) lt!493418))))

(declare-fun addStillNotContains!280 (ListLongMap!15413 (_ BitVec 64) V!41403 (_ BitVec 64)) Unit!36117)

(assert (=> b!1100851 (= lt!493416 (addStillNotContains!280 lt!493412 lt!493414 lt!493415 lt!493418))))

(assert (=> b!1100851 (= lt!493418 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!1100851 (= lt!493415 (get!17659 (select (arr!34303 lt!493275) #b00000000000000000000000000000000) (dynLambda!2328 defaultEntry!882 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!1100851 (= lt!493414 (select (arr!34302 lt!493278) #b00000000000000000000000000000000))))

(assert (=> b!1100851 (= lt!493412 call!46118)))

(declare-fun e!628371 () ListLongMap!15413)

(assert (=> b!1100851 (= e!628371 (+!3355 call!46118 (tuple2!17433 (select (arr!34302 lt!493278) #b00000000000000000000000000000000) (get!17659 (select (arr!34303 lt!493275) #b00000000000000000000000000000000) (dynLambda!2328 defaultEntry!882 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!1100852 () Bool)

(declare-fun e!628370 () Bool)

(assert (=> b!1100852 (= e!628370 e!628368)))

(declare-fun c!108697 () Bool)

(assert (=> b!1100852 (= c!108697 (bvslt #b00000000000000000000000000000000 (size!34839 lt!493278)))))

(declare-fun b!1100853 () Bool)

(assert (=> b!1100853 (= e!628371 call!46118)))

(declare-fun b!1100854 () Bool)

(declare-fun isEmpty!971 (ListLongMap!15413) Bool)

(assert (=> b!1100854 (= e!628368 (isEmpty!971 lt!493413))))

(declare-fun b!1100855 () Bool)

(assert (=> b!1100855 (= e!628369 e!628371)))

(declare-fun c!108696 () Bool)

(assert (=> b!1100855 (= c!108696 (validKeyInArray!0 (select (arr!34302 lt!493278) #b00000000000000000000000000000000)))))

(declare-fun b!1100856 () Bool)

(assert (=> b!1100856 (= e!628373 e!628370)))

(declare-fun c!108699 () Bool)

(declare-fun e!628372 () Bool)

(assert (=> b!1100856 (= c!108699 e!628372)))

(declare-fun res!734677 () Bool)

(assert (=> b!1100856 (=> (not res!734677) (not e!628372))))

(assert (=> b!1100856 (= res!734677 (bvslt #b00000000000000000000000000000000 (size!34839 lt!493278)))))

(declare-fun b!1100857 () Bool)

(assert (=> b!1100857 (= e!628369 (ListLongMap!15414 Nil!24101))))

(declare-fun b!1100858 () Bool)

(declare-fun res!734680 () Bool)

(assert (=> b!1100858 (=> (not res!734680) (not e!628373))))

(assert (=> b!1100858 (= res!734680 (not (contains!6411 lt!493413 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1100859 () Bool)

(assert (=> b!1100859 (= e!628372 (validKeyInArray!0 (select (arr!34302 lt!493278) #b00000000000000000000000000000000)))))

(assert (=> b!1100859 (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000)))

(declare-fun b!1100860 () Bool)

(assert (=> b!1100860 (= e!628370 e!628374)))

(assert (=> b!1100860 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!34839 lt!493278)))))

(declare-fun res!734679 () Bool)

(assert (=> b!1100860 (= res!734679 (contains!6411 lt!493413 (select (arr!34302 lt!493278) #b00000000000000000000000000000000)))))

(assert (=> b!1100860 (=> (not res!734679) (not e!628374))))

(assert (= (and d!130557 c!108698) b!1100857))

(assert (= (and d!130557 (not c!108698)) b!1100855))

(assert (= (and b!1100855 c!108696) b!1100851))

(assert (= (and b!1100855 (not c!108696)) b!1100853))

(assert (= (or b!1100851 b!1100853) bm!46115))

(assert (= (and d!130557 res!734678) b!1100858))

(assert (= (and b!1100858 res!734680) b!1100856))

(assert (= (and b!1100856 res!734677) b!1100859))

(assert (= (and b!1100856 c!108699) b!1100860))

(assert (= (and b!1100856 (not c!108699)) b!1100852))

(assert (= (and b!1100860 res!734679) b!1100850))

(assert (= (and b!1100852 c!108697) b!1100849))

(assert (= (and b!1100852 (not c!108697)) b!1100854))

(declare-fun b_lambda!18065 () Bool)

(assert (=> (not b_lambda!18065) (not b!1100850)))

(assert (=> b!1100850 t!34313))

(declare-fun b_and!37105 () Bool)

(assert (= b_and!37103 (and (=> t!34313 result!16591) b_and!37105)))

(declare-fun b_lambda!18067 () Bool)

(assert (=> (not b_lambda!18067) (not b!1100851)))

(assert (=> b!1100851 t!34313))

(declare-fun b_and!37107 () Bool)

(assert (= b_and!37105 (and (=> t!34313 result!16591) b_and!37107)))

(assert (=> b!1100851 m!1021089))

(assert (=> b!1100851 m!1020955))

(assert (=> b!1100851 m!1021091))

(assert (=> b!1100851 m!1020955))

(assert (=> b!1100851 m!1021089))

(declare-fun m!1021139 () Bool)

(assert (=> b!1100851 m!1021139))

(assert (=> b!1100851 m!1021087))

(declare-fun m!1021141 () Bool)

(assert (=> b!1100851 m!1021141))

(declare-fun m!1021143 () Bool)

(assert (=> b!1100851 m!1021143))

(declare-fun m!1021145 () Bool)

(assert (=> b!1100851 m!1021145))

(assert (=> b!1100851 m!1021141))

(assert (=> b!1100850 m!1021089))

(assert (=> b!1100850 m!1020955))

(assert (=> b!1100850 m!1021091))

(assert (=> b!1100850 m!1020955))

(assert (=> b!1100850 m!1021089))

(assert (=> b!1100850 m!1021087))

(assert (=> b!1100850 m!1021087))

(declare-fun m!1021147 () Bool)

(assert (=> b!1100850 m!1021147))

(declare-fun m!1021149 () Bool)

(assert (=> b!1100858 m!1021149))

(declare-fun m!1021151 () Bool)

(assert (=> bm!46115 m!1021151))

(assert (=> b!1100849 m!1021151))

(assert (=> b!1100860 m!1021087))

(assert (=> b!1100860 m!1021087))

(declare-fun m!1021153 () Bool)

(assert (=> b!1100860 m!1021153))

(declare-fun m!1021155 () Bool)

(assert (=> d!130557 m!1021155))

(assert (=> d!130557 m!1020949))

(assert (=> b!1100859 m!1021087))

(assert (=> b!1100859 m!1021087))

(assert (=> b!1100859 m!1021095))

(declare-fun m!1021157 () Bool)

(assert (=> b!1100854 m!1021157))

(assert (=> b!1100855 m!1021087))

(assert (=> b!1100855 m!1021087))

(assert (=> b!1100855 m!1021095))

(assert (=> b!1100687 d!130557))

(declare-fun b!1100867 () Bool)

(declare-fun e!628380 () Bool)

(declare-fun call!46123 () ListLongMap!15413)

(declare-fun call!46124 () ListLongMap!15413)

(assert (=> b!1100867 (= e!628380 (= call!46124 (-!962 call!46123 k0!904)))))

(assert (=> b!1100867 (and (bvsge i!650 #b00000000000000000000000000000000) (bvslt i!650 (size!34840 _values!874)))))

(declare-fun bm!46120 () Bool)

(assert (=> bm!46120 (= call!46124 (getCurrentListMapNoExtraKeys!4197 (array!71283 (store (arr!34302 _keys!1070) i!650 #b1000000000000000000000000000000000000000000000000000000000000000) (size!34839 _keys!1070)) (array!71285 (store (arr!34303 _values!874) i!650 (ValueCellFull!12894 (dynLambda!2328 defaultEntry!882 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!34840 _values!874)) mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun b!1100868 () Bool)

(assert (=> b!1100868 (= e!628380 (= call!46124 call!46123))))

(assert (=> b!1100868 (and (bvsge i!650 #b00000000000000000000000000000000) (bvslt i!650 (size!34840 _values!874)))))

(declare-fun d!130559 () Bool)

(declare-fun e!628379 () Bool)

(assert (=> d!130559 e!628379))

(declare-fun res!734683 () Bool)

(assert (=> d!130559 (=> (not res!734683) (not e!628379))))

(assert (=> d!130559 (= res!734683 (and (or (not (bvsle #b00000000000000000000000000000000 i!650)) (and (bvsge i!650 #b00000000000000000000000000000000) (bvslt i!650 (size!34839 _keys!1070)))) (or (bvsle #b00000000000000000000000000000000 i!650) (and (bvsge i!650 #b00000000000000000000000000000000) (bvslt i!650 (size!34839 _keys!1070))))))))

(declare-fun lt!493421 () Unit!36117)

(declare-fun choose!1776 (array!71282 array!71284 (_ BitVec 32) (_ BitVec 32) V!41403 V!41403 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!36117)

(assert (=> d!130559 (= lt!493421 (choose!1776 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 i!650 k0!904 #b00000000000000000000000000000000 defaultEntry!882))))

(assert (=> d!130559 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvsle #b00000000000000000000000000000000 (size!34839 _keys!1070)))))

(assert (=> d!130559 (= (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!222 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 i!650 k0!904 #b00000000000000000000000000000000 defaultEntry!882) lt!493421)))

(declare-fun b!1100869 () Bool)

(assert (=> b!1100869 (= e!628379 e!628380)))

(declare-fun c!108702 () Bool)

(assert (=> b!1100869 (= c!108702 (bvsle #b00000000000000000000000000000000 i!650))))

(declare-fun bm!46121 () Bool)

(assert (=> bm!46121 (= call!46123 (getCurrentListMapNoExtraKeys!4197 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(assert (= (and d!130559 res!734683) b!1100869))

(assert (= (and b!1100869 c!108702) b!1100867))

(assert (= (and b!1100869 (not c!108702)) b!1100868))

(assert (= (or b!1100867 b!1100868) bm!46121))

(assert (= (or b!1100867 b!1100868) bm!46120))

(declare-fun b_lambda!18069 () Bool)

(assert (=> (not b_lambda!18069) (not bm!46120)))

(assert (=> bm!46120 t!34313))

(declare-fun b_and!37109 () Bool)

(assert (= b_and!37107 (and (=> t!34313 result!16591) b_and!37109)))

(declare-fun m!1021159 () Bool)

(assert (=> b!1100867 m!1021159))

(assert (=> bm!46120 m!1020943))

(assert (=> bm!46120 m!1020955))

(assert (=> bm!46120 m!1020959))

(declare-fun m!1021161 () Bool)

(assert (=> bm!46120 m!1021161))

(declare-fun m!1021163 () Bool)

(assert (=> d!130559 m!1021163))

(assert (=> bm!46121 m!1020973))

(assert (=> b!1100687 d!130559))

(declare-fun d!130561 () Bool)

(declare-fun lt!493424 () ListLongMap!15413)

(assert (=> d!130561 (not (contains!6411 lt!493424 k0!904))))

(declare-fun removeStrictlySorted!85 (List!24104 (_ BitVec 64)) List!24104)

(assert (=> d!130561 (= lt!493424 (ListLongMap!15414 (removeStrictlySorted!85 (toList!7722 lt!493280) k0!904)))))

(assert (=> d!130561 (= (-!962 lt!493280 k0!904) lt!493424)))

(declare-fun bs!32311 () Bool)

(assert (= bs!32311 d!130561))

(declare-fun m!1021165 () Bool)

(assert (=> bs!32311 m!1021165))

(declare-fun m!1021167 () Bool)

(assert (=> bs!32311 m!1021167))

(assert (=> b!1100687 d!130561))

(declare-fun b!1100870 () Bool)

(declare-fun lt!493426 () ListLongMap!15413)

(declare-fun e!628381 () Bool)

(assert (=> b!1100870 (= e!628381 (= lt!493426 (getCurrentListMapNoExtraKeys!4197 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) defaultEntry!882)))))

(declare-fun d!130563 () Bool)

(declare-fun e!628386 () Bool)

(assert (=> d!130563 e!628386))

(declare-fun res!734685 () Bool)

(assert (=> d!130563 (=> (not res!734685) (not e!628386))))

(assert (=> d!130563 (= res!734685 (not (contains!6411 lt!493426 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun e!628382 () ListLongMap!15413)

(assert (=> d!130563 (= lt!493426 e!628382)))

(declare-fun c!108705 () Bool)

(assert (=> d!130563 (= c!108705 (bvsge #b00000000000000000000000000000000 (size!34839 _keys!1070)))))

(assert (=> d!130563 (validMask!0 mask!1414)))

(assert (=> d!130563 (= (getCurrentListMapNoExtraKeys!4197 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882) lt!493426)))

(declare-fun b!1100871 () Bool)

(assert (=> b!1100871 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!34839 _keys!1070)))))

(assert (=> b!1100871 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!34840 _values!874)))))

(declare-fun e!628387 () Bool)

(assert (=> b!1100871 (= e!628387 (= (apply!985 lt!493426 (select (arr!34302 _keys!1070) #b00000000000000000000000000000000)) (get!17659 (select (arr!34303 _values!874) #b00000000000000000000000000000000) (dynLambda!2328 defaultEntry!882 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun bm!46122 () Bool)

(declare-fun call!46125 () ListLongMap!15413)

(assert (=> bm!46122 (= call!46125 (getCurrentListMapNoExtraKeys!4197 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) defaultEntry!882))))

(declare-fun b!1100872 () Bool)

(declare-fun lt!493430 () Unit!36117)

(declare-fun lt!493429 () Unit!36117)

(assert (=> b!1100872 (= lt!493430 lt!493429)))

(declare-fun lt!493428 () V!41403)

(declare-fun lt!493425 () ListLongMap!15413)

(declare-fun lt!493431 () (_ BitVec 64))

(declare-fun lt!493427 () (_ BitVec 64))

(assert (=> b!1100872 (not (contains!6411 (+!3355 lt!493425 (tuple2!17433 lt!493427 lt!493428)) lt!493431))))

(assert (=> b!1100872 (= lt!493429 (addStillNotContains!280 lt!493425 lt!493427 lt!493428 lt!493431))))

(assert (=> b!1100872 (= lt!493431 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!1100872 (= lt!493428 (get!17659 (select (arr!34303 _values!874) #b00000000000000000000000000000000) (dynLambda!2328 defaultEntry!882 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!1100872 (= lt!493427 (select (arr!34302 _keys!1070) #b00000000000000000000000000000000))))

(assert (=> b!1100872 (= lt!493425 call!46125)))

(declare-fun e!628384 () ListLongMap!15413)

(assert (=> b!1100872 (= e!628384 (+!3355 call!46125 (tuple2!17433 (select (arr!34302 _keys!1070) #b00000000000000000000000000000000) (get!17659 (select (arr!34303 _values!874) #b00000000000000000000000000000000) (dynLambda!2328 defaultEntry!882 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!1100873 () Bool)

(declare-fun e!628383 () Bool)

(assert (=> b!1100873 (= e!628383 e!628381)))

(declare-fun c!108704 () Bool)

(assert (=> b!1100873 (= c!108704 (bvslt #b00000000000000000000000000000000 (size!34839 _keys!1070)))))

(declare-fun b!1100874 () Bool)

(assert (=> b!1100874 (= e!628384 call!46125)))

(declare-fun b!1100875 () Bool)

(assert (=> b!1100875 (= e!628381 (isEmpty!971 lt!493426))))

(declare-fun b!1100876 () Bool)

(assert (=> b!1100876 (= e!628382 e!628384)))

(declare-fun c!108703 () Bool)

(assert (=> b!1100876 (= c!108703 (validKeyInArray!0 (select (arr!34302 _keys!1070) #b00000000000000000000000000000000)))))

(declare-fun b!1100877 () Bool)

(assert (=> b!1100877 (= e!628386 e!628383)))

(declare-fun c!108706 () Bool)

(declare-fun e!628385 () Bool)

(assert (=> b!1100877 (= c!108706 e!628385)))

(declare-fun res!734684 () Bool)

(assert (=> b!1100877 (=> (not res!734684) (not e!628385))))

(assert (=> b!1100877 (= res!734684 (bvslt #b00000000000000000000000000000000 (size!34839 _keys!1070)))))

(declare-fun b!1100878 () Bool)

(assert (=> b!1100878 (= e!628382 (ListLongMap!15414 Nil!24101))))

(declare-fun b!1100879 () Bool)

(declare-fun res!734687 () Bool)

(assert (=> b!1100879 (=> (not res!734687) (not e!628386))))

(assert (=> b!1100879 (= res!734687 (not (contains!6411 lt!493426 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1100880 () Bool)

(assert (=> b!1100880 (= e!628385 (validKeyInArray!0 (select (arr!34302 _keys!1070) #b00000000000000000000000000000000)))))

(assert (=> b!1100880 (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000)))

(declare-fun b!1100881 () Bool)

(assert (=> b!1100881 (= e!628383 e!628387)))

(assert (=> b!1100881 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!34839 _keys!1070)))))

(declare-fun res!734686 () Bool)

(assert (=> b!1100881 (= res!734686 (contains!6411 lt!493426 (select (arr!34302 _keys!1070) #b00000000000000000000000000000000)))))

(assert (=> b!1100881 (=> (not res!734686) (not e!628387))))

(assert (= (and d!130563 c!108705) b!1100878))

(assert (= (and d!130563 (not c!108705)) b!1100876))

(assert (= (and b!1100876 c!108703) b!1100872))

(assert (= (and b!1100876 (not c!108703)) b!1100874))

(assert (= (or b!1100872 b!1100874) bm!46122))

(assert (= (and d!130563 res!734685) b!1100879))

(assert (= (and b!1100879 res!734687) b!1100877))

(assert (= (and b!1100877 res!734684) b!1100880))

(assert (= (and b!1100877 c!108706) b!1100881))

(assert (= (and b!1100877 (not c!108706)) b!1100873))

(assert (= (and b!1100881 res!734686) b!1100871))

(assert (= (and b!1100873 c!108704) b!1100870))

(assert (= (and b!1100873 (not c!108704)) b!1100875))

(declare-fun b_lambda!18071 () Bool)

(assert (=> (not b_lambda!18071) (not b!1100871)))

(assert (=> b!1100871 t!34313))

(declare-fun b_and!37111 () Bool)

(assert (= b_and!37109 (and (=> t!34313 result!16591) b_and!37111)))

(declare-fun b_lambda!18073 () Bool)

(assert (=> (not b_lambda!18073) (not b!1100872)))

(assert (=> b!1100872 t!34313))

(declare-fun b_and!37113 () Bool)

(assert (= b_and!37111 (and (=> t!34313 result!16591) b_and!37113)))

(assert (=> b!1100872 m!1021035))

(assert (=> b!1100872 m!1020955))

(assert (=> b!1100872 m!1021037))

(assert (=> b!1100872 m!1020955))

(assert (=> b!1100872 m!1021035))

(declare-fun m!1021169 () Bool)

(assert (=> b!1100872 m!1021169))

(assert (=> b!1100872 m!1021029))

(declare-fun m!1021171 () Bool)

(assert (=> b!1100872 m!1021171))

(declare-fun m!1021173 () Bool)

(assert (=> b!1100872 m!1021173))

(declare-fun m!1021175 () Bool)

(assert (=> b!1100872 m!1021175))

(assert (=> b!1100872 m!1021171))

(assert (=> b!1100871 m!1021035))

(assert (=> b!1100871 m!1020955))

(assert (=> b!1100871 m!1021037))

(assert (=> b!1100871 m!1020955))

(assert (=> b!1100871 m!1021035))

(assert (=> b!1100871 m!1021029))

(assert (=> b!1100871 m!1021029))

(declare-fun m!1021177 () Bool)

(assert (=> b!1100871 m!1021177))

(declare-fun m!1021179 () Bool)

(assert (=> b!1100879 m!1021179))

(declare-fun m!1021181 () Bool)

(assert (=> bm!46122 m!1021181))

(assert (=> b!1100870 m!1021181))

(assert (=> b!1100881 m!1021029))

(assert (=> b!1100881 m!1021029))

(declare-fun m!1021183 () Bool)

(assert (=> b!1100881 m!1021183))

(declare-fun m!1021185 () Bool)

(assert (=> d!130563 m!1021185))

(assert (=> d!130563 m!1020949))

(assert (=> b!1100880 m!1021029))

(assert (=> b!1100880 m!1021029))

(assert (=> b!1100880 m!1021041))

(declare-fun m!1021187 () Bool)

(assert (=> b!1100875 m!1021187))

(assert (=> b!1100876 m!1021029))

(assert (=> b!1100876 m!1021029))

(assert (=> b!1100876 m!1021041))

(assert (=> b!1100687 d!130563))

(declare-fun d!130565 () Bool)

(assert (=> d!130565 (arrayContainsKey!0 _keys!1070 k0!904 #b00000000000000000000000000000000)))

(declare-fun lt!493434 () Unit!36117)

(declare-fun choose!13 (array!71282 (_ BitVec 64) (_ BitVec 32)) Unit!36117)

(assert (=> d!130565 (= lt!493434 (choose!13 _keys!1070 k0!904 i!650))))

(assert (=> d!130565 (bvsge i!650 #b00000000000000000000000000000000)))

(assert (=> d!130565 (= (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1070 k0!904 i!650) lt!493434)))

(declare-fun bs!32312 () Bool)

(assert (= bs!32312 d!130565))

(assert (=> bs!32312 m!1020961))

(declare-fun m!1021189 () Bool)

(assert (=> bs!32312 m!1021189))

(assert (=> b!1100687 d!130565))

(declare-fun b!1100890 () Bool)

(declare-fun e!628396 () Bool)

(declare-fun call!46128 () Bool)

(assert (=> b!1100890 (= e!628396 call!46128)))

(declare-fun b!1100891 () Bool)

(declare-fun e!628395 () Bool)

(assert (=> b!1100891 (= e!628395 call!46128)))

(declare-fun bm!46125 () Bool)

(assert (=> bm!46125 (= call!46128 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) _keys!1070 mask!1414))))

(declare-fun b!1100892 () Bool)

(declare-fun e!628394 () Bool)

(assert (=> b!1100892 (= e!628394 e!628395)))

(declare-fun c!108709 () Bool)

(assert (=> b!1100892 (= c!108709 (validKeyInArray!0 (select (arr!34302 _keys!1070) #b00000000000000000000000000000000)))))

(declare-fun b!1100893 () Bool)

(assert (=> b!1100893 (= e!628395 e!628396)))

(declare-fun lt!493442 () (_ BitVec 64))

(assert (=> b!1100893 (= lt!493442 (select (arr!34302 _keys!1070) #b00000000000000000000000000000000))))

(declare-fun lt!493441 () Unit!36117)

(assert (=> b!1100893 (= lt!493441 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1070 lt!493442 #b00000000000000000000000000000000))))

(assert (=> b!1100893 (arrayContainsKey!0 _keys!1070 lt!493442 #b00000000000000000000000000000000)))

(declare-fun lt!493443 () Unit!36117)

(assert (=> b!1100893 (= lt!493443 lt!493441)))

(declare-fun res!734693 () Bool)

(declare-datatypes ((SeekEntryResult!9910 0))(
  ( (MissingZero!9910 (index!42010 (_ BitVec 32))) (Found!9910 (index!42011 (_ BitVec 32))) (Intermediate!9910 (undefined!10722 Bool) (index!42012 (_ BitVec 32)) (x!98996 (_ BitVec 32))) (Undefined!9910) (MissingVacant!9910 (index!42013 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!71282 (_ BitVec 32)) SeekEntryResult!9910)

(assert (=> b!1100893 (= res!734693 (= (seekEntryOrOpen!0 (select (arr!34302 _keys!1070) #b00000000000000000000000000000000) _keys!1070 mask!1414) (Found!9910 #b00000000000000000000000000000000)))))

(assert (=> b!1100893 (=> (not res!734693) (not e!628396))))

(declare-fun d!130567 () Bool)

(declare-fun res!734692 () Bool)

(assert (=> d!130567 (=> res!734692 e!628394)))

(assert (=> d!130567 (= res!734692 (bvsge #b00000000000000000000000000000000 (size!34839 _keys!1070)))))

(assert (=> d!130567 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1070 mask!1414) e!628394)))

(assert (= (and d!130567 (not res!734692)) b!1100892))

(assert (= (and b!1100892 c!108709) b!1100893))

(assert (= (and b!1100892 (not c!108709)) b!1100891))

(assert (= (and b!1100893 res!734693) b!1100890))

(assert (= (or b!1100890 b!1100891) bm!46125))

(declare-fun m!1021191 () Bool)

(assert (=> bm!46125 m!1021191))

(assert (=> b!1100892 m!1021029))

(assert (=> b!1100892 m!1021029))

(assert (=> b!1100892 m!1021041))

(assert (=> b!1100893 m!1021029))

(declare-fun m!1021193 () Bool)

(assert (=> b!1100893 m!1021193))

(declare-fun m!1021195 () Bool)

(assert (=> b!1100893 m!1021195))

(assert (=> b!1100893 m!1021029))

(declare-fun m!1021197 () Bool)

(assert (=> b!1100893 m!1021197))

(assert (=> b!1100682 d!130567))

(declare-fun d!130569 () Bool)

(assert (=> d!130569 (= (validKeyInArray!0 k0!904) (and (not (= k0!904 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!904 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1100690 d!130569))

(declare-fun b!1100904 () Bool)

(declare-fun e!628406 () Bool)

(declare-fun call!46131 () Bool)

(assert (=> b!1100904 (= e!628406 call!46131)))

(declare-fun b!1100905 () Bool)

(declare-fun e!628408 () Bool)

(declare-fun contains!6412 (List!24105 (_ BitVec 64)) Bool)

(assert (=> b!1100905 (= e!628408 (contains!6412 Nil!24102 (select (arr!34302 lt!493278) #b00000000000000000000000000000000)))))

(declare-fun bm!46128 () Bool)

(declare-fun c!108712 () Bool)

(assert (=> bm!46128 (= call!46131 (arrayNoDuplicates!0 lt!493278 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!108712 (Cons!24101 (select (arr!34302 lt!493278) #b00000000000000000000000000000000) Nil!24102) Nil!24102)))))

(declare-fun b!1100906 () Bool)

(declare-fun e!628407 () Bool)

(assert (=> b!1100906 (= e!628407 e!628406)))

(assert (=> b!1100906 (= c!108712 (validKeyInArray!0 (select (arr!34302 lt!493278) #b00000000000000000000000000000000)))))

(declare-fun b!1100907 () Bool)

(assert (=> b!1100907 (= e!628406 call!46131)))

(declare-fun b!1100908 () Bool)

(declare-fun e!628405 () Bool)

(assert (=> b!1100908 (= e!628405 e!628407)))

(declare-fun res!734702 () Bool)

(assert (=> b!1100908 (=> (not res!734702) (not e!628407))))

(assert (=> b!1100908 (= res!734702 (not e!628408))))

(declare-fun res!734700 () Bool)

(assert (=> b!1100908 (=> (not res!734700) (not e!628408))))

(assert (=> b!1100908 (= res!734700 (validKeyInArray!0 (select (arr!34302 lt!493278) #b00000000000000000000000000000000)))))

(declare-fun d!130571 () Bool)

(declare-fun res!734701 () Bool)

(assert (=> d!130571 (=> res!734701 e!628405)))

(assert (=> d!130571 (= res!734701 (bvsge #b00000000000000000000000000000000 (size!34839 lt!493278)))))

(assert (=> d!130571 (= (arrayNoDuplicates!0 lt!493278 #b00000000000000000000000000000000 Nil!24102) e!628405)))

(assert (= (and d!130571 (not res!734701)) b!1100908))

(assert (= (and b!1100908 res!734700) b!1100905))

(assert (= (and b!1100908 res!734702) b!1100906))

(assert (= (and b!1100906 c!108712) b!1100904))

(assert (= (and b!1100906 (not c!108712)) b!1100907))

(assert (= (or b!1100904 b!1100907) bm!46128))

(assert (=> b!1100905 m!1021087))

(assert (=> b!1100905 m!1021087))

(declare-fun m!1021199 () Bool)

(assert (=> b!1100905 m!1021199))

(assert (=> bm!46128 m!1021087))

(declare-fun m!1021201 () Bool)

(assert (=> bm!46128 m!1021201))

(assert (=> b!1100906 m!1021087))

(assert (=> b!1100906 m!1021087))

(assert (=> b!1100906 m!1021095))

(assert (=> b!1100908 m!1021087))

(assert (=> b!1100908 m!1021087))

(assert (=> b!1100908 m!1021095))

(assert (=> b!1100686 d!130571))

(declare-fun b!1100909 () Bool)

(declare-fun e!628411 () Bool)

(declare-fun call!46132 () Bool)

(assert (=> b!1100909 (= e!628411 call!46132)))

(declare-fun b!1100910 () Bool)

(declare-fun e!628410 () Bool)

(assert (=> b!1100910 (= e!628410 call!46132)))

(declare-fun bm!46129 () Bool)

(assert (=> bm!46129 (= call!46132 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) lt!493278 mask!1414))))

(declare-fun b!1100911 () Bool)

(declare-fun e!628409 () Bool)

(assert (=> b!1100911 (= e!628409 e!628410)))

(declare-fun c!108713 () Bool)

(assert (=> b!1100911 (= c!108713 (validKeyInArray!0 (select (arr!34302 lt!493278) #b00000000000000000000000000000000)))))

(declare-fun b!1100912 () Bool)

(assert (=> b!1100912 (= e!628410 e!628411)))

(declare-fun lt!493445 () (_ BitVec 64))

(assert (=> b!1100912 (= lt!493445 (select (arr!34302 lt!493278) #b00000000000000000000000000000000))))

(declare-fun lt!493444 () Unit!36117)

(assert (=> b!1100912 (= lt!493444 (lemmaArrayContainsFromImpliesContainsFromZero!0 lt!493278 lt!493445 #b00000000000000000000000000000000))))

(assert (=> b!1100912 (arrayContainsKey!0 lt!493278 lt!493445 #b00000000000000000000000000000000)))

(declare-fun lt!493446 () Unit!36117)

(assert (=> b!1100912 (= lt!493446 lt!493444)))

(declare-fun res!734704 () Bool)

(assert (=> b!1100912 (= res!734704 (= (seekEntryOrOpen!0 (select (arr!34302 lt!493278) #b00000000000000000000000000000000) lt!493278 mask!1414) (Found!9910 #b00000000000000000000000000000000)))))

(assert (=> b!1100912 (=> (not res!734704) (not e!628411))))

(declare-fun d!130573 () Bool)

(declare-fun res!734703 () Bool)

(assert (=> d!130573 (=> res!734703 e!628409)))

(assert (=> d!130573 (= res!734703 (bvsge #b00000000000000000000000000000000 (size!34839 lt!493278)))))

(assert (=> d!130573 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!493278 mask!1414) e!628409)))

(assert (= (and d!130573 (not res!734703)) b!1100911))

(assert (= (and b!1100911 c!108713) b!1100912))

(assert (= (and b!1100911 (not c!108713)) b!1100910))

(assert (= (and b!1100912 res!734704) b!1100909))

(assert (= (or b!1100909 b!1100910) bm!46129))

(declare-fun m!1021203 () Bool)

(assert (=> bm!46129 m!1021203))

(assert (=> b!1100911 m!1021087))

(assert (=> b!1100911 m!1021087))

(assert (=> b!1100911 m!1021095))

(assert (=> b!1100912 m!1021087))

(declare-fun m!1021205 () Bool)

(assert (=> b!1100912 m!1021205))

(declare-fun m!1021207 () Bool)

(assert (=> b!1100912 m!1021207))

(assert (=> b!1100912 m!1021087))

(declare-fun m!1021209 () Bool)

(assert (=> b!1100912 m!1021209))

(assert (=> b!1100689 d!130573))

(declare-fun b!1100913 () Bool)

(declare-fun e!628413 () Bool)

(declare-fun call!46133 () Bool)

(assert (=> b!1100913 (= e!628413 call!46133)))

(declare-fun b!1100914 () Bool)

(declare-fun e!628415 () Bool)

(assert (=> b!1100914 (= e!628415 (contains!6412 Nil!24102 (select (arr!34302 _keys!1070) #b00000000000000000000000000000000)))))

(declare-fun bm!46130 () Bool)

(declare-fun c!108714 () Bool)

(assert (=> bm!46130 (= call!46133 (arrayNoDuplicates!0 _keys!1070 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!108714 (Cons!24101 (select (arr!34302 _keys!1070) #b00000000000000000000000000000000) Nil!24102) Nil!24102)))))

(declare-fun b!1100915 () Bool)

(declare-fun e!628414 () Bool)

(assert (=> b!1100915 (= e!628414 e!628413)))

(assert (=> b!1100915 (= c!108714 (validKeyInArray!0 (select (arr!34302 _keys!1070) #b00000000000000000000000000000000)))))

(declare-fun b!1100916 () Bool)

(assert (=> b!1100916 (= e!628413 call!46133)))

(declare-fun b!1100917 () Bool)

(declare-fun e!628412 () Bool)

(assert (=> b!1100917 (= e!628412 e!628414)))

(declare-fun res!734707 () Bool)

(assert (=> b!1100917 (=> (not res!734707) (not e!628414))))

(assert (=> b!1100917 (= res!734707 (not e!628415))))

(declare-fun res!734705 () Bool)

(assert (=> b!1100917 (=> (not res!734705) (not e!628415))))

(assert (=> b!1100917 (= res!734705 (validKeyInArray!0 (select (arr!34302 _keys!1070) #b00000000000000000000000000000000)))))

(declare-fun d!130575 () Bool)

(declare-fun res!734706 () Bool)

(assert (=> d!130575 (=> res!734706 e!628412)))

(assert (=> d!130575 (= res!734706 (bvsge #b00000000000000000000000000000000 (size!34839 _keys!1070)))))

(assert (=> d!130575 (= (arrayNoDuplicates!0 _keys!1070 #b00000000000000000000000000000000 Nil!24102) e!628412)))

(assert (= (and d!130575 (not res!734706)) b!1100917))

(assert (= (and b!1100917 res!734705) b!1100914))

(assert (= (and b!1100917 res!734707) b!1100915))

(assert (= (and b!1100915 c!108714) b!1100913))

(assert (= (and b!1100915 (not c!108714)) b!1100916))

(assert (= (or b!1100913 b!1100916) bm!46130))

(assert (=> b!1100914 m!1021029))

(assert (=> b!1100914 m!1021029))

(declare-fun m!1021211 () Bool)

(assert (=> b!1100914 m!1021211))

(assert (=> bm!46130 m!1021029))

(declare-fun m!1021213 () Bool)

(assert (=> bm!46130 m!1021213))

(assert (=> b!1100915 m!1021029))

(assert (=> b!1100915 m!1021029))

(assert (=> b!1100915 m!1021041))

(assert (=> b!1100917 m!1021029))

(assert (=> b!1100917 m!1021029))

(assert (=> b!1100917 m!1021041))

(assert (=> b!1100685 d!130575))

(declare-fun d!130577 () Bool)

(assert (=> d!130577 (= (validMask!0 mask!1414) (and (or (= mask!1414 #b00000000000000000000000000000111) (= mask!1414 #b00000000000000000000000000001111) (= mask!1414 #b00000000000000000000000000011111) (= mask!1414 #b00000000000000000000000000111111) (= mask!1414 #b00000000000000000000000001111111) (= mask!1414 #b00000000000000000000000011111111) (= mask!1414 #b00000000000000000000000111111111) (= mask!1414 #b00000000000000000000001111111111) (= mask!1414 #b00000000000000000000011111111111) (= mask!1414 #b00000000000000000000111111111111) (= mask!1414 #b00000000000000000001111111111111) (= mask!1414 #b00000000000000000011111111111111) (= mask!1414 #b00000000000000000111111111111111) (= mask!1414 #b00000000000000001111111111111111) (= mask!1414 #b00000000000000011111111111111111) (= mask!1414 #b00000000000000111111111111111111) (= mask!1414 #b00000000000001111111111111111111) (= mask!1414 #b00000000000011111111111111111111) (= mask!1414 #b00000000000111111111111111111111) (= mask!1414 #b00000000001111111111111111111111) (= mask!1414 #b00000000011111111111111111111111) (= mask!1414 #b00000000111111111111111111111111) (= mask!1414 #b00000001111111111111111111111111) (= mask!1414 #b00000011111111111111111111111111) (= mask!1414 #b00000111111111111111111111111111) (= mask!1414 #b00001111111111111111111111111111) (= mask!1414 #b00011111111111111111111111111111) (= mask!1414 #b00111111111111111111111111111111)) (bvsle mask!1414 #b00111111111111111111111111111111)))))

(assert (=> start!96798 d!130577))

(declare-fun d!130579 () Bool)

(assert (=> d!130579 (= (array_inv!26280 _keys!1070) (bvsge (size!34839 _keys!1070) #b00000000000000000000000000000000))))

(assert (=> start!96798 d!130579))

(declare-fun d!130581 () Bool)

(assert (=> d!130581 (= (array_inv!26281 _values!874) (bvsge (size!34840 _values!874) #b00000000000000000000000000000000))))

(assert (=> start!96798 d!130581))

(declare-fun d!130583 () Bool)

(declare-fun e!628418 () Bool)

(assert (=> d!130583 e!628418))

(declare-fun res!734712 () Bool)

(assert (=> d!130583 (=> (not res!734712) (not e!628418))))

(declare-fun lt!493456 () ListLongMap!15413)

(assert (=> d!130583 (= res!734712 (contains!6411 lt!493456 (_1!8726 (tuple2!17433 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!831))))))

(declare-fun lt!493455 () List!24104)

(assert (=> d!130583 (= lt!493456 (ListLongMap!15414 lt!493455))))

(declare-fun lt!493458 () Unit!36117)

(declare-fun lt!493457 () Unit!36117)

(assert (=> d!130583 (= lt!493458 lt!493457)))

(declare-datatypes ((Option!679 0))(
  ( (Some!678 (v!16291 V!41403)) (None!677) )
))
(declare-fun getValueByKey!628 (List!24104 (_ BitVec 64)) Option!679)

(assert (=> d!130583 (= (getValueByKey!628 lt!493455 (_1!8726 (tuple2!17433 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!831))) (Some!678 (_2!8726 (tuple2!17433 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!831))))))

(declare-fun lemmaContainsTupThenGetReturnValue!303 (List!24104 (_ BitVec 64) V!41403) Unit!36117)

(assert (=> d!130583 (= lt!493457 (lemmaContainsTupThenGetReturnValue!303 lt!493455 (_1!8726 (tuple2!17433 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!831)) (_2!8726 (tuple2!17433 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!831))))))

(declare-fun insertStrictlySorted!395 (List!24104 (_ BitVec 64) V!41403) List!24104)

(assert (=> d!130583 (= lt!493455 (insertStrictlySorted!395 (toList!7722 lt!493279) (_1!8726 (tuple2!17433 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!831)) (_2!8726 (tuple2!17433 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!831))))))

(assert (=> d!130583 (= (+!3355 lt!493279 (tuple2!17433 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!831)) lt!493456)))

(declare-fun b!1100922 () Bool)

(declare-fun res!734713 () Bool)

(assert (=> b!1100922 (=> (not res!734713) (not e!628418))))

(assert (=> b!1100922 (= res!734713 (= (getValueByKey!628 (toList!7722 lt!493456) (_1!8726 (tuple2!17433 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!831))) (Some!678 (_2!8726 (tuple2!17433 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!831)))))))

(declare-fun b!1100923 () Bool)

(declare-fun contains!6413 (List!24104 tuple2!17432) Bool)

(assert (=> b!1100923 (= e!628418 (contains!6413 (toList!7722 lt!493456) (tuple2!17433 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!831)))))

(assert (= (and d!130583 res!734712) b!1100922))

(assert (= (and b!1100922 res!734713) b!1100923))

(declare-fun m!1021215 () Bool)

(assert (=> d!130583 m!1021215))

(declare-fun m!1021217 () Bool)

(assert (=> d!130583 m!1021217))

(declare-fun m!1021219 () Bool)

(assert (=> d!130583 m!1021219))

(declare-fun m!1021221 () Bool)

(assert (=> d!130583 m!1021221))

(declare-fun m!1021223 () Bool)

(assert (=> b!1100922 m!1021223))

(declare-fun m!1021225 () Bool)

(assert (=> b!1100923 m!1021225))

(assert (=> b!1100683 d!130583))

(declare-fun mapNonEmpty!42598 () Bool)

(declare-fun mapRes!42598 () Bool)

(declare-fun tp!81429 () Bool)

(declare-fun e!628423 () Bool)

(assert (=> mapNonEmpty!42598 (= mapRes!42598 (and tp!81429 e!628423))))

(declare-fun mapValue!42598 () ValueCell!12894)

(declare-fun mapRest!42598 () (Array (_ BitVec 32) ValueCell!12894))

(declare-fun mapKey!42598 () (_ BitVec 32))

(assert (=> mapNonEmpty!42598 (= mapRest!42592 (store mapRest!42598 mapKey!42598 mapValue!42598))))

(declare-fun b!1100930 () Bool)

(assert (=> b!1100930 (= e!628423 tp_is_empty!27207)))

(declare-fun condMapEmpty!42598 () Bool)

(declare-fun mapDefault!42598 () ValueCell!12894)

(assert (=> mapNonEmpty!42592 (= condMapEmpty!42598 (= mapRest!42592 ((as const (Array (_ BitVec 32) ValueCell!12894)) mapDefault!42598)))))

(declare-fun e!628424 () Bool)

(assert (=> mapNonEmpty!42592 (= tp!81419 (and e!628424 mapRes!42598))))

(declare-fun mapIsEmpty!42598 () Bool)

(assert (=> mapIsEmpty!42598 mapRes!42598))

(declare-fun b!1100931 () Bool)

(assert (=> b!1100931 (= e!628424 tp_is_empty!27207)))

(assert (= (and mapNonEmpty!42592 condMapEmpty!42598) mapIsEmpty!42598))

(assert (= (and mapNonEmpty!42592 (not condMapEmpty!42598)) mapNonEmpty!42598))

(assert (= (and mapNonEmpty!42598 ((_ is ValueCellFull!12894) mapValue!42598)) b!1100930))

(assert (= (and mapNonEmpty!42592 ((_ is ValueCellFull!12894) mapDefault!42598)) b!1100931))

(declare-fun m!1021227 () Bool)

(assert (=> mapNonEmpty!42598 m!1021227))

(declare-fun b_lambda!18075 () Bool)

(assert (= b_lambda!18061 (or (and start!96798 b_free!23157) b_lambda!18075)))

(declare-fun b_lambda!18077 () Bool)

(assert (= b_lambda!18063 (or (and start!96798 b_free!23157) b_lambda!18077)))

(declare-fun b_lambda!18079 () Bool)

(assert (= b_lambda!18069 (or (and start!96798 b_free!23157) b_lambda!18079)))

(declare-fun b_lambda!18081 () Bool)

(assert (= b_lambda!18073 (or (and start!96798 b_free!23157) b_lambda!18081)))

(declare-fun b_lambda!18083 () Bool)

(assert (= b_lambda!18071 (or (and start!96798 b_free!23157) b_lambda!18083)))

(declare-fun b_lambda!18085 () Bool)

(assert (= b_lambda!18067 (or (and start!96798 b_free!23157) b_lambda!18085)))

(declare-fun b_lambda!18087 () Bool)

(assert (= b_lambda!18065 (or (and start!96798 b_free!23157) b_lambda!18087)))

(check-sat (not b!1100875) (not b_lambda!18083) (not b!1100850) (not b_lambda!18085) (not mapNonEmpty!42598) (not b_lambda!18077) (not b!1100805) (not b_next!23157) (not b!1100892) (not b!1100855) (not b!1100858) (not b_lambda!18079) (not b!1100808) (not b!1100740) (not b!1100881) (not b!1100784) (not b!1100923) (not d!130559) (not d!130555) (not bm!46107) (not b!1100915) (not bm!46129) (not b!1100914) (not d!130583) (not b!1100787) (not b!1100880) (not b!1100870) (not b!1100800) (not b!1100872) (not b!1100860) (not b!1100819) (not b!1100911) (not bm!46120) (not b!1100851) (not b_lambda!18087) (not b!1100867) (not d!130561) (not bm!46130) (not d!130553) (not b!1100821) (not b_lambda!18081) (not b!1100849) (not b!1100859) (not bm!46102) (not bm!46112) (not b!1100876) (not bm!46125) (not b_lambda!18075) (not b!1100798) (not b!1100824) (not d!130565) (not b!1100791) (not bm!46110) (not bm!46122) (not b_lambda!18059) (not bm!46115) (not b!1100811) (not b!1100854) (not bm!46128) (not b!1100906) (not bm!46109) (not b!1100912) (not b!1100815) (not bm!46103) (not b!1100794) (not b!1100922) b_and!37113 tp_is_empty!27207 (not bm!46105) (not b!1100908) (not bm!46100) (not b!1100917) (not b!1100893) (not b!1100812) (not b!1100905) (not b!1100803) (not b!1100871) (not d!130563) (not bm!46121) (not b!1100790) (not d!130557) (not b!1100879))
(check-sat b_and!37113 (not b_next!23157))
