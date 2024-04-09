; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!96460 () Bool)

(assert start!96460)

(declare-fun b_free!23003 () Bool)

(declare-fun b_next!23003 () Bool)

(assert (=> start!96460 (= b_free!23003 (not b_next!23003))))

(declare-fun tp!80936 () Bool)

(declare-fun b_and!36687 () Bool)

(assert (=> start!96460 (= tp!80936 b_and!36687)))

(declare-fun res!731618 () Bool)

(declare-fun e!625736 () Bool)

(assert (=> start!96460 (=> (not res!731618) (not e!625736))))

(declare-fun mask!1414 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!96460 (= res!731618 (validMask!0 mask!1414))))

(assert (=> start!96460 e!625736))

(assert (=> start!96460 tp!80936))

(assert (=> start!96460 true))

(declare-fun tp_is_empty!27053 () Bool)

(assert (=> start!96460 tp_is_empty!27053))

(declare-datatypes ((array!70968 0))(
  ( (array!70969 (arr!34152 (Array (_ BitVec 32) (_ BitVec 64))) (size!34689 (_ BitVec 32))) )
))
(declare-fun _keys!1070 () array!70968)

(declare-fun array_inv!26168 (array!70968) Bool)

(assert (=> start!96460 (array_inv!26168 _keys!1070)))

