; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!96870 () Bool)

(assert start!96870)

(declare-fun b_free!23177 () Bool)

(declare-fun b_next!23177 () Bool)

(assert (=> start!96870 (= b_free!23177 (not b_next!23177))))

(declare-fun tp!81486 () Bool)

(declare-fun b_and!37161 () Bool)

(assert (=> start!96870 (= tp!81486 b_and!37161)))

(declare-fun b!1101512 () Bool)

(declare-fun res!735095 () Bool)

(declare-fun e!628755 () Bool)

(assert (=> b!1101512 (=> (not res!735095) (not e!628755))))

(declare-fun i!650 () (_ BitVec 32))

(declare-datatypes ((array!71326 0))(
  ( (array!71327 (arr!34322 (Array (_ BitVec 32) (_ BitVec 64))) (size!34859 (_ BitVec 32))) )
))
(declare-fun _keys!1070 () array!71326)

(assert (=> b!1101512 (= res!735095 (and (bvsge i!650 #b00000000000000000000000000000000) (bvslt i!650 (size!34859 _keys!1070))))))

(declare-fun b!1101514 () Bool)

(declare-fun e!628758 () Bool)

(declare-fun e!628756 () Bool)

(assert (=> b!1101514 (= e!628758 (not e!628756))))

(declare-fun res!735090 () Bool)

(assert (=> b!1101514 (=> res!735090 e!628756)))

(declare-fun extraKeys!811 () (_ BitVec 32))

(assert (=> b!1101514 (= res!735090 (or (not (= (bvand extraKeys!811 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeys!811 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun defaultEntry!882 () Int)

(declare-datatypes ((V!41429 0))(
  ( (V!41430 (val!13670 Int)) )
))
(declare-fun minValue!831 () V!41429)

(declare-fun mask!1414 () (_ BitVec 32))

(declare-datatypes ((tuple2!17450 0))(
  ( (tuple2!17451 (_1!8735 (_ BitVec 64)) (_2!8735 V!41429)) )
))
(declare-datatypes ((List!24121 0))(
  ( (Nil!24118) (Cons!24117 (h!25326 tuple2!17450) (t!34351 List!24121)) )
))
(declare-datatypes ((ListLongMap!15431 0))(
  ( (ListLongMap!15432 (toList!7731 List!24121)) )
))
(declare-fun lt!493880 () ListLongMap!15431)

(declare-fun zeroValue!831 () V!41429)

(declare-datatypes ((ValueCell!12904 0))(
  ( (ValueCellFull!12904 (v!16301 V!41429)) (EmptyCell!12904) )
))
(declare-datatypes ((array!71328 0))(
  ( (array!71329 (arr!34323 (Array (_ BitVec 32) ValueCell!12904)) (size!34860 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!71328)

(declare-fun getCurrentListMap!4416 (array!71326 array!71328 (_ BitVec 32) (_ BitVec 32) V!41429 V!41429 (_ BitVec 32) Int) ListLongMap!15431)

(assert (=> b!1101514 (= lt!493880 (getCurrentListMap!4416 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun lt!493885 () ListLongMap!15431)

(declare-fun lt!493884 () array!71328)

(declare-fun lt!493879 () array!71326)

(assert (=> b!1101514 (= lt!493885 (getCurrentListMap!4416 lt!493879 lt!493884 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun lt!493878 () ListLongMap!15431)

(declare-fun lt!493883 () ListLongMap!15431)

(assert (=> b!1101514 (and (= lt!493878 lt!493883) (= lt!493883 lt!493878))))

(declare-fun lt!493882 () ListLongMap!15431)

(declare-fun k!904 () (_ BitVec 64))

(declare-fun -!968 (ListLongMap!15431 (_ BitVec 64)) ListLongMap!15431)

(assert (=> b!1101514 (= lt!493883 (-!968 lt!493882 k!904))))

(declare-datatypes ((Unit!36133 0))(
  ( (Unit!36134) )
))
(declare-fun lt!493876 () Unit!36133)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!228 (array!71326 array!71328 (_ BitVec 32) (_ BitVec 32) V!41429 V!41429 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!36133)

(assert (=> b!1101514 (= lt!493876 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!228 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 i!650 k!904 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun getCurrentListMapNoExtraKeys!4203 (array!71326 array!71328 (_ BitVec 32) (_ BitVec 32) V!41429 V!41429 (_ BitVec 32) Int) ListLongMap!15431)

(assert (=> b!1101514 (= lt!493878 (getCurrentListMapNoExtraKeys!4203 lt!493879 lt!493884 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun dynLambda!2334 (Int (_ BitVec 64)) V!41429)

(assert (=> b!1101514 (= lt!493884 (array!71329 (store (arr!34323 _values!874) i!650 (ValueCellFull!12904 (dynLambda!2334 defaultEntry!882 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!34860 _values!874)))))

(assert (=> b!1101514 (= lt!493882 (getCurrentListMapNoExtraKeys!4203 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun arrayContainsKey!0 (array!71326 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1101514 (arrayContainsKey!0 _keys!1070 k!904 #b00000000000000000000000000000000)))

(declare-fun lt!493881 () Unit!36133)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!71326 (_ BitVec 64) (_ BitVec 32)) Unit!36133)

(assert (=> b!1101514 (= lt!493881 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1070 k!904 i!650))))

(declare-fun b!1101515 () Bool)

(declare-fun res!735094 () Bool)

(assert (=> b!1101515 (=> (not res!735094) (not e!628755))))

(declare-datatypes ((List!24122 0))(
  ( (Nil!24119) (Cons!24118 (h!25327 (_ BitVec 64)) (t!34352 List!24122)) )
))
(declare-fun arrayNoDuplicates!0 (array!71326 (_ BitVec 32) List!24122) Bool)

(assert (=> b!1101515 (= res!735094 (arrayNoDuplicates!0 _keys!1070 #b00000000000000000000000000000000 Nil!24119))))

(declare-fun b!1101516 () Bool)

(declare-fun e!628762 () Bool)

(declare-fun tp_is_empty!27227 () Bool)

(assert (=> b!1101516 (= e!628762 tp_is_empty!27227)))

(declare-fun b!1101517 () Bool)

(assert (=> b!1101517 (= e!628756 (not (= #b1000000000000000000000000000000000000000000000000000000000000000 k!904)))))

(declare-fun e!628757 () Bool)

(assert (=> b!1101517 e!628757))

(declare-fun res!735096 () Bool)

(assert (=> b!1101517 (=> (not res!735096) (not e!628757))))

(declare-fun lt!493877 () tuple2!17450)

(declare-fun +!3363 (ListLongMap!15431 tuple2!17450) ListLongMap!15431)

(assert (=> b!1101517 (= res!735096 (= lt!493885 (+!3363 lt!493878 lt!493877)))))

(assert (=> b!1101517 (= lt!493877 (tuple2!17451 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!831))))

(declare-fun b!1101518 () Bool)

(declare-fun res!735091 () Bool)

(assert (=> b!1101518 (=> (not res!735091) (not e!628755))))

(assert (=> b!1101518 (= res!735091 (and (= (size!34860 _values!874) (bvadd #b00000000000000000000000000000001 mask!1414)) (= (size!34859 _keys!1070) (size!34860 _values!874)) (bvsge mask!1414 #b00000000000000000000000000000000) (bvsge extraKeys!811 #b00000000000000000000000000000000) (bvsle extraKeys!811 #b00000000000000000000000000000011)))))

(declare-fun b!1101519 () Bool)

(declare-fun res!735100 () Bool)

(assert (=> b!1101519 (=> (not res!735100) (not e!628755))))

(assert (=> b!1101519 (= res!735100 (= (select (arr!34322 _keys!1070) i!650) k!904))))

(declare-fun mapNonEmpty!42628 () Bool)

(declare-fun mapRes!42628 () Bool)

(declare-fun tp!81485 () Bool)

(declare-fun e!628761 () Bool)

(assert (=> mapNonEmpty!42628 (= mapRes!42628 (and tp!81485 e!628761))))

(declare-fun mapValue!42628 () ValueCell!12904)

(declare-fun mapKey!42628 () (_ BitVec 32))

(declare-fun mapRest!42628 () (Array (_ BitVec 32) ValueCell!12904))

(assert (=> mapNonEmpty!42628 (= (arr!34323 _values!874) (store mapRest!42628 mapKey!42628 mapValue!42628))))

(declare-fun b!1101520 () Bool)

(assert (=> b!1101520 (= e!628761 tp_is_empty!27227)))

(declare-fun b!1101521 () Bool)

(declare-fun e!628759 () Bool)

(assert (=> b!1101521 (= e!628759 (and e!628762 mapRes!42628))))

(declare-fun condMapEmpty!42628 () Bool)

(declare-fun mapDefault!42628 () ValueCell!12904)

