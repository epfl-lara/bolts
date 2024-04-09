; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!96436 () Bool)

(assert start!96436)

(declare-fun b_free!22979 () Bool)

(declare-fun b_next!22979 () Bool)

(assert (=> start!96436 (= b_free!22979 (not b_next!22979))))

(declare-fun tp!80865 () Bool)

(declare-fun b_and!36639 () Bool)

(assert (=> start!96436 (= tp!80865 b_and!36639)))

(declare-fun b!1095636 () Bool)

(declare-fun res!731295 () Bool)

(declare-fun e!625518 () Bool)

(assert (=> b!1095636 (=> (not res!731295) (not e!625518))))

(declare-fun k!904 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1095636 (= res!731295 (validKeyInArray!0 k!904))))

(declare-fun b!1095637 () Bool)

(declare-fun e!625519 () Bool)

(declare-fun tp_is_empty!27029 () Bool)

(assert (=> b!1095637 (= e!625519 tp_is_empty!27029)))

(declare-fun b!1095638 () Bool)

(declare-fun e!625521 () Bool)

(assert (=> b!1095638 (= e!625521 tp_is_empty!27029)))

(declare-fun mapIsEmpty!42304 () Bool)

(declare-fun mapRes!42304 () Bool)

(assert (=> mapIsEmpty!42304 mapRes!42304))

(declare-fun b!1095639 () Bool)

(declare-fun res!731293 () Bool)

(assert (=> b!1095639 (=> (not res!731293) (not e!625518))))

(declare-datatypes ((array!70924 0))(
  ( (array!70925 (arr!34130 (Array (_ BitVec 32) (_ BitVec 64))) (size!34667 (_ BitVec 32))) )
))
(declare-fun _keys!1070 () array!70924)

(declare-fun i!650 () (_ BitVec 32))

(assert (=> b!1095639 (= res!731293 (= (select (arr!34130 _keys!1070) i!650) k!904))))

(declare-fun b!1095640 () Bool)

(declare-fun e!625516 () Bool)

(assert (=> b!1095640 (= e!625516 (not true))))

(declare-fun defaultEntry!882 () Int)

(declare-fun lt!489887 () array!70924)

(declare-datatypes ((V!41165 0))(
  ( (V!41166 (val!13571 Int)) )
))
(declare-datatypes ((ValueCell!12805 0))(
  ( (ValueCellFull!12805 (v!16193 V!41165)) (EmptyCell!12805) )
))
(declare-datatypes ((array!70926 0))(
  ( (array!70927 (arr!34131 (Array (_ BitVec 32) ValueCell!12805)) (size!34668 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!70926)

(declare-fun minValue!831 () V!41165)

(declare-fun extraKeys!811 () (_ BitVec 32))

(declare-fun zeroValue!831 () V!41165)

(declare-datatypes ((tuple2!17298 0))(
  ( (tuple2!17299 (_1!8659 (_ BitVec 64)) (_2!8659 V!41165)) )
))
(declare-datatypes ((List!23970 0))(
  ( (Nil!23967) (Cons!23966 (h!25175 tuple2!17298) (t!34002 List!23970)) )
))
(declare-datatypes ((ListLongMap!15279 0))(
  ( (ListLongMap!15280 (toList!7655 List!23970)) )
))
(declare-fun lt!489889 () ListLongMap!15279)

(declare-fun mask!1414 () (_ BitVec 32))

(declare-fun getCurrentListMapNoExtraKeys!4142 (array!70924 array!70926 (_ BitVec 32) (_ BitVec 32) V!41165 V!41165 (_ BitVec 32) Int) ListLongMap!15279)

(declare-fun dynLambda!2273 (Int (_ BitVec 64)) V!41165)

(assert (=> b!1095640 (= lt!489889 (getCurrentListMapNoExtraKeys!4142 lt!489887 (array!70927 (store (arr!34131 _values!874) i!650 (ValueCellFull!12805 (dynLambda!2273 defaultEntry!882 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!34668 _values!874)) mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun lt!489888 () ListLongMap!15279)

(assert (=> b!1095640 (= lt!489888 (getCurrentListMapNoExtraKeys!4142 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun arrayContainsKey!0 (array!70924 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1095640 (arrayContainsKey!0 _keys!1070 k!904 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!35983 0))(
  ( (Unit!35984) )
))
(declare-fun lt!489890 () Unit!35983)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!70924 (_ BitVec 64) (_ BitVec 32)) Unit!35983)

(assert (=> b!1095640 (= lt!489890 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1070 k!904 i!650))))

(declare-fun b!1095641 () Bool)

(declare-fun res!731299 () Bool)

(assert (=> b!1095641 (=> (not res!731299) (not e!625518))))

(declare-datatypes ((List!23971 0))(
  ( (Nil!23968) (Cons!23967 (h!25176 (_ BitVec 64)) (t!34003 List!23971)) )
))
(declare-fun arrayNoDuplicates!0 (array!70924 (_ BitVec 32) List!23971) Bool)

(assert (=> b!1095641 (= res!731299 (arrayNoDuplicates!0 _keys!1070 #b00000000000000000000000000000000 Nil!23968))))

(declare-fun b!1095642 () Bool)

(declare-fun res!731296 () Bool)

(assert (=> b!1095642 (=> (not res!731296) (not e!625518))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!70924 (_ BitVec 32)) Bool)

(assert (=> b!1095642 (= res!731296 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1070 mask!1414))))

(declare-fun mapNonEmpty!42304 () Bool)

(declare-fun tp!80864 () Bool)

(assert (=> mapNonEmpty!42304 (= mapRes!42304 (and tp!80864 e!625521))))

(declare-fun mapKey!42304 () (_ BitVec 32))

(declare-fun mapRest!42304 () (Array (_ BitVec 32) ValueCell!12805))

(declare-fun mapValue!42304 () ValueCell!12805)

(assert (=> mapNonEmpty!42304 (= (arr!34131 _values!874) (store mapRest!42304 mapKey!42304 mapValue!42304))))

(declare-fun b!1095643 () Bool)

(declare-fun res!731300 () Bool)

(assert (=> b!1095643 (=> (not res!731300) (not e!625516))))

(assert (=> b!1095643 (= res!731300 (arrayNoDuplicates!0 lt!489887 #b00000000000000000000000000000000 Nil!23968))))

(declare-fun b!1095644 () Bool)

(assert (=> b!1095644 (= e!625518 e!625516)))

(declare-fun res!731298 () Bool)

(assert (=> b!1095644 (=> (not res!731298) (not e!625516))))

(assert (=> b!1095644 (= res!731298 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!489887 mask!1414))))

(assert (=> b!1095644 (= lt!489887 (array!70925 (store (arr!34130 _keys!1070) i!650 #b1000000000000000000000000000000000000000000000000000000000000000) (size!34667 _keys!1070)))))

(declare-fun b!1095645 () Bool)

(declare-fun e!625520 () Bool)

(assert (=> b!1095645 (= e!625520 (and e!625519 mapRes!42304))))

(declare-fun condMapEmpty!42304 () Bool)

(declare-fun mapDefault!42304 () ValueCell!12805)

