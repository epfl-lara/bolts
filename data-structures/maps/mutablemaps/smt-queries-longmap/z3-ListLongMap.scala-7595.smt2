; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!95928 () Bool)

(assert start!95928)

(declare-fun b_free!22545 () Bool)

(declare-fun b_next!22545 () Bool)

(assert (=> start!95928 (= b_free!22545 (not b_next!22545))))

(declare-fun tp!79485 () Bool)

(declare-fun b_and!35783 () Bool)

(assert (=> start!95928 (= tp!79485 b_and!35783)))

(declare-fun b!1085671 () Bool)

(declare-fun e!620247 () Bool)

(declare-fun e!620242 () Bool)

(assert (=> b!1085671 (= e!620247 e!620242)))

(declare-fun res!723976 () Bool)

(assert (=> b!1085671 (=> res!723976 e!620242)))

(declare-fun k0!904 () (_ BitVec 64))

(assert (=> b!1085671 (= res!723976 (= #b1000000000000000000000000000000000000000000000000000000000000000 k0!904))))

(declare-datatypes ((V!40523 0))(
  ( (V!40524 (val!13330 Int)) )
))
(declare-datatypes ((tuple2!16974 0))(
  ( (tuple2!16975 (_1!8497 (_ BitVec 64)) (_2!8497 V!40523)) )
))
(declare-datatypes ((List!23614 0))(
  ( (Nil!23611) (Cons!23610 (h!24819 tuple2!16974) (t!33224 List!23614)) )
))
(declare-datatypes ((ListLongMap!14955 0))(
  ( (ListLongMap!14956 (toList!7493 List!23614)) )
))
(declare-fun lt!481993 () ListLongMap!14955)

(declare-fun lt!481996 () ListLongMap!14955)

(assert (=> b!1085671 (= lt!481993 lt!481996)))

(declare-fun lt!481990 () ListLongMap!14955)

(declare-fun -!774 (ListLongMap!14955 (_ BitVec 64)) ListLongMap!14955)

(assert (=> b!1085671 (= lt!481993 (-!774 lt!481990 k0!904))))

(declare-fun lt!481992 () ListLongMap!14955)

(declare-datatypes ((Unit!35663 0))(
  ( (Unit!35664) )
))
(declare-fun lt!481994 () Unit!35663)

(declare-fun zeroValue!831 () V!40523)

(declare-fun addRemoveCommutativeForDiffKeys!19 (ListLongMap!14955 (_ BitVec 64) V!40523 (_ BitVec 64)) Unit!35663)

(assert (=> b!1085671 (= lt!481994 (addRemoveCommutativeForDiffKeys!19 lt!481992 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!831 k0!904))))

(declare-fun lt!481997 () ListLongMap!14955)

(declare-fun lt!481987 () tuple2!16974)

(declare-fun +!3223 (ListLongMap!14955 tuple2!16974) ListLongMap!14955)

(assert (=> b!1085671 (= lt!481997 (+!3223 lt!481996 lt!481987))))

(declare-fun lt!482002 () ListLongMap!14955)

(declare-fun lt!481991 () tuple2!16974)

(assert (=> b!1085671 (= lt!481996 (+!3223 lt!482002 lt!481991))))

(declare-fun lt!482000 () ListLongMap!14955)

(declare-fun lt!482001 () ListLongMap!14955)

(assert (=> b!1085671 (= lt!482000 lt!482001)))

(assert (=> b!1085671 (= lt!482001 (+!3223 lt!481990 lt!481987))))

(assert (=> b!1085671 (= lt!481990 (+!3223 lt!481992 lt!481991))))

(declare-fun lt!481998 () ListLongMap!14955)

(assert (=> b!1085671 (= lt!481997 (+!3223 (+!3223 lt!481998 lt!481991) lt!481987))))

(declare-fun minValue!831 () V!40523)

(assert (=> b!1085671 (= lt!481987 (tuple2!16975 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!831))))

(assert (=> b!1085671 (= lt!481991 (tuple2!16975 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!831))))

(declare-fun b!1085672 () Bool)

(declare-fun e!620246 () Bool)

(declare-fun e!620241 () Bool)

(assert (=> b!1085672 (= e!620246 e!620241)))

(declare-fun res!723970 () Bool)

(assert (=> b!1085672 (=> (not res!723970) (not e!620241))))

(declare-datatypes ((array!69994 0))(
  ( (array!69995 (arr!33667 (Array (_ BitVec 32) (_ BitVec 64))) (size!34204 (_ BitVec 32))) )
))
(declare-fun lt!481995 () array!69994)

(declare-fun mask!1414 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!69994 (_ BitVec 32)) Bool)

(assert (=> b!1085672 (= res!723970 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!481995 mask!1414))))

(declare-fun _keys!1070 () array!69994)

(declare-fun i!650 () (_ BitVec 32))

(assert (=> b!1085672 (= lt!481995 (array!69995 (store (arr!33667 _keys!1070) i!650 #b1000000000000000000000000000000000000000000000000000000000000000) (size!34204 _keys!1070)))))

(declare-fun b!1085673 () Bool)

(assert (=> b!1085673 (= e!620241 (not e!620247))))

(declare-fun res!723973 () Bool)

(assert (=> b!1085673 (=> res!723973 e!620247)))

(declare-fun extraKeys!811 () (_ BitVec 32))

(assert (=> b!1085673 (= res!723973 (or (= (bvand extraKeys!811 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (= (bvand extraKeys!811 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun defaultEntry!882 () Int)

(declare-datatypes ((ValueCell!12564 0))(
  ( (ValueCellFull!12564 (v!15952 V!40523)) (EmptyCell!12564) )
))
(declare-datatypes ((array!69996 0))(
  ( (array!69997 (arr!33668 (Array (_ BitVec 32) ValueCell!12564)) (size!34205 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!69996)

(declare-fun getCurrentListMap!4248 (array!69994 array!69996 (_ BitVec 32) (_ BitVec 32) V!40523 V!40523 (_ BitVec 32) Int) ListLongMap!14955)

(assert (=> b!1085673 (= lt!482000 (getCurrentListMap!4248 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun lt!481988 () array!69996)

(assert (=> b!1085673 (= lt!481997 (getCurrentListMap!4248 lt!481995 lt!481988 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(assert (=> b!1085673 (and (= lt!481998 lt!482002) (= lt!482002 lt!481998))))

(assert (=> b!1085673 (= lt!482002 (-!774 lt!481992 k0!904))))

(declare-fun lt!481999 () Unit!35663)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!54 (array!69994 array!69996 (_ BitVec 32) (_ BitVec 32) V!40523 V!40523 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!35663)

(assert (=> b!1085673 (= lt!481999 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!54 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 i!650 k0!904 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun getCurrentListMapNoExtraKeys!4000 (array!69994 array!69996 (_ BitVec 32) (_ BitVec 32) V!40523 V!40523 (_ BitVec 32) Int) ListLongMap!14955)

(assert (=> b!1085673 (= lt!481998 (getCurrentListMapNoExtraKeys!4000 lt!481995 lt!481988 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun dynLambda!2136 (Int (_ BitVec 64)) V!40523)

(assert (=> b!1085673 (= lt!481988 (array!69997 (store (arr!33668 _values!874) i!650 (ValueCellFull!12564 (dynLambda!2136 defaultEntry!882 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!34205 _values!874)))))

(assert (=> b!1085673 (= lt!481992 (getCurrentListMapNoExtraKeys!4000 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun arrayContainsKey!0 (array!69994 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1085673 (arrayContainsKey!0 _keys!1070 k0!904 #b00000000000000000000000000000000)))

(declare-fun lt!481989 () Unit!35663)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!69994 (_ BitVec 64) (_ BitVec 32)) Unit!35663)

(assert (=> b!1085673 (= lt!481989 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1070 k0!904 i!650))))

(declare-fun b!1085674 () Bool)

(declare-fun res!723968 () Bool)

(assert (=> b!1085674 (=> (not res!723968) (not e!620241))))

(declare-datatypes ((List!23615 0))(
  ( (Nil!23612) (Cons!23611 (h!24820 (_ BitVec 64)) (t!33225 List!23615)) )
))
(declare-fun arrayNoDuplicates!0 (array!69994 (_ BitVec 32) List!23615) Bool)

(assert (=> b!1085674 (= res!723968 (arrayNoDuplicates!0 lt!481995 #b00000000000000000000000000000000 Nil!23612))))

(declare-fun b!1085675 () Bool)

(declare-fun e!620248 () Bool)

(declare-fun tp_is_empty!26547 () Bool)

(assert (=> b!1085675 (= e!620248 tp_is_empty!26547)))

(declare-fun b!1085676 () Bool)

(declare-fun res!723977 () Bool)

(assert (=> b!1085676 (=> (not res!723977) (not e!620246))))

(assert (=> b!1085676 (= res!723977 (and (bvsge i!650 #b00000000000000000000000000000000) (bvslt i!650 (size!34204 _keys!1070))))))

(declare-fun b!1085677 () Bool)

(declare-fun res!723967 () Bool)

(assert (=> b!1085677 (=> (not res!723967) (not e!620246))))

(assert (=> b!1085677 (= res!723967 (arrayNoDuplicates!0 _keys!1070 #b00000000000000000000000000000000 Nil!23612))))

(declare-fun b!1085678 () Bool)

(declare-fun res!723971 () Bool)

(assert (=> b!1085678 (=> (not res!723971) (not e!620246))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1085678 (= res!723971 (validKeyInArray!0 k0!904))))

(declare-fun b!1085679 () Bool)

(declare-fun res!723972 () Bool)

(assert (=> b!1085679 (=> (not res!723972) (not e!620246))))

(assert (=> b!1085679 (= res!723972 (= (select (arr!33667 _keys!1070) i!650) k0!904))))

(declare-fun b!1085680 () Bool)

(declare-fun e!620243 () Bool)

(declare-fun mapRes!41575 () Bool)

(assert (=> b!1085680 (= e!620243 (and e!620248 mapRes!41575))))

(declare-fun condMapEmpty!41575 () Bool)

(declare-fun mapDefault!41575 () ValueCell!12564)

(assert (=> b!1085680 (= condMapEmpty!41575 (= (arr!33668 _values!874) ((as const (Array (_ BitVec 32) ValueCell!12564)) mapDefault!41575)))))

(declare-fun mapNonEmpty!41575 () Bool)

(declare-fun tp!79484 () Bool)

(declare-fun e!620244 () Bool)

(assert (=> mapNonEmpty!41575 (= mapRes!41575 (and tp!79484 e!620244))))

(declare-fun mapKey!41575 () (_ BitVec 32))

(declare-fun mapValue!41575 () ValueCell!12564)

(declare-fun mapRest!41575 () (Array (_ BitVec 32) ValueCell!12564))

(assert (=> mapNonEmpty!41575 (= (arr!33668 _values!874) (store mapRest!41575 mapKey!41575 mapValue!41575))))

(declare-fun res!723969 () Bool)

(assert (=> start!95928 (=> (not res!723969) (not e!620246))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!95928 (= res!723969 (validMask!0 mask!1414))))

(assert (=> start!95928 e!620246))

(assert (=> start!95928 tp!79485))

(assert (=> start!95928 true))

(assert (=> start!95928 tp_is_empty!26547))

(declare-fun array_inv!25832 (array!69994) Bool)

(assert (=> start!95928 (array_inv!25832 _keys!1070)))

(declare-fun array_inv!25833 (array!69996) Bool)

(assert (=> start!95928 (and (array_inv!25833 _values!874) e!620243)))

(declare-fun b!1085681 () Bool)

(declare-fun res!723975 () Bool)

(assert (=> b!1085681 (=> (not res!723975) (not e!620246))))

(assert (=> b!1085681 (= res!723975 (and (= (size!34205 _values!874) (bvadd #b00000000000000000000000000000001 mask!1414)) (= (size!34204 _keys!1070) (size!34205 _values!874)) (bvsge mask!1414 #b00000000000000000000000000000000) (bvsge extraKeys!811 #b00000000000000000000000000000000) (bvsle extraKeys!811 #b00000000000000000000000000000011)))))

(declare-fun b!1085682 () Bool)

(assert (=> b!1085682 (= e!620244 tp_is_empty!26547)))

(declare-fun b!1085683 () Bool)

(assert (=> b!1085683 (= e!620242 true)))

(assert (=> b!1085683 (= (-!774 lt!482001 k0!904) (+!3223 lt!481993 lt!481987))))

(declare-fun lt!482003 () Unit!35663)

(assert (=> b!1085683 (= lt!482003 (addRemoveCommutativeForDiffKeys!19 lt!481990 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!831 k0!904))))

(declare-fun b!1085684 () Bool)

(declare-fun res!723974 () Bool)

(assert (=> b!1085684 (=> (not res!723974) (not e!620246))))

(assert (=> b!1085684 (= res!723974 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1070 mask!1414))))

(declare-fun mapIsEmpty!41575 () Bool)

(assert (=> mapIsEmpty!41575 mapRes!41575))

(assert (= (and start!95928 res!723969) b!1085681))

(assert (= (and b!1085681 res!723975) b!1085684))

(assert (= (and b!1085684 res!723974) b!1085677))

(assert (= (and b!1085677 res!723967) b!1085676))

(assert (= (and b!1085676 res!723977) b!1085678))

(assert (= (and b!1085678 res!723971) b!1085679))

(assert (= (and b!1085679 res!723972) b!1085672))

(assert (= (and b!1085672 res!723970) b!1085674))

(assert (= (and b!1085674 res!723968) b!1085673))

(assert (= (and b!1085673 (not res!723973)) b!1085671))

(assert (= (and b!1085671 (not res!723976)) b!1085683))

(assert (= (and b!1085680 condMapEmpty!41575) mapIsEmpty!41575))

(assert (= (and b!1085680 (not condMapEmpty!41575)) mapNonEmpty!41575))

(get-info :version)

(assert (= (and mapNonEmpty!41575 ((_ is ValueCellFull!12564) mapValue!41575)) b!1085682))

(assert (= (and b!1085680 ((_ is ValueCellFull!12564) mapDefault!41575)) b!1085675))

(assert (= start!95928 b!1085680))

(declare-fun b_lambda!17245 () Bool)

(assert (=> (not b_lambda!17245) (not b!1085673)))

(declare-fun t!33223 () Bool)

(declare-fun tb!7431 () Bool)

(assert (=> (and start!95928 (= defaultEntry!882 defaultEntry!882) t!33223) tb!7431))

(declare-fun result!15373 () Bool)

(assert (=> tb!7431 (= result!15373 tp_is_empty!26547)))

(assert (=> b!1085673 t!33223))

(declare-fun b_and!35785 () Bool)

(assert (= b_and!35783 (and (=> t!33223 result!15373) b_and!35785)))

(declare-fun m!1003981 () Bool)

(assert (=> b!1085672 m!1003981))

(declare-fun m!1003983 () Bool)

(assert (=> b!1085672 m!1003983))

(declare-fun m!1003985 () Bool)

(assert (=> mapNonEmpty!41575 m!1003985))

(declare-fun m!1003987 () Bool)

(assert (=> b!1085674 m!1003987))

(declare-fun m!1003989 () Bool)

(assert (=> b!1085673 m!1003989))

(declare-fun m!1003991 () Bool)

(assert (=> b!1085673 m!1003991))

(declare-fun m!1003993 () Bool)

(assert (=> b!1085673 m!1003993))

(declare-fun m!1003995 () Bool)

(assert (=> b!1085673 m!1003995))

(declare-fun m!1003997 () Bool)

(assert (=> b!1085673 m!1003997))

(declare-fun m!1003999 () Bool)

(assert (=> b!1085673 m!1003999))

(declare-fun m!1004001 () Bool)

(assert (=> b!1085673 m!1004001))

(declare-fun m!1004003 () Bool)

(assert (=> b!1085673 m!1004003))

(declare-fun m!1004005 () Bool)

(assert (=> b!1085673 m!1004005))

(declare-fun m!1004007 () Bool)

(assert (=> b!1085673 m!1004007))

(declare-fun m!1004009 () Bool)

(assert (=> b!1085678 m!1004009))

(declare-fun m!1004011 () Bool)

(assert (=> b!1085684 m!1004011))

(declare-fun m!1004013 () Bool)

(assert (=> b!1085683 m!1004013))

(declare-fun m!1004015 () Bool)

(assert (=> b!1085683 m!1004015))

(declare-fun m!1004017 () Bool)

(assert (=> b!1085683 m!1004017))

(declare-fun m!1004019 () Bool)

(assert (=> b!1085677 m!1004019))

(declare-fun m!1004021 () Bool)

(assert (=> b!1085679 m!1004021))

(declare-fun m!1004023 () Bool)

(assert (=> start!95928 m!1004023))

(declare-fun m!1004025 () Bool)

(assert (=> start!95928 m!1004025))

(declare-fun m!1004027 () Bool)

(assert (=> start!95928 m!1004027))

(declare-fun m!1004029 () Bool)

(assert (=> b!1085671 m!1004029))

(declare-fun m!1004031 () Bool)

(assert (=> b!1085671 m!1004031))

(declare-fun m!1004033 () Bool)

(assert (=> b!1085671 m!1004033))

(declare-fun m!1004035 () Bool)

(assert (=> b!1085671 m!1004035))

(declare-fun m!1004037 () Bool)

(assert (=> b!1085671 m!1004037))

(assert (=> b!1085671 m!1004033))

(declare-fun m!1004039 () Bool)

(assert (=> b!1085671 m!1004039))

(declare-fun m!1004041 () Bool)

(assert (=> b!1085671 m!1004041))

(declare-fun m!1004043 () Bool)

(assert (=> b!1085671 m!1004043))

(check-sat (not b!1085677) (not b!1085671) (not b!1085678) (not b_lambda!17245) (not b!1085683) tp_is_empty!26547 (not b!1085684) (not b!1085673) (not mapNonEmpty!41575) b_and!35785 (not b!1085672) (not start!95928) (not b!1085674) (not b_next!22545))
(check-sat b_and!35785 (not b_next!22545))
