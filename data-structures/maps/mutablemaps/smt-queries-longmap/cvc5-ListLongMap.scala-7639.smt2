; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!96190 () Bool)

(assert start!96190)

(declare-fun b_free!22807 () Bool)

(declare-fun b_next!22807 () Bool)

(assert (=> start!96190 (= b_free!22807 (not b_next!22807))))

(declare-fun tp!80270 () Bool)

(declare-fun b_and!36307 () Bool)

(assert (=> start!96190 (= tp!80270 b_and!36307)))

(declare-fun b!1091453 () Bool)

(declare-fun res!728315 () Bool)

(declare-fun e!623392 () Bool)

(assert (=> b!1091453 (=> (not res!728315) (not e!623392))))

(declare-fun i!650 () (_ BitVec 32))

(declare-datatypes ((array!70502 0))(
  ( (array!70503 (arr!33921 (Array (_ BitVec 32) (_ BitVec 64))) (size!34458 (_ BitVec 32))) )
))
(declare-fun _keys!1070 () array!70502)

(assert (=> b!1091453 (= res!728315 (and (bvsge i!650 #b00000000000000000000000000000000) (bvslt i!650 (size!34458 _keys!1070))))))

(declare-fun b!1091455 () Bool)

(declare-fun e!623386 () Bool)

(declare-fun e!623391 () Bool)

(assert (=> b!1091455 (= e!623386 (not e!623391))))

(declare-fun res!728318 () Bool)

(assert (=> b!1091455 (=> res!728318 e!623391)))

(declare-fun extraKeys!811 () (_ BitVec 32))

(assert (=> b!1091455 (= res!728318 (or (not (= (bvand extraKeys!811 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeys!811 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun defaultEntry!882 () Int)

(declare-datatypes ((V!40873 0))(
  ( (V!40874 (val!13461 Int)) )
))
(declare-fun minValue!831 () V!40873)

(declare-fun zeroValue!831 () V!40873)

(declare-datatypes ((ValueCell!12695 0))(
  ( (ValueCellFull!12695 (v!16083 V!40873)) (EmptyCell!12695) )
))
(declare-datatypes ((array!70504 0))(
  ( (array!70505 (arr!33922 (Array (_ BitVec 32) ValueCell!12695)) (size!34459 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!70504)

(declare-fun mask!1414 () (_ BitVec 32))

(declare-datatypes ((tuple2!17192 0))(
  ( (tuple2!17193 (_1!8606 (_ BitVec 64)) (_2!8606 V!40873)) )
))
(declare-datatypes ((List!23832 0))(
  ( (Nil!23829) (Cons!23828 (h!25037 tuple2!17192) (t!33704 List!23832)) )
))
(declare-datatypes ((ListLongMap!15173 0))(
  ( (ListLongMap!15174 (toList!7602 List!23832)) )
))
(declare-fun lt!487455 () ListLongMap!15173)

(declare-fun getCurrentListMap!4338 (array!70502 array!70504 (_ BitVec 32) (_ BitVec 32) V!40873 V!40873 (_ BitVec 32) Int) ListLongMap!15173)

(assert (=> b!1091455 (= lt!487455 (getCurrentListMap!4338 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun lt!487463 () array!70504)

(declare-fun lt!487454 () ListLongMap!15173)

(declare-fun lt!487461 () array!70502)

(assert (=> b!1091455 (= lt!487454 (getCurrentListMap!4338 lt!487461 lt!487463 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun lt!487460 () ListLongMap!15173)

(declare-fun lt!487456 () ListLongMap!15173)

(assert (=> b!1091455 (and (= lt!487460 lt!487456) (= lt!487456 lt!487460))))

(declare-fun lt!487464 () ListLongMap!15173)

(declare-fun k!904 () (_ BitVec 64))

(declare-fun -!879 (ListLongMap!15173 (_ BitVec 64)) ListLongMap!15173)

(assert (=> b!1091455 (= lt!487456 (-!879 lt!487464 k!904))))

(declare-datatypes ((Unit!35873 0))(
  ( (Unit!35874) )
))
(declare-fun lt!487459 () Unit!35873)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!144 (array!70502 array!70504 (_ BitVec 32) (_ BitVec 32) V!40873 V!40873 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!35873)

(assert (=> b!1091455 (= lt!487459 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!144 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 i!650 k!904 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun getCurrentListMapNoExtraKeys!4090 (array!70502 array!70504 (_ BitVec 32) (_ BitVec 32) V!40873 V!40873 (_ BitVec 32) Int) ListLongMap!15173)

(assert (=> b!1091455 (= lt!487460 (getCurrentListMapNoExtraKeys!4090 lt!487461 lt!487463 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun dynLambda!2226 (Int (_ BitVec 64)) V!40873)

(assert (=> b!1091455 (= lt!487463 (array!70505 (store (arr!33922 _values!874) i!650 (ValueCellFull!12695 (dynLambda!2226 defaultEntry!882 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!34459 _values!874)))))

(assert (=> b!1091455 (= lt!487464 (getCurrentListMapNoExtraKeys!4090 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun arrayContainsKey!0 (array!70502 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1091455 (arrayContainsKey!0 _keys!1070 k!904 #b00000000000000000000000000000000)))

(declare-fun lt!487465 () Unit!35873)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!70502 (_ BitVec 64) (_ BitVec 32)) Unit!35873)

(assert (=> b!1091455 (= lt!487465 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1070 k!904 i!650))))

(declare-fun b!1091456 () Bool)

(declare-fun res!728309 () Bool)

(assert (=> b!1091456 (=> (not res!728309) (not e!623392))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1091456 (= res!728309 (validKeyInArray!0 k!904))))

(declare-fun mapIsEmpty!41968 () Bool)

(declare-fun mapRes!41968 () Bool)

(assert (=> mapIsEmpty!41968 mapRes!41968))

(declare-fun b!1091457 () Bool)

(declare-fun e!623387 () Bool)

(declare-fun tp_is_empty!26809 () Bool)

(assert (=> b!1091457 (= e!623387 tp_is_empty!26809)))

(declare-fun mapNonEmpty!41968 () Bool)

(declare-fun tp!80271 () Bool)

(declare-fun e!623388 () Bool)

(assert (=> mapNonEmpty!41968 (= mapRes!41968 (and tp!80271 e!623388))))

(declare-fun mapRest!41968 () (Array (_ BitVec 32) ValueCell!12695))

(declare-fun mapKey!41968 () (_ BitVec 32))

(declare-fun mapValue!41968 () ValueCell!12695)

(assert (=> mapNonEmpty!41968 (= (arr!33922 _values!874) (store mapRest!41968 mapKey!41968 mapValue!41968))))

(declare-fun b!1091458 () Bool)

(declare-fun e!623389 () Bool)

(assert (=> b!1091458 (= e!623389 true)))

(declare-fun lt!487457 () ListLongMap!15173)

(declare-fun lt!487458 () ListLongMap!15173)

(assert (=> b!1091458 (= (-!879 lt!487457 k!904) lt!487458)))

(declare-fun lt!487466 () Unit!35873)

(declare-fun addRemoveCommutativeForDiffKeys!107 (ListLongMap!15173 (_ BitVec 64) V!40873 (_ BitVec 64)) Unit!35873)

(assert (=> b!1091458 (= lt!487466 (addRemoveCommutativeForDiffKeys!107 lt!487464 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!831 k!904))))

(declare-fun b!1091459 () Bool)

(declare-fun res!728314 () Bool)

(assert (=> b!1091459 (=> (not res!728314) (not e!623392))))

(declare-datatypes ((List!23833 0))(
  ( (Nil!23830) (Cons!23829 (h!25038 (_ BitVec 64)) (t!33705 List!23833)) )
))
(declare-fun arrayNoDuplicates!0 (array!70502 (_ BitVec 32) List!23833) Bool)

(assert (=> b!1091459 (= res!728314 (arrayNoDuplicates!0 _keys!1070 #b00000000000000000000000000000000 Nil!23830))))

(declare-fun b!1091460 () Bool)

(declare-fun e!623390 () Bool)

(assert (=> b!1091460 (= e!623390 (and e!623387 mapRes!41968))))

(declare-fun condMapEmpty!41968 () Bool)

(declare-fun mapDefault!41968 () ValueCell!12695)

