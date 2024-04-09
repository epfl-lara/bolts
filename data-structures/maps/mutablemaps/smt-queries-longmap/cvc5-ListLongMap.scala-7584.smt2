; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!95860 () Bool)

(assert start!95860)

(declare-fun b_free!22477 () Bool)

(declare-fun b_next!22477 () Bool)

(assert (=> start!95860 (= b_free!22477 (not b_next!22477))))

(declare-fun tp!79280 () Bool)

(declare-fun b_and!35647 () Bool)

(assert (=> start!95860 (= tp!79280 b_and!35647)))

(declare-fun mapIsEmpty!41473 () Bool)

(declare-fun mapRes!41473 () Bool)

(assert (=> mapIsEmpty!41473 mapRes!41473))

(declare-fun b!1084225 () Bool)

(declare-fun res!722900 () Bool)

(declare-fun e!619489 () Bool)

(assert (=> b!1084225 (=> (not res!722900) (not e!619489))))

(declare-fun i!650 () (_ BitVec 32))

(declare-datatypes ((array!69860 0))(
  ( (array!69861 (arr!33600 (Array (_ BitVec 32) (_ BitVec 64))) (size!34137 (_ BitVec 32))) )
))
(declare-fun _keys!1070 () array!69860)

(assert (=> b!1084225 (= res!722900 (and (bvsge i!650 #b00000000000000000000000000000000) (bvslt i!650 (size!34137 _keys!1070))))))

(declare-fun b!1084226 () Bool)

(declare-fun e!619488 () Bool)

(assert (=> b!1084226 (= e!619488 (not true))))

(declare-fun lt!480566 () array!69860)

(declare-fun defaultEntry!882 () Int)

(declare-datatypes ((V!40433 0))(
  ( (V!40434 (val!13296 Int)) )
))
(declare-fun minValue!831 () V!40433)

(declare-fun mask!1414 () (_ BitVec 32))

(declare-datatypes ((tuple2!16916 0))(
  ( (tuple2!16917 (_1!8468 (_ BitVec 64)) (_2!8468 V!40433)) )
))
(declare-datatypes ((List!23558 0))(
  ( (Nil!23555) (Cons!23554 (h!24763 tuple2!16916) (t!33100 List!23558)) )
))
(declare-datatypes ((ListLongMap!14897 0))(
  ( (ListLongMap!14898 (toList!7464 List!23558)) )
))
(declare-fun lt!480561 () ListLongMap!14897)

(declare-datatypes ((ValueCell!12530 0))(
  ( (ValueCellFull!12530 (v!15918 V!40433)) (EmptyCell!12530) )
))
(declare-datatypes ((array!69862 0))(
  ( (array!69863 (arr!33601 (Array (_ BitVec 32) ValueCell!12530)) (size!34138 (_ BitVec 32))) )
))
(declare-fun lt!480562 () array!69862)

(declare-fun extraKeys!811 () (_ BitVec 32))

(declare-fun zeroValue!831 () V!40433)

(declare-fun getCurrentListMap!4223 (array!69860 array!69862 (_ BitVec 32) (_ BitVec 32) V!40433 V!40433 (_ BitVec 32) Int) ListLongMap!14897)

(assert (=> b!1084226 (= lt!480561 (getCurrentListMap!4223 lt!480566 lt!480562 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun lt!480560 () ListLongMap!14897)

(declare-fun lt!480565 () ListLongMap!14897)

(assert (=> b!1084226 (and (= lt!480560 lt!480565) (= lt!480565 lt!480560))))

(declare-fun lt!480559 () ListLongMap!14897)

(declare-fun k!904 () (_ BitVec 64))

(declare-fun -!746 (ListLongMap!14897 (_ BitVec 64)) ListLongMap!14897)

(assert (=> b!1084226 (= lt!480565 (-!746 lt!480559 k!904))))

(declare-datatypes ((Unit!35607 0))(
  ( (Unit!35608) )
))
(declare-fun lt!480563 () Unit!35607)

(declare-fun _values!874 () array!69862)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!29 (array!69860 array!69862 (_ BitVec 32) (_ BitVec 32) V!40433 V!40433 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!35607)

(assert (=> b!1084226 (= lt!480563 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!29 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 i!650 k!904 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun getCurrentListMapNoExtraKeys!3975 (array!69860 array!69862 (_ BitVec 32) (_ BitVec 32) V!40433 V!40433 (_ BitVec 32) Int) ListLongMap!14897)

(assert (=> b!1084226 (= lt!480560 (getCurrentListMapNoExtraKeys!3975 lt!480566 lt!480562 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun dynLambda!2111 (Int (_ BitVec 64)) V!40433)

(assert (=> b!1084226 (= lt!480562 (array!69863 (store (arr!33601 _values!874) i!650 (ValueCellFull!12530 (dynLambda!2111 defaultEntry!882 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!34138 _values!874)))))

(assert (=> b!1084226 (= lt!480559 (getCurrentListMapNoExtraKeys!3975 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun arrayContainsKey!0 (array!69860 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1084226 (arrayContainsKey!0 _keys!1070 k!904 #b00000000000000000000000000000000)))

(declare-fun lt!480564 () Unit!35607)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!69860 (_ BitVec 64) (_ BitVec 32)) Unit!35607)

(assert (=> b!1084226 (= lt!480564 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1070 k!904 i!650))))

(declare-fun b!1084227 () Bool)

(declare-fun res!722898 () Bool)

(assert (=> b!1084227 (=> (not res!722898) (not e!619489))))

(declare-datatypes ((List!23559 0))(
  ( (Nil!23556) (Cons!23555 (h!24764 (_ BitVec 64)) (t!33101 List!23559)) )
))
(declare-fun arrayNoDuplicates!0 (array!69860 (_ BitVec 32) List!23559) Bool)

(assert (=> b!1084227 (= res!722898 (arrayNoDuplicates!0 _keys!1070 #b00000000000000000000000000000000 Nil!23556))))

(declare-fun b!1084228 () Bool)

(declare-fun res!722896 () Bool)

(assert (=> b!1084228 (=> (not res!722896) (not e!619489))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!69860 (_ BitVec 32)) Bool)

(assert (=> b!1084228 (= res!722896 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1070 mask!1414))))

(declare-fun b!1084229 () Bool)

(declare-fun e!619484 () Bool)

(declare-fun tp_is_empty!26479 () Bool)

(assert (=> b!1084229 (= e!619484 tp_is_empty!26479)))

(declare-fun b!1084230 () Bool)

(assert (=> b!1084230 (= e!619489 e!619488)))

(declare-fun res!722901 () Bool)

(assert (=> b!1084230 (=> (not res!722901) (not e!619488))))

(assert (=> b!1084230 (= res!722901 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!480566 mask!1414))))

(assert (=> b!1084230 (= lt!480566 (array!69861 (store (arr!33600 _keys!1070) i!650 #b1000000000000000000000000000000000000000000000000000000000000000) (size!34137 _keys!1070)))))

(declare-fun b!1084231 () Bool)

(declare-fun e!619485 () Bool)

(assert (=> b!1084231 (= e!619485 tp_is_empty!26479)))

(declare-fun b!1084233 () Bool)

(declare-fun res!722897 () Bool)

(assert (=> b!1084233 (=> (not res!722897) (not e!619489))))

(assert (=> b!1084233 (= res!722897 (= (select (arr!33600 _keys!1070) i!650) k!904))))

(declare-fun b!1084234 () Bool)

(declare-fun res!722902 () Bool)

(assert (=> b!1084234 (=> (not res!722902) (not e!619489))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1084234 (= res!722902 (validKeyInArray!0 k!904))))

(declare-fun b!1084235 () Bool)

(declare-fun res!722903 () Bool)

(assert (=> b!1084235 (=> (not res!722903) (not e!619488))))

(assert (=> b!1084235 (= res!722903 (arrayNoDuplicates!0 lt!480566 #b00000000000000000000000000000000 Nil!23556))))

(declare-fun b!1084232 () Bool)

(declare-fun res!722899 () Bool)

(assert (=> b!1084232 (=> (not res!722899) (not e!619489))))

(assert (=> b!1084232 (= res!722899 (and (= (size!34138 _values!874) (bvadd #b00000000000000000000000000000001 mask!1414)) (= (size!34137 _keys!1070) (size!34138 _values!874)) (bvsge mask!1414 #b00000000000000000000000000000000) (bvsge extraKeys!811 #b00000000000000000000000000000000) (bvsle extraKeys!811 #b00000000000000000000000000000011)))))

(declare-fun res!722895 () Bool)

(assert (=> start!95860 (=> (not res!722895) (not e!619489))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!95860 (= res!722895 (validMask!0 mask!1414))))

(assert (=> start!95860 e!619489))

(assert (=> start!95860 tp!79280))

(assert (=> start!95860 true))

(assert (=> start!95860 tp_is_empty!26479))

(declare-fun array_inv!25782 (array!69860) Bool)

(assert (=> start!95860 (array_inv!25782 _keys!1070)))

(declare-fun e!619487 () Bool)

(declare-fun array_inv!25783 (array!69862) Bool)

(assert (=> start!95860 (and (array_inv!25783 _values!874) e!619487)))

(declare-fun b!1084236 () Bool)

(assert (=> b!1084236 (= e!619487 (and e!619484 mapRes!41473))))

(declare-fun condMapEmpty!41473 () Bool)

(declare-fun mapDefault!41473 () ValueCell!12530)

