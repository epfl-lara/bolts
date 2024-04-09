; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!96310 () Bool)

(assert start!96310)

(declare-fun b_free!22927 () Bool)

(declare-fun b_next!22927 () Bool)

(assert (=> start!96310 (= b_free!22927 (not b_next!22927))))

(declare-fun tp!80631 () Bool)

(declare-fun b_and!36547 () Bool)

(assert (=> start!96310 (= tp!80631 b_and!36547)))

(declare-fun b!1093837 () Bool)

(declare-fun res!730038 () Bool)

(declare-fun e!624571 () Bool)

(assert (=> b!1093837 (=> (not res!730038) (not e!624571))))

(declare-datatypes ((array!70730 0))(
  ( (array!70731 (arr!34035 (Array (_ BitVec 32) (_ BitVec 64))) (size!34572 (_ BitVec 32))) )
))
(declare-fun _keys!1070 () array!70730)

(declare-fun mask!1414 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!70730 (_ BitVec 32)) Bool)

(assert (=> b!1093837 (= res!730038 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1070 mask!1414))))

(declare-fun b!1093838 () Bool)

(declare-fun res!730035 () Bool)

(assert (=> b!1093838 (=> (not res!730035) (not e!624571))))

(declare-fun k!904 () (_ BitVec 64))

(declare-fun i!650 () (_ BitVec 32))

(assert (=> b!1093838 (= res!730035 (= (select (arr!34035 _keys!1070) i!650) k!904))))

(declare-fun b!1093839 () Bool)

(declare-fun res!730037 () Bool)

(assert (=> b!1093839 (=> (not res!730037) (not e!624571))))

