; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!96422 () Bool)

(assert start!96422)

(declare-fun b_free!22965 () Bool)

(declare-fun b_next!22965 () Bool)

(assert (=> start!96422 (= b_free!22965 (not b_next!22965))))

(declare-fun tp!80823 () Bool)

(declare-fun b_and!36611 () Bool)

(assert (=> start!96422 (= tp!80823 b_and!36611)))

(declare-fun b!1095370 () Bool)

(declare-fun res!731104 () Bool)

(declare-fun e!625393 () Bool)

(assert (=> b!1095370 (=> (not res!731104) (not e!625393))))

(declare-fun k0!904 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1095370 (= res!731104 (validKeyInArray!0 k0!904))))

(declare-fun b!1095371 () Bool)

(declare-fun e!625390 () Bool)

(declare-fun tp_is_empty!27015 () Bool)

(assert (=> b!1095371 (= e!625390 tp_is_empty!27015)))

(declare-fun b!1095372 () Bool)

(declare-fun res!731109 () Bool)

(assert (=> b!1095372 (=> (not res!731109) (not e!625393))))

(declare-datatypes ((array!70898 0))(
  ( (array!70899 (arr!34117 (Array (_ BitVec 32) (_ BitVec 64))) (size!34654 (_ BitVec 32))) )
))
(declare-fun _keys!1070 () array!70898)

(declare-datatypes ((List!23962 0))(
  ( (Nil!23959) (Cons!23958 (h!25167 (_ BitVec 64)) (t!33980 List!23962)) )
))
(declare-fun arrayNoDuplicates!0 (array!70898 (_ BitVec 32) List!23962) Bool)

