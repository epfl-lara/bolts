; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!96318 () Bool)

(assert start!96318)

(declare-fun b_free!22935 () Bool)

(declare-fun b_next!22935 () Bool)

(assert (=> start!96318 (= b_free!22935 (not b_next!22935))))

(declare-fun tp!80654 () Bool)

(declare-fun b_and!36563 () Bool)

(assert (=> start!96318 (= tp!80654 b_and!36563)))

(declare-fun b!1093989 () Bool)

(declare-fun res!730146 () Bool)

(declare-fun e!624641 () Bool)

(assert (=> b!1093989 (=> (not res!730146) (not e!624641))))

(declare-fun k0!904 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1093989 (= res!730146 (validKeyInArray!0 k0!904))))

(declare-fun mapIsEmpty!42160 () Bool)

(declare-fun mapRes!42160 () Bool)

(assert (=> mapIsEmpty!42160 mapRes!42160))

(declare-fun b!1093990 () Bool)

(declare-fun res!730147 () Bool)

(assert (=> b!1093990 (=> (not res!730147) (not e!624641))))

(declare-datatypes ((array!70746 0))(
  ( (array!70747 (arr!34043 (Array (_ BitVec 32) (_ BitVec 64))) (size!34580 (_ BitVec 32))) )
))
(declare-fun _keys!1070 () array!70746)

(declare-fun mask!1414 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!70746 (_ BitVec 32)) Bool)

(assert (=> b!1093990 (= res!730147 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1070 mask!1414))))

(declare-fun b!1093992 () Bool)

(declare-fun e!624643 () Bool)

(assert (=> b!1093992 (= e!624643 (not true))))

(declare-datatypes ((V!41043 0))(
  ( (V!41044 (val!13525 Int)) )
))
(declare-datatypes ((tuple2!17274 0))(
  ( (tuple2!17275 (_1!8647 (_ BitVec 64)) (_2!8647 V!41043)) )
))
(declare-datatypes ((List!23922 0))(
  ( (Nil!23919) (Cons!23918 (h!25127 tuple2!17274) (t!33922 List!23922)) )
))
(declare-datatypes ((ListLongMap!15255 0))(
  ( (ListLongMap!15256 (toList!7643 List!23922)) )
))
(declare-fun lt!489400 () ListLongMap!15255)

(declare-fun defaultEntry!882 () Int)

(declare-fun minValue!831 () V!41043)

(declare-fun extraKeys!811 () (_ BitVec 32))

(declare-fun zeroValue!831 () V!41043)

