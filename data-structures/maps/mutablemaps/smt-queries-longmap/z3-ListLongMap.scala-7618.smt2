; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!96066 () Bool)

(assert start!96066)

(declare-fun b_free!22683 () Bool)

(declare-fun b_next!22683 () Bool)

(assert (=> start!96066 (= b_free!22683 (not b_next!22683))))

(declare-fun tp!79898 () Bool)

(declare-fun b_and!36059 () Bool)

(assert (=> start!96066 (= tp!79898 b_and!36059)))

(declare-fun b!1088716 () Bool)

(declare-fun res!726260 () Bool)

(declare-fun e!621898 () Bool)

(assert (=> b!1088716 (=> (not res!726260) (not e!621898))))

(declare-fun k0!904 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1088716 (= res!726260 (validKeyInArray!0 k0!904))))

(declare-fun b!1088717 () Bool)

(declare-fun res!726262 () Bool)

(assert (=> b!1088717 (=> (not res!726262) (not e!621898))))

(declare-fun mask!1414 () (_ BitVec 32))

(declare-fun extraKeys!811 () (_ BitVec 32))

(declare-datatypes ((array!70262 0))(
  ( (array!70263 (arr!33801 (Array (_ BitVec 32) (_ BitVec 64))) (size!34338 (_ BitVec 32))) )
))
(declare-fun _keys!1070 () array!70262)

