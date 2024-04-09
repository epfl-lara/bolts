; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!96468 () Bool)

(assert start!96468)

(declare-fun b_free!23011 () Bool)

(declare-fun b_next!23011 () Bool)

(assert (=> start!96468 (= b_free!23011 (not b_next!23011))))

(declare-fun tp!80960 () Bool)

(declare-fun b_and!36703 () Bool)

(assert (=> start!96468 (= tp!80960 b_and!36703)))

(declare-fun b!1096244 () Bool)

(declare-fun res!731728 () Bool)

(declare-fun e!625804 () Bool)

(assert (=> b!1096244 (=> (not res!731728) (not e!625804))))

(declare-datatypes ((array!70982 0))(
  ( (array!70983 (arr!34159 (Array (_ BitVec 32) (_ BitVec 64))) (size!34696 (_ BitVec 32))) )
))
(declare-fun _keys!1070 () array!70982)

(declare-datatypes ((List!23989 0))(
  ( (Nil!23986) (Cons!23985 (h!25194 (_ BitVec 64)) (t!34053 List!23989)) )
))
(declare-fun arrayNoDuplicates!0 (array!70982 (_ BitVec 32) List!23989) Bool)

(assert (=> b!1096244 (= res!731728 (arrayNoDuplicates!0 _keys!1070 #b00000000000000000000000000000000 Nil!23986))))

(declare-fun b!1096245 () Bool)

(declare-fun res!731732 () Bool)

(assert (=> b!1096245 (=> (not res!731732) (not e!625804))))

(declare-fun k!904 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1096245 (= res!731732 (validKeyInArray!0 k!904))))

(declare-fun b!1096246 () Bool)

(declare-fun e!625805 () Bool)

(assert (=> b!1096246 (= e!625805 (not true))))

(declare-fun defaultEntry!882 () Int)

(declare-datatypes ((V!41209 0))(
  ( (V!41210 (val!13587 Int)) )
))
(declare-datatypes ((ValueCell!12821 0))(
  ( (ValueCellFull!12821 (v!16209 V!41209)) (EmptyCell!12821) )
))
(declare-datatypes ((array!70984 0))(
  ( (array!70985 (arr!34160 (Array (_ BitVec 32) ValueCell!12821)) (size!34697 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!70984)

(declare-fun minValue!831 () V!41209)

(declare-fun mask!1414 () (_ BitVec 32))

(declare-fun i!650 () (_ BitVec 32))

(declare-fun extraKeys!811 () (_ BitVec 32))

(declare-fun lt!490081 () array!70982)

(declare-datatypes ((tuple2!17314 0))(
  ( (tuple2!17315 (_1!8667 (_ BitVec 64)) (_2!8667 V!41209)) )
))
(declare-datatypes ((List!23990 0))(
  ( (Nil!23987) (Cons!23986 (h!25195 tuple2!17314) (t!34054 List!23990)) )
))
(declare-datatypes ((ListLongMap!15295 0))(
  ( (ListLongMap!15296 (toList!7663 List!23990)) )
))
(declare-fun lt!490082 () ListLongMap!15295)

(declare-fun zeroValue!831 () V!41209)

(declare-fun getCurrentListMapNoExtraKeys!4150 (array!70982 array!70984 (_ BitVec 32) (_ BitVec 32) V!41209 V!41209 (_ BitVec 32) Int) ListLongMap!15295)

(declare-fun dynLambda!2281 (Int (_ BitVec 64)) V!41209)

(assert (=> b!1096246 (= lt!490082 (getCurrentListMapNoExtraKeys!4150 lt!490081 (array!70985 (store (arr!34160 _values!874) i!650 (ValueCellFull!12821 (dynLambda!2281 defaultEntry!882 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!34697 _values!874)) mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun lt!490079 () ListLongMap!15295)

(assert (=> b!1096246 (= lt!490079 (getCurrentListMapNoExtraKeys!4150 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun arrayContainsKey!0 (array!70982 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1096246 (arrayContainsKey!0 _keys!1070 k!904 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!35999 0))(
  ( (Unit!36000) )
))
(declare-fun lt!490080 () Unit!35999)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!70982 (_ BitVec 64) (_ BitVec 32)) Unit!35999)

(assert (=> b!1096246 (= lt!490080 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1070 k!904 i!650))))

(declare-fun mapIsEmpty!42352 () Bool)

(declare-fun mapRes!42352 () Bool)

(assert (=> mapIsEmpty!42352 mapRes!42352))

(declare-fun b!1096247 () Bool)

(declare-fun res!731731 () Bool)

(assert (=> b!1096247 (=> (not res!731731) (not e!625804))))

(assert (=> b!1096247 (= res!731731 (= (select (arr!34159 _keys!1070) i!650) k!904))))

(declare-fun b!1096248 () Bool)

(declare-fun e!625807 () Bool)

(declare-fun tp_is_empty!27061 () Bool)

(assert (=> b!1096248 (= e!625807 tp_is_empty!27061)))

(declare-fun res!731726 () Bool)

(assert (=> start!96468 (=> (not res!731726) (not e!625804))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!96468 (= res!731726 (validMask!0 mask!1414))))

(assert (=> start!96468 e!625804))

(assert (=> start!96468 tp!80960))

(assert (=> start!96468 true))

(assert (=> start!96468 tp_is_empty!27061))

(declare-fun array_inv!26174 (array!70982) Bool)

(assert (=> start!96468 (array_inv!26174 _keys!1070)))

(declare-fun e!625808 () Bool)

(declare-fun array_inv!26175 (array!70984) Bool)

(assert (=> start!96468 (and (array_inv!26175 _values!874) e!625808)))

(declare-fun b!1096249 () Bool)

(declare-fun res!731725 () Bool)

(assert (=> b!1096249 (=> (not res!731725) (not e!625804))))

(assert (=> b!1096249 (= res!731725 (and (bvsge i!650 #b00000000000000000000000000000000) (bvslt i!650 (size!34696 _keys!1070))))))

(declare-fun b!1096250 () Bool)

(declare-fun e!625806 () Bool)

(assert (=> b!1096250 (= e!625808 (and e!625806 mapRes!42352))))

(declare-fun condMapEmpty!42352 () Bool)

(declare-fun mapDefault!42352 () ValueCell!12821)

