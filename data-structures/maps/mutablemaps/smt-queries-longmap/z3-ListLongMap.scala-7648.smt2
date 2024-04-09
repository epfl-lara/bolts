; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!96246 () Bool)

(assert start!96246)

(declare-fun b_free!22863 () Bool)

(declare-fun b_next!22863 () Bool)

(assert (=> start!96246 (= b_free!22863 (not b_next!22863))))

(declare-fun tp!80439 () Bool)

(declare-fun b_and!36419 () Bool)

(assert (=> start!96246 (= tp!80439 b_and!36419)))

(declare-fun b!1092621 () Bool)

(declare-fun e!623998 () Bool)

(declare-fun tp_is_empty!26865 () Bool)

(assert (=> b!1092621 (= e!623998 tp_is_empty!26865)))

(declare-fun mapNonEmpty!42052 () Bool)

(declare-fun mapRes!42052 () Bool)

(declare-fun tp!80438 () Bool)

(declare-fun e!623995 () Bool)

(assert (=> mapNonEmpty!42052 (= mapRes!42052 (and tp!80438 e!623995))))

(declare-datatypes ((V!40947 0))(
  ( (V!40948 (val!13489 Int)) )
))
(declare-datatypes ((ValueCell!12723 0))(
  ( (ValueCellFull!12723 (v!16111 V!40947)) (EmptyCell!12723) )
))
(declare-fun mapRest!42052 () (Array (_ BitVec 32) ValueCell!12723))

