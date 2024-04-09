; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!96128 () Bool)

(assert start!96128)

(declare-fun b_free!22745 () Bool)

(declare-fun b_next!22745 () Bool)

(assert (=> start!96128 (= b_free!22745 (not b_next!22745))))

(declare-fun tp!80084 () Bool)

(declare-fun b_and!36183 () Bool)

(assert (=> start!96128 (= tp!80084 b_and!36183)))

(declare-fun b!1090089 () Bool)

(declare-fun res!727289 () Bool)

(declare-fun e!622647 () Bool)

(assert (=> b!1090089 (=> (not res!727289) (not e!622647))))

(declare-fun mask!1414 () (_ BitVec 32))

(declare-fun extraKeys!811 () (_ BitVec 32))

(declare-datatypes ((array!70382 0))(
  ( (array!70383 (arr!33861 (Array (_ BitVec 32) (_ BitVec 64))) (size!34398 (_ BitVec 32))) )
))
(declare-fun _keys!1070 () array!70382)

(declare-datatypes ((V!40789 0))(
  ( (V!40790 (val!13430 Int)) )
))
(declare-datatypes ((ValueCell!12664 0))(
  ( (ValueCellFull!12664 (v!16052 V!40789)) (EmptyCell!12664) )
))
(declare-datatypes ((array!70384 0))(
  ( (array!70385 (arr!33862 (Array (_ BitVec 32) ValueCell!12664)) (size!34399 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!70384)

(assert (=> b!1090089 (= res!727289 (and (= (size!34399 _values!874) (bvadd #b00000000000000000000000000000001 mask!1414)) (= (size!34398 _keys!1070) (size!34399 _values!874)) (bvsge mask!1414 #b00000000000000000000000000000000) (bvsge extraKeys!811 #b00000000000000000000000000000000) (bvsle extraKeys!811 #b00000000000000000000000000000011)))))

(declare-fun b!1090090 () Bool)

(declare-fun e!622642 () Bool)

(declare-fun tp_is_empty!26747 () Bool)

(assert (=> b!1090090 (= e!622642 tp_is_empty!26747)))

(declare-fun mapNonEmpty!41875 () Bool)

(declare-fun mapRes!41875 () Bool)

(declare-fun tp!80085 () Bool)

(assert (=> mapNonEmpty!41875 (= mapRes!41875 (and tp!80085 e!622642))))

(declare-fun mapRest!41875 () (Array (_ BitVec 32) ValueCell!12664))

(declare-fun mapValue!41875 () ValueCell!12664)

(declare-fun mapKey!41875 () (_ BitVec 32))

(assert (=> mapNonEmpty!41875 (= (arr!33862 _values!874) (store mapRest!41875 mapKey!41875 mapValue!41875))))

(declare-fun b!1090092 () Bool)

(declare-fun res!727288 () Bool)

(assert (=> b!1090092 (=> (not res!727288) (not e!622647))))

(declare-fun k!904 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1090092 (= res!727288 (validKeyInArray!0 k!904))))

(declare-fun mapIsEmpty!41875 () Bool)

(assert (=> mapIsEmpty!41875 mapRes!41875))

(declare-fun b!1090093 () Bool)

(declare-fun e!622643 () Bool)

(declare-fun e!622646 () Bool)

(assert (=> b!1090093 (= e!622643 (not e!622646))))

(declare-fun res!727294 () Bool)

(assert (=> b!1090093 (=> res!727294 e!622646)))

(assert (=> b!1090093 (= res!727294 (or (not (= (bvand extraKeys!811 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeys!811 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun defaultEntry!882 () Int)

(declare-fun minValue!831 () V!40789)

(declare-fun zeroValue!831 () V!40789)

(declare-datatypes ((tuple2!17142 0))(
  ( (tuple2!17143 (_1!8581 (_ BitVec 64)) (_2!8581 V!40789)) )
))
(declare-datatypes ((List!23781 0))(
  ( (Nil!23778) (Cons!23777 (h!24986 tuple2!17142) (t!33591 List!23781)) )
))
(declare-datatypes ((ListLongMap!15123 0))(
  ( (ListLongMap!15124 (toList!7577 List!23781)) )
))
(declare-fun lt!486250 () ListLongMap!15123)

(declare-fun getCurrentListMap!4318 (array!70382 array!70384 (_ BitVec 32) (_ BitVec 32) V!40789 V!40789 (_ BitVec 32) Int) ListLongMap!15123)

(assert (=> b!1090093 (= lt!486250 (getCurrentListMap!4318 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun lt!486251 () array!70382)

(declare-fun lt!486256 () ListLongMap!15123)

(declare-fun lt!486246 () array!70384)

(assert (=> b!1090093 (= lt!486256 (getCurrentListMap!4318 lt!486251 lt!486246 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun lt!486248 () ListLongMap!15123)

(declare-fun lt!486247 () ListLongMap!15123)

(assert (=> b!1090093 (and (= lt!486248 lt!486247) (= lt!486247 lt!486248))))

(declare-fun lt!486253 () ListLongMap!15123)

(declare-fun -!855 (ListLongMap!15123 (_ BitVec 64)) ListLongMap!15123)

(assert (=> b!1090093 (= lt!486247 (-!855 lt!486253 k!904))))

(declare-fun i!650 () (_ BitVec 32))

(declare-datatypes ((Unit!35825 0))(
  ( (Unit!35826) )
))
(declare-fun lt!486249 () Unit!35825)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!124 (array!70382 array!70384 (_ BitVec 32) (_ BitVec 32) V!40789 V!40789 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!35825)

(assert (=> b!1090093 (= lt!486249 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!124 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 i!650 k!904 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun getCurrentListMapNoExtraKeys!4070 (array!70382 array!70384 (_ BitVec 32) (_ BitVec 32) V!40789 V!40789 (_ BitVec 32) Int) ListLongMap!15123)

(assert (=> b!1090093 (= lt!486248 (getCurrentListMapNoExtraKeys!4070 lt!486251 lt!486246 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun dynLambda!2206 (Int (_ BitVec 64)) V!40789)

(assert (=> b!1090093 (= lt!486246 (array!70385 (store (arr!33862 _values!874) i!650 (ValueCellFull!12664 (dynLambda!2206 defaultEntry!882 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!34399 _values!874)))))

(assert (=> b!1090093 (= lt!486253 (getCurrentListMapNoExtraKeys!4070 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun arrayContainsKey!0 (array!70382 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1090093 (arrayContainsKey!0 _keys!1070 k!904 #b00000000000000000000000000000000)))

(declare-fun lt!486245 () Unit!35825)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!70382 (_ BitVec 64) (_ BitVec 32)) Unit!35825)

(assert (=> b!1090093 (= lt!486245 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1070 k!904 i!650))))

(declare-fun b!1090094 () Bool)

(assert (=> b!1090094 (= e!622647 e!622643)))

(declare-fun res!727292 () Bool)

(assert (=> b!1090094 (=> (not res!727292) (not e!622643))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!70382 (_ BitVec 32)) Bool)

(assert (=> b!1090094 (= res!727292 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!486251 mask!1414))))

(assert (=> b!1090094 (= lt!486251 (array!70383 (store (arr!33861 _keys!1070) i!650 #b1000000000000000000000000000000000000000000000000000000000000000) (size!34398 _keys!1070)))))

(declare-fun b!1090095 () Bool)

(declare-fun e!622645 () Bool)

(assert (=> b!1090095 (= e!622645 true)))

(declare-fun lt!486254 () ListLongMap!15123)

(declare-fun lt!486252 () ListLongMap!15123)

(assert (=> b!1090095 (= (-!855 lt!486254 k!904) lt!486252)))

(declare-fun lt!486257 () Unit!35825)

(declare-fun addRemoveCommutativeForDiffKeys!84 (ListLongMap!15123 (_ BitVec 64) V!40789 (_ BitVec 64)) Unit!35825)

(assert (=> b!1090095 (= lt!486257 (addRemoveCommutativeForDiffKeys!84 lt!486253 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!831 k!904))))

(declare-fun b!1090096 () Bool)

(declare-fun res!727285 () Bool)

(assert (=> b!1090096 (=> (not res!727285) (not e!622647))))

(assert (=> b!1090096 (= res!727285 (and (bvsge i!650 #b00000000000000000000000000000000) (bvslt i!650 (size!34398 _keys!1070))))))

(declare-fun b!1090091 () Bool)

(declare-fun res!727291 () Bool)

(assert (=> b!1090091 (=> (not res!727291) (not e!622647))))

(assert (=> b!1090091 (= res!727291 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1070 mask!1414))))

(declare-fun res!727293 () Bool)

(assert (=> start!96128 (=> (not res!727293) (not e!622647))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!96128 (= res!727293 (validMask!0 mask!1414))))

(assert (=> start!96128 e!622647))

(assert (=> start!96128 tp!80084))

(assert (=> start!96128 true))

(assert (=> start!96128 tp_is_empty!26747))

(declare-fun array_inv!25972 (array!70382) Bool)

(assert (=> start!96128 (array_inv!25972 _keys!1070)))

(declare-fun e!622641 () Bool)

(declare-fun array_inv!25973 (array!70384) Bool)

(assert (=> start!96128 (and (array_inv!25973 _values!874) e!622641)))

(declare-fun b!1090097 () Bool)

(declare-fun res!727295 () Bool)

(assert (=> b!1090097 (=> (not res!727295) (not e!622647))))

(declare-datatypes ((List!23782 0))(
  ( (Nil!23779) (Cons!23778 (h!24987 (_ BitVec 64)) (t!33592 List!23782)) )
))
(declare-fun arrayNoDuplicates!0 (array!70382 (_ BitVec 32) List!23782) Bool)

(assert (=> b!1090097 (= res!727295 (arrayNoDuplicates!0 _keys!1070 #b00000000000000000000000000000000 Nil!23779))))

(declare-fun b!1090098 () Bool)

(declare-fun res!727290 () Bool)

(assert (=> b!1090098 (=> (not res!727290) (not e!622647))))

(assert (=> b!1090098 (= res!727290 (= (select (arr!33861 _keys!1070) i!650) k!904))))

(declare-fun b!1090099 () Bool)

(declare-fun e!622648 () Bool)

(assert (=> b!1090099 (= e!622641 (and e!622648 mapRes!41875))))

(declare-fun condMapEmpty!41875 () Bool)

(declare-fun mapDefault!41875 () ValueCell!12664)

