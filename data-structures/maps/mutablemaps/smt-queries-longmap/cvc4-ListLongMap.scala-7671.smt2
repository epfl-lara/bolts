; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!96412 () Bool)

(assert start!96412)

(declare-fun b_free!22955 () Bool)

(declare-fun b_next!22955 () Bool)

(assert (=> start!96412 (= b_free!22955 (not b_next!22955))))

(declare-fun tp!80793 () Bool)

(declare-fun b_and!36599 () Bool)

(assert (=> start!96412 (= tp!80793 b_and!36599)))

(declare-fun b!1095188 () Bool)

(declare-fun res!730972 () Bool)

(declare-fun e!625301 () Bool)

(assert (=> b!1095188 (=> (not res!730972) (not e!625301))))

(declare-fun k!904 () (_ BitVec 64))

(declare-fun i!650 () (_ BitVec 32))

(declare-datatypes ((array!70878 0))(
  ( (array!70879 (arr!34107 (Array (_ BitVec 32) (_ BitVec 64))) (size!34644 (_ BitVec 32))) )
))
(declare-fun _keys!1070 () array!70878)

(assert (=> b!1095188 (= res!730972 (= (select (arr!34107 _keys!1070) i!650) k!904))))

(declare-fun b!1095189 () Bool)

(declare-fun e!625305 () Bool)

(assert (=> b!1095189 (= e!625301 e!625305)))

(declare-fun res!730975 () Bool)

(assert (=> b!1095189 (=> (not res!730975) (not e!625305))))

(declare-fun lt!489755 () array!70878)

(declare-fun mask!1414 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!70878 (_ BitVec 32)) Bool)

(assert (=> b!1095189 (= res!730975 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!489755 mask!1414))))

(assert (=> b!1095189 (= lt!489755 (array!70879 (store (arr!34107 _keys!1070) i!650 #b1000000000000000000000000000000000000000000000000000000000000000) (size!34644 _keys!1070)))))

(declare-fun mapIsEmpty!42268 () Bool)

(declare-fun mapRes!42268 () Bool)

(assert (=> mapIsEmpty!42268 mapRes!42268))

(declare-fun b!1095190 () Bool)

(declare-fun res!730977 () Bool)

(assert (=> b!1095190 (=> (not res!730977) (not e!625301))))

(assert (=> b!1095190 (= res!730977 (and (bvsge i!650 #b00000000000000000000000000000000) (bvslt i!650 (size!34644 _keys!1070))))))

(declare-fun b!1095191 () Bool)

(assert (=> b!1095191 (= e!625305 (not true))))

(declare-fun defaultEntry!882 () Int)

(declare-datatypes ((V!41133 0))(
  ( (V!41134 (val!13559 Int)) )
))
(declare-fun minValue!831 () V!41133)

(declare-fun extraKeys!811 () (_ BitVec 32))

(declare-datatypes ((tuple2!17284 0))(
  ( (tuple2!17285 (_1!8652 (_ BitVec 64)) (_2!8652 V!41133)) )
))
(declare-datatypes ((List!23955 0))(
  ( (Nil!23952) (Cons!23951 (h!25160 tuple2!17284) (t!33969 List!23955)) )
))
(declare-datatypes ((ListLongMap!15265 0))(
  ( (ListLongMap!15266 (toList!7648 List!23955)) )
))
(declare-fun lt!489753 () ListLongMap!15265)

(declare-fun zeroValue!831 () V!41133)

(declare-datatypes ((ValueCell!12793 0))(
  ( (ValueCellFull!12793 (v!16181 V!41133)) (EmptyCell!12793) )
))
(declare-datatypes ((array!70880 0))(
  ( (array!70881 (arr!34108 (Array (_ BitVec 32) ValueCell!12793)) (size!34645 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!70880)

(declare-fun getCurrentListMapNoExtraKeys!4135 (array!70878 array!70880 (_ BitVec 32) (_ BitVec 32) V!41133 V!41133 (_ BitVec 32) Int) ListLongMap!15265)

(assert (=> b!1095191 (= lt!489753 (getCurrentListMapNoExtraKeys!4135 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun arrayContainsKey!0 (array!70878 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1095191 (arrayContainsKey!0 _keys!1070 k!904 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!35969 0))(
  ( (Unit!35970) )
))
(declare-fun lt!489754 () Unit!35969)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!70878 (_ BitVec 64) (_ BitVec 32)) Unit!35969)

(assert (=> b!1095191 (= lt!489754 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1070 k!904 i!650))))

(declare-fun res!730974 () Bool)

(assert (=> start!96412 (=> (not res!730974) (not e!625301))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!96412 (= res!730974 (validMask!0 mask!1414))))

(assert (=> start!96412 e!625301))

(assert (=> start!96412 tp!80793))

(assert (=> start!96412 true))

(declare-fun tp_is_empty!27005 () Bool)

(assert (=> start!96412 tp_is_empty!27005))

(declare-fun array_inv!26136 (array!70878) Bool)

(assert (=> start!96412 (array_inv!26136 _keys!1070)))

(declare-fun e!625304 () Bool)

(declare-fun array_inv!26137 (array!70880) Bool)

(assert (=> start!96412 (and (array_inv!26137 _values!874) e!625304)))

(declare-fun b!1095192 () Bool)

(declare-fun e!625302 () Bool)

(assert (=> b!1095192 (= e!625304 (and e!625302 mapRes!42268))))

(declare-fun condMapEmpty!42268 () Bool)

(declare-fun mapDefault!42268 () ValueCell!12793)

