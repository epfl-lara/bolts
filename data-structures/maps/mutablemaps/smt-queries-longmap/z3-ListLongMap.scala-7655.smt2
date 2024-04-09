; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!96288 () Bool)

(assert start!96288)

(declare-fun b_free!22905 () Bool)

(declare-fun b_next!22905 () Bool)

(assert (=> start!96288 (= b_free!22905 (not b_next!22905))))

(declare-fun tp!80565 () Bool)

(declare-fun b_and!36503 () Bool)

(assert (=> start!96288 (= tp!80565 b_and!36503)))

(declare-fun b!1093419 () Bool)

(declare-fun res!729736 () Bool)

(declare-fun e!624371 () Bool)

(assert (=> b!1093419 (=> (not res!729736) (not e!624371))))

(declare-datatypes ((array!70688 0))(
  ( (array!70689 (arr!34014 (Array (_ BitVec 32) (_ BitVec 64))) (size!34551 (_ BitVec 32))) )
))
(declare-fun _keys!1070 () array!70688)

(declare-fun k0!904 () (_ BitVec 64))

(declare-fun i!650 () (_ BitVec 32))

(assert (=> b!1093419 (= res!729736 (= (select (arr!34014 _keys!1070) i!650) k0!904))))

(declare-fun b!1093420 () Bool)

(declare-fun e!624375 () Bool)

(assert (=> b!1093420 (= e!624375 (not true))))

(declare-fun defaultEntry!882 () Int)

(declare-datatypes ((V!41003 0))(
  ( (V!41004 (val!13510 Int)) )
))
(declare-fun minValue!831 () V!41003)

(declare-fun mask!1414 () (_ BitVec 32))

(declare-datatypes ((tuple2!17254 0))(
  ( (tuple2!17255 (_1!8637 (_ BitVec 64)) (_2!8637 V!41003)) )
))
(declare-datatypes ((List!23901 0))(
  ( (Nil!23898) (Cons!23897 (h!25106 tuple2!17254) (t!33871 List!23901)) )
))
(declare-datatypes ((ListLongMap!15235 0))(
  ( (ListLongMap!15236 (toList!7633 List!23901)) )
))
(declare-fun lt!488999 () ListLongMap!15235)

(declare-fun zeroValue!831 () V!41003)

