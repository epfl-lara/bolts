; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!96446 () Bool)

(assert start!96446)

(declare-fun b_free!22989 () Bool)

(declare-fun b_next!22989 () Bool)

(assert (=> start!96446 (= b_free!22989 (not b_next!22989))))

(declare-fun tp!80894 () Bool)

(declare-fun b_and!36659 () Bool)

(assert (=> start!96446 (= tp!80894 b_and!36659)))

(declare-fun b!1095826 () Bool)

(declare-fun e!625611 () Bool)

(assert (=> b!1095826 (= e!625611 (not true))))

(declare-fun defaultEntry!882 () Int)

(declare-datatypes ((V!41179 0))(
  ( (V!41180 (val!13576 Int)) )
))
(declare-datatypes ((ValueCell!12810 0))(
  ( (ValueCellFull!12810 (v!16198 V!41179)) (EmptyCell!12810) )
))
(declare-datatypes ((array!70944 0))(
  ( (array!70945 (arr!34140 (Array (_ BitVec 32) ValueCell!12810)) (size!34677 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!70944)

(declare-fun minValue!831 () V!41179)

(declare-fun mask!1414 () (_ BitVec 32))

(declare-fun i!650 () (_ BitVec 32))

(declare-datatypes ((array!70946 0))(
  ( (array!70947 (arr!34141 (Array (_ BitVec 32) (_ BitVec 64))) (size!34678 (_ BitVec 32))) )
))
(declare-fun lt!489947 () array!70946)

(declare-fun extraKeys!811 () (_ BitVec 32))

(declare-datatypes ((tuple2!17304 0))(
  ( (tuple2!17305 (_1!8662 (_ BitVec 64)) (_2!8662 V!41179)) )
))
(declare-datatypes ((List!23977 0))(
  ( (Nil!23974) (Cons!23973 (h!25182 tuple2!17304) (t!34019 List!23977)) )
))
(declare-datatypes ((ListLongMap!15285 0))(
  ( (ListLongMap!15286 (toList!7658 List!23977)) )
))
(declare-fun lt!489948 () ListLongMap!15285)

(declare-fun zeroValue!831 () V!41179)

(declare-fun getCurrentListMapNoExtraKeys!4145 (array!70946 array!70944 (_ BitVec 32) (_ BitVec 32) V!41179 V!41179 (_ BitVec 32) Int) ListLongMap!15285)

(declare-fun dynLambda!2276 (Int (_ BitVec 64)) V!41179)

(assert (=> b!1095826 (= lt!489948 (getCurrentListMapNoExtraKeys!4145 lt!489947 (array!70945 (store (arr!34140 _values!874) i!650 (ValueCellFull!12810 (dynLambda!2276 defaultEntry!882 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!34677 _values!874)) mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun lt!489950 () ListLongMap!15285)

(declare-fun _keys!1070 () array!70946)

(assert (=> b!1095826 (= lt!489950 (getCurrentListMapNoExtraKeys!4145 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun k0!904 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!70946 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1095826 (arrayContainsKey!0 _keys!1070 k0!904 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!35989 0))(
  ( (Unit!35990) )
))
(declare-fun lt!489949 () Unit!35989)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!70946 (_ BitVec 64) (_ BitVec 32)) Unit!35989)

(assert (=> b!1095826 (= lt!489949 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1070 k0!904 i!650))))

(declare-fun mapNonEmpty!42319 () Bool)

(declare-fun mapRes!42319 () Bool)

(declare-fun tp!80895 () Bool)

(declare-fun e!625609 () Bool)

(assert (=> mapNonEmpty!42319 (= mapRes!42319 (and tp!80895 e!625609))))

(declare-fun mapKey!42319 () (_ BitVec 32))

(declare-fun mapRest!42319 () (Array (_ BitVec 32) ValueCell!12810))

(declare-fun mapValue!42319 () ValueCell!12810)

(assert (=> mapNonEmpty!42319 (= (arr!34140 _values!874) (store mapRest!42319 mapKey!42319 mapValue!42319))))

(declare-fun b!1095827 () Bool)

(declare-fun res!731435 () Bool)

(declare-fun e!625608 () Bool)

(assert (=> b!1095827 (=> (not res!731435) (not e!625608))))

(assert (=> b!1095827 (= res!731435 (= (select (arr!34141 _keys!1070) i!650) k0!904))))

(declare-fun b!1095828 () Bool)

(declare-fun res!731436 () Bool)

(assert (=> b!1095828 (=> (not res!731436) (not e!625608))))

(assert (=> b!1095828 (= res!731436 (and (= (size!34677 _values!874) (bvadd #b00000000000000000000000000000001 mask!1414)) (= (size!34678 _keys!1070) (size!34677 _values!874)) (bvsge mask!1414 #b00000000000000000000000000000000) (bvsge extraKeys!811 #b00000000000000000000000000000000) (bvsle extraKeys!811 #b00000000000000000000000000000011)))))

(declare-fun b!1095829 () Bool)

(assert (=> b!1095829 (= e!625608 e!625611)))

(declare-fun res!731433 () Bool)

(assert (=> b!1095829 (=> (not res!731433) (not e!625611))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!70946 (_ BitVec 32)) Bool)

(assert (=> b!1095829 (= res!731433 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!489947 mask!1414))))

(assert (=> b!1095829 (= lt!489947 (array!70947 (store (arr!34141 _keys!1070) i!650 #b1000000000000000000000000000000000000000000000000000000000000000) (size!34678 _keys!1070)))))

(declare-fun b!1095830 () Bool)

(declare-fun res!731430 () Bool)

(assert (=> b!1095830 (=> (not res!731430) (not e!625608))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1095830 (= res!731430 (validKeyInArray!0 k0!904))))

(declare-fun mapIsEmpty!42319 () Bool)

(assert (=> mapIsEmpty!42319 mapRes!42319))

(declare-fun b!1095831 () Bool)

(declare-fun res!731428 () Bool)

(assert (=> b!1095831 (=> (not res!731428) (not e!625608))))

(assert (=> b!1095831 (= res!731428 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1070 mask!1414))))

(declare-fun res!731431 () Bool)

(assert (=> start!96446 (=> (not res!731431) (not e!625608))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!96446 (= res!731431 (validMask!0 mask!1414))))

(assert (=> start!96446 e!625608))

(assert (=> start!96446 tp!80894))

(assert (=> start!96446 true))

(declare-fun tp_is_empty!27039 () Bool)

(assert (=> start!96446 tp_is_empty!27039))

(declare-fun array_inv!26160 (array!70946) Bool)

(assert (=> start!96446 (array_inv!26160 _keys!1070)))

(declare-fun e!625610 () Bool)

(declare-fun array_inv!26161 (array!70944) Bool)

(assert (=> start!96446 (and (array_inv!26161 _values!874) e!625610)))

(declare-fun b!1095832 () Bool)

(declare-fun res!731429 () Bool)

(assert (=> b!1095832 (=> (not res!731429) (not e!625608))))

(declare-datatypes ((List!23978 0))(
  ( (Nil!23975) (Cons!23974 (h!25183 (_ BitVec 64)) (t!34020 List!23978)) )
))
(declare-fun arrayNoDuplicates!0 (array!70946 (_ BitVec 32) List!23978) Bool)

(assert (=> b!1095832 (= res!731429 (arrayNoDuplicates!0 _keys!1070 #b00000000000000000000000000000000 Nil!23975))))

(declare-fun b!1095833 () Bool)

(assert (=> b!1095833 (= e!625609 tp_is_empty!27039)))

(declare-fun b!1095834 () Bool)

(declare-fun e!625606 () Bool)

(assert (=> b!1095834 (= e!625610 (and e!625606 mapRes!42319))))

(declare-fun condMapEmpty!42319 () Bool)

(declare-fun mapDefault!42319 () ValueCell!12810)

(assert (=> b!1095834 (= condMapEmpty!42319 (= (arr!34140 _values!874) ((as const (Array (_ BitVec 32) ValueCell!12810)) mapDefault!42319)))))

(declare-fun b!1095835 () Bool)

(declare-fun res!731432 () Bool)

(assert (=> b!1095835 (=> (not res!731432) (not e!625611))))

(assert (=> b!1095835 (= res!731432 (arrayNoDuplicates!0 lt!489947 #b00000000000000000000000000000000 Nil!23975))))

(declare-fun b!1095836 () Bool)

(assert (=> b!1095836 (= e!625606 tp_is_empty!27039)))

(declare-fun b!1095837 () Bool)

(declare-fun res!731434 () Bool)

(assert (=> b!1095837 (=> (not res!731434) (not e!625608))))

(assert (=> b!1095837 (= res!731434 (and (bvsge i!650 #b00000000000000000000000000000000) (bvslt i!650 (size!34678 _keys!1070))))))

(assert (= (and start!96446 res!731431) b!1095828))

(assert (= (and b!1095828 res!731436) b!1095831))

(assert (= (and b!1095831 res!731428) b!1095832))

(assert (= (and b!1095832 res!731429) b!1095837))

(assert (= (and b!1095837 res!731434) b!1095830))

(assert (= (and b!1095830 res!731430) b!1095827))

(assert (= (and b!1095827 res!731435) b!1095829))

(assert (= (and b!1095829 res!731433) b!1095835))

(assert (= (and b!1095835 res!731432) b!1095826))

(assert (= (and b!1095834 condMapEmpty!42319) mapIsEmpty!42319))

(assert (= (and b!1095834 (not condMapEmpty!42319)) mapNonEmpty!42319))

(get-info :version)

(assert (= (and mapNonEmpty!42319 ((_ is ValueCellFull!12810) mapValue!42319)) b!1095833))

(assert (= (and b!1095834 ((_ is ValueCellFull!12810) mapDefault!42319)) b!1095836))

(assert (= start!96446 b!1095834))

(declare-fun b_lambda!17677 () Bool)

(assert (=> (not b_lambda!17677) (not b!1095826)))

(declare-fun t!34018 () Bool)

(declare-fun tb!7863 () Bool)

(assert (=> (and start!96446 (= defaultEntry!882 defaultEntry!882) t!34018) tb!7863))

(declare-fun result!16241 () Bool)

(assert (=> tb!7863 (= result!16241 tp_is_empty!27039)))

(assert (=> b!1095826 t!34018))

(declare-fun b_and!36661 () Bool)

(assert (= b_and!36659 (and (=> t!34018 result!16241) b_and!36661)))

(declare-fun m!1015553 () Bool)

(assert (=> b!1095831 m!1015553))

(declare-fun m!1015555 () Bool)

(assert (=> b!1095832 m!1015555))

(declare-fun m!1015557 () Bool)

(assert (=> b!1095829 m!1015557))

(declare-fun m!1015559 () Bool)

(assert (=> b!1095829 m!1015559))

(declare-fun m!1015561 () Bool)

(assert (=> b!1095827 m!1015561))

(declare-fun m!1015563 () Bool)

(assert (=> b!1095826 m!1015563))

(declare-fun m!1015565 () Bool)

(assert (=> b!1095826 m!1015565))

(declare-fun m!1015567 () Bool)

(assert (=> b!1095826 m!1015567))

(declare-fun m!1015569 () Bool)

(assert (=> b!1095826 m!1015569))

(declare-fun m!1015571 () Bool)

(assert (=> b!1095826 m!1015571))

(declare-fun m!1015573 () Bool)

(assert (=> b!1095826 m!1015573))

(declare-fun m!1015575 () Bool)

(assert (=> start!96446 m!1015575))

(declare-fun m!1015577 () Bool)

(assert (=> start!96446 m!1015577))

(declare-fun m!1015579 () Bool)

(assert (=> start!96446 m!1015579))

(declare-fun m!1015581 () Bool)

(assert (=> mapNonEmpty!42319 m!1015581))

(declare-fun m!1015583 () Bool)

(assert (=> b!1095830 m!1015583))

(declare-fun m!1015585 () Bool)

(assert (=> b!1095835 m!1015585))

(check-sat (not b!1095835) (not b!1095831) b_and!36661 (not b_next!22989) (not b!1095826) (not b!1095832) (not b!1095829) (not b_lambda!17677) (not start!96446) (not b!1095830) (not mapNonEmpty!42319) tp_is_empty!27039)
(check-sat b_and!36661 (not b_next!22989))
