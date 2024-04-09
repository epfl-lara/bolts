; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!96284 () Bool)

(assert start!96284)

(declare-fun b_free!22901 () Bool)

(declare-fun b_next!22901 () Bool)

(assert (=> start!96284 (= b_free!22901 (not b_next!22901))))

(declare-fun tp!80553 () Bool)

(declare-fun b_and!36495 () Bool)

(assert (=> start!96284 (= tp!80553 b_and!36495)))

(declare-fun res!729686 () Bool)

(declare-fun e!624340 () Bool)

(assert (=> start!96284 (=> (not res!729686) (not e!624340))))

(declare-fun mask!1414 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!96284 (= res!729686 (validMask!0 mask!1414))))

(assert (=> start!96284 e!624340))

(assert (=> start!96284 tp!80553))

(assert (=> start!96284 true))

(declare-fun tp_is_empty!26903 () Bool)

(assert (=> start!96284 tp_is_empty!26903))

(declare-datatypes ((array!70680 0))(
  ( (array!70681 (arr!34010 (Array (_ BitVec 32) (_ BitVec 64))) (size!34547 (_ BitVec 32))) )
))
(declare-fun _keys!1070 () array!70680)

(declare-fun array_inv!26066 (array!70680) Bool)

(assert (=> start!96284 (array_inv!26066 _keys!1070)))