(declare-datatypes ((V!40707 0))(
  ( (V!40708 (val!13399 Int)) )
))
(declare-datatypes ((ValueCell!12633 0))(
  ( (ValueCellFull!12633 (v!16021 V!40707)) (EmptyCell!12633) )
))
(declare-datatypes ((array!70264 0))(
  ( (array!70265 (arr!33802 (Array (_ BitVec 32) ValueCell!12633)) (size!34339 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!70264)

(assert (=> b!1088717 (= res!726262 (and (= (size!34339 _values!874) (bvadd #b00000000000000000000000000000001 mask!1414)) (= (size!34338 _keys!1070) (size!34339 _values!874)) (bvsge mask!1414 #b00000000000000000000000000000000) (bvsge extraKeys!811 #b00000000000000000000000000000000) (bvsle extraKeys!811 #b00000000000000000000000000000011)))))

(declare-fun b!1088718 () Bool)

(declare-fun e!621902 () Bool)

(declare-fun tp_is_empty!26685 () Bool)

(assert (=> b!1088718 (= e!621902 tp_is_empty!26685)))

(declare-fun b!1088719 () Bool)

(declare-fun res!726258 () Bool)

(assert (=> b!1088719 (=> (not res!726258) (not e!621898))))

(declare-datatypes ((List!23727 0))(
  ( (Nil!23724) (Cons!23723 (h!24932 (_ BitVec 64)) (t!33475 List!23727)) )
))
(declare-fun arrayNoDuplicates!0 (array!70262 (_ BitVec 32) List!23727) Bool)

(assert (=> b!1088719 (= res!726258 (arrayNoDuplicates!0 _keys!1070 #b00000000000000000000000000000000 Nil!23724))))

(declare-fun res!726261 () Bool)

(assert (=> start!96066 (=> (not res!726261) (not e!621898))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!96066 (= res!726261 (validMask!0 mask!1414))))

(assert (=> start!96066 e!621898))

(assert (=> start!96066 tp!79898))

(assert (=> start!96066 true))

(assert (=> start!96066 tp_is_empty!26685))

(declare-fun array_inv!25934 (array!70262) Bool)

(assert (=> start!96066 (array_inv!25934 _keys!1070)))

(declare-fun e!621904 () Bool)

(declare-fun array_inv!25935 (array!70264) Bool)

(assert (=> start!96066 (and (array_inv!25935 _values!874) e!621904)))

(declare-fun b!1088720 () Bool)

(declare-fun e!621901 () Bool)

(assert (=> b!1088720 (= e!621901 true)))

(declare-datatypes ((tuple2!17088 0))(
  ( (tuple2!17089 (_1!8554 (_ BitVec 64)) (_2!8554 V!40707)) )
))
(declare-datatypes ((List!23728 0))(
  ( (Nil!23725) (Cons!23724 (h!24933 tuple2!17088) (t!33476 List!23728)) )
))
(declare-datatypes ((ListLongMap!15069 0))(
  ( (ListLongMap!15070 (toList!7550 List!23728)) )
))
(declare-fun lt!485072 () ListLongMap!15069)

(declare-fun lt!485063 () ListLongMap!15069)

(declare-fun -!830 (ListLongMap!15069 (_ BitVec 64)) ListLongMap!15069)

(assert (=> b!1088720 (= (-!830 lt!485072 k0!904) lt!485063)))

(declare-datatypes ((Unit!35775 0))(
  ( (Unit!35776) )
))
(declare-fun lt!485065 () Unit!35775)

(declare-fun lt!485074 () ListLongMap!15069)

(declare-fun zeroValue!831 () V!40707)

(declare-fun addRemoveCommutativeForDiffKeys!65 (ListLongMap!15069 (_ BitVec 64) V!40707 (_ BitVec 64)) Unit!35775)

(assert (=> b!1088720 (= lt!485065 (addRemoveCommutativeForDiffKeys!65 lt!485074 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!831 k0!904))))

(declare-fun mapIsEmpty!41782 () Bool)

(declare-fun mapRes!41782 () Bool)

(assert (=> mapIsEmpty!41782 mapRes!41782))

(declare-fun b!1088721 () Bool)

(declare-fun res!726255 () Bool)

(assert (=> b!1088721 (=> (not res!726255) (not e!621898))))

(declare-fun i!650 () (_ BitVec 32))

(assert (=> b!1088721 (= res!726255 (and (bvsge i!650 #b00000000000000000000000000000000) (bvslt i!650 (size!34338 _keys!1070))))))

(declare-fun b!1088722 () Bool)

(declare-fun e!621897 () Bool)

(assert (=> b!1088722 (= e!621897 tp_is_empty!26685)))

(declare-fun mapNonEmpty!41782 () Bool)

(declare-fun tp!79899 () Bool)

(assert (=> mapNonEmpty!41782 (= mapRes!41782 (and tp!79899 e!621897))))

(declare-fun mapKey!41782 () (_ BitVec 32))

(declare-fun mapRest!41782 () (Array (_ BitVec 32) ValueCell!12633))

(declare-fun mapValue!41782 () ValueCell!12633)

(assert (=> mapNonEmpty!41782 (= (arr!33802 _values!874) (store mapRest!41782 mapKey!41782 mapValue!41782))))

(declare-fun b!1088723 () Bool)

(declare-fun e!621899 () Bool)

(assert (=> b!1088723 (= e!621898 e!621899)))

(declare-fun res!726257 () Bool)

(assert (=> b!1088723 (=> (not res!726257) (not e!621899))))

(declare-fun lt!485068 () array!70262)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!70262 (_ BitVec 32)) Bool)

(assert (=> b!1088723 (= res!726257 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!485068 mask!1414))))

(assert (=> b!1088723 (= lt!485068 (array!70263 (store (arr!33801 _keys!1070) i!650 #b1000000000000000000000000000000000000000000000000000000000000000) (size!34338 _keys!1070)))))

(declare-fun b!1088724 () Bool)

(declare-fun e!621900 () Bool)

(assert (=> b!1088724 (= e!621900 e!621901)))

(declare-fun res!726253 () Bool)

(assert (=> b!1088724 (=> res!726253 e!621901)))

(assert (=> b!1088724 (= res!726253 (= #b0000000000000000000000000000000000000000000000000000000000000000 k0!904))))

(declare-fun lt!485071 () ListLongMap!15069)

(assert (=> b!1088724 (= lt!485071 lt!485063)))

(declare-fun lt!485064 () ListLongMap!15069)

(declare-fun lt!485075 () tuple2!17088)

(declare-fun +!3268 (ListLongMap!15069 tuple2!17088) ListLongMap!15069)

(assert (=> b!1088724 (= lt!485063 (+!3268 lt!485064 lt!485075))))

(declare-fun lt!485070 () ListLongMap!15069)

(assert (=> b!1088724 (= lt!485070 lt!485072)))

(assert (=> b!1088724 (= lt!485072 (+!3268 lt!485074 lt!485075))))

(declare-fun lt!485067 () ListLongMap!15069)

(assert (=> b!1088724 (= lt!485071 (+!3268 lt!485067 lt!485075))))

(assert (=> b!1088724 (= lt!485075 (tuple2!17089 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!831))))

(declare-fun b!1088725 () Bool)

(declare-fun res!726256 () Bool)

(assert (=> b!1088725 (=> (not res!726256) (not e!621899))))

(assert (=> b!1088725 (= res!726256 (arrayNoDuplicates!0 lt!485068 #b00000000000000000000000000000000 Nil!23724))))

(declare-fun b!1088726 () Bool)

(declare-fun res!726259 () Bool)

(assert (=> b!1088726 (=> (not res!726259) (not e!621898))))

(assert (=> b!1088726 (= res!726259 (= (select (arr!33801 _keys!1070) i!650) k0!904))))

(declare-fun b!1088727 () Bool)

(declare-fun res!726254 () Bool)

(assert (=> b!1088727 (=> (not res!726254) (not e!621898))))

(assert (=> b!1088727 (= res!726254 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1070 mask!1414))))

(declare-fun b!1088728 () Bool)

(assert (=> b!1088728 (= e!621899 (not e!621900))))

(declare-fun res!726263 () Bool)

(assert (=> b!1088728 (=> res!726263 e!621900)))

(assert (=> b!1088728 (= res!726263 (or (not (= (bvand extraKeys!811 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeys!811 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun defaultEntry!882 () Int)

(declare-fun minValue!831 () V!40707)

(declare-fun getCurrentListMap!4298 (array!70262 array!70264 (_ BitVec 32) (_ BitVec 32) V!40707 V!40707 (_ BitVec 32) Int) ListLongMap!15069)

(assert (=> b!1088728 (= lt!485070 (getCurrentListMap!4298 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun lt!485073 () array!70264)

(assert (=> b!1088728 (= lt!485071 (getCurrentListMap!4298 lt!485068 lt!485073 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(assert (=> b!1088728 (and (= lt!485067 lt!485064) (= lt!485064 lt!485067))))

(assert (=> b!1088728 (= lt!485064 (-!830 lt!485074 k0!904))))

(declare-fun lt!485066 () Unit!35775)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!104 (array!70262 array!70264 (_ BitVec 32) (_ BitVec 32) V!40707 V!40707 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!35775)

(assert (=> b!1088728 (= lt!485066 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!104 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 i!650 k0!904 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun getCurrentListMapNoExtraKeys!4050 (array!70262 array!70264 (_ BitVec 32) (_ BitVec 32) V!40707 V!40707 (_ BitVec 32) Int) ListLongMap!15069)

(assert (=> b!1088728 (= lt!485067 (getCurrentListMapNoExtraKeys!4050 lt!485068 lt!485073 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun dynLambda!2186 (Int (_ BitVec 64)) V!40707)

(assert (=> b!1088728 (= lt!485073 (array!70265 (store (arr!33802 _values!874) i!650 (ValueCellFull!12633 (dynLambda!2186 defaultEntry!882 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!34339 _values!874)))))

(assert (=> b!1088728 (= lt!485074 (getCurrentListMapNoExtraKeys!4050 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun arrayContainsKey!0 (array!70262 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1088728 (arrayContainsKey!0 _keys!1070 k0!904 #b00000000000000000000000000000000)))

(declare-fun lt!485069 () Unit!35775)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!70262 (_ BitVec 64) (_ BitVec 32)) Unit!35775)

(assert (=> b!1088728 (= lt!485069 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1070 k0!904 i!650))))

(declare-fun b!1088729 () Bool)

(assert (=> b!1088729 (= e!621904 (and e!621902 mapRes!41782))))

(declare-fun condMapEmpty!41782 () Bool)

(declare-fun mapDefault!41782 () ValueCell!12633)

(assert (=> b!1088729 (= condMapEmpty!41782 (= (arr!33802 _values!874) ((as const (Array (_ BitVec 32) ValueCell!12633)) mapDefault!41782)))))

(assert (= (and start!96066 res!726261) b!1088717))

(assert (= (and b!1088717 res!726262) b!1088727))

(assert (= (and b!1088727 res!726254) b!1088719))

(assert (= (and b!1088719 res!726258) b!1088721))

(assert (= (and b!1088721 res!726255) b!1088716))

(assert (= (and b!1088716 res!726260) b!1088726))

(assert (= (and b!1088726 res!726259) b!1088723))

(assert (= (and b!1088723 res!726257) b!1088725))

(assert (= (and b!1088725 res!726256) b!1088728))

(assert (= (and b!1088728 (not res!726263)) b!1088724))

(assert (= (and b!1088724 (not res!726253)) b!1088720))

(assert (= (and b!1088729 condMapEmpty!41782) mapIsEmpty!41782))

(assert (= (and b!1088729 (not condMapEmpty!41782)) mapNonEmpty!41782))

(get-info :version)

(assert (= (and mapNonEmpty!41782 ((_ is ValueCellFull!12633) mapValue!41782)) b!1088722))

(assert (= (and b!1088729 ((_ is ValueCellFull!12633) mapDefault!41782)) b!1088718))

(assert (= start!96066 b!1088729))

(declare-fun b_lambda!17383 () Bool)

(assert (=> (not b_lambda!17383) (not b!1088728)))

(declare-fun t!33474 () Bool)

(declare-fun tb!7569 () Bool)

(assert (=> (and start!96066 (= defaultEntry!882 defaultEntry!882) t!33474) tb!7569))

(declare-fun result!15649 () Bool)

(assert (=> tb!7569 (= result!15649 tp_is_empty!26685)))

(assert (=> b!1088728 t!33474))

(declare-fun b_and!36061 () Bool)

(assert (= b_and!36059 (and (=> t!33474 result!15649) b_and!36061)))

(declare-fun m!1007977 () Bool)

(assert (=> mapNonEmpty!41782 m!1007977))

(declare-fun m!1007979 () Bool)

(assert (=> start!96066 m!1007979))

(declare-fun m!1007981 () Bool)

(assert (=> start!96066 m!1007981))

(declare-fun m!1007983 () Bool)

(assert (=> start!96066 m!1007983))

(declare-fun m!1007985 () Bool)

(assert (=> b!1088725 m!1007985))

(declare-fun m!1007987 () Bool)

(assert (=> b!1088720 m!1007987))

(declare-fun m!1007989 () Bool)

(assert (=> b!1088720 m!1007989))

(declare-fun m!1007991 () Bool)

(assert (=> b!1088719 m!1007991))

(declare-fun m!1007993 () Bool)

(assert (=> b!1088727 m!1007993))

(declare-fun m!1007995 () Bool)

(assert (=> b!1088723 m!1007995))

(declare-fun m!1007997 () Bool)

(assert (=> b!1088723 m!1007997))

(declare-fun m!1007999 () Bool)

(assert (=> b!1088716 m!1007999))

(declare-fun m!1008001 () Bool)

(assert (=> b!1088728 m!1008001))

(declare-fun m!1008003 () Bool)

(assert (=> b!1088728 m!1008003))

(declare-fun m!1008005 () Bool)

(assert (=> b!1088728 m!1008005))

(declare-fun m!1008007 () Bool)

(assert (=> b!1088728 m!1008007))

(declare-fun m!1008009 () Bool)

(assert (=> b!1088728 m!1008009))

(declare-fun m!1008011 () Bool)

(assert (=> b!1088728 m!1008011))

(declare-fun m!1008013 () Bool)

(assert (=> b!1088728 m!1008013))

(declare-fun m!1008015 () Bool)

(assert (=> b!1088728 m!1008015))

(declare-fun m!1008017 () Bool)

(assert (=> b!1088728 m!1008017))

(declare-fun m!1008019 () Bool)

(assert (=> b!1088728 m!1008019))

(declare-fun m!1008021 () Bool)

(assert (=> b!1088724 m!1008021))

(declare-fun m!1008023 () Bool)

(assert (=> b!1088724 m!1008023))

(declare-fun m!1008025 () Bool)

(assert (=> b!1088724 m!1008025))

(declare-fun m!1008027 () Bool)

(assert (=> b!1088726 m!1008027))

(check-sat b_and!36061 (not b_lambda!17383) (not b!1088724) (not b!1088720) (not b!1088716) (not b!1088728) tp_is_empty!26685 (not b_next!22683) (not b!1088725) (not b!1088727) (not start!96066) (not b!1088719) (not b!1088723) (not mapNonEmpty!41782))
(check-sat b_and!36061 (not b_next!22683))
