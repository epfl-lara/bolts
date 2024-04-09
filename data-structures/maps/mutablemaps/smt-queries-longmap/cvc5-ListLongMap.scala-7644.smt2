; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!96220 () Bool)

(assert start!96220)

(declare-fun b_free!22837 () Bool)

(declare-fun b_next!22837 () Bool)

(assert (=> start!96220 (= b_free!22837 (not b_next!22837))))

(declare-fun tp!80360 () Bool)

(declare-fun b_and!36367 () Bool)

(assert (=> start!96220 (= tp!80360 b_and!36367)))

(declare-fun b!1092113 () Bool)

(declare-fun e!623750 () Bool)

(declare-fun tp_is_empty!26839 () Bool)

(assert (=> b!1092113 (= e!623750 tp_is_empty!26839)))

(declare-fun mapNonEmpty!42013 () Bool)

(declare-fun mapRes!42013 () Bool)

(declare-fun tp!80361 () Bool)

(declare-fun e!623747 () Bool)

(assert (=> mapNonEmpty!42013 (= mapRes!42013 (and tp!80361 e!623747))))

(declare-datatypes ((V!40913 0))(
  ( (V!40914 (val!13476 Int)) )
))
(declare-datatypes ((ValueCell!12710 0))(
  ( (ValueCellFull!12710 (v!16098 V!40913)) (EmptyCell!12710) )
))
(declare-datatypes ((array!70560 0))(
  ( (array!70561 (arr!33950 (Array (_ BitVec 32) ValueCell!12710)) (size!34487 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!70560)

(declare-fun mapKey!42013 () (_ BitVec 32))

(declare-fun mapValue!42013 () ValueCell!12710)

(declare-fun mapRest!42013 () (Array (_ BitVec 32) ValueCell!12710))

(assert (=> mapNonEmpty!42013 (= (arr!33950 _values!874) (store mapRest!42013 mapKey!42013 mapValue!42013))))

(declare-fun b!1092114 () Bool)

(declare-fun e!623749 () Bool)

(declare-fun e!623752 () Bool)

(assert (=> b!1092114 (= e!623749 (not e!623752))))

(declare-fun res!728804 () Bool)

(assert (=> b!1092114 (=> res!728804 e!623752)))

(declare-fun extraKeys!811 () (_ BitVec 32))

(assert (=> b!1092114 (= res!728804 (or (not (= (bvand extraKeys!811 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeys!811 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun minValue!831 () V!40913)

(declare-fun mask!1414 () (_ BitVec 32))

(declare-fun zeroValue!831 () V!40913)

(declare-datatypes ((tuple2!17218 0))(
  ( (tuple2!17219 (_1!8619 (_ BitVec 64)) (_2!8619 V!40913)) )
))
(declare-datatypes ((List!23856 0))(
  ( (Nil!23853) (Cons!23852 (h!25061 tuple2!17218) (t!33758 List!23856)) )
))
(declare-datatypes ((ListLongMap!15199 0))(
  ( (ListLongMap!15200 (toList!7615 List!23856)) )
))
(declare-fun lt!488045 () ListLongMap!15199)

(declare-fun defaultEntry!882 () Int)

(declare-datatypes ((array!70562 0))(
  ( (array!70563 (arr!33951 (Array (_ BitVec 32) (_ BitVec 64))) (size!34488 (_ BitVec 32))) )
))
(declare-fun _keys!1070 () array!70562)

(declare-fun getCurrentListMap!4350 (array!70562 array!70560 (_ BitVec 32) (_ BitVec 32) V!40913 V!40913 (_ BitVec 32) Int) ListLongMap!15199)

(assert (=> b!1092114 (= lt!488045 (getCurrentListMap!4350 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun lt!488042 () ListLongMap!15199)

(declare-fun lt!488047 () array!70560)

(declare-fun lt!488043 () array!70562)

(assert (=> b!1092114 (= lt!488042 (getCurrentListMap!4350 lt!488043 lt!488047 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun lt!488039 () ListLongMap!15199)

(declare-fun lt!488049 () ListLongMap!15199)

(assert (=> b!1092114 (and (= lt!488039 lt!488049) (= lt!488049 lt!488039))))

(declare-fun lt!488044 () ListLongMap!15199)

(declare-fun k!904 () (_ BitVec 64))

(declare-fun -!891 (ListLongMap!15199 (_ BitVec 64)) ListLongMap!15199)

(assert (=> b!1092114 (= lt!488049 (-!891 lt!488044 k!904))))

(declare-fun i!650 () (_ BitVec 32))

(declare-datatypes ((Unit!35897 0))(
  ( (Unit!35898) )
))
(declare-fun lt!488040 () Unit!35897)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!156 (array!70562 array!70560 (_ BitVec 32) (_ BitVec 32) V!40913 V!40913 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!35897)

(assert (=> b!1092114 (= lt!488040 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!156 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 i!650 k!904 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun getCurrentListMapNoExtraKeys!4102 (array!70562 array!70560 (_ BitVec 32) (_ BitVec 32) V!40913 V!40913 (_ BitVec 32) Int) ListLongMap!15199)

(assert (=> b!1092114 (= lt!488039 (getCurrentListMapNoExtraKeys!4102 lt!488043 lt!488047 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun dynLambda!2238 (Int (_ BitVec 64)) V!40913)

(assert (=> b!1092114 (= lt!488047 (array!70561 (store (arr!33950 _values!874) i!650 (ValueCellFull!12710 (dynLambda!2238 defaultEntry!882 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!34487 _values!874)))))

(assert (=> b!1092114 (= lt!488044 (getCurrentListMapNoExtraKeys!4102 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun arrayContainsKey!0 (array!70562 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1092114 (arrayContainsKey!0 _keys!1070 k!904 #b00000000000000000000000000000000)))

(declare-fun lt!488051 () Unit!35897)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!70562 (_ BitVec 64) (_ BitVec 32)) Unit!35897)

(assert (=> b!1092114 (= lt!488051 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1070 k!904 i!650))))

(declare-fun b!1092115 () Bool)

(declare-fun e!623751 () Bool)

(assert (=> b!1092115 (= e!623751 (and e!623750 mapRes!42013))))

(declare-fun condMapEmpty!42013 () Bool)

(declare-fun mapDefault!42013 () ValueCell!12710)

