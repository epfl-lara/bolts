; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!96294 () Bool)

(assert start!96294)

(declare-fun b_free!22911 () Bool)

(declare-fun b_next!22911 () Bool)

(assert (=> start!96294 (= b_free!22911 (not b_next!22911))))

(declare-fun tp!80583 () Bool)

(declare-fun b_and!36515 () Bool)

(assert (=> start!96294 (= tp!80583 b_and!36515)))

(declare-fun b!1093533 () Bool)

(declare-fun e!624426 () Bool)

(declare-fun e!624428 () Bool)

(assert (=> b!1093533 (= e!624426 e!624428)))

(declare-fun res!729824 () Bool)

(assert (=> b!1093533 (=> (not res!729824) (not e!624428))))

(declare-datatypes ((array!70700 0))(
  ( (array!70701 (arr!34020 (Array (_ BitVec 32) (_ BitVec 64))) (size!34557 (_ BitVec 32))) )
))
(declare-fun lt!489079 () array!70700)

(declare-fun mask!1414 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!70700 (_ BitVec 32)) Bool)

(assert (=> b!1093533 (= res!729824 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!489079 mask!1414))))

(declare-fun _keys!1070 () array!70700)

(declare-fun i!650 () (_ BitVec 32))

(assert (=> b!1093533 (= lt!489079 (array!70701 (store (arr!34020 _keys!1070) i!650 #b1000000000000000000000000000000000000000000000000000000000000000) (size!34557 _keys!1070)))))

(declare-fun b!1093534 () Bool)

(declare-fun e!624429 () Bool)

(declare-fun tp_is_empty!26913 () Bool)

(assert (=> b!1093534 (= e!624429 tp_is_empty!26913)))

(declare-fun b!1093535 () Bool)

(declare-fun e!624427 () Bool)

(assert (=> b!1093535 (= e!624427 tp_is_empty!26913)))

(declare-fun b!1093536 () Bool)

(declare-fun res!729820 () Bool)

(assert (=> b!1093536 (=> (not res!729820) (not e!624426))))

(declare-datatypes ((List!23905 0))(
  ( (Nil!23902) (Cons!23901 (h!25110 (_ BitVec 64)) (t!33881 List!23905)) )
))
(declare-fun arrayNoDuplicates!0 (array!70700 (_ BitVec 32) List!23905) Bool)

(assert (=> b!1093536 (= res!729820 (arrayNoDuplicates!0 _keys!1070 #b00000000000000000000000000000000 Nil!23902))))

(declare-fun b!1093537 () Bool)

(declare-fun res!729822 () Bool)

(assert (=> b!1093537 (=> (not res!729822) (not e!624426))))

(declare-fun k0!904 () (_ BitVec 64))

(assert (=> b!1093537 (= res!729822 (= (select (arr!34020 _keys!1070) i!650) k0!904))))

(declare-fun b!1093538 () Bool)

(declare-fun res!729818 () Bool)

(assert (=> b!1093538 (=> (not res!729818) (not e!624428))))

(assert (=> b!1093538 (= res!729818 (arrayNoDuplicates!0 lt!489079 #b00000000000000000000000000000000 Nil!23902))))

(declare-fun b!1093539 () Bool)

(assert (=> b!1093539 (= e!624428 (not true))))

(declare-fun defaultEntry!882 () Int)

(declare-datatypes ((V!41011 0))(
  ( (V!41012 (val!13513 Int)) )
))
(declare-fun minValue!831 () V!41011)

(declare-fun extraKeys!811 () (_ BitVec 32))

(declare-datatypes ((tuple2!17258 0))(
  ( (tuple2!17259 (_1!8639 (_ BitVec 64)) (_2!8639 V!41011)) )
))
(declare-datatypes ((List!23906 0))(
  ( (Nil!23903) (Cons!23902 (h!25111 tuple2!17258) (t!33882 List!23906)) )
))
(declare-datatypes ((ListLongMap!15239 0))(
  ( (ListLongMap!15240 (toList!7635 List!23906)) )
))
(declare-fun lt!489083 () ListLongMap!15239)

(declare-fun zeroValue!831 () V!41011)

(declare-datatypes ((ValueCell!12747 0))(
  ( (ValueCellFull!12747 (v!16135 V!41011)) (EmptyCell!12747) )
))
(declare-datatypes ((array!70702 0))(
  ( (array!70703 (arr!34021 (Array (_ BitVec 32) ValueCell!12747)) (size!34558 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!70702)

(declare-fun getCurrentListMap!4370 (array!70700 array!70702 (_ BitVec 32) (_ BitVec 32) V!41011 V!41011 (_ BitVec 32) Int) ListLongMap!15239)

(assert (=> b!1093539 (= lt!489083 (getCurrentListMap!4370 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun lt!489082 () array!70702)

(declare-fun lt!489080 () ListLongMap!15239)

(assert (=> b!1093539 (= lt!489080 (getCurrentListMap!4370 lt!489079 lt!489082 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun lt!489078 () ListLongMap!15239)

(declare-fun lt!489075 () ListLongMap!15239)

(assert (=> b!1093539 (and (= lt!489078 lt!489075) (= lt!489075 lt!489078))))

(declare-fun lt!489081 () ListLongMap!15239)

(declare-fun -!911 (ListLongMap!15239 (_ BitVec 64)) ListLongMap!15239)

(assert (=> b!1093539 (= lt!489075 (-!911 lt!489081 k0!904))))

(declare-datatypes ((Unit!35937 0))(
  ( (Unit!35938) )
))
(declare-fun lt!489076 () Unit!35937)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!176 (array!70700 array!70702 (_ BitVec 32) (_ BitVec 32) V!41011 V!41011 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!35937)

(assert (=> b!1093539 (= lt!489076 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!176 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 i!650 k0!904 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun getCurrentListMapNoExtraKeys!4122 (array!70700 array!70702 (_ BitVec 32) (_ BitVec 32) V!41011 V!41011 (_ BitVec 32) Int) ListLongMap!15239)

(assert (=> b!1093539 (= lt!489078 (getCurrentListMapNoExtraKeys!4122 lt!489079 lt!489082 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun dynLambda!2258 (Int (_ BitVec 64)) V!41011)

(assert (=> b!1093539 (= lt!489082 (array!70703 (store (arr!34021 _values!874) i!650 (ValueCellFull!12747 (dynLambda!2258 defaultEntry!882 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!34558 _values!874)))))

(assert (=> b!1093539 (= lt!489081 (getCurrentListMapNoExtraKeys!4122 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun arrayContainsKey!0 (array!70700 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1093539 (arrayContainsKey!0 _keys!1070 k0!904 #b00000000000000000000000000000000)))

(declare-fun lt!489077 () Unit!35937)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!70700 (_ BitVec 64) (_ BitVec 32)) Unit!35937)

(assert (=> b!1093539 (= lt!489077 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1070 k0!904 i!650))))

(declare-fun b!1093540 () Bool)

(declare-fun res!729816 () Bool)

(assert (=> b!1093540 (=> (not res!729816) (not e!624426))))

(assert (=> b!1093540 (= res!729816 (and (= (size!34558 _values!874) (bvadd #b00000000000000000000000000000001 mask!1414)) (= (size!34557 _keys!1070) (size!34558 _values!874)) (bvsge mask!1414 #b00000000000000000000000000000000) (bvsge extraKeys!811 #b00000000000000000000000000000000) (bvsle extraKeys!811 #b00000000000000000000000000000011)))))

(declare-fun b!1093541 () Bool)

(declare-fun res!729817 () Bool)

(assert (=> b!1093541 (=> (not res!729817) (not e!624426))))

(assert (=> b!1093541 (= res!729817 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1070 mask!1414))))

(declare-fun b!1093542 () Bool)

(declare-fun res!729819 () Bool)

(assert (=> b!1093542 (=> (not res!729819) (not e!624426))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1093542 (= res!729819 (validKeyInArray!0 k0!904))))

(declare-fun res!729821 () Bool)

(assert (=> start!96294 (=> (not res!729821) (not e!624426))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!96294 (= res!729821 (validMask!0 mask!1414))))

(assert (=> start!96294 e!624426))

(assert (=> start!96294 tp!80583))

(assert (=> start!96294 true))

(assert (=> start!96294 tp_is_empty!26913))

(declare-fun array_inv!26074 (array!70700) Bool)

(assert (=> start!96294 (array_inv!26074 _keys!1070)))

(declare-fun e!624430 () Bool)

(declare-fun array_inv!26075 (array!70702) Bool)

(assert (=> start!96294 (and (array_inv!26075 _values!874) e!624430)))

(declare-fun mapIsEmpty!42124 () Bool)

(declare-fun mapRes!42124 () Bool)

(assert (=> mapIsEmpty!42124 mapRes!42124))

(declare-fun mapNonEmpty!42124 () Bool)

(declare-fun tp!80582 () Bool)

(assert (=> mapNonEmpty!42124 (= mapRes!42124 (and tp!80582 e!624429))))

(declare-fun mapKey!42124 () (_ BitVec 32))

(declare-fun mapValue!42124 () ValueCell!12747)

(declare-fun mapRest!42124 () (Array (_ BitVec 32) ValueCell!12747))

(assert (=> mapNonEmpty!42124 (= (arr!34021 _values!874) (store mapRest!42124 mapKey!42124 mapValue!42124))))

(declare-fun b!1093543 () Bool)

(declare-fun res!729823 () Bool)

(assert (=> b!1093543 (=> (not res!729823) (not e!624426))))

(assert (=> b!1093543 (= res!729823 (and (bvsge i!650 #b00000000000000000000000000000000) (bvslt i!650 (size!34557 _keys!1070))))))

(declare-fun b!1093544 () Bool)

(assert (=> b!1093544 (= e!624430 (and e!624427 mapRes!42124))))

(declare-fun condMapEmpty!42124 () Bool)

(declare-fun mapDefault!42124 () ValueCell!12747)

(assert (=> b!1093544 (= condMapEmpty!42124 (= (arr!34021 _values!874) ((as const (Array (_ BitVec 32) ValueCell!12747)) mapDefault!42124)))))

(assert (= (and start!96294 res!729821) b!1093540))

(assert (= (and b!1093540 res!729816) b!1093541))

(assert (= (and b!1093541 res!729817) b!1093536))

(assert (= (and b!1093536 res!729820) b!1093543))

(assert (= (and b!1093543 res!729823) b!1093542))

(assert (= (and b!1093542 res!729819) b!1093537))

(assert (= (and b!1093537 res!729822) b!1093533))

(assert (= (and b!1093533 res!729824) b!1093538))

(assert (= (and b!1093538 res!729818) b!1093539))

(assert (= (and b!1093544 condMapEmpty!42124) mapIsEmpty!42124))

(assert (= (and b!1093544 (not condMapEmpty!42124)) mapNonEmpty!42124))

(get-info :version)

(assert (= (and mapNonEmpty!42124 ((_ is ValueCellFull!12747) mapValue!42124)) b!1093534))

(assert (= (and b!1093544 ((_ is ValueCellFull!12747) mapDefault!42124)) b!1093535))

(assert (= start!96294 b!1093544))

(declare-fun b_lambda!17611 () Bool)

(assert (=> (not b_lambda!17611) (not b!1093539)))

(declare-fun t!33880 () Bool)

(declare-fun tb!7797 () Bool)

(assert (=> (and start!96294 (= defaultEntry!882 defaultEntry!882) t!33880) tb!7797))

(declare-fun result!16105 () Bool)

(assert (=> tb!7797 (= result!16105 tp_is_empty!26913)))

(assert (=> b!1093539 t!33880))

(declare-fun b_and!36517 () Bool)

(assert (= b_and!36515 (and (=> t!33880 result!16105) b_and!36517)))

(declare-fun m!1013553 () Bool)

(assert (=> b!1093541 m!1013553))

(declare-fun m!1013555 () Bool)

(assert (=> b!1093539 m!1013555))

(declare-fun m!1013557 () Bool)

(assert (=> b!1093539 m!1013557))

(declare-fun m!1013559 () Bool)

(assert (=> b!1093539 m!1013559))

(declare-fun m!1013561 () Bool)

(assert (=> b!1093539 m!1013561))

(declare-fun m!1013563 () Bool)

(assert (=> b!1093539 m!1013563))

(declare-fun m!1013565 () Bool)

(assert (=> b!1093539 m!1013565))

(declare-fun m!1013567 () Bool)

(assert (=> b!1093539 m!1013567))

(declare-fun m!1013569 () Bool)

(assert (=> b!1093539 m!1013569))

(declare-fun m!1013571 () Bool)

(assert (=> b!1093539 m!1013571))

(declare-fun m!1013573 () Bool)

(assert (=> b!1093539 m!1013573))

(declare-fun m!1013575 () Bool)

(assert (=> b!1093533 m!1013575))

(declare-fun m!1013577 () Bool)

(assert (=> b!1093533 m!1013577))

(declare-fun m!1013579 () Bool)

(assert (=> b!1093537 m!1013579))

(declare-fun m!1013581 () Bool)

(assert (=> b!1093538 m!1013581))

(declare-fun m!1013583 () Bool)

(assert (=> b!1093542 m!1013583))

(declare-fun m!1013585 () Bool)

(assert (=> mapNonEmpty!42124 m!1013585))

(declare-fun m!1013587 () Bool)

(assert (=> b!1093536 m!1013587))

(declare-fun m!1013589 () Bool)

(assert (=> start!96294 m!1013589))

(declare-fun m!1013591 () Bool)

(assert (=> start!96294 m!1013591))

(declare-fun m!1013593 () Bool)

(assert (=> start!96294 m!1013593))

(check-sat (not b!1093536) (not b!1093533) (not b!1093538) (not start!96294) tp_is_empty!26913 (not b_next!22911) b_and!36517 (not b!1093539) (not b_lambda!17611) (not b!1093541) (not b!1093542) (not mapNonEmpty!42124))
(check-sat b_and!36517 (not b_next!22911))
