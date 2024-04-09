; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!96464 () Bool)

(assert start!96464)

(declare-fun b_free!23007 () Bool)

(declare-fun b_next!23007 () Bool)

(assert (=> start!96464 (= b_free!23007 (not b_next!23007))))

(declare-fun tp!80949 () Bool)

(declare-fun b_and!36695 () Bool)

(assert (=> start!96464 (= tp!80949 b_and!36695)))

(declare-fun b!1096168 () Bool)

(declare-fun res!731671 () Bool)

(declare-fun e!625772 () Bool)

(assert (=> b!1096168 (=> (not res!731671) (not e!625772))))

(declare-fun k0!904 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1096168 (= res!731671 (validKeyInArray!0 k0!904))))

(declare-fun mapNonEmpty!42346 () Bool)

(declare-fun mapRes!42346 () Bool)

(declare-fun tp!80948 () Bool)

(declare-fun e!625771 () Bool)

(assert (=> mapNonEmpty!42346 (= mapRes!42346 (and tp!80948 e!625771))))

(declare-datatypes ((V!41203 0))(
  ( (V!41204 (val!13585 Int)) )
))
(declare-datatypes ((ValueCell!12819 0))(
  ( (ValueCellFull!12819 (v!16207 V!41203)) (EmptyCell!12819) )
))
(declare-fun mapRest!42346 () (Array (_ BitVec 32) ValueCell!12819))

(declare-fun mapValue!42346 () ValueCell!12819)

