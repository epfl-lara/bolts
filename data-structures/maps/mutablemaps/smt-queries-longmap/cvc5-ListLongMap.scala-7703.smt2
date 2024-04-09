; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!96784 () Bool)

(assert start!96784)

(declare-fun b_free!23143 () Bool)

(declare-fun b_next!23143 () Bool)

(assert (=> start!96784 (= b_free!23143 (not b_next!23143))))

(declare-fun tp!81378 () Bool)

(declare-fun b_and!37065 () Bool)

(assert (=> start!96784 (= tp!81378 b_and!37065)))

(declare-fun b!1100376 () Bool)

(declare-fun res!734370 () Bool)

(declare-fun e!628111 () Bool)

(assert (=> b!1100376 (=> (not res!734370) (not e!628111))))

(declare-datatypes ((array!71254 0))(
  ( (array!71255 (arr!34288 (Array (_ BitVec 32) (_ BitVec 64))) (size!34825 (_ BitVec 32))) )
))
(declare-fun _keys!1070 () array!71254)

(declare-datatypes ((List!24092 0))(
  ( (Nil!24089) (Cons!24088 (h!25297 (_ BitVec 64)) (t!34288 List!24092)) )
))
(declare-fun arrayNoDuplicates!0 (array!71254 (_ BitVec 32) List!24092) Bool)