(declare-datatypes ((V!41197 0))(
  ( (V!41198 (val!13583 Int)) )
))
(declare-datatypes ((ValueCell!12817 0))(
  ( (ValueCellFull!12817 (v!16205 V!41197)) (EmptyCell!12817) )
))
(declare-datatypes ((array!70970 0))(
  ( (array!70971 (arr!34153 (Array (_ BitVec 32) ValueCell!12817)) (size!34690 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!70970)

(declare-fun e!625737 () Bool)

(declare-fun array_inv!26169 (array!70970) Bool)

(assert (=> start!96460 (and (array_inv!26169 _values!874) e!625737)))

(declare-fun b!1096092 () Bool)

(declare-fun res!731622 () Bool)

(assert (=> b!1096092 (=> (not res!731622) (not e!625736))))

(declare-fun i!650 () (_ BitVec 32))

(assert (=> b!1096092 (= res!731622 (and (bvsge i!650 #b00000000000000000000000000000000) (bvslt i!650 (size!34689 _keys!1070))))))

(declare-fun b!1096093 () Bool)

(declare-fun e!625734 () Bool)

(assert (=> b!1096093 (= e!625734 tp_is_empty!27053)))

(declare-fun b!1096094 () Bool)

(declare-fun e!625733 () Bool)

(assert (=> b!1096094 (= e!625736 e!625733)))

(declare-fun res!731624 () Bool)

(assert (=> b!1096094 (=> (not res!731624) (not e!625733))))

(declare-fun lt!490032 () array!70968)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!70968 (_ BitVec 32)) Bool)

(assert (=> b!1096094 (= res!731624 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!490032 mask!1414))))

(assert (=> b!1096094 (= lt!490032 (array!70969 (store (arr!34152 _keys!1070) i!650 #b1000000000000000000000000000000000000000000000000000000000000000) (size!34689 _keys!1070)))))

(declare-fun mapNonEmpty!42340 () Bool)

(declare-fun mapRes!42340 () Bool)

(declare-fun tp!80937 () Bool)

(declare-fun e!625732 () Bool)

(assert (=> mapNonEmpty!42340 (= mapRes!42340 (and tp!80937 e!625732))))

(declare-fun mapKey!42340 () (_ BitVec 32))

(declare-fun mapValue!42340 () ValueCell!12817)

(declare-fun mapRest!42340 () (Array (_ BitVec 32) ValueCell!12817))

(assert (=> mapNonEmpty!42340 (= (arr!34153 _values!874) (store mapRest!42340 mapKey!42340 mapValue!42340))))

(declare-fun b!1096095 () Bool)

(declare-fun res!731617 () Bool)

(assert (=> b!1096095 (=> (not res!731617) (not e!625736))))

(declare-fun extraKeys!811 () (_ BitVec 32))

(assert (=> b!1096095 (= res!731617 (and (= (size!34690 _values!874) (bvadd #b00000000000000000000000000000001 mask!1414)) (= (size!34689 _keys!1070) (size!34690 _values!874)) (bvsge mask!1414 #b00000000000000000000000000000000) (bvsge extraKeys!811 #b00000000000000000000000000000000) (bvsle extraKeys!811 #b00000000000000000000000000000011)))))

(declare-fun b!1096096 () Bool)

(declare-fun res!731625 () Bool)

(assert (=> b!1096096 (=> (not res!731625) (not e!625733))))

(declare-datatypes ((List!23984 0))(
  ( (Nil!23981) (Cons!23980 (h!25189 (_ BitVec 64)) (t!34040 List!23984)) )
))
(declare-fun arrayNoDuplicates!0 (array!70968 (_ BitVec 32) List!23984) Bool)

(assert (=> b!1096096 (= res!731625 (arrayNoDuplicates!0 lt!490032 #b00000000000000000000000000000000 Nil!23981))))

(declare-fun b!1096097 () Bool)

(declare-fun res!731621 () Bool)

(assert (=> b!1096097 (=> (not res!731621) (not e!625736))))

(declare-fun k!904 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1096097 (= res!731621 (validKeyInArray!0 k!904))))

(declare-fun b!1096098 () Bool)

(declare-fun res!731619 () Bool)

(assert (=> b!1096098 (=> (not res!731619) (not e!625736))))

(assert (=> b!1096098 (= res!731619 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1070 mask!1414))))

(declare-fun b!1096099 () Bool)

(assert (=> b!1096099 (= e!625732 tp_is_empty!27053)))

(declare-fun b!1096100 () Bool)

(assert (=> b!1096100 (= e!625733 (not true))))

(declare-fun defaultEntry!882 () Int)

(declare-datatypes ((tuple2!17310 0))(
  ( (tuple2!17311 (_1!8665 (_ BitVec 64)) (_2!8665 V!41197)) )
))
(declare-datatypes ((List!23985 0))(
  ( (Nil!23982) (Cons!23981 (h!25190 tuple2!17310) (t!34041 List!23985)) )
))
(declare-datatypes ((ListLongMap!15291 0))(
  ( (ListLongMap!15292 (toList!7661 List!23985)) )
))
(declare-fun lt!490031 () ListLongMap!15291)

(declare-fun zeroValue!831 () V!41197)

(declare-fun minValue!831 () V!41197)

(declare-fun getCurrentListMapNoExtraKeys!4148 (array!70968 array!70970 (_ BitVec 32) (_ BitVec 32) V!41197 V!41197 (_ BitVec 32) Int) ListLongMap!15291)

(declare-fun dynLambda!2279 (Int (_ BitVec 64)) V!41197)

(assert (=> b!1096100 (= lt!490031 (getCurrentListMapNoExtraKeys!4148 lt!490032 (array!70971 (store (arr!34153 _values!874) i!650 (ValueCellFull!12817 (dynLambda!2279 defaultEntry!882 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!34690 _values!874)) mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun lt!490033 () ListLongMap!15291)

(assert (=> b!1096100 (= lt!490033 (getCurrentListMapNoExtraKeys!4148 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun arrayContainsKey!0 (array!70968 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1096100 (arrayContainsKey!0 _keys!1070 k!904 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!35995 0))(
  ( (Unit!35996) )
))
(declare-fun lt!490034 () Unit!35995)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!70968 (_ BitVec 64) (_ BitVec 32)) Unit!35995)

(assert (=> b!1096100 (= lt!490034 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1070 k!904 i!650))))

(declare-fun b!1096101 () Bool)

(assert (=> b!1096101 (= e!625737 (and e!625734 mapRes!42340))))

(declare-fun condMapEmpty!42340 () Bool)

(declare-fun mapDefault!42340 () ValueCell!12817)