(assert (=> b!1093839 (= res!730037 (and (bvsge i!650 #b00000000000000000000000000000000) (bvslt i!650 (size!34572 _keys!1070))))))

(declare-fun mapNonEmpty!42148 () Bool)

(declare-fun mapRes!42148 () Bool)

(declare-fun tp!80630 () Bool)

(declare-fun e!624573 () Bool)

(assert (=> mapNonEmpty!42148 (= mapRes!42148 (and tp!80630 e!624573))))

(declare-fun mapKey!42148 () (_ BitVec 32))

(declare-datatypes ((V!41033 0))(
  ( (V!41034 (val!13521 Int)) )
))
(declare-datatypes ((ValueCell!12755 0))(
  ( (ValueCellFull!12755 (v!16143 V!41033)) (EmptyCell!12755) )
))
(declare-datatypes ((array!70732 0))(
  ( (array!70733 (arr!34036 (Array (_ BitVec 32) ValueCell!12755)) (size!34573 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!70732)

(declare-fun mapValue!42148 () ValueCell!12755)

(declare-fun mapRest!42148 () (Array (_ BitVec 32) ValueCell!12755))

(assert (=> mapNonEmpty!42148 (= (arr!34036 _values!874) (store mapRest!42148 mapKey!42148 mapValue!42148))))

(declare-fun b!1093840 () Bool)

(declare-fun res!730032 () Bool)

(assert (=> b!1093840 (=> (not res!730032) (not e!624571))))

(declare-datatypes ((List!23917 0))(
  ( (Nil!23914) (Cons!23913 (h!25122 (_ BitVec 64)) (t!33909 List!23917)) )
))
(declare-fun arrayNoDuplicates!0 (array!70730 (_ BitVec 32) List!23917) Bool)

(assert (=> b!1093840 (= res!730032 (arrayNoDuplicates!0 _keys!1070 #b00000000000000000000000000000000 Nil!23914))))

(declare-fun b!1093841 () Bool)

(declare-fun e!624570 () Bool)

(assert (=> b!1093841 (= e!624570 (not true))))

(declare-fun minValue!831 () V!41033)

(declare-fun extraKeys!811 () (_ BitVec 32))

(declare-datatypes ((tuple2!17270 0))(
  ( (tuple2!17271 (_1!8645 (_ BitVec 64)) (_2!8645 V!41033)) )
))
(declare-datatypes ((List!23918 0))(
  ( (Nil!23915) (Cons!23914 (h!25123 tuple2!17270) (t!33910 List!23918)) )
))
(declare-datatypes ((ListLongMap!15251 0))(
  ( (ListLongMap!15252 (toList!7641 List!23918)) )
))
(declare-fun lt!489297 () ListLongMap!15251)

(declare-fun zeroValue!831 () V!41033)

(declare-fun defaultEntry!882 () Int)

(declare-fun getCurrentListMap!4376 (array!70730 array!70732 (_ BitVec 32) (_ BitVec 32) V!41033 V!41033 (_ BitVec 32) Int) ListLongMap!15251)

(assert (=> b!1093841 (= lt!489297 (getCurrentListMap!4376 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun lt!489296 () ListLongMap!15251)

(declare-fun lt!489291 () array!70730)

(declare-fun lt!489293 () array!70732)

(assert (=> b!1093841 (= lt!489296 (getCurrentListMap!4376 lt!489291 lt!489293 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun lt!489292 () ListLongMap!15251)

(declare-fun lt!489295 () ListLongMap!15251)

(assert (=> b!1093841 (and (= lt!489292 lt!489295) (= lt!489295 lt!489292))))

(declare-fun lt!489298 () ListLongMap!15251)

(declare-fun -!917 (ListLongMap!15251 (_ BitVec 64)) ListLongMap!15251)

(assert (=> b!1093841 (= lt!489295 (-!917 lt!489298 k!904))))

(declare-datatypes ((Unit!35949 0))(
  ( (Unit!35950) )
))
(declare-fun lt!489294 () Unit!35949)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!182 (array!70730 array!70732 (_ BitVec 32) (_ BitVec 32) V!41033 V!41033 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!35949)

(assert (=> b!1093841 (= lt!489294 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!182 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 i!650 k!904 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun getCurrentListMapNoExtraKeys!4128 (array!70730 array!70732 (_ BitVec 32) (_ BitVec 32) V!41033 V!41033 (_ BitVec 32) Int) ListLongMap!15251)

(assert (=> b!1093841 (= lt!489292 (getCurrentListMapNoExtraKeys!4128 lt!489291 lt!489293 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun dynLambda!2264 (Int (_ BitVec 64)) V!41033)

(assert (=> b!1093841 (= lt!489293 (array!70733 (store (arr!34036 _values!874) i!650 (ValueCellFull!12755 (dynLambda!2264 defaultEntry!882 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!34573 _values!874)))))

(assert (=> b!1093841 (= lt!489298 (getCurrentListMapNoExtraKeys!4128 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun arrayContainsKey!0 (array!70730 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1093841 (arrayContainsKey!0 _keys!1070 k!904 #b00000000000000000000000000000000)))

(declare-fun lt!489299 () Unit!35949)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!70730 (_ BitVec 64) (_ BitVec 32)) Unit!35949)

(assert (=> b!1093841 (= lt!489299 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1070 k!904 i!650))))

(declare-fun b!1093842 () Bool)

(declare-fun e!624572 () Bool)

(declare-fun tp_is_empty!26929 () Bool)

(assert (=> b!1093842 (= e!624572 tp_is_empty!26929)))

(declare-fun b!1093843 () Bool)

(assert (=> b!1093843 (= e!624573 tp_is_empty!26929)))

(declare-fun res!730036 () Bool)

(assert (=> start!96310 (=> (not res!730036) (not e!624571))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!96310 (= res!730036 (validMask!0 mask!1414))))

(assert (=> start!96310 e!624571))

(assert (=> start!96310 tp!80631))

(assert (=> start!96310 true))

(assert (=> start!96310 tp_is_empty!26929))

(declare-fun array_inv!26084 (array!70730) Bool)

(assert (=> start!96310 (array_inv!26084 _keys!1070)))

(declare-fun e!624574 () Bool)

(declare-fun array_inv!26085 (array!70732) Bool)

(assert (=> start!96310 (and (array_inv!26085 _values!874) e!624574)))

(declare-fun b!1093844 () Bool)

(declare-fun res!730034 () Bool)

(assert (=> b!1093844 (=> (not res!730034) (not e!624571))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1093844 (= res!730034 (validKeyInArray!0 k!904))))

(declare-fun b!1093845 () Bool)

(declare-fun res!730039 () Bool)

(assert (=> b!1093845 (=> (not res!730039) (not e!624570))))

(assert (=> b!1093845 (= res!730039 (arrayNoDuplicates!0 lt!489291 #b00000000000000000000000000000000 Nil!23914))))

(declare-fun mapIsEmpty!42148 () Bool)

(assert (=> mapIsEmpty!42148 mapRes!42148))

(declare-fun b!1093846 () Bool)

(assert (=> b!1093846 (= e!624574 (and e!624572 mapRes!42148))))

(declare-fun condMapEmpty!42148 () Bool)

(declare-fun mapDefault!42148 () ValueCell!12755)