(declare-datatypes ((ValueCell!12759 0))(
  ( (ValueCellFull!12759 (v!16147 V!41043)) (EmptyCell!12759) )
))
(declare-datatypes ((array!70748 0))(
  ( (array!70749 (arr!34044 (Array (_ BitVec 32) ValueCell!12759)) (size!34581 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!70748)

(declare-fun getCurrentListMap!4378 (array!70746 array!70748 (_ BitVec 32) (_ BitVec 32) V!41043 V!41043 (_ BitVec 32) Int) ListLongMap!15255)

(assert (=> b!1093992 (= lt!489400 (getCurrentListMap!4378 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun lt!489406 () array!70748)

(declare-fun lt!489402 () array!70746)

(declare-fun lt!489404 () ListLongMap!15255)

(assert (=> b!1093992 (= lt!489404 (getCurrentListMap!4378 lt!489402 lt!489406 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun lt!489399 () ListLongMap!15255)

(declare-fun lt!489407 () ListLongMap!15255)

(assert (=> b!1093992 (and (= lt!489399 lt!489407) (= lt!489407 lt!489399))))

(declare-fun lt!489405 () ListLongMap!15255)

(declare-fun -!919 (ListLongMap!15255 (_ BitVec 64)) ListLongMap!15255)

(assert (=> b!1093992 (= lt!489407 (-!919 lt!489405 k0!904))))

(declare-datatypes ((Unit!35953 0))(
  ( (Unit!35954) )
))
(declare-fun lt!489401 () Unit!35953)

(declare-fun i!650 () (_ BitVec 32))

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!184 (array!70746 array!70748 (_ BitVec 32) (_ BitVec 32) V!41043 V!41043 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!35953)

(assert (=> b!1093992 (= lt!489401 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!184 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 i!650 k0!904 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun getCurrentListMapNoExtraKeys!4130 (array!70746 array!70748 (_ BitVec 32) (_ BitVec 32) V!41043 V!41043 (_ BitVec 32) Int) ListLongMap!15255)

(assert (=> b!1093992 (= lt!489399 (getCurrentListMapNoExtraKeys!4130 lt!489402 lt!489406 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun dynLambda!2266 (Int (_ BitVec 64)) V!41043)

(assert (=> b!1093992 (= lt!489406 (array!70749 (store (arr!34044 _values!874) i!650 (ValueCellFull!12759 (dynLambda!2266 defaultEntry!882 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!34581 _values!874)))))

(assert (=> b!1093992 (= lt!489405 (getCurrentListMapNoExtraKeys!4130 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun arrayContainsKey!0 (array!70746 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1093992 (arrayContainsKey!0 _keys!1070 k0!904 #b00000000000000000000000000000000)))

(declare-fun lt!489403 () Unit!35953)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!70746 (_ BitVec 64) (_ BitVec 32)) Unit!35953)

(assert (=> b!1093992 (= lt!489403 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1070 k0!904 i!650))))

(declare-fun b!1093993 () Bool)

(declare-fun res!730148 () Bool)

(assert (=> b!1093993 (=> (not res!730148) (not e!624641))))

(declare-datatypes ((List!23923 0))(
  ( (Nil!23920) (Cons!23919 (h!25128 (_ BitVec 64)) (t!33923 List!23923)) )
))
(declare-fun arrayNoDuplicates!0 (array!70746 (_ BitVec 32) List!23923) Bool)

(assert (=> b!1093993 (= res!730148 (arrayNoDuplicates!0 _keys!1070 #b00000000000000000000000000000000 Nil!23920))))

(declare-fun b!1093994 () Bool)

(declare-fun res!730142 () Bool)

(assert (=> b!1093994 (=> (not res!730142) (not e!624641))))

(assert (=> b!1093994 (= res!730142 (and (= (size!34581 _values!874) (bvadd #b00000000000000000000000000000001 mask!1414)) (= (size!34580 _keys!1070) (size!34581 _values!874)) (bvsge mask!1414 #b00000000000000000000000000000000) (bvsge extraKeys!811 #b00000000000000000000000000000000) (bvsle extraKeys!811 #b00000000000000000000000000000011)))))

(declare-fun b!1093995 () Bool)

(declare-fun res!730144 () Bool)

(assert (=> b!1093995 (=> (not res!730144) (not e!624641))))

(assert (=> b!1093995 (= res!730144 (and (bvsge i!650 #b00000000000000000000000000000000) (bvslt i!650 (size!34580 _keys!1070))))))

(declare-fun b!1093991 () Bool)

(declare-fun res!730141 () Bool)

(assert (=> b!1093991 (=> (not res!730141) (not e!624641))))

(assert (=> b!1093991 (= res!730141 (= (select (arr!34043 _keys!1070) i!650) k0!904))))

(declare-fun res!730140 () Bool)

(assert (=> start!96318 (=> (not res!730140) (not e!624641))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!96318 (= res!730140 (validMask!0 mask!1414))))

(assert (=> start!96318 e!624641))

(assert (=> start!96318 tp!80654))

(assert (=> start!96318 true))

(declare-fun tp_is_empty!26937 () Bool)

(assert (=> start!96318 tp_is_empty!26937))

(declare-fun array_inv!26088 (array!70746) Bool)

(assert (=> start!96318 (array_inv!26088 _keys!1070)))

(declare-fun e!624642 () Bool)

(declare-fun array_inv!26089 (array!70748) Bool)

(assert (=> start!96318 (and (array_inv!26089 _values!874) e!624642)))

(declare-fun b!1093996 () Bool)

(declare-fun e!624645 () Bool)

(assert (=> b!1093996 (= e!624645 tp_is_empty!26937)))

(declare-fun mapNonEmpty!42160 () Bool)

(declare-fun tp!80655 () Bool)

(assert (=> mapNonEmpty!42160 (= mapRes!42160 (and tp!80655 e!624645))))

(declare-fun mapValue!42160 () ValueCell!12759)

(declare-fun mapRest!42160 () (Array (_ BitVec 32) ValueCell!12759))

(declare-fun mapKey!42160 () (_ BitVec 32))

(assert (=> mapNonEmpty!42160 (= (arr!34044 _values!874) (store mapRest!42160 mapKey!42160 mapValue!42160))))

(declare-fun b!1093997 () Bool)

(declare-fun res!730143 () Bool)

(assert (=> b!1093997 (=> (not res!730143) (not e!624643))))

(assert (=> b!1093997 (= res!730143 (arrayNoDuplicates!0 lt!489402 #b00000000000000000000000000000000 Nil!23920))))

(declare-fun b!1093998 () Bool)

(declare-fun e!624646 () Bool)

(assert (=> b!1093998 (= e!624642 (and e!624646 mapRes!42160))))

(declare-fun condMapEmpty!42160 () Bool)

(declare-fun mapDefault!42160 () ValueCell!12759)

(assert (=> b!1093998 (= condMapEmpty!42160 (= (arr!34044 _values!874) ((as const (Array (_ BitVec 32) ValueCell!12759)) mapDefault!42160)))))

(declare-fun b!1093999 () Bool)

(assert (=> b!1093999 (= e!624646 tp_is_empty!26937)))

(declare-fun b!1094000 () Bool)

(assert (=> b!1094000 (= e!624641 e!624643)))

(declare-fun res!730145 () Bool)

(assert (=> b!1094000 (=> (not res!730145) (not e!624643))))

(assert (=> b!1094000 (= res!730145 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!489402 mask!1414))))

(assert (=> b!1094000 (= lt!489402 (array!70747 (store (arr!34043 _keys!1070) i!650 #b1000000000000000000000000000000000000000000000000000000000000000) (size!34580 _keys!1070)))))

(assert (= (and start!96318 res!730140) b!1093994))

(assert (= (and b!1093994 res!730142) b!1093990))

(assert (= (and b!1093990 res!730147) b!1093993))

(assert (= (and b!1093993 res!730148) b!1093995))

(assert (= (and b!1093995 res!730144) b!1093989))

(assert (= (and b!1093989 res!730146) b!1093991))

(assert (= (and b!1093991 res!730141) b!1094000))

(assert (= (and b!1094000 res!730145) b!1093997))

(assert (= (and b!1093997 res!730143) b!1093992))

(assert (= (and b!1093998 condMapEmpty!42160) mapIsEmpty!42160))

(assert (= (and b!1093998 (not condMapEmpty!42160)) mapNonEmpty!42160))

(get-info :version)

(assert (= (and mapNonEmpty!42160 ((_ is ValueCellFull!12759) mapValue!42160)) b!1093996))

(assert (= (and b!1093998 ((_ is ValueCellFull!12759) mapDefault!42160)) b!1093999))

(assert (= start!96318 b!1093998))

(declare-fun b_lambda!17635 () Bool)

(assert (=> (not b_lambda!17635) (not b!1093992)))

(declare-fun t!33921 () Bool)

(declare-fun tb!7821 () Bool)

(assert (=> (and start!96318 (= defaultEntry!882 defaultEntry!882) t!33921) tb!7821))

(declare-fun result!16153 () Bool)

(assert (=> tb!7821 (= result!16153 tp_is_empty!26937)))

(assert (=> b!1093992 t!33921))

(declare-fun b_and!36565 () Bool)

(assert (= b_and!36563 (and (=> t!33921 result!16153) b_and!36565)))

(declare-fun m!1014057 () Bool)

(assert (=> b!1094000 m!1014057))

(declare-fun m!1014059 () Bool)

(assert (=> b!1094000 m!1014059))

(declare-fun m!1014061 () Bool)

(assert (=> b!1093997 m!1014061))

(declare-fun m!1014063 () Bool)

(assert (=> mapNonEmpty!42160 m!1014063))

(declare-fun m!1014065 () Bool)

(assert (=> b!1093990 m!1014065))

(declare-fun m!1014067 () Bool)

(assert (=> b!1093992 m!1014067))

(declare-fun m!1014069 () Bool)

(assert (=> b!1093992 m!1014069))

(declare-fun m!1014071 () Bool)

(assert (=> b!1093992 m!1014071))

(declare-fun m!1014073 () Bool)

(assert (=> b!1093992 m!1014073))

(declare-fun m!1014075 () Bool)

(assert (=> b!1093992 m!1014075))

(declare-fun m!1014077 () Bool)

(assert (=> b!1093992 m!1014077))

(declare-fun m!1014079 () Bool)

(assert (=> b!1093992 m!1014079))

(declare-fun m!1014081 () Bool)

(assert (=> b!1093992 m!1014081))

(declare-fun m!1014083 () Bool)

(assert (=> b!1093992 m!1014083))

(declare-fun m!1014085 () Bool)

(assert (=> b!1093992 m!1014085))

(declare-fun m!1014087 () Bool)

(assert (=> start!96318 m!1014087))

(declare-fun m!1014089 () Bool)

(assert (=> start!96318 m!1014089))

(declare-fun m!1014091 () Bool)

(assert (=> start!96318 m!1014091))

(declare-fun m!1014093 () Bool)

(assert (=> b!1093993 m!1014093))

(declare-fun m!1014095 () Bool)

(assert (=> b!1093989 m!1014095))

(declare-fun m!1014097 () Bool)

(assert (=> b!1093991 m!1014097))

(check-sat (not b_lambda!17635) (not b!1093992) b_and!36565 (not mapNonEmpty!42160) (not b!1093989) (not b!1093993) (not b_next!22935) (not b!1093990) (not start!96318) tp_is_empty!26937 (not b!1093997) (not b!1094000))
(check-sat b_and!36565 (not b_next!22935))
