; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!96240 () Bool)

(assert start!96240)

(declare-fun b_free!22857 () Bool)

(declare-fun b_next!22857 () Bool)

(assert (=> start!96240 (= b_free!22857 (not b_next!22857))))

(declare-fun tp!80421 () Bool)

(declare-fun b_and!36407 () Bool)

(assert (=> start!96240 (= tp!80421 b_and!36407)))

(declare-fun b!1092507 () Bool)

(declare-fun res!729089 () Bool)

(declare-fun e!623939 () Bool)

(assert (=> b!1092507 (=> (not res!729089) (not e!623939))))

(declare-datatypes ((array!70596 0))(
  ( (array!70597 (arr!33968 (Array (_ BitVec 32) (_ BitVec 64))) (size!34505 (_ BitVec 32))) )
))
(declare-fun lt!488340 () array!70596)

(declare-datatypes ((List!23867 0))(
  ( (Nil!23864) (Cons!23863 (h!25072 (_ BitVec 64)) (t!33789 List!23867)) )
))
(declare-fun arrayNoDuplicates!0 (array!70596 (_ BitVec 32) List!23867) Bool)

(assert (=> b!1092507 (= res!729089 (arrayNoDuplicates!0 lt!488340 #b00000000000000000000000000000000 Nil!23864))))

(declare-fun b!1092508 () Bool)

(declare-fun e!623940 () Bool)

(declare-fun tp_is_empty!26859 () Bool)

(assert (=> b!1092508 (= e!623940 tp_is_empty!26859)))

(declare-fun mapIsEmpty!42043 () Bool)

(declare-fun mapRes!42043 () Bool)

(assert (=> mapIsEmpty!42043 mapRes!42043))

(declare-fun b!1092509 () Bool)

(declare-fun e!623943 () Bool)

(assert (=> b!1092509 (= e!623943 tp_is_empty!26859)))

(declare-fun b!1092510 () Bool)

(declare-fun res!729091 () Bool)

(declare-fun e!623944 () Bool)

(assert (=> b!1092510 (=> (not res!729091) (not e!623944))))

(declare-fun _keys!1070 () array!70596)

(assert (=> b!1092510 (= res!729091 (arrayNoDuplicates!0 _keys!1070 #b00000000000000000000000000000000 Nil!23864))))

(declare-fun b!1092511 () Bool)

(assert (=> b!1092511 (= e!623939 (not true))))

(declare-fun defaultEntry!882 () Int)

(declare-fun mask!1414 () (_ BitVec 32))

(declare-fun extraKeys!811 () (_ BitVec 32))

(declare-datatypes ((V!40939 0))(
  ( (V!40940 (val!13486 Int)) )
))
(declare-fun zeroValue!831 () V!40939)

(declare-datatypes ((ValueCell!12720 0))(
  ( (ValueCellFull!12720 (v!16108 V!40939)) (EmptyCell!12720) )
))
(declare-datatypes ((array!70598 0))(
  ( (array!70599 (arr!33969 (Array (_ BitVec 32) ValueCell!12720)) (size!34506 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!70598)

(declare-datatypes ((tuple2!17228 0))(
  ( (tuple2!17229 (_1!8624 (_ BitVec 64)) (_2!8624 V!40939)) )
))
(declare-datatypes ((List!23868 0))(
  ( (Nil!23865) (Cons!23864 (h!25073 tuple2!17228) (t!33790 List!23868)) )
))
(declare-datatypes ((ListLongMap!15209 0))(
  ( (ListLongMap!15210 (toList!7620 List!23868)) )
))
(declare-fun lt!488345 () ListLongMap!15209)

(declare-fun minValue!831 () V!40939)

(declare-fun getCurrentListMap!4355 (array!70596 array!70598 (_ BitVec 32) (_ BitVec 32) V!40939 V!40939 (_ BitVec 32) Int) ListLongMap!15209)

(assert (=> b!1092511 (= lt!488345 (getCurrentListMap!4355 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun lt!488341 () ListLongMap!15209)

(declare-fun lt!488343 () array!70598)

(assert (=> b!1092511 (= lt!488341 (getCurrentListMap!4355 lt!488340 lt!488343 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun lt!488338 () ListLongMap!15209)

(declare-fun lt!488344 () ListLongMap!15209)

(assert (=> b!1092511 (and (= lt!488338 lt!488344) (= lt!488344 lt!488338))))

(declare-fun lt!488339 () ListLongMap!15209)

(declare-fun k0!904 () (_ BitVec 64))

(declare-fun -!896 (ListLongMap!15209 (_ BitVec 64)) ListLongMap!15209)

(assert (=> b!1092511 (= lt!488344 (-!896 lt!488339 k0!904))))

(declare-datatypes ((Unit!35907 0))(
  ( (Unit!35908) )
))
(declare-fun lt!488342 () Unit!35907)

(declare-fun i!650 () (_ BitVec 32))

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!161 (array!70596 array!70598 (_ BitVec 32) (_ BitVec 32) V!40939 V!40939 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!35907)

(assert (=> b!1092511 (= lt!488342 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!161 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 i!650 k0!904 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun getCurrentListMapNoExtraKeys!4107 (array!70596 array!70598 (_ BitVec 32) (_ BitVec 32) V!40939 V!40939 (_ BitVec 32) Int) ListLongMap!15209)

(assert (=> b!1092511 (= lt!488338 (getCurrentListMapNoExtraKeys!4107 lt!488340 lt!488343 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun dynLambda!2243 (Int (_ BitVec 64)) V!40939)

(assert (=> b!1092511 (= lt!488343 (array!70599 (store (arr!33969 _values!874) i!650 (ValueCellFull!12720 (dynLambda!2243 defaultEntry!882 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!34506 _values!874)))))

(assert (=> b!1092511 (= lt!488339 (getCurrentListMapNoExtraKeys!4107 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun arrayContainsKey!0 (array!70596 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1092511 (arrayContainsKey!0 _keys!1070 k0!904 #b00000000000000000000000000000000)))

(declare-fun lt!488337 () Unit!35907)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!70596 (_ BitVec 64) (_ BitVec 32)) Unit!35907)

(assert (=> b!1092511 (= lt!488337 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1070 k0!904 i!650))))

(declare-fun b!1092512 () Bool)

(assert (=> b!1092512 (= e!623944 e!623939)))

(declare-fun res!729095 () Bool)

(assert (=> b!1092512 (=> (not res!729095) (not e!623939))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!70596 (_ BitVec 32)) Bool)

(assert (=> b!1092512 (= res!729095 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!488340 mask!1414))))

(assert (=> b!1092512 (= lt!488340 (array!70597 (store (arr!33968 _keys!1070) i!650 #b1000000000000000000000000000000000000000000000000000000000000000) (size!34505 _keys!1070)))))

(declare-fun b!1092513 () Bool)

(declare-fun res!729088 () Bool)

(assert (=> b!1092513 (=> (not res!729088) (not e!623944))))

(assert (=> b!1092513 (= res!729088 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1070 mask!1414))))

(declare-fun b!1092514 () Bool)

(declare-fun res!729090 () Bool)

(assert (=> b!1092514 (=> (not res!729090) (not e!623944))))

(assert (=> b!1092514 (= res!729090 (and (bvsge i!650 #b00000000000000000000000000000000) (bvslt i!650 (size!34505 _keys!1070))))))

(declare-fun b!1092515 () Bool)

(declare-fun e!623941 () Bool)

(assert (=> b!1092515 (= e!623941 (and e!623943 mapRes!42043))))

(declare-fun condMapEmpty!42043 () Bool)

(declare-fun mapDefault!42043 () ValueCell!12720)

(assert (=> b!1092515 (= condMapEmpty!42043 (= (arr!33969 _values!874) ((as const (Array (_ BitVec 32) ValueCell!12720)) mapDefault!42043)))))

(declare-fun res!729093 () Bool)

(assert (=> start!96240 (=> (not res!729093) (not e!623944))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!96240 (= res!729093 (validMask!0 mask!1414))))

(assert (=> start!96240 e!623944))

(assert (=> start!96240 tp!80421))

(assert (=> start!96240 true))

(assert (=> start!96240 tp_is_empty!26859))

(declare-fun array_inv!26042 (array!70596) Bool)

(assert (=> start!96240 (array_inv!26042 _keys!1070)))

(declare-fun array_inv!26043 (array!70598) Bool)

(assert (=> start!96240 (and (array_inv!26043 _values!874) e!623941)))

(declare-fun b!1092516 () Bool)

(declare-fun res!729087 () Bool)

(assert (=> b!1092516 (=> (not res!729087) (not e!623944))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1092516 (= res!729087 (validKeyInArray!0 k0!904))))

(declare-fun mapNonEmpty!42043 () Bool)

(declare-fun tp!80420 () Bool)

(assert (=> mapNonEmpty!42043 (= mapRes!42043 (and tp!80420 e!623940))))

(declare-fun mapKey!42043 () (_ BitVec 32))

(declare-fun mapRest!42043 () (Array (_ BitVec 32) ValueCell!12720))

(declare-fun mapValue!42043 () ValueCell!12720)

(assert (=> mapNonEmpty!42043 (= (arr!33969 _values!874) (store mapRest!42043 mapKey!42043 mapValue!42043))))

(declare-fun b!1092517 () Bool)

(declare-fun res!729092 () Bool)

(assert (=> b!1092517 (=> (not res!729092) (not e!623944))))

(assert (=> b!1092517 (= res!729092 (and (= (size!34506 _values!874) (bvadd #b00000000000000000000000000000001 mask!1414)) (= (size!34505 _keys!1070) (size!34506 _values!874)) (bvsge mask!1414 #b00000000000000000000000000000000) (bvsge extraKeys!811 #b00000000000000000000000000000000) (bvsle extraKeys!811 #b00000000000000000000000000000011)))))

(declare-fun b!1092518 () Bool)

(declare-fun res!729094 () Bool)

(assert (=> b!1092518 (=> (not res!729094) (not e!623944))))

(assert (=> b!1092518 (= res!729094 (= (select (arr!33968 _keys!1070) i!650) k0!904))))

(assert (= (and start!96240 res!729093) b!1092517))

(assert (= (and b!1092517 res!729092) b!1092513))

(assert (= (and b!1092513 res!729088) b!1092510))

(assert (= (and b!1092510 res!729091) b!1092514))

(assert (= (and b!1092514 res!729090) b!1092516))

(assert (= (and b!1092516 res!729087) b!1092518))

(assert (= (and b!1092518 res!729094) b!1092512))

(assert (= (and b!1092512 res!729095) b!1092507))

(assert (= (and b!1092507 res!729089) b!1092511))

(assert (= (and b!1092515 condMapEmpty!42043) mapIsEmpty!42043))

(assert (= (and b!1092515 (not condMapEmpty!42043)) mapNonEmpty!42043))

(get-info :version)

(assert (= (and mapNonEmpty!42043 ((_ is ValueCellFull!12720) mapValue!42043)) b!1092508))

(assert (= (and b!1092515 ((_ is ValueCellFull!12720) mapDefault!42043)) b!1092509))

(assert (= start!96240 b!1092515))

(declare-fun b_lambda!17557 () Bool)

(assert (=> (not b_lambda!17557) (not b!1092511)))

(declare-fun t!33788 () Bool)

(declare-fun tb!7743 () Bool)

(assert (=> (and start!96240 (= defaultEntry!882 defaultEntry!882) t!33788) tb!7743))

(declare-fun result!15997 () Bool)

(assert (=> tb!7743 (= result!15997 tp_is_empty!26859)))

(assert (=> b!1092511 t!33788))

(declare-fun b_and!36409 () Bool)

(assert (= b_and!36407 (and (=> t!33788 result!15997) b_and!36409)))

(declare-fun m!1012419 () Bool)

(assert (=> b!1092507 m!1012419))

(declare-fun m!1012421 () Bool)

(assert (=> b!1092513 m!1012421))

(declare-fun m!1012423 () Bool)

(assert (=> b!1092516 m!1012423))

(declare-fun m!1012425 () Bool)

(assert (=> b!1092518 m!1012425))

(declare-fun m!1012427 () Bool)

(assert (=> b!1092511 m!1012427))

(declare-fun m!1012429 () Bool)

(assert (=> b!1092511 m!1012429))

(declare-fun m!1012431 () Bool)

(assert (=> b!1092511 m!1012431))

(declare-fun m!1012433 () Bool)

(assert (=> b!1092511 m!1012433))

(declare-fun m!1012435 () Bool)

(assert (=> b!1092511 m!1012435))

(declare-fun m!1012437 () Bool)

(assert (=> b!1092511 m!1012437))

(declare-fun m!1012439 () Bool)

(assert (=> b!1092511 m!1012439))

(declare-fun m!1012441 () Bool)

(assert (=> b!1092511 m!1012441))

(declare-fun m!1012443 () Bool)

(assert (=> b!1092511 m!1012443))

(declare-fun m!1012445 () Bool)

(assert (=> b!1092511 m!1012445))

(declare-fun m!1012447 () Bool)

(assert (=> mapNonEmpty!42043 m!1012447))

(declare-fun m!1012449 () Bool)

(assert (=> start!96240 m!1012449))

(declare-fun m!1012451 () Bool)

(assert (=> start!96240 m!1012451))

(declare-fun m!1012453 () Bool)

(assert (=> start!96240 m!1012453))

(declare-fun m!1012455 () Bool)

(assert (=> b!1092510 m!1012455))

(declare-fun m!1012457 () Bool)

(assert (=> b!1092512 m!1012457))

(declare-fun m!1012459 () Bool)

(assert (=> b!1092512 m!1012459))

(check-sat (not b_next!22857) (not b!1092516) (not b_lambda!17557) (not start!96240) tp_is_empty!26859 (not b!1092510) (not b!1092511) (not mapNonEmpty!42043) (not b!1092512) b_and!36409 (not b!1092513) (not b!1092507))
(check-sat b_and!36409 (not b_next!22857))
