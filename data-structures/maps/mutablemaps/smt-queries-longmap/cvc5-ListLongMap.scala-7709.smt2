; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!96898 () Bool)

(assert start!96898)

(declare-fun b_free!23179 () Bool)

(declare-fun b_next!23179 () Bool)

(assert (=> start!96898 (= b_free!23179 (not b_next!23179))))

(declare-fun tp!81495 () Bool)

(declare-fun b_and!37179 () Bool)

(assert (=> start!96898 (= tp!81495 b_and!37179)))

(declare-fun b!1101758 () Bool)

(declare-fun res!735215 () Bool)

(declare-fun e!628916 () Bool)

(assert (=> b!1101758 (=> (not res!735215) (not e!628916))))

(declare-datatypes ((array!71332 0))(
  ( (array!71333 (arr!34324 (Array (_ BitVec 32) (_ BitVec 64))) (size!34861 (_ BitVec 32))) )
))
(declare-fun lt!494079 () array!71332)

(declare-datatypes ((List!24123 0))(
  ( (Nil!24120) (Cons!24119 (h!25328 (_ BitVec 64)) (t!34355 List!24123)) )
))
(declare-fun arrayNoDuplicates!0 (array!71332 (_ BitVec 32) List!24123) Bool)

(assert (=> b!1101758 (= res!735215 (arrayNoDuplicates!0 lt!494079 #b00000000000000000000000000000000 Nil!24120))))

(declare-fun b!1101759 () Bool)

(declare-fun res!735221 () Bool)

(declare-fun e!628917 () Bool)

(assert (=> b!1101759 (=> (not res!735221) (not e!628917))))

(declare-fun _keys!1070 () array!71332)

(declare-fun k!904 () (_ BitVec 64))

(declare-fun i!650 () (_ BitVec 32))

(assert (=> b!1101759 (= res!735221 (= (select (arr!34324 _keys!1070) i!650) k!904))))

(declare-fun b!1101760 () Bool)

(declare-fun e!628914 () Bool)

(declare-fun e!628912 () Bool)

(assert (=> b!1101760 (= e!628914 e!628912)))

(declare-fun res!735222 () Bool)

(assert (=> b!1101760 (=> res!735222 e!628912)))

(assert (=> b!1101760 (= res!735222 (= #b1000000000000000000000000000000000000000000000000000000000000000 k!904))))

(declare-datatypes ((V!41433 0))(
  ( (V!41434 (val!13671 Int)) )
))
(declare-datatypes ((tuple2!17452 0))(
  ( (tuple2!17453 (_1!8736 (_ BitVec 64)) (_2!8736 V!41433)) )
))
(declare-datatypes ((List!24124 0))(
  ( (Nil!24121) (Cons!24120 (h!25329 tuple2!17452) (t!34356 List!24124)) )
))
(declare-datatypes ((ListLongMap!15433 0))(
  ( (ListLongMap!15434 (toList!7732 List!24124)) )
))
(declare-fun lt!494069 () ListLongMap!15433)

(declare-fun lt!494081 () ListLongMap!15433)

(assert (=> b!1101760 (= lt!494069 lt!494081)))

(declare-fun lt!494073 () ListLongMap!15433)

(declare-fun lt!494076 () tuple2!17452)

(declare-fun +!3364 (ListLongMap!15433 tuple2!17452) ListLongMap!15433)

(assert (=> b!1101760 (= lt!494081 (+!3364 lt!494073 lt!494076))))

(declare-fun lt!494075 () ListLongMap!15433)

(declare-fun lt!494071 () ListLongMap!15433)

(assert (=> b!1101760 (= lt!494075 lt!494071)))

(declare-fun lt!494070 () ListLongMap!15433)

(assert (=> b!1101760 (= lt!494071 (+!3364 lt!494070 lt!494076))))

(declare-fun lt!494077 () ListLongMap!15433)

(assert (=> b!1101760 (= lt!494075 (+!3364 lt!494077 lt!494076))))

(declare-fun minValue!831 () V!41433)

(assert (=> b!1101760 (= lt!494076 (tuple2!17453 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!831))))

(declare-fun b!1101761 () Bool)

(declare-fun e!628913 () Bool)

(declare-fun tp_is_empty!27229 () Bool)

(assert (=> b!1101761 (= e!628913 tp_is_empty!27229)))

(declare-fun b!1101762 () Bool)

(declare-fun res!735217 () Bool)

(assert (=> b!1101762 (=> (not res!735217) (not e!628917))))

(declare-fun mask!1414 () (_ BitVec 32))

(declare-fun extraKeys!811 () (_ BitVec 32))

(declare-datatypes ((ValueCell!12905 0))(
  ( (ValueCellFull!12905 (v!16303 V!41433)) (EmptyCell!12905) )
))
(declare-datatypes ((array!71334 0))(
  ( (array!71335 (arr!34325 (Array (_ BitVec 32) ValueCell!12905)) (size!34862 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!71334)

(assert (=> b!1101762 (= res!735217 (and (= (size!34862 _values!874) (bvadd #b00000000000000000000000000000001 mask!1414)) (= (size!34861 _keys!1070) (size!34862 _values!874)) (bvsge mask!1414 #b00000000000000000000000000000000) (bvsge extraKeys!811 #b00000000000000000000000000000000) (bvsle extraKeys!811 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!42634 () Bool)

(declare-fun mapRes!42634 () Bool)

(declare-fun tp!81494 () Bool)

(assert (=> mapNonEmpty!42634 (= mapRes!42634 (and tp!81494 e!628913))))

(declare-fun mapKey!42634 () (_ BitVec 32))

(declare-fun mapValue!42634 () ValueCell!12905)

(declare-fun mapRest!42634 () (Array (_ BitVec 32) ValueCell!12905))

(assert (=> mapNonEmpty!42634 (= (arr!34325 _values!874) (store mapRest!42634 mapKey!42634 mapValue!42634))))

(declare-fun b!1101763 () Bool)

(declare-fun e!628911 () Bool)

(assert (=> b!1101763 (= e!628911 tp_is_empty!27229)))

(declare-fun mapIsEmpty!42634 () Bool)

(assert (=> mapIsEmpty!42634 mapRes!42634))

(declare-fun res!735216 () Bool)

(assert (=> start!96898 (=> (not res!735216) (not e!628917))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!96898 (= res!735216 (validMask!0 mask!1414))))

(assert (=> start!96898 e!628917))

(assert (=> start!96898 tp!81495))

(assert (=> start!96898 true))

(assert (=> start!96898 tp_is_empty!27229))

(declare-fun array_inv!26294 (array!71332) Bool)

(assert (=> start!96898 (array_inv!26294 _keys!1070)))

(declare-fun e!628915 () Bool)

(declare-fun array_inv!26295 (array!71334) Bool)

(assert (=> start!96898 (and (array_inv!26295 _values!874) e!628915)))

(declare-fun b!1101764 () Bool)

(assert (=> b!1101764 (= e!628916 (not e!628914))))

(declare-fun res!735223 () Bool)

(assert (=> b!1101764 (=> res!735223 e!628914)))

(assert (=> b!1101764 (= res!735223 (or (not (= (bvand extraKeys!811 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeys!811 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun defaultEntry!882 () Int)

(declare-fun zeroValue!831 () V!41433)

(declare-fun getCurrentListMap!4417 (array!71332 array!71334 (_ BitVec 32) (_ BitVec 32) V!41433 V!41433 (_ BitVec 32) Int) ListLongMap!15433)

(assert (=> b!1101764 (= lt!494069 (getCurrentListMap!4417 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun lt!494078 () array!71334)

(assert (=> b!1101764 (= lt!494075 (getCurrentListMap!4417 lt!494079 lt!494078 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(assert (=> b!1101764 (and (= lt!494077 lt!494070) (= lt!494070 lt!494077))))

(declare-fun -!969 (ListLongMap!15433 (_ BitVec 64)) ListLongMap!15433)

(assert (=> b!1101764 (= lt!494070 (-!969 lt!494073 k!904))))

(declare-datatypes ((Unit!36137 0))(
  ( (Unit!36138) )
))
(declare-fun lt!494080 () Unit!36137)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!229 (array!71332 array!71334 (_ BitVec 32) (_ BitVec 32) V!41433 V!41433 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!36137)

(assert (=> b!1101764 (= lt!494080 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!229 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 i!650 k!904 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun getCurrentListMapNoExtraKeys!4204 (array!71332 array!71334 (_ BitVec 32) (_ BitVec 32) V!41433 V!41433 (_ BitVec 32) Int) ListLongMap!15433)

(assert (=> b!1101764 (= lt!494077 (getCurrentListMapNoExtraKeys!4204 lt!494079 lt!494078 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun dynLambda!2335 (Int (_ BitVec 64)) V!41433)

(assert (=> b!1101764 (= lt!494078 (array!71335 (store (arr!34325 _values!874) i!650 (ValueCellFull!12905 (dynLambda!2335 defaultEntry!882 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!34862 _values!874)))))

(assert (=> b!1101764 (= lt!494073 (getCurrentListMapNoExtraKeys!4204 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun arrayContainsKey!0 (array!71332 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1101764 (arrayContainsKey!0 _keys!1070 k!904 #b00000000000000000000000000000000)))

(declare-fun lt!494074 () Unit!36137)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!71332 (_ BitVec 64) (_ BitVec 32)) Unit!36137)

(assert (=> b!1101764 (= lt!494074 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1070 k!904 i!650))))

(declare-fun b!1101765 () Bool)

(declare-fun res!735218 () Bool)

(assert (=> b!1101765 (=> (not res!735218) (not e!628917))))

(assert (=> b!1101765 (= res!735218 (arrayNoDuplicates!0 _keys!1070 #b00000000000000000000000000000000 Nil!24120))))

(declare-fun b!1101766 () Bool)

(assert (=> b!1101766 (= e!628917 e!628916)))

(declare-fun res!735219 () Bool)

(assert (=> b!1101766 (=> (not res!735219) (not e!628916))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!71332 (_ BitVec 32)) Bool)

(assert (=> b!1101766 (= res!735219 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!494079 mask!1414))))

(assert (=> b!1101766 (= lt!494079 (array!71333 (store (arr!34324 _keys!1070) i!650 #b1000000000000000000000000000000000000000000000000000000000000000) (size!34861 _keys!1070)))))

(declare-fun b!1101767 () Bool)

(declare-fun res!735225 () Bool)

(assert (=> b!1101767 (=> (not res!735225) (not e!628917))))

(assert (=> b!1101767 (= res!735225 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1070 mask!1414))))

(declare-fun b!1101768 () Bool)

(declare-fun res!735224 () Bool)

(assert (=> b!1101768 (=> (not res!735224) (not e!628917))))

(assert (=> b!1101768 (= res!735224 (and (bvsge i!650 #b00000000000000000000000000000000) (bvslt i!650 (size!34861 _keys!1070))))))

(declare-fun b!1101769 () Bool)

(declare-fun res!735220 () Bool)

(assert (=> b!1101769 (=> (not res!735220) (not e!628917))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1101769 (= res!735220 (validKeyInArray!0 k!904))))

(declare-fun b!1101770 () Bool)

(assert (=> b!1101770 (= e!628915 (and e!628911 mapRes!42634))))

(declare-fun condMapEmpty!42634 () Bool)

(declare-fun mapDefault!42634 () ValueCell!12905)

