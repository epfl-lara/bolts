; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!96478 () Bool)

(assert start!96478)

(declare-fun b_free!23021 () Bool)

(declare-fun b_next!23021 () Bool)

(assert (=> start!96478 (= b_free!23021 (not b_next!23021))))

(declare-fun tp!80990 () Bool)

(declare-fun b_and!36723 () Bool)

(assert (=> start!96478 (= tp!80990 b_and!36723)))

(declare-fun b!1096434 () Bool)

(declare-fun res!731867 () Bool)

(declare-fun e!625895 () Bool)

(assert (=> b!1096434 (=> (not res!731867) (not e!625895))))

(declare-datatypes ((array!71002 0))(
  ( (array!71003 (arr!34169 (Array (_ BitVec 32) (_ BitVec 64))) (size!34706 (_ BitVec 32))) )
))
(declare-fun _keys!1070 () array!71002)

(declare-datatypes ((List!23996 0))(
  ( (Nil!23993) (Cons!23992 (h!25201 (_ BitVec 64)) (t!34070 List!23996)) )
))
(declare-fun arrayNoDuplicates!0 (array!71002 (_ BitVec 32) List!23996) Bool)

(assert (=> b!1096434 (= res!731867 (arrayNoDuplicates!0 _keys!1070 #b00000000000000000000000000000000 Nil!23993))))

(declare-fun b!1096435 () Bool)

(declare-fun e!625896 () Bool)

(assert (=> b!1096435 (= e!625896 (not true))))

(declare-fun defaultEntry!882 () Int)

(declare-datatypes ((V!41221 0))(
  ( (V!41222 (val!13592 Int)) )
))
(declare-datatypes ((ValueCell!12826 0))(
  ( (ValueCellFull!12826 (v!16214 V!41221)) (EmptyCell!12826) )
))
(declare-datatypes ((array!71004 0))(
  ( (array!71005 (arr!34170 (Array (_ BitVec 32) ValueCell!12826)) (size!34707 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!71004)

(declare-fun mask!1414 () (_ BitVec 32))

(declare-fun i!650 () (_ BitVec 32))

(declare-fun extraKeys!811 () (_ BitVec 32))

(declare-datatypes ((tuple2!17320 0))(
  ( (tuple2!17321 (_1!8670 (_ BitVec 64)) (_2!8670 V!41221)) )
))
(declare-datatypes ((List!23997 0))(
  ( (Nil!23994) (Cons!23993 (h!25202 tuple2!17320) (t!34071 List!23997)) )
))
(declare-datatypes ((ListLongMap!15301 0))(
  ( (ListLongMap!15302 (toList!7666 List!23997)) )
))
(declare-fun lt!490139 () ListLongMap!15301)

(declare-fun zeroValue!831 () V!41221)

(declare-fun minValue!831 () V!41221)

(declare-fun lt!490140 () array!71002)

(declare-fun getCurrentListMapNoExtraKeys!4153 (array!71002 array!71004 (_ BitVec 32) (_ BitVec 32) V!41221 V!41221 (_ BitVec 32) Int) ListLongMap!15301)

(declare-fun dynLambda!2284 (Int (_ BitVec 64)) V!41221)

(assert (=> b!1096435 (= lt!490139 (getCurrentListMapNoExtraKeys!4153 lt!490140 (array!71005 (store (arr!34170 _values!874) i!650 (ValueCellFull!12826 (dynLambda!2284 defaultEntry!882 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!34707 _values!874)) mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun lt!490142 () ListLongMap!15301)

(assert (=> b!1096435 (= lt!490142 (getCurrentListMapNoExtraKeys!4153 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun k!904 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!71002 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1096435 (arrayContainsKey!0 _keys!1070 k!904 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!36005 0))(
  ( (Unit!36006) )
))
(declare-fun lt!490141 () Unit!36005)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!71002 (_ BitVec 64) (_ BitVec 32)) Unit!36005)

(assert (=> b!1096435 (= lt!490141 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1070 k!904 i!650))))

(declare-fun b!1096436 () Bool)

(declare-fun res!731860 () Bool)

(assert (=> b!1096436 (=> (not res!731860) (not e!625895))))

(assert (=> b!1096436 (= res!731860 (and (bvsge i!650 #b00000000000000000000000000000000) (bvslt i!650 (size!34706 _keys!1070))))))

(declare-fun res!731865 () Bool)

(assert (=> start!96478 (=> (not res!731865) (not e!625895))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!96478 (= res!731865 (validMask!0 mask!1414))))

(assert (=> start!96478 e!625895))

(assert (=> start!96478 tp!80990))

(assert (=> start!96478 true))

(declare-fun tp_is_empty!27071 () Bool)

(assert (=> start!96478 tp_is_empty!27071))

(declare-fun array_inv!26182 (array!71002) Bool)

(assert (=> start!96478 (array_inv!26182 _keys!1070)))

(declare-fun e!625897 () Bool)

(declare-fun array_inv!26183 (array!71004) Bool)

(assert (=> start!96478 (and (array_inv!26183 _values!874) e!625897)))

(declare-fun b!1096437 () Bool)

(declare-fun e!625894 () Bool)

(declare-fun mapRes!42367 () Bool)

(assert (=> b!1096437 (= e!625897 (and e!625894 mapRes!42367))))

(declare-fun condMapEmpty!42367 () Bool)

(declare-fun mapDefault!42367 () ValueCell!12826)