(assert (=> b!1095372 (= res!731109 (arrayNoDuplicates!0 _keys!1070 #b00000000000000000000000000000000 Nil!23959))))

(declare-fun b!1095373 () Bool)

(declare-fun e!625395 () Bool)

(assert (=> b!1095373 (= e!625395 tp_is_empty!27015)))

(declare-fun res!731111 () Bool)

(assert (=> start!96422 (=> (not res!731111) (not e!625393))))

(declare-fun mask!1414 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!96422 (= res!731111 (validMask!0 mask!1414))))

(assert (=> start!96422 e!625393))

(assert (=> start!96422 tp!80823))

(assert (=> start!96422 true))

(assert (=> start!96422 tp_is_empty!27015))

(declare-fun array_inv!26144 (array!70898) Bool)

(assert (=> start!96422 (array_inv!26144 _keys!1070)))

(declare-datatypes ((V!41147 0))(
  ( (V!41148 (val!13564 Int)) )
))
(declare-datatypes ((ValueCell!12798 0))(
  ( (ValueCellFull!12798 (v!16186 V!41147)) (EmptyCell!12798) )
))
(declare-datatypes ((array!70900 0))(
  ( (array!70901 (arr!34118 (Array (_ BitVec 32) ValueCell!12798)) (size!34655 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!70900)

(declare-fun e!625394 () Bool)

(declare-fun array_inv!26145 (array!70900) Bool)

(assert (=> start!96422 (and (array_inv!26145 _values!874) e!625394)))

(declare-fun b!1095374 () Bool)

(declare-fun res!731110 () Bool)

(assert (=> b!1095374 (=> (not res!731110) (not e!625393))))

(declare-fun i!650 () (_ BitVec 32))

(assert (=> b!1095374 (= res!731110 (and (bvsge i!650 #b00000000000000000000000000000000) (bvslt i!650 (size!34654 _keys!1070))))))

(declare-fun b!1095375 () Bool)

(declare-fun res!731107 () Bool)

(declare-fun e!625391 () Bool)

(assert (=> b!1095375 (=> (not res!731107) (not e!625391))))

(declare-fun lt!489804 () array!70898)

(assert (=> b!1095375 (= res!731107 (arrayNoDuplicates!0 lt!489804 #b00000000000000000000000000000000 Nil!23959))))

(declare-fun b!1095376 () Bool)

(declare-fun res!731112 () Bool)

(assert (=> b!1095376 (=> (not res!731112) (not e!625393))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!70898 (_ BitVec 32)) Bool)

(assert (=> b!1095376 (= res!731112 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1070 mask!1414))))

(declare-fun b!1095377 () Bool)

(declare-fun res!731108 () Bool)

(assert (=> b!1095377 (=> (not res!731108) (not e!625393))))

(assert (=> b!1095377 (= res!731108 (= (select (arr!34117 _keys!1070) i!650) k0!904))))

(declare-fun b!1095378 () Bool)

(declare-fun res!731105 () Bool)

(assert (=> b!1095378 (=> (not res!731105) (not e!625393))))

(declare-fun extraKeys!811 () (_ BitVec 32))

(assert (=> b!1095378 (= res!731105 (and (= (size!34655 _values!874) (bvadd #b00000000000000000000000000000001 mask!1414)) (= (size!34654 _keys!1070) (size!34655 _values!874)) (bvsge mask!1414 #b00000000000000000000000000000000) (bvsge extraKeys!811 #b00000000000000000000000000000000) (bvsle extraKeys!811 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!42283 () Bool)

(declare-fun mapRes!42283 () Bool)

(assert (=> mapIsEmpty!42283 mapRes!42283))

(declare-fun b!1095379 () Bool)

(assert (=> b!1095379 (= e!625394 (and e!625395 mapRes!42283))))

(declare-fun condMapEmpty!42283 () Bool)

(declare-fun mapDefault!42283 () ValueCell!12798)

(assert (=> b!1095379 (= condMapEmpty!42283 (= (arr!34118 _values!874) ((as const (Array (_ BitVec 32) ValueCell!12798)) mapDefault!42283)))))

(declare-fun mapNonEmpty!42283 () Bool)

(declare-fun tp!80822 () Bool)

(assert (=> mapNonEmpty!42283 (= mapRes!42283 (and tp!80822 e!625390))))

(declare-fun mapKey!42283 () (_ BitVec 32))

(declare-fun mapRest!42283 () (Array (_ BitVec 32) ValueCell!12798))

(declare-fun mapValue!42283 () ValueCell!12798)

(assert (=> mapNonEmpty!42283 (= (arr!34118 _values!874) (store mapRest!42283 mapKey!42283 mapValue!42283))))

(declare-fun b!1095380 () Bool)

(assert (=> b!1095380 (= e!625391 (not (bvsle #b00000000000000000000000000000000 (size!34654 _keys!1070))))))

(declare-fun defaultEntry!882 () Int)

(declare-fun minValue!831 () V!41147)

(declare-datatypes ((tuple2!17292 0))(
  ( (tuple2!17293 (_1!8656 (_ BitVec 64)) (_2!8656 V!41147)) )
))
(declare-datatypes ((List!23963 0))(
  ( (Nil!23960) (Cons!23959 (h!25168 tuple2!17292) (t!33981 List!23963)) )
))
(declare-datatypes ((ListLongMap!15273 0))(
  ( (ListLongMap!15274 (toList!7652 List!23963)) )
))
(declare-fun lt!489806 () ListLongMap!15273)

(declare-fun zeroValue!831 () V!41147)

(declare-fun getCurrentListMapNoExtraKeys!4139 (array!70898 array!70900 (_ BitVec 32) (_ BitVec 32) V!41147 V!41147 (_ BitVec 32) Int) ListLongMap!15273)

(declare-fun dynLambda!2270 (Int (_ BitVec 64)) V!41147)

(assert (=> b!1095380 (= lt!489806 (getCurrentListMapNoExtraKeys!4139 lt!489804 (array!70901 (store (arr!34118 _values!874) i!650 (ValueCellFull!12798 (dynLambda!2270 defaultEntry!882 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!34655 _values!874)) mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun lt!489803 () ListLongMap!15273)

(assert (=> b!1095380 (= lt!489803 (getCurrentListMapNoExtraKeys!4139 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun arrayContainsKey!0 (array!70898 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1095380 (arrayContainsKey!0 _keys!1070 k0!904 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!35977 0))(
  ( (Unit!35978) )
))
(declare-fun lt!489805 () Unit!35977)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!70898 (_ BitVec 64) (_ BitVec 32)) Unit!35977)

(assert (=> b!1095380 (= lt!489805 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1070 k0!904 i!650))))

(declare-fun b!1095381 () Bool)

(assert (=> b!1095381 (= e!625393 e!625391)))

(declare-fun res!731106 () Bool)

(assert (=> b!1095381 (=> (not res!731106) (not e!625391))))

(assert (=> b!1095381 (= res!731106 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!489804 mask!1414))))

(assert (=> b!1095381 (= lt!489804 (array!70899 (store (arr!34117 _keys!1070) i!650 #b1000000000000000000000000000000000000000000000000000000000000000) (size!34654 _keys!1070)))))

(assert (= (and start!96422 res!731111) b!1095378))

(assert (= (and b!1095378 res!731105) b!1095376))

(assert (= (and b!1095376 res!731112) b!1095372))

(assert (= (and b!1095372 res!731109) b!1095374))

(assert (= (and b!1095374 res!731110) b!1095370))

(assert (= (and b!1095370 res!731104) b!1095377))

(assert (= (and b!1095377 res!731108) b!1095381))

(assert (= (and b!1095381 res!731106) b!1095375))

(assert (= (and b!1095375 res!731107) b!1095380))

(assert (= (and b!1095379 condMapEmpty!42283) mapIsEmpty!42283))

(assert (= (and b!1095379 (not condMapEmpty!42283)) mapNonEmpty!42283))

(get-info :version)

(assert (= (and mapNonEmpty!42283 ((_ is ValueCellFull!12798) mapValue!42283)) b!1095371))

(assert (= (and b!1095379 ((_ is ValueCellFull!12798) mapDefault!42283)) b!1095373))

(assert (= start!96422 b!1095379))

(declare-fun b_lambda!17653 () Bool)

(assert (=> (not b_lambda!17653) (not b!1095380)))

(declare-fun t!33979 () Bool)

(declare-fun tb!7839 () Bool)

(assert (=> (and start!96422 (= defaultEntry!882 defaultEntry!882) t!33979) tb!7839))

(declare-fun result!16193 () Bool)

(assert (=> tb!7839 (= result!16193 tp_is_empty!27015)))

(assert (=> b!1095380 t!33979))

(declare-fun b_and!36613 () Bool)

(assert (= b_and!36611 (and (=> t!33979 result!16193) b_and!36613)))

(declare-fun m!1015145 () Bool)

(assert (=> b!1095381 m!1015145))

(declare-fun m!1015147 () Bool)

(assert (=> b!1095381 m!1015147))

(declare-fun m!1015149 () Bool)

(assert (=> b!1095370 m!1015149))

(declare-fun m!1015151 () Bool)

(assert (=> b!1095372 m!1015151))

(declare-fun m!1015153 () Bool)

(assert (=> b!1095380 m!1015153))

(declare-fun m!1015155 () Bool)

(assert (=> b!1095380 m!1015155))

(declare-fun m!1015157 () Bool)

(assert (=> b!1095380 m!1015157))

(declare-fun m!1015159 () Bool)

(assert (=> b!1095380 m!1015159))

(declare-fun m!1015161 () Bool)

(assert (=> b!1095380 m!1015161))

(declare-fun m!1015163 () Bool)

(assert (=> b!1095380 m!1015163))

(declare-fun m!1015165 () Bool)

(assert (=> b!1095377 m!1015165))

(declare-fun m!1015167 () Bool)

(assert (=> b!1095376 m!1015167))

(declare-fun m!1015169 () Bool)

(assert (=> start!96422 m!1015169))

(declare-fun m!1015171 () Bool)

(assert (=> start!96422 m!1015171))

(declare-fun m!1015173 () Bool)

(assert (=> start!96422 m!1015173))

(declare-fun m!1015175 () Bool)

(assert (=> b!1095375 m!1015175))

(declare-fun m!1015177 () Bool)

(assert (=> mapNonEmpty!42283 m!1015177))

(check-sat (not b!1095376) (not b!1095372) (not start!96422) (not mapNonEmpty!42283) (not b_next!22965) tp_is_empty!27015 (not b!1095375) (not b!1095370) (not b!1095380) b_and!36613 (not b!1095381) (not b_lambda!17653))
(check-sat b_and!36613 (not b_next!22965))