(declare-datatypes ((ValueCell!12744 0))(
  ( (ValueCellFull!12744 (v!16132 V!41003)) (EmptyCell!12744) )
))
(declare-datatypes ((array!70690 0))(
  ( (array!70691 (arr!34015 (Array (_ BitVec 32) ValueCell!12744)) (size!34552 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!70690)

(declare-fun extraKeys!811 () (_ BitVec 32))

(declare-fun getCurrentListMap!4368 (array!70688 array!70690 (_ BitVec 32) (_ BitVec 32) V!41003 V!41003 (_ BitVec 32) Int) ListLongMap!15235)

(assert (=> b!1093420 (= lt!488999 (getCurrentListMap!4368 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun lt!489000 () ListLongMap!15235)

(declare-fun lt!489001 () array!70688)

(declare-fun lt!488997 () array!70690)

(assert (=> b!1093420 (= lt!489000 (getCurrentListMap!4368 lt!489001 lt!488997 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun lt!488995 () ListLongMap!15235)

(declare-fun lt!488996 () ListLongMap!15235)

(assert (=> b!1093420 (and (= lt!488995 lt!488996) (= lt!488996 lt!488995))))

(declare-fun lt!488998 () ListLongMap!15235)

(declare-fun -!909 (ListLongMap!15235 (_ BitVec 64)) ListLongMap!15235)

(assert (=> b!1093420 (= lt!488996 (-!909 lt!488998 k0!904))))

(declare-datatypes ((Unit!35933 0))(
  ( (Unit!35934) )
))
(declare-fun lt!489002 () Unit!35933)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!174 (array!70688 array!70690 (_ BitVec 32) (_ BitVec 32) V!41003 V!41003 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!35933)

(assert (=> b!1093420 (= lt!489002 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!174 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 i!650 k0!904 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun getCurrentListMapNoExtraKeys!4120 (array!70688 array!70690 (_ BitVec 32) (_ BitVec 32) V!41003 V!41003 (_ BitVec 32) Int) ListLongMap!15235)

(assert (=> b!1093420 (= lt!488995 (getCurrentListMapNoExtraKeys!4120 lt!489001 lt!488997 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun dynLambda!2256 (Int (_ BitVec 64)) V!41003)

(assert (=> b!1093420 (= lt!488997 (array!70691 (store (arr!34015 _values!874) i!650 (ValueCellFull!12744 (dynLambda!2256 defaultEntry!882 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!34552 _values!874)))))

(assert (=> b!1093420 (= lt!488998 (getCurrentListMapNoExtraKeys!4120 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun arrayContainsKey!0 (array!70688 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1093420 (arrayContainsKey!0 _keys!1070 k0!904 #b00000000000000000000000000000000)))

(declare-fun lt!488994 () Unit!35933)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!70688 (_ BitVec 64) (_ BitVec 32)) Unit!35933)

(assert (=> b!1093420 (= lt!488994 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1070 k0!904 i!650))))

(declare-fun b!1093421 () Bool)

(declare-fun e!624372 () Bool)

(declare-fun tp_is_empty!26907 () Bool)

(assert (=> b!1093421 (= e!624372 tp_is_empty!26907)))

(declare-fun res!729743 () Bool)

(assert (=> start!96288 (=> (not res!729743) (not e!624371))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!96288 (= res!729743 (validMask!0 mask!1414))))

(assert (=> start!96288 e!624371))

(assert (=> start!96288 tp!80565))

(assert (=> start!96288 true))

(assert (=> start!96288 tp_is_empty!26907))

(declare-fun array_inv!26070 (array!70688) Bool)

(assert (=> start!96288 (array_inv!26070 _keys!1070)))

(declare-fun e!624374 () Bool)

(declare-fun array_inv!26071 (array!70690) Bool)

(assert (=> start!96288 (and (array_inv!26071 _values!874) e!624374)))

(declare-fun b!1093422 () Bool)

(declare-fun res!729742 () Bool)

(assert (=> b!1093422 (=> (not res!729742) (not e!624371))))

(assert (=> b!1093422 (= res!729742 (and (= (size!34552 _values!874) (bvadd #b00000000000000000000000000000001 mask!1414)) (= (size!34551 _keys!1070) (size!34552 _values!874)) (bvsge mask!1414 #b00000000000000000000000000000000) (bvsge extraKeys!811 #b00000000000000000000000000000000) (bvsle extraKeys!811 #b00000000000000000000000000000011)))))

(declare-fun b!1093423 () Bool)

(declare-fun res!729737 () Bool)

(assert (=> b!1093423 (=> (not res!729737) (not e!624371))))

(declare-datatypes ((List!23902 0))(
  ( (Nil!23899) (Cons!23898 (h!25107 (_ BitVec 64)) (t!33872 List!23902)) )
))
(declare-fun arrayNoDuplicates!0 (array!70688 (_ BitVec 32) List!23902) Bool)

(assert (=> b!1093423 (= res!729737 (arrayNoDuplicates!0 _keys!1070 #b00000000000000000000000000000000 Nil!23899))))

(declare-fun mapNonEmpty!42115 () Bool)

(declare-fun mapRes!42115 () Bool)

(declare-fun tp!80564 () Bool)

(assert (=> mapNonEmpty!42115 (= mapRes!42115 (and tp!80564 e!624372))))

(declare-fun mapKey!42115 () (_ BitVec 32))

(declare-fun mapValue!42115 () ValueCell!12744)

(declare-fun mapRest!42115 () (Array (_ BitVec 32) ValueCell!12744))

(assert (=> mapNonEmpty!42115 (= (arr!34015 _values!874) (store mapRest!42115 mapKey!42115 mapValue!42115))))

(declare-fun b!1093424 () Bool)

(declare-fun e!624376 () Bool)

(assert (=> b!1093424 (= e!624376 tp_is_empty!26907)))

(declare-fun b!1093425 () Bool)

(declare-fun res!729738 () Bool)

(assert (=> b!1093425 (=> (not res!729738) (not e!624371))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!70688 (_ BitVec 32)) Bool)

(assert (=> b!1093425 (= res!729738 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1070 mask!1414))))

(declare-fun b!1093426 () Bool)

(declare-fun res!729735 () Bool)

(assert (=> b!1093426 (=> (not res!729735) (not e!624375))))

(assert (=> b!1093426 (= res!729735 (arrayNoDuplicates!0 lt!489001 #b00000000000000000000000000000000 Nil!23899))))

(declare-fun mapIsEmpty!42115 () Bool)

(assert (=> mapIsEmpty!42115 mapRes!42115))

(declare-fun b!1093427 () Bool)

(declare-fun res!729739 () Bool)

(assert (=> b!1093427 (=> (not res!729739) (not e!624371))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1093427 (= res!729739 (validKeyInArray!0 k0!904))))

(declare-fun b!1093428 () Bool)

(assert (=> b!1093428 (= e!624371 e!624375)))

(declare-fun res!729740 () Bool)

(assert (=> b!1093428 (=> (not res!729740) (not e!624375))))

(assert (=> b!1093428 (= res!729740 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!489001 mask!1414))))

(assert (=> b!1093428 (= lt!489001 (array!70689 (store (arr!34014 _keys!1070) i!650 #b1000000000000000000000000000000000000000000000000000000000000000) (size!34551 _keys!1070)))))

(declare-fun b!1093429 () Bool)

(assert (=> b!1093429 (= e!624374 (and e!624376 mapRes!42115))))

(declare-fun condMapEmpty!42115 () Bool)

(declare-fun mapDefault!42115 () ValueCell!12744)

(assert (=> b!1093429 (= condMapEmpty!42115 (= (arr!34015 _values!874) ((as const (Array (_ BitVec 32) ValueCell!12744)) mapDefault!42115)))))

(declare-fun b!1093430 () Bool)

(declare-fun res!729741 () Bool)

(assert (=> b!1093430 (=> (not res!729741) (not e!624371))))

(assert (=> b!1093430 (= res!729741 (and (bvsge i!650 #b00000000000000000000000000000000) (bvslt i!650 (size!34551 _keys!1070))))))

(assert (= (and start!96288 res!729743) b!1093422))

(assert (= (and b!1093422 res!729742) b!1093425))

(assert (= (and b!1093425 res!729738) b!1093423))

(assert (= (and b!1093423 res!729737) b!1093430))

(assert (= (and b!1093430 res!729741) b!1093427))

(assert (= (and b!1093427 res!729739) b!1093419))

(assert (= (and b!1093419 res!729736) b!1093428))

(assert (= (and b!1093428 res!729740) b!1093426))

(assert (= (and b!1093426 res!729735) b!1093420))

(assert (= (and b!1093429 condMapEmpty!42115) mapIsEmpty!42115))

(assert (= (and b!1093429 (not condMapEmpty!42115)) mapNonEmpty!42115))

(get-info :version)

(assert (= (and mapNonEmpty!42115 ((_ is ValueCellFull!12744) mapValue!42115)) b!1093421))

(assert (= (and b!1093429 ((_ is ValueCellFull!12744) mapDefault!42115)) b!1093424))

(assert (= start!96288 b!1093429))

(declare-fun b_lambda!17605 () Bool)

(assert (=> (not b_lambda!17605) (not b!1093420)))

(declare-fun t!33870 () Bool)

(declare-fun tb!7791 () Bool)

(assert (=> (and start!96288 (= defaultEntry!882 defaultEntry!882) t!33870) tb!7791))

(declare-fun result!16093 () Bool)

(assert (=> tb!7791 (= result!16093 tp_is_empty!26907)))

(assert (=> b!1093420 t!33870))

(declare-fun b_and!36505 () Bool)

(assert (= b_and!36503 (and (=> t!33870 result!16093) b_and!36505)))

(declare-fun m!1013427 () Bool)

(assert (=> b!1093425 m!1013427))

(declare-fun m!1013429 () Bool)

(assert (=> b!1093426 m!1013429))

(declare-fun m!1013431 () Bool)

(assert (=> b!1093420 m!1013431))

(declare-fun m!1013433 () Bool)

(assert (=> b!1093420 m!1013433))

(declare-fun m!1013435 () Bool)

(assert (=> b!1093420 m!1013435))

(declare-fun m!1013437 () Bool)

(assert (=> b!1093420 m!1013437))

(declare-fun m!1013439 () Bool)

(assert (=> b!1093420 m!1013439))

(declare-fun m!1013441 () Bool)

(assert (=> b!1093420 m!1013441))

(declare-fun m!1013443 () Bool)

(assert (=> b!1093420 m!1013443))

(declare-fun m!1013445 () Bool)

(assert (=> b!1093420 m!1013445))

(declare-fun m!1013447 () Bool)

(assert (=> b!1093420 m!1013447))

(declare-fun m!1013449 () Bool)

(assert (=> b!1093420 m!1013449))

(declare-fun m!1013451 () Bool)

(assert (=> b!1093423 m!1013451))

(declare-fun m!1013453 () Bool)

(assert (=> b!1093428 m!1013453))

(declare-fun m!1013455 () Bool)

(assert (=> b!1093428 m!1013455))

(declare-fun m!1013457 () Bool)

(assert (=> mapNonEmpty!42115 m!1013457))

(declare-fun m!1013459 () Bool)

(assert (=> b!1093427 m!1013459))

(declare-fun m!1013461 () Bool)

(assert (=> start!96288 m!1013461))

(declare-fun m!1013463 () Bool)

(assert (=> start!96288 m!1013463))

(declare-fun m!1013465 () Bool)

(assert (=> start!96288 m!1013465))

(declare-fun m!1013467 () Bool)

(assert (=> b!1093419 m!1013467))

(check-sat (not b!1093426) tp_is_empty!26907 (not b!1093425) b_and!36505 (not b_next!22905) (not b!1093427) (not b_lambda!17605) (not b!1093423) (not mapNonEmpty!42115) (not start!96288) (not b!1093420) (not b!1093428))
(check-sat b_and!36505 (not b_next!22905))