(assert (=> b!1100376 (= res!734370 (arrayNoDuplicates!0 _keys!1070 #b00000000000000000000000000000000 Nil!24089))))

(declare-fun b!1100377 () Bool)

(declare-fun res!734369 () Bool)

(assert (=> b!1100377 (=> (not res!734369) (not e!628111))))

(declare-fun k!904 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1100377 (= res!734369 (validKeyInArray!0 k!904))))

(declare-fun mapIsEmpty!42571 () Bool)

(declare-fun mapRes!42571 () Bool)

(assert (=> mapIsEmpty!42571 mapRes!42571))

(declare-fun b!1100378 () Bool)

(declare-fun e!628106 () Bool)

(assert (=> b!1100378 (= e!628111 e!628106)))

(declare-fun res!734368 () Bool)

(assert (=> b!1100378 (=> (not res!734368) (not e!628106))))

(declare-fun lt!493029 () array!71254)

(declare-fun mask!1414 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!71254 (_ BitVec 32)) Bool)

(assert (=> b!1100378 (= res!734368 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!493029 mask!1414))))

(declare-fun i!650 () (_ BitVec 32))

(assert (=> b!1100378 (= lt!493029 (array!71255 (store (arr!34288 _keys!1070) i!650 #b1000000000000000000000000000000000000000000000000000000000000000) (size!34825 _keys!1070)))))

(declare-fun b!1100379 () Bool)

(declare-fun res!734371 () Bool)

(assert (=> b!1100379 (=> (not res!734371) (not e!628106))))

(assert (=> b!1100379 (= res!734371 (arrayNoDuplicates!0 lt!493029 #b00000000000000000000000000000000 Nil!24089))))

(declare-fun b!1100380 () Bool)

(declare-fun e!628108 () Bool)

(assert (=> b!1100380 (= e!628106 (not e!628108))))

(declare-fun res!734365 () Bool)

(assert (=> b!1100380 (=> res!734365 e!628108)))

(declare-fun extraKeys!811 () (_ BitVec 32))

(assert (=> b!1100380 (= res!734365 (or (not (= (bvand extraKeys!811 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeys!811 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun defaultEntry!882 () Int)

(declare-datatypes ((V!41385 0))(
  ( (V!41386 (val!13653 Int)) )
))
(declare-fun minValue!831 () V!41385)

(declare-fun zeroValue!831 () V!41385)

(declare-datatypes ((tuple2!17420 0))(
  ( (tuple2!17421 (_1!8720 (_ BitVec 64)) (_2!8720 V!41385)) )
))
(declare-datatypes ((List!24093 0))(
  ( (Nil!24090) (Cons!24089 (h!25298 tuple2!17420) (t!34289 List!24093)) )
))
(declare-datatypes ((ListLongMap!15401 0))(
  ( (ListLongMap!15402 (toList!7716 List!24093)) )
))
(declare-fun lt!493031 () ListLongMap!15401)

(declare-datatypes ((ValueCell!12887 0))(
  ( (ValueCellFull!12887 (v!16282 V!41385)) (EmptyCell!12887) )
))
(declare-datatypes ((array!71256 0))(
  ( (array!71257 (arr!34289 (Array (_ BitVec 32) ValueCell!12887)) (size!34826 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!71256)

(declare-fun getCurrentListMap!4404 (array!71254 array!71256 (_ BitVec 32) (_ BitVec 32) V!41385 V!41385 (_ BitVec 32) Int) ListLongMap!15401)

(assert (=> b!1100380 (= lt!493031 (getCurrentListMap!4404 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun lt!493024 () ListLongMap!15401)

(declare-fun lt!493030 () array!71256)

(assert (=> b!1100380 (= lt!493024 (getCurrentListMap!4404 lt!493029 lt!493030 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun lt!493028 () ListLongMap!15401)

(declare-fun lt!493026 () ListLongMap!15401)

(assert (=> b!1100380 (and (= lt!493028 lt!493026) (= lt!493026 lt!493028))))

(declare-fun lt!493033 () ListLongMap!15401)

(declare-fun -!956 (ListLongMap!15401 (_ BitVec 64)) ListLongMap!15401)

(assert (=> b!1100380 (= lt!493026 (-!956 lt!493033 k!904))))

(declare-datatypes ((Unit!36105 0))(
  ( (Unit!36106) )
))
(declare-fun lt!493032 () Unit!36105)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!216 (array!71254 array!71256 (_ BitVec 32) (_ BitVec 32) V!41385 V!41385 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!36105)

(assert (=> b!1100380 (= lt!493032 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!216 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 i!650 k!904 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun getCurrentListMapNoExtraKeys!4191 (array!71254 array!71256 (_ BitVec 32) (_ BitVec 32) V!41385 V!41385 (_ BitVec 32) Int) ListLongMap!15401)

(assert (=> b!1100380 (= lt!493028 (getCurrentListMapNoExtraKeys!4191 lt!493029 lt!493030 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun dynLambda!2322 (Int (_ BitVec 64)) V!41385)

(assert (=> b!1100380 (= lt!493030 (array!71257 (store (arr!34289 _values!874) i!650 (ValueCellFull!12887 (dynLambda!2322 defaultEntry!882 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!34826 _values!874)))))

(assert (=> b!1100380 (= lt!493033 (getCurrentListMapNoExtraKeys!4191 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun arrayContainsKey!0 (array!71254 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1100380 (arrayContainsKey!0 _keys!1070 k!904 #b00000000000000000000000000000000)))

(declare-fun lt!493023 () Unit!36105)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!71254 (_ BitVec 64) (_ BitVec 32)) Unit!36105)

(assert (=> b!1100380 (= lt!493023 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1070 k!904 i!650))))

(declare-fun b!1100382 () Bool)

(declare-fun e!628112 () Bool)

(assert (=> b!1100382 (= e!628112 (bvslt i!650 (size!34826 _values!874)))))

(declare-fun lt!493022 () ListLongMap!15401)

(declare-fun lt!493021 () ListLongMap!15401)

(assert (=> b!1100382 (= (-!956 lt!493022 k!904) lt!493021)))

(declare-fun lt!493027 () Unit!36105)

(declare-fun addRemoveCommutativeForDiffKeys!132 (ListLongMap!15401 (_ BitVec 64) V!41385 (_ BitVec 64)) Unit!36105)

(assert (=> b!1100382 (= lt!493027 (addRemoveCommutativeForDiffKeys!132 lt!493033 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!831 k!904))))

(declare-fun b!1100383 () Bool)

(declare-fun e!628107 () Bool)

(declare-fun e!628110 () Bool)

(assert (=> b!1100383 (= e!628107 (and e!628110 mapRes!42571))))

(declare-fun condMapEmpty!42571 () Bool)

(declare-fun mapDefault!42571 () ValueCell!12887)

