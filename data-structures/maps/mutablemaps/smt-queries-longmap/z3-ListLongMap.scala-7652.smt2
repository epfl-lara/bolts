; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!96270 () Bool)

(assert start!96270)

(declare-fun b_free!22887 () Bool)

(declare-fun b_next!22887 () Bool)

(assert (=> start!96270 (= b_free!22887 (not b_next!22887))))

(declare-fun tp!80510 () Bool)

(declare-fun b_and!36467 () Bool)

(assert (=> start!96270 (= tp!80510 b_and!36467)))

(declare-fun mapIsEmpty!42088 () Bool)

(declare-fun mapRes!42088 () Bool)

(assert (=> mapIsEmpty!42088 mapRes!42088))

(declare-fun b!1093077 () Bool)

(declare-fun res!729498 () Bool)

(declare-fun e!624214 () Bool)

(assert (=> b!1093077 (=> (not res!729498) (not e!624214))))

(declare-datatypes ((array!70652 0))(
  ( (array!70653 (arr!33996 (Array (_ BitVec 32) (_ BitVec 64))) (size!34533 (_ BitVec 32))) )
))
(declare-fun _keys!1070 () array!70652)

(declare-fun k0!904 () (_ BitVec 64))

(declare-fun i!650 () (_ BitVec 32))

(assert (=> b!1093077 (= res!729498 (= (select (arr!33996 _keys!1070) i!650) k0!904))))

(declare-fun b!1093078 () Bool)

(declare-fun e!624213 () Bool)

(assert (=> b!1093078 (= e!624213 (not true))))

(declare-fun defaultEntry!882 () Int)

(declare-datatypes ((V!40979 0))(
  ( (V!40980 (val!13501 Int)) )
))
(declare-fun minValue!831 () V!40979)

(declare-fun mask!1414 () (_ BitVec 32))

(declare-fun extraKeys!811 () (_ BitVec 32))

(declare-datatypes ((tuple2!17244 0))(
  ( (tuple2!17245 (_1!8632 (_ BitVec 64)) (_2!8632 V!40979)) )
))
(declare-datatypes ((List!23887 0))(
  ( (Nil!23884) (Cons!23883 (h!25092 tuple2!17244) (t!33839 List!23887)) )
))
(declare-datatypes ((ListLongMap!15225 0))(
  ( (ListLongMap!15226 (toList!7628 List!23887)) )
))
(declare-fun lt!488750 () ListLongMap!15225)

(declare-fun zeroValue!831 () V!40979)

