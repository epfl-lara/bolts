; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!96954 () Bool)

(assert start!96954)

(declare-fun b_free!23211 () Bool)

(declare-fun b_next!23211 () Bool)

(assert (=> start!96954 (= b_free!23211 (not b_next!23211))))

(declare-fun tp!81594 () Bool)

(declare-fun b_and!37257 () Bool)

(assert (=> start!96954 (= tp!81594 b_and!37257)))

(declare-fun b!1102607 () Bool)

(declare-fun res!735784 () Bool)

(declare-fun e!629374 () Bool)

(assert (=> b!1102607 (=> (not res!735784) (not e!629374))))

(declare-fun i!650 () (_ BitVec 32))

(declare-datatypes ((array!71398 0))(
  ( (array!71399 (arr!34356 (Array (_ BitVec 32) (_ BitVec 64))) (size!34893 (_ BitVec 32))) )
))
(declare-fun _keys!1070 () array!71398)

(assert (=> b!1102607 (= res!735784 (and (bvsge i!650 #b00000000000000000000000000000000) (bvslt i!650 (size!34893 _keys!1070))))))

(declare-fun b!1102608 () Bool)

(declare-fun e!629378 () Bool)

(declare-fun e!629379 () Bool)

(declare-fun mapRes!42685 () Bool)

(assert (=> b!1102608 (= e!629378 (and e!629379 mapRes!42685))))

(declare-fun condMapEmpty!42685 () Bool)

(declare-datatypes ((V!41475 0))(
  ( (V!41476 (val!13687 Int)) )
))
(declare-datatypes ((ValueCell!12921 0))(
  ( (ValueCellFull!12921 (v!16319 V!41475)) (EmptyCell!12921) )
))
(declare-datatypes ((array!71400 0))(
  ( (array!71401 (arr!34357 (Array (_ BitVec 32) ValueCell!12921)) (size!34894 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!71400)

(declare-fun mapDefault!42685 () ValueCell!12921)

(assert (=> b!1102608 (= condMapEmpty!42685 (= (arr!34357 _values!874) ((as const (Array (_ BitVec 32) ValueCell!12921)) mapDefault!42685)))))

(declare-fun b!1102609 () Bool)

(declare-fun extraKeys!811 () (_ BitVec 32))

(declare-fun e!629377 () Bool)

(declare-fun lt!494756 () Bool)

(declare-datatypes ((tuple2!17480 0))(
  ( (tuple2!17481 (_1!8750 (_ BitVec 64)) (_2!8750 V!41475)) )
))
(declare-datatypes ((List!24152 0))(
  ( (Nil!24149) (Cons!24148 (h!25357 tuple2!17480) (t!34416 List!24152)) )
))
(declare-datatypes ((ListLongMap!15461 0))(
  ( (ListLongMap!15462 (toList!7746 List!24152)) )
))
(declare-fun lt!494757 () ListLongMap!15461)

(declare-fun lt!494753 () ListLongMap!15461)

(assert (=> b!1102609 (= e!629377 (not (or (and (not lt!494756) (not (= (bvand extraKeys!811 #b00000000000000000000000000000010) #b00000000000000000000000000000000))) (and (not lt!494756) (= (bvand extraKeys!811 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (and (not (= (bvand extraKeys!811 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!494756) (not (= lt!494753 lt!494757)) (bvslt i!650 (size!34894 _values!874)))))))

(assert (=> b!1102609 (= lt!494756 (= (bvand extraKeys!811 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(declare-fun defaultEntry!882 () Int)

(declare-fun lt!494755 () ListLongMap!15461)

(declare-fun minValue!831 () V!41475)

(declare-fun mask!1414 () (_ BitVec 32))

(declare-fun zeroValue!831 () V!41475)

(declare-fun getCurrentListMap!4429 (array!71398 array!71400 (_ BitVec 32) (_ BitVec 32) V!41475 V!41475 (_ BitVec 32) Int) ListLongMap!15461)

(assert (=> b!1102609 (= lt!494755 (getCurrentListMap!4429 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun lt!494758 () array!71400)

(declare-fun lt!494759 () array!71398)

(assert (=> b!1102609 (= lt!494753 (getCurrentListMap!4429 lt!494759 lt!494758 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun lt!494760 () ListLongMap!15461)

(assert (=> b!1102609 (and (= lt!494757 lt!494760) (= lt!494760 lt!494757))))

(declare-fun lt!494752 () ListLongMap!15461)

(declare-fun k0!904 () (_ BitVec 64))

(declare-fun -!983 (ListLongMap!15461 (_ BitVec 64)) ListLongMap!15461)

(assert (=> b!1102609 (= lt!494760 (-!983 lt!494752 k0!904))))

(declare-datatypes ((Unit!36167 0))(
  ( (Unit!36168) )
))
(declare-fun lt!494761 () Unit!36167)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!241 (array!71398 array!71400 (_ BitVec 32) (_ BitVec 32) V!41475 V!41475 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!36167)

(assert (=> b!1102609 (= lt!494761 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!241 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 i!650 k0!904 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun getCurrentListMapNoExtraKeys!4216 (array!71398 array!71400 (_ BitVec 32) (_ BitVec 32) V!41475 V!41475 (_ BitVec 32) Int) ListLongMap!15461)

(assert (=> b!1102609 (= lt!494757 (getCurrentListMapNoExtraKeys!4216 lt!494759 lt!494758 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun dynLambda!2347 (Int (_ BitVec 64)) V!41475)

(assert (=> b!1102609 (= lt!494758 (array!71401 (store (arr!34357 _values!874) i!650 (ValueCellFull!12921 (dynLambda!2347 defaultEntry!882 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!34894 _values!874)))))

(assert (=> b!1102609 (= lt!494752 (getCurrentListMapNoExtraKeys!4216 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun arrayContainsKey!0 (array!71398 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1102609 (arrayContainsKey!0 _keys!1070 k0!904 #b00000000000000000000000000000000)))

(declare-fun lt!494754 () Unit!36167)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!71398 (_ BitVec 64) (_ BitVec 32)) Unit!36167)

(assert (=> b!1102609 (= lt!494754 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1070 k0!904 i!650))))

(declare-fun mapIsEmpty!42685 () Bool)

(assert (=> mapIsEmpty!42685 mapRes!42685))

(declare-fun b!1102610 () Bool)

(declare-fun res!735780 () Bool)

(assert (=> b!1102610 (=> (not res!735780) (not e!629374))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!71398 (_ BitVec 32)) Bool)

(assert (=> b!1102610 (= res!735780 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1070 mask!1414))))

(declare-fun res!735782 () Bool)

(assert (=> start!96954 (=> (not res!735782) (not e!629374))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!96954 (= res!735782 (validMask!0 mask!1414))))

(assert (=> start!96954 e!629374))

(assert (=> start!96954 tp!81594))

(assert (=> start!96954 true))

(declare-fun tp_is_empty!27261 () Bool)

(assert (=> start!96954 tp_is_empty!27261))

(declare-fun array_inv!26318 (array!71398) Bool)

(assert (=> start!96954 (array_inv!26318 _keys!1070)))

(declare-fun array_inv!26319 (array!71400) Bool)

(assert (=> start!96954 (and (array_inv!26319 _values!874) e!629378)))

(declare-fun b!1102611 () Bool)

(declare-fun res!735779 () Bool)

(assert (=> b!1102611 (=> (not res!735779) (not e!629374))))

(assert (=> b!1102611 (= res!735779 (= (select (arr!34356 _keys!1070) i!650) k0!904))))

(declare-fun b!1102612 () Bool)

(declare-fun res!735781 () Bool)

(assert (=> b!1102612 (=> (not res!735781) (not e!629377))))

(declare-datatypes ((List!24153 0))(
  ( (Nil!24150) (Cons!24149 (h!25358 (_ BitVec 64)) (t!34417 List!24153)) )
))
(declare-fun arrayNoDuplicates!0 (array!71398 (_ BitVec 32) List!24153) Bool)

(assert (=> b!1102612 (= res!735781 (arrayNoDuplicates!0 lt!494759 #b00000000000000000000000000000000 Nil!24150))))

(declare-fun b!1102613 () Bool)

(declare-fun e!629376 () Bool)

(assert (=> b!1102613 (= e!629376 tp_is_empty!27261)))

(declare-fun mapNonEmpty!42685 () Bool)

(declare-fun tp!81593 () Bool)

(assert (=> mapNonEmpty!42685 (= mapRes!42685 (and tp!81593 e!629376))))

(declare-fun mapRest!42685 () (Array (_ BitVec 32) ValueCell!12921))

(declare-fun mapValue!42685 () ValueCell!12921)

(declare-fun mapKey!42685 () (_ BitVec 32))

(assert (=> mapNonEmpty!42685 (= (arr!34357 _values!874) (store mapRest!42685 mapKey!42685 mapValue!42685))))

(declare-fun b!1102614 () Bool)

(declare-fun res!735786 () Bool)

(assert (=> b!1102614 (=> (not res!735786) (not e!629374))))

(assert (=> b!1102614 (= res!735786 (and (= (size!34894 _values!874) (bvadd #b00000000000000000000000000000001 mask!1414)) (= (size!34893 _keys!1070) (size!34894 _values!874)) (bvsge mask!1414 #b00000000000000000000000000000000) (bvsge extraKeys!811 #b00000000000000000000000000000000) (bvsle extraKeys!811 #b00000000000000000000000000000011)))))

(declare-fun b!1102615 () Bool)

(assert (=> b!1102615 (= e!629379 tp_is_empty!27261)))

(declare-fun b!1102616 () Bool)

(declare-fun res!735783 () Bool)

(assert (=> b!1102616 (=> (not res!735783) (not e!629374))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1102616 (= res!735783 (validKeyInArray!0 k0!904))))

(declare-fun b!1102617 () Bool)

(declare-fun res!735778 () Bool)

(assert (=> b!1102617 (=> (not res!735778) (not e!629374))))

(assert (=> b!1102617 (= res!735778 (arrayNoDuplicates!0 _keys!1070 #b00000000000000000000000000000000 Nil!24150))))

(declare-fun b!1102618 () Bool)

(assert (=> b!1102618 (= e!629374 e!629377)))

(declare-fun res!735785 () Bool)

(assert (=> b!1102618 (=> (not res!735785) (not e!629377))))

(assert (=> b!1102618 (= res!735785 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!494759 mask!1414))))

(assert (=> b!1102618 (= lt!494759 (array!71399 (store (arr!34356 _keys!1070) i!650 #b1000000000000000000000000000000000000000000000000000000000000000) (size!34893 _keys!1070)))))

(assert (= (and start!96954 res!735782) b!1102614))

(assert (= (and b!1102614 res!735786) b!1102610))

(assert (= (and b!1102610 res!735780) b!1102617))

(assert (= (and b!1102617 res!735778) b!1102607))

(assert (= (and b!1102607 res!735784) b!1102616))

(assert (= (and b!1102616 res!735783) b!1102611))

(assert (= (and b!1102611 res!735779) b!1102618))

(assert (= (and b!1102618 res!735785) b!1102612))

(assert (= (and b!1102612 res!735781) b!1102609))

(assert (= (and b!1102608 condMapEmpty!42685) mapIsEmpty!42685))

(assert (= (and b!1102608 (not condMapEmpty!42685)) mapNonEmpty!42685))

(get-info :version)

(assert (= (and mapNonEmpty!42685 ((_ is ValueCellFull!12921) mapValue!42685)) b!1102613))

(assert (= (and b!1102608 ((_ is ValueCellFull!12921) mapDefault!42685)) b!1102615))

(assert (= start!96954 b!1102608))

(declare-fun b_lambda!18229 () Bool)

(assert (=> (not b_lambda!18229) (not b!1102609)))

(declare-fun t!34415 () Bool)

(declare-fun tb!8085 () Bool)

(assert (=> (and start!96954 (= defaultEntry!882 defaultEntry!882) t!34415) tb!8085))

(declare-fun result!16707 () Bool)

(assert (=> tb!8085 (= result!16707 tp_is_empty!27261)))

(assert (=> b!1102609 t!34415))

(declare-fun b_and!37259 () Bool)

(assert (= b_and!37257 (and (=> t!34415 result!16707) b_and!37259)))

(declare-fun m!1023059 () Bool)

(assert (=> b!1102617 m!1023059))

(declare-fun m!1023061 () Bool)

(assert (=> start!96954 m!1023061))

(declare-fun m!1023063 () Bool)

(assert (=> start!96954 m!1023063))

(declare-fun m!1023065 () Bool)

(assert (=> start!96954 m!1023065))

(declare-fun m!1023067 () Bool)

(assert (=> b!1102618 m!1023067))

(declare-fun m!1023069 () Bool)

(assert (=> b!1102618 m!1023069))

(declare-fun m!1023071 () Bool)

(assert (=> b!1102612 m!1023071))

(declare-fun m!1023073 () Bool)

(assert (=> mapNonEmpty!42685 m!1023073))

(declare-fun m!1023075 () Bool)

(assert (=> b!1102616 m!1023075))

(declare-fun m!1023077 () Bool)

(assert (=> b!1102611 m!1023077))

(declare-fun m!1023079 () Bool)

(assert (=> b!1102610 m!1023079))

(declare-fun m!1023081 () Bool)

(assert (=> b!1102609 m!1023081))

(declare-fun m!1023083 () Bool)

(assert (=> b!1102609 m!1023083))

(declare-fun m!1023085 () Bool)

(assert (=> b!1102609 m!1023085))

(declare-fun m!1023087 () Bool)

(assert (=> b!1102609 m!1023087))

(declare-fun m!1023089 () Bool)

(assert (=> b!1102609 m!1023089))

(declare-fun m!1023091 () Bool)

(assert (=> b!1102609 m!1023091))

(declare-fun m!1023093 () Bool)

(assert (=> b!1102609 m!1023093))

(declare-fun m!1023095 () Bool)

(assert (=> b!1102609 m!1023095))

(declare-fun m!1023097 () Bool)

(assert (=> b!1102609 m!1023097))

(declare-fun m!1023099 () Bool)

(assert (=> b!1102609 m!1023099))

(check-sat (not b_next!23211) (not start!96954) tp_is_empty!27261 (not b_lambda!18229) (not b!1102610) b_and!37259 (not b!1102612) (not mapNonEmpty!42685) (not b!1102616) (not b!1102618) (not b!1102609) (not b!1102617))
(check-sat b_and!37259 (not b_next!23211))
