; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!96480 () Bool)

(assert start!96480)

(declare-fun b_free!23023 () Bool)

(declare-fun b_next!23023 () Bool)

(assert (=> start!96480 (= b_free!23023 (not b_next!23023))))

(declare-fun tp!80997 () Bool)

(declare-fun b_and!36727 () Bool)

(assert (=> start!96480 (= tp!80997 b_and!36727)))

(declare-fun b!1096472 () Bool)

(declare-fun res!731887 () Bool)

(declare-fun e!625917 () Bool)

(assert (=> b!1096472 (=> (not res!731887) (not e!625917))))

(declare-datatypes ((array!71006 0))(
  ( (array!71007 (arr!34171 (Array (_ BitVec 32) (_ BitVec 64))) (size!34708 (_ BitVec 32))) )
))
(declare-fun _keys!1070 () array!71006)

(declare-datatypes ((List!23998 0))(
  ( (Nil!23995) (Cons!23994 (h!25203 (_ BitVec 64)) (t!34074 List!23998)) )
))
(declare-fun arrayNoDuplicates!0 (array!71006 (_ BitVec 32) List!23998) Bool)

(assert (=> b!1096472 (= res!731887 (arrayNoDuplicates!0 _keys!1070 #b00000000000000000000000000000000 Nil!23995))))

(declare-fun b!1096473 () Bool)

(declare-fun e!625915 () Bool)

(assert (=> b!1096473 (= e!625915 (not true))))

(declare-fun defaultEntry!882 () Int)

(declare-datatypes ((V!41225 0))(
  ( (V!41226 (val!13593 Int)) )
))
(declare-datatypes ((ValueCell!12827 0))(
  ( (ValueCellFull!12827 (v!16215 V!41225)) (EmptyCell!12827) )
))
(declare-datatypes ((array!71008 0))(
  ( (array!71009 (arr!34172 (Array (_ BitVec 32) ValueCell!12827)) (size!34709 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!71008)

(declare-fun minValue!831 () V!41225)

(declare-fun mask!1414 () (_ BitVec 32))

(declare-fun i!650 () (_ BitVec 32))

(declare-fun extraKeys!811 () (_ BitVec 32))

(declare-fun lt!490152 () array!71006)

(declare-datatypes ((tuple2!17322 0))(
  ( (tuple2!17323 (_1!8671 (_ BitVec 64)) (_2!8671 V!41225)) )
))
(declare-datatypes ((List!23999 0))(
  ( (Nil!23996) (Cons!23995 (h!25204 tuple2!17322) (t!34075 List!23999)) )
))
(declare-datatypes ((ListLongMap!15303 0))(
  ( (ListLongMap!15304 (toList!7667 List!23999)) )
))
(declare-fun lt!490151 () ListLongMap!15303)

(declare-fun zeroValue!831 () V!41225)

(declare-fun getCurrentListMapNoExtraKeys!4154 (array!71006 array!71008 (_ BitVec 32) (_ BitVec 32) V!41225 V!41225 (_ BitVec 32) Int) ListLongMap!15303)

(declare-fun dynLambda!2285 (Int (_ BitVec 64)) V!41225)

(assert (=> b!1096473 (= lt!490151 (getCurrentListMapNoExtraKeys!4154 lt!490152 (array!71009 (store (arr!34172 _values!874) i!650 (ValueCellFull!12827 (dynLambda!2285 defaultEntry!882 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!34709 _values!874)) mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun lt!490153 () ListLongMap!15303)

(assert (=> b!1096473 (= lt!490153 (getCurrentListMapNoExtraKeys!4154 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun k!904 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!71006 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1096473 (arrayContainsKey!0 _keys!1070 k!904 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!36007 0))(
  ( (Unit!36008) )
))
(declare-fun lt!490154 () Unit!36007)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!71006 (_ BitVec 64) (_ BitVec 32)) Unit!36007)

(assert (=> b!1096473 (= lt!490154 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1070 k!904 i!650))))

(declare-fun b!1096474 () Bool)

(declare-fun res!731890 () Bool)

(assert (=> b!1096474 (=> (not res!731890) (not e!625917))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1096474 (= res!731890 (validKeyInArray!0 k!904))))

(declare-fun b!1096475 () Bool)

(declare-fun res!731889 () Bool)

(assert (=> b!1096475 (=> (not res!731889) (not e!625917))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!71006 (_ BitVec 32)) Bool)

(assert (=> b!1096475 (= res!731889 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1070 mask!1414))))

(declare-fun b!1096476 () Bool)

(declare-fun res!731893 () Bool)

(assert (=> b!1096476 (=> (not res!731893) (not e!625917))))

(assert (=> b!1096476 (= res!731893 (and (bvsge i!650 #b00000000000000000000000000000000) (bvslt i!650 (size!34708 _keys!1070))))))

(declare-fun b!1096477 () Bool)

(declare-fun e!625914 () Bool)

(declare-fun e!625912 () Bool)

(declare-fun mapRes!42370 () Bool)

(assert (=> b!1096477 (= e!625914 (and e!625912 mapRes!42370))))

(declare-fun condMapEmpty!42370 () Bool)

(declare-fun mapDefault!42370 () ValueCell!12827)