(declare-datatypes ((V!40997 0))(
  ( (V!40998 (val!13508 Int)) )
))
(declare-datatypes ((ValueCell!12742 0))(
  ( (ValueCellFull!12742 (v!16130 V!40997)) (EmptyCell!12742) )
))
(declare-datatypes ((array!70682 0))(
  ( (array!70683 (arr!34011 (Array (_ BitVec 32) ValueCell!12742)) (size!34548 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!70682)

(declare-fun e!624337 () Bool)

(declare-fun array_inv!26067 (array!70682) Bool)

(assert (=> start!96284 (and (array_inv!26067 _values!874) e!624337)))

(declare-fun b!1093343 () Bool)

(declare-fun res!729689 () Bool)

(assert (=> b!1093343 (=> (not res!729689) (not e!624340))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!70680 (_ BitVec 32)) Bool)

(assert (=> b!1093343 (= res!729689 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1070 mask!1414))))

(declare-fun b!1093344 () Bool)

(declare-fun res!729688 () Bool)

(declare-fun e!624339 () Bool)

(assert (=> b!1093344 (=> (not res!729688) (not e!624339))))

(declare-fun lt!488942 () array!70680)

(declare-datatypes ((List!23898 0))(
  ( (Nil!23895) (Cons!23894 (h!25103 (_ BitVec 64)) (t!33864 List!23898)) )
))
(declare-fun arrayNoDuplicates!0 (array!70680 (_ BitVec 32) List!23898) Bool)

(assert (=> b!1093344 (= res!729688 (arrayNoDuplicates!0 lt!488942 #b00000000000000000000000000000000 Nil!23895))))

(declare-fun b!1093345 () Bool)

(assert (=> b!1093345 (= e!624339 (not true))))

(declare-fun defaultEntry!882 () Int)

(declare-fun minValue!831 () V!40997)

(declare-fun extraKeys!811 () (_ BitVec 32))

(declare-datatypes ((tuple2!17252 0))(
  ( (tuple2!17253 (_1!8636 (_ BitVec 64)) (_2!8636 V!40997)) )
))
(declare-datatypes ((List!23899 0))(
  ( (Nil!23896) (Cons!23895 (h!25104 tuple2!17252) (t!33865 List!23899)) )
))
(declare-datatypes ((ListLongMap!15233 0))(
  ( (ListLongMap!15234 (toList!7632 List!23899)) )
))
(declare-fun lt!488944 () ListLongMap!15233)

(declare-fun zeroValue!831 () V!40997)

(declare-fun getCurrentListMap!4367 (array!70680 array!70682 (_ BitVec 32) (_ BitVec 32) V!40997 V!40997 (_ BitVec 32) Int) ListLongMap!15233)

(assert (=> b!1093345 (= lt!488944 (getCurrentListMap!4367 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun lt!488946 () ListLongMap!15233)

(declare-fun lt!488940 () array!70682)

(assert (=> b!1093345 (= lt!488946 (getCurrentListMap!4367 lt!488942 lt!488940 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun lt!488948 () ListLongMap!15233)

(declare-fun lt!488945 () ListLongMap!15233)

(assert (=> b!1093345 (and (= lt!488948 lt!488945) (= lt!488945 lt!488948))))

(declare-fun lt!488941 () ListLongMap!15233)

(declare-fun k!904 () (_ BitVec 64))

(declare-fun -!908 (ListLongMap!15233 (_ BitVec 64)) ListLongMap!15233)

(assert (=> b!1093345 (= lt!488945 (-!908 lt!488941 k!904))))

(declare-fun i!650 () (_ BitVec 32))

(declare-datatypes ((Unit!35931 0))(
  ( (Unit!35932) )
))
(declare-fun lt!488943 () Unit!35931)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!173 (array!70680 array!70682 (_ BitVec 32) (_ BitVec 32) V!40997 V!40997 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!35931)

(assert (=> b!1093345 (= lt!488943 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!173 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 i!650 k!904 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun getCurrentListMapNoExtraKeys!4119 (array!70680 array!70682 (_ BitVec 32) (_ BitVec 32) V!40997 V!40997 (_ BitVec 32) Int) ListLongMap!15233)

(assert (=> b!1093345 (= lt!488948 (getCurrentListMapNoExtraKeys!4119 lt!488942 lt!488940 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun dynLambda!2255 (Int (_ BitVec 64)) V!40997)

(assert (=> b!1093345 (= lt!488940 (array!70683 (store (arr!34011 _values!874) i!650 (ValueCellFull!12742 (dynLambda!2255 defaultEntry!882 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!34548 _values!874)))))

(assert (=> b!1093345 (= lt!488941 (getCurrentListMapNoExtraKeys!4119 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun arrayContainsKey!0 (array!70680 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1093345 (arrayContainsKey!0 _keys!1070 k!904 #b00000000000000000000000000000000)))

(declare-fun lt!488947 () Unit!35931)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!70680 (_ BitVec 64) (_ BitVec 32)) Unit!35931)

(assert (=> b!1093345 (= lt!488947 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1070 k!904 i!650))))

(declare-fun b!1093346 () Bool)

(declare-fun res!729685 () Bool)

(assert (=> b!1093346 (=> (not res!729685) (not e!624340))))

(assert (=> b!1093346 (= res!729685 (= (select (arr!34010 _keys!1070) i!650) k!904))))

(declare-fun b!1093347 () Bool)

(declare-fun e!624336 () Bool)

(assert (=> b!1093347 (= e!624336 tp_is_empty!26903)))

(declare-fun b!1093348 () Bool)

(declare-fun res!729682 () Bool)

(assert (=> b!1093348 (=> (not res!729682) (not e!624340))))

(assert (=> b!1093348 (= res!729682 (and (= (size!34548 _values!874) (bvadd #b00000000000000000000000000000001 mask!1414)) (= (size!34547 _keys!1070) (size!34548 _values!874)) (bvsge mask!1414 #b00000000000000000000000000000000) (bvsge extraKeys!811 #b00000000000000000000000000000000) (bvsle extraKeys!811 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!42109 () Bool)

(declare-fun mapRes!42109 () Bool)

(assert (=> mapIsEmpty!42109 mapRes!42109))

(declare-fun b!1093349 () Bool)

(declare-fun res!729681 () Bool)

(assert (=> b!1093349 (=> (not res!729681) (not e!624340))))

(assert (=> b!1093349 (= res!729681 (arrayNoDuplicates!0 _keys!1070 #b00000000000000000000000000000000 Nil!23895))))

(declare-fun b!1093350 () Bool)

(declare-fun res!729687 () Bool)

(assert (=> b!1093350 (=> (not res!729687) (not e!624340))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1093350 (= res!729687 (validKeyInArray!0 k!904))))

(declare-fun mapNonEmpty!42109 () Bool)

(declare-fun tp!80552 () Bool)

(assert (=> mapNonEmpty!42109 (= mapRes!42109 (and tp!80552 e!624336))))

(declare-fun mapRest!42109 () (Array (_ BitVec 32) ValueCell!12742))

(declare-fun mapValue!42109 () ValueCell!12742)

(declare-fun mapKey!42109 () (_ BitVec 32))

(assert (=> mapNonEmpty!42109 (= (arr!34011 _values!874) (store mapRest!42109 mapKey!42109 mapValue!42109))))

(declare-fun b!1093351 () Bool)

(declare-fun e!624335 () Bool)

(assert (=> b!1093351 (= e!624337 (and e!624335 mapRes!42109))))

(declare-fun condMapEmpty!42109 () Bool)

(declare-fun mapDefault!42109 () ValueCell!12742)