(declare-datatypes ((ValueCell!12735 0))(
  ( (ValueCellFull!12735 (v!16123 V!40979)) (EmptyCell!12735) )
))
(declare-datatypes ((array!70654 0))(
  ( (array!70655 (arr!33997 (Array (_ BitVec 32) ValueCell!12735)) (size!34534 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!70654)

(declare-fun getCurrentListMap!4363 (array!70652 array!70654 (_ BitVec 32) (_ BitVec 32) V!40979 V!40979 (_ BitVec 32) Int) ListLongMap!15225)

(assert (=> b!1093078 (= lt!488750 (getCurrentListMap!4363 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun lt!488747 () array!70652)

(declare-fun lt!488745 () ListLongMap!15225)

(declare-fun lt!488743 () array!70654)

(assert (=> b!1093078 (= lt!488745 (getCurrentListMap!4363 lt!488747 lt!488743 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun lt!488746 () ListLongMap!15225)

(declare-fun lt!488748 () ListLongMap!15225)

(assert (=> b!1093078 (and (= lt!488746 lt!488748) (= lt!488748 lt!488746))))

(declare-fun lt!488744 () ListLongMap!15225)

(declare-fun -!904 (ListLongMap!15225 (_ BitVec 64)) ListLongMap!15225)

(assert (=> b!1093078 (= lt!488748 (-!904 lt!488744 k0!904))))

(declare-datatypes ((Unit!35923 0))(
  ( (Unit!35924) )
))
(declare-fun lt!488742 () Unit!35923)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!169 (array!70652 array!70654 (_ BitVec 32) (_ BitVec 32) V!40979 V!40979 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!35923)

(assert (=> b!1093078 (= lt!488742 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!169 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 i!650 k0!904 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun getCurrentListMapNoExtraKeys!4115 (array!70652 array!70654 (_ BitVec 32) (_ BitVec 32) V!40979 V!40979 (_ BitVec 32) Int) ListLongMap!15225)

(assert (=> b!1093078 (= lt!488746 (getCurrentListMapNoExtraKeys!4115 lt!488747 lt!488743 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun dynLambda!2251 (Int (_ BitVec 64)) V!40979)

(assert (=> b!1093078 (= lt!488743 (array!70655 (store (arr!33997 _values!874) i!650 (ValueCellFull!12735 (dynLambda!2251 defaultEntry!882 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!34534 _values!874)))))

(assert (=> b!1093078 (= lt!488744 (getCurrentListMapNoExtraKeys!4115 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun arrayContainsKey!0 (array!70652 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1093078 (arrayContainsKey!0 _keys!1070 k0!904 #b00000000000000000000000000000000)))

(declare-fun lt!488749 () Unit!35923)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!70652 (_ BitVec 64) (_ BitVec 32)) Unit!35923)

(assert (=> b!1093078 (= lt!488749 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1070 k0!904 i!650))))

(declare-fun res!729493 () Bool)

(assert (=> start!96270 (=> (not res!729493) (not e!624214))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!96270 (= res!729493 (validMask!0 mask!1414))))

(assert (=> start!96270 e!624214))

(assert (=> start!96270 tp!80510))

(assert (=> start!96270 true))

(declare-fun tp_is_empty!26889 () Bool)

(assert (=> start!96270 tp_is_empty!26889))

(declare-fun array_inv!26056 (array!70652) Bool)

(assert (=> start!96270 (array_inv!26056 _keys!1070)))

(declare-fun e!624209 () Bool)

(declare-fun array_inv!26057 (array!70654) Bool)

(assert (=> start!96270 (and (array_inv!26057 _values!874) e!624209)))

(declare-fun b!1093079 () Bool)

(declare-fun e!624211 () Bool)

(assert (=> b!1093079 (= e!624211 tp_is_empty!26889)))

(declare-fun b!1093080 () Bool)

(assert (=> b!1093080 (= e!624214 e!624213)))

(declare-fun res!729496 () Bool)

(assert (=> b!1093080 (=> (not res!729496) (not e!624213))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!70652 (_ BitVec 32)) Bool)

(assert (=> b!1093080 (= res!729496 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!488747 mask!1414))))

(assert (=> b!1093080 (= lt!488747 (array!70653 (store (arr!33996 _keys!1070) i!650 #b1000000000000000000000000000000000000000000000000000000000000000) (size!34533 _keys!1070)))))

(declare-fun b!1093081 () Bool)

(assert (=> b!1093081 (= e!624209 (and e!624211 mapRes!42088))))

(declare-fun condMapEmpty!42088 () Bool)

(declare-fun mapDefault!42088 () ValueCell!12735)

(assert (=> b!1093081 (= condMapEmpty!42088 (= (arr!33997 _values!874) ((as const (Array (_ BitVec 32) ValueCell!12735)) mapDefault!42088)))))

(declare-fun b!1093082 () Bool)

(declare-fun res!729492 () Bool)

(assert (=> b!1093082 (=> (not res!729492) (not e!624214))))

(declare-datatypes ((List!23888 0))(
  ( (Nil!23885) (Cons!23884 (h!25093 (_ BitVec 64)) (t!33840 List!23888)) )
))
(declare-fun arrayNoDuplicates!0 (array!70652 (_ BitVec 32) List!23888) Bool)

(assert (=> b!1093082 (= res!729492 (arrayNoDuplicates!0 _keys!1070 #b00000000000000000000000000000000 Nil!23885))))

(declare-fun b!1093083 () Bool)

(declare-fun res!729500 () Bool)

(assert (=> b!1093083 (=> (not res!729500) (not e!624214))))

(assert (=> b!1093083 (= res!729500 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1070 mask!1414))))

(declare-fun b!1093084 () Bool)

(declare-fun res!729494 () Bool)

(assert (=> b!1093084 (=> (not res!729494) (not e!624214))))

(assert (=> b!1093084 (= res!729494 (and (= (size!34534 _values!874) (bvadd #b00000000000000000000000000000001 mask!1414)) (= (size!34533 _keys!1070) (size!34534 _values!874)) (bvsge mask!1414 #b00000000000000000000000000000000) (bvsge extraKeys!811 #b00000000000000000000000000000000) (bvsle extraKeys!811 #b00000000000000000000000000000011)))))

(declare-fun b!1093085 () Bool)

(declare-fun res!729499 () Bool)

(assert (=> b!1093085 (=> (not res!729499) (not e!624214))))

(assert (=> b!1093085 (= res!729499 (and (bvsge i!650 #b00000000000000000000000000000000) (bvslt i!650 (size!34533 _keys!1070))))))

(declare-fun mapNonEmpty!42088 () Bool)

(declare-fun tp!80511 () Bool)

(declare-fun e!624212 () Bool)

(assert (=> mapNonEmpty!42088 (= mapRes!42088 (and tp!80511 e!624212))))

(declare-fun mapValue!42088 () ValueCell!12735)

(declare-fun mapKey!42088 () (_ BitVec 32))

(declare-fun mapRest!42088 () (Array (_ BitVec 32) ValueCell!12735))

(assert (=> mapNonEmpty!42088 (= (arr!33997 _values!874) (store mapRest!42088 mapKey!42088 mapValue!42088))))

(declare-fun b!1093086 () Bool)

(assert (=> b!1093086 (= e!624212 tp_is_empty!26889)))

(declare-fun b!1093087 () Bool)

(declare-fun res!729495 () Bool)

(assert (=> b!1093087 (=> (not res!729495) (not e!624213))))

(assert (=> b!1093087 (= res!729495 (arrayNoDuplicates!0 lt!488747 #b00000000000000000000000000000000 Nil!23885))))

(declare-fun b!1093088 () Bool)

(declare-fun res!729497 () Bool)

(assert (=> b!1093088 (=> (not res!729497) (not e!624214))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1093088 (= res!729497 (validKeyInArray!0 k0!904))))

(assert (= (and start!96270 res!729493) b!1093084))

(assert (= (and b!1093084 res!729494) b!1093083))

(assert (= (and b!1093083 res!729500) b!1093082))

(assert (= (and b!1093082 res!729492) b!1093085))

(assert (= (and b!1093085 res!729499) b!1093088))

(assert (= (and b!1093088 res!729497) b!1093077))

(assert (= (and b!1093077 res!729498) b!1093080))

(assert (= (and b!1093080 res!729496) b!1093087))

(assert (= (and b!1093087 res!729495) b!1093078))

(assert (= (and b!1093081 condMapEmpty!42088) mapIsEmpty!42088))

(assert (= (and b!1093081 (not condMapEmpty!42088)) mapNonEmpty!42088))

(get-info :version)

(assert (= (and mapNonEmpty!42088 ((_ is ValueCellFull!12735) mapValue!42088)) b!1093086))

(assert (= (and b!1093081 ((_ is ValueCellFull!12735) mapDefault!42088)) b!1093079))

(assert (= start!96270 b!1093081))

(declare-fun b_lambda!17587 () Bool)

(assert (=> (not b_lambda!17587) (not b!1093078)))

(declare-fun t!33838 () Bool)

(declare-fun tb!7773 () Bool)

(assert (=> (and start!96270 (= defaultEntry!882 defaultEntry!882) t!33838) tb!7773))

(declare-fun result!16057 () Bool)

(assert (=> tb!7773 (= result!16057 tp_is_empty!26889)))

(assert (=> b!1093078 t!33838))

(declare-fun b_and!36469 () Bool)

(assert (= b_and!36467 (and (=> t!33838 result!16057) b_and!36469)))

(declare-fun m!1013049 () Bool)

(assert (=> b!1093083 m!1013049))

(declare-fun m!1013051 () Bool)

(assert (=> b!1093088 m!1013051))

(declare-fun m!1013053 () Bool)

(assert (=> b!1093082 m!1013053))

(declare-fun m!1013055 () Bool)

(assert (=> b!1093078 m!1013055))

(declare-fun m!1013057 () Bool)

(assert (=> b!1093078 m!1013057))

(declare-fun m!1013059 () Bool)

(assert (=> b!1093078 m!1013059))

(declare-fun m!1013061 () Bool)

(assert (=> b!1093078 m!1013061))

(declare-fun m!1013063 () Bool)

(assert (=> b!1093078 m!1013063))

(declare-fun m!1013065 () Bool)

(assert (=> b!1093078 m!1013065))

(declare-fun m!1013067 () Bool)

(assert (=> b!1093078 m!1013067))

(declare-fun m!1013069 () Bool)

(assert (=> b!1093078 m!1013069))

(declare-fun m!1013071 () Bool)

(assert (=> b!1093078 m!1013071))

(declare-fun m!1013073 () Bool)

(assert (=> b!1093078 m!1013073))

(declare-fun m!1013075 () Bool)

(assert (=> b!1093080 m!1013075))

(declare-fun m!1013077 () Bool)

(assert (=> b!1093080 m!1013077))

(declare-fun m!1013079 () Bool)

(assert (=> mapNonEmpty!42088 m!1013079))

(declare-fun m!1013081 () Bool)

(assert (=> b!1093087 m!1013081))

(declare-fun m!1013083 () Bool)

(assert (=> start!96270 m!1013083))

(declare-fun m!1013085 () Bool)

(assert (=> start!96270 m!1013085))

(declare-fun m!1013087 () Bool)

(assert (=> start!96270 m!1013087))

(declare-fun m!1013089 () Bool)

(assert (=> b!1093077 m!1013089))

(check-sat b_and!36469 (not b_lambda!17587) tp_is_empty!26889 (not b!1093088) (not b!1093080) (not start!96270) (not b!1093082) (not b!1093078) (not b!1093087) (not b_next!22887) (not mapNonEmpty!42088) (not b!1093083))
(check-sat b_and!36469 (not b_next!22887))
