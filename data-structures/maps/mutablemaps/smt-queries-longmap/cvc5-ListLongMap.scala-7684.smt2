; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!96486 () Bool)

(assert start!96486)

(declare-fun b_free!23029 () Bool)

(declare-fun b_next!23029 () Bool)

(assert (=> start!96486 (= b_free!23029 (not b_next!23029))))

(declare-fun tp!81014 () Bool)

(declare-fun b_and!36739 () Bool)

(assert (=> start!96486 (= tp!81014 b_and!36739)))

(declare-fun b!1096586 () Bool)

(declare-fun res!731976 () Bool)

(declare-fun e!625970 () Bool)

(assert (=> b!1096586 (=> (not res!731976) (not e!625970))))

(declare-fun i!650 () (_ BitVec 32))

(declare-datatypes ((array!71018 0))(
  ( (array!71019 (arr!34177 (Array (_ BitVec 32) (_ BitVec 64))) (size!34714 (_ BitVec 32))) )
))
(declare-fun _keys!1070 () array!71018)

(assert (=> b!1096586 (= res!731976 (and (bvsge i!650 #b00000000000000000000000000000000) (bvslt i!650 (size!34714 _keys!1070))))))

(declare-fun b!1096587 () Bool)

(declare-fun e!625971 () Bool)

(assert (=> b!1096587 (= e!625971 (not true))))

(declare-fun defaultEntry!882 () Int)

(declare-fun mask!1414 () (_ BitVec 32))

(declare-fun extraKeys!811 () (_ BitVec 32))

(declare-fun lt!490190 () array!71018)

(declare-datatypes ((V!41233 0))(
  ( (V!41234 (val!13596 Int)) )
))
(declare-fun zeroValue!831 () V!41233)

(declare-datatypes ((ValueCell!12830 0))(
  ( (ValueCellFull!12830 (v!16218 V!41233)) (EmptyCell!12830) )
))
(declare-datatypes ((array!71020 0))(
  ( (array!71021 (arr!34178 (Array (_ BitVec 32) ValueCell!12830)) (size!34715 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!71020)

(declare-datatypes ((tuple2!17328 0))(
  ( (tuple2!17329 (_1!8674 (_ BitVec 64)) (_2!8674 V!41233)) )
))
(declare-datatypes ((List!24004 0))(
  ( (Nil!24001) (Cons!24000 (h!25209 tuple2!17328) (t!34086 List!24004)) )
))
(declare-datatypes ((ListLongMap!15309 0))(
  ( (ListLongMap!15310 (toList!7670 List!24004)) )
))
(declare-fun lt!490187 () ListLongMap!15309)

(declare-fun minValue!831 () V!41233)

(declare-fun getCurrentListMapNoExtraKeys!4157 (array!71018 array!71020 (_ BitVec 32) (_ BitVec 32) V!41233 V!41233 (_ BitVec 32) Int) ListLongMap!15309)

(declare-fun dynLambda!2288 (Int (_ BitVec 64)) V!41233)

(assert (=> b!1096587 (= lt!490187 (getCurrentListMapNoExtraKeys!4157 lt!490190 (array!71021 (store (arr!34178 _values!874) i!650 (ValueCellFull!12830 (dynLambda!2288 defaultEntry!882 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!34715 _values!874)) mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun lt!490188 () ListLongMap!15309)

(assert (=> b!1096587 (= lt!490188 (getCurrentListMapNoExtraKeys!4157 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun k!904 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!71018 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1096587 (arrayContainsKey!0 _keys!1070 k!904 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!36013 0))(
  ( (Unit!36014) )
))
(declare-fun lt!490189 () Unit!36013)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!71018 (_ BitVec 64) (_ BitVec 32)) Unit!36013)

(assert (=> b!1096587 (= lt!490189 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1070 k!904 i!650))))

(declare-fun b!1096588 () Bool)

(declare-fun res!731968 () Bool)

(assert (=> b!1096588 (=> (not res!731968) (not e!625970))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1096588 (= res!731968 (validKeyInArray!0 k!904))))

(declare-fun res!731969 () Bool)

(assert (=> start!96486 (=> (not res!731969) (not e!625970))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!96486 (= res!731969 (validMask!0 mask!1414))))

(assert (=> start!96486 e!625970))

(assert (=> start!96486 tp!81014))

(assert (=> start!96486 true))

(declare-fun tp_is_empty!27079 () Bool)

(assert (=> start!96486 tp_is_empty!27079))

(declare-fun array_inv!26188 (array!71018) Bool)

(assert (=> start!96486 (array_inv!26188 _keys!1070)))

(declare-fun e!625969 () Bool)

(declare-fun array_inv!26189 (array!71020) Bool)

(assert (=> start!96486 (and (array_inv!26189 _values!874) e!625969)))

(declare-fun b!1096589 () Bool)

(assert (=> b!1096589 (= e!625970 e!625971)))

(declare-fun res!731972 () Bool)

(assert (=> b!1096589 (=> (not res!731972) (not e!625971))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!71018 (_ BitVec 32)) Bool)

(assert (=> b!1096589 (= res!731972 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!490190 mask!1414))))

(assert (=> b!1096589 (= lt!490190 (array!71019 (store (arr!34177 _keys!1070) i!650 #b1000000000000000000000000000000000000000000000000000000000000000) (size!34714 _keys!1070)))))

(declare-fun b!1096590 () Bool)

(declare-fun res!731974 () Bool)

(assert (=> b!1096590 (=> (not res!731974) (not e!625971))))

(declare-datatypes ((List!24005 0))(
  ( (Nil!24002) (Cons!24001 (h!25210 (_ BitVec 64)) (t!34087 List!24005)) )
))
(declare-fun arrayNoDuplicates!0 (array!71018 (_ BitVec 32) List!24005) Bool)

(assert (=> b!1096590 (= res!731974 (arrayNoDuplicates!0 lt!490190 #b00000000000000000000000000000000 Nil!24002))))

(declare-fun b!1096591 () Bool)

(declare-fun res!731970 () Bool)

(assert (=> b!1096591 (=> (not res!731970) (not e!625970))))

(assert (=> b!1096591 (= res!731970 (and (= (size!34715 _values!874) (bvadd #b00000000000000000000000000000001 mask!1414)) (= (size!34714 _keys!1070) (size!34715 _values!874)) (bvsge mask!1414 #b00000000000000000000000000000000) (bvsge extraKeys!811 #b00000000000000000000000000000000) (bvsle extraKeys!811 #b00000000000000000000000000000011)))))

(declare-fun b!1096592 () Bool)

(declare-fun res!731973 () Bool)

(assert (=> b!1096592 (=> (not res!731973) (not e!625970))))

(assert (=> b!1096592 (= res!731973 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1070 mask!1414))))

(declare-fun b!1096593 () Bool)

(declare-fun e!625968 () Bool)

(assert (=> b!1096593 (= e!625968 tp_is_empty!27079)))

(declare-fun b!1096594 () Bool)

(declare-fun e!625967 () Bool)

(assert (=> b!1096594 (= e!625967 tp_is_empty!27079)))

(declare-fun b!1096595 () Bool)

(declare-fun mapRes!42379 () Bool)

(assert (=> b!1096595 (= e!625969 (and e!625967 mapRes!42379))))

(declare-fun condMapEmpty!42379 () Bool)

(declare-fun mapDefault!42379 () ValueCell!12830)