(declare-datatypes ((array!70974 0))(
  ( (array!70975 (arr!34155 (Array (_ BitVec 32) ValueCell!12819)) (size!34692 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!70974)

(declare-fun mapKey!42346 () (_ BitVec 32))

(assert (=> mapNonEmpty!42346 (= (arr!34155 _values!874) (store mapRest!42346 mapKey!42346 mapValue!42346))))

(declare-fun b!1096169 () Bool)

(declare-fun e!625769 () Bool)

(declare-fun e!625768 () Bool)

(assert (=> b!1096169 (= e!625769 (and e!625768 mapRes!42346))))

(declare-fun condMapEmpty!42346 () Bool)

(declare-fun mapDefault!42346 () ValueCell!12819)

(assert (=> b!1096169 (= condMapEmpty!42346 (= (arr!34155 _values!874) ((as const (Array (_ BitVec 32) ValueCell!12819)) mapDefault!42346)))))

(declare-fun b!1096170 () Bool)

(declare-fun e!625773 () Bool)

(assert (=> b!1096170 (= e!625772 e!625773)))

(declare-fun res!731674 () Bool)

(assert (=> b!1096170 (=> (not res!731674) (not e!625773))))

(declare-datatypes ((array!70976 0))(
  ( (array!70977 (arr!34156 (Array (_ BitVec 32) (_ BitVec 64))) (size!34693 (_ BitVec 32))) )
))
(declare-fun lt!490058 () array!70976)

(declare-fun mask!1414 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!70976 (_ BitVec 32)) Bool)

(assert (=> b!1096170 (= res!731674 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!490058 mask!1414))))

(declare-fun _keys!1070 () array!70976)

(declare-fun i!650 () (_ BitVec 32))

(assert (=> b!1096170 (= lt!490058 (array!70977 (store (arr!34156 _keys!1070) i!650 #b1000000000000000000000000000000000000000000000000000000000000000) (size!34693 _keys!1070)))))

(declare-fun b!1096171 () Bool)

(declare-fun res!731675 () Bool)

(assert (=> b!1096171 (=> (not res!731675) (not e!625773))))

(declare-datatypes ((List!23986 0))(
  ( (Nil!23983) (Cons!23982 (h!25191 (_ BitVec 64)) (t!34046 List!23986)) )
))
(declare-fun arrayNoDuplicates!0 (array!70976 (_ BitVec 32) List!23986) Bool)

(assert (=> b!1096171 (= res!731675 (arrayNoDuplicates!0 lt!490058 #b00000000000000000000000000000000 Nil!23983))))

(declare-fun b!1096172 () Bool)

(declare-fun res!731678 () Bool)

(assert (=> b!1096172 (=> (not res!731678) (not e!625772))))

(declare-fun extraKeys!811 () (_ BitVec 32))

(assert (=> b!1096172 (= res!731678 (and (= (size!34692 _values!874) (bvadd #b00000000000000000000000000000001 mask!1414)) (= (size!34693 _keys!1070) (size!34692 _values!874)) (bvsge mask!1414 #b00000000000000000000000000000000) (bvsge extraKeys!811 #b00000000000000000000000000000000) (bvsle extraKeys!811 #b00000000000000000000000000000011)))))

(declare-fun b!1096173 () Bool)

(declare-fun res!731679 () Bool)

(assert (=> b!1096173 (=> (not res!731679) (not e!625772))))

(assert (=> b!1096173 (= res!731679 (and (bvsge i!650 #b00000000000000000000000000000000) (bvslt i!650 (size!34693 _keys!1070))))))

(declare-fun b!1096174 () Bool)

(declare-fun res!731672 () Bool)

(assert (=> b!1096174 (=> (not res!731672) (not e!625772))))

(assert (=> b!1096174 (= res!731672 (arrayNoDuplicates!0 _keys!1070 #b00000000000000000000000000000000 Nil!23983))))

(declare-fun res!731677 () Bool)

(assert (=> start!96464 (=> (not res!731677) (not e!625772))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!96464 (= res!731677 (validMask!0 mask!1414))))

(assert (=> start!96464 e!625772))

(assert (=> start!96464 tp!80949))

(assert (=> start!96464 true))

(declare-fun tp_is_empty!27057 () Bool)

(assert (=> start!96464 tp_is_empty!27057))

(declare-fun array_inv!26170 (array!70976) Bool)

(assert (=> start!96464 (array_inv!26170 _keys!1070)))

(declare-fun array_inv!26171 (array!70974) Bool)

(assert (=> start!96464 (and (array_inv!26171 _values!874) e!625769)))

(declare-fun b!1096175 () Bool)

(declare-fun res!731676 () Bool)

(assert (=> b!1096175 (=> (not res!731676) (not e!625772))))

(assert (=> b!1096175 (= res!731676 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1070 mask!1414))))

(declare-fun b!1096176 () Bool)

(declare-fun res!731673 () Bool)

(assert (=> b!1096176 (=> (not res!731673) (not e!625772))))

(assert (=> b!1096176 (= res!731673 (= (select (arr!34156 _keys!1070) i!650) k0!904))))

(declare-fun b!1096177 () Bool)

(assert (=> b!1096177 (= e!625771 tp_is_empty!27057)))

(declare-fun b!1096178 () Bool)

(assert (=> b!1096178 (= e!625773 (not true))))

(declare-fun defaultEntry!882 () Int)

(declare-fun zeroValue!831 () V!41203)

(declare-datatypes ((tuple2!17312 0))(
  ( (tuple2!17313 (_1!8666 (_ BitVec 64)) (_2!8666 V!41203)) )
))
(declare-datatypes ((List!23987 0))(
  ( (Nil!23984) (Cons!23983 (h!25192 tuple2!17312) (t!34047 List!23987)) )
))
(declare-datatypes ((ListLongMap!15293 0))(
  ( (ListLongMap!15294 (toList!7662 List!23987)) )
))
(declare-fun lt!490057 () ListLongMap!15293)

(declare-fun minValue!831 () V!41203)

(declare-fun getCurrentListMapNoExtraKeys!4149 (array!70976 array!70974 (_ BitVec 32) (_ BitVec 32) V!41203 V!41203 (_ BitVec 32) Int) ListLongMap!15293)

(declare-fun dynLambda!2280 (Int (_ BitVec 64)) V!41203)

(assert (=> b!1096178 (= lt!490057 (getCurrentListMapNoExtraKeys!4149 lt!490058 (array!70975 (store (arr!34155 _values!874) i!650 (ValueCellFull!12819 (dynLambda!2280 defaultEntry!882 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!34692 _values!874)) mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun lt!490055 () ListLongMap!15293)

(assert (=> b!1096178 (= lt!490055 (getCurrentListMapNoExtraKeys!4149 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun arrayContainsKey!0 (array!70976 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1096178 (arrayContainsKey!0 _keys!1070 k0!904 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!35997 0))(
  ( (Unit!35998) )
))
(declare-fun lt!490056 () Unit!35997)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!70976 (_ BitVec 64) (_ BitVec 32)) Unit!35997)

(assert (=> b!1096178 (= lt!490056 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1070 k0!904 i!650))))

(declare-fun b!1096179 () Bool)

(assert (=> b!1096179 (= e!625768 tp_is_empty!27057)))

(declare-fun mapIsEmpty!42346 () Bool)

(assert (=> mapIsEmpty!42346 mapRes!42346))

(assert (= (and start!96464 res!731677) b!1096172))

(assert (= (and b!1096172 res!731678) b!1096175))

(assert (= (and b!1096175 res!731676) b!1096174))

(assert (= (and b!1096174 res!731672) b!1096173))

(assert (= (and b!1096173 res!731679) b!1096168))

(assert (= (and b!1096168 res!731671) b!1096176))

(assert (= (and b!1096176 res!731673) b!1096170))

(assert (= (and b!1096170 res!731674) b!1096171))

(assert (= (and b!1096171 res!731675) b!1096178))

(assert (= (and b!1096169 condMapEmpty!42346) mapIsEmpty!42346))

(assert (= (and b!1096169 (not condMapEmpty!42346)) mapNonEmpty!42346))

(get-info :version)

(assert (= (and mapNonEmpty!42346 ((_ is ValueCellFull!12819) mapValue!42346)) b!1096177))

(assert (= (and b!1096169 ((_ is ValueCellFull!12819) mapDefault!42346)) b!1096179))

(assert (= start!96464 b!1096169))

(declare-fun b_lambda!17695 () Bool)

(assert (=> (not b_lambda!17695) (not b!1096178)))

(declare-fun t!34045 () Bool)

(declare-fun tb!7881 () Bool)

(assert (=> (and start!96464 (= defaultEntry!882 defaultEntry!882) t!34045) tb!7881))

(declare-fun result!16277 () Bool)

(assert (=> tb!7881 (= result!16277 tp_is_empty!27057)))

(assert (=> b!1096178 t!34045))

(declare-fun b_and!36697 () Bool)

(assert (= b_and!36695 (and (=> t!34045 result!16277) b_and!36697)))

(declare-fun m!1015859 () Bool)

(assert (=> b!1096171 m!1015859))

(declare-fun m!1015861 () Bool)

(assert (=> b!1096178 m!1015861))

(declare-fun m!1015863 () Bool)

(assert (=> b!1096178 m!1015863))

(declare-fun m!1015865 () Bool)

(assert (=> b!1096178 m!1015865))

(declare-fun m!1015867 () Bool)

(assert (=> b!1096178 m!1015867))

(declare-fun m!1015869 () Bool)

(assert (=> b!1096178 m!1015869))

(declare-fun m!1015871 () Bool)

(assert (=> b!1096178 m!1015871))

(declare-fun m!1015873 () Bool)

(assert (=> b!1096168 m!1015873))

(declare-fun m!1015875 () Bool)

(assert (=> mapNonEmpty!42346 m!1015875))

(declare-fun m!1015877 () Bool)

(assert (=> start!96464 m!1015877))

(declare-fun m!1015879 () Bool)

(assert (=> start!96464 m!1015879))

(declare-fun m!1015881 () Bool)

(assert (=> start!96464 m!1015881))

(declare-fun m!1015883 () Bool)

(assert (=> b!1096176 m!1015883))

(declare-fun m!1015885 () Bool)

(assert (=> b!1096175 m!1015885))

(declare-fun m!1015887 () Bool)

(assert (=> b!1096174 m!1015887))

(declare-fun m!1015889 () Bool)

(assert (=> b!1096170 m!1015889))

(declare-fun m!1015891 () Bool)

(assert (=> b!1096170 m!1015891))

(check-sat (not b!1096178) (not b!1096174) tp_is_empty!27057 (not start!96464) (not b!1096171) (not b!1096175) (not b!1096170) (not b!1096168) b_and!36697 (not mapNonEmpty!42346) (not b_next!23007) (not b_lambda!17695))
(check-sat b_and!36697 (not b_next!23007))