(declare-datatypes ((array!70608 0))(
  ( (array!70609 (arr!33974 (Array (_ BitVec 32) ValueCell!12723)) (size!34511 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!70608)

(declare-fun mapValue!42052 () ValueCell!12723)

(declare-fun mapKey!42052 () (_ BitVec 32))

(assert (=> mapNonEmpty!42052 (= (arr!33974 _values!874) (store mapRest!42052 mapKey!42052 mapValue!42052))))

(declare-fun b!1092622 () Bool)

(declare-fun res!729169 () Bool)

(declare-fun e!623994 () Bool)

(assert (=> b!1092622 (=> (not res!729169) (not e!623994))))

(declare-datatypes ((array!70610 0))(
  ( (array!70611 (arr!33975 (Array (_ BitVec 32) (_ BitVec 64))) (size!34512 (_ BitVec 32))) )
))
(declare-fun _keys!1070 () array!70610)

(declare-datatypes ((List!23871 0))(
  ( (Nil!23868) (Cons!23867 (h!25076 (_ BitVec 64)) (t!33799 List!23871)) )
))
(declare-fun arrayNoDuplicates!0 (array!70610 (_ BitVec 32) List!23871) Bool)

(assert (=> b!1092622 (= res!729169 (arrayNoDuplicates!0 _keys!1070 #b00000000000000000000000000000000 Nil!23868))))

(declare-fun b!1092623 () Bool)

(declare-fun e!623996 () Bool)

(assert (=> b!1092623 (= e!623996 (and e!623998 mapRes!42052))))

(declare-fun condMapEmpty!42052 () Bool)

(declare-fun mapDefault!42052 () ValueCell!12723)

(assert (=> b!1092623 (= condMapEmpty!42052 (= (arr!33974 _values!874) ((as const (Array (_ BitVec 32) ValueCell!12723)) mapDefault!42052)))))

(declare-fun b!1092624 () Bool)

(declare-fun e!623993 () Bool)

(assert (=> b!1092624 (= e!623994 e!623993)))

(declare-fun res!729173 () Bool)

(assert (=> b!1092624 (=> (not res!729173) (not e!623993))))

(declare-fun lt!488425 () array!70610)

(declare-fun mask!1414 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!70610 (_ BitVec 32)) Bool)

(assert (=> b!1092624 (= res!729173 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!488425 mask!1414))))

(declare-fun i!650 () (_ BitVec 32))

(assert (=> b!1092624 (= lt!488425 (array!70611 (store (arr!33975 _keys!1070) i!650 #b1000000000000000000000000000000000000000000000000000000000000000) (size!34512 _keys!1070)))))

(declare-fun b!1092625 () Bool)

(declare-fun res!729174 () Bool)

(assert (=> b!1092625 (=> (not res!729174) (not e!623994))))

(assert (=> b!1092625 (= res!729174 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1070 mask!1414))))

(declare-fun b!1092626 () Bool)

(declare-fun res!729172 () Bool)

(assert (=> b!1092626 (=> (not res!729172) (not e!623994))))

(declare-fun k0!904 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1092626 (= res!729172 (validKeyInArray!0 k0!904))))

(declare-fun res!729176 () Bool)

(assert (=> start!96246 (=> (not res!729176) (not e!623994))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!96246 (= res!729176 (validMask!0 mask!1414))))

(assert (=> start!96246 e!623994))

(assert (=> start!96246 tp!80439))

(assert (=> start!96246 true))

(assert (=> start!96246 tp_is_empty!26865))

(declare-fun array_inv!26044 (array!70610) Bool)

(assert (=> start!96246 (array_inv!26044 _keys!1070)))

(declare-fun array_inv!26045 (array!70608) Bool)

(assert (=> start!96246 (and (array_inv!26045 _values!874) e!623996)))

(declare-fun b!1092627 () Bool)

(declare-fun res!729168 () Bool)

(assert (=> b!1092627 (=> (not res!729168) (not e!623994))))

(declare-fun extraKeys!811 () (_ BitVec 32))

(assert (=> b!1092627 (= res!729168 (and (= (size!34511 _values!874) (bvadd #b00000000000000000000000000000001 mask!1414)) (= (size!34512 _keys!1070) (size!34511 _values!874)) (bvsge mask!1414 #b00000000000000000000000000000000) (bvsge extraKeys!811 #b00000000000000000000000000000000) (bvsle extraKeys!811 #b00000000000000000000000000000011)))))

(declare-fun b!1092628 () Bool)

(declare-fun res!729171 () Bool)

(assert (=> b!1092628 (=> (not res!729171) (not e!623993))))

(assert (=> b!1092628 (= res!729171 (arrayNoDuplicates!0 lt!488425 #b00000000000000000000000000000000 Nil!23868))))

(declare-fun b!1092629 () Bool)

(assert (=> b!1092629 (= e!623995 tp_is_empty!26865)))

(declare-fun b!1092630 () Bool)

(assert (=> b!1092630 (= e!623993 (not true))))

(declare-fun defaultEntry!882 () Int)

(declare-fun minValue!831 () V!40947)

(declare-datatypes ((tuple2!17230 0))(
  ( (tuple2!17231 (_1!8625 (_ BitVec 64)) (_2!8625 V!40947)) )
))
(declare-datatypes ((List!23872 0))(
  ( (Nil!23869) (Cons!23868 (h!25077 tuple2!17230) (t!33800 List!23872)) )
))
(declare-datatypes ((ListLongMap!15211 0))(
  ( (ListLongMap!15212 (toList!7621 List!23872)) )
))
(declare-fun lt!488424 () ListLongMap!15211)

(declare-fun zeroValue!831 () V!40947)

(declare-fun getCurrentListMap!4356 (array!70610 array!70608 (_ BitVec 32) (_ BitVec 32) V!40947 V!40947 (_ BitVec 32) Int) ListLongMap!15211)

(assert (=> b!1092630 (= lt!488424 (getCurrentListMap!4356 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun lt!488418 () ListLongMap!15211)

(declare-fun lt!488423 () array!70608)

(assert (=> b!1092630 (= lt!488418 (getCurrentListMap!4356 lt!488425 lt!488423 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun lt!488419 () ListLongMap!15211)

(declare-fun lt!488420 () ListLongMap!15211)

(assert (=> b!1092630 (and (= lt!488419 lt!488420) (= lt!488420 lt!488419))))

(declare-fun lt!488426 () ListLongMap!15211)

(declare-fun -!897 (ListLongMap!15211 (_ BitVec 64)) ListLongMap!15211)

(assert (=> b!1092630 (= lt!488420 (-!897 lt!488426 k0!904))))

(declare-datatypes ((Unit!35909 0))(
  ( (Unit!35910) )
))
(declare-fun lt!488422 () Unit!35909)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!162 (array!70610 array!70608 (_ BitVec 32) (_ BitVec 32) V!40947 V!40947 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!35909)

(assert (=> b!1092630 (= lt!488422 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!162 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 i!650 k0!904 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun getCurrentListMapNoExtraKeys!4108 (array!70610 array!70608 (_ BitVec 32) (_ BitVec 32) V!40947 V!40947 (_ BitVec 32) Int) ListLongMap!15211)

(assert (=> b!1092630 (= lt!488419 (getCurrentListMapNoExtraKeys!4108 lt!488425 lt!488423 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun dynLambda!2244 (Int (_ BitVec 64)) V!40947)

(assert (=> b!1092630 (= lt!488423 (array!70609 (store (arr!33974 _values!874) i!650 (ValueCellFull!12723 (dynLambda!2244 defaultEntry!882 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!34511 _values!874)))))

(assert (=> b!1092630 (= lt!488426 (getCurrentListMapNoExtraKeys!4108 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun arrayContainsKey!0 (array!70610 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1092630 (arrayContainsKey!0 _keys!1070 k0!904 #b00000000000000000000000000000000)))

(declare-fun lt!488421 () Unit!35909)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!70610 (_ BitVec 64) (_ BitVec 32)) Unit!35909)

(assert (=> b!1092630 (= lt!488421 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1070 k0!904 i!650))))

(declare-fun b!1092631 () Bool)

(declare-fun res!729175 () Bool)

(assert (=> b!1092631 (=> (not res!729175) (not e!623994))))

(assert (=> b!1092631 (= res!729175 (and (bvsge i!650 #b00000000000000000000000000000000) (bvslt i!650 (size!34512 _keys!1070))))))

(declare-fun b!1092632 () Bool)

(declare-fun res!729170 () Bool)

(assert (=> b!1092632 (=> (not res!729170) (not e!623994))))

(assert (=> b!1092632 (= res!729170 (= (select (arr!33975 _keys!1070) i!650) k0!904))))

(declare-fun mapIsEmpty!42052 () Bool)

(assert (=> mapIsEmpty!42052 mapRes!42052))

(assert (= (and start!96246 res!729176) b!1092627))

(assert (= (and b!1092627 res!729168) b!1092625))

(assert (= (and b!1092625 res!729174) b!1092622))

(assert (= (and b!1092622 res!729169) b!1092631))

(assert (= (and b!1092631 res!729175) b!1092626))

(assert (= (and b!1092626 res!729172) b!1092632))

(assert (= (and b!1092632 res!729170) b!1092624))

(assert (= (and b!1092624 res!729173) b!1092628))

(assert (= (and b!1092628 res!729171) b!1092630))

(assert (= (and b!1092623 condMapEmpty!42052) mapIsEmpty!42052))

(assert (= (and b!1092623 (not condMapEmpty!42052)) mapNonEmpty!42052))

(get-info :version)

(assert (= (and mapNonEmpty!42052 ((_ is ValueCellFull!12723) mapValue!42052)) b!1092629))

(assert (= (and b!1092623 ((_ is ValueCellFull!12723) mapDefault!42052)) b!1092621))

(assert (= start!96246 b!1092623))

(declare-fun b_lambda!17563 () Bool)

(assert (=> (not b_lambda!17563) (not b!1092630)))

(declare-fun t!33798 () Bool)

(declare-fun tb!7749 () Bool)

(assert (=> (and start!96246 (= defaultEntry!882 defaultEntry!882) t!33798) tb!7749))

(declare-fun result!16009 () Bool)

(assert (=> tb!7749 (= result!16009 tp_is_empty!26865)))

(assert (=> b!1092630 t!33798))

(declare-fun b_and!36421 () Bool)

(assert (= b_and!36419 (and (=> t!33798 result!16009) b_and!36421)))

(declare-fun m!1012545 () Bool)

(assert (=> b!1092625 m!1012545))

(declare-fun m!1012547 () Bool)

(assert (=> mapNonEmpty!42052 m!1012547))

(declare-fun m!1012549 () Bool)

(assert (=> b!1092630 m!1012549))

(declare-fun m!1012551 () Bool)

(assert (=> b!1092630 m!1012551))

(declare-fun m!1012553 () Bool)

(assert (=> b!1092630 m!1012553))

(declare-fun m!1012555 () Bool)

(assert (=> b!1092630 m!1012555))

(declare-fun m!1012557 () Bool)

(assert (=> b!1092630 m!1012557))

(declare-fun m!1012559 () Bool)

(assert (=> b!1092630 m!1012559))

(declare-fun m!1012561 () Bool)

(assert (=> b!1092630 m!1012561))

(declare-fun m!1012563 () Bool)

(assert (=> b!1092630 m!1012563))

(declare-fun m!1012565 () Bool)

(assert (=> b!1092630 m!1012565))

(declare-fun m!1012567 () Bool)

(assert (=> b!1092630 m!1012567))

(declare-fun m!1012569 () Bool)

(assert (=> b!1092624 m!1012569))

(declare-fun m!1012571 () Bool)

(assert (=> b!1092624 m!1012571))

(declare-fun m!1012573 () Bool)

(assert (=> b!1092632 m!1012573))

(declare-fun m!1012575 () Bool)

(assert (=> b!1092628 m!1012575))

(declare-fun m!1012577 () Bool)

(assert (=> b!1092626 m!1012577))

(declare-fun m!1012579 () Bool)

(assert (=> start!96246 m!1012579))

(declare-fun m!1012581 () Bool)

(assert (=> start!96246 m!1012581))

(declare-fun m!1012583 () Bool)

(assert (=> start!96246 m!1012583))

(declare-fun m!1012585 () Bool)

(assert (=> b!1092622 m!1012585))

(check-sat (not b!1092630) b_and!36421 (not mapNonEmpty!42052) (not b!1092622) (not b_next!22863) (not b!1092628) (not b!1092626) tp_is_empty!26865 (not b!1092625) (not b_lambda!17563) (not start!96246) (not b!1092624))
(check-sat b_and!36421 (not b_next!22863))
